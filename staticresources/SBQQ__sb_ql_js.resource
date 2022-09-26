(function(){function r(e,n,t){function o(i,f){if(!n[i]){if(!e[i]){var c="function"==typeof require&&require;if(!f&&c)return c(i,!0);if(u)return u(i,!0);var a=new Error("Cannot find module '"+i+"'");throw a.code="MODULE_NOT_FOUND",a}var p=n[i]={exports:{}};e[i][0].call(p.exports,function(r){var n=e[i][1][r];return o(n||r)},p,p.exports,r,e,n,t)}return n[i].exports}for(var u="function"==typeof require&&require,i=0;i<t.length;i++)o(t[i]);return o}return r})()({1:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _Utils = require('./Utils.js');

var Utils = _interopRequireWildcard(_Utils);

function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key]; } } newObj.default = obj; return newObj; } }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var Publisher = function () {
	function Publisher(tag, channel) {
		_classCallCheck(this, Publisher);

		if (!tag || !Utils.isValidChannel(channel)) {
			throw 'Publisher: Constructor requires 2 valid arguments (tag, channel)';
		}

		this.tag = tag;
		this.channel = channel;
		this.msgQueue = [];
	}

	_createClass(Publisher, [{
		key: 'init',
		value: function init() {
			this.channel.init(this._publishOnceReady.bind(this));
		}
	}, {
		key: 'publish',
		value: function publish(message) {
			if (!message) {
				console.error('Publisher: publish() must be called with a valid message object argument');
				return;
			}

			var msg = Object.assign({}, message);
			msg.tag = this.tag;

			this.msgQueue.push(msg);
			this._publishOnceReady();
		}
	}, {
		key: 'shutdown',
		value: function shutdown() {
			this.msgQueue = [];
			this.channel.shutdown();
		}
	}, {
		key: '_publishOnceReady',
		value: function _publishOnceReady() {
			var _this = this;

			if (!this.channel.isReady()) {
				return;
			}

			this.msgQueue.forEach(function (msg) {
				return _this.channel.send(msg);
			});
			this.msgQueue = [];
		}
	}]);

	return Publisher;
}();

exports.default = Publisher;

},{"./Utils.js":4}],2:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _Subscriber = require('./Subscriber.js');

var _Subscriber2 = _interopRequireDefault(_Subscriber);

var _Publisher = require('./Publisher.js');

var _Publisher2 = _interopRequireDefault(_Publisher);

var _Utils = require('./Utils.js');

var Utils = _interopRequireWildcard(_Utils);

var _WindowChannel = require('./WindowChannel.js');

var _WindowChannel2 = _interopRequireDefault(_WindowChannel);

function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key]; } } newObj.default = obj; return newObj; } }

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var TAG = 'QuoteLogger';

var TYPE_SYN = '__SYN__';
var TYPE_ACK = '__ACK__';
var SYN = { tag: TAG, type: TYPE_SYN };
var ACK = { tag: TAG, type: TYPE_ACK };
var TIMEOUT = 100;

var QuoteLogger = function () {
	_createClass(QuoteLogger, null, [{
		key: 'appender',
		value: function appender() {
			var _this = this;

			return function (logEvent) {
				if (_this.instance) {
					var log = Utils.makeLogFromArgs(logEvent.data);
					log.timestamp = logEvent.startTime;
					_this.instance._publish(log);
				}
			};
		}
	}, {
		key: 'configure',
		value: function configure() {
			return this.appender();
		}
	}, {
		key: 'setInstance',
		value: function setInstance(inst) {
			if (this.instance) {
				this.instance.shutdown();
			}

			this.instance = inst;
		}
	}]);

	function QuoteLogger(subChannel, pubChannel) {
		_classCallCheck(this, QuoteLogger);

		this.subChannel = subChannel;
		this.pubChannel = pubChannel;
		this.subscriber = subChannel ? new _Subscriber2.default(TAG, subChannel) : null;
		this.publisher = pubChannel ? new _Publisher2.default(TAG, pubChannel) : null;
		this.isSubscriber = false;
		this.isPublisher = false;
		this.callbacks = [];
	}

	_createClass(QuoteLogger, [{
		key: 'initPublisher',
		value: function initPublisher() {
			if (!this.publisher) {
				console.error('QuoteLogger: pubChannel is required in order to initPublisher()');
				return;
			}

			if (this.pubChannel instanceof _WindowChannel2.default) {
				if (!this.subscriber) {
					console.error('QuoteLogger: subChannel is required in order to initPublisher() when using WindowChannel');
					return;
				}
				this.subscriber.init();
				this.publisher.init();
				this.subscriber.subscribe(this._receiveLog.bind(this));
				this._waitForWindow();
			} else {
				this.publisher.init();
			}

			this.isPublisher = true;
		}
	}, {
		key: 'publish',
		value: function publish() {
			var log = Utils.makeLogFromArgs.apply(null, arguments);
			log.timestamp = new Date().toString();
			this._publish(log);
		}
	}, {
		key: 'initSubscriber',
		value: function initSubscriber() {
			if (!this.subscriber) {
				console.error('QuoteLogger: subChannel is required in order to initSubscriber()');
				return;
			}

			this.isSubscriber = true;
			this.subscriber.init();
			this.subscriber.subscribe(this._receiveLog.bind(this));
		}
	}, {
		key: 'subscribe',
		value: function subscribe(callback) {
			if (!this.isSubscriber) {
				console.error('QuoteLogger: initSubscriber() must be called prior to any subscribing methods');
				return;
			}
			if (typeof callback !== 'function') {
				console.error('QuoteLogger: subscribe() must be called with a valid function');
				return;
			}

			this.callbacks.push(callback);
		}
	}, {
		key: 'unsubscribe',
		value: function unsubscribe(callback) {
			if (!this.isSubscriber) {
				console.error('QuoteLogger: initSubscriber() must be called prior to any subscribing methods');
				return;
			}
			var loc = this.callbacks.indexOf(callback);
			if (loc < 0) {
				console.error('QuoteLogger: unsubscribe() must be called with a function previously set using subscribe()');
				return;
			}

			this.callbacks.splice(loc, 1);
		}
	}, {
		key: 'shutdown',
		value: function shutdown() {
			if (this.subscriber) {
				this.subscriber.shutdown();
			}
			if (this.publisher) {
				this.publisher.shutdown();
			}

			this.isSubscriber = false;
			this.isPublisher = false;
			this.callbacks = [];
		}
	}, {
		key: '_publish',
		value: function _publish(log) {
			if (!this.isPublisher) {
				console.error('QuoteLogger: initPublisher() must be called prior to any publishing methods');
				return;
			}
			if (!log.type) {
				console.error('QuoteLogger: publish() argument missing "type" property');
				return;
			}

			this.publisher.publish(log);
		}
	}, {
		key: '_receiveLog',
		value: function _receiveLog(log) {
			var _this2 = this;

			if (!log) {
				return;
			}

			if (this.subChannel instanceof _WindowChannel2.default) {
				if (log.type === TYPE_SYN) {
					var sourceChannel = new _WindowChannel2.default(log.source);
					sourceChannel.send(ACK);
				} else if (log.type === TYPE_ACK && this.isPublisher) {
						this.pubChannel.markReady();
					}
				delete log.source;
			}

			this.callbacks.forEach(function (cb) {
				return cb(log, _this2);
			});
		}
	}, {
		key: '_waitForWindow',
		value: function _waitForWindow() {
			if (!this.pubChannel.isActive() || this.pubChannel.isReady()) {
				return;
			}

			this.pubChannel.send(SYN);
			setTimeout(this._waitForWindow.bind(this), TIMEOUT);
		}
	}]);

	return QuoteLogger;
}();

exports.default = QuoteLogger;

},{"./Publisher.js":1,"./Subscriber.js":3,"./Utils.js":4,"./WindowChannel.js":5}],3:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _Utils = require('./Utils.js');

var Utils = _interopRequireWildcard(_Utils);

function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key]; } } newObj.default = obj; return newObj; } }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var Subscriber = function () {
	function Subscriber(tag, channel) {
		_classCallCheck(this, Subscriber);

		if (!tag || !Utils.isValidChannel(channel)) {
			throw 'Subscriber: Constructor requires 2 valid arguments (tag, channel)';
		}

		this.tag = tag;
		this.channel = channel;
		this.callbacks = [];
	}

	_createClass(Subscriber, [{
		key: 'init',
		value: function init() {
			this.channel.init();
			this.channel.addListener(this._receiveMessage.bind(this));
		}
	}, {
		key: 'subscribe',
		value: function subscribe(callback) {
			if (typeof callback !== 'function') {
				console.error('Subscriber: subscribe() must be called with a valid function');
				return;
			}

			this.callbacks.push(callback);
		}
	}, {
		key: 'unsubscribe',
		value: function unsubscribe(callback) {
			var loc = this.callbacks.indexOf(callback);
			if (loc < 0) {
				console.error('Subscriber: unsubscribe() must be called with a function previously set using subscribe()');
				return;
			}

			this.callbacks.splice(loc, 1);
		}
	}, {
		key: 'shutdown',
		value: function shutdown() {
			this.callbacks = [];
			this.channel.shutdown();
		}
	}, {
		key: '_receiveMessage',
		value: function _receiveMessage(message) {
			if (!message || message.tag !== this.tag) {
				return;
			}

			this.callbacks.forEach(function (cb) {
				return cb(message);
			});
		}
	}]);

	return Subscriber;
}();

exports.default = Subscriber;

},{"./Utils.js":4}],4:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _typeof = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) { return typeof obj; } : function (obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; };

exports.isValidChannel = isValidChannel;
exports.makeLogFromArgs = makeLogFromArgs;
var CHANNEL_INTERFACE = ['init', 'isActive', 'isReady', 'addListener', 'removeListener', 'send', 'shutdown'];
var TYPE_TEXT = 'text';

function isValidChannel(channel) {
	if (!channel) {
		return false;
	}

	var matches = CHANNEL_INTERFACE.map(function (funName) {
		return typeof channel[funName] === 'function';
	});
	return reduceAnd(matches);
}

function makeLogFromArgs(logData) {
	if (!Array.isArray(logData)) {
		logData = Array.prototype.slice.call(arguments);
	}

	var log = logData[0];
	if (!log || (typeof log === 'undefined' ? 'undefined' : _typeof(log)) !== 'object') {
		log = {
			type: TYPE_TEXT,
			data: logData.join(' ')
		};
	}

	return log;
}

function reduceAnd(bools) {
	return bools.reduce(function (acc, val) {
		return acc && val;
	}, true);
}

},{}],5:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var WindowChannel = function () {
	function WindowChannel(win) {
		_classCallCheck(this, WindowChannel);

		if (typeof win === 'undefined' || !win) {
			throw 'WindowChannel: Constructor requires a valid window argument';
		}

		this.win = win;
		this.id = Math.random().toString();

		this.active = false;
		this.ready = false;
		this.readyCallbacks = [];

		this.listeners = [];
		this._receive = this._receive.bind(this);
	}

	_createClass(WindowChannel, [{
		key: 'init',
		value: function init(readyCallback) {
			if (readyCallback) {
				if (typeof readyCallback !== 'function') {
					console.error('WindowChannel: init() must be undefined or called with a valid function');
					return;
				}

				if (this.isReady()) {
					readyCallback();
				} else {
					this.readyCallbacks.push(readyCallback);
				}
			}

			if (this.active) {
				return;
			}
			this.active = true;
			try {
				this.win.addEventListener('message', this._receive);
			} catch (e) {}
		}
	}, {
		key: 'isActive',
		value: function isActive() {
			return this.active && !this.win.closed;
		}
	}, {
		key: 'isReady',
		value: function isReady() {
			return this.isActive() && this.ready;
		}
	}, {
		key: 'markReady',
		value: function markReady() {
			this.ready = true;
			this.readyCallbacks.forEach(function (cb) {
				return cb();
			});
			this.readyCallbacks = [];
		}
	}, {
		key: 'addListener',
		value: function addListener(callback) {
			if (typeof callback !== 'function') {
				console.error('WindowChannel: addListener() must be called with a valid function');
				return;
			}

			this.listeners.push(callback);
		}
	}, {
		key: 'removeListener',
		value: function removeListener(callback) {
			var loc = this.listeners.indexOf(callback);
			if (loc < 0) {
				console.error('WindowChannel: removeListener() must be called with a function previously set using addListener()');
				return;
			}

			this.listeners.splice(loc, 1);
		}
	}, {
		key: 'send',
		value: function send(message) {
			if (!message) {
				console.error('WindowChannel: send() must be called with a valid message object');
				return;
			}

			var msg = Object.assign({}, message);
			var origin = this._getTargetOrigin();

			msg.tag += '__' + this.id;
			this.win.postMessage(JSON.stringify(msg), origin);
		}
	}, {
		key: 'shutdown',
		value: function shutdown() {
			this.active = false;
			this.ready = false;
			this.readyCallbacks = [];
			this.listeners = [];
			try {
				this.win.removeEventListener('message', this._receive);
			} catch (e) {}
		}
	}, {
		key: '_receive',
		value: function _receive(messageEvent) {
			if (!this._isValidSourceOrigin(messageEvent.origin)) {
				console.warn('WindowChannel: Received message from unknown source origin (' + messageEvent.origin + ')!');
				return;
			}
			if (!messageEvent || !messageEvent.data) {
				return;
			}

			var message = JSON.parse(messageEvent.data);
			if (!message.tag || message.tag.endsWith(this.id)) {
				return;
			}

			message.source = messageEvent.source;
			message.tag = message.tag.replace(/__[0-9.]+$/, '');
			this.listeners.forEach(function (cb) {
				return cb(message);
			});
		}
	}, {
		key: '_getTargetOrigin',
		value: function _getTargetOrigin() {
			return '*';
		}
	}, {
		key: '_isValidSourceOrigin',
		value: function _isValidSourceOrigin(sourceOrigin) {
			return true;
		}
	}]);

	return WindowChannel;
}();

exports.default = WindowChannel;

},{}],6:[function(require,module,exports){
'use strict';

var _QuoteLogger = require('./QuoteLogger.js');

var _QuoteLogger2 = _interopRequireDefault(_QuoteLogger);

var _WindowChannel = require('./WindowChannel.js');

var _WindowChannel2 = _interopRequireDefault(_WindowChannel);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

if (typeof window !== 'undefined' && window) {
	window.sb = window.sb || {};
	window.sb.QuoteLogger = _QuoteLogger2.default;
	window.sb.WindowChannel = _WindowChannel2.default;
}

},{"./QuoteLogger.js":2,"./WindowChannel.js":5}]},{},[6]);
