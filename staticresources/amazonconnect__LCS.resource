/**
 * Lightweight Communication System (LCS) bridges parent and child browsing
 * contexts via postMessage protocol. It works in conjunction with a client
 * library, saving messages in a queue until it receives a signal from
 * the client that it's ready to receive them.
 *
 * */
class LCS {
  ready = false;
  handlers = [];
  target = '*';
  iframeSelector = 'iframe';

  static instances = [];

  constructor({ template, target, iframeSelector, iframeElement }) {
    this.template = template;
    this.target = target;
    this.iframeSelector = iframeSelector;
    this.iframeElement = iframeElement;
  }

  // create is the factory method that instantiates the class
  // while storing the instance in a static property.
  static create = ({ template, target, iframeSelector, iframeElement }) => {
    const lcs = new LCS({ template, target, iframeSelector, iframeElement });
    LCS.instances.push(lcs);
    return lcs;
  };

  // addMessageHandler accepts a callback function that is invoked
  // when a new message is received from the client.
  addMessageHandler(fn) {
    this.handlers = this.handlers.filter((v) => v !== fn).concat(fn);
    this.bind();
  }

  // removeEventHandler accepts a callback function and removes it
  // from handlers instance property.
  removeEventHandler(fn) {
    this.handlers = this.handlers.filter((v) => v !== fn).concat(fn);
  }

  bind() {
    window.removeEventListener('message', this.onMessage);
    window.addEventListener('message', this.onMessage);
  }

  // isMessageFromTargetOrigin checks the message is coming from the same domain origin as the target.
  isMessageFromTargetOrigin(e) {
    const lexOrigin = new URL(this.target).origin;
    return e.origin === lexOrigin;
  }

  // isMessageFromTargetLCS checks the message is coming from the same href as target.
  isMessageFromTargetLCS(msg) {
    return this.target === msg.href;
  }

  // onMessage handles the message events from the window.
  onMessage = (e) => {
    if (!this.isMessageFromTargetOrigin(e)) return;
    const msg = JSON.parse(e.data);
    if (!this.isMessageFromTargetLCS(msg)) return;
    const { type } = msg;

    if (type === '__LCS__READY__') {
      this.ready = true;
      this.consumeSendQueue();
    } else if (this.ready) {
      // Note we create a micro-task for this call
      // because this function has to return quickly.
      setTimeout(() => {
        this.sendToOtherInstances(msg);
      }, 0);

      this.invokeHandlersWith(msg);
    }
  };

  // sendToOtherInstances dispatches message to other instances of LCS.
  sendToOtherInstances(msg) {
    LCS.instances
      .filter((v) => v.template !== this.template)
      .forEach((inst) => {
        inst.sendMessage(msg);
      });
  }

  // Invoke handlers of this instance.
  invokeHandlersWith(msg) {
    this.handlers.forEach((fn) => fn(msg));
  }

  msgQueue = [];

  addToSendQueue(type, payload) {
    this.msgQueue.push([type, payload]);
  }

  consumeSendQueue() {
    this.msgQueue.forEach((arr) => {
      this.sendMessage(...arr);
    });
  }

  getIframe() {
    return (
      this.iframeElement || this.template.querySelector(this.iframeSelector)
    );
  }

  sendMessage(type, payload) {
    if (!this.ready) {
      this.addToSendQueue(type, payload);
      return;
    }
    const message = JSON.stringify({ type, payload });
    const iframe = this.getIframe();
    if (Boolean(iframe?.contentWindow) === false) {
      console.error(
        'Failed to send message. Check there is an iframe at selector `' +
          this.iframeSelector +
          '`.'
      );
      return;
    }
    iframe.contentWindow.postMessage(message, this.target);
  }
}
window.LCS = LCS;
