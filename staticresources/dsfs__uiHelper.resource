window.uiHelper = (function () {
  var getErrorMessage = function (error) {
    var message = '';
    if (error) {
      if (error.getError) {
        var errors = error.getError();
        message = errors;
        if (!$A.util.isEmpty(errors)) {
          message = errors[0].message;
        }
      } else if (error.message) {
        message = error.message;
      } else {
        message = error;
      }
    }
    return message;
  };

  var displayToast = function (title, message, type) {
    var e = $A.get('e.force:showToast');
    e.setParams({
      title: title, message: message, type: type || 'other'
    });
    e.fire();
  };

  return Object.freeze({
    getErrorMessage: getErrorMessage,
    displayToast: displayToast
  });
}());
