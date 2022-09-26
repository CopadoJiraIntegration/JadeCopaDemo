window._sortBy = (function () {

  const _defaults = {
    parser: (x) => x,
    desc: false
  };

  const isObject = (o) => o !== null && typeof o === "object";
  const isDefined = (v) => typeof v !== "undefined";

  //gets the item to be sorted
  function getItem (x) {
    const isProp = isObject(x) && isDefined(x[this.prop]);
    return this.parser(isProp ? x[this.prop] : x);
  }

  /**
   * Sorts an array of elements
   * @param  {Array} array: the collection to sort
   * @param  {Object} options: 
   *         options with the sort rules. It have the properties:
   *         - {String}   prop: property name (if it is an Array of objects)
   *         - {Boolean}  desc: determines whether the sort is descending
   *         - {Function} parser: function to parse the items to expected type
   * @return {Array}
   */
  return function (array, options) {
    if (!(array instanceof Array) || !array.length)
      return [];
    const opt = Object.assign({}, _defaults, options);
    opt.desc = opt.desc ? -1 : 1;
    return array.sort(function (a, b) {
      a = getItem.call(opt, a);
      b = getItem.call(opt, b);
      return opt.desc * (a < b ? -1 : +(a > b));
    });
  };

}());