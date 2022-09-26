DSUtil = {
  isDefined: function (o) {
    return typeof o !== 'undefined' && o !== null;
  },

  isNotDefined: function (o) {
    return typeof o === 'undefined' || o === null;
  },

  isBlank: function (s) {
    return this.isNotDefined(s) || s.trim().length === 0;
  },

  isNotBlank: function (s) {
    return this.isDefined(s) && s.trim().length > 0;
  },

  isEmpty: function (a) {
    return this.isNotDefined(a) || a.length === 0;
  },

  isNotEmpty: function (a) {
    return this.isDefined(a) && a.length > 0;
  },

  isNumeric: function (s) {
    return this.isNotBlank(s) && (+s === +s);
  },

  /**
   * Parses a string as an integer, or returns a default value if the string is not a valid integer.
   * @param s {string} The input string.
   * @param orElse {number} The default value.
   * @returns {number} The parsed integer or default.
   */
  parseIntOrElse: function (s, orElse) {
    try {
      return this.isNumeric(s) ? parseInt(s) : orElse;
    } catch (e) {
      return orElse;
    }
  },

  _isInIFrame: null,

  isInIFrame: function () {
    if (this.isNotDefined(this._inIFrame)) {
      try {
        // Check to see if we can talk to the parent.
        this._inIFrame = window.self !== window.parent && this.isDefined(parent.DSUtil);
      } catch (e) {
        this._inIFrame = false;
      }
    }
    return this._inIFrame;
  },

  isCommunitySite: function () {
    return typeof DSConfiguration !== 'undefined' && DSConfiguration && this.isDefined(DSConfiguration.isCommunitySite) && DSConfiguration.isCommunitySite === true;
  },

  isLightningOrSF1: function () {
    return typeof sforce !== 'undefined' && sforce && (!!sforce.one);
  },

  isInNewWindow: function () {
    return this.isDefined(window.opener);
  },

  /**
   * Determines whether a string matches a Salesforce object identifier.
   * @param s {string} the string to test.
   * @returns {boolean} True if the string matches the Salesforce object identifier pattern, or false otherwise.
   */
  isSalesforceId: function (s) {
    return /^([a-zA-Z0-9]{18}|[a-zA-Z0-9]{15})$/.test(s);
  },

  /**
   * @description Navigates to an sObject in Lightning, Salesforce1, or Classic.
   * @param id {String} - Id of source Salesforce object.
   * @param pathPrefix {String} - Optional prefix for path.
   */
  navigateToSObject: function (id, pathPrefix) {
    if (this.isInIFrame()) {
      window.parent.DSUtil.navigateToSObject(id, pathPrefix);
    } else if (this.isLightningOrSF1()) {
      sforce.one.navigateToSObject(id);
    } else {
      window.location.href = this.isDefined(pathPrefix) ? pathPrefix + '/' + id : '/' + id;
    }
  },

  /**
   * @description Navigates to a URL in Lightning, Salesforce1, or Classic.
   * @param url {String} - The destination URL.
   * @param isRedirect {Boolean} - Whether this is a redirect. If true, this will replace the current page in navigation history.
   */
  navigateToURL: function (url, isRedirect) {
    // Use the more reliable navigateToSObject if the input URL looks like a Salesforce ID.
    if (this.isSalesforceId(url)) {
      this.navigateToSObject(url);
    } else {
      if (this.isInIFrame()) {
        window.parent.DSUtil.navigateToURL(url, isRedirect);
      } else if (!this.isCommunitySite() && this.isLightningOrSF1()) {
        // sforce.one.navigateToURL is defined, but broken within a SFDC Community site.
        sforce.one.navigateToURL(url, isRedirect);
      } else {
        window.location.href = url;
      }
    }
  },

  /**
   * @description Closes the current window. If in a Lightning or Salesforce1 iFrame, redirects to source object.
   * @param id {String} - Id of source Salesforce object.
   */
  closeWindow: function (id) {
    if (this.isInIFrame()) {
      window.parent.DSUtil.closeWindow(id);
    } else if (this.isLightningOrSF1()) {
      sforce.one.navigateToSObject(id);
    } else {
      window.close();
    }
  },

  /**
   * @description HTML-encodes a string.
   * @param s {string} the string to HTML-encode
   * @return {string} the HTML-encoded string.
   */
  htmlEncode: function (s) {
    if (this.isNotDefined(s)) return '';
    if (typeof s !== 'string') return s;
    return s
      .replace(/&/g, '&amp;')
      .replace(/"/g, '&quot;')
      .replace(/'/g, '&#39;')
      .replace(/</g, '&lt;')
      .replace(/>/g, '&gt;');
  },

  /**
   * @description HTML-decodes a string.
   * @param s {string} the string to HTML-decode
   * @return {string} the HTML-decoded string.
   */
  htmlDecode: function (s) {
    if (this.isNotDefined(s)) return '';
    if (typeof s !== 'string') return s;
    return s
      .replace(/&quot;/g, '"')
      .replace(/&#39;/g, "'")
      .replace(/&lt;/g, '<')
      .replace(/&gt;/g, '>')
      .replace(/&amp;/g, '&');
  },

  /**
   * @description Capitalizes first letter of a string.
   * @param s {string} the string to capitalize
   * @returns {string} the capitalized string.
   */
  capitalize: function (s) {
    if (this.isNotDefined(s)) return '';
    if (typeof s !== 'string') return s;
    return s.charAt(0).toUpperCase() + s.toLowerCase().slice(1);
  },

  /**
   * @description Elides a string if necessary.
   * @param s {string} the input string.
   * @param maxLength {number} the maximum string length.
   */
  elide: function (s, maxLength) {
    if (this.isNotDefined(s)) return '';
    if (typeof s !== 'string') return s;
    if (s.length > maxLength) return s.substring(0, maxLength) + '...';
    return s;
  }
};
