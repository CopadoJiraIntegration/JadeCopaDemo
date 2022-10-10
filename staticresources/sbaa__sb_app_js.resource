'use strict';

System.register('app.js', ['common/common.routes.js', 'dealdesk/dealdesk.routes.js', 'advapprovals/advapprovals.routes.js', 'common/core/AppContext.js', 'common/core/sb-router/Router.js', 'common/data/sb-db/Db.js', 'common/data/sb-db/adapter/leveljs/LevelAdapter.js', 'common/data/sb-db/Metadata.js', 'common/common.js', 'dealdesk/dealdesk.js'], function (_export, _context) {
	var common, dealdesk, advapprovals, AppContext, Router, Db, LevelAdapter, Metadata, _createClass, App;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_commonCommonRoutesJs) {
			common = _commonCommonRoutesJs;
		}, function (_dealdeskDealdeskRoutesJs) {
			dealdesk = _dealdeskDealdeskRoutesJs;
		}, function (_advapprovalsAdvapprovalsRoutesJs) {
			advapprovals = _advapprovalsAdvapprovalsRoutesJs;
		}, function (_commonCoreAppContextJs) {
			AppContext = _commonCoreAppContextJs.AppContext;
		}, function (_commonCoreSbRouterRouterJs) {
			Router = _commonCoreSbRouterRouterJs.Router;
		}, function (_commonDataSbDbDbJs) {
			Db = _commonDataSbDbDbJs.Db;
		}, function (_commonDataSbDbAdapterLeveljsLevelAdapterJs) {
			LevelAdapter = _commonDataSbDbAdapterLeveljsLevelAdapterJs.LevelAdapter;
		}, function (_commonDataSbDbMetadataJs) {
			Metadata = _commonDataSbDbMetadataJs;
		}, function (_commonCommonJs) {}, function (_dealdeskDealdeskJs) {}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('App', App = function () {
				function App() {
					_classCallCheck(this, App);
				}

				_createClass(App, null, [{
					key: 'init',
					value: function init(pageContainer, dbName, orgPrefix) {
						AppContext.org.prefix = orgPrefix || 'sbaa';

						var r = {};
						r[common.PREFIX] = common.ROUTES;
						r[dealdesk.PREFIX] = dealdesk.ROUTES;
						r[advapprovals.PREFIX] = advapprovals.ROUTES;

						pageContainer.allRoutes = r;

						Db.adapter = new LevelAdapter();

						return Promise.all([AppContext.init(true), Db.adapter.open(dbName || 'sbaa')]);
					}
				}]);

				return App;
			}());

			_export('App', App);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImFwcC5qcyJdLCJuYW1lcyI6WyJjb21tb24iLCJkZWFsZGVzayIsImFkdmFwcHJvdmFscyIsIkFwcENvbnRleHQiLCJSb3V0ZXIiLCJEYiIsIkxldmVsQWRhcHRlciIsIk1ldGFkYXRhIiwiQXBwIiwicGFnZUNvbnRhaW5lciIsImRiTmFtZSIsIm9yZ1ByZWZpeCIsIm9yZyIsInByZWZpeCIsInIiLCJQUkVGSVgiLCJST1VURVMiLCJhbGxSb3V0ZXMiLCJhZGFwdGVyIiwiUHJvbWlzZSIsImFsbCIsImluaXQiLCJvcGVuIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7O0FBQVlBLFM7O0FBQ0FDLFc7O0FBQ0FDLGU7O0FBQ0pDLGEsMkJBQUFBLFU7O0FBQ0FDLFMsK0JBQUFBLE07O0FBQ0FDLEssdUJBQUFBLEU7O0FBQ0FDLGUsK0NBQUFBLFk7O0FBQ0lDLFc7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztrQkFPQ0MsRzs7Ozs7OzswQkFDQ0MsYSxFQUFlQyxNLEVBQVFDLFMsRUFBWTtBQUMvQ1IsaUJBQVdTLEdBQVgsQ0FBZUMsTUFBZixHQUF3QkYsYUFBYSxNQUFyQzs7QUFFQSxVQUFJRyxJQUFJLEVBQVI7QUFDQUEsUUFBRWQsT0FBT2UsTUFBVCxJQUFtQmYsT0FBT2dCLE1BQTFCO0FBQ0FGLFFBQUViLFNBQVNjLE1BQVgsSUFBcUJkLFNBQVNlLE1BQTlCO0FBQ0FGLFFBQUVaLGFBQWFhLE1BQWYsSUFBeUJiLGFBQWFjLE1BQXRDOztBQUdBUCxvQkFBY1EsU0FBZCxHQUEwQkgsQ0FBMUI7O0FBRUFULFNBQUdhLE9BQUgsR0FBYSxJQUFJWixZQUFKLEVBQWI7O0FBRUEsYUFBT2EsUUFBUUMsR0FBUixDQUFZLENBQ2xCakIsV0FBV2tCLElBQVgsQ0FBaUIsSUFBakIsQ0FEa0IsRUFFbEJoQixHQUFHYSxPQUFILENBQVdJLElBQVgsQ0FBaUJaLFVBQVUsTUFBM0IsQ0FGa0IsQ0FBWixDQUFQO0FBSUEiLCJmaWxlIjoiYXBwLmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0ICogYXMgY29tbW9uIGZyb20gJ2NvbW1vbi9jb21tb24ucm91dGVzLmpzJztcbmltcG9ydCAqIGFzIGRlYWxkZXNrIGZyb20gJ2RlYWxkZXNrL2RlYWxkZXNrLnJvdXRlcy5qcyc7XG5pbXBvcnQgKiBhcyBhZHZhcHByb3ZhbHMgZnJvbSAnYWR2YXBwcm92YWxzL2FkdmFwcHJvdmFscy5yb3V0ZXMuanMnO1xuaW1wb3J0IHtBcHBDb250ZXh0fSBmcm9tICdjb21tb24vY29yZS9BcHBDb250ZXh0LmpzJztcbmltcG9ydCB7Um91dGVyfSBmcm9tICdjb21tb24vY29yZS9zYi1yb3V0ZXIvUm91dGVyLmpzJztcbmltcG9ydCB7RGJ9IGZyb20gJ2NvbW1vbi9kYXRhL3NiLWRiL0RiLmpzJztcbmltcG9ydCB7TGV2ZWxBZGFwdGVyfSBmcm9tICdjb21tb24vZGF0YS9zYi1kYi9hZGFwdGVyL2xldmVsanMvTGV2ZWxBZGFwdGVyLmpzJztcbmltcG9ydCAqIGFzIE1ldGFkYXRhIGZyb20gJ2NvbW1vbi9kYXRhL3NiLWRiL01ldGFkYXRhLmpzJztcblxuLy8gaW1wb3J0IHRoZSBcImJvb3RzdHJhcFwiIG1vZHVsZXMgZnJvbSBhbGwgZmVhdHVyZSBmb2xkZXJzXG4vLyB0aGV5IGFyZSBoZXJlIGp1c3Qgc28gd2UgZG9uJ3QgaGF2ZSB0byBleHBsaWNpdGx5IGNhbGwgU3lzdGVtLmltcG9ydCgpIG9uIGluZGl2aWR1YWwgbW9kdWxlcy5cbmltcG9ydCAnY29tbW9uL2NvbW1vbi5qcyc7XG5pbXBvcnQgJ2RlYWxkZXNrL2RlYWxkZXNrLmpzJztcblxuZXhwb3J0IGNsYXNzIEFwcCB7XG5cdHN0YXRpYyBpbml0KCBwYWdlQ29udGFpbmVyLCBkYk5hbWUsIG9yZ1ByZWZpeCApIHtcblx0XHRBcHBDb250ZXh0Lm9yZy5wcmVmaXggPSBvcmdQcmVmaXggfHwgJ3NiYWEnO1xuXG5cdFx0bGV0IHIgPSB7fTtcblx0XHRyW2NvbW1vbi5QUkVGSVhdID0gY29tbW9uLlJPVVRFUztcblx0XHRyW2RlYWxkZXNrLlBSRUZJWF0gPSBkZWFsZGVzay5ST1VURVM7XG5cdFx0clthZHZhcHByb3ZhbHMuUFJFRklYXSA9IGFkdmFwcHJvdmFscy5ST1VURVM7XG5cblx0XHQvLyBpbml0aWFsaXplIGFwcCB3aXRoIGFsbCBVUkwgcm91dGVzXG5cdFx0cGFnZUNvbnRhaW5lci5hbGxSb3V0ZXMgPSByO1xuXG5cdFx0RGIuYWRhcHRlciA9IG5ldyBMZXZlbEFkYXB0ZXIoKTtcblxuXHRcdHJldHVybiBQcm9taXNlLmFsbChbXG5cdFx0XHRBcHBDb250ZXh0LmluaXQoIHRydWUgKSxcblx0XHRcdERiLmFkYXB0ZXIub3BlbiggZGJOYW1lIHx8ICdzYmFhJyApXG5cdFx0XSk7XG5cdH1cbn1cbiJdfQ==
"use strict";

System.register("labels_en.js", [], function (_export, _context) {
  var LABELS;
  return {
    setters: [],
    execute: function () {
      _export("LABELS", LABELS = { "Yes": "Yes", "Delete": "Delete", "New": "New", "Recently Viewed": "Recently Viewed" });

      _export("LABELS", LABELS);
    }
  };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImxhYmVsc19lbi5qcyJdLCJuYW1lcyI6WyJMQUJFTFMiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7d0JBQ2FBLE0sR0FBUyxFQUFDLE9BQU0sS0FBUCxFQUFhLFVBQVMsUUFBdEIsRUFBK0IsT0FBTSxLQUFyQyxFQUEyQyxtQkFBa0IsaUJBQTdELEUiLCJmaWxlIjoibGFiZWxzX2VuLmpzIiwic291cmNlc0NvbnRlbnQiOlsiLy8gVEhJUyBGSUxFIElTIEdFTkVSQVRFRC4gIERPIE5PVCBFRElUISEhIVxuZXhwb3J0IGNvbnN0IExBQkVMUyA9IHtcIlllc1wiOlwiWWVzXCIsXCJEZWxldGVcIjpcIkRlbGV0ZVwiLFwiTmV3XCI6XCJOZXdcIixcIlJlY2VudGx5IFZpZXdlZFwiOlwiUmVjZW50bHkgVmlld2VkXCJ9OyJdfQ==
'use strict';

System.register('advapprovals/advapprovals.routes.js', [], function (_export, _context) {
	var PREFIX, ROUTES;
	return {
		setters: [],
		execute: function () {
			_export('PREFIX', PREFIX = '/advapprovals');

			_export('PREFIX', PREFIX);

			_export('ROUTES', ROUTES = {
				'/hi': { comp: 'sb-aa-example-page', mod: 'advapprovals/sb-aa-example-page/ExamplePage.js' }
			});

			_export('ROUTES', ROUTES);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImFkdmFwcHJvdmFscy5yb3V0ZXMuanMiXSwibmFtZXMiOlsiUFJFRklYIiwiUk9VVEVTIiwiY29tcCIsIm1vZCJdLCJtYXBwaW5ncyI6Ijs7Ozs7OztxQkFBYUEsTSxHQUFTLGU7Ozs7cUJBQ1RDLE0sR0FBUztBQUNyQixXQUFPLEVBQUVDLE1BQU0sb0JBQVIsRUFBOEJDLEtBQUssZ0RBQW5DO0FBRGMsSSIsImZpbGUiOiJhZHZhcHByb3ZhbHMucm91dGVzLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNvbnN0IFBSRUZJWCA9ICcvYWR2YXBwcm92YWxzJztcbmV4cG9ydCBjb25zdCBST1VURVMgPSB7XG5cdCcvaGknOiB7IGNvbXA6ICdzYi1hYS1leGFtcGxlLXBhZ2UnLCBtb2Q6ICdhZHZhcHByb3ZhbHMvc2ItYWEtZXhhbXBsZS1wYWdlL0V4YW1wbGVQYWdlLmpzJyB9XG59XG4iXX0=
'use strict';

System.register('common/Util.js', [], function (_export, _context) {
	var _createClass, Util, frame;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('Util', Util = function () {
				function Util() {
					_classCallCheck(this, Util);
				}

				_createClass(Util, null, [{
					key: 'pad',
					value: function pad(n, width, z) {
						z = z || '0';
						n = n + '';
						return n.length >= width ? n : new Array(width - n.length + 1).join(z) + n;
					}
				}, {
					key: 'toIsoDate',
					value: function toIsoDate(d) {
						d = typeof d === 'number' ? new Date(d) : d;
						return d.getUTCFullYear() + '-' + Util.pad(d.getUTCMonth() + 1, 2) + '-' + Util.pad(d.getUTCDate(), 2) + 'T' + Util.pad(d.getUTCHours(), 2) + ':' + Util.pad(d.getUTCMinutes(), 2) + ':' + Util.pad(d.getUTCSeconds(), 2) + 'Z';
					}
				}, {
					key: 'notifyTopObjects',
					value: function notifyTopObjects(ctxComponent, object, strProp) {
						var _iteratorNormalCompletion = true;
						var _didIteratorError = false;
						var _iteratorError = undefined;

						try {
							for (var _iterator = Object.keys(object)[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
								var prop = _step.value;

								ctxComponent.notifyPath(strProp + '.' + prop, object[prop]);
							}
						} catch (err) {
							_didIteratorError = true;
							_iteratorError = err;
						} finally {
							try {
								if (!_iteratorNormalCompletion && _iterator.return) {
									_iterator.return();
								}
							} finally {
								if (_didIteratorError) {
									throw _iteratorError;
								}
							}
						}
					}
				}]);

				return Util;
			}());

			_export('Util', Util);

			Util.Map = Map;
			if (!Map || !Map.prototype.get || !Map.prototype.set) {
				frame = document.createElement('iframe');

				document.body.appendChild(frame);
				Util.Map = frame.contentWindow.Map;
				frame.parentNode.removeChild(frame);
			}
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlV0aWwuanMiXSwibmFtZXMiOlsiVXRpbCIsIm4iLCJ3aWR0aCIsInoiLCJsZW5ndGgiLCJBcnJheSIsImpvaW4iLCJkIiwiRGF0ZSIsImdldFVUQ0Z1bGxZZWFyIiwicGFkIiwiZ2V0VVRDTW9udGgiLCJnZXRVVENEYXRlIiwiZ2V0VVRDSG91cnMiLCJnZXRVVENNaW51dGVzIiwiZ2V0VVRDU2Vjb25kcyIsImN0eENvbXBvbmVudCIsIm9iamVjdCIsInN0clByb3AiLCJPYmplY3QiLCJrZXlzIiwicHJvcCIsIm5vdGlmeVBhdGgiLCJNYXAiLCJwcm90b3R5cGUiLCJnZXQiLCJzZXQiLCJmcmFtZSIsImRvY3VtZW50IiwiY3JlYXRlRWxlbWVudCIsImJvZHkiLCJhcHBlbmRDaGlsZCIsImNvbnRlbnRXaW5kb3ciLCJwYXJlbnROb2RlIiwicmVtb3ZlQ2hpbGQiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O21CQUdhQSxJOzs7Ozs7O3lCQVFBQyxDLEVBQUdDLEssRUFBT0MsQyxFQUFJO0FBQ3pCQSxVQUFJQSxLQUFLLEdBQVQ7QUFDQUYsVUFBSUEsSUFBSSxFQUFSO0FBQ0EsYUFBT0EsRUFBRUcsTUFBRixJQUFZRixLQUFaLEdBQW9CRCxDQUFwQixHQUF3QixJQUFJSSxLQUFKLENBQVVILFFBQVFELEVBQUVHLE1BQVYsR0FBbUIsQ0FBN0IsRUFBZ0NFLElBQWhDLENBQXFDSCxDQUFyQyxJQUEwQ0YsQ0FBekU7QUFDQTs7OytCQU9nQk0sQyxFQUFHO0FBQ25CQSxVQUFJLE9BQU9BLENBQVAsS0FBYSxRQUFiLEdBQXdCLElBQUlDLElBQUosQ0FBU0QsQ0FBVCxDQUF4QixHQUFzQ0EsQ0FBMUM7QUFDQSxhQUFPQSxFQUFFRSxjQUFGLEtBQXFCLEdBQXJCLEdBQ0hULEtBQUtVLEdBQUwsQ0FBVUgsRUFBRUksV0FBRixLQUFnQixDQUExQixFQUE2QixDQUE3QixDQURHLEdBQ2dDLEdBRGhDLEdBRUhYLEtBQUtVLEdBQUwsQ0FBVUgsRUFBRUssVUFBRixFQUFWLEVBQTBCLENBQTFCLENBRkcsR0FFNkIsR0FGN0IsR0FHSFosS0FBS1UsR0FBTCxDQUFVSCxFQUFFTSxXQUFGLEVBQVYsRUFBMkIsQ0FBM0IsQ0FIRyxHQUc4QixHQUg5QixHQUlIYixLQUFLVSxHQUFMLENBQVVILEVBQUVPLGFBQUYsRUFBVixFQUE2QixDQUE3QixDQUpHLEdBSWdDLEdBSmhDLEdBS0hkLEtBQUtVLEdBQUwsQ0FBVUgsRUFBRVEsYUFBRixFQUFWLEVBQTZCLENBQTdCLENBTEcsR0FLZ0MsR0FMdkM7QUFNQTs7O3NDQUV1QkMsWSxFQUFjQyxNLEVBQVFDLE8sRUFBUztBQUFBO0FBQUE7QUFBQTs7QUFBQTtBQUN0RCw0QkFBaUJDLE9BQU9DLElBQVAsQ0FBWUgsTUFBWixDQUFqQiw4SEFBc0M7QUFBQSxZQUE3QkksSUFBNkI7O0FBQ3JDTCxxQkFBYU0sVUFBYixDQUF3QkosVUFBVSxHQUFWLEdBQWdCRyxJQUF4QyxFQUE4Q0osT0FBT0ksSUFBUCxDQUE5QztBQUNBO0FBSHFEO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFJdEQ7Ozs7Ozs7O0FBT0ZyQixRQUFLdUIsR0FBTCxHQUFXQSxHQUFYO0FBQ0EsT0FBSSxDQUFDQSxHQUFELElBQVEsQ0FBQ0EsSUFBSUMsU0FBSixDQUFjQyxHQUF2QixJQUE4QixDQUFDRixJQUFJQyxTQUFKLENBQWNFLEdBQWpELEVBQXVEO0FBQ2xEQyxTQURrRCxHQUMxQ0MsU0FBU0MsYUFBVCxDQUF3QixRQUF4QixDQUQwQzs7QUFFdERELGFBQVNFLElBQVQsQ0FBY0MsV0FBZCxDQUEyQkosS0FBM0I7QUFDQTNCLFNBQUt1QixHQUFMLEdBQVdJLE1BQU1LLGFBQU4sQ0FBb0JULEdBQS9CO0FBQ0FJLFVBQU1NLFVBQU4sQ0FBaUJDLFdBQWpCLENBQThCUCxLQUE5QjtBQUNBIiwiZmlsZSI6IlV0aWwuanMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEEgY29sbGVjdGlvbiBvZiBqYXZhc2NyaXB0IHV0aWxpdHkgZnVuY3Rpb25zXG4gKi9cbmV4cG9ydCBjbGFzcyBVdGlsIHtcblx0LyoqXG5cdCAqIFBhZCBhIG51bWJlciB3aXRoIGxlZnQgemVyb3Ncblx0ICogQHBhcmFtICB7SW50ZWdlcn0gbiAgICAgdGhlIG51bWVyaWMgdmFsdWVcblx0ICogQHBhcmFtICB7SW50ZWdlcn0gd2lkdGggdGhlIG51bWJlciBvZiB6ZXJvcyB0byBwYWRcblx0ICogQHBhcmFtICB7U3RyaW5nfSB6ICAgICB0aGUgcGFkIGNoYXJhY3RlciwgZGVmYXVsdHMgdG8gJzAnXG5cdCAqIEByZXR1cm4ge1N0cmluZ30gICAgICAgdGhlIHBhZGRlZCBudW1iZXJcblx0ICovXG5cdHN0YXRpYyBwYWQoIG4sIHdpZHRoLCB6ICkge1xuXHRcdHogPSB6IHx8ICcwJztcblx0XHRuID0gbiArICcnO1xuXHRcdHJldHVybiBuLmxlbmd0aCA+PSB3aWR0aCA/IG4gOiBuZXcgQXJyYXkod2lkdGggLSBuLmxlbmd0aCArIDEpLmpvaW4oeikgKyBuO1xuXHR9XG5cblx0LyoqXG5cdCAqIFJldHVybnMgYW4gXCJJU08gZGF0ZSBzdHJpbmdcIiBpbiBSRkMgMzMzOSBmb3JtYXRcblx0ICogQHBhcmFtICB7TnVtYmVyfERhdGV9IGQgdGhlIG51bWJlciBvZiBtaWxsaXNlY29uZHMgZnJvbSBlcG9jaCBvciBEYXRlIG9iamVjdFxuXHQgKiBAcmV0dXJuIHtTdHJpbmd9ICAgdGhlIFJGQyAzMzM5IGRhdGUgc3RyaW5nXG5cdCAqL1xuXHRzdGF0aWMgdG9Jc29EYXRlKGQpIHtcblx0XHRkID0gdHlwZW9mIGQgPT09ICdudW1iZXInID8gbmV3IERhdGUoZCkgOiBkO1xuXHRcdHJldHVybiBkLmdldFVUQ0Z1bGxZZWFyKCkgKyAnLSdcblx0XHRcdFx0KyBVdGlsLnBhZCggZC5nZXRVVENNb250aCgpKzEsIDIgKSArICctJ1xuXHRcdFx0XHQrIFV0aWwucGFkKCBkLmdldFVUQ0RhdGUoKSwgMiApICsgJ1QnXG5cdFx0XHRcdCsgVXRpbC5wYWQoIGQuZ2V0VVRDSG91cnMoKSwgMiApICsgJzonXG5cdFx0XHRcdCsgVXRpbC5wYWQoIGQuZ2V0VVRDTWludXRlcygpLCAyICkgKyAnOidcblx0XHRcdFx0KyBVdGlsLnBhZCggZC5nZXRVVENTZWNvbmRzKCksIDIgKSArICdaJ1xuXHR9XG5cblx0c3RhdGljIG5vdGlmeVRvcE9iamVjdHMoY3R4Q29tcG9uZW50LCBvYmplY3QsIHN0clByb3ApIHtcblx0XHRmb3IgKGxldCBwcm9wIG9mIE9iamVjdC5rZXlzKG9iamVjdCkpIHtcblx0XHRcdGN0eENvbXBvbmVudC5ub3RpZnlQYXRoKHN0clByb3AgKyAnLicgKyBwcm9wLCBvYmplY3RbcHJvcF0pO1xuXHRcdH1cblx0fVxufVxuXG4vKipcbiAqIFNGIEFsb2hhIFVJIGNyZWF0ZXMgaXRzIG93biBNYXAgb2JqZWN0IGluIHRoZSBnbG9iYWwgbmFtZXNwYWNlIGFuZCBpdCBpcyBhbnl3aGVyZSBuZWFyIHN0YW5kYXJkcyBjb21wbGlhbnRcbiAqIFRoaXMgaXMgYSBzdHVwaWQgaGFjayB0aGF0IGNoZWNrcyBmb3IgdGhlaXIgZHVtYiBpbXBsZW1lbmF0aW9uIGFuZCBnZXRzIHRoZSByZWFsIE1hcCBjbGFzcyBpZiBuZWVkZWQuXG4gKi9cblV0aWwuTWFwID0gTWFwO1xuaWYoICFNYXAgfHwgIU1hcC5wcm90b3R5cGUuZ2V0IHx8ICFNYXAucHJvdG90eXBlLnNldCApIHtcblx0bGV0IGZyYW1lID0gZG9jdW1lbnQuY3JlYXRlRWxlbWVudCggJ2lmcmFtZScgKTtcblx0ZG9jdW1lbnQuYm9keS5hcHBlbmRDaGlsZCggZnJhbWUgKTtcblx0VXRpbC5NYXAgPSBmcmFtZS5jb250ZW50V2luZG93Lk1hcDtcblx0ZnJhbWUucGFyZW50Tm9kZS5yZW1vdmVDaGlsZCggZnJhbWUgKTtcbn0iXX0=
'use strict';

System.register('common/common.js', ['common/core/sb-i18n/I18n.js', 'common/core/sb-loading-spinner/LoadingSpinner.js', 'common/core/sb-page-container/PageContainer.js', 'common/core/sb-message-container/MessageContainer.js', 'common/core/sb-page-header/PageHeader.js', 'common/entities/sb-entity-field/EntityField.js', 'common/data/sb-service/Service.js', 'common/forms/sb-field/Field.js', 'common/forms/sb-typeahead/Typeahead.js', 'common/forms/sb-datepicker/Datepicker.js', 'common/forms/sb-pagination/Pagination.js', 'common/layout/sb-div/Div.js', 'common/layout/sb-group/Group.js', 'common/layout/sb-side-panel/SidePanel.js', 'common/layout/sb-table-cell/TableCell.js', 'common/layout/sb-table-header/TableHeader.js', 'common/layout/sb-table-row/TableRow.js', 'common/services/sb-line-editor-read/LineEditorReader.js', 'common/services/sb-line-editor-cache-save/LineEditorCacheSaver.js'], function (_export, _context) {
  return {
    setters: [function (_commonCoreSbI18nI18nJs) {}, function (_commonCoreSbLoadingSpinnerLoadingSpinnerJs) {}, function (_commonCoreSbPageContainerPageContainerJs) {}, function (_commonCoreSbMessageContainerMessageContainerJs) {}, function (_commonCoreSbPageHeaderPageHeaderJs) {}, function (_commonEntitiesSbEntityFieldEntityFieldJs) {}, function (_commonDataSbServiceServiceJs) {}, function (_commonFormsSbFieldFieldJs) {}, function (_commonFormsSbTypeaheadTypeaheadJs) {}, function (_commonFormsSbDatepickerDatepickerJs) {}, function (_commonFormsSbPaginationPaginationJs) {}, function (_commonLayoutSbDivDivJs) {}, function (_commonLayoutSbGroupGroupJs) {}, function (_commonLayoutSbSidePanelSidePanelJs) {}, function (_commonLayoutSbTableCellTableCellJs) {}, function (_commonLayoutSbTableHeaderTableHeaderJs) {}, function (_commonLayoutSbTableRowTableRowJs) {}, function (_commonServicesSbLineEditorReadLineEditorReaderJs) {}, function (_commonServicesSbLineEditorCacheSaveLineEditorCacheSaverJs) {}],
    execute: function () {}
  };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJjb21tb24uanMiLCJzb3VyY2VzQ29udGVudCI6W119
'use strict';

System.register('common/common.routes.js', [], function (_export, _context) {
	var PREFIX, ROUTES;
	return {
		setters: [],
		execute: function () {
			_export('PREFIX', PREFIX = '/entities');

			_export('PREFIX', PREFIX);

			_export('ROUTES', ROUTES = {
				'/:type': { comp: 'sb-entity-list', mod: 'common/entities/sb-entity-list/EntityList.js' },
				'/:type/new': { comp: 'sb-entity-detail', mod: 'common/entities/sb-entity-detail/EntityDetail.js' },
				'/:type/detail': { comp: 'sb-entity-detail', mod: 'common/entities/sb-entity-detail/EntityDetail.js' }
			});

			_export('ROUTES', ROUTES);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImNvbW1vbi5yb3V0ZXMuanMiXSwibmFtZXMiOlsiUFJFRklYIiwiUk9VVEVTIiwiY29tcCIsIm1vZCJdLCJtYXBwaW5ncyI6Ijs7Ozs7OztxQkFBYUEsTSxHQUFTLFc7Ozs7cUJBQ1RDLE0sR0FBUztBQUNyQixjQUFVLEVBQUVDLE1BQU0sZ0JBQVIsRUFBMEJDLEtBQUssOENBQS9CLEVBRFc7QUFFckIsa0JBQWMsRUFBRUQsTUFBTSxrQkFBUixFQUE0QkMsS0FBSyxrREFBakMsRUFGTztBQUdyQixxQkFBaUIsRUFBRUQsTUFBTSxrQkFBUixFQUE0QkMsS0FBSyxrREFBakM7QUFISSxJIiwiZmlsZSI6ImNvbW1vbi5yb3V0ZXMuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY29uc3QgUFJFRklYID0gJy9lbnRpdGllcyc7XG5leHBvcnQgY29uc3QgUk9VVEVTID0ge1xuXHQnLzp0eXBlJzogeyBjb21wOiAnc2ItZW50aXR5LWxpc3QnLCBtb2Q6ICdjb21tb24vZW50aXRpZXMvc2ItZW50aXR5LWxpc3QvRW50aXR5TGlzdC5qcycgfSxcblx0Jy86dHlwZS9uZXcnOiB7IGNvbXA6ICdzYi1lbnRpdHktZGV0YWlsJywgbW9kOiAnY29tbW9uL2VudGl0aWVzL3NiLWVudGl0eS1kZXRhaWwvRW50aXR5RGV0YWlsLmpzJyB9LFxuXHQnLzp0eXBlL2RldGFpbCc6IHsgY29tcDogJ3NiLWVudGl0eS1kZXRhaWwnLCBtb2Q6ICdjb21tb24vZW50aXRpZXMvc2ItZW50aXR5LWRldGFpbC9FbnRpdHlEZXRhaWwuanMnIH1cbn1cbiJdfQ==
"use strict";

System.register("common/common.tests.js", [], function (_export, _context) {
  return {
    setters: [],
    execute: function () {}
  };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJjb21tb24udGVzdHMuanMiLCJzb3VyY2VzQ29udGVudCI6W119
'use strict';

System.register('dealdesk/dealdesk.js', ['dealdesk/services/services.js', 'dealdesk/validations/validations.js', 'dealdesk/sb-dd-record-summary/DealDeskRecordSummary.js', 'dealdesk/sb-dd-line-details/DealDeskLineDetails.js', 'dealdesk/sb-dd-line-table/DealDeskLineTable.js', 'dealdesk/sb-dd-sforce-console/DealDeskSForceConsole.js'], function (_export, _context) {
  return {
    setters: [function (_dealdeskServicesServicesJs) {}, function (_dealdeskValidationsValidationsJs) {}, function (_dealdeskSbDdRecordSummaryDealDeskRecordSummaryJs) {}, function (_dealdeskSbDdLineDetailsDealDeskLineDetailsJs) {}, function (_dealdeskSbDdLineTableDealDeskLineTableJs) {}, function (_dealdeskSbDdSforceConsoleDealDeskSForceConsoleJs) {}],
    execute: function () {}
  };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJkZWFsZGVzay5qcyIsInNvdXJjZXNDb250ZW50IjpbXX0=
'use strict';

System.register('dealdesk/dealdesk.routes.js', [], function (_export, _context) {
	var PREFIX, ROUTES;
	return {
		setters: [],
		execute: function () {
			_export('PREFIX', PREFIX = '/dealdesk');

			_export('PREFIX', PREFIX);

			_export('ROUTES', ROUTES = {
				'/home': { comp: 'sb-deal-desk', mod: 'dealdesk/sb-deal-desk/DealDesk.js' }
			});

			_export('ROUTES', ROUTES);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImRlYWxkZXNrLnJvdXRlcy5qcyJdLCJuYW1lcyI6WyJQUkVGSVgiLCJST1VURVMiLCJjb21wIiwibW9kIl0sIm1hcHBpbmdzIjoiOzs7Ozs7O3FCQUFhQSxNLEdBQVMsVzs7OztxQkFDVEMsTSxHQUFTO0FBQ3JCLGFBQVMsRUFBRUMsTUFBTSxjQUFSLEVBQXdCQyxLQUFLLG1DQUE3QjtBQURZLEkiLCJmaWxlIjoiZGVhbGRlc2sucm91dGVzLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNvbnN0IFBSRUZJWCA9ICcvZGVhbGRlc2snO1xuZXhwb3J0IGNvbnN0IFJPVVRFUyA9IHtcblx0Jy9ob21lJzogeyBjb21wOiAnc2ItZGVhbC1kZXNrJywgbW9kOiAnZGVhbGRlc2svc2ItZGVhbC1kZXNrL0RlYWxEZXNrLmpzJyB9XG59XG4iXX0=
'use strict';

System.register('advapprovals/sb-aa-example-page/ExamplePage.js', ['../../common/core/Page.js'], function (_export, _context) {
	var Page, _createClass, ExamplePage;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_commonCorePageJs) {
			Page = _commonCorePageJs.Page;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('ExamplePage', ExamplePage = function (_Page) {
				_inherits(ExamplePage, _Page);

				function ExamplePage() {
					_classCallCheck(this, ExamplePage);

					return _possibleConstructorReturn(this, (ExamplePage.__proto__ || Object.getPrototypeOf(ExamplePage)).apply(this, arguments));
				}

				_createClass(ExamplePage, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-aa-example-page';
						this.properties = Polymer.Base.extend({
							prop1: {
								type: String,
								value: function value() {
									return 'default value for prop1';
								}
							}
						}, Page.properties);
					}
				}, {
					key: 'ready',
					value: function ready() {
						console.log('Example page is ready.  prop1 == ' + this.prop1);
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.Page];
					}
				}]);

				return ExamplePage;
			}(Page));

			_export('ExamplePage', ExamplePage);

			Polymer(ExamplePage);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkV4YW1wbGVQYWdlLmpzIl0sIm5hbWVzIjpbIlBhZ2UiLCJFeGFtcGxlUGFnZSIsImlzIiwicHJvcGVydGllcyIsIlBvbHltZXIiLCJCYXNlIiwiZXh0ZW5kIiwicHJvcDEiLCJ0eXBlIiwiU3RyaW5nIiwidmFsdWUiLCJjb25zb2xlIiwibG9nIiwic2IiLCJjb21tb24iLCJjb3JlIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBQVFBLE8scUJBQUFBLEk7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzswQkFFS0MsVzs7Ozs7Ozs7Ozs7c0NBTUs7QUFDaEIsV0FBS0MsRUFBTCxHQUFVLG9CQUFWO0FBQ0EsV0FBS0MsVUFBTCxHQUFrQkMsUUFBUUMsSUFBUixDQUFhQyxNQUFiLENBQXFCO0FBQ3RDQyxjQUFPO0FBQ05DLGNBQU1DLE1BREE7QUFFTkMsZUFBTyxpQkFBVztBQUFFLGdCQUFPLHlCQUFQO0FBQW1DO0FBRmpEO0FBRCtCLE9BQXJCLEVBS2ZWLEtBQUtHLFVBTFUsQ0FBbEI7QUFNQTs7OzZCQUVPO0FBQ1BRLGNBQVFDLEdBQVIsQ0FBYSxzQ0FBc0MsS0FBS0wsS0FBeEQ7QUFDQTs7O3lCQWhCZTtBQUNmLGFBQU8sQ0FBQ00sR0FBR0MsTUFBSCxDQUFVQyxJQUFWLENBQWVmLElBQWhCLENBQVA7QUFDQTs7OztLQUorQkEsSTs7OztBQXFCakNJLFdBQVNILFdBQVQiLCJmaWxlIjoiRXhhbXBsZVBhZ2UuanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1BhZ2V9IGZyb20gJy4uLy4uL2NvbW1vbi9jb3JlL1BhZ2UuanMnO1xuXG5leHBvcnQgY2xhc3MgRXhhbXBsZVBhZ2UgZXh0ZW5kcyBQYWdlIHtcblxuXHRnZXQgYmVoYXZpb3JzKCkge1xuXHRcdHJldHVybiBbc2IuY29tbW9uLmNvcmUuUGFnZV07XG5cdH1cblxuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLWFhLWV4YW1wbGUtcGFnZSc7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0gUG9seW1lci5CYXNlLmV4dGVuZCgge1xuXHRcdFx0cHJvcDE6IHtcblx0XHRcdFx0dHlwZTogU3RyaW5nLFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7IHJldHVybiAnZGVmYXVsdCB2YWx1ZSBmb3IgcHJvcDEnOyB9XG5cdFx0XHR9XG5cdFx0fSwgUGFnZS5wcm9wZXJ0aWVzICk7XG5cdH1cblxuXHRyZWFkeSgpIHtcblx0XHRjb25zb2xlLmxvZyggJ0V4YW1wbGUgcGFnZSBpcyByZWFkeS4gIHByb3AxID09ICcgKyB0aGlzLnByb3AxICk7XG5cdH1cbn1cblxuUG9seW1lciggRXhhbXBsZVBhZ2UgKTtcbiJdfQ==
'use strict';

System.register('common/core/AppContext.js', [], function (_export, _context) {
	var _createClass, labels, org, md, user, i18n, sb, localUser, AppContext;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			labels = {};
			org = { prefix: '' };
			md = {};
			user = {};
			i18n = {};
			sb = window ? window.sb || {} : {};

			sb.ui = sb.ui || {};
			sb.common = sb.common || {};
			sb.common.core = sb.common.core || {};
			window.sb = sb;

			localUser = {
				lang: 'en',
				locale: 'en-US',
				id: 'user_123456789',
				fullname: 'Joe User',
				username: 'joe@user.com'
			};

			_export('AppContext', AppContext = function () {
				function AppContext() {
					_classCallCheck(this, AppContext);
				}

				_createClass(AppContext, [{
					key: 'user',
					get: function get() {
						return user;
					}
				}, {
					key: 'labels',
					get: function get() {
						return labels;
					}
				}, {
					key: 'org',
					get: function get() {
						return org;
					}
				}], [{
					key: 'init',
					value: function init(useLocal) {
						var i18nClass = null;
						System.import('common/core/sb-i18n/I18n.js').then(function (m) {
							i18nClass = m.I18n;
						});

						return new Promise(function (resolve, reject) {
							user = localUser;
							System.import('labels_en.js').then(function (m) {
								labels = m.LABELS;
								var ret = { labels: m.LABELS, user: localUser };

								if (i18nClass) i18n = new i18nClass(ret);

								resolve(ret);
							}).catch(function (e) {
								reject(e);
							});
						});
					}
				}, {
					key: 'properties',
					get: function get() {
						return {
							app: {
								type: Object,
								value: function value() {
									return {
										user: user,
										labels: labels,
										org: org
									};
								}
							},

							i18n: {
								type: Object,
								value: function value() {
									return i18n;
								}
							}
						};
					}
				}, {
					key: 'user',
					get: function get() {
						return user;
					}
				}, {
					key: 'labels',
					get: function get() {
						return labels;
					}
				}, {
					key: 'org',
					get: function get() {
						return org;
					}
				}]);

				return AppContext;
			}());

			_export('AppContext', AppContext);

			sb.common.core.AppContext = AppContext.prototype;
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkFwcENvbnRleHQuanMiXSwibmFtZXMiOlsibGFiZWxzIiwib3JnIiwicHJlZml4IiwibWQiLCJ1c2VyIiwiaTE4biIsInNiIiwid2luZG93IiwidWkiLCJjb21tb24iLCJjb3JlIiwibG9jYWxVc2VyIiwibGFuZyIsImxvY2FsZSIsImlkIiwiZnVsbG5hbWUiLCJ1c2VybmFtZSIsIkFwcENvbnRleHQiLCJ1c2VMb2NhbCIsImkxOG5DbGFzcyIsIlN5c3RlbSIsImltcG9ydCIsInRoZW4iLCJtIiwiSTE4biIsIlByb21pc2UiLCJyZXNvbHZlIiwicmVqZWN0IiwiTEFCRUxTIiwicmV0IiwiY2F0Y2giLCJlIiwiYXBwIiwidHlwZSIsIk9iamVjdCIsInZhbHVlIiwicHJvdG90eXBlIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUNJQSxTLEdBQVMsRTtBQUNYQyxNLEdBQU0sRUFBRUMsUUFBUSxFQUFWLEU7QUFDTkMsSyxHQUFLLEU7QUFDTEMsTyxHQUFPLEU7QUFDUEMsTyxHQUFPLEU7QUFFTEMsSyxHQUFLQyxTQUFTQSxPQUFPRCxFQUFQLElBQWEsRUFBdEIsR0FBMkIsRTs7QUFDcENBLE1BQUdFLEVBQUgsR0FBUUYsR0FBR0UsRUFBSCxJQUFTLEVBQWpCO0FBQ0FGLE1BQUdHLE1BQUgsR0FBWUgsR0FBR0csTUFBSCxJQUFhLEVBQXpCO0FBQ0FILE1BQUdHLE1BQUgsQ0FBVUMsSUFBVixHQUFpQkosR0FBR0csTUFBSCxDQUFVQyxJQUFWLElBQWtCLEVBQW5DO0FBQ0FILFVBQU9ELEVBQVAsR0FBWUEsRUFBWjs7QUFFSUssWSxHQUFZO0FBQ2ZDLFVBQU0sSUFEUztBQUVmQyxZQUFRLE9BRk87QUFHZkMsUUFBSSxnQkFIVztBQUlmQyxjQUFVLFVBSks7QUFLZkMsY0FBVTtBQUxLLEk7O3lCQXFCSEMsVTs7Ozs7Ozt5QkF5REQ7QUFDVixhQUFPYixJQUFQO0FBQ0E7Ozt5QkFFWTtBQUNaLGFBQU9KLE1BQVA7QUFDQTs7O3lCQUVTO0FBQ1QsYUFBT0MsR0FBUDtBQUNBOzs7MEJBM0RZaUIsUSxFQUFXO0FBQ3ZCLFVBQUlDLFlBQVksSUFBaEI7QUFDQUMsYUFBT0MsTUFBUCxDQUFlLDZCQUFmLEVBQStDQyxJQUEvQyxDQUFxRCxVQUFTQyxDQUFULEVBQVk7QUFDaEVKLG1CQUFZSSxFQUFFQyxJQUFkO0FBQ0EsT0FGRDs7QUFJQSxhQUFPLElBQUlDLE9BQUosQ0FBYSxVQUFTQyxPQUFULEVBQWtCQyxNQUFsQixFQUEwQjtBQUU1Q3ZCLGNBQU9PLFNBQVA7QUFDQVMsY0FBT0MsTUFBUCxDQUFlLGNBQWYsRUFBZ0NDLElBQWhDLENBQXNDLFVBQVNDLENBQVQsRUFBWTtBQUNqRHZCLGlCQUFTdUIsRUFBRUssTUFBWDtBQUNBLFlBQUlDLE1BQU0sRUFBRTdCLFFBQVF1QixFQUFFSyxNQUFaLEVBQW9CeEIsTUFBTU8sU0FBMUIsRUFBVjs7QUFFQSxZQUFJUSxTQUFKLEVBQ0NkLE9BQU8sSUFBSWMsU0FBSixDQUFlVSxHQUFmLENBQVA7O0FBRURILGdCQUFTRyxHQUFUO0FBQ0EsUUFSRCxFQVFHQyxLQVJILENBUVUsVUFBU0MsQ0FBVCxFQUFZO0FBQ3JCSixlQUFPSSxDQUFQO0FBQ0EsUUFWRDtBQWVELE9BbEJNLENBQVA7QUFtQkE7Ozt5QkFNdUI7QUFDdkIsYUFBTztBQUNOQyxZQUFLO0FBQ0pDLGNBQU1DLE1BREY7QUFFSkMsZUFBTyxpQkFBVztBQUFFLGdCQUFPO0FBQzFCL0IsZ0JBQU1BLElBRG9CO0FBRTFCSixrQkFBUUEsTUFGa0I7QUFHMUJDLGVBQUtBO0FBSHFCLFVBQVA7QUFJbEI7QUFORSxRQURDOztBQVVOSSxhQUFNO0FBQ0w0QixjQUFNQyxNQUREO0FBRUxDLGVBQU8saUJBQVc7QUFBRSxnQkFBTzlCLElBQVA7QUFBYztBQUY3QjtBQVZBLE9BQVA7QUFlQTs7O3lCQWNpQjtBQUNqQixhQUFPRCxJQUFQO0FBQ0E7Ozt5QkFFbUI7QUFDbkIsYUFBT0osTUFBUDtBQUNBOzs7eUJBRWdCO0FBQ2hCLGFBQU9DLEdBQVA7QUFDQTs7Ozs7Ozs7QUFLRkssTUFBR0csTUFBSCxDQUFVQyxJQUFWLENBQWVPLFVBQWYsR0FBNEJBLFdBQVdtQixTQUF2QyIsImZpbGUiOiJBcHBDb250ZXh0LmpzIiwic291cmNlc0NvbnRlbnQiOlsiLy8gU2luZ2xldG9uL2luc3RhbmNlIGRhdGEgZXhwb3NlZCBieSB0aGlzIGNsYXNzXG5sZXQgbGFiZWxzID0ge30sXG5cdFx0b3JnID0geyBwcmVmaXg6ICcnIH0sXG5cdFx0bWQgPSB7fSxcblx0XHR1c2VyID0ge30sXG5cdFx0aTE4biA9IHt9OyAgLy8gaW5zdGFuY2Ugb2YgSTE4bi5qcywgd2hpY2ggd2UgY2FuJ3QgaW1wb3J0IG5vcm1hbGx5IGR1ZSB0byBjaXJjdWxhciBkZXBlbmRlbmN5XG5cbmxldCBzYiA9IHdpbmRvdyA/IHdpbmRvdy5zYiB8fCB7fSA6IHt9O1xuc2IudWkgPSBzYi51aSB8fCB7fTtcbnNiLmNvbW1vbiA9IHNiLmNvbW1vbiB8fCB7fTtcbnNiLmNvbW1vbi5jb3JlID0gc2IuY29tbW9uLmNvcmUgfHwge307XG53aW5kb3cuc2IgPSBzYjtcblxubGV0IGxvY2FsVXNlciA9IHsgLy8gZGVmYXVsdCB2YWx1ZXNcblx0bGFuZzogJ2VuJyxcblx0bG9jYWxlOiAnZW4tVVMnLFxuXHRpZDogJ3VzZXJfMTIzNDU2Nzg5Jyxcblx0ZnVsbG5hbWU6ICdKb2UgVXNlcicsXG5cdHVzZXJuYW1lOiAnam9lQHVzZXIuY29tJ1xufTtcblxuLyoqXG4gKiBBIFwiY29udGV4dFwiIGNsYXNzIGZvciB0aGUgZW50aXJlIEFwcGxpY2F0aW9uLiAgSXQga25vd3MgaG93IHRvIGluaXRpYWxpemUvZ2V0IGFsbCB0aGUgY29tbW9uIHN0dWZmXG4gKiB0aGF0IGFueSBwYWdlIG9mIHRoZSBhcHBsaWNhdGlvbiBtaWdodCBuZWVkLiAgVGhpcyBpbmNsdWRlczpcbiAqXG4gKiBVc2VyIHNldHRpbmdzIChsYW5ndWFnZSwgbG9jYWxlLCB0aW1lem9uZSwgZnVsbG5hbWUsIGVtYWlsLCBldGMpXG4gKiBMb2NhbGl6ZWQgbGFiZWxzXG4gKiBPcmcgc2V0dGluZ3NcbiAqIE9yZyBNZXRhZGF0YVxuICogVUkgVGhlbWVzXG4gKlxuICogSXQgZXhwb3NlcyB0aGVzZSBhcyBib3RoIHN0YXRpYyBhbmQgaW5zdGFuY2UgcHJvcGVydGllcyBzbyB0aGF0IHJlZ3VsYXIgamF2YXNjcmlwdCBjYW4gcmVmZXJlbmNlXG4gKiBpbiBlaXRoZXIgd2F5LCBhbmQgd2UgY2FuIGFsc28gdXNlIGNsYXNzIGluaGVyaXRlbmNlIHNvIFBvbHltZXIgcHJvcGVydGllcyBjYW4gYmUgZGF0YSBib3VuZC5cbiAqL1xuZXhwb3J0IGNsYXNzIEFwcENvbnRleHQge1xuXG5cdC8qKlxuXHQgKiBJbml0aWFsaXplIHRoZSBhcHBsaWNhdGlvbiBjb250ZXh0IGRhdGEuICBUaGlzIG5lZWRzIHRvIGJlIGNhbGxlZCAoYXQgbGVhc3Qgb25jZSkgYmVmb3JlXG5cdCAqIG90aGVyIG1ldGhvZHMgYXJlIHVzZWQgdG8gYWNjZXNzIGluc3RhbmNlIGRhdGEuXG5cdCAqIEBwYXJhbSAge2Jvb2xlYW59IHVzZUxvY2FsIGxvYWQgdGhlIFwibG9jYWxob3N0XCIgYXBwIGRhdGEgaW5zdGVhZCBvZiBnb2luZyB0byB0aGUgc2VydmVyXG5cdCAqIEByZXR1cm4ge1Byb21pc2V9XG5cdCAqL1xuXHRzdGF0aWMgaW5pdCggdXNlTG9jYWwgKSB7XG5cdFx0bGV0IGkxOG5DbGFzcyA9IG51bGw7XG5cdFx0U3lzdGVtLmltcG9ydCggJ2NvbW1vbi9jb3JlL3NiLWkxOG4vSTE4bi5qcycgKS50aGVuKCBmdW5jdGlvbihtKSB7XG5cdFx0XHRpMThuQ2xhc3MgPSBtLkkxOG47ICAvLyBub3QgZ29vZCBhc3luYyBwcmFjdGljZSBidXQgdGhpcyBzaG91bGQgYWx3YXlzIGZpbmlzaCBmaXJzdCBiZWZvcmUgbmV4dCBpbXBvcnRcblx0XHR9KTtcblxuXHRcdHJldHVybiBuZXcgUHJvbWlzZSggZnVuY3Rpb24ocmVzb2x2ZSwgcmVqZWN0KSB7XG5cdFx0XHQvLyBpZiggdXNlTG9jYWwgKSB7XG5cdFx0XHRcdHVzZXIgPSBsb2NhbFVzZXI7XG5cdFx0XHRcdFN5c3RlbS5pbXBvcnQoICdsYWJlbHNfZW4uanMnICkudGhlbiggZnVuY3Rpb24obSkge1xuXHRcdFx0XHRcdGxhYmVscyA9IG0uTEFCRUxTO1xuXHRcdFx0XHRcdGxldCByZXQgPSB7IGxhYmVsczogbS5MQUJFTFMsIHVzZXI6IGxvY2FsVXNlciB9O1xuXG5cdFx0XHRcdFx0aWYoIGkxOG5DbGFzcyApXG5cdFx0XHRcdFx0XHRpMThuID0gbmV3IGkxOG5DbGFzcyggcmV0ICk7ICAvLyBjcmVhdGUgc2luZ2xldG9uIGluc3RhbmNlXG5cblx0XHRcdFx0XHRyZXNvbHZlKCByZXQgKTtcblx0XHRcdFx0fSkuY2F0Y2goIGZ1bmN0aW9uKGUpIHtcblx0XHRcdFx0XHRyZWplY3QoZSk7XG5cdFx0XHRcdH0pO1xuXHRcdFx0Ly8gfVxuXHRcdFx0Ly8gZWxzZSB7XG5cdFx0XHRcdC8vIHJlc29sdmUoKTsgLy8gVE9ET1xuXHRcdFx0Ly8gfVxuXHRcdH0pO1xuXHR9XG5cblx0LyoqXG5cdCAqIFRoZSBwcm9wZXJ0aWVzIG9iamVjdCwgaW4gUG9seW1lciBmb3JtYXQsIHRoYXQgY2FuIGJlIGluaGVyaXRlZCBieSBvdGhlciBjb21wb25lbnRzL2NsYXNzZXMuXG5cdCAqIEByZXR1cm4ge09iamVjdH0gYSBjb21tb24gc2V0IG9mIHByb3BlcnRpZXMgZm9yIGFsbCBjb21wb25lbnRzL2NsYXNzZXMgaW4gb3VyIGFwcC5cblx0ICovXG5cdHN0YXRpYyBnZXQgcHJvcGVydGllcygpIHtcblx0XHRyZXR1cm4ge1xuXHRcdFx0YXBwOiB7XG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uKCkgeyByZXR1cm4ge1xuXHRcdFx0XHRcdHVzZXI6IHVzZXIsXG5cdFx0XHRcdFx0bGFiZWxzOiBsYWJlbHMsXG5cdFx0XHRcdFx0b3JnOiBvcmdcblx0XHRcdFx0fX1cblx0XHRcdH0sXG5cdFx0XHQvKiogQSBpbnN0YW5jZSBvZiBzYi1pMThuIGluIHB1cmUgRVM2IGNsYXNzIGZvcm0sIGZvciBkaXJlY3QgcHJvZ3JhbW1hdGljIGFjY2VzcyBpbiBhbnkgaW5oZXJpdGVkIGNvbXBvbmVudCAqL1xuXHRcdFx0aTE4bjoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIGkxOG47IH1cblx0XHRcdH1cblx0XHR9O1xuXHR9XG5cblx0Z2V0IHVzZXIoKSB7XG5cdFx0cmV0dXJuIHVzZXI7XG5cdH1cblxuXHRnZXQgbGFiZWxzKCkge1xuXHRcdHJldHVybiBsYWJlbHM7XG5cdH1cblxuXHRnZXQgb3JnKCkge1xuXHRcdHJldHVybiBvcmc7XG5cdH1cblxuXHRzdGF0aWMgZ2V0IHVzZXIoKSB7XG5cdFx0cmV0dXJuIHVzZXI7XG5cdH1cblxuXHRzdGF0aWMgZ2V0IGxhYmVscygpIHtcblx0XHRyZXR1cm4gbGFiZWxzO1xuXHR9XG5cblx0c3RhdGljIGdldCBvcmcoKSB7XG5cdFx0cmV0dXJuIG9yZztcblx0fVxufVxuXG4vLyBleHBvc2UgYW4gaW5zdGFuY2Ugb2YgQXBwQ29udGV4dCBhcyBnbG9iYWwgb2JqZWN0IHNvIGl0IGNhbiBiZSB1c2VkIGFzIGEgUG9seW1lciBiZWhhdmlvcnNcbi8vIFBvbHltZXIgZG9lc24ndCBjcmVhdGUgaW5zdGFuY2VzIG9mIEVTNiBjbGFzcywganVzdCByZWd1bGFyIEVTNSBvYmplY3RzIDooXG5zYi5jb21tb24uY29yZS5BcHBDb250ZXh0ID0gQXBwQ29udGV4dC5wcm90b3R5cGU7XG4iXX0=
'use strict';

System.register('common/core/Page.js', ['common/core/sb-page-container/PageContainer.js', 'common/core/AppContext.js'], function (_export, _context) {
	var PageContainer, AppContext, _createClass, sb, SIZE_S, SIZE_M, SIZE_L, SIZE_XL, Page;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_commonCoreSbPageContainerPageContainerJs) {
			PageContainer = _commonCoreSbPageContainerPageContainerJs.PageContainer;
		}, function (_commonCoreAppContextJs) {
			AppContext = _commonCoreAppContextJs.AppContext;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			sb = window ? window.sb || {} : {};

			sb.ui = sb.ui || {};
			sb.common = sb.common || {};
			sb.common.core = sb.common.core || {};
			window.sb = sb;

			_export('SIZE_S', SIZE_S = 'S');

			_export('SIZE_S', SIZE_S);

			_export('SIZE_M', SIZE_M = 'M');

			_export('SIZE_M', SIZE_M);

			_export('SIZE_L', SIZE_L = 'L');

			_export('SIZE_L', SIZE_L);

			_export('SIZE_XL', SIZE_XL = 'XL');

			_export('SIZE_XL', SIZE_XL);

			_export('Page', Page = function (_AppContext) {
				_inherits(Page, _AppContext);

				function Page() {
					_classCallCheck(this, Page);

					return _possibleConstructorReturn(this, (Page.__proto__ || Object.getPrototypeOf(Page)).apply(this, arguments));
				}

				_createClass(Page, [{
					key: 'ready',
					value: function ready() {
						this.handleViewportChangeEvent();
					}
				}, {
					key: 'nav',
					value: function nav(url, queryParams, pathParams, newWin) {
						var u = url,
						    pLen = pathParams ? pathParams.length : 0,
						    pKeys = queryParams ? Object.keys(queryParams) : [],
						    kLen = pKeys.length;

						if (pathParams) {
							for (var i = 0; i < pLen; i++) {
								if (pathParams[i] != null && pathParams[i] != undefined && pathParams[i] != '') u += '/' + encodeURIComponent(pathParams[i]);
							}
						}

						for (var _i = 0; _i < kLen; _i++) {
							u += _i == 0 ? '?' : '&';
							u += encodeURIComponent(pKeys[_i]) + '=' + encodeURIComponent(queryParams[pKeys[_i]]);
						}

						window.location.hash = u;
					}
				}, {
					key: 'handleViewportChangeEvent',
					value: function handleViewportChangeEvent() {
						var con = document.querySelector('#' + PageContainer.domId);
						if (!con) return;

						con.addEventListener('sb-viewport-changed', function (e) {
							this.fire('sb-page-viewport-changed', { viewport: e.detail.viewport });
						}.bind(this));
					}
				}], [{
					key: 'properties',
					get: function get() {
						return Polymer.Base.extend({
							ctx: {
								type: Object,
								value: function value() {
									return {};
								}
							},
							viewport: Object
						}, AppContext.properties);
					}
				}]);

				return Page;
			}(AppContext));

			_export('Page', Page);

			sb.common.core.Page = Page.prototype;
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlBhZ2UuanMiXSwibmFtZXMiOlsiUGFnZUNvbnRhaW5lciIsIkFwcENvbnRleHQiLCJzYiIsIndpbmRvdyIsInVpIiwiY29tbW9uIiwiY29yZSIsIlNJWkVfUyIsIlNJWkVfTSIsIlNJWkVfTCIsIlNJWkVfWEwiLCJQYWdlIiwiaGFuZGxlVmlld3BvcnRDaGFuZ2VFdmVudCIsInVybCIsInF1ZXJ5UGFyYW1zIiwicGF0aFBhcmFtcyIsIm5ld1dpbiIsInUiLCJwTGVuIiwibGVuZ3RoIiwicEtleXMiLCJPYmplY3QiLCJrZXlzIiwia0xlbiIsImkiLCJ1bmRlZmluZWQiLCJlbmNvZGVVUklDb21wb25lbnQiLCJsb2NhdGlvbiIsImhhc2giLCJjb24iLCJkb2N1bWVudCIsInF1ZXJ5U2VsZWN0b3IiLCJkb21JZCIsImFkZEV2ZW50TGlzdGVuZXIiLCJlIiwiZmlyZSIsInZpZXdwb3J0IiwiZGV0YWlsIiwiYmluZCIsIlBvbHltZXIiLCJCYXNlIiwiZXh0ZW5kIiwiY3R4IiwidHlwZSIsInZhbHVlIiwicHJvcGVydGllcyIsInByb3RvdHlwZSJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFRQSxnQiw2Q0FBQUEsYTs7QUFDQUMsYSwyQkFBQUEsVTs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBRUpDLEssR0FBS0MsU0FBU0EsT0FBT0QsRUFBUCxJQUFhLEVBQXRCLEdBQTJCLEU7O0FBQ3BDQSxNQUFHRSxFQUFILEdBQVFGLEdBQUdFLEVBQUgsSUFBUyxFQUFqQjtBQUNBRixNQUFHRyxNQUFILEdBQVlILEdBQUdHLE1BQUgsSUFBYSxFQUF6QjtBQUNBSCxNQUFHRyxNQUFILENBQVVDLElBQVYsR0FBaUJKLEdBQUdHLE1BQUgsQ0FBVUMsSUFBVixJQUFrQixFQUFuQztBQUNBSCxVQUFPRCxFQUFQLEdBQVlBLEVBQVo7O3FCQUdhSyxNLEdBQVMsRzs7OztxQkFDVEMsTSxHQUFTLEc7Ozs7cUJBQ1RDLE0sR0FBUyxHOzs7O3NCQUNUQyxPLEdBQVUsSTs7OzttQkFLVkMsSTs7Ozs7Ozs7Ozs7NkJBRUo7QUFDUCxXQUFLQyx5QkFBTDtBQUNBOzs7eUJBVUlDLEcsRUFBS0MsVyxFQUFhQyxVLEVBQVlDLE0sRUFBUztBQUMzQyxVQUFJQyxJQUFJSixHQUFSO0FBQUEsVUFDQ0ssT0FBT0gsYUFBYUEsV0FBV0ksTUFBeEIsR0FBaUMsQ0FEekM7QUFBQSxVQUVDQyxRQUFRTixjQUFjTyxPQUFPQyxJQUFQLENBQWFSLFdBQWIsQ0FBZCxHQUEyQyxFQUZwRDtBQUFBLFVBR0NTLE9BQU9ILE1BQU1ELE1BSGQ7O0FBS0EsVUFBSUosVUFBSixFQUFpQjtBQUNoQixZQUFNLElBQUlTLElBQUksQ0FBZCxFQUFpQkEsSUFBSU4sSUFBckIsRUFBMkJNLEdBQTNCLEVBQWlDO0FBQ2hDLFlBQUtULFdBQVlTLENBQVosS0FBbUIsSUFBbkIsSUFBMkJULFdBQVlTLENBQVosS0FBbUJDLFNBQTlDLElBQTJEVixXQUFZUyxDQUFaLEtBQW1CLEVBQW5GLEVBQ0NQLEtBQUssTUFBTVMsbUJBQW9CWCxXQUFZUyxDQUFaLENBQXBCLENBQVg7QUFDRDtBQUNEOztBQUVELFdBQUssSUFBSUEsS0FBSSxDQUFiLEVBQWdCQSxLQUFJRCxJQUFwQixFQUEwQkMsSUFBMUIsRUFBZ0M7QUFDL0JQLFlBQUtPLE1BQUssQ0FBTCxHQUFTLEdBQVQsR0FBZSxHQUFwQjtBQUNBUCxZQUFLUyxtQkFBb0JOLE1BQU9JLEVBQVAsQ0FBcEIsSUFBbUMsR0FBbkMsR0FBeUNFLG1CQUFvQlosWUFBYU0sTUFBT0ksRUFBUCxDQUFiLENBQXBCLENBQTlDO0FBQ0E7O0FBRURyQixhQUFPd0IsUUFBUCxDQUFnQkMsSUFBaEIsR0FBdUJYLENBQXZCO0FBQ0E7OztpREFFMkI7QUFDM0IsVUFBSVksTUFBTUMsU0FBU0MsYUFBVCxDQUF3QixNQUFNL0IsY0FBY2dDLEtBQTVDLENBQVY7QUFDQSxVQUFHLENBQUNILEdBQUosRUFDQzs7QUFFREEsVUFBSUksZ0JBQUosQ0FBc0IscUJBQXRCLEVBQTZDLFVBQVNDLENBQVQsRUFBWTtBQUV4RCxZQUFLQyxJQUFMLENBQVUsMEJBQVYsRUFBc0MsRUFBQ0MsVUFBVUYsRUFBRUcsTUFBRixDQUFTRCxRQUFwQixFQUF0QztBQUNBLE9BSDRDLENBRzNDRSxJQUgyQyxDQUd0QyxJQUhzQyxDQUE3QztBQUlBOzs7eUJBTXVCO0FBQ3ZCLGFBQU9DLFFBQVFDLElBQVIsQ0FBYUMsTUFBYixDQUFvQjtBQUMxQkMsWUFBSztBQUNKQyxjQUFNdEIsTUFERjtBQUVKdUIsZUFBTyxpQkFBVztBQUFFLGdCQUFPLEVBQVA7QUFBVztBQUYzQixRQURxQjtBQUsxQlIsaUJBQVVmO0FBTGdCLE9BQXBCLEVBTUpwQixXQUFXNEMsVUFOUCxDQUFQO0FBT0E7Ozs7S0ExRHdCNUMsVTs7OztBQStEMUJDLE1BQUdHLE1BQUgsQ0FBVUMsSUFBVixDQUFlSyxJQUFmLEdBQXNCQSxLQUFLbUMsU0FBM0IiLCJmaWxlIjoiUGFnZS5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7UGFnZUNvbnRhaW5lcn0gZnJvbSAnY29tbW9uL2NvcmUvc2ItcGFnZS1jb250YWluZXIvUGFnZUNvbnRhaW5lci5qcyc7XG5pbXBvcnQge0FwcENvbnRleHR9IGZyb20gJ2NvbW1vbi9jb3JlL0FwcENvbnRleHQuanMnO1xuXG52YXIgc2IgPSB3aW5kb3cgPyB3aW5kb3cuc2IgfHwge30gOiB7fTtcbnNiLnVpID0gc2IudWkgfHwge307XG5zYi5jb21tb24gPSBzYi5jb21tb24gfHwge307XG5zYi5jb21tb24uY29yZSA9IHNiLmNvbW1vbi5jb3JlIHx8IHt9O1xud2luZG93LnNiID0gc2I7XG5cbi8vIFNjcmVlbi1pc2ggLyB2aWV3cG9ydCBzaXplc1xuZXhwb3J0IGNvbnN0IFNJWkVfUyA9ICdTJztcbmV4cG9ydCBjb25zdCBTSVpFX00gPSAnTSc7XG5leHBvcnQgY29uc3QgU0laRV9MID0gJ0wnO1xuZXhwb3J0IGNvbnN0IFNJWkVfWEwgPSAnWEwnO1xuXG4vKipcbiAqIFRoZSBjb21tb24gYmFzZSBjbGFzcyBmb3IgYWxsIFBhZ2Ugb2JqZWN0cy4gIEEgUGFnZSBpcyBhIHBoeXNpY2FsIGxhbmRpbmcgcG9pbnQgb2YgY29udGVudCB3aGVuIGEgdXNlciBuYXZpZ2F0ZXMgaW4gdGhlIGFwcC5cbiAqL1xuZXhwb3J0IGNsYXNzIFBhZ2UgZXh0ZW5kcyBBcHBDb250ZXh0IHtcblxuXHRyZWFkeSgpIHtcblx0XHR0aGlzLmhhbmRsZVZpZXdwb3J0Q2hhbmdlRXZlbnQoKTtcblx0fVxuXG5cdC8qKlxuXHQgKiBBIG5hdmlnYXRlIGZ1bmN0aW9uIGZvciBpbXBlcmF0aXZlIG5hZ2l2Z2F0aW9uIGV2ZW50cyBcImluc2lkZVwiIG91ciBhcHBsaWNhdGlvbi5cblx0ICogQHBhcmFtICB7U3RyaW5nfSB1cmwgICAgICAgICB0aGUgcmVsYXRpdmUgVVJMIHRvIG5hdmlnYXRlIHRvXG5cdCAqIEBwYXJhbSAge09iamVjdH0gcXVlcnlQYXJhbXMgYSBtYXAgb2YgcXVlcnkgcGFyYW1ldGVycyB0byBhcHBlbmQgdG8gdGhlIFVSTFxuXHQgKiBAcGFyYW0gIHtPYmplY3R9IHBhdGhQYXJhbXMgIGFycmF5IG9mIHBhdGggc3RyaW5ncyB0byBhcHBlbmQgdG8gdGhlIFVSTFxuXHQgKiBAcGFyYW0gIHtib29sZWFufSBuZXdXaW4gICAgIHRydWUgdG8gb3BlbiBpbiBhIG5ldyBicm93c2VyIHdpbmRvd1xuXHQgKiBAcmV0dXJuIHtudWxsfVxuXHQgKi9cblx0bmF2KCB1cmwsIHF1ZXJ5UGFyYW1zLCBwYXRoUGFyYW1zLCBuZXdXaW4gKSB7XG5cdFx0bGV0IHUgPSB1cmwsXG5cdFx0XHRwTGVuID0gcGF0aFBhcmFtcyA/IHBhdGhQYXJhbXMubGVuZ3RoIDogMCxcblx0XHRcdHBLZXlzID0gcXVlcnlQYXJhbXMgPyBPYmplY3Qua2V5cyggcXVlcnlQYXJhbXMgKSA6IFtdLFxuXHRcdFx0a0xlbiA9IHBLZXlzLmxlbmd0aDtcblxuXHRcdGlmKCBwYXRoUGFyYW1zICkge1xuXHRcdFx0Zm9yICggdmFyIGkgPSAwOyBpIDwgcExlbjsgaSsrICkge1xuXHRcdFx0XHRpZiAoIHBhdGhQYXJhbXNbIGkgXSAhPSBudWxsICYmIHBhdGhQYXJhbXNbIGkgXSAhPSB1bmRlZmluZWQgJiYgcGF0aFBhcmFtc1sgaSBdICE9ICcnIClcblx0XHRcdFx0XHR1ICs9ICcvJyArIGVuY29kZVVSSUNvbXBvbmVudCggcGF0aFBhcmFtc1sgaSBdICk7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0Zm9yKCBsZXQgaSA9IDA7IGkgPCBrTGVuOyBpKysgKSB7XG5cdFx0XHR1ICs9IGkgPT0gMCA/ICc/JyA6ICcmJztcblx0XHRcdHUgKz0gZW5jb2RlVVJJQ29tcG9uZW50KCBwS2V5c1sgaSBdICkgKyAnPScgKyBlbmNvZGVVUklDb21wb25lbnQoIHF1ZXJ5UGFyYW1zWyBwS2V5c1sgaSBdIF0gKTtcblx0XHR9XG5cblx0XHR3aW5kb3cubG9jYXRpb24uaGFzaCA9IHU7XG5cdH1cblxuXHRoYW5kbGVWaWV3cG9ydENoYW5nZUV2ZW50KCkge1xuXHRcdHZhciBjb24gPSBkb2N1bWVudC5xdWVyeVNlbGVjdG9yKCAnIycgKyBQYWdlQ29udGFpbmVyLmRvbUlkICk7XG5cdFx0aWYoIWNvbilcblx0XHRcdHJldHVybjtcblxuXHRcdGNvbi5hZGRFdmVudExpc3RlbmVyKCAnc2Itdmlld3BvcnQtY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcblx0XHRcdC8vIGZpcmUgdGhpcyBldmVudCBhZ2FpbnN0IHRoZSBwYWdlXG5cdFx0XHR0aGlzLmZpcmUoJ3NiLXBhZ2Utdmlld3BvcnQtY2hhbmdlZCcsIHt2aWV3cG9ydDogZS5kZXRhaWwudmlld3BvcnR9KTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cblx0LyoqXG5cdCAqIFRoZSBiYXNlIHByb3BlcnRpZXMgb2JqZWN0LCBpbiBQb2x5bWVyIGZvcm1hdCwgdGhhdCBhbGwgUGFnZXMgaGF2ZSBpbiBjb21tb25cblx0ICogQHJldHVybiB7T2JqZWN0fSBhIGNvbW1vbiBzZXQgb2YgcHJvcGVydGllcyBmb3IgYWxsIHBhZ2VzXG5cdCAqL1xuXHRzdGF0aWMgZ2V0IHByb3BlcnRpZXMoKSB7XG5cdFx0cmV0dXJuIFBvbHltZXIuQmFzZS5leHRlbmQoe1xuXHRcdFx0Y3R4OiB7XG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uKCkgeyByZXR1cm4ge30gfVxuXHRcdFx0fSxcblx0XHRcdHZpZXdwb3J0OiBPYmplY3Rcblx0XHR9LCBBcHBDb250ZXh0LnByb3BlcnRpZXMgKTtcblx0fVxufVxuXG4vLyBleHBvc2UgYW4gaW5zdGFuY2Ugb2YgUGFnZSBhcyBnbG9iYWwgb2JqZWN0IHNvIGl0IGNhbiBiZSB1c2VkIGFzIGEgUG9seW1lciBiZWhhdmlvcnNcbi8vIFBvbHltZXIgZG9lc24ndCBjcmVhdGUgaW5zdGFuY2VzIG9mIEVTNiBjbGFzcywganVzdCByZWd1bGFyIEVTNSBvYmplY3RzIDooXG5zYi5jb21tb24uY29yZS5QYWdlID0gUGFnZS5wcm90b3R5cGU7XG4iXX0=
"use strict";

System.register("common/l10n/labels_en.js", [], function (_export, _context) {
  var LABELS;
  return {
    setters: [],
    execute: function () {
      _export("LABELS", LABELS = { "Yes": "Yes", "Delete": "Delete", "New": "New", "Recently Viewed": "Recently Viewed", "Product Selection": "Product Selection" });

      _export("LABELS", LABELS);
    }
  };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImxhYmVsc19lbi5qcyJdLCJuYW1lcyI6WyJMQUJFTFMiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7d0JBQWFBLE0sR0FBUyxFQUFDLE9BQU0sS0FBUCxFQUFhLFVBQVMsUUFBdEIsRUFBK0IsT0FBTSxLQUFyQyxFQUEyQyxtQkFBa0IsaUJBQTdELEVBQStFLHFCQUFvQixtQkFBbkcsRSIsImZpbGUiOiJsYWJlbHNfZW4uanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY29uc3QgTEFCRUxTID0ge1wiWWVzXCI6XCJZZXNcIixcIkRlbGV0ZVwiOlwiRGVsZXRlXCIsXCJOZXdcIjpcIk5ld1wiLFwiUmVjZW50bHkgVmlld2VkXCI6XCJSZWNlbnRseSBWaWV3ZWRcIixcIlByb2R1Y3QgU2VsZWN0aW9uXCI6XCJQcm9kdWN0IFNlbGVjdGlvblwifTsiXX0=
'use strict';

System.register('common/oauth/OAuth.js', ['common/oauth/oauth.local.js'], function (_export, _context) {
    var OAUTH_KEY, OAUTH_SECRET, _createClass, oauth2, OAuth;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [function (_commonOauthOauthLocalJs) {
            OAUTH_KEY = _commonOauthOauthLocalJs.OAUTH_KEY;
            OAUTH_SECRET = _commonOauthOauthLocalJs.OAUTH_SECRET;
        }],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            oauth2 = {
                clientId: OAUTH_KEY,
                clientSecret: OAUTH_SECRET,
                redirectUri: 'http://localhost:' + location.port + '/common/oauth/callback',
                proxyUrl: 'https://brick-rest-proxy.herokuapp.com/proxy/'
            };

            _export('OAuth', OAuth = function () {
                function OAuth() {
                    _classCallCheck(this, OAuth);

                    if (!oauth2.clientId || !oauth2.clientSecret) throw Error(this._getNoOAuthClientKeyMessage());

                    var storeTokens = jsforce.browser.Client.prototype._storeTokens.bind(jsforce.browser);
                    jsforce.browser.Client.prototype._storeTokens = function (params) {
                        storeTokens(params);
                        localStorage.setItem(this._prefix + '_refresh_token', params.refresh_token);
                    }.bind(jsforce.browser);

                    var removeTokens = jsforce.browser.Client.prototype._removeTokens.bind(jsforce.browser);
                    jsforce.browser.Client.prototype._removeTokens = function () {
                        removeTokens();
                        localStorage.removeItem(this._prefix + '_refresh_token');
                    }.bind(jsforce.browser);

                    var getTokens = jsforce.browser.Client.prototype._getTokens.bind(jsforce.browser);
                    jsforce.browser.Client.prototype._getTokens = function () {
                        var tokens = getTokens();
                        if (tokens) tokens.refreshToken = localStorage.getItem(this._prefix + '_refresh_token');
                        return tokens;
                    }.bind(jsforce.browser);

                    var isLoggedIn = jsforce.browser.Client.prototype.isLoggedIn.bind(jsforce.browser);
                    jsforce.browser.Client.prototype.isLoggedIn = function () {
                        if (!isLoggedIn()) return false;
                        return this.connection.refreshToken;
                    }.bind(jsforce.browser);

                    (function () {
                        localStorage.setItem(this._prefix + '_issued_at', new Date().getTime());
                        document.cookie = this._prefix + '_loggedin=true;';
                    }).bind(jsforce.browser)();

                    jsforce.browser.init(oauth2);
                }

                _createClass(OAuth, [{
                    key: 'login',
                    value: function login() {
                        jsforce.browser.login();
                    }
                }, {
                    key: 'getConnection',
                    value: function getConnection() {
                        if (!jsforce.browser.isLoggedIn()) return Promise.reject('Please login before establishing a connection at http://localhost:' + location.port + '/common/oauth');

                        return new Promise(function (resolve, reject) {
                            jsforce.browser.once('connect', function (conn) {
                                var createRequestParams = conn.apex._createRequestParams.bind(conn.apex);
                                conn.apex._createRequestParams = function (method, path, body) {
                                    var params = createRequestParams(method, path, body);
                                    params.headers = params.headers || {};
                                    params.headers['X-Authorization'] = conn.refreshToken;
                                    return params;
                                };
                                resolve(conn);
                            });
                            jsforce.browser.init(oauth2);
                        });
                    }
                }, {
                    key: '_getNoOAuthClientKeyMessage',
                    value: function _getNoOAuthClientKeyMessage() {
                        return 'Need to add a \'.env.json\' file in the CPQ dir whose contents contains the Consumer Key and Consumer Secret of the Steelbrick CPQ Connected App, and then execute a gulp compile.\n' + '{"oauth_key": "<Consumer Key>, "oauth_secret": "<Consumer Secret>"}';
                    }
                }, {
                    key: 'accessToken',
                    set: function set(accessToken) {
                        localStorage.setItem(jsforce.browser._prefix + '_access_token', accessToken);
                    }
                }, {
                    key: 'tokens',
                    get: function get() {
                        return jsforce.browser._getTokens();
                    },
                    set: function set(tokens) {
                        jsforce.browser._storeTokens(tokens);
                    }
                }]);

                return OAuth;
            }());

            _export('OAuth', OAuth);
        }
    };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIk9BdXRoLmpzIl0sIm5hbWVzIjpbIk9BVVRIX0tFWSIsIk9BVVRIX1NFQ1JFVCIsIm9hdXRoMiIsImNsaWVudElkIiwiY2xpZW50U2VjcmV0IiwicmVkaXJlY3RVcmkiLCJsb2NhdGlvbiIsInBvcnQiLCJwcm94eVVybCIsIk9BdXRoIiwiRXJyb3IiLCJfZ2V0Tm9PQXV0aENsaWVudEtleU1lc3NhZ2UiLCJzdG9yZVRva2VucyIsImpzZm9yY2UiLCJicm93c2VyIiwiQ2xpZW50IiwicHJvdG90eXBlIiwiX3N0b3JlVG9rZW5zIiwiYmluZCIsInBhcmFtcyIsImxvY2FsU3RvcmFnZSIsInNldEl0ZW0iLCJfcHJlZml4IiwicmVmcmVzaF90b2tlbiIsInJlbW92ZVRva2VucyIsIl9yZW1vdmVUb2tlbnMiLCJyZW1vdmVJdGVtIiwiZ2V0VG9rZW5zIiwiX2dldFRva2VucyIsInRva2VucyIsInJlZnJlc2hUb2tlbiIsImdldEl0ZW0iLCJpc0xvZ2dlZEluIiwiY29ubmVjdGlvbiIsIkRhdGUiLCJnZXRUaW1lIiwiZG9jdW1lbnQiLCJjb29raWUiLCJpbml0IiwibG9naW4iLCJQcm9taXNlIiwicmVqZWN0IiwicmVzb2x2ZSIsIm9uY2UiLCJjb25uIiwiY3JlYXRlUmVxdWVzdFBhcmFtcyIsImFwZXgiLCJfY3JlYXRlUmVxdWVzdFBhcmFtcyIsIm1ldGhvZCIsInBhdGgiLCJib2R5IiwiaGVhZGVycyIsImFjY2Vzc1Rva2VuIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7O0FBQVFBLHFCLDRCQUFBQSxTO0FBQ0FDLHdCLDRCQUFBQSxZOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFFQUMsa0IsR0FBUztBQUNUQywwQkFBV0gsU0FERjtBQUVUSSw4QkFBY0gsWUFGTDtBQUdUSSw2QkFBYSxzQkFBc0JDLFNBQVNDLElBQS9CLEdBQXNDLHdCQUgxQztBQUlUQywwQkFBVTtBQUpELGE7OzZCQU9KQyxLO0FBRVQsaUNBQWM7QUFBQTs7QUFDVix3QkFBRyxDQUFDUCxPQUFP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QyxPQUFSLENBQWdCNkIsSUFBaEIsQ0FBcUIsU0FBckIsRUFBZ0MsVUFBU0MsSUFBVCxFQUFlO0FBQzVDLG9DQUFJQyxzQkFBc0JELEtBQUtFLElBQUwsQ0FBVUMsb0JBQVYsQ0FBK0I3QixJQUEvQixDQUFvQzBCLEtBQUtFLElBQXpDLENBQTFCO0FBQ0FGLHFDQUFLRSxJQUFMLENBQVVDLG9CQUFWLEdBQWlDLFVBQVNDLE1BQVQsRUFBaUJDLElBQWpCLEVBQXVCQyxJQUF2QixFQUE2QjtBQUN6RCx3Q0FBSS9CLFNBQVMwQixvQkFBb0JHLE1BQXBCLEVBQTRCQyxJQUE1QixFQUFrQ0MsSUFBbEMsQ0FBYjtBQUNBL0IsMkNBQU9nQyxPQUFQLEdBQWlCaEMsT0FBT2dDLE9BQVAsSUFBa0IsRUFBbkM7QUFDQWhDLDJDQUFPZ0MsT0FBUCxDQUFlLGlCQUFmLElBQW9DUCxLQUFLZCxZQUF6QztBQUNBLDJDQUFPWCxNQUFQO0FBQ0osaUNBTEQ7QUFNQXVCLHdDQUFRRSxJQUFSO0FBQ0YsNkJBVEQ7QUFVQS9CLG9DQUFRQyxPQUFSLENBQWdCd0IsSUFBaEIsQ0FBcUJwQyxNQUFyQjtBQUNILHlCQVpNLENBQVA7QUFhSDs7O2tFQWM2QjtBQUMxQiwrQkFBTyx5TEFDQyxxRUFEUjtBQUVIOzs7c0NBZmVrRCxXLEVBQWE7QUFDekJoQyxxQ0FBYUMsT0FBYixDQUFxQlIsUUFBUUMsT0FBUixDQUFnQlEsT0FBaEIsR0FBMEIsZUFBL0MsRUFBZ0U4QixXQUFoRTtBQUNIOzs7d0NBRVk7QUFDVCwrQkFBT3ZDLFFBQVFDLE9BQVIsQ0FBZ0JjLFVBQWhCLEVBQVA7QUFDSCxxQjtzQ0FFVUMsTSxFQUFRO0FBQ2ZoQixnQ0FBUUMsT0FBUixDQUFnQkcsWUFBaEIsQ0FBNkJZLE1BQTdCO0FBQ0giLCJmaWxlIjoiT0F1dGguanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge09BVVRIX0tFWX0gZnJvbSAnY29tbW9uL29hdXRoL29hdXRoLmxvY2FsLmpzJztcbmltcG9ydCB7T0FVVEhfU0VDUkVUfSBmcm9tICdjb21tb24vb2F1dGgvb2F1dGgubG9jYWwuanMnO1xuXG4gICAgbGV0IG9hdXRoMiA9IHtcbiAgICAgICAgY2xpZW50SWQgOiBPQVVUSF9LRVksXG4gICAgICAgIGNsaWVudFNlY3JldDogT0FVVEhfU0VDUkVULFxuICAgICAgICByZWRpcmVjdFVyaTogJ2h0dHA6Ly9sb2NhbGhvc3Q6JyArIGxvY2F0aW9uLnBvcnQgKyAnL2NvbW1vbi9vYXV0aC9jYWxsYmFjaycsXG4gICAgICAgIHByb3h5VXJsOiAnaHR0cHM6Ly9icmljay1yZXN0LXByb3h5Lmhlcm9rdWFwcC5jb20vcHJveHkvJ1xuICAgIH07XG5cbmV4cG9ydCBjbGFzcyBPQXV0aCB7XG5cbiAgICBjb25zdHJ1Y3RvcigpIHtcbiAgICAgICAgaWYoIW9hdXRoMi5jbGllbnRJZCB8fCAhb2F1dGgyLmNsaWVudFNlY3JldClcbiAgICAgICAgICAgIHRocm93IEVycm9yKHRoaXMuX2dldE5vT0F1dGhDbGllbnRLZXlNZXNzYWdlKCkpO1xuXG4gICAgICAgIC8vIEJlbG93IHdlIG92ZXJyaWRlIGpzZm9yY2UuYnJvd3NlciBmdW5jdGlvbnMgYXJvdW5kIHRva2VuIG1hbmFnZW1lbnQgdG8gaW5jbHVkZSB0aGUgcmVmcmVzaCB0b2tlblxuICAgICAgICB2YXIgc3RvcmVUb2tlbnMgPSBqc2ZvcmNlLmJyb3dzZXIuQ2xpZW50LnByb3RvdHlwZS5fc3RvcmVUb2tlbnMuYmluZChqc2ZvcmNlLmJyb3dzZXIpO1xuICAgICAgICBqc2ZvcmNlLmJyb3dzZXIuQ2xpZW50LnByb3RvdHlwZS5fc3RvcmVUb2tlbnMgPSBmdW5jdGlvbihwYXJhbXMpIHtcbiAgICAgICAgICAgIHN0b3JlVG9rZW5zKHBhcmFtcyk7XG4gICAgICAgICAgICBsb2NhbFN0b3JhZ2Uuc2V0SXRlbSh0aGlzLl9wcmVmaXggKyAnX3JlZnJlc2hfdG9rZW4nLCBwYXJhbXMucmVmcmVzaF90b2tlbik7XG4gICAgICAgIH0uYmluZChqc2ZvcmNlLmJyb3dzZXIpO1xuXG4gICAgICAgIHZhciByZW1vdmVUb2tlbnMgPSBqc2ZvcmNlLmJyb3dzZXIuQ2xpZW50LnByb3RvdHlwZS5fcmVtb3ZlVG9rZW5zLmJpbmQoanNmb3JjZS5icm93c2VyKTtcbiAgICAgICAganNmb3JjZS5icm93c2VyLkNsaWVudC5wcm90b3R5cGUuX3JlbW92ZVRva2VucyA9IGZ1bmN0aW9uKCkge1xuICAgICAgICAgICAgcmVtb3ZlVG9rZW5zKCk7XG4gICAgICAgICAgICBsb2NhbFN0b3JhZ2UucmVtb3ZlSXRlbSh0aGlzLl9wcmVmaXggKyAnX3JlZnJlc2hfdG9rZW4nKTtcbiAgICAgICAgfS5iaW5kKGpzZm9yY2UuYnJvd3Nlcik7XG5cbiAgICAgICAgdmFyIGdldFRva2VucyA9IGpzZm9yY2UuYnJvd3Nlci5DbGllbnQucHJvdG90eXBlLl9nZXRUb2tlbnMuYmluZChqc2ZvcmNlLmJyb3dzZXIpO1xuICAgICAgICBqc2ZvcmNlLmJyb3dzZXIuQ2xpZW50LnByb3RvdHlwZS5fZ2V0VG9rZW5zID0gZnVuY3Rpb24oKSB7XG4gICAgICAgICAgICB2YXIgdG9rZW5zID0gZ2V0VG9rZW5zKCk7XG4gICAgICAgICAgICBpZih0b2tlbnMpXG4gICAgICAgICAgICAgICAgdG9rZW5zLnJlZnJlc2hUb2tlbiA9IGxvY2FsU3RvcmFnZS5nZXRJdGVtKHRoaXMuX3ByZWZpeCArICdfcmVmcmVzaF90b2tlbicpO1xuICAgICAgICAgICAgcmV0dXJuIHRva2VucztcbiAgICAgICAgfS5iaW5kKGpzZm9yY2UuYnJvd3Nlcik7XG5cbiAgICAgICAgdmFyIGlzTG9nZ2VkSW4gPSBqc2ZvcmNlLmJyb3dzZXIuQ2xpZW50LnByb3RvdHlwZS5pc0xvZ2dlZEluLmJpbmQoanNmb3JjZS5icm93c2VyKTtcbiAgICAgICAganNmb3JjZS5icm93c2VyLkNsaWVudC5wcm90b3R5cGUuaXNMb2dnZWRJbiA9IGZ1bmN0aW9uKCkge1xuICAgICAgICAgICAgaWYoIWlzTG9nZ2VkSW4oKSlcbiAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7XG4gICAgICAgICAgIHJldHVybiB0aGlzLmNvbm5lY3Rpb24ucmVmcmVzaFRva2VuO1xuICAgICAgICB9LmJpbmQoanNmb3JjZS5icm93c2VyKTtcblxuICAgICAgICAvLyB1cGRhdGUgdGhlIGlzc3VlZCBhdCB0byBjdXJyZW50IGRhdGUgc2luY2Ugd2UgZG9uJ3QgbmVlZCB0byByZWF1dGhvcml6ZSBzaW5jZSB3ZSBoYXZlIGEgbmV2ZXIgZXhwaXJlIHJlZnJlc2ggdG9rZW5cbiAgICAgICAgKGZ1bmN0aW9uKCkge1xuICAgICAgICAgICAgIGxvY2FsU3RvcmFnZS5zZXRJdGVtKHRoaXMuX3ByZWZpeCArICdfaXNzdWVkX2F0JywgbmV3IERhdGUoKS5nZXRUaW1lKCkpO1xuICAgICAgICAgICAgIGRvY3VtZW50LmNvb2tpZSA9IHRoaXMuX3ByZWZpeCArICdfbG9nZ2VkaW49dHJ1ZTsnO1xuICAgICAgICB9KS5iaW5kKGpzZm9yY2UuYnJvd3NlcikoKTtcblxuICAgICAgICAvLyBpbml0aWFsaXplIHdpdGggdGhlIE9BVVRIIGNyZWRlbnRpYWxzXG4gICAgICAgIGpzZm9yY2UuYnJvd3Nlci5pbml0KG9hdXRoMik7XG4gICAgfVxuXG4gICAgbG9naW4oKSB7XG4gICAgICAgIGpzZm9yY2UuYnJvd3Nlci5sb2dpbigpO1xuICAgIH1cblxuICAgIGdldENvbm5lY3Rpb24oKSB7XG4gICAgICAgIGlmKCFqc2ZvcmNlLmJyb3dzZXIuaXNMb2dnZWRJbigpKVxuICAgICAgICAgICAgcmV0dXJuIFByb21pc2UucmVqZWN0KCdQbGVhc2UgbG9naW4gYmVmb3JlIGVzdGFibGlzaGluZyBhIGNvbm5lY3Rpb24gYXQgaHR0cDovL2xvY2FsaG9zdDonICsgbG9jYXRpb24ucG9ydCArICcvY29tbW9uL29hdXRoJyk7XG5cbiAgICAgICAgcmV0dXJuIG5ldyBQcm9taXNlKGZ1bmN0aW9uKHJlc29sdmUsIHJlamVjdCkge1xuICAgICAgICAgICAganNmb3JjZS5icm93c2VyLm9uY2UoJ2Nvbm5lY3QnLCBmdW5jdGlvbihjb25uKSB7XG4gICAgICAgICAgICAgICB2YXIgY3JlYXRlUmVxdWVzdFBhcmFtcyA9IGNvbm4uYXBleC5fY3JlYXRlUmVxdWVzdFBhcmFtcy5iaW5kKGNvbm4uYXBleCk7XG4gICAgICAgICAgICAgICBjb25uLmFwZXguX2NyZWF0ZVJlcXVlc3RQYXJhbXMgPSBmdW5jdGlvbihtZXRob2QsIHBhdGgsIGJvZHkpIHtcbiAgICAgICAgICAgICAgICAgICAgdmFyIHBhcmFtcyA9IGNyZWF0ZVJlcXVlc3RQYXJhbXMobWV0aG9kLCBwYXRoLCBib2R5KTtcbiAgICAgICAgICAgICAgICAgICAgcGFyYW1zLmhlYWRlcnMgPSBwYXJhbXMuaGVhZGVycyB8fCB7fTtcbiAgICAgICAgICAgICAgICAgICAgcGFyYW1zLmhlYWRlcnNbJ1gtQXV0aG9yaXphdGlvbiddID0gY29ubi5yZWZyZXNoVG9rZW47XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBwYXJhbXM7XG4gICAgICAgICAgICAgICB9O1xuICAgICAgICAgICAgICAgcmVzb2x2ZShjb25uKTtcbiAgICAgICAgICAgIH0pO1xuICAgICAgICAgICAganNmb3JjZS5icm93c2VyLmluaXQob2F1dGgyKTtcbiAgICAgICAgfSk7XG4gICAgfVxuXG4gICAgc2V0IGFjY2Vzc1Rva2VuKGFjY2Vzc1Rva2VuKSB7XG4gICAgICAgIGxvY2FsU3RvcmFnZS5zZXRJdGVtKGpzZm9yY2UuYnJvd3Nlci5fcHJlZml4ICsgJ19hY2Nlc3NfdG9rZW4nLCBhY2Nlc3NUb2tlbik7XG4gICAgfVxuXG4gICAgZ2V0IHRva2VucygpIHtcbiAgICAgICAgcmV0dXJuIGpzZm9yY2UuYnJvd3Nlci5fZ2V0VG9rZW5zKCk7XG4gICAgfVxuXG4gICAgc2V0IHRva2Vucyh0b2tlbnMpIHtcbiAgICAgICAganNmb3JjZS5icm93c2VyLl9zdG9yZVRva2Vucyh0b2tlbnMpO1xuICAgIH1cblxuICAgIF9nZXROb09BdXRoQ2xpZW50S2V5TWVzc2FnZSgpIHtcbiAgICAgICAgcmV0dXJuICdOZWVkIHRvIGFkZCBhIFxcJy5lbnYuanNvblxcJyBmaWxlIGluIHRoZSBDUFEgZGlyIHdob3NlIGNvbnRlbnRzIGNvbnRhaW5zIHRoZSBDb25zdW1lciBLZXkgYW5kIENvbnN1bWVyIFNlY3JldCBvZiB0aGUgU3RlZWxicmljayBDUFEgQ29ubmVjdGVkIEFwcCwgYW5kIHRoZW4gZXhlY3V0ZSBhIGd1bHAgY29tcGlsZS5cXG4nICtcbiAgICAgICAgICAgICAgICAne1wib2F1dGhfa2V5XCI6IFwiPENvbnN1bWVyIEtleT4sIFwib2F1dGhfc2VjcmV0XCI6IFwiPENvbnN1bWVyIFNlY3JldD5cIn0nXG4gICAgfVxufSJdfQ==
'use strict';

System.register('common/oauth/oauth.local.js', [], function (_export, _context) {
  var OAUTH_KEY, OAUTH_SECRET;
  return {
    setters: [],
    execute: function () {
      _export('OAUTH_KEY', OAUTH_KEY = '3MVG9yZ.WNe6byQBf3KaROSnAINMpMlCRNXj2YJ3NfuFlQ3W5MNuK89Wldb3FsiUK3kdxgMStp.7aOMpdeThJ');

      _export('OAUTH_KEY', OAUTH_KEY);

      _export('OAUTH_SECRET', OAUTH_SECRET = '8653803322759571172');

      _export('OAUTH_SECRET', OAUTH_SECRET);
    }
  };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIm9hdXRoLmxvY2FsLmpzIl0sIm5hbWVzIjpbIk9BVVRIX0tFWSIsIk9BVVRIX1NFQ1JFVCJdLCJtYXBwaW5ncyI6Ijs7Ozs7OzsyQkFBYUEsUyxHQUFZLHVGOzs7OzhCQUNaQyxZLEdBQWUscUIiLCJmaWxlIjoib2F1dGgubG9jYWwuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY29uc3QgT0FVVEhfS0VZID0gJzNNVkc5eVouV05lNmJ5UUJmM0thUk9TbkFJTk1wTWxDUk5YajJZSjNOZnVGbFEzVzVNTnVLODlXbGRiM0ZzaVVLM2tkeGdNU3RwLjdhT01wZGVUaEonO1xuZXhwb3J0IGNvbnN0IE9BVVRIX1NFQ1JFVCA9ICc4NjUzODAzMzIyNzU5NTcxMTcyJzsiXX0=
'use strict';

System.register('dealdesk/sb-dd-line-details/DealDeskLineDetails.js', ['common/core/AppContext.js'], function (_export, _context) {
	var AppContext, _createClass, DealDeskLineDetails;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_commonCoreAppContextJs) {
			AppContext = _commonCoreAppContextJs.AppContext;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('DealDeskLineDetails', DealDeskLineDetails = function () {
				function DealDeskLineDetails() {
					_classCallCheck(this, DealDeskLineDetails);
				}

				_createClass(DealDeskLineDetails, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-dd-line-details';
						this.properties = {
							lineFields: {
								type: Array
							},
							childRecords: {
								type: Object
							},
							customIconUrls: {
								type: Object
							},
							lineArrayByStatus: {
								type: Object
							},
							model: Object,
							statuses: {
								type: Object,
								value: {
									"Pending": "penl",
									"Approved": "appl",
									"Rejected": "rejl",
									"Recalled": "recl"
								}
							},
							statusField: {
								type: String
							},
							actionsDisplayed: {
								type: Boolean
							}
						};
					}
				}, {
					key: 'ready',
					value: function ready() {
						this.statusField = AppContext.org.prefix ? AppContext.org.prefix + '__ApprovalStatus__c' : 'ApprovalStatus__c';
						this.addEventListener('approveLine', this.approveLine);
						this.addEventListener('rejectLine', this.rejectLine);
						this.addEventListener('updateLine', this.updateLine);
						this.addEventListener('sortLines', this.sortLines);
					}
				}, {
					key: 'setUp',
					value: function setUp() {
						this.lineFields = this.model.displayedLineFields;
						this.childRecords = this.model.childRecords;
						this.customIconUrls = this.model.customIconUrls;
						this.actionsDisplayed = this.model.actionsDisplayed;

						this.lineArrayByStatus = {};

						var _iteratorNormalCompletion = true;
						var _didIteratorError = false;
						var _iteratorError = undefined;

						try {
							for (var _iterator = Object.keys(this.statuses)[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
								var _status = _step.value;

								this.lineArrayByStatus[_status] = [];
							}
						} catch (err) {
							_didIteratorError = true;
							_iteratorError = err;
						} finally {
							try {
								if (!_iteratorNormalCompletion && _iterator.return) {
									_iterator.return();
								}
							} finally {
								if (_didIteratorError) {
									throw _iteratorError;
								}
							}
						}

						if (this.childRecords.length > 0) {
							if (!this.childRecords[0][this.statusField]) {
								this.statusField = 'ApprovalStatus__c';
							}
						}
						var numChildren = this.childRecords.length;
						for (var i = 0; i < numChildren; i++) {
							var status = this.childRecords[i][this.statusField];
							this.lineArrayByStatus[status].push(this.childRecords[i]);
						}
						this.updateTables();
					}
				}, {
					key: 'changeStatus',
					value: function changeStatus(line, currentStatus, targetStatus, ind, classes) {
						var currentId = this.statuses[currentStatus];
						var targetId = this.statuses[targetStatus];

						line[this.statusField] = targetStatus;
						this.$[currentId].splice("lines", ind, 1);
						this.$[currentId].len = this.lineArrayByStatus[currentStatus].length;
						this.$[targetId].push("lines", line);
						this.$[targetId].len = this.lineArrayByStatus[targetStatus].length;
						if (classes.contains('selected')) {
							delete line.selected;
							this.fire('selectFirst');
							this.$[targetId].updateLines();
							if (this.lineArrayByStatus['Pending'].length > 0) {
								this.$.penl.$.childLines._instances[0]._children[1].classList.add('selected');
							}
						} else {
							this.$[targetId].updateLines();
						}
					}
				}, {
					key: 'approveLine',
					value: function approveLine(e) {
						var line = e.detail.line;
						var statusName = e.detail.line[this.statusField];
						var ind = e.detail.index;
						var classes = e.detail.classes;
						this.changeStatus(line, statusName, "Approved", ind, classes);
					}
				}, {
					key: 'rejectLine',
					value: function rejectLine(e) {
						var line = e.detail.line;
						var statusName = e.detail.line[this.statusField];
						var ind = e.detail.index;
						var classes = e.detail.classes;
						this.changeStatus(line, statusName, "Rejected", ind, classes);
					}
				}, {
					key: 'updateLine',
					value: function updateLine(e) {
						var line = e.detail.line;
						var field = e.detail.field;
						var value = e.detail.value;
						line[field.name] = value;
					}
				}, {
					key: 'sortLines',
					value: function sortLines(e) {
						var lines = this.lineArrayByStatus[e.detail.status];
						lines.sort(function (a, b) {
							var valueA = void 0,
							    valueB = void 0,
							    truncLabel = void 0;
							if (e.detail.headerClassList.contains('asc')) {
								if (e.detail.field.name.substring(e.detail.field.name.length - 2) == "Id" && e.detail.field.type == "REFERENCE") {
									truncLabel = e.detail.field.name.substring(0, e.detail.field.name.length - 2);
									valueA = a[truncLabel].Name;
									valueB = b[truncLabel].Name;
								} else {
									valueA = a[e.detail.field.name];
									valueB = b[e.detail.field.name];
								}
							} else {
								if (e.detail.field.name.substring(e.detail.field.name.length - 2) == "Id" && e.detail.field.type == "REFERENCE") {
									truncLabel = e.detail.field.name.substring(0, e.detail.field.name.length - 2);
									valueA = b[truncLabel].Name;
									valueB = a[truncLabel].Name;
								} else {
									valueA = b[e.detail.field.name];
									valueB = a[e.detail.field.name];
								}
							}
							if (!valueA && !valueB) return 0;else if (!valueA) return -1;else if (!valueB) return 1;else if (valueA < valueB) return -1;else if (valueA > valueB) return 1;else return 0;
						});
					}
				}, {
					key: 'updateTables',
					value: function updateTables() {
						var _iteratorNormalCompletion2 = true;
						var _didIteratorError2 = false;
						var _iteratorError2 = undefined;

						try {
							for (var _iterator2 = Object.keys(this.statuses)[Symbol.iterator](), _step2; !(_iteratorNormalCompletion2 = (_step2 = _iterator2.next()).done); _iteratorNormalCompletion2 = true) {
								var status = _step2.value;

								var id = this.statuses[status];
								if (this.lineArrayByStatus[status] != null) {
									this.$[id].lines = this.lineArrayByStatus[status];
									this.$[id].fields = this.lineFields;
									this.$[id].len = this.$[id].lines.length;
								}
							}
						} catch (err) {
							_didIteratorError2 = true;
							_iteratorError2 = err;
						} finally {
							try {
								if (!_iteratorNormalCompletion2 && _iterator2.return) {
									_iterator2.return();
								}
							} finally {
								if (_didIteratorError2) {
									throw _iteratorError2;
								}
							}
						}
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['setUp(model)'];
					}
				}]);

				return DealDeskLineDetails;
			}());

			_export('DealDeskLineDetails', DealDeskLineDetails);

			Polymer(DealDeskLineDetails);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRlYWxEZXNrTGluZURldGFpbHMuanMiXSwibmFtZXMiOlsiQXBwQ29udGV4dCIsIkRlYWxEZXNrTGluZURldGFpbHMiLCJpcyIsInByb3BlcnRpZXMiLCJsaW5lRmllbGRzIiwidHlwZSIsIkFycmF5IiwiY2hpbGRSZWNvcmRzIiwiT2JqZWN0IiwiY3VzdG9tSWNvblVybHMiLCJsaW5lQXJyYXlCeVN0YXR1cyIsIm1vZGVsIiwic3RhdHVzZXMiLCJ2YWx1ZSIsInN0YXR1c0ZpZWxkIiwiU3RyaW5nIiwiYWN0aW9uc0Rpc3BsYXllZCIsIkJvb2xlYW4iLCJvcmciLCJwcmVmaXgiLCJhZGRFdmVudExpc3RlbmVyIiwiYXBwcm92ZUxpbmUiLCJyZWplY3RMaW5lIiwidXBkYXRlTGluZSIsInNvcnRMaW5lcyIsImRpc3BsYXllZExpbmVGaWVsZHMiLCJrZXlzIiwic3RhdHVzIiwibGVuZ3RoIiwibnVtQ2hpbGRyZW4iLCJpIiwicHVzaCIsInVwZGF0ZVRhYmxlcyIsImxpbmUiLCJjdXJyZW50U3RhdHVzIiwidGFyZ2V0U3RhdHVzIiwiaW5kIiwiY2xhc3NlcyIsImN1cnJlbnRJZCIsInRhcmdldElkIiwiJCIsInNwbGljZSIsImxlbiIsImNvbnRhaW5zIiwic2VsZWN0ZWQiLCJmaXJlIiwidXBkYXRlTGluZXMiLCJwZW5sIiwiY2hpbGRMaW5lcyIsIl9pbnN0YW5jZXMiLCJfY2hpbGRyZW4iLCJjbGFzc0xpc3QiLCJhZGQiLCJlIiwiZGV0YWlsIiwic3RhdHVzTmFtZSIsImluZGV4IiwiY2hhbmdlU3RhdHVzIiwiZmllbGQiLCJuYW1lIiwibGluZXMiLCJzb3J0IiwiYSIsImIiLCJ2YWx1ZUEiLCJ2YWx1ZUIiLCJ0cnVuY0xhYmVsIiwiaGVhZGVyQ2xhc3NMaXN0Iiwic3Vic3RyaW5nIiwiTmFtZSIsImlkIiwiZmllbGRzIiwiUG9seW1lciJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztBQUFRQSxhLDJCQUFBQSxVOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7a0NB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O0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFTZDs7O3lCQTdIZTtBQUNmLGFBQU0sQ0FBQyxjQUFELENBQU47QUFDQTs7Ozs7Ozs7QUE4SEY0QyxXQUFTdkUsbUJBQVQiLCJmaWxlIjoiRGVhbERlc2tMaW5lRGV0YWlscy5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7QXBwQ29udGV4dH0gZnJvbSAnY29tbW9uL2NvcmUvQXBwQ29udGV4dC5qcyc7XG5cbmV4cG9ydCBjbGFzcyBEZWFsRGVza0xpbmVEZXRhaWxzIHtcblxuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLWRkLWxpbmUtZGV0YWlscyc7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0ge1xuXHRcdFx0bGluZUZpZWxkczoge1xuXHRcdFx0XHR0eXBlOiBBcnJheVxuXHRcdFx0fSxcblx0XHRcdGNoaWxkUmVjb3Jkczoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3Rcblx0XHRcdH0sXG5cdFx0XHRjdXN0b21JY29uVXJsczoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3Rcblx0XHRcdH0sXG5cdFx0XHRsaW5lQXJyYXlCeVN0YXR1czoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3Rcblx0XHRcdH0sXG5cdFx0XHRtb2RlbDogT2JqZWN0LFxuXHRcdFx0c3RhdHVzZXM6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZToge1xuXHRcdFx0XHRcdFwiUGVuZGluZ1wiIDogXCJwZW5sXCIgLFxuXHRcdFx0XHRcdFwiQXBwcm92ZWRcIjogXCJhcHBsXCIsXG5cdFx0XHRcdFx0XCJSZWplY3RlZFwiOiBcInJlamxcIixcblx0XHRcdFx0XHRcIlJlY2FsbGVkXCI6IFwicmVjbFwiXG5cdFx0XHRcdH1cblx0XHRcdH0sXG5cdFx0XHRzdGF0dXNGaWVsZDoge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmdcblx0XHRcdH0sXG5cdFx0XHRhY3Rpb25zRGlzcGxheWVkOiB7XG5cdFx0XHRcdHR5cGU6IEJvb2xlYW5cblx0XHRcdH1cblx0XHR9O1xuXHR9XG5cblx0Z2V0IG9ic2VydmVycygpIHtcblx0XHRyZXR1cm5bJ3NldFVwKG1vZGVsKSddO1xuXHR9XG5cblx0cmVhZHkoKSB7XG5cdFx0dGhpcy5zdGF0dXNGaWVsZCA9IEFwcENvbnRleHQub3JnLnByZWZpeCA/IEFwcENvbnRleHQub3JnLnByZWZpeCArICdfX0FwcHJvdmFsU3RhdHVzX19jJyA6ICdBcHByb3ZhbFN0YXR1c19fYyc7XG5cdFx0dGhpcy5hZGRFdmVudExpc3RlbmVyKCdhcHByb3ZlTGluZScsIHRoaXMuYXBwcm92ZUxpbmUpO1xuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcigncmVqZWN0TGluZScsIHRoaXMucmVqZWN0TGluZSk7XG5cdFx0dGhpcy5hZGRFdmVudExpc3RlbmVyKCd1cGRhdGVMaW5lJywgdGhpcy51cGRhdGVMaW5lKTtcblx0XHR0aGlzLmFkZEV2ZW50TGlzdGVuZXIoJ3NvcnRMaW5lcycsIHRoaXMuc29ydExpbmVzKTtcblx0fVxuXG5cdHNldFVwKCkge1xuXHRcdHRoaXMubGluZUZpZWxkcyA9IHRoaXMubW9kZWwuZGlzcGxheWVkTGluZUZpZWxkcztcblx0XHR0aGlzLmNoaWxkUmVjb3JkcyA9IHRoaXMubW9kZWwuY2hpbGRSZWNvcmRzO1xuXHRcdHRoaXMuY3VzdG9tSWNvblVybHMgPSB0aGlzLm1vZGVsLmN1c3RvbUljb25VcmxzO1xuXHRcdHRoaXMuYWN0aW9uc0Rpc3BsYXllZCA9IHRoaXMubW9kZWwuYWN0aW9uc0Rpc3BsYXllZDtcblxuXHRcdHRoaXMubGluZUFycmF5QnlTdGF0dXMgPSB7fTtcblxuXHRcdGZvciAobGV0IHN0YXR1cyBvZiBPYmplY3Qua2V5cyh0aGlzLnN0YXR1c2VzKSkge1xuXHRcdFx0dGhpcy5saW5lQXJyYXlCeVN0YXR1c1tzdGF0dXNdID0gW107XG5cdFx0fVxuXHRcdGlmICh0aGlzLmNoaWxkUmVjb3Jkcy5sZW5ndGggPiAwKSB7XG5cdFx0XHRpZiAoIXRoaXMuY2hpbGRSZWNvcmRzWzBdW3RoaXMuc3RhdHVzRmllbGRdKSB7XG5cdFx0XHRcdHRoaXMuc3RhdHVzRmllbGQgPSAnQXBwcm92YWxTdGF0dXNfX2MnO1xuXHRcdFx0fVxuXHRcdH1cblx0XHRsZXQgbnVtQ2hpbGRyZW4gPSB0aGlzLmNoaWxkUmVjb3Jkcy5sZW5ndGg7XG5cdFx0Zm9yIChsZXQgaSA9IDA7IGkgPCBudW1DaGlsZHJlbjsgaSsrKSB7XG5cdFx0XHRsZXQgc3RhdHVzID0gdGhpcy5jaGlsZFJlY29yZHNbaV1bdGhpcy5zdGF0dXNGaWVsZF07XG5cdFx0XHR0aGlzLmxpbmVBcnJheUJ5U3RhdHVzW3N0YXR1c10ucHVzaCh0aGlzLmNoaWxkUmVjb3Jkc1tpXSk7XG5cdFx0fVxuXHRcdHRoaXMudXBkYXRlVGFibGVzKCk7XG5cdH1cblxuXHRjaGFuZ2VTdGF0dXMobGluZSwgY3VycmVudFN0YXR1cywgdGFyZ2V0U3RhdHVzLCBpbmQsIGNsYXNzZXMpIHtcblx0XHRsZXQgY3VycmVudElkID0gdGhpcy5zdGF0dXNlc1tjdXJyZW50U3RhdHVzXTtcblx0XHRsZXQgdGFyZ2V0SWQgPSB0aGlzLnN0YXR1c2VzW3RhcmdldFN0YXR1c107XG5cblx0XHRsaW5lW3RoaXMuc3RhdHVzRmllbGRdID0gdGFyZ2V0U3RhdHVzO1xuXHRcdHRoaXMuJFtjdXJyZW50SWRdLnNwbGljZShcImxpbmVzXCIsIGluZCwgMSk7XG5cdFx0dGhpcy4kW2N1cnJlbnRJZF0ubGVuID0gdGhpcy5saW5lQXJyYXlCeVN0YXR1c1tjdXJyZW50U3RhdHVzXS5sZW5ndGg7XG5cdFx0dGhpcy4kW3RhcmdldElkXS5wdXNoKFwibGluZXNcIiwgbGluZSk7XG5cdFx0dGhpcy4kW3RhcmdldElkXS5sZW4gPSB0aGlzLmxpbmVBcnJheUJ5U3RhdHVzW3RhcmdldFN0YXR1c10ubGVuZ3RoO1xuXHRcdGlmKGNsYXNzZXMuY29udGFpbnMoJ3NlbGVjdGVkJykpe1xuXHRcdFx0ZGVsZXRlIGxpbmUuc2VsZWN0ZWQ7XG5cdFx0XHR0aGlzLmZpcmUoJ3NlbGVjdEZpcnN0Jyk7XG5cdFx0XHR0aGlzLiRbdGFyZ2V0SWRdLnVwZGF0ZUxpbmVzKCk7XG5cdFx0XHRpZih0aGlzLmxpbmVBcnJheUJ5U3RhdHVzWydQZW5kaW5nJ10ubGVuZ3RoID4gMCkge1xuXHRcdFx0XHR0aGlzLiQucGVubC4kLmNoaWxkTGluZXMuX2luc3RhbmNlc1swXS5fY2hpbGRyZW5bMV0uY2xhc3NMaXN0LmFkZCgnc2VsZWN0ZWQnKTtcblx0XHRcdH1cblx0XHR9IGVsc2Uge1xuXHRcdFx0dGhpcy4kW3RhcmdldElkXS51cGRhdGVMaW5lcygpO1xuXHRcdH1cblx0XHQvL0lmIG1vdmluZyBhIHNlbGVjdGVkIGxpbmUsIGNhbGwgZnVuY3Rpb24gdGhhdCB3aWxsIGFkZCBjbGFzcyB0byBuZXcgbGluZVxuXG5cdH1cblxuXHRhcHByb3ZlTGluZShlKSB7XG5cdFx0bGV0IGxpbmUgPSBlLmRldGFpbC5saW5lO1xuXHRcdGxldCBzdGF0dXNOYW1lID0gZS5kZXRhaWwubGluZVt0aGlzLnN0YXR1c0ZpZWxkXTtcblx0XHRsZXQgaW5kID0gZS5kZXRhaWwuaW5kZXg7XG5cdFx0bGV0IGNsYXNzZXMgPSBlLmRldGFpbC5jbGFzc2VzO1xuXHRcdHRoaXMuY2hhbmdlU3RhdHVzKGxpbmUsIHN0YXR1c05hbWUsIFwiQXBwcm92ZWRcIiwgaW5kLCBjbGFzc2VzKTtcblx0fVxuXG5cdHJlamVjdExpbmUoZSkge1xuXHRcdGxldCBsaW5lID0gZS5kZXRhaWwubGluZTtcblx0XHRsZXQgc3RhdHVzTmFtZSA9IGUuZGV0YWlsLmxpbmVbdGhpcy5zdGF0dXNGaWVsZF07XG5cdFx0bGV0IGluZCA9IGUuZGV0YWlsLmluZGV4O1xuXHRcdGxldCBjbGFzc2VzID0gZS5kZXRhaWwuY2xhc3Nlcztcblx0XHR0aGlzLmNoYW5nZVN0YXR1cyhsaW5lLCBzdGF0dXNOYW1lLCBcIlJlamVjdGVkXCIsIGluZCwgY2xhc3Nlcyk7XG5cdH1cblxuXHR1cGRhdGVMaW5lKGUpIHtcblx0XHRsZXQgbGluZSA9IGUuZGV0YWlsLmxpbmU7XG5cdFx0bGV0IGZpZWxkID0gZS5kZXRhaWwuZmllbGQ7XG5cdFx0bGV0IHZhbHVlID0gZS5kZXRhaWwudmFsdWU7XG5cdFx0bGluZVtmaWVsZC5uYW1lXSA9IHZhbHVlO1xuXHR9XG5cblx0c29ydExpbmVzKGUpIHtcblx0XHR2YXIgbGluZXMgPSB0aGlzLmxpbmVBcnJheUJ5U3RhdHVzW2UuZGV0YWlsLnN0YXR1c107XG5cdFx0bGluZXMuc29ydChmdW5jdGlvbihhLCBiKSB7XG5cdFx0XHRsZXQgdmFsdWVBLCB2YWx1ZUIsIHRydW5jTGFiZWw7XG5cdFx0XHRpZiAoZS5kZXRhaWwuaGVhZGVyQ2xhc3NMaXN0LmNvbnRhaW5zKCdhc2MnKSkge1xuXHRcdFx0XHRpZiAoZS5kZXRhaWwuZmllbGQubmFtZS5zdWJzdHJpbmcoZS5kZXRhaWwuZmllbGQubmFtZS5sZW5ndGgtMikgPT0gXCJJZFwiXG5cdFx0XHRcdFx0JiYgZS5kZXRhaWwuZmllbGQudHlwZSA9PSBcIlJFRkVSRU5DRVwiKSB7XG5cdFx0XHRcdFx0dHJ1bmNMYWJlbCA9IGUuZGV0YWlsLmZpZWxkLm5hbWUuc3Vic3RyaW5nKDAsIGUuZGV0YWlsLmZpZWxkLm5hbWUubGVuZ3RoLTIpO1xuXHRcdFx0XHRcdHZhbHVlQSA9IGFbdHJ1bmNMYWJlbF0uTmFtZTtcblx0XHRcdFx0XHR2YWx1ZUIgPSBiW3RydW5jTGFiZWxdLk5hbWU7XG5cdFx0XHRcdH0gZWxzZSB7XG5cdFx0XHRcdFx0dmFsdWVBID0gYVtlLmRldGFpbC5maWVsZC5uYW1lXTtcblx0XHRcdFx0XHR2YWx1ZUIgPSBiW2UuZGV0YWlsLmZpZWxkLm5hbWVdO1xuXHRcdFx0XHR9XG5cdFx0XHR9IGVsc2Uge1xuXHRcdFx0XHRpZiAoZS5kZXRhaWwuZmllbGQubmFtZS5zdWJzdHJpbmcoZS5kZXRhaWwuZmllbGQubmFtZS5sZW5ndGgtMikgPT0gXCJJZFwiXG5cdFx0XHRcdFx0JiYgZS5kZXRhaWwuZmllbGQudHlwZSA9PSBcIlJFRkVSRU5DRVwiKSB7XG5cdFx0XHRcdFx0dHJ1bmNMYWJlbCA9IGUuZGV0YWlsLmZpZWxkLm5hbWUuc3Vic3RyaW5nKDAsIGUuZGV0YWlsLmZpZWxkLm5hbWUubGVuZ3RoLTIpO1xuXHRcdFx0XHRcdHZhbHVlQSA9IGJbdHJ1bmNMYWJlbF0uTmFtZTtcblx0XHRcdFx0XHR2YWx1ZUIgPSBhW3RydW5jTGFiZWxdLk5hbWU7XG5cdFx0XHRcdH0gZWxzZSB7XG5cdFx0XHRcdFx0dmFsdWVBID0gYltlLmRldGFpbC5maWVsZC5uYW1lXTtcblx0XHRcdFx0XHR2YWx1ZUIgPSBhW2UuZGV0YWlsLmZpZWxkLm5hbWVdO1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0XHRpZiAoIXZhbHVlQSAmJiAhdmFsdWVCKSByZXR1cm4gMDtcblx0XHRcdGVsc2UgaWYgKCF2YWx1ZUEpIHJldHVybiAtMTtcblx0XHRcdGVsc2UgaWYgKCF2YWx1ZUIpIHJldHVybiAxO1xuXHRcdFx0ZWxzZSBpZiAodmFsdWVBIDwgdmFsdWVCKSByZXR1cm4gLTE7XG5cdFx0XHRlbHNlIGlmICh2YWx1ZUEgPiB2YWx1ZUIpIHJldHVybiAxO1xuXHRcdFx0ZWxzZSByZXR1cm4gMDtcblx0XHR9KTtcblx0fVxuXG5cdHVwZGF0ZVRhYmxlcygpIHtcblx0XHRmb3IgKGxldCBzdGF0dXMgb2YgT2JqZWN0LmtleXModGhpcy5zdGF0dXNlcykpIHtcblx0XHRcdGxldCBpZCA9IHRoaXMuc3RhdHVzZXNbc3RhdHVzXTtcblx0XHRcdGlmICh0aGlzLmxpbmVBcnJheUJ5U3RhdHVzW3N0YXR1c10gIT0gbnVsbCkge1xuXHRcdFx0XHR0aGlzLiRbaWRdLmxpbmVzID0gdGhpcy5saW5lQXJyYXlCeVN0YXR1c1tzdGF0dXNdO1xuXHRcdFx0XHR0aGlzLiRbaWRdLmZpZWxkcyA9IHRoaXMubGluZUZpZWxkcztcblx0XHRcdFx0dGhpcy4kW2lkXS5sZW4gPSB0aGlzLiRbaWRdLmxpbmVzLmxlbmd0aDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxufVxuUG9seW1lciggRGVhbERlc2tMaW5lRGV0YWlscyApO1xuIl19
'use strict';

System.register('dealdesk/sb-dd-line-table/DealDeskLineTable.js', [], function (_export, _context) {
	var _createClass, DealDeskLineTable;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('DealDeskLineTable', DealDeskLineTable = function () {
				function DealDeskLineTable() {
					_classCallCheck(this, DealDeskLineTable);
				}

				_createClass(DealDeskLineTable, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-dd-line-table', this.properties = {
							isEmpty: {
								type: Boolean,
								value: true
							},
							isCollapsed: {
								type: Boolean,
								value: false
							},
							lines: Array,
							model: Object,
							actionsDisplayed: Boolean,
							customApprove: Boolean,
							customReject: Boolean
						};
					}
				}, {
					key: 'setIcons',
					value: function setIcons() {
						if (this.id == 'penl') {
							this.customApprove = this.model.customIconUrls.activeApproveCustomIconURL ? true : false;
							this.customReject = this.model.customIconUrls.activeRejectCustomIconURL ? true : false;
						} else if (this.id == 'appl') {
							this.customApprove = this.model.customIconUrls.inactiveApproveCustomIconURL ? true : false;
							this.customReject = this.model.customIconUrls.activeRejectCustomIconURL ? true : false;
						} else if (this.id == 'rejl') {
							this.customApprove = this.model.customIconUrls.activeApproveCustomIconURL ? true : false;
							this.customReject = this.model.customIconUrls.inactiveRejectCustomIconURL ? true : false;
						} else if (this.id == 'recl') {
							this.customApprove = this.model.customIconUrls.inactiveApproveCustomIconURL ? true : false;
							this.customReject = this.model.customIconUrls.inactiveRejectCustomIconURL ? true : false;
						}
					}
				}, {
					key: 'sortLines',
					value: function sortLines(e) {
						var newSort = '';
						var target = null;
						if (e.target.classList.contains('handle') || e.target.classList.contains('header-text') || e.target.classList.contains('nomod')) {
							target = e.target.parentElement;
						} else {
							target = e.target;
						}
						var headerClassList = target.classList;
						if (headerClassList.contains('asc')) {
							newSort = 'desc';
						} else {
							newSort = 'asc';
						}
						var numChildren = target.parentElement.children.length;
						for (var i = 0; i < numChildren - 1; i++) {
							target.parentElement.children[i].classList.remove('asc');
							target.parentElement.children[i].classList.remove('desc');
						}
						target.classList.add(newSort);
						this.fire('sortLines', {
							status: this.status,
							field: e.model.__data__.field,
							headerClassList: headerClassList
						});
						this.updateLines();
					}
				}, {
					key: 'unsort',
					value: function unsort() {
						var headerRow = this.$$('.tr');
						var numFields = this.model.displayedLineFields.length;
						for (var i = 0; i < numFields; i++) {
							var targetColumn = headerRow.children[i];
							if (targetColumn.classList.contains('asc')) targetColumn.classList.remove('asc');else if (targetColumn.classList.contains('desc')) targetColumn.classList.remove('desc');
						}
					}
				}, {
					key: 'toggleTableView',
					value: function toggleTableView(e) {
						this.isCollapsed = !this.isCollapsed;
						var tableClassList = e.target.classList;
						var lineCountSpan = e.target.parentElement.getElementsByClassName('line-count')[0];
						if (tableClassList.contains('sf-icon-chevronright')) {
							lineCountSpan.hidden = false;
							tableClassList.remove('sf-icon-chevronright');
							tableClassList.add('sf-icon-chevrondown');
						} else {
							lineCountSpan.hidden = true;
							tableClassList.remove('sf-icon-chevrondown');
							tableClassList.add('sf-icon-chevronright');
						}
						this.updateLines();
					}
				}, {
					key: 'collapseTable',
					value: function collapseTable() {
						return this.isCollapsed;
					}
				}, {
					key: 'updateFieldValue',
					value: function updateFieldValue(e) {
						this.fire('updateLine', {
							line: e.model.__data__.line,
							field: e.model.__data__.field,
							value: e.target.innerHTML
						});
					}
				}, {
					key: 'hideTable',
					value: function hideTable() {
						return this.isEmpty;
					}
				}, {
					key: 'displayTable',
					value: function displayTable() {
						if (this.len == 0) {
							this.isEmpty = true;
						} else {
							this.isEmpty = false;
						}
					}
				}, {
					key: 'approveLine',
					value: function approveLine(e) {
						if (this.id != 'appl' && this.id != 'recl') {
							this.fire('approveLine', {
								line: e.target.parentElement.parentElement.line,
								index: e.target.parentElement.parentElement.index,
								classes: e.target.parentNode.parentNode.classList
							});
							this.displayTable(this.len);
							this.updateLines();
						}
					}
				}, {
					key: 'rejectLine',
					value: function rejectLine(e) {
						if (this.id != 'rejl' && this.id != 'recl') {
							this.fire('rejectLine', {
								line: e.target.parentElement.parentElement.line,
								index: e.target.parentElement.parentElement.index,
								classes: e.target.parentNode.parentNode.classList
							});
							this.displayTable(this.len);
							this.updateLines();
						}
					}
				}, {
					key: 'updateLines',
					value: function updateLines() {
						this.displayTable();
						this.$.childLines.render();
					}
				}, {
					key: 'setApproveIcon',
					value: function setApproveIcon() {
						if (this.customApprove) {
							return null;
						}

						if (this.id == 'appl' || this.id == 'recl') {
							return 'icon sf-icon-like inactive';
						} else {
							return 'icon sf-icon-like';
						}
					}
				}, {
					key: 'setRejectIcon',
					value: function setRejectIcon() {
						if (this.customReject) {
							return null;
						}

						if (this.id == 'rejl' || this.id == 'recl') {
							return 'icon sf-icon-like flip inactive';
						} else {
							return 'icon sf-icon-like flip';
						}
					}
				}, {
					key: 'setCustomApprove',
					value: function setCustomApprove() {
						if (!this.customApprove) {
							return null;
						}

						if (this.id == 'appl' || this.id == 'recl') {
							return this.model.customIconUrls.inactiveApproveCustomIconURL;
						} else {
							return this.model.customIconUrls.activeApproveCustomIconURL;
						}
					}
				}, {
					key: 'setCustomReject',
					value: function setCustomReject() {
						if (!this.customReject) {
							return null;
						}
						if (this.id == 'rejl' || this.id == 'recl') {
							return this.model.customIconUrls.inactiveRejectCustomIconURL;
						} else {
							return this.model.customIconUrls.activeRejectCustomIconURL;
						}
					}
				}, {
					key: 'getColumnSize',
					value: function getColumnSize() {
						if (this.actionsDisplayed) {
							var output = 97 / this.model.displayedLineFields.length;
							return 'width: ' + output + '%;';
						} else {
							var _output = 100 / this.model.displayedLineFields.length;
							return 'width: ' + _output + '%;';
						}
					}
				}, {
					key: 'selectLine',
					value: function selectLine(e) {
						var clickedTag = Polymer.dom(e).localTarget.tagName;
						var clickedElement = Polymer.dom(e).localTarget;
						if (clickedTag == 'DIV') {
							this.fire('selectTableLine', {
								uid: e.model.__data__.line.Id,
								line: e.model.__data__.line,
								table: this.id,
								htmlLine: clickedElement.parentElement
							});
						} else {
							if (!clickedElement.editing && !clickedElement.$$('.link')) {
								this.fire('selectTableLine', {
									uid: e.model.__data__.line.Id,
									line: e.model.__data__.line,
									table: this.id,
									htmlLine: clickedElement.parentElement.parentElement
								});
							}
						}
					}
				}, {
					key: 'isSelected',
					value: function isSelected(line) {
						if (line.selected) {
							return 'selected';
						}
						return null;
					}
				}, {
					key: 'deselectLines',
					value: function deselectLines() {
						var numLines = this.$.childLines._instances.length;
						for (var i = 0; i < numLines; i++) {
							this.$.childLines._instances[i]._children[1].classList.remove('selected');
						}
					}
				}, {
					key: 'generateObjAndRef',
					value: function generateObjAndRef(line) {
						var objAndRef = {
							lineRecord: line,
							referencedObjects: this.model.referencedObjects
						};
						return objAndRef;
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['displayTable(len)', 'setIcons(actionsDisplayed, model)'];
					}
				}]);

				return DealDeskLineTable;
			}());

			_export('DealDeskLineTable', DealDeskLineTable);

			Polymer(DealDeskLineTable);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRlYWxEZXNrTGluZVRhYmxlLmpzIl0sIm5hbWVzIjpbIkRlYWxEZXNrTGluZVRhYmxlIiwiaXMiLCJwcm9wZXJ0aWVzIiwiaXNFbXB0eSIsInR5cGUiLCJCb29sZWFuIiwidmFsdWUiLCJpc0NvbGxhcHNlZCIsImxpbmVzIiwiQXJyYXkiLCJtb2RlbCIsIk9iamVjdCIsImFjdGlvbnNEaXNwbGF5ZWQiLCJjdXN0b21BcHByb3ZlIiwiY3VzdG9tUmVqZWN0IiwiaWQiLCJjdXN0b21JY29uVXJscyIsImFjdGl2ZUFwcHJvdmVDdXN0b21JY29uVVJMIiwiYWN0aXZlUmVqZWN0Q3VzdG9tSWNvblVSTCIsImluYWN0aXZlQXBwcm92ZUN1c3RvbUljb25VUkwiLCJpbmFjdGl2ZVJlamVjdEN1c3RvbUljb25VUkwiLCJlIiwibmV3U29ydCIsInRhcmdldCIsImNsYXNzTGlzdCIsImNvbnRhaW5zIiwicGFyZW50RWxlbWVudCIsImhlYWRlckNsYXNzTGlzdCIsIm51bUNoaWxkcmVuIiwiY2hpbGRyZW4iLCJsZW5ndGgiLCJpIiwicmVtb3ZlIiwiYWRkIiwiZmlyZSIsInN0YXR1cyIsImZpZWxkIiwiX19kYXRhX18iLCJ1cGRhdGVMaW5lcyIsImhlYWRlclJvdyIsIiQkIiwibnVtRmllbGRzIiwiZGlzcGxheWVkTGluZUZpZWxkcyIsInRhcmdldENvbHVtbiIsInRhYmxlQ2xhc3NMaXN0IiwibGluZUNvdW50U3BhbiIsImdldEVsZW1lbnRzQnlDbGFzc05hbWUiLCJoaWRkZW4iLCJsaW5lIiwiaW5uZXJIVE1MIiwibGVuIiwiaW5kZXgiLCJjbGFzc2VzIiwicGFyZW50Tm9kZSIsImRpc3BsYXlUYWJsZSIsIiQiLCJjaGlsZExpbmVzIiwicmVuZGVyIiwib3V0cHV0IiwiY2xpY2tlZFRhZyIsIlBvbHltZXIiLCJkb20iLCJsb2NhbFRhcmdldCIsInRhZ05hbWUiLCJjbGlja2VkRWxlbWVudCIsInVpZCIsIklkIiwidGFibGUiLCJodG1sTGluZSIsImVkaXRpbmciLCJzZWxlY3RlZCIsIm51bUxpbmVzIiwiX2luc3RhbmNlcyIsIl9jaGlsZHJlbiIsIm9iakFuZFJlZiIsImxpbmVSZWNvcmQiLCJyZWZlcmVuY2VkT2JqZWN0cyJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Z0NBQWFBLGlCOzs7Ozs7O3NDQUNLO0FBQ2hCLFdBQUtDLEVBQUwsR0FBVSxrQkFBVixFQUNBLEtBQUtDLFVBQUwsR0FBa0I7QUFDakJDLGdCQUFTO0FBQ1JDLGNBQU1DLE9BREU7QUFFUkMsZUFBTztBQUZDLFFBRFE7QUFLakJDLG9CQUFhO0FBQ1pILGNBQU1DLE9BRE07QUFFWkMsZUFBTztBQUZLLFFBTEk7QUFTakJFLGNBQU9DLEtBVFU7QUFVakJDLGNBQU9DLE1BVlU7QUFXakJDLHlCQUFrQlAsT0FYRDtBQVlqQlEsc0JBQWVSLE9BWkU7QUFhakJTLHFCQUFjVDtBQWJHLE9BRGxCO0FBZ0JBOzs7Z0NBTVU7QUFDVixVQUFJLEtBQUtVLEVBQUwsSUFBVyxNQUFmLEVBQXVCO0FBQ3RCLFlBQUtGLGFBQUwsR0FBcUIsS0FBS0gsS0FBTCxDQUFXTSxjQUFYLENBQTBCQywwQkFBMUIsR0FBdUQsSUFBdkQsR0FBOEQsS0FBbkY7QUFDQSxZQUFLSCxZQUFMLEdBQW9CLEtBQUtKLEtBQUwsQ0FBV00sY0FBWCxDQUEwQkUseUJBQTFCLEdBQXNELElBQXRELEdBQTZELEtBQWpGO0FBQ0EsT0FIRCxNQUdPLElBQUksS0FBS0gsRUFBTCxJQUFXLE1BQWYsRUFBdUI7QUFDN0IsWUFBS0YsYUFBTCxHQUFxQixLQUFLSCxLQUFMLENBQVdNLGNBQVgsQ0FBMEJHLDRCQUExQixHQUF5RCxJQUF6RCxHQUFnRSxLQUFyRjtBQUNBLFlBQUtMLFlBQUwsR0FBb0IsS0FBS0osS0FBTCxDQUFXTSxjQUFYLENBQTBCRSx5QkFBMUIsR0FBc0QsSUFBdEQsR0FBNkQsS0FBakY7QUFDQSxPQUhNLE1BR0EsSUFBSSxLQUFLSCxFQUFMLElBQVcsTUFBZixFQUF1QjtBQUM3QixZQUFLRixhQUFM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QWIsRUFBZ0JBLElBQUl3QyxRQUFwQixFQUE4QnhDLEdBQTlCLEVBQW1DO0FBQ2xDLFlBQUt3QixDQUFMLENBQU9DLFVBQVAsQ0FBa0JnQixVQUFsQixDQUE2QnpDLENBQTdCLEVBQWdDMEMsU0FBaEMsQ0FBMEMsQ0FBMUMsRUFBNkNqRCxTQUE3QyxDQUF1RFEsTUFBdkQsQ0FBOEQsVUFBOUQ7QUFDQTtBQUNEOzs7dUNBRWlCZ0IsSSxFQUFNO0FBQ3ZCLFVBQUkwQixZQUFZO0FBQ2ZDLG1CQUFZM0IsSUFERztBQUVmNEIsMEJBQW1CLEtBQUtsRSxLQUFMLENBQVdrRTtBQUZmLE9BQWhCO0FBSUEsYUFBT0YsU0FBUDtBQUNBOzs7eUJBdE9lO0FBQ2YsYUFBTSxDQUFDLG1CQUFELEVBQXNCLG1DQUF0QixDQUFOO0FBQ0E7Ozs7Ozs7O0FBdU9GZCxXQUFTNUQsaUJBQVQiLCJmaWxlIjoiRGVhbERlc2tMaW5lVGFibGUuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgRGVhbERlc2tMaW5lVGFibGUge1xuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLWRkLWxpbmUtdGFibGUnLFxuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdGlzRW1wdHk6IHtcblx0XHRcdFx0dHlwZTogQm9vbGVhbixcblx0XHRcdFx0dmFsdWU6IHRydWVcblx0XHRcdH0sXG5cdFx0XHRpc0NvbGxhcHNlZDoge1xuXHRcdFx0XHR0eXBlOiBCb29sZWFuLFxuXHRcdFx0XHR2YWx1ZTogZmFsc2Vcblx0XHRcdH0sXG5cdFx0XHRsaW5lczogQXJyYXksXG5cdFx0XHRtb2RlbDogT2JqZWN0LFxuXHRcdFx0YWN0aW9uc0Rpc3BsYXllZDogQm9vbGVhbixcblx0XHRcdGN1c3RvbUFwcHJvdmU6IEJvb2xlYW4sXG5cdFx0XHRjdXN0b21SZWplY3Q6IEJvb2xlYW5cblx0XHR9XG5cdH1cblxuXHRnZXQgb2JzZXJ2ZXJzKCkge1xuXHRcdHJldHVyblsnZGlzcGxheVRhYmxlKGxlbiknLCAnc2V0SWNvbnMoYWN0aW9uc0Rpc3BsYXllZCwgbW9kZWwpJ107XG5cdH1cblxuXHRzZXRJY29ucygpIHtcblx0XHRpZiAodGhpcy5pZCA9PSAncGVubCcpIHtcblx0XHRcdHRoaXMuY3VzdG9tQXBwcm92ZSA9IHRoaXMubW9kZWwuY3VzdG9tSWNvblVybHMuYWN0aXZlQXBwcm92ZUN1c3RvbUljb25VUkwgPyB0cnVlIDogZmFsc2U7XG5cdFx0XHR0aGlzLmN1c3RvbVJlamVjdCA9IHRoaXMubW9kZWwuY3VzdG9tSWNvblVybHMuYWN0aXZlUmVqZWN0Q3VzdG9tSWNvblVSTCA/IHRydWUgOiBmYWxzZTtcblx0XHR9IGVsc2UgaWYgKHRoaXMuaWQgPT0gJ2FwcGwnKSB7XG5cdFx0XHR0aGlzLmN1c3RvbUFwcHJvdmUgPSB0aGlzLm1vZGVsLmN1c3RvbUljb25VcmxzLmluYWN0aXZlQXBwcm92ZUN1c3RvbUljb25VUkwgPyB0cnVlIDogZmFsc2U7XG5cdFx0XHR0aGlzLmN1c3RvbVJlamVjdCA9IHRoaXMubW9kZWwuY3VzdG9tSWNvblVybHMuYWN0aXZlUmVqZWN0Q3VzdG9tSWNvblVSTCA/IHRydWUgOiBmYWxzZTtcblx0XHR9IGVsc2UgaWYgKHRoaXMuaWQgPT0gJ3JlamwnKSB7XG5cdFx0XHR0aGlzLmN1c3RvbUFwcHJvdmUgPSB0aGlzLm1vZGVsLmN1c3RvbUljb25VcmxzLmFjdGl2ZUFwcHJvdmVDdXN0b21JY29uVVJMID8gdHJ1ZSA6IGZhbHNlO1xuXHRcdFx0dGhpcy5jdXN0b21SZWplY3QgPSB0aGlzLm1vZGVsLmN1c3RvbUljb25VcmxzLmluYWN0aXZlUmVqZWN0Q3VzdG9tSWNvblVSTCA/IHRydWUgOiBmYWxzZTtcblx0XHR9IGVsc2UgaWYgKHRoaXMuaWQgPT0gJ3JlY2wnKSB7XG5cdFx0XHR0aGlzLmN1c3RvbUFwcHJvdmUgPSB0aGlzLm1vZGVsLmN1c3RvbUljb25VcmxzLmluYWN0aXZlQXBwcm92ZUN1c3RvbUljb25VUkwgPyB0cnVlIDogZmFsc2U7XG5cdFx0XHR0aGlzLmN1c3RvbVJlamVjdCA9IHRoaXMubW9kZWwuY3VzdG9tSWNvblVybHMuaW5hY3RpdmVSZWplY3RDdXN0b21JY29uVVJMID8gdHJ1ZSA6IGZhbHNlO1xuXHRcdH1cblx0fVxuXG5cdHNvcnRMaW5lcyhlKSB7XG5cdFx0Ly9PbiBjbGljazpcblx0XHRsZXQgbmV3U29ydCA9ICcnO1xuXHRcdGxldCB0YXJnZXQgPSBudWxsO1xuXHRcdGlmIChlLnRhcmdldC5jbGFzc0xpc3QuY29udGFpbnMoJ2hhbmRsZScpIHx8IGUudGFyZ2V0LmNsYXNzTGlzdC5jb250YWlucygnaGVhZGVyLXRleHQnKSB8fCBlLnRhcmdldC5jbGFzc0xpc3QuY29udGFpbnMoJ25vbW9kJykpe1xuXHRcdFx0dGFyZ2V0ID0gZS50YXJnZXQucGFyZW50RWxlbWVudDtcblx0XHR9IGVsc2Uge1xuXHRcdFx0dGFyZ2V0ID0gZS50YXJnZXQ7XG5cdFx0fVxuXHRcdGxldCBoZWFkZXJDbGFzc0xpc3QgPSB0YXJnZXQuY2xhc3NMaXN0O1xuXHRcdGlmIChoZWFkZXJDbGFzc0xpc3QuY29udGFpbnMoJ2FzYycpKSB7XG5cdFx0XHRuZXdTb3J0ID0gJ2Rlc2MnO1xuXHRcdH0gZWxzZSB7XG5cdFx0XHRuZXdTb3J0ID0gJ2FzYyc7XG5cdFx0fVxuXHRcdGxldCBudW1DaGlsZHJlbiA9IHRhcmdldC5wYXJlbnRFbGVtZW50LmNoaWxkcmVuLmxlbmd0aDtcblx0XHRmb3IobGV0IGkgPSAwOyBpIDwgbnVtQ2hpbGRyZW4gLSAxOyBpKyspIHtcblx0XHRcdHRhcmdldC5wYXJlbnRFbGVtZW50LmNoaWxkcmVuW2ldLmNsYXNzTGlzdC5yZW1vdmUoJ2FzYycpO1xuXHRcdFx0dGFyZ2V0LnBhcmVudEVsZW1lbnQuY2hpbGRyZW5baV0uY2xhc3NMaXN0LnJlbW92ZSgnZGVzYycpO1xuXHRcdH1cblx0XHR0YXJnZXQuY2xhc3NMaXN0LmFkZChuZXdTb3J0KTtcblx0XHR0aGlzLmZpcmUoJ3NvcnRMaW5lcycsIHtcblx0XHRcdHN0YXR1czogdGhpcy5zdGF0dXMsXG5cdFx0XHRmaWVsZDogZS5tb2RlbC5fX2RhdGFfXy5maWVsZCxcblx0XHRcdGhlYWRlckNsYXNzTGlzdDogaGVhZGVyQ2xhc3NMaXN0XG5cdFx0fSk7XG5cdFx0dGhpcy51cGRhdGVMaW5lcygpO1xuXHR9XG5cblx0dW5zb3J0KCkge1xuXHRcdGxldCBoZWFkZXJSb3cgPSB0aGlzLiQkKCcudHInKTtcblx0XHRsZXQgbnVtRmllbGRzID0gdGhpcy5tb2RlbC5kaXNwbGF5ZWRMaW5lRmllbGRzLmxlbmd0aDtcblx0XHRmb3IgKGxldCBpID0gMDsgaSA8IG51bUZpZWxkczsgaSsrKSB7XG5cdFx0XHRsZXQgdGFyZ2V0Q29sdW1uID0gaGVhZGVyUm93LmNoaWxkcmVuW2ldO1xuXHRcdFx0aWYgKHRhcmdldENvbHVtbi5jbGFzc0xpc3QuY29udGFpbnMoJ2FzYycpKVxuXHRcdFx0XHR0YXJnZXRDb2x1bW4uY2xhc3NMaXN0LnJlbW92ZSgnYXNjJyk7XG5cdFx0XHRlbHNlIGlmICh0YXJnZXRDb2x1bW4uY2xhc3NMaXN0LmNvbnRhaW5zKCdkZXNjJykpXG5cdFx0XHRcdHRhcmdldENvbHVtbi5jbGFzc0xpc3QucmVtb3ZlKCdkZXNjJyk7XG5cdFx0fVxuXHR9XG5cblx0dG9nZ2xlVGFibGVWaWV3KGUpIHtcblx0XHR0aGlzLmlzQ29sbGFwc2VkID0gIXRoaXMuaXNDb2xsYXBzZWQ7XG5cdFx0bGV0IHRhYmxlQ2xhc3NMaXN0ID0gZS50YXJnZXQuY2xhc3NMaXN0O1xuXHRcdGxldCBsaW5lQ291bnRTcGFuID0gZS50YXJnZXQucGFyZW50RWxlbWVudC5nZXRFbGVtZW50c0J5Q2xhc3NOYW1lKCdsaW5lLWNvdW50JylbMF07XG5cdFx0aWYgKHRhYmxlQ2xhc3NMaXN0LmNvbnRhaW5zKCdzZi1pY29uLWNoZXZyb25yaWdodCcpKSB7XG5cdFx0XHRsaW5lQ291bnRTcGFuLmhpZGRlbiA9IGZhbHNlO1xuXHRcdFx0dGFibGVDbGFzc0xpc3QucmVtb3ZlKCdzZi1pY29uLWNoZXZyb25yaWdodCcpO1xuXHRcdFx0dGFibGVDbGFzc0xpc3QuYWRkKCdzZi1pY29uLWNoZXZyb25kb3duJyk7XG5cdFx0fSBlbHNlIHtcblx0XHRcdGxpbmVDb3VudFNwYW4uaGlkZGVuID0gdHJ1ZTtcblx0XHRcdHRhYmxlQ2xhc3NMaXN0LnJlbW92ZSgnc2YtaWNvbi1jaGV2cm9uZG93bicpO1xuXHRcdFx0dGFibGVDbGFzc0xpc3QuYWRkKCdzZi1pY29uLWNoZXZyb25yaWdodCcpO1xuXHRcdH1cblx0XHR0aGlzLnVwZGF0ZUxpbmVzKCk7XG5cdH1cblxuXHRjb2xsYXBzZVRhYmxlKCkge1xuXHRcdHJldHVybiB0aGlzLmlzQ29sbGFwc2VkO1xuXHR9XG5cblx0dXBkYXRlRmllbGRWYWx1ZShlKSB7XG5cdFx0dGhpcy5maXJlKCd1cGRhdGVMaW5lJywge1xuXHRcdFx0bGluZTogZS5tb2RlbC5fX2RhdGFfXy5saW5lLFxuXHRcdFx0ZmllbGQ6IGUubW9kZWwuX19kYXRhX18uZmllbGQsXG5cdFx0XHR2YWx1ZTogZS50YXJnZXQuaW5uZXJIVE1MXG5cdFx0fSk7XG5cdH1cblxuXHRoaWRlVGFibGUoKSB7XG5cdFx0cmV0dXJuIHRoaXMuaXNFbXB0eTtcblx0fVxuXG5cdGRpc3BsYXlUYWJsZSgpIHtcblx0XHRpZiAodGhpcy5sZW4gPT0gMCkge1xuXHRcdFx0dGhpcy5pc0VtcHR5ID0gdHJ1ZTtcblx0XHR9IGVsc2Uge1xuXHRcdFx0dGhpcy5pc0VtcHR5ID0gZmFsc2U7XG5cdFx0fVxuXHR9XG5cblx0YXBwcm92ZUxpbmUoZSkge1xuXHRcdGlmICh0aGlzLmlkICE9ICdhcHBsJyAmJiB0aGlzLmlkICE9ICdyZWNsJykge1xuXHRcdFx0dGhpcy5maXJlKCdhcHByb3ZlTGluZScsIHtcblx0XHRcdFx0bGluZTogZS50YXJnZXQucGFyZW50RWxlbWVudC5wYXJlbnRFbGVtZW50LmxpbmUsXG5cdFx0XHRcdGluZGV4OiBlLnRhcmdldC5wYXJlbnRFbGVtZW50LnBhcmVudEVsZW1lbnQuaW5kZXgsXG5cdFx0XHRcdGNsYXNzZXM6IGUudGFyZ2V0LnBhcmVudE5vZGUucGFyZW50Tm9kZS5jbGFzc0xpc3Rcblx0XHRcdH0pO1xuXHRcdFx0dGhpcy5kaXNwbGF5VGFibGUodGhpcy5sZW4pO1xuXHRcdFx0dGhpcy51cGRhdGVMaW5lcygpO1xuXHRcdH1cblx0fVxuXG5cdHJlamVjdExpbmUoZSkge1xuXHRcdGlmICh0aGlzLmlkICE9ICdyZWpsJyAmJiB0aGlzLmlkICE9ICdyZWNsJykge1xuXHRcdFx0dGhpcy5maXJlKCdyZWplY3RMaW5lJywge1xuXHRcdFx0XHRsaW5lOiBlLnRhcmdldC5wYXJlbnRFbGVtZW50LnBhcmVudEVsZW1lbnQubGluZSxcblx0XHRcdFx0aW5kZXg6IGUudGFyZ2V0LnBhcmVudEVsZW1lbnQucGFyZW50RWxlbWVudC5pbmRleCxcblx0XHRcdFx0Y2xhc3NlczogZS50YXJnZXQucGFyZW50Tm9kZS5wYXJlbnROb2RlLmNsYXNzTGlzdFxuXHRcdFx0fSk7XG5cdFx0XHR0aGlzLmRpc3BsYXlUYWJsZSh0aGlzLmxlbik7XG5cdFx0XHR0aGlzLnVwZGF0ZUxpbmVzKCk7XG5cdFx0fVxuXHR9XG5cblx0dXBkYXRlTGluZXMoKSB7XG5cdFx0dGhpcy5kaXNwbGF5VGFibGUoKTtcblx0XHR0aGlzLiQuY2hpbGRMaW5lcy5yZW5kZXIoKTtcblx0fVxuXG5cdHNldEFwcHJvdmVJY29uKCkge1xuXHRcdGlmICh0aGlzLmN1c3RvbUFwcHJvdmUpIHtcblx0XHRcdHJldHVybiBudWxsO1xuXHRcdH1cblxuXHRcdGlmICh0aGlzLmlkID09ICdhcHBsJyB8fCB0aGlzLmlkID09ICdyZWNsJykge1xuXHRcdFx0cmV0dXJuICdpY29uIHNmLWljb24tbGlrZSBpbmFjdGl2ZSc7XG5cdFx0fSBlbHNlIHtcblx0XHRcdHJldHVybiAnaWNvbiBzZi1pY29uLWxpa2UnO1xuXHRcdH1cblx0fVxuXG5cdHNldFJlamVjdEljb24oKSB7XG5cdFx0aWYgKHRoaXMuY3VzdG9tUmVqZWN0KSB7XG5cdFx0XHRyZXR1cm4gbnVsbDtcblx0XHR9XG5cblx0XHRpZiAodGhpcy5pZCA9PSAncmVqbCcgfHwgdGhpcy5pZCA9PSAncmVjbCcpIHtcblx0XHRcdHJldHVybiAnaWNvbiBzZi1pY29uLWxpa2UgZmxpcCBpbmFjdGl2ZSc7XG5cdFx0fSBlbHNlIHtcblx0XHRcdHJldHVybiAnaWNvbiBzZi1pY29uLWxpa2UgZmxpcCc7XG5cdFx0fVxuXHR9XG5cblx0c2V0Q3VzdG9tQXBwcm92ZSgpIHtcblx0XHRpZiAoIXRoaXMuY3VzdG9tQXBwcm92ZSkge1xuXHRcdFx0cmV0dXJuIG51bGw7XG5cdFx0fVxuXG5cdFx0aWYgKHRoaXMuaWQgPT0gJ2FwcGwnIHx8IHRoaXMuaWQgPT0gJ3JlY2wnKSB7XG5cdFx0XHRyZXR1cm4gdGhpcy5tb2RlbC5jdXN0b21JY29uVXJscy5pbmFjdGl2ZUFwcHJvdmVDdXN0b21JY29uVVJMO1xuXHRcdH0gZWxzZSB7XG5cdFx0XHRyZXR1cm4gdGhpcy5tb2RlbC5jdXN0b21JY29uVXJscy5hY3RpdmVBcHByb3ZlQ3VzdG9tSWNvblVSTDtcblx0XHR9XG5cdH1cblxuXHRzZXRDdXN0b21SZWplY3QoKSB7XG5cdFx0aWYgKCF0aGlzLmN1c3RvbVJlamVjdCkge1xuXHRcdFx0cmV0dXJuIG51bGw7XG5cdFx0fVxuXHRcdGlmICh0aGlzLmlkID09ICdyZWpsJyB8fCB0aGlzLmlkID09ICdyZWNsJykge1xuXHRcdFx0cmV0dXJuIHRoaXMubW9kZWwuY3VzdG9tSWNvblVybHMuaW5hY3RpdmVSZWplY3RDdXN0b21JY29uVVJMO1xuXHRcdH0gZWxzZSB7XG5cdFx0XHRyZXR1cm4gdGhpcy5tb2RlbC5jdXN0b21JY29uVXJscy5hY3RpdmVSZWplY3RDdXN0b21JY29uVVJMO1xuXHRcdH1cblx0fVxuXG5cdGdldENvbHVtblNpemUoKSB7XG5cdFx0Ly9yZXR1cm4gJ3dpZHRoOiAxNSU7Jztcblx0XHRpZiAodGhpcy5hY3Rpb25zRGlzcGxheWVkKSB7XG5cdFx0XHRsZXQgb3V0cHV0ID0gOTcvdGhpcy5tb2RlbC5kaXNwbGF5ZWRMaW5lRmllbGRzLmxlbmd0aDtcblx0XHRcdHJldHVybiAnd2lkdGg6ICcgKyBvdXRwdXQgKyAnJTsnO1xuXHRcdH0gZWxzZSB7XG5cdFx0XHRsZXQgb3V0cHV0ID0gMTAwL3RoaXMubW9kZWwuZGlzcGxheWVkTGluZUZpZWxkcy5sZW5ndGg7XG5cdFx0XHRyZXR1cm4gJ3dpZHRoOiAnICsgb3V0cHV0ICsgJyU7Jztcblx0XHR9XG5cdH1cblxuXHRzZWxlY3RMaW5lKGUpIHtcblx0XHRsZXQgY2xpY2tlZFRhZyA9IFBvbHltZXIuZG9tKGUpLmxvY2FsVGFyZ2V0LnRhZ05hbWU7XG5cdFx0bGV0IGNsaWNrZWRFbGVtZW50ID0gUG9seW1lci5kb20oZSkubG9jYWxUYXJnZXQ7XG5cdFx0aWYgKGNsaWNrZWRUYWcgPT0gJ0RJVicpIHtcblx0XHRcdHRoaXMuZmlyZSgnc2VsZWN0VGFibGVMaW5lJywge1xuXHRcdFx0XHR1aWQ6IGUubW9kZWwuX19kYXRhX18ubGluZS5JZCxcblx0XHRcdFx0bGluZTogZS5tb2RlbC5fX2RhdGFfXy5saW5lLFxuXHRcdFx0XHR0YWJsZTogdGhpcy5pZCxcblx0XHRcdFx0aHRtbExpbmU6IGNsaWNrZWRFbGVtZW50LnBhcmVudEVsZW1lbnRcblx0XHRcdH0pO1xuXHRcdH0gZWxzZSB7IC8vY2xpY2tlZFRhZyA9PSAnU0ItRklFTEQnKVxuXHRcdFx0aWYgKCFjbGlja2VkRWxlbWVudC5lZGl0aW5nICYmICFjbGlja2VkRWxlbWVudC4kJCgnLmxpbmsnKSkge1xuXHRcdFx0XHR0aGlzLmZpcmUoJ3NlbGVjdFRhYmxlTGluZScsIHtcblx0XHRcdFx0XHR1aWQ6IGUubW9kZWwuX19kYXRhX18ubGluZS5JZCxcblx0XHRcdFx0XHRsaW5lOiBlLm1vZGVsLl9fZGF0YV9fLmxpbmUsXG5cdFx0XHRcdFx0dGFibGU6IHRoaXMuaWQsXG5cdFx0XHRcdFx0aHRtbExpbmU6IGNsaWNrZWRFbGVtZW50LnBhcmVudEVsZW1lbnQucGFyZW50RWxlbWVudFxuXHRcdFx0XHR9KTtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHRpc1NlbGVjdGVkKGxpbmUpIHtcblx0XHRpZiAobGluZS5zZWxlY3RlZCkge1xuXHRcdFx0cmV0dXJuICdzZWxlY3RlZCc7XG5cdFx0fVxuXHRcdHJldHVybiBudWxsO1xuXHR9XG5cblx0ZGVzZWxlY3RMaW5lcygpIHtcblx0XHRsZXQgbnVtTGluZXMgPSB0aGlzLiQuY2hpbGRMaW5lcy5faW5zdGFuY2VzLmxlbmd0aDtcblx0XHRmb3IgKGxldCBpID0gMDsgaSA8IG51bUxpbmVzOyBpKyspIHtcblx0XHRcdHRoaXMuJC5jaGlsZExpbmVzLl9pbnN0YW5jZXNbaV0uX2NoaWxkcmVuWzFdLmNsYXNzTGlzdC5yZW1vdmUoJ3NlbGVjdGVkJyk7XG5cdFx0fVxuXHR9XG5cblx0Z2VuZXJhdGVPYmpBbmRSZWYobGluZSkge1xuXHRcdGxldCBvYmpBbmRSZWYgPSB7XG5cdFx0XHRsaW5lUmVjb3JkOiBsaW5lLFxuXHRcdFx0cmVmZXJlbmNlZE9iamVjdHM6IHRoaXMubW9kZWwucmVmZXJlbmNlZE9iamVjdHNcblx0XHR9O1xuXHRcdHJldHVybiBvYmpBbmRSZWY7XG5cdH1cbn1cblxuUG9seW1lciggRGVhbERlc2tMaW5lVGFibGUgKTtcbiJdfQ==
'use strict';

System.register('dealdesk/sb-dd-record-summary/DealDeskRecordSummary.js', [], function (_export, _context) {
	var _createClass, DealDeskRecordSummary;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('DealDeskRecordSummary', DealDeskRecordSummary = function () {
				function DealDeskRecordSummary() {
					_classCallCheck(this, DealDeskRecordSummary);
				}

				_createClass(DealDeskRecordSummary, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-dd-record-summary';
						this.properties = {
							model: Object
						};
					}
				}]);

				return DealDeskRecordSummary;
			}());

			_export('DealDeskRecordSummary', DealDeskRecordSummary);

			Polymer(DealDeskRecordSummary);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRlYWxEZXNrUmVjb3JkU3VtbWFyeS5qcyJdLCJuYW1lcyI6WyJEZWFsRGVza1JlY29yZFN1bW1hcnkiLCJpcyIsInByb3BlcnRpZXMiLCJtb2RlbCIsIk9iamVjdCIsIlBvbHltZXIiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O29DQUFhQSxxQjs7Ozs7OztzQ0FFSztBQUNoQixXQUFLQyxFQUFMLEdBQVUsc0JBQVY7QUFDQSxXQUFLQyxVQUFMLEdBQWtCO0FBQ2pCQyxjQUFPQztBQURVLE9BQWxCO0FBR0E7Ozs7Ozs7O0FBRUZDLFdBQVNMLHFCQUFUIiwiZmlsZSI6IkRlYWxEZXNrUmVjb3JkU3VtbWFyeS5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBEZWFsRGVza1JlY29yZFN1bW1hcnkge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItZGQtcmVjb3JkLXN1bW1hcnknO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdG1vZGVsOiBPYmplY3Rcblx0XHR9XG5cdH1cbn1cblBvbHltZXIoIERlYWxEZXNrUmVjb3JkU3VtbWFyeSApO1xuIl19
'use strict';

System.register('dealdesk/sb-dd-sforce-console/DealDeskSForceConsole.js', [], function (_export, _context) {
	var _createClass, DealDeskSForceConsole;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('DealDeskSForceConsole', DealDeskSForceConsole = function () {
				function DealDeskSForceConsole() {
					_classCallCheck(this, DealDeskSForceConsole);
				}

				_createClass(DealDeskSForceConsole, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-dd-sforce-console';
						this.properties = {};
					}
				}, {
					key: 'ready',
					value: function ready() {
						this.setTabTitle();
					}
				}, {
					key: 'setTabTitle',
					value: function setTabTitle() {
						if (window.sforce && window.sforce.console != null && this.params.consoleTabTitle) {
							window.sforce.console.setTabTitle(this.params.consoleTabTitle);
						}
					}
				}]);

				return DealDeskSForceConsole;
			}());

			_export('DealDeskSForceConsole', DealDeskSForceConsole);

			Polymer(DealDeskSForceConsole);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRlYWxEZXNrU0ZvcmNlQ29uc29sZS5qcyJdLCJuYW1lcyI6WyJEZWFsRGVza1NGb3JjZUNvbnNvbGUiLCJpcyIsInByb3BlcnRpZXMiLCJzZXRUYWJUaXRsZSIsIndpbmRvdyIsInNmb3JjZSIsImNvbnNvbGUiLCJwYXJhbXMiLCJjb25zb2xlVGFiVGl0bGUiLCJQb2x5bWVyIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztvQ0FBYUEscUI7Ozs7Ozs7c0NBRUs7QUFDaEIsV0FBS0MsRUFBTCxHQUFVLHNCQUFWO0FBQ0EsV0FBS0MsVUFBTCxHQUFrQixFQUFsQjtBQUVBOzs7NkJBRU87QUFDUCxXQUFLQyxXQUFMO0FBQ0E7OzttQ0FFYTtBQUNiLFVBQUlDLE9BQU9DLE1BQVAsSUFBaUJELE9BQU9DLE1BQVAsQ0FBY0MsT0FBZCxJQUF5QixJQUExQyxJQUFrRCxLQUFLQyxNQUFMLENBQVlDLGVBQWxFLEVBQW1GO0FBQ2xGSixjQUFPQyxNQUFQLENBQWNDLE9BQWQsQ0FBc0JILFdBQXRCLENBQWtDLEtBQUtJLE1BQUwsQ0FBWUMsZUFBOUM7QUFDQTtBQUNEOzs7Ozs7OztBQUdGQyxXQUFTVCxxQkFBVCIsImZpbGUiOiJEZWFsRGVza1NGb3JjZUNvbnNvbGUuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgRGVhbERlc2tTRm9yY2VDb25zb2xlIHtcblxuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLWRkLXNmb3JjZS1jb25zb2xlJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSB7XG5cdFx0fVxuXHR9XG5cblx0cmVhZHkoKSB7XG5cdFx0dGhpcy5zZXRUYWJUaXRsZSgpO1xuXHR9XG5cblx0c2V0VGFiVGl0bGUoKSB7XG5cdFx0aWYgKHdpbmRvdy5zZm9yY2UgJiYgd2luZG93LnNmb3JjZS5jb25zb2xlICE9IG51bGwgJiYgdGhpcy5wYXJhbXMuY29uc29sZVRhYlRpdGxlKSB7XG5cdFx0XHR3aW5kb3cuc2ZvcmNlLmNvbnNvbGUuc2V0VGFiVGl0bGUodGhpcy5wYXJhbXMuY29uc29sZVRhYlRpdGxlKTtcblx0XHR9XG5cdH1cblxufVxuUG9seW1lciggRGVhbERlc2tTRm9yY2VDb25zb2xlICk7XG4iXX0=
'use strict';

System.register('dealdesk/sb-deal-desk/DealDesk.js', ['common/core/Page.js'], function (_export, _context) {
	var Page, _createClass, DealDesk;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_commonCorePageJs) {
			Page = _commonCorePageJs.Page;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('DealDesk', DealDesk = function (_Page) {
				_inherits(DealDesk, _Page);

				function DealDesk() {
					_classCallCheck(this, DealDesk);

					return _possibleConstructorReturn(this, (DealDesk.__proto__ || Object.getPrototypeOf(DealDesk)).apply(this, arguments));
				}

				_createClass(DealDesk, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-deal-desk';
						this.properties = Polymer.Base.extend({
							showDetails: {
								type: Boolean,
								value: false
							},
							recordDetailUrl: {
								type: String,
								value: null
							},
							lineiFrameUrl: {
								type: String,
								value: null
							},
							isLineSelected: {
								type: Boolean,
								value: false
							},
							isIFrameRendered: {
								type: Boolean,
								value: false
							},
							lastSelected: {
								type: Object,
								value: {
									"targetLine": null,
									"uid": null
								}
							},
							statuses: {
								type: Object,
								value: {
									"Pending": "penl",
									"Approved": "appl",
									"Rejected": "rejl",
									"Recalled": "recl"
								}
							}
						}, Page.properties);
					}
				}, {
					key: 'ready',
					value: function ready() {
						this.addEventListener('setIFrame', this.setIFrame);
						this.addEventListener('showDealDesk', this.showDealDesk);
						this.addEventListener('selectTableLine', this.selectPageLine);
						this.addEventListener('selectFirst', this.selectFirst);
						this.addEventListener('addMessages', this.addMessages);
						this.addEventListener('cleanAfterSave', this.cleanAfterSave);
						this.addEventListener('reloadIFrame', this.reloadIFrame);
						this.addEventListener('newModelReceived', this.setup);
					}
				}, {
					key: 'addMessages',
					value: function addMessages(e) {
						this.$.mc.messages = e.detail.value;
					}
				}, {
					key: 'setup',
					value: function setup() {
						var _iteratorNormalCompletion = true;
						var _didIteratorError = false;
						var _iteratorError = undefined;

						try {
							for (var _iterator = Object.keys(this.statuses)[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
								var status = _step.value;

								var id = this.statuses[status];
								if (this.$.ld.lineArrayByStatus[status].length > 0) {
									this.$.ld.$[id].unsort();
								}
							}
						} catch (err) {
							_didIteratorError = true;
							_iteratorError = err;
						} finally {
							try {
								if (!_iteratorNormalCompletion && _iterator.return) {
									_iterator.return();
								}
							} finally {
								if (_didIteratorError) {
									throw _iteratorError;
								}
							}
						}

						Polymer.dom.flush();
					}
				}, {
					key: 'hasModel',
					value: function hasModel() {
						if (this.dealDeskModel != null) {
							var buttonsWithoutModel = this.$.pageHeader.getElementsByClassName('withoutModel');

							var numButtons = buttonsWithoutModel.length;
							for (var i = 0; i < numButtons; i++) {
								buttonsWithoutModel[0].remove();
							}

							if (buttonsWithoutModel.length > 0) {
								var numNodes = this.$$('.withoutModel').childNodes.length;
								var removedNode = this.$$('.withoutModel');
								for (var j = 0; j < numNodes; j++) {
									removedNode.removeChild(removedNode.firstChild);
								}
							}
							return true;
						} else {
							return false;
						}
					}
				}, {
					key: 'showDealDesk',
					value: function showDealDesk() {
						this.$.dealdesk.hidden = false;
					}
				}, {
					key: 'assign',
					value: function assign() {
						if (this.lastSelected.targetLine) {
							delete this.lastSelected.targetLine.selected;
						}
						this.$.mc.hasMessage = false;
						this.$.mc.messages = [];
						this.$.dds.closeAfterSave = false;
						this.dealDeskModel.dealDeskEvent = 'Assign';
						if (this.originalOwnerId == null) {
							this.originalOwnerId = this.dealDeskModel.parentRecord.OwnerId;
						}
						this.dealDeskModel.parentRecord.OwnerId = this.dealDeskModel.currentUserId;
						this.$.dds.dealDeskModelSave = this.dealDeskModel;
					}
				}, {
					key: 'saveModel',
					value: function saveModel() {
						if (this.lastSelected.targetLine) {
							delete this.lastSelected.targetLine.selected;
						}
						this.$.mc.hasMessage = false;
						this.$.mc.messages = [];
						this.$.dds.closeAfterSave = false;
						this.dealDeskModel.dealDeskEvent = 'Save';
						this.$.dds.dealDeskModelSave = this.dealDeskModel;
					}
				}, {
					key: 'saveModelAndClose',
					value: function saveModelAndClose() {
						if (this.lastSelected.targetLine) {
							delete this.lastSelected.targetLine.selected;
						}
						this.$.mc.hasMessage = false;
						this.$.mc.messages = [];
						this.$.dds.closeAfterSave = true;
						this.dealDeskModel.dealDeskEvent = 'Save and Close';
						if (this.originalOwnerId) {
							this.dealDeskModel.parentRecord.OwnerId = this.originalOwnerId;
						}
						this.$.dds.dealDeskModelSave = this.dealDeskModel;
					}
				}, {
					key: 'cleanAfterSave',
					value: function cleanAfterSave() {
						this.lastSelected.uid = null;
						this.lastSelected.targetLine = null;
						this.lineiFrameUrl = null;
						this.isLineSelected = false;
						this.isIFrameRendered = false;
					}
				}, {
					key: 'cancel',
					value: function cancel() {
						if (this.dealDeskModel) {
							if (this.originalOwnerId) {
								this.dealDeskModel.originalOwnerId = this.originalOwnerId;
								this.dealDeskModel.parentRecord.OwnerId = this.originalOwnerId;
								this.$.dds.closeAfterSave = true;
								this.dealDeskModel.dealDeskEvent = 'Cancel';
								this.$.dds.dealDeskModelSave = this.dealDeskModel;
							} else {
								if (this.lastSelected.targetLine) {
									delete this.lastSelected.targetLine.selected;
								}
								this.$.dds.closeAfterSave = true;
								this.dealDeskModel.dealDeskEvent = 'Cancel';
								this.$.dds.dealDeskModelSave = this.dealDeskModel;
							}
						} else {
							window.history.back();
						}
					}
				}, {
					key: 'toggleView',
					value: function toggleView() {
						return this.showDetails;
					}
				}, {
					key: 'viewLines',
					value: function viewLines() {
						this.showDetails = false;
						this.$.lines.classList.add("lines-selected");
						this.$.details.classList.remove("details-selected");
					}
				}, {
					key: 'viewDetails',
					value: function viewDetails() {
						this.showDetails = true;
						this.$.details.classList.add("details-selected");
						this.$.lines.classList.remove("lines-selected");
					}
				}, {
					key: 'setIFrame',
					value: function setIFrame() {
						this.selectFirst();
						this.recordDetailUrl = window.location.origin + '/apex/RecordView?id=' + this.dealDeskModel.parentRecord.Id;
					}
				}, {
					key: 'reloadIFrame',
					value: function reloadIFrame() {
						this.$.recordiframe.contentWindow.location.reload(true);
					}
				}, {
					key: 'iFrameDisplayed',
					value: function iFrameDisplayed() {
						var detailCol = this.$$(".detail-column");
						var iframeCol = this.$$(".iframe-column");
						if (this.isIFrameRendered) {
							detailCol.classList.add("with-iframe");
							iframeCol.classList.add("display");
						} else {
							detailCol.classList.remove("with-iframe");
							iframeCol.classList.remove("display");
						}
						return this.isIFrameRendered;
					}
				}, {
					key: 'selectPageLine',
					value: function selectPageLine(e) {
						var clickedLine = e.detail.line;
						var clickedUid = e.detail.uid;
						var clickedHtml = e.detail.htmlLine;
						var clickedTable = e.detail.table;
						var prefixedLineDetailField = this.dealDeskModel.developerPrefix + 'DealDeskDetailURL__c';
						if (!this.isLineSelected) {
							this.isLineSelected = true;
							if (clickedLine[prefixedLineDetailField] != null) {
								this.isIFrameRendered = true;
								this.lineiFrameUrl = clickedLine[prefixedLineDetailField];
							}
							clickedLine.selected = true;
							clickedHtml.classList.add('selected');
							this.lastSelected['targetLine'] = clickedLine;
							this.lastSelected['uid'] = clickedUid;
							this.$.ld.$[clickedTable].$.childLines.render();
						} else if (clickedUid == this.lastSelected['uid']) {
							delete clickedLine.selected;
							clickedHtml.classList.remove('selected');
							this.lastSelected['targetLine'] = null;
							this.lastSelected['uid'] = null;
							this.isLineSelected = false;
							this.isIFrameRendered = false;
							this.$.ld.$[clickedTable].$.childLines.render();
						} else {
							delete this.lastSelected['targetLine'].selected;
							var _iteratorNormalCompletion2 = true;
							var _didIteratorError2 = false;
							var _iteratorError2 = undefined;

							try {
								for (var _iterator2 = Object.keys(this.statuses)[Symbol.iterator](), _step2; !(_iteratorNormalCompletion2 = (_step2 = _iterator2.next()).done); _iteratorNormalCompletion2 = true) {
									var status = _step2.value;

									var id = this.statuses[status];
									if (this.$.ld.lineArrayByStatus[status].length > 0) {
										this.$.ld.$[id].deselectLines();
									}
								}
							} catch (err) {
								_didIteratorError2 = true;
								_iteratorError2 = err;
							} finally {
								try {
									if (!_iteratorNormalCompletion2 && _iterator2.return) {
										_iterator2.return();
									}
								} finally {
									if (_didIteratorError2) {
										throw _iteratorError2;
									}
								}
							}

							if (clickedLine[prefixedLineDetailField] != null) {
								this.isIFrameRendered = true;
								this.lineiFrameUrl = clickedLine[prefixedLineDetailField];
							}
							clickedLine.selected = true;
							clickedHtml.classList.add('selected');
							this.lastSelected['targetLine'] = clickedLine;
							this.lastSelected['uid'] = clickedUid;
							this.$.ld.$[clickedTable].$.childLines.render();
						}
					}
				}, {
					key: 'selectFirst',
					value: function selectFirst() {
						if (this.$.ld.lineArrayByStatus['Pending'].length > 0) {
							var prefixedLineDetailField = this.dealDeskModel.developerPrefix + 'DealDeskDetailURL__c';
							this.lineiFrameUrl = this.$.ld.lineArrayByStatus['Pending'][0][prefixedLineDetailField];
							if (this.lineiFrameUrl) {
								this.isIFrameRendered = true;
							}
							this.isLineSelected = true;
							this.$.ld.lineArrayByStatus['Pending'][0].selected = true;
							this.lastSelected['targetLine'] = this.$.ld.lineArrayByStatus['Pending'][0];
							this.lastSelected['uid'] = this.$.ld.lineArrayByStatus['Pending'][0].Id;
						} else {
							this.isLineSelected = false;
						}
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.Page];
					}
				}]);

				return DealDesk;
			}(Page));

			_export('DealDesk', DealDesk);

			Polymer(DealDesk);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRlYWxEZXNrLmpzIl0sIm5hbWVzIjpbIlBhZ2UiLCJEZWFsRGVzayIsImlzIiwicHJvcGVydGllcyIsIlBvbHltZXIiLCJCYXNlIiwiZXh0ZW5kIiwic2hvd0RldGFpbHMiLCJ0eXBlIiwiQm9vbGVhbiIsInZhbHVlIiwicmVjb3JkRGV0YWlsVXJsIiwiU3RyaW5nIiwibGluZWlGcmFtZVVybCIsImlzTGluZVNlbGVjdGVkIiwiaXNJRnJhbWVSZW5kZXJlZCIsImxhc3RTZWxlY3RlZCIsIk9iamVjdCIsInN0YXR1c2VzIiwiYWRkRXZlbnRMaXN0ZW5lciIsInNldElGcmFtZSIsInNob3dEZWFsRGVzayIsInNlbGVjdFBhZ2VMaW5lIiwic2VsZWN0Rmlyc3QiLCJhZGRNZXNzYWdlcyIsImNsZWFuQWZ0ZXJTYXZlIiwicmVsb2FkSUZyYW1lIiwic2V0dXAiLCJlIiwiJCIsIm1jIiwibWVzc2FnZXMiLCJkZXRhaWwiLCJrZXlzIiwic3RhdHVzIiwiaWQiLCJsZCIsImxpbmVBcnJheUJ5U3RhdHVzIiwibGVuZ3RoIiwidW5zb3J0IiwiZG9tIiwiZmx1c2giLCJkZWFsRGVza01vZGVsIiwiYnV0dG9uc1dpdGhvdXRNb2RlbCIsInBhZ2VIZWFkZXIiLCJnZXRFbGVtZW50c0J5Q2xhc3NOYW1lIiwibnVtQnV0dG9ucyIsImkiLCJyZW1vdmUiLCJudW1Ob2RlcyIsIiQkIiwiY2hpbGROb2RlcyIsInJlbW92ZWROb2RlIiwiaiIsInJlbW92ZUNoaWxkIiwiZmlyc3RDaGlsZCIsImRlYWxkZXNrIiwiaGlkZGVuIiwidGFyZ2V0TGluZSIsInNlbGVjdGVkIiwiaGFzTWVzc2FnZSIsImRkcyIsImNsb3NlQWZ0ZXJTYXZlIiwiZGVhbERlc2tFdmVudCIsIm9yaWdpbmFsT3duZXJJZCIsInBhcmVudFJlY29yZCIsIk93bmVySWQiLCJjdXJyZW50VXNlcklkIiwiZGVhbERlc2tNb2RlbFNhdmUiLCJ1aWQiLCJ3aW5kb3ciLCJoaXN0b3J5IiwiYmFjayIsImxpbmVzIiwiY2xhc3NMaXN0IiwiYWRkIiwiZGV0YWlscyIsImxvY2F0aW9uIiwib3JpZ2luIiwiSWQiLCJyZWNvcmRpZnJhbWUiLCJjb250ZW50V2luZG93IiwicmVsb2FkIiwiZGV0YWlsQ29sIiwiaWZyYW1lQ29sIiwiY2xpY2tlZExpbmUiLCJsaW5lIiwiY2xpY2tlZFVpZCIsImNsaWNrZWRIdG1sIiwiaHRtbExpbmUiLCJjbGlja2VkVGFibGUiLCJ0YWJsZSIsInByZWZpeGVkTGluZURldGFpbEZpZWxkIiwiZGV2ZWxvcGVyUHJlZml4IiwiY2hpbGRMaW5lcyIsInJlbmRlciIsImRlc2VsZWN0TGluZXMiLCJzYiIsImNvbW1vbiIsImNvcmUiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFBUUEsTyxxQkFBQUEsSTs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O3VCQUVLQyxROzs7Ozs7Ozs7OztzQ0FFSztBQUNoQixXQUFLQyxFQUFMLEdBQVUsY0FBVjtBQUNBLFdBQUtDLFVBQUwsR0FBa0JDLFFBQVFDLElBQVIsQ0FBYUMsTUFBYixDQUFvQjtBQUNyQ0Msb0JBQWE7QUFDWkMsY0FBTUMsT0FETTtBQUVaQyxlQUFPO0FBRkssUUFEd0I7QUFLckNDLHdCQUFpQjtBQUNoQkgsY0FBTUksTUFEVTtBQUVoQkYsZUFBTztBQUZTLFFBTG9CO0FBU3JDRyxzQkFBZTtBQUNkTCxjQUFNSSxNQURRO0FBRWRGLGVBQU87QUFGTyxRQVRzQjtBQWFyQ0ksdUJBQWdCO0FBQ2ZOLGNBQU1DLE9BRFM7QUFFZkMsZUFBTztBQUZRLFFBYnFCO0FBaUJyQ0sseUJBQWtCO0FBQ2pCUCxjQUFNQyxPQURXO0FBRWpCQyxlQUFPO0FBRlUsUUFqQm1CO0FBcUJyQ00scUJBQWM7QUFDYlIsY0FBTVMsTUFETztBQUViUCxlQUFPO0FBQ04sdUJBQWUsSUFEVDtBQUVOLGdCQUFRO0FBRkY7QUFGTSxRQXJCdUI7QUE0QnJDUSxpQkFBVTtBQUNUVixjQUFNUyxNQURHO0FBRVRQLGVBQU87QUFDTixvQkFBWSxNQURO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QUFWLENBQTRCLFNBQTVCLEVBQXVDLENBQXZDLENBQWxDO0FBQ0EsWUFBS3JCLFlBQUwsQ0FBa0IsS0FBbEIsSUFBMkIsS0FBS2EsQ0FBTCxDQUFPTyxFQUFQLENBQVVDLGlCQUFWLENBQTRCLFNBQTVCLEVBQXVDLENBQXZDLEVBQTBDMEMsRUFBckU7QUFDQSxPQVZELE1BVU87QUFDTixZQUFLakUsY0FBTCxHQUFzQixLQUF0QjtBQUNBO0FBQ0Q7Ozt5QkFwTmU7QUFDZixhQUFPLENBQUNtRixHQUFHQyxNQUFILENBQVVDLElBQVYsQ0FBZW5HLElBQWhCLENBQVA7QUFDQTs7OztLQTdENEJBLEk7Ozs7QUFtUjlCSSxXQUFTSCxRQUFUIiwiZmlsZSI6IkRlYWxEZXNrLmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtQYWdlfSBmcm9tICdjb21tb24vY29yZS9QYWdlLmpzJztcblxuZXhwb3J0IGNsYXNzIERlYWxEZXNrIGV4dGVuZHMgUGFnZSB7XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1kZWFsLWRlc2snO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IFBvbHltZXIuQmFzZS5leHRlbmQoe1xuXHRcdFx0c2hvd0RldGFpbHM6IHtcblx0XHRcdFx0dHlwZTogQm9vbGVhbixcblx0XHRcdFx0dmFsdWU6IGZhbHNlXG5cdFx0XHR9LFxuXHRcdFx0cmVjb3JkRGV0YWlsVXJsOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZyxcblx0XHRcdFx0dmFsdWU6IG51bGxcblx0XHRcdH0sXG5cdFx0XHRsaW5laUZyYW1lVXJsOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZyxcblx0XHRcdFx0dmFsdWU6IG51bGxcblx0XHRcdH0sXG5cdFx0XHRpc0xpbmVTZWxlY3RlZDoge1xuXHRcdFx0XHR0eXBlOiBCb29sZWFuLFxuXHRcdFx0XHR2YWx1ZTogZmFsc2Vcblx0XHRcdH0sXG5cdFx0XHRpc0lGcmFtZVJlbmRlcmVkOiB7XG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmYWxzZVxuXHRcdFx0fSxcblx0XHRcdGxhc3RTZWxlY3RlZDoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdHZhbHVlOiB7XG5cdFx0XHRcdFx0XCJ0YXJnZXRMaW5lXCIgOiBudWxsLFxuXHRcdFx0XHRcdFwidWlkXCIgOiBudWxsXG5cdFx0XHRcdH1cblx0XHRcdH0sXG5cdFx0XHRzdGF0dXNlczoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdHZhbHVlOiB7XG5cdFx0XHRcdFx0XCJQZW5kaW5nXCIgOiBcInBlbmxcIiAsXG5cdFx0XHRcdFx0XCJBcHByb3ZlZFwiOiBcImFwcGxcIixcblx0XHRcdFx0XHRcIlJlamVjdGVkXCI6IFwicmVqbFwiLFxuXHRcdFx0XHRcdFwiUmVjYWxsZWRcIjogXCJyZWNsXCJcblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH0sIFBhZ2UucHJvcGVydGllcyk7XG5cdH1cblxuXHRyZWFkeSgpIHtcblx0XHR0aGlzLmFkZEV2ZW50TGlzdGVuZXIoJ3NldElGcmFtZScsIHRoaXMuc2V0SUZyYW1lKTtcblx0XHR0aGlzLmFkZEV2ZW50TGlzdGVuZXIoJ3Nob3dEZWFsRGVzaycsIHRoaXMuc2hvd0RlYWxEZXNrKTtcblx0XHR0aGlzLmFkZEV2ZW50TGlzdGVuZXIoJ3NlbGVjdFRhYmxlTGluZScsIHRoaXMuc2VsZWN0UGFnZUxpbmUpO1xuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcignc2VsZWN0Rmlyc3QnLCB0aGlzLnNlbGVjdEZpcnN0KTtcblx0XHR0aGlzLmFkZEV2ZW50TGlzdGVuZXIoJ2FkZE1lc3NhZ2VzJywgdGhpcy5hZGRNZXNzYWdlcyk7XG5cdFx0dGhpcy5hZGRFdmVudExpc3RlbmVyKCdjbGVhbkFmdGVyU2F2ZScsIHRoaXMuY2xlYW5BZnRlclNhdmUpO1xuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcigncmVsb2FkSUZyYW1lJywgdGhpcy5yZWxvYWRJRnJhbWUpO1xuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcignbmV3TW9kZWxSZWNlaXZlZCcsIHRoaXMuc2V0dXApO1xuXHR9XG5cblx0YWRkTWVzc2FnZXMoZSkge1xuXHRcdHRoaXMuJC5tYy5tZXNzYWdlcyA9IGUuZGV0YWlsLnZhbHVlO1xuXHR9XG5cblx0Z2V0IGJlaGF2aW9ycygpIHtcblx0XHRyZXR1cm4gW3NiLmNvbW1vbi5jb3JlLlBhZ2VdO1xuXHR9XG5cblx0c2V0dXAoKSB7XG5cdFx0Zm9yIChsZXQgc3RhdHVzIG9mIE9iamVjdC5rZXlzKHRoaXMuc3RhdHVzZXMpKSB7XG5cdFx0XHRsZXQgaWQgPSB0aGlzLnN0YXR1c2VzW3N0YXR1c107XG5cdFx0XHRpZih0aGlzLiQubGQubGluZUFycmF5QnlTdGF0dXNbc3RhdHVzXS5sZW5ndGggPiAwKXtcblx0XHRcdFx0dGhpcy4kLmxkLiRbaWRdLnVuc29ydCgpO1xuXHRcdFx0fVxuXHRcdH1cblx0XHRQb2x5bWVyLmRvbS5mbHVzaCgpO1xuXHR9XG5cblx0aGFzTW9kZWwoKSB7XG5cdFx0aWYgKHRoaXMuZGVhbERlc2tNb2RlbCAhPSBudWxsKSB7XG5cdFx0XHRsZXQgYnV0dG9uc1dpdGhvdXRNb2RlbCA9IHRoaXMuJC5wYWdlSGVhZGVyLmdldEVsZW1lbnRzQnlDbGFzc05hbWUoJ3dpdGhvdXRNb2RlbCcpXG5cblx0XHRcdGxldCBudW1CdXR0b25zID0gYnV0dG9uc1dpdGhvdXRNb2RlbC5sZW5ndGg7XG5cdFx0XHRmb3IgKGxldCBpPTA7IGkgPCBudW1CdXR0b25zOyBpKyspIHtcblx0XHRcdFx0YnV0dG9uc1dpdGhvdXRNb2RlbFswXS5yZW1vdmUoKTtcblx0XHRcdH1cblx0XHRcdC8vIGluIG5vbi1jaHJvbWUgYnJvd3NlcnMsIC5yZW1vdmUoKSBmYWlscyBzbyBydW4gdGhpcyBpbnN0ZWFkXG5cdFx0XHQvLyBnZXRFbGVtZW50c0J5Q2xhc3NOYW1lIGNhbiByZXR1cm4gYW4gSFRNTENvbGxlY3Rpb24gb2JqZWN0IGluc3RlYWQgb2YgYW4gYXJyYXlcblx0XHRcdGlmIChidXR0b25zV2l0aG91dE1vZGVsLmxlbmd0aCA+IDApIHtcblx0XHRcdFx0bGV0IG51bU5vZGVzID0gdGhpcy4kJCgnLndpdGhvdXRNb2RlbCcpLmNoaWxkTm9kZXMubGVuZ3RoO1xuXHRcdFx0XHRsZXQgcmVtb3ZlZE5vZGUgPSB0aGlzLiQkKCcud2l0aG91dE1vZGVsJyk7XG5cdFx0XHRcdGZvciAobGV0IGogPSAwOyBqIDwgbnVtTm9kZXM7IGorKykge1xuXHRcdFx0XHRcdHJlbW92ZWROb2RlLnJlbW92ZUNoaWxkKHJlbW92ZWROb2RlLmZpcnN0Q2hpbGQpO1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0XHRyZXR1cm4gdHJ1ZTtcblx0XHR9IGVsc2Uge1xuXHRcdFx0cmV0dXJuIGZhbHNlO1xuXHRcdH1cblx0fVxuXG5cdHNob3dEZWFsRGVzaygpIHtcblx0XHR0aGlzLiQuZGVhbGRlc2suaGlkZGVuID0gZmFsc2U7XG5cdH1cblxuXHRhc3NpZ24oKSB7XG5cdFx0aWYgKHRoaXMubGFzdFNlbGVjdGVkLnRhcmdldExpbmUpIHtcblx0XHRcdGRlbGV0ZSB0aGlzLmxhc3RTZWxlY3RlZC50YXJnZXRMaW5lLnNlbGVjdGVkO1xuXHRcdH1cblx0XHR0aGlzLiQubWMuaGFzTWVzc2FnZSA9IGZhbHNlO1xuXHRcdHRoaXMuJC5tYy5tZXNzYWdlcyA9IFtdO1xuXHRcdHRoaXMuJC5kZHMuY2xvc2VBZnRlclNhdmUgPSBmYWxzZTtcblx0XHR0aGlzLmRlYWxEZXNrTW9kZWwuZGVhbERlc2tFdmVudCA9ICdBc3NpZ24nO1xuXHRcdGlmICh0aGlzLm9yaWdpbmFsT3duZXJJZCA9PSBudWxsKSB7XG5cdFx0XHR0aGlzLm9yaWdpbmFsT3duZXJJZCA9IHRoaXMuZGVhbERlc2tNb2RlbC5wYXJlbnRSZWNvcmQuT3duZXJJZDtcblx0XHR9XG5cdFx0dGhpcy5kZWFsRGVza01vZGVsLnBhcmVudFJlY29yZC5Pd25lcklkID0gdGhpcy5kZWFsRGVza01vZGVsLmN1cnJlbnRVc2VySWQ7XG5cdFx0dGhpcy4kLmRkcy5kZWFsRGVza01vZGVsU2F2ZSA9IHRoaXMuZGVhbERlc2tNb2RlbDtcblx0fVxuXG5cdHNhdmVNb2RlbCgpIHtcblx0XHRpZiAodGhpcy5sYXN0U2VsZWN0ZWQudGFyZ2V0TGluZSkge1xuXHRcdFx0ZGVsZXRlIHRoaXMubGFzdFNlbGVjdGVkLnRhcmdldExpbmUuc2VsZWN0ZWQ7XG5cdFx0fVxuXHRcdHRoaXMuJC5tYy5oYXNNZXNzYWdlID0gZmFsc2U7XG5cdFx0dGhpcy4kLm1jLm1lc3NhZ2VzID0gW107XG5cdFx0dGhpcy4kLmRkcy5jbG9zZUFmdGVyU2F2ZSA9IGZhbHNlO1xuXHRcdHRoaXMuZGVhbERlc2tNb2RlbC5kZWFsRGVza0V2ZW50ID0gJ1NhdmUnO1xuXHRcdHRoaXMuJC5kZHMuZGVhbERlc2tNb2RlbFNhdmUgPSB0aGlzLmRlYWxEZXNrTW9kZWw7XG5cdH1cblxuXHRzYXZlTW9kZWxBbmRDbG9zZSgpIHtcblx0XHRpZiAodGhpcy5sYXN0U2VsZWN0ZWQudGFyZ2V0TGluZSkge1xuXHRcdFx0ZGVsZXRlIHRoaXMubGFzdFNlbGVjdGVkLnRhcmdldExpbmUuc2VsZWN0ZWQ7XG5cdFx0fVxuXHRcdHRoaXMuJC5tYy5oYXNNZXNzYWdlID0gZmFsc2U7XG5cdFx0dGhpcy4kLm1jLm1lc3NhZ2VzID0gW107XG5cdFx0dGhpcy4kLmRkcy5jbG9zZUFmdGVyU2F2ZSA9IHRydWU7XG5cdFx0dGhpcy5kZWFsRGVza01vZGVsLmRlYWxEZXNrRXZlbnQgPSAnU2F2ZSBhbmQgQ2xvc2UnO1xuXHRcdGlmICh0aGlzLm9yaWdpbmFsT3duZXJJZCkge1xuXHRcdFx0dGhpcy5kZWFsRGVza01vZGVsLnBhcmVudFJlY29yZC5Pd25lcklkID0gdGhpcy5vcmlnaW5hbE93bmVySWQ7XG5cdFx0fVxuXHRcdHRoaXMuJC5kZHMuZGVhbERlc2tNb2RlbFNhdmUgPSB0aGlzLmRlYWxEZXNrTW9kZWw7XG5cdH1cblxuXHRjbGVhbkFmdGVyU2F2ZSgpIHtcblx0XHR0aGlzLmxhc3RTZWxlY3RlZC51aWQgPSBudWxsO1xuXHRcdHRoaXMubGFzdFNlbGVjdGVkLnRhcmdldExpbmUgPSBudWxsO1xuXHRcdHRoaXMubGluZWlGcmFtZVVybCA9IG51bGw7XG5cdFx0dGhpcy5pc0xpbmVTZWxlY3RlZCA9IGZhbHNlO1xuXHRcdHRoaXMuaXNJRnJhbWVSZW5kZXJlZCA9IGZhbHNlO1xuXHR9XG5cblx0Y2FuY2VsKCkge1xuXHRcdGlmICh0aGlzLmRlYWxEZXNrTW9kZWwpIHtcblx0XHRcdGlmICh0aGlzLm9yaWdpbmFsT3duZXJJZCkge1xuXHRcdFx0XHR0aGlzLmRlYWxEZXNrTW9kZWwub3JpZ2luYWxPd25lcklkID0gdGhpcy5vcmlnaW5hbE93bmVySWQ7XG5cdFx0XHRcdHRoaXMuZGVhbERlc2tNb2RlbC5wYXJlbnRSZWNvcmQuT3duZXJJZCA9IHRoaXMub3JpZ2luYWxPd25lcklkO1xuXHRcdFx0XHR0aGlzLiQuZGRzLmNsb3NlQWZ0ZXJTYXZlID0gdHJ1ZTtcblx0XHRcdFx0dGhpcy5kZWFsRGVza01vZGVsLmRlYWxEZXNrRXZlbnQgPSAnQ2FuY2VsJztcblx0XHRcdFx0dGhpcy4kLmRkcy5kZWFsRGVza01vZGVsU2F2ZSA9IHRoaXMuZGVhbERlc2tNb2RlbDtcblx0XHRcdH0gZWxzZSB7XG5cdFx0XHRcdGlmICh0aGlzLmxhc3RTZWxlY3RlZC50YXJnZXRMaW5lKSB7XG5cdFx0XHRcdFx0ZGVsZXRlIHRoaXMubGFzdFNlbGVjdGVkLnRhcmdldExpbmUuc2VsZWN0ZWQ7XG5cdFx0XHRcdH1cblx0XHRcdFx0dGhpcy4kLmRkcy5jbG9zZUFmdGVyU2F2ZSA9IHRydWU7XG5cdFx0XHRcdHRoaXMuZGVhbERlc2tNb2RlbC5kZWFsRGVza0V2ZW50ID0gJ0NhbmNlbCc7XG5cdFx0XHRcdHRoaXMuJC5kZHMuZGVhbERlc2tNb2RlbFNhdmUgPSB0aGlzLmRlYWxEZXNrTW9kZWw7XG5cdFx0XHRcdC8vd2luZG93LmxvY2F0aW9uLmhyZWYgPSB3aW5kb3cubG9jYXRpb24ub3JpZ2luICsgJy8nICsgdGhpcy5kZWFsRGVza01vZGVsLnBhcmVudFJlY29yZC5JZDtcblx0XHRcdH1cblx0XHR9IGVsc2Uge1xuXHRcdFx0d2luZG93Lmhpc3RvcnkuYmFjaygpO1xuXHRcdH1cblx0fVxuXG5cdHRvZ2dsZVZpZXcoKSB7XG5cdFx0cmV0dXJuIHRoaXMuc2hvd0RldGFpbHM7XG5cdH1cblxuXHR2aWV3TGluZXMoKSB7XG5cdFx0dGhpcy5zaG93RGV0YWlscyA9IGZhbHNlO1xuXHRcdHRoaXMuJC5saW5lcy5jbGFzc0xpc3QuYWRkKFwibGluZXMtc2VsZWN0ZWRcIik7XG5cdFx0dGhpcy4kLmRldGFpbHMuY2xhc3NMaXN0LnJlbW92ZShcImRldGFpbHMtc2VsZWN0ZWRcIik7XG5cdH1cblxuXHR2aWV3RGV0YWlscygpIHtcblx0XHR0aGlzLnNob3dEZXRhaWxzID0gdHJ1ZTtcblx0XHR0aGlzLiQuZGV0YWlscy5jbGFzc0xpc3QuYWRkKFwiZGV0YWlscy1zZWxlY3RlZFwiKTtcblx0XHR0aGlzLiQubGluZXMuY2xhc3NMaXN0LnJlbW92ZShcImxpbmVzLXNlbGVjdGVkXCIpO1xuXHR9XG5cblx0c2V0SUZyYW1lKCkge1xuXHRcdHRoaXMuc2VsZWN0Rmlyc3QoKTtcblx0XHR0aGlzLnJlY29yZERldGFpbFVybCA9IHdpbmRvdy5sb2NhdGlvbi5vcmlnaW4gKyAnL2FwZXgvUmVjb3JkVmlldz9pZD0nICsgdGhpcy5kZWFsRGVza01vZGVsLnBhcmVudFJlY29yZC5JZDsgLy9Gb3IgU0Zcblx0XHQvL3RoaXMucmVjb3JkRGV0YWlsVXJsID0gJyBodHRwczovL3NiYWEubmE5LnZpc3VhbC5mb3JjZS5jb20vYXBleC9SZWNvcmRWaWV3P2lkPScgKyB0aGlzLmRlYWxEZXNrTW9kZWwucGFyZW50UmVjb3JkLklkOyAvL0ZvciB1c2Ugd2l0aCBsb2NhbGhvc3Rcblx0fVxuXG5cdHJlbG9hZElGcmFtZSgpIHtcblx0XHR0aGlzLiQucmVjb3JkaWZyYW1lLmNvbnRlbnRXaW5kb3cubG9jYXRpb24ucmVsb2FkKHRydWUpO1xuXHR9XG5cblx0aUZyYW1lRGlzcGxheWVkKCkge1xuXHRcdGxldCBkZXRhaWxDb2wgPSB0aGlzLiQkKFwiLmRldGFpbC1jb2x1bW5cIik7XG5cdFx0bGV0IGlmcmFtZUNvbCA9IHRoaXMuJCQoXCIuaWZyYW1lLWNvbHVtblwiKTtcblx0XHRpZiAodGhpcy5pc0lGcmFtZVJlbmRlcmVkKSB7XG5cdFx0XHRkZXRhaWxDb2wuY2xhc3NMaXN0LmFkZChcIndpdGgtaWZyYW1lXCIpO1xuXHRcdFx0aWZyYW1lQ29sLmNsYXNzTGlzdC5hZGQoXCJkaXNwbGF5XCIpO1xuXHRcdH0gZWxzZSB7XG5cdFx0XHRkZXRhaWxDb2wuY2xhc3NMaXN0LnJlbW92ZShcIndpdGgtaWZyYW1lXCIpO1xuXHRcdFx0aWZyYW1lQ29sLmNsYXNzTGlzdC5yZW1vdmUoXCJkaXNwbGF5XCIpO1xuXHRcdH1cblx0XHRyZXR1cm4gdGhpcy5pc0lGcmFtZVJlbmRlcmVkO1xuXHR9XG5cblx0c2VsZWN0UGFnZUxpbmUoZSkge1xuXHRcdGxldCBjbGlja2VkTGluZSA9IGUuZGV0YWlsLmxpbmU7XG5cdFx0bGV0IGNsaWNrZWRVaWQgPSBlLmRldGFpbC51aWQ7XG5cdFx0bGV0IGNsaWNrZWRIdG1sID0gZS5kZXRhaWwuaHRtbExpbmU7XG5cdFx0bGV0IGNsaWNrZWRUYWJsZSA9IGUuZGV0YWlsLnRhYmxlO1xuXHRcdGxldCBwcmVmaXhlZExpbmVEZXRhaWxGaWVsZCA9IHRoaXMuZGVhbERlc2tNb2RlbC5kZXZlbG9wZXJQcmVmaXggKyAnRGVhbERlc2tEZXRhaWxVUkxfX2MnO1xuXHRcdGlmICghdGhpcy5pc0xpbmVTZWxlY3RlZCkge1xuXHRcdFx0Ly8gU2VsZWN0IGEgbGluZSB3aGVuIG5vdGhpbmcgaXMgc2VsZWN0ZWRcblx0XHRcdHRoaXMuaXNMaW5lU2VsZWN0ZWQgPSB0cnVlO1xuXHRcdFx0aWYgKGNsaWNrZWRMaW5lW3ByZWZpeGVkTGluZURldGFpbEZpZWxkXSAhPSBudWxsKSB7XG5cdFx0XHRcdHRoaXMuaXNJRnJhbWVSZW5kZXJlZCA9IHRydWU7XG5cdFx0XHRcdHRoaXMubGluZWlGcmFtZVVybCA9IGNsaWNrZWRMaW5lW3ByZWZpeGVkTGluZURldGFpbEZpZWxkXTtcblx0XHRcdH1cblx0XHRcdGNsaWNrZWRMaW5lLnNlbGVjdGVkID0gdHJ1ZTtcblx0XHRcdGNsaWNrZWRIdG1sLmNsYXNzTGlzdC5hZGQoJ3NlbGVjdGVkJyk7XG5cdFx0XHR0aGlzLmxhc3RTZWxlY3RlZFsndGFyZ2V0TGluZSddID0gY2xpY2tlZExpbmU7XG5cdFx0XHR0aGlzLmxhc3RTZWxlY3RlZFsndWlkJ10gPSBjbGlja2VkVWlkO1xuXHRcdFx0dGhpcy4kLmxkLiRbY2xpY2tlZFRhYmxlXS4kLmNoaWxkTGluZXMucmVuZGVyKCk7XG5cdFx0fSBlbHNlIGlmIChjbGlja2VkVWlkID09IHRoaXMubGFzdFNlbGVjdGVkWyd1aWQnXSkge1xuXHRcdFx0Ly8gRGVzZWxlY3QgbGluZVxuXHRcdFx0ZGVsZXRlIGNsaWNrZWRMaW5lLnNlbGVjdGVkO1xuXHRcdFx0Y2xpY2tlZEh0bWwuY2xhc3NMaXN0LnJlbW92ZSgnc2VsZWN0ZWQnKTtcblx0XHRcdHRoaXMubGFzdFNlbGVjdGVkWyd0YXJnZXRMaW5lJ10gPSBudWxsO1xuXHRcdFx0dGhpcy5sYXN0U2VsZWN0ZWRbJ3VpZCddID0gbnVsbDtcblx0XHRcdHRoaXMuaXNMaW5lU2VsZWN0ZWQgPSBmYWxzZTtcblx0XHRcdHRoaXMuaXNJRnJhbWVSZW5kZXJlZCA9IGZhbHNlO1xuXHRcdFx0dGhpcy4kLmxkLiRbY2xpY2tlZFRhYmxlXS4kLmNoaWxkTGluZXMucmVuZGVyKCk7XG5cdFx0fSBlbHNlIHtcblx0XHRcdC8vIFNlbGVjdCBhIG5ldyBsaW5lXG5cdFx0XHRkZWxldGUgdGhpcy5sYXN0U2VsZWN0ZWRbJ3RhcmdldExpbmUnXS5zZWxlY3RlZDtcblx0XHRcdGZvciAobGV0IHN0YXR1cyBvZiBPYmplY3Qua2V5cyh0aGlzLnN0YXR1c2VzKSkge1xuXHRcdFx0XHRsZXQgaWQgPSB0aGlzLnN0YXR1c2VzW3N0YXR1c107XG5cdFx0XHRcdGlmKHRoaXMuJC5sZC5saW5lQXJyYXlCeVN0YXR1c1tzdGF0dXNdLmxlbmd0aCA+IDApe1xuXHRcdFx0XHRcdHRoaXMuJC5sZC4kW2lkXS5kZXNlbGVjdExpbmVzKCk7XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHRcdGlmIChjbGlja2VkTGluZVtwcmVmaXhlZExpbmVEZXRhaWxGaWVsZF0gIT0gbnVsbCkge1xuXHRcdFx0XHR0aGlzLmlzSUZyYW1lUmVuZGVyZWQgPSB0cnVlO1xuXHRcdFx0XHR0aGlzLmxpbmVpRnJhbWVVcmwgPSBjbGlja2VkTGluZVtwcmVmaXhlZExpbmVEZXRhaWxGaWVsZF07XG5cdFx0XHR9XG5cdFx0XHRjbGlja2VkTGluZS5zZWxlY3RlZCA9IHRydWU7XG5cdFx0XHRjbGlja2VkSHRtbC5jbGFzc0xpc3QuYWRkKCdzZWxlY3RlZCcpO1xuXHRcdFx0dGhpcy5sYXN0U2VsZWN0ZWRbJ3RhcmdldExpbmUnXSA9IGNsaWNrZWRMaW5lO1xuXHRcdFx0dGhpcy5sYXN0U2VsZWN0ZWRbJ3VpZCddID0gY2xpY2tlZFVpZDtcblx0XHRcdHRoaXMuJC5sZC4kW2NsaWNrZWRUYWJsZV0uJC5jaGlsZExpbmVzLnJlbmRlcigpO1xuXHRcdH1cblx0fVxuXG5cdHNlbGVjdEZpcnN0KCkge1xuXHRcdGlmICh0aGlzLiQubGQubGluZUFycmF5QnlTdGF0dXNbJ1BlbmRpbmcnXS5sZW5ndGggPiAwKSB7XG5cdFx0XHRsZXQgcHJlZml4ZWRMaW5lRGV0YWlsRmllbGQgPSB0aGlzLmRlYWxEZXNrTW9kZWwuZGV2ZWxvcGVyUHJlZml4ICsgJ0RlYWxEZXNrRGV0YWlsVVJMX19jJztcblx0XHRcdHRoaXMubGluZWlGcmFtZVVybCA9IHRoaXMuJC5sZC5saW5lQXJyYXlCeVN0YXR1c1snUGVuZGluZyddWzBdW3ByZWZpeGVkTGluZURldGFpbEZpZWxkXTtcblx0XHRcdGlmICh0aGlzLmxpbmVpRnJhbWVVcmwpIHtcblx0XHRcdFx0dGhpcy5pc0lGcmFtZVJlbmRlcmVkID0gdHJ1ZTtcblx0XHRcdH1cblx0XHRcdHRoaXMuaXNMaW5lU2VsZWN0ZWQgPSB0cnVlO1xuXHRcdFx0dGhpcy4kLmxkLmxpbmVBcnJheUJ5U3RhdHVzWydQZW5kaW5nJ11bMF0uc2VsZWN0ZWQgPSB0cnVlO1xuXHRcdFx0dGhpcy5sYXN0U2VsZWN0ZWRbJ3RhcmdldExpbmUnXSA9IHRoaXMuJC5sZC5saW5lQXJyYXlCeVN0YXR1c1snUGVuZGluZyddWzBdO1xuXHRcdFx0dGhpcy5sYXN0U2VsZWN0ZWRbJ3VpZCddID0gdGhpcy4kLmxkLmxpbmVBcnJheUJ5U3RhdHVzWydQZW5kaW5nJ11bMF0uSWQ7XG5cdFx0fSBlbHNlIHtcblx0XHRcdHRoaXMuaXNMaW5lU2VsZWN0ZWQgPSBmYWxzZTtcblx0XHR9XG5cdH1cblxufVxuXG5Qb2x5bWVyKCBEZWFsRGVzayApO1xuIl19
'use strict';

System.register('dealdesk/services/services.js', ['dealdesk/services/sb-dd-model-read/DealDeskModelReader.js', 'dealdesk/services/sb-dd-model-save/DealDeskModelSaver.js'], function (_export, _context) {
  return {
    setters: [function (_dealdeskServicesSbDdModelReadDealDeskModelReaderJs) {}, function (_dealdeskServicesSbDdModelSaveDealDeskModelSaverJs) {}],
    execute: function () {}
  };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJzZXJ2aWNlcy5qcyIsInNvdXJjZXNDb250ZW50IjpbXX0=
'use strict';

System.register('dealdesk/validations/validations.js', ['dealdesk/validations/sb-dd-read-validations/DealDeskReadValidations.js'], function (_export, _context) {
  return {
    setters: [function (_dealdeskValidationsSbDdReadValidationsDealDeskReadValidationsJs) {}],
    execute: function () {}
  };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJ2YWxpZGF0aW9ucy5qcyIsInNvdXJjZXNDb250ZW50IjpbXX0=
'use strict';

System.register('common/core/sb-i18n/I18n.js', ['../AppContext.js', '../../Util.js'], function (_export, _context) {
	var AppContext, Util, _createClass, dateFormatCache, numberFormatCache, I18n;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_AppContextJs) {
			AppContext = _AppContextJs.AppContext;
		}, function (_UtilJs) {
			Util = _UtilJs.Util;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			dateFormatCache = new Util.Map();
			numberFormatCache = new Util.Map();

			_export('I18n', I18n = function () {
				function I18n(app) {
					_classCallCheck(this, I18n);

					this.app = app;
				}

				_createClass(I18n, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-i18n';
						this.properties = Polymer.Base.extend({
							locale: {
								type: String,
								notify: false,
								value: function value() {
									return '';
								}
							},

							key: {
								type: String,
								notify: false
							}
						}, AppContext.properties);
					}
				}, {
					key: 'attached',
					value: function attached() {
						var key = this.key ? this.key : this.innerHTML;
						if (key) this.innerHTML = this.l(key);
					}
				}, {
					key: 'l',
					value: function l(key, values) {
						var v = this.labels[key];
						return v;
					}
				}, {
					key: '_getFormat',
					value: function _getFormat(locale, key, isDate) {
						var f = null;
						if (locale && key) {
							var loc = isDate ? dateFormatCache.get(locale) : numberFormatCache.get(locale);
							if (!loc) {
								loc = new Util.Map();
								var c = isDate ? dateFormatCache : numberFormatCache;
								c.set(locale, loc);
							}

							var stringKey = JSON.stringify(key);
							f = loc.get(stringKey);
							if (!f) {
								f = isDate ? new Intl.DateTimeFormat(locale, key) : new Intl.NumberFormat(locale, key);
								loc.set(stringKey, f);
							}
						}
						return f;
					}
				}, {
					key: 'format',
					value: function format(value, options) {
						var v = '',
						    opts = options || {};

						if (value || value == 0) {
							if (value instanceof Date || opts.date) {
								var fmt = this._getFormat(this.app.user.locale, opts, true);
								if (value instanceof Date) {
									v = fmt.format(value);
								} else if (typeof value == 'number') {
									v = fmt.format(new Date(value));
								} else if (typeof value === 'string') {
									var pos = value.indexOf('T');
									if (pos >= 0) v = fmt.format(Date.parse(value));else {
											var ymd = value.split('-');
											if (ymd && ymd.length == 3) v = fmt.format(new Date(ymd[0], ymd[1] - 1, ymd[2]));
										}
								}
							} else {
								var _fmt = this._getFormat(this.app.user.locale, opts, false);
								v = _fmt.format(value);
							}
						}
						return v;
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.AppContext];
					}
				}]);

				return I18n;
			}());

			_export('I18n', I18n);

			Polymer(I18n);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkkxOG4uanMiXSwibmFtZXMiOlsiQXBwQ29udGV4dCIsIlV0aWwiLCJkYXRlRm9ybWF0Q2FjaGUiLCJNYXAiLCJudW1iZXJGb3JtYXRDYWNoZSIsIkkxOG4iLCJhcHAiLCJpcyIsInByb3BlcnRpZXMiLCJQb2x5bWVyIiwiQmFzZSIsImV4dGVuZCIsImxvY2FsZSIsInR5cGUiLCJTdHJpbmciLCJub3RpZnkiLCJ2YWx1ZSIsImtleSIsImlubmVySFRNTCIsImwiLCJ2YWx1ZXMiLCJ2IiwibGFiZWxzIiwiaXNEYXRlIiwiZiIsImxvYyIsImdldCIsImMiLCJzZXQiLCJzdHJpbmdLZXkiLCJKU09OIiwic3RyaW5naWZ5IiwiSW50bCIsIkRhdGVUaW1lRm9ybWF0IiwiTnVtYmVyRm9ybWF0Iiwib3B0aW9ucyIsIm9wdHMiLCJEYXRlIiwiZGF0ZSIsImZtdCIsIl9nZXRGb3JtYXQiLCJ1c2VyIiwiZm9ybWF0IiwicG9zIiwiaW5kZXhPZiIsInBhcnNlIiwieW1kIiwic3BsaXQiLCJsZW5ndGgiLCJzYiIsImNvbW1vbiIsImNvcmUiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7QUFBUUEsYSxpQkFBQUEsVTs7QUFDQUMsTyxXQUFBQSxJOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFJSkMsa0IsR0FBa0IsSUFBSUQsS0FBS0UsR0FBVCxFO0FBQ3BCQyxvQixHQUFvQixJQUFJSCxLQUFLRSxHQUFULEU7O21CQUVURSxJO0FBRVosa0JBQWFDLEdBQWIsRUFBbUI7QUFBQTs7QUFHbEIsVUFBS0EsR0FBTCxHQUFXQSxHQUFYO0FBQ0E7Ozs7c0NBTWdCO0FBQ2hCLFdBQUtDLEVBQUwsR0FBVSxTQUFWO0FBQ0EsV0FBS0MsVUFBTCxHQUFrQkMsUUFBUUMsSUFBUixDQUFhQyxNQUFiLENBQW9CO0FBTXJDQyxlQUFRO0FBQ1BDLGNBQU1DLE1BREM7QUFFUEMsZ0JBQVEsS0FGRDtBQUdQQyxlQUFPLGlCQUFXO0FBQUUsZ0JBQU8sRUFBUDtBQUFXO0FBSHhCLFFBTjZCOztBQWdC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WixDQUFKO0FBQ0Q7QUFDRDtBQUNELFFBaEJELE1BZ0JPO0FBQ04sWUFBSVAsT0FBTSxLQUFLQyxVQUFMLENBQWlCLEtBQUtsQyxHQUFMLENBQVNtQyxJQUFULENBQWM3QixNQUEvQixFQUF1Q3dCLElBQXZDLEVBQTZDLEtBQTdDLENBQVY7QUFDQWYsWUFBSWtCLEtBQUlHLE1BQUosQ0FBWTFCLEtBQVosQ0FBSjtBQUNBO0FBQ0Q7QUFDRCxhQUFPSyxDQUFQO0FBQ0E7Ozt5QkE5RmU7QUFDZixhQUFPLENBQUM0QixHQUFHQyxNQUFILENBQVVDLElBQVYsQ0FBZW5ELFVBQWhCLENBQVA7QUFDQTs7Ozs7Ozs7QUErRkZTLFdBQVNKLElBQVQiLCJmaWxlIjoiSTE4bi5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7QXBwQ29udGV4dH0gZnJvbSAnLi4vQXBwQ29udGV4dC5qcyc7XG5pbXBvcnQge1V0aWx9IGZyb20gJy4uLy4uL1V0aWwuanMnO1xuXG4vLyBNYXBzIG9mIGNhY2hlZCBJbnRsLkRhdGVUaW1lRm9ybWF0IGFuZCBJbnRsLk51bWJlckZvcm1hdCBvYmplY3RzIHVzaW5nIHRoZWlyIFwib3B0aW9uc1wiIG9iamVjdCBhcyAybmQtbGV2ZWwga2V5c1xuLy8gRmlyc3QgbGV2ZWwga2V5cyBhcmUgbG9jYWxlIHN0cmluZ3NcbmxldCBkYXRlRm9ybWF0Q2FjaGUgPSBuZXcgVXRpbC5NYXAoKSxcblx0XHRudW1iZXJGb3JtYXRDYWNoZSA9IG5ldyBVdGlsLk1hcCgpO1xuXG5leHBvcnQgY2xhc3MgSTE4biB7XG5cblx0Y29uc3RydWN0b3IoIGFwcCApIHtcblx0XHQvLyBBcyBhIFBvbHltZXIgd2ViIGNvbXBvbmVudCB3ZSBnZXQgXCJ0aGlzLmFwcFwiIGZyb20gQXBwQ29udGV4dCBiZWhhdmlvci5cblx0XHQvLyBCdXQgYXMgcmVndWxhciBFUzYgY2xhc3Mgd2UgaGF2ZSB0byBzZXQgdXAgb3Vyc2VsdmVzIChhbmQgd2UgY2FuJ3QgZXh0ZW5kIEFwcENvbnRleHQgZm9yIGNpcmN1bGFyIGRlcCByZWFzb25zKVxuXHRcdHRoaXMuYXBwID0gYXBwO1xuXHR9XG5cblx0Z2V0IGJlaGF2aW9ycygpIHtcblx0XHRyZXR1cm4gW3NiLmNvbW1vbi5jb3JlLkFwcENvbnRleHRdO1xuXHR9XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1pMThuJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSBQb2x5bWVyLkJhc2UuZXh0ZW5kKHtcblx0XHRcdC8qKlxuXHRcdFx0KiBUaGUgQkNQIDQ3IGxvY2FsZSB0byB1c2UgdG8gZm9ybWF0IHRoZSBkYXRhIHZhbHVlIG9yIHRyYW5zbGF0ZSB0aGUgbWVzc2FnZSBzdHJpbmcgKGkuZS4gdGhlIGxhbmd1YWdlKS5cblx0XHRcdCogVGhpcyB3aWxsIGRlZmF1bHQgdG8gdGhlIHVzZXIncyBsb2NhbGUgb3IgbGFuZ3VhZ2Ugc28geW91IG9ubHkgbmVlZCB0byBzZXQgaXQgaW4gXCJvdmVycmlkZVwiIHNpdHVhdGlvbnMuXG5cdFx0XHQqIEB0eXBlIHtTdHJpbmd9XG5cdFx0XHQqL1xuXHRcdFx0bG9jYWxlOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZyxcblx0XHRcdFx0bm90aWZ5OiBmYWxzZSxcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uKCkgeyByZXR1cm4gJycgfVxuXHRcdFx0fSxcblxuXHRcdFx0LyoqXG5cdFx0XHQqIFRoZSBrZXkgdG8gdXNlIHRvIGxvb2t1cCB0aGUgdHJhbnNsYXRlZCBtZXNzYWdlIHN0cmluZy4gT25seSBzZXQgZm9yIG92ZXJyaWRlcyBvciBjb21wbGV4L2xvbmcgbWVzc2FnZXMuXG5cdFx0XHQqIEB0eXBlIHtTdHJpbmd9XG5cdFx0XHQqL1xuXHRcdFx0a2V5OiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZyxcblx0XHRcdFx0bm90aWZ5OiBmYWxzZVxuXHRcdFx0fVxuXHRcdH0sIEFwcENvbnRleHQucHJvcGVydGllcyApO1xuXHR9XG5cblx0YXR0YWNoZWQoKSB7XG5cdFx0bGV0IGtleSA9IHRoaXMua2V5ID8gdGhpcy5rZXkgOiB0aGlzLmlubmVySFRNTDtcblx0XHRpZigga2V5IClcblx0XHRcdHRoaXMuaW5uZXJIVE1MID0gdGhpcy5sKGtleSk7XG5cdH1cblxuXHQvKiogTG9jYWxpemUgYSBzdHJpbmcgaW50byBhIGRpZmZlcmVudCBsYW5ndWFnZSAqL1xuXHRsKCBrZXksIHZhbHVlcyApIHtcblx0XHR2YXIgdiA9IHRoaXMubGFiZWxzWyBrZXkgXTtcblx0XHRyZXR1cm4gdjtcblx0fVxuXG5cdF9nZXRGb3JtYXQoIGxvY2FsZSwga2V5LCBpc0RhdGUgKSB7XG5cdFx0bGV0IGYgPSBudWxsO1xuXHRcdGlmKCBsb2NhbGUgJiYga2V5ICkge1xuXHRcdFx0bGV0IGxvYyA9IGlzRGF0ZSA/IGRhdGVGb3JtYXRDYWNoZS5nZXQoIGxvY2FsZSApIDogbnVtYmVyRm9ybWF0Q2FjaGUuZ2V0KCBsb2NhbGUgKTtcblx0XHRcdGlmICggIWxvYyApIHtcblx0XHRcdFx0bG9jID0gbmV3IFV0aWwuTWFwKCk7XG5cdFx0XHRcdGxldCBjID0gaXNEYXRlID8gZGF0ZUZvcm1hdENhY2hlIDogbnVtYmVyRm9ybWF0Q2FjaGU7XG5cdFx0XHRcdGMuc2V0KCBsb2NhbGUsIGxvYyApO1xuXHRcdFx0fVxuXG5cdFx0XHRsZXQgc3RyaW5nS2V5ID0gSlNPTi5zdHJpbmdpZnkoIGtleSApO1xuXHRcdFx0ZiA9IGxvYy5nZXQoIHN0cmluZ0tleSApO1xuXHRcdFx0aWYoICFmICkge1xuXHRcdFx0XHRmID0gaXNEYXRlID8gbmV3IEludGwuRGF0ZVRpbWVGb3JtYXQoIGxvY2FsZSwga2V5ICkgOiBuZXcgSW50bC5OdW1iZXJGb3JtYXQoIGxvY2FsZSwga2V5ICk7XG5cdFx0XHRcdGxvYy5zZXQoIHN0cmluZ0tleSwgZiApO1xuXHRcdFx0fVxuXHRcdH1cblx0XHRyZXR1cm4gZjtcblx0fVxuXG5cdC8qKlxuXHQgKiBGb3JtYXQgYSBkYXRlIG9yIG51bWJlci5cblx0ICogQHBhcmFtICB7T2JqZWN0fG51bWJlcn0gdmFsdWUgICB0aGUgRGF0ZSBvYmplY3Qgb3IgbnVtYmVyIHZhbHVlIChmbG9hdCBvciBpbnRlZ2VyKVxuXHQgKiBAcGFyYW0gIHtvYmplY3R9IG9wdGlvbnMgdGhlIG9wdGlvbnMgb2JqZWN0IHRvIHBhc3MgaW50byBJbnRsLkRhdGVUaW1lRm9ybWF0IG9yIEludGwuTnVtYmVyRm9ybWF0IGNvbnN0cnVjdG9yXG5cdCAqIEByZXR1cm4ge3N0cmluZ30gICAgICAgICB0aGUgZm9ybWF0ZWQgc3RyaW5nXG5cdCAqL1xuXHRmb3JtYXQoIHZhbHVlLCBvcHRpb25zICkge1xuXHRcdGxldCB2ID0gJycsXG5cdFx0XHRvcHRzID0gb3B0aW9ucyB8fCB7fTtcblxuXHRcdGlmICggdmFsdWUgfHwgdmFsdWUgPT0gMCApIHtcblx0XHRcdGlmICggdmFsdWUgaW5zdGFuY2VvZiBEYXRlIHx8IG9wdHMuZGF0ZSApIHtcblx0XHRcdFx0bGV0IGZtdCA9IHRoaXMuX2dldEZvcm1hdCggdGhpcy5hcHAudXNlci5sb2NhbGUsIG9wdHMsIHRydWUgKTtcblx0XHRcdFx0aWYgKCB2YWx1ZSBpbnN0YW5jZW9mIERhdGUgKSB7XG5cdFx0XHRcdFx0diA9IGZtdC5mb3JtYXQoIHZhbHVlICk7XG5cdFx0XHRcdH0gZWxzZSBpZiAoIHR5cGVvZiB2YWx1ZSA9PSAnbnVtYmVyJyApIHtcblx0XHRcdFx0XHR2ID0gZm10LmZvcm1hdCggbmV3IERhdGUoIHZhbHVlICkgKTtcblx0XHRcdFx0fSBlbHNlIGlmICggdHlwZW9mIHZhbHVlID09PSAnc3RyaW5nJyApIHtcblx0XHRcdFx0XHRsZXQgcG9zID0gdmFsdWUuaW5kZXhPZiggJ1QnICk7XG5cdFx0XHRcdFx0aWYoIHBvcyA+PSAwIClcblx0XHRcdFx0XHRcdHYgPSBmbXQuZm9ybWF0KCBEYXRlLnBhcnNlKCB2YWx1ZSApICk7ICAvLyBhc3N1bWUgaXQgaXMgaW4gSVNPLTg2MDEgZm9ybWF0IHdpdGggY29ycmVjdCBUWj9cblx0XHRcdFx0XHRlbHNlIHtcblx0XHRcdFx0XHRcdGxldCB5bWQgPSB2YWx1ZS5zcGxpdCggJy0nICk7XG5cdFx0XHRcdFx0XHRpZiggeW1kICYmIHltZC5sZW5ndGggPT0gMyApXG5cdFx0XHRcdFx0XHRcdHYgPSBmbXQuZm9ybWF0KCBuZXcgRGF0ZSggeW1kWzBdLCB5bWRbMV0tMSwgeW1kWzJdICkgKTtcblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblx0XHRcdH0gZWxzZSB7XG5cdFx0XHRcdGxldCBmbXQgPSB0aGlzLl9nZXRGb3JtYXQoIHRoaXMuYXBwLnVzZXIubG9jYWxlLCBvcHRzLCBmYWxzZSApO1xuXHRcdFx0XHR2ID0gZm10LmZvcm1hdCggdmFsdWUgKTtcblx0XHRcdH1cblx0XHR9XG5cdFx0cmV0dXJuIHY7XG5cdH1cbn1cblxuUG9seW1lciggSTE4biApO1xuIl19
'use strict';

System.register('common/core/sb-loading-spinner/LoadingSpinner.js', [], function (_export, _context) {
	var _createClass, LoadingSpinner;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('LoadingSpinner', LoadingSpinner = function () {
				function LoadingSpinner() {
					_classCallCheck(this, LoadingSpinner);
				}

				_createClass(LoadingSpinner, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-loading-spinner';
						this.properties = {
							show: {
								type: Boolean,
								value: false
							}
						};
					}
				}]);

				return LoadingSpinner;
			}());

			_export('LoadingSpinner', LoadingSpinner);

			Polymer(LoadingSpinner);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkxvYWRpbmdTcGlubmVyLmpzIl0sIm5hbWVzIjpbIkxvYWRpbmdTcGlubmVyIiwiaXMiLCJwcm9wZXJ0aWVzIiwic2hvdyIsInR5cGUiLCJCb29sZWFuIiwidmFsdWUiLCJQb2x5bWVyIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs2QkFBYUEsYzs7Ozs7OztzQ0FFSztBQUNoQixXQUFLQyxFQUFMLEdBQVUsb0JBQVY7QUFDQSxXQUFLQyxVQUFMLEdBQWtCO0FBQ2pCQyxhQUFNO0FBQ0xDLGNBQU1DLE9BREQ7QUFFTEMsZUFBTztBQUZGO0FBRFcsT0FBbEI7QUFNQTs7Ozs7Ozs7QUFHRkMsV0FBU1AsY0FBVCIsImZpbGUiOiJMb2FkaW5nU3Bpbm5lci5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBMb2FkaW5nU3Bpbm5lciB7XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1sb2FkaW5nLXNwaW5uZXInO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdHNob3c6IHtcblx0XHRcdFx0dHlwZTogQm9vbGVhbixcblx0XHRcdFx0dmFsdWU6IGZhbHNlXG5cdFx0XHR9XG5cdFx0fVxuXHR9XG59XG5cblBvbHltZXIoIExvYWRpbmdTcGlubmVyICk7Il19
'use strict';

System.register('common/core/sb-message-container/MessageContainer.js', [], function (_export, _context) {
    var _createClass, MessageContainer;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('MessageContainer', MessageContainer = function () {
                function MessageContainer() {
                    _classCallCheck(this, MessageContainer);
                }

                _createClass(MessageContainer, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-message-container';
                        this.properties = {
                            hasMessage: {
                                type: Boolean,
                                value: false
                            },
                            messages: {
                                type: Array,
                                value: []
                            }
                        };
                    }
                }, {
                    key: 'model',
                    value: function model() {
                        if (this.error.validations) {
                            for (var i = 0; i < this.error.validations.length; i++) {
                                this.push("messages", this.error.validations[i]);
                            }
                        } else {
                            this.push("messages", this.error.message);
                        }
                        this.hasMessage = true;
                    }
                }, {
                    key: 'validation',
                    value: function validation() {
                        if (this.messages.length > 0) {
                            this.hasMessage = true;
                        }
                    }
                }, {
                    key: 'observers',
                    get: function get() {
                        return ['model(error)', 'validation(messages)'];
                    }
                }]);

                return MessageContainer;
            }());

            _export('MessageContainer', MessageContainer);

            Polymer(MessageContainer);
        }
    };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIk1lc3NhZ2VDb250YWluZXIuanMiXSwibmFtZXMiOlsiTWVzc2FnZUNvbnRhaW5lciIsImlzIiwicHJvcGVydGllcyIsImhhc01lc3NhZ2UiLCJ0eXBlIiwiQm9vbGVhbiIsInZhbHVlIiwibWVzc2FnZXMiLCJBcnJheSIsImVycm9yIiwidmFsaWRhdGlvbnMiLCJpIiwibGVuZ3RoIiwicHVzaCIsIm1lc3NhZ2UiLCJQb2x5bWVyIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozt3Q0FBYUEsZ0I7Ozs7Ozs7cURBRVE7QUFDYiw2QkFBS0MsRUFBTCxHQUFVLHNCQUFWO0FBQ0EsNkJBQUtDLFVBQUwsR0FBa0I7QUFDZEMsd0NBQVk7QUFDUkMsc0NBQU1DLE9BREU7QUFFUkMsdUNBQU87QUFGQyw2QkFERTtBQUtkQyxzQ0FBVTtBQUNOSCxzQ0FBTUksS0FEQTtBQUVORix1Q0FBTztBQUZEO0FBTEkseUJBQWxCO0FBVUg7Ozs0Q0FNTztBQUNKLDRCQUFJLEtBQUtHLEtBQUwsQ0FBV0MsV0FBZixFQUE0QjtBQUN4QixpQ0FBSyxJQUFJQyxJQUFFLENBQVgsRUFBY0EsSUFBRSxLQUFLRixLQUFMLENBQVdDLFdBQVgsQ0FBdUJFLE1BQXZDLEVBQStDRCxHQUEvQyxFQUFvRDtBQUNoRCxxQ0FBS0UsSUFBTCxDQUFVLFVBQVYsRUFBc0IsS0FBS0osS0FBTCxDQUFXQyxXQUFYLENBQXVCQyxDQUF2QixDQUF0QjtBQUNIO0FBQ0oseUJBSkQsTUFJTztBQUNILGlDQUFLRSxJQUFMLENBQVUsVUFBVixFQUFzQixLQUFLSixLQUFMLENBQVdLLE9BQWpDO0FBQ0g7QUFDRCw2QkFBS1gsVUFBTCxHQUFrQixJQUFsQjtBQUNIOzs7aURBRVk7QUFDVCw0QkFBSSxLQUFLSSxRQUFMLENBQWNLLE1BQWQsR0FBdUIsQ0FBM0IsRUFBOEI7QUFDMUIsaUNBQUtULFVBQUwsR0FBa0IsSUFBbEI7QUFDSDtBQUNKOzs7d0NBbkJlO0FBQ1osK0JBQU0sQ0FBQyxjQUFELEVBQWlCLHNCQUFqQixDQUFOO0FBQ0g7Ozs7Ozs7O0FBb0JMWSxvQkFBU2YsZ0JBQVQiLCJmaWxlIjoiTWVzc2FnZUNvbnRhaW5lci5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBNZXNzYWdlQ29udGFpbmVyIHtcblxuICAgIGJlZm9yZVJlZ2lzdGVyKCkge1xuICAgICAgICB0aGlzLmlzID0gJ3NiLW1lc3NhZ2UtY29udGFpbmVyJztcbiAgICAgICAgdGhpcy5wcm9wZXJ0aWVzID0ge1xuICAgICAgICAgICAgaGFzTWVzc2FnZToge1xuICAgICAgICAgICAgICAgIHR5cGU6IEJvb2xlYW4sXG4gICAgICAgICAgICAgICAgdmFsdWU6IGZhbHNlXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgbWVzc2FnZXM6IHtcbiAgICAgICAgICAgICAgICB0eXBlOiBBcnJheSxcbiAgICAgICAgICAgICAgICB2YWx1ZTogW11cbiAgICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgIH1cblxuICAgIGdldCBvYnNlcnZlcnMoKSB7XG4gICAgICAgIHJldHVyblsnbW9kZWwoZXJyb3IpJywgJ3ZhbGlkYXRpb24obWVzc2FnZXMpJ107XG4gICAgfVxuXG4gICAgbW9kZWwoKSB7XG4gICAgICAgIGlmICh0aGlzLmVycm9yLnZhbGlkYXRpb25zKSB7XG4gICAgICAgICAgICBmb3IgKGxldCBpPTA7IGk8dGhpcy5lcnJvci52YWxpZGF0aW9ucy5sZW5ndGg7IGkrKykge1xuICAgICAgICAgICAgICAgIHRoaXMucHVzaChcIm1lc3NhZ2VzXCIsIHRoaXMuZXJyb3IudmFsaWRhdGlvbnNbaV0pO1xuICAgICAgICAgICAgfVxuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgdGhpcy5wdXNoKFwibWVzc2FnZXNcIiwgdGhpcy5lcnJvci5tZXNzYWdlKTtcbiAgICAgICAgfVxuICAgICAgICB0aGlzLmhhc01lc3NhZ2UgPSB0cnVlO1xuICAgIH1cblxuICAgIHZhbGlkYXRpb24oKSB7XG4gICAgICAgIGlmICh0aGlzLm1lc3NhZ2VzLmxlbmd0aCA+IDApIHtcbiAgICAgICAgICAgIHRoaXMuaGFzTWVzc2FnZSA9IHRydWU7XG4gICAgICAgIH1cbiAgICB9XG59XG5cblBvbHltZXIoIE1lc3NhZ2VDb250YWluZXIgKTsiXX0=
'use strict';

System.register('common/core/sb-page-container/PageContainer.js', [], function (_export, _context) {
	var _createClass, bpXS, bpS, bpM, bpL, bpXL, mqXS, mqSOnly, mqMOnly, mqLOnly, mqXL, PageContainer;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			bpXS = 0;
			bpS = 480;
			bpM = 768;
			bpL = 1024;
			bpXL = 1200;
			mqXS = window.matchMedia('screen and (max-width: ' + bpS + 'px)');
			mqSOnly = window.matchMedia('screen and (min-width: ' + (bpS + 1) + 'px) and (max-width: ' + bpM + 'px)');
			mqMOnly = window.matchMedia('screen and (min-width: ' + (bpM + 1) + 'px) and (max-width: ' + bpL + 'px)');
			mqLOnly = window.matchMedia('screen and (min-width: ' + (bpL + 1) + 'px) and (max-width: ' + bpXL + 'px)');
			mqXL = window.matchMedia('screen and (min-width: ' + bpXL + 'px)');

			_export('PageContainer', PageContainer = function () {
				function PageContainer() {
					_classCallCheck(this, PageContainer);
				}

				_createClass(PageContainer, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-page-container';
						this.properties = {
							route: String,

							allRoutes: {
								type: Object,
								value: function value() {
									return {};
								},
								observer: '_allRoutesChanged'
							},

							viewport: {
								type: Object,
								observer: '_viewportChanged',
								value: function value() {
									return this._buildViewport(mqXS.matches, mqSOnly.matches, mqMOnly.matches, mqLOnly.matches, mqXL.matches);
								}
							}
						};
					}
				}, {
					key: '_buildViewport',
					value: function _buildViewport(xs, s, m, l, xl) {
						var v = {
							XS: {},
							S: {},
							M: {},
							L: {},
							XL: {},
							current: function current() {
								if (this.XS.only) return { size: 'XS', window: [bpXS, bpS] };
								if (this.S.only) return { size: 'S', window: [bpS + 1, bpM] };
								if (this.M.only) return { size: 'M', window: [bpM + 1, bpL] };
								if (this.L.only) return { size: 'L', window: [bpL + 1, bpXL] };
								if (this.XL.only) return { size: 'XL', window: [bpXL, 10000] };
							}
						};

						v.XS.only = xs && !s && !m && !l && !xl;
						v.XS.down = v.XS.only;
						v.XS.up = xs || s || m || l || xl;

						v.S.only = !xs && s && !m && !l && !xl;
						v.S.down = (xs || s) && !m && !l && !xl;
						v.S.up = !xs && (s || m || l || xl);

						v.M.only = !xs && !s && m && !l && !xl;
						v.M.down = (xs || s || m) && !l && !xl;
						v.M.up = !xs && !s && (m || l || xl);

						v.L.only = !xs && !s && !m && l && !xl;
						v.L.down = (xs || s || m || l) && !xl;
						v.L.up = !xs && !s && !m && (l || xl);

						v.XL.only = !xs && !s && !m && !l && xl;
						v.XL.down = true;
						v.XL.up = v.XL.only;

						return v;
					}
				}, {
					key: 'ready',
					value: function ready() {
						this._setupViewportListeners();
					}
				}, {
					key: 'renderPage',
					value: function renderPage(e, detail, sender) {

						if (detail.route.comp && detail.route.comp != '') {
							var ctx = {};
							ctx.params = detail.params;
							ctx.pathParams = detail.pathParams;

							var html = function (detail, ctx) {
								return '<' + detail.route.comp + ' ctx=\'' + JSON.stringify(ctx) + '\'></' + detail.route.comp + '>';
							}.bind(this)(detail, ctx);
							if (detail.route.mod) {
								System.import(detail.route.mod).then(function (m) {
									this.$.content.innerHTML = html;
									this._viewportChanged();
									Polymer.updateStyles();
								}.bind(this)).catch(function (err) {
									console.log(err);
									console.log(err.originalErr);
								});
							} else {
								this.$.content.innerHTML = html;
								Polymer.updateStyles();
							}
						} else {
							this.$.ajax.url = detail.route.view;
							if (this.$.ajax.url) this.$.ajax.go();
						}
					}
				}, {
					key: '_allRoutesChanged',
					value: function _allRoutesChanged(nv) {
						this.$.router.init(nv);
					}
				}, {
					key: '_viewportChanged',
					value: function _viewportChanged() {
						var el = this.$.content.querySelector('*:first-child');
						if (el) el.viewport = this.viewport;

						setTimeout(function () {
							this.fire('sb-viewport-changed', { viewport: this.viewport });
						}.bind(this), 10);
					}
				}, {
					key: '_setupViewportListeners',
					value: function _setupViewportListeners() {
						var self = this;
						function build(m) {
							if (m.matches) self.viewport = self._buildViewport(mqXS.matches, mqSOnly.matches, mqMOnly.matches, mqLOnly.matches, mqXL.matches);
						};

						mqXS.addListener(build);
						mqSOnly.addListener(build);
						mqMOnly.addListener(build);
						mqLOnly.addListener(build);
						mqXL.addListener(build);
					}
				}]);

				return PageContainer;
			}());

			_export('PageContainer', PageContainer);

			PageContainer.domId = 'sbPageContainer';

			Polymer(PageContainer);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlBhZ2VDb250YWluZXIuanMiXSwibmFtZXMiOlsiYnBYUyIsImJwUyIsImJwTSIsImJwTCIsImJwWEwiLCJtcVhTIiwid2luZG93IiwibWF0Y2hNZWRpYSIsIm1xU09ubHkiLCJtcU1Pbmx5IiwibXFMT25seSIsIm1xWEwiLCJQYWdlQ29udGFpbmVyIiwiaXMiLCJwcm9wZXJ0aWVzIiwicm91dGUiLCJTdHJpbmciLCJhbGxSb3V0ZXMiLCJ0eXBlIiwiT2JqZWN0IiwidmFsdWUiLCJvYnNlcnZlciIsInZpZXdwb3J0IiwiX2J1aWxkVmlld3BvcnQiLCJtYXRjaGVzIiwieHMiLCJzIiwibSIsImwiLCJ4bCIsInYiLCJYUyIsIlMiLCJNIiwiTCIsIlhMIiwiY3VycmVudCIsIm9ubHkiLCJzaXplIiwiZG93biIsInVwIiwiX3NldHVwVmlld3BvcnRMaXN0ZW5lcnMiLCJlIiwiZGV0YWlsIiwic2VuZGVyIiwiY29tcCIsImN0eCIsInBhcmFtcyIsInBhdGhQYXJhbXMiLCJodG1sIiwiSlNPTiIsInN0cmluZ2lmeSIsImJpbmQiLCJtb2QiLCJTeXN0ZW0iLCJpbXBvcnQiLCJ0aGVuIiwiJCIsImNvbnRlbnQiLCJpbm5lckhUTUwiLCJfdmlld3BvcnRDaGFuZ2VkIiwiUG9seW1lciIsInVwZGF0ZVN0eWxlcyIsImNhdGNoIiwiZXJyIiwiY29uc29sZSIsImxvZyIsIm9yaWdpbmFsRXJyIiwiYWpheCIsInVybCIsInZpZXciLCJnbyIsIm52Iiwicm91dGVyIiwiaW5pdCIsImVsIiwicXVlcnlTZWxlY3RvciIsInNldFRpbWVvdXQiLCJmaXJlIiwic2VsZiIsImJ1aWxkIiwiYWRkTGlzdGVuZXIiLCJkb21JZCJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFDSUEsTyxHQUFPLEM7QUFBR0MsTSxHQUFNLEc7QUFBS0MsTSxHQUFNLEc7QUFBS0MsTSxHQUFNLEk7QUFBTUMsTyxHQUFPLEk7QUFDckRDLE8sR0FBT0MsT0FBT0MsVUFB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QVFlLE9BQTVELEVBQXFFZCxRQUFRYyxPQUE3RSxFQUFzRmIsS0FBS2EsT0FBM0YsQ0FBaEI7QUFDRDs7QUFFRG5CLFdBQUs0RSxXQUFMLENBQWtCRCxLQUFsQjtBQUNBeEUsY0FBUXlFLFdBQVIsQ0FBcUJELEtBQXJCO0FBQ0F2RSxjQUFRd0UsV0FBUixDQUFxQkQsS0FBckI7QUFDQXRFLGNBQVF1RSxXQUFSLENBQXFCRCxLQUFyQjtBQUNBckUsV0FBS3NFLFdBQUwsQ0FBa0JELEtBQWxCO0FBQ0E7Ozs7Ozs7O0FBSUZwRSxpQkFBY3NFLEtBQWQsR0FBc0IsaUJBQXRCOztBQUVBckIsV0FBU2pELGFBQVQiLCJmaWxlIjoiUGFnZUNvbnRhaW5lci5qcyIsInNvdXJjZXNDb250ZW50IjpbIi8vIE1lZGlhIFF1ZXJ5IGJyZWFrcG9pbnRzLiAgVGhlc2UgbmVlZCB0byBiZSBrZXB0IGluIHN5bmMgd2l0aCB2YXJpYWJsZXMubGVzcy5cbmxldCBicFhTID0gMCwgYnBTID0gNDgwLCBicE0gPSA3NjgsIGJwTCA9IDEwMjQsIGJwWEwgPSAxMjAwLFxuXHRcdG1xWFMgPSB3aW5kb3cubWF0Y2hNZWRpYSggJ3NjcmVlbiBhbmQgKG1heC13aWR0aDogJyArIGJwUyArICdweCknICksXG5cdFx0bXFTT25seSA9IHdpbmRvdy5tYXRjaE1lZGlhKCAnc2NyZWVuIGFuZCAobWluLXdpZHRoOiAnICsgKGJwUyArIDEpICsgJ3B4KSBhbmQgKG1heC13aWR0aDogJyArIGJwTSArICdweCknICksXG5cdFx0bXFNT25seSA9IHdpbmRvdy5tYXRjaE1lZGlhKCAnc2NyZWVuIGFuZCAobWluLXdpZHRoOiAnICsgKGJwTSArIDEpICsgJ3B4KSBhbmQgKG1heC13aWR0aDogJyArIGJwTCArICdweCknICksXG5cdFx0bXFMT25seSA9IHdpbmRvdy5tYXRjaE1lZGlhKCAnc2NyZWVuIGFuZCAobWluLXdpZHRoOiAnICsgKGJwTCArIDEpICsgJ3B4KSBhbmQgKG1heC13aWR0aDogJyArIGJwWEwgKyAncHgpJyApLFxuXHRcdC8vIEFBIEZpeCB0byByZXNvbHZlIGJ1dHRvbiByZW5kZXJpbmcgaXNzdWVcblx0XHRtcVhMID0gd2luZG93Lm1hdGNoTWVkaWEoICdzY3JlZW4gYW5kIChtaW4td2lkdGg6ICcgKyBicFhMICsgJ3B4KScgKTtcblxuZXhwb3J0IGNsYXNzIFBhZ2VDb250YWluZXIge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItcGFnZS1jb250YWluZXInO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdHJvdXRlOiBTdHJpbmcsXG5cblx0XHRcdGFsbFJvdXRlczoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIHt9OyB9LFxuXHRcdFx0XHRvYnNlcnZlcjogJ19hbGxSb3V0ZXNDaGFuZ2VkJ1xuXHRcdFx0fSxcblxuXHRcdFx0dmlld3BvcnQ6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHRvYnNlcnZlcjogJ192aWV3cG9ydENoYW5nZWQnLFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7XG5cdFx0XHRcdFx0cmV0dXJuIHRoaXMuX2J1aWxkVmlld3BvcnQoIG1xWFMubWF0Y2hlcywgbXFTT25seS5tYXRjaGVzLCBtcU1Pbmx5Lm1hdGNoZXMsIG1xTE9ubHkubWF0Y2hlcywgbXFYTC5tYXRjaGVzICk7XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHRfYnVpbGRWaWV3cG9ydCggeHMsIHMsIG0sIGwsIHhsICkge1xuXHRcdGxldCB2ID0ge1xuXHRcdFx0WFM6IHt9LFxuXHRcdFx0Uzoge30sXG5cdFx0XHRNOiB7fSxcblx0XHRcdEw6IHt9LFxuXHRcdFx0WEw6IHt9LFxuXHRcdFx0Y3VycmVudDogZnVuY3Rpb24oKSB7XG5cdFx0XHRcdGlmKHRoaXMuWFMub25seSlcblx0XHRcdFx0XHRyZXR1cm4ge3NpemU6ICdYUycsIHdpbmRvdzogW2JwWFMsIGJwU119O1xuXHRcdFx0XHRpZih0aGlzLlMub25seSlcblx0XHRcdFx0XHRyZXR1cm4ge3NpemU6ICdTJywgd2luZG93OiBbYnBTICsgMSwgYnBNXX07XG5cdFx0XHRcdGlmKHRoaXMuTS5vbmx5KVxuXHRcdFx0XHRcdHJldHVybiB7c2l6ZTogJ00nLCB3aW5kb3c6IFticE0gKyAxLCBicExdfTtcblx0XHRcdFx0aWYodGhpcy5MLm9ubHkpXG5cdFx0XHRcdFx0cmV0dXJuIHtzaXplOiAnTCcsIHdpbmRvdzogW2JwTCArIDEsIGJwWExdfTtcblx0XHRcdFx0aWYodGhpcy5YTC5vbmx5KVxuXHRcdFx0XHRcdHJldHVybiB7c2l6ZTogJ1hMJywgd2luZG93OiBbYnBYTCwgMTAwMDBdfTtcblx0XHRcdH1cblx0XHR9O1xuXG5cdFx0di5YUy5vbmx5ID0geHMgJiYgIXMgJiYgIW0gJiYgIWwgJiYgIXhsO1xuXHRcdHYuWFMuZG93biA9IHYuWFMub25seTtcblx0XHR2LlhTLnVwID0geHMgfHwgcyB8fCBtIHx8IGwgfHwgeGw7XG5cblx0XHR2LlMub25seSA9ICF4cyAmJiBzICYmICFtICYmICFsICYmICF4bDtcblx0XHR2LlMuZG93biA9ICh4cyB8fCBzKSAmJiAhbSAmJiAhbCAmJiAheGw7XG5cdFx0di5TLnVwID0gIXhzICYmIChzIHx8IG0gfHwgbCB8fCB4bCk7XG5cblx0XHR2Lk0ub25seSA9ICF4cyAmJiAhcyAmJiBtICYmICFsICYmICF4bDtcblx0XHR2Lk0uZG93biA9ICh4cyB8fCBzIHx8IG0pICYmICFsICYmICF4bDtcblx0XHR2Lk0udXAgPSAheHMgJiYgIXMgJiYgKG0gfHwgbCB8fCB4bCk7XG5cblx0XHR2Lkwub25seSA9ICF4cyAmJiAhcyAmJiAhbSAmJiBsICYmICF4bDtcblx0XHR2LkwuZG93biA9ICh4cyB8fCBzIHx8IG0gfHwgbCkgJiYgIXhsO1xuXHRcdHYuTC51cCA9ICF4cyAmJiAhcyAmJiAhbSAmJiAobCB8fCB4bCk7XG5cblx0XHR2LlhMLm9ubHkgPSAheHMgJiYgIXMgJiYgIW0gJiYgIWwgJiYgeGw7XG5cdFx0di5YTC5kb3duID0gdHJ1ZTtcblx0XHR2LlhMLnVwID0gdi5YTC5vbmx5O1xuXG5cdFx0cmV0dXJuIHY7XG5cdH1cblxuXHRyZWFkeSgpIHtcblx0XHR0aGlzLl9zZXR1cFZpZXdwb3J0TGlzdGVuZXJzKCk7XG5cdH1cblxuXHRyZW5kZXJQYWdlKCBlLCBkZXRhaWwsIHNlbmRlciApIHtcblxuXHRcdGlmKCBkZXRhaWwucm91dGUuY29tcCAmJiBkZXRhaWwucm91dGUuY29tcCAhPSAnJyApIHtcblx0XHRcdGxldCBjdHggPSB7fTtcblx0XHRcdGN0eC5wYXJhbXMgPSBkZXRhaWwucGFyYW1zO1xuXHRcdFx0Y3R4LnBhdGhQYXJhbXMgPSBkZXRhaWwucGF0aFBhcmFtcztcblxuXHRcdFx0Ly8gZHluYW1pY2FsbHkgYWRkIGNvbXBvbmVudFxuXHRcdFx0Ly8gdG9kbzogdW5iaW5kIHN0dWZmP1xuXHRcdFx0bGV0IGh0bWwgPSAoZnVuY3Rpb24oZGV0YWlsLCBjdHgpIHtcblx0XHRcdFx0cmV0dXJuICc8JyArIGRldGFpbC5yb3V0ZS5jb21wICsgJyBjdHg9XFwnJyArIEpTT04uc3RyaW5naWZ5KGN0eCkgKyAnXFwnPjwvJyArIGRldGFpbC5yb3V0ZS5jb21wICsgJz4nO1xuXHRcdFx0fS5iaW5kKHRoaXMpKShkZXRhaWwsIGN0eCk7XG5cdFx0XHRpZiggZGV0YWlsLnJvdXRlLm1vZCApIHtcblx0XHRcdFx0U3lzdGVtLmltcG9ydCggZGV0YWlsLnJvdXRlLm1vZCApLnRoZW4oIGZ1bmN0aW9uKG0pIHtcblx0XHRcdFx0XHR0aGlzLiQuY29udGVudC5pbm5lckhUTUwgPSBodG1sO1xuXHRcdFx0XHRcdHRoaXMuX3ZpZXdwb3J0Q2hhbmdlZCgpOyAvLyB1cGRhdGUgdGhlIFBhZ2UncyB2aWV3cG9ydFxuXHRcdFx0XHRcdFBvbHltZXIudXBkYXRlU3R5bGVzKCk7XG5cdFx0XHRcdH0uYmluZCh0aGlzKSApLmNhdGNoKCBmdW5jdGlvbihlcnIpe1xuXHRcdFx0XHRcdGNvbnNvbGUubG9nKCBlcnIgKTtcblx0XHRcdFx0XHRjb25zb2xlLmxvZyggZXJyLm9yaWdpbmFsRXJyICk7XG5cdFx0XHRcdH0pO1xuXHRcdFx0fVxuXHRcdFx0ZWxzZSB7XG5cdFx0XHRcdHRoaXMuJC5jb250ZW50LmlubmVySFRNTCA9IGh0bWw7XG5cdFx0XHRcdFBvbHltZXIudXBkYXRlU3R5bGVzKCk7XG5cdFx0XHR9XG5cdFx0fVxuXHRcdGVsc2Uge1xuXHRcdFx0Ly8gbG9hZCB2aWV3IEhUTUwgZmlsZSAtIHRvZG86IGNhY2hlXG5cdFx0XHR0aGlzLiQuYWpheC51cmwgPSBkZXRhaWwucm91dGUudmlldztcblx0XHRcdGlmKCB0aGlzLiQuYWpheC51cmwgKVxuXHRcdFx0dGhpcy4kLmFqYXguZ28oKTtcblx0XHR9XG5cdH1cblxuXHRfYWxsUm91dGVzQ2hhbmdlZCggbnYgKSB7XG5cdFx0dGhpcy4kLnJvdXRlci5pbml0KCBudiApO1xuXHR9XG5cblx0X3ZpZXdwb3J0Q2hhbmdlZCgpIHtcblx0XHQvLyBwYXNzIGRvd24gdGhlIG5ldyB2YWx1ZSB0byB0aGUgcGFnZSBpbnN0YW5jZSBhbmQgZmlyZSBldmVudCBmb3IgYW55IG90aGVyIFdDJ3MgdGhhdCBtYXkgYmUgbGlzdGVuaW5nXG5cdFx0bGV0IGVsID0gdGhpcy4kLmNvbnRlbnQucXVlcnlTZWxlY3RvciggJyo6Zmlyc3QtY2hpbGQnICk7XG5cdFx0aWYoIGVsICkgZWwudmlld3BvcnQgPSB0aGlzLnZpZXdwb3J0O1xuXG5cdFx0Ly8gc29tZSBicm93c2VycyAoZS5nLiBGaXJlZm94KSBuZWVkIHRoaXMgc2V0VGltZW91dCB0byBicmVhayB0aGUgZXZlbnQgbG9vcFxuXHRcdHNldFRpbWVvdXQoIGZ1bmN0aW9uKCkge1xuXHRcdFx0dGhpcy5maXJlKCAnc2Itdmlld3BvcnQtY2hhbmdlZCcsIHsgdmlld3BvcnQ6IHRoaXMudmlld3BvcnQgfSApO1xuXHRcdH0uYmluZCh0aGlzKSwgMTAgKTtcblx0fVxuXG5cdC8vIFdlIGxpc3RlbmVyIGZvciBNUSBzdHVmZiBoZXJlIGFuZCBwYXNzIGl0IGRvd24gdG8gcGFnZSBzbyB3ZSBkb24ndCBoYXZlIHRvIGRvIHRoaXMgZXZlcnkgdGltZSB3ZSBjcmVhdGUgYSBuZXcgUGFnZVxuXHRfc2V0dXBWaWV3cG9ydExpc3RlbmVycygpIHtcblx0XHR2YXIgc2VsZiA9IHRoaXM7XG5cdFx0ZnVuY3Rpb24gYnVpbGQobSkge1xuXHRcdFx0aWYoIG0ubWF0Y2hlcyApXG5cdFx0XHRcdHNlbGYudmlld3BvcnQgPSBzZWxmLl9idWlsZFZpZXdwb3J0KCBtcVhTLm1hdGNoZXMsIG1xU09ubHkubWF0Y2hlcywgbXFNT25seS5tYXRjaGVzLCBtcUxPbmx5Lm1hdGNoZXMsIG1xWEwubWF0Y2hlcyApO1xuXHRcdH07XG5cblx0XHRtcVhTLmFkZExpc3RlbmVyKCBidWlsZCApO1xuXHRcdG1xU09ubHkuYWRkTGlzdGVuZXIoIGJ1aWxkICk7XG5cdFx0bXFNT25seS5hZGRMaXN0ZW5lciggYnVpbGQgKTtcblx0XHRtcUxPbmx5LmFkZExpc3RlbmVyKCBidWlsZCApO1xuXHRcdG1xWEwuYWRkTGlzdGVuZXIoIGJ1aWxkICk7XG5cdH1cbn1cblxuLy8gdGhlIGlkIHVzZWQgaW4gdGhlIERPTSBmb3IgdGhpcyBlbGVtZW50XG5QYWdlQ29udGFpbmVyLmRvbUlkID0gJ3NiUGFnZUNvbnRhaW5lcic7XG5cblBvbHltZXIoIFBhZ2VDb250YWluZXIgKTtcbiJdfQ==
'use strict';

System.register('common/core/sb-page-header/PageHeader.js', ['common/core/sb-page-container/PageContainer.js'], function (_export, _context) {
	var PageContainer, _createClass, PageHeader;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_commonCoreSbPageContainerPageContainerJs) {
			PageContainer = _commonCoreSbPageContainerPageContainerJs.PageContainer;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('PageHeader', PageHeader = function () {
				function PageHeader() {
					_classCallCheck(this, PageHeader);
				}

				_createClass(PageHeader, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-page-header';
						this.properties = {
							viewport: {
								type: Object,
								observer: '_viewportChanged'
							},
							showMenu: {
								type: Boolean,
								value: function value() {
									return true;
								}
							}
						};
					}
				}, {
					key: 'ready',
					value: function ready() {
						var con = document.querySelector('#' + PageContainer.domId);
						if (con) {
							con.addEventListener('sb-viewport-changed', function (e) {
								this.viewport = e.detail.viewport;
							}.bind(this));
						}
					}
				}, {
					key: '_openMenu',
					value: function _openMenu(e) {
						var rect = e.currentTarget.getBoundingClientRect(),
						    bs = this.$.buttons.style;

						bs.top = rect.bottom + 2 + 'px';
						bs.right = window.innerWidth - rect.right + 'px';
						this.$.buttons.classList.add('open');
						this.$.menuMask.style.display = 'block';
					}
				}, {
					key: '_closeMenu',
					value: function _closeMenu() {
						this.$.buttons.classList.remove('open');
						this.$.menuMask.style.display = 'none';
					}
				}, {
					key: '_viewportChanged',
					value: function _viewportChanged() {
						this.showMenu = this.viewport && this.viewport.M.up ? false : true;
						if (this.showMenu) this.$.buttons.classList.remove('normal');else this.$.buttons.classList.add('normal');
					}
				}]);

				return PageHeader;
			}());

			_export('PageHeader', PageHeader);

			Polymer(PageHeader);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlBhZ2VIZWFkZXIuanMiXSwibmFtZXMiOlsiUGFnZUNvbnRhaW5lciIsIlBhZ2VIZWFkZXIiLCJpcyIsInByb3BlcnRpZXMiLCJ2aWV3cG9ydCIsInR5cGUiLCJPYmplY3QiLCJvYnNlcnZlciIsInNob3dNZW51IiwiQm9vbGVhbiIsInZhbHVlIiwiY29uIiwiZG9jdW1lbnQiLCJxdWVyeVNlbGVjdG9yIiwiZG9tSWQiLCJhZGRFdmVudExpc3RlbmVyIiwiZSIsImRldGFpbCIsImJpbmQiLCJyZWN0IiwiY3VycmVudFRhcmdldCIsImdldEJvdW5kaW5nQ2xpZW50UmVjdCIsImJzIiwiJCIsImJ1dHRvbnMiLCJzdHlsZSIsInRvcCIsImJvdHRvbSIsInJpZ2h0Iiwid2luZG93IiwiaW5uZXJXaWR0aCIsImNsYXNzTGlzdCIsImFkZCIsIm1lbnVNYXNrIiwiZGlzcGxheSIsInJlbW92ZSIsIk0iLCJ1cCIsIlBvbHltZXIiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7QUFBUUEsZ0IsNkNBQUFBLGE7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozt5QkFFS0MsVTs7Ozs7OztzQ0FFSztBQUNoQixXQUFLQyxFQUFMLEdBQVUsZ0JBQVY7QUFDQSxXQUFLQyxVQUFMLEdBQWtCO0FBS2pCQyxpQkFBVTtBQUNUQyxjQUFNQyxNQURHO0FBRVRDLGtCQUFVO0FBRkQsUUFMTztBQVNqQkMsaUJBQVU7QUFDVEgsY0FBTUksT0FERztBQUVUQyxlQUFPLGlCQUFXO0FBQUUsZ0JBQU8sSUFBUDtBQUFjO0FBRnpCO0FBVE8sT0FBbEI7QUFjQTs7OzZCQUVPO0FBQ1AsVUFBSUMsTUFBTUMsU0FBU0MsYUFBVCxDQUF3QixNQUFNYixjQUFjYyxLQUE1QyxDQUFWO0FBQ0EsVUFBSUgsR0FBSixFQUFVO0FBQ1RBLFdBQUlJLGdCQUFKLENBQXNCLHFCQUF0QixFQUE2QyxVQUFTQyxDQUFULEVBQVk7QUFDeEQsYUFBS1osUUFBTCxHQUFnQlksRUFBRUMsTUFBRixDQUFTYixRQUF6QjtBQUNBLFFBRjRDLENBRTNDYyxJQUYyQyxDQUV0QyxJQUZzQyxDQUE3QztBQUdBO0FBQ0Q7OzsrQkFFU0YsQyxFQUFHO0FBQ1osVUFBSUcsT0FBT0gsRUFBRUksYUFBRixDQUFnQkMscUJBQWhCLEVBQVg7QUFBQSxVQUNFQyxLQUFLLEtBQUtDLENBQUwsQ0FBT0MsT0FBUCxDQUFlQyxLQUR0Qjs7QUFHQUgsU0FBR0ksR0FBSCxHQUFVUCxLQUFLUSxNQUFMLEdBQVksQ0FBYixHQUFrQixJQUEzQjtBQUNBTCxTQUFHTSxLQUFILEdBQVlDLE9BQU9DLFVBQVAsR0FBb0JYLEtBQUtTLEtBQTFCLEdBQW1DLElBQTlDO0FBQ0EsV0FBS0wsQ0FBTCxDQUFPQyxPQUFQLENBQWVPLFNBQWYsQ0FBeUJDLEdBQXpCLENBQThCLE1BQTlCO0FBQ0EsV0FBS1QsQ0FBTCxDQUFPVSxRQUFQLENBQWdCUixLQUFoQixDQUFzQlMsT0FBdEIsR0FBZ0MsT0FBaEM7QUFDQTs7O2tDQUVZO0FBQ1osV0FBS1gsQ0FBTCxDQUFPQyxPQUFQLENBQWVPLFNBQWYsQ0FBeUJJLE1BQXpCLENBQWlDLE1BQWpDO0FBQ0EsV0FBS1osQ0FBTCxDQUFPVSxRQUFQLENBQWdCUixLQUFoQixDQUFzQlMsT0FBdEIsR0FBZ0MsTUFBaEM7QUFDQTs7O3dDQUVrQjtBQUVsQixXQUFLMUIsUUFBTCxHQUFnQixLQUFLSixRQUFMLElBQWlCLEtBQUtBLFFBQUwsQ0FBY2dDLENBQWQsQ0FBZ0JDLEVBQWpDLEdBQXNDLEtBQXRDLEdBQThDLElBQTlEO0FBQ0EsVUFBSSxLQUFLN0IsUUFBVCxFQUNDLEtBQUtlLENBQUwsQ0FBT0MsT0FBUCxDQUFlTyxTQUFmLENBQXlCSSxNQUF6QixDQUFpQyxRQUFqQyxFQURELEtBR0MsS0FBS1osQ0FBTCxDQUFPQyxPQUFQLENBQWVPLFNBQWYsQ0FBeUJDLEdBQXpCLENBQThCLFFBQTlCO0FBQ0Q7Ozs7Ozs7O0FBR0ZNLFdBQVNyQyxVQUFUIiwiZmlsZSI6IlBhZ2VIZWFkZXIuanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1BhZ2VDb250YWluZXJ9IGZyb20gJ2NvbW1vbi9jb3JlL3NiLXBhZ2UtY29udGFpbmVyL1BhZ2VDb250YWluZXIuanMnO1xuXG5leHBvcnQgY2xhc3MgUGFnZUhlYWRlciB7XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1wYWdlLWhlYWRlcic7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0ge1xuXHRcdFx0LyoqXG5cdFx0XHQgKiBWaWV3cG9ydCBpbmZvcm1hdGlvbiBmb3IgdGhpbmdzIGxpa2UgVC1zaGlydCBzaXplIChTLCBNLCBMLCBYTClcblx0XHRcdCAqIEB0eXBlIHtPYmplY3R9XG5cdFx0XHQgKi9cblx0XHRcdHZpZXdwb3J0OiB7XG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0b2JzZXJ2ZXI6ICdfdmlld3BvcnRDaGFuZ2VkJ1xuXHRcdFx0fSxcblx0XHRcdHNob3dNZW51OiB7XG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIHRydWU7IH1cblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHRyZWFkeSgpIHtcblx0XHR2YXIgY29uID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvciggJyMnICsgUGFnZUNvbnRhaW5lci5kb21JZCApO1xuXHRcdGlmKCBjb24gKSB7XG5cdFx0XHRjb24uYWRkRXZlbnRMaXN0ZW5lciggJ3NiLXZpZXdwb3J0LWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdHRoaXMudmlld3BvcnQgPSBlLmRldGFpbC52aWV3cG9ydDtcblx0XHRcdH0uYmluZCh0aGlzKSk7XG5cdFx0fVxuXHR9XG5cblx0X29wZW5NZW51KGUpIHtcblx0XHRsZXQgcmVjdCA9IGUuY3VycmVudFRhcmdldC5nZXRCb3VuZGluZ0NsaWVudFJlY3QoKSxcblx0XHRcdFx0YnMgPSB0aGlzLiQuYnV0dG9ucy5zdHlsZTtcblxuXHRcdGJzLnRvcCA9IChyZWN0LmJvdHRvbSsyKSArICdweCc7XG5cdFx0YnMucmlnaHQgPSAod2luZG93LmlubmVyV2lkdGggLSByZWN0LnJpZ2h0KSArICdweCc7XG5cdFx0dGhpcy4kLmJ1dHRvbnMuY2xhc3NMaXN0LmFkZCggJ29wZW4nICk7XG5cdFx0dGhpcy4kLm1lbnVNYXNrLnN0eWxlLmRpc3BsYXkgPSAnYmxvY2snO1xuXHR9XG5cblx0X2Nsb3NlTWVudSgpIHtcblx0XHR0aGlzLiQuYnV0dG9ucy5jbGFzc0xpc3QucmVtb3ZlKCAnb3BlbicgKTtcblx0XHR0aGlzLiQubWVudU1hc2suc3R5bGUuZGlzcGxheSA9ICdub25lJztcblx0fVxuXG5cdF92aWV3cG9ydENoYW5nZWQoKSB7XG5cdFx0Ly8gbmVlZCBhbiBleHBsaWNpdCBib29sZWFuICsgQ1NTIGhlcmUgc28gd2UgZG9uJ3QgaGF2ZSByYWNlIGNvbmRpdGlvbiB3aXRoIGRvbS1pZlxuXHRcdHRoaXMuc2hvd01lbnUgPSB0aGlzLnZpZXdwb3J0ICYmIHRoaXMudmlld3BvcnQuTS51cCA/IGZhbHNlIDogdHJ1ZTtcblx0XHRpZiggdGhpcy5zaG93TWVudSApXG5cdFx0XHR0aGlzLiQuYnV0dG9ucy5jbGFzc0xpc3QucmVtb3ZlKCAnbm9ybWFsJyApO1xuXHRcdGVsc2Vcblx0XHRcdHRoaXMuJC5idXR0b25zLmNsYXNzTGlzdC5hZGQoICdub3JtYWwnICk7XG5cdH1cbn1cblxuUG9seW1lciggUGFnZUhlYWRlciApO1xuIl19
'use strict';

System.register('common/core/sb-router/Router.js', [], function (_export, _context) {
	var _createClass, private_router, routes, PATH_PARAM_REGEX, Router;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			private_router = void 0;
			routes = void 0;
			PATH_PARAM_REGEX = /:[a-z0-9_$]*/g;

			_export('Router', Router = function () {
				function Router() {
					_classCallCheck(this, Router);
				}

				_createClass(Router, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-router';
						this.properties = {
							autoHash: {
								type: Boolean,
								value: function value() {
									return false;
								}
							},

							route: {
								type: String,
								observer: 'routeChanged'
							},

							router: {
								type: Object,
								readOnly: true,
								value: function value() {
									if (!private_router) {
										private_router = new window.Router();
										private_router.init();
									}
									return private_router;
								}
							}
						};
					}
				}, {
					key: 'init',
					value: function init(allRoutes) {
						var _this = this;

						var modules = Object.keys(allRoutes);

						if (!routes && modules.length) {
							routes = allRoutes;
							var router = this.router,
							    len = modules ? modules.length : 0;

							for (var i = 0; i < len; i++) {
								var mod = modules[i],
								    modulePaths = Object.keys(routes[mod]),
								    pLen = modulePaths ? modulePaths.length : 0;

								var _loop = function _loop(p) {
									var path = modulePaths[p],
									    pathParams = path ? path.match(PATH_PARAM_REGEX) : null,
									    paramNames = [],
									    paramMap = {};

									if (pathParams) {
										paramNames = pathParams.map(function (val, index) {
											var p = val.substring(1);
											paramMap[p] = null;
											return p;
										});
									}

									router.on(mod + path, function (m, p, paramNames, paramMap) {
										var pathParams = JSON.parse(JSON.stringify(paramMap)),
										    params = Array.prototype.slice.call(arguments, 4),
										    paramsLen = params ? params.length : 0;

										for (var j = 0; j < paramsLen; j++) {
											pathParams[paramNames[j]] = params[j];
										}this.routeHandler(m, p, pathParams);
									}.bind(_this, mod, path, paramNames, paramMap));
								};

								for (var p = 0; p < pLen; p++) {
									_loop(p);
								}
							}

							router.on('/*', function () {
								console.log('got an unknown route. need to show 404 here');
							});

							router.on('', function () {
								console.log('Got the <empty> route');
							});
						}
					}
				}, {
					key: 'routeHandler',
					value: function routeHandler(mod, path, params) {
						var hash = window.location.hash.slice(1),
						    pos = hash.indexOf('?'),
						    qsParams = {};

						if (pos >= 0 && hash.length > pos) {
							qsParams = queryString.parse(hash.substring(pos + 1));
						}
						this.fire('sb-route-complete', { mod: mod, path: path, route: routes[mod][path], pathParams: params, params: qsParams });
					}
				}, {
					key: 'routeChanged',
					value: function routeChanged(nv, ov) {
						if (this.autoHash && nv) {
							var same = window.location.hash.slice(1) == this.route;
							window.location.hash = this.route;

							if (same) this.router.dispatch('on', nv);
						}
					}
				}]);

				return Router;
			}());

			_export('Router', Router);

			Polymer(Router);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlJvdXRlci5qcyJdLCJuYW1lcyI6WyJwcml2YXRlX3JvdXRlciIsInJvdXRlcyIsIlBBVEhfUEFSQU1fUkVHRVgiLCJSb3V0ZXIiLCJpcyIsInByb3BlcnRpZXMiLCJhdXRvSGFzaCIsInR5cGUiLCJCb29sZWFuIiwidmFsdWUiLCJyb3V0ZSIsIlN0cmluZyIsIm9ic2VydmVyIiwicm91dGVyIiwiT2JqZWN0IiwicmVhZE9ubHkiLCJ3aW5kb3ciLCJpbml0IiwiYWxsUm91dGVzIiwibW9kdWxlcyIsImtleXMiLCJsZW5ndGgiLCJsZW4iLCJpIiwibW9kIiwibW9kdWxlUGF0aHMiLCJwTGVuIiwicCIsInBhdGgiLCJwYXRoUGFyYW1zIiwibWF0Y2giLCJwYXJhbU5hbWVzIiwicGFyYW1NYXAiLCJtYXAiLCJ2YWwiLCJpbmRleCIsInN1YnN0cmluZyIsIm9uIiwibSIsIkpTT04iLCJwYXJzZSIsInN0cmluZ2lmeSIsInBhcmFtcyIsIkFycmF5IiwicHJvdG90eXBlIiwic2xpY2UiLCJjYWxsIiwiYXJndW1lbnRzIiwicGFyYW1zTGVuIiwiaiIsInJvdXRlSGFuZGxlciIsImJpbmQiLCJjb25zb2xlIiwibG9nIiwiaGFzaCIsImxvY2F0aW9uIiwicG9zIiwiaW5kZXhPZiIsInFzUGFyYW1zIiwicXVlcnlTdHJpbmciLCJmaXJlIiwibnYiLCJvdiIsInNhbWUiLCJkaXNwYXRjaCIsIlBvbHltZXIiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBQUlBLGlCO0FBQ0ZDLFM7QUFDQUMsbUIsR0FBbUIsZTs7cUJBRVJDLE07Ozs7Ozs7c0NBRUs7QUFDaEIsV0FBS0MsRUFBTCxHQUFVLFdBQVY7QUFDQSxXQUFLQyxVQUFMLEdBQWtCO0FBQ2pCQyxpQkFBVTtBQUNUQyxjQUFNQyxPQURHO0FBRVRDLGVBQU8saUJBQVc7QUFBRSxnQkFBTyxLQUFQO0FBQWU7QUFGMUIsUUFETzs7QUFNakJDLGNBQU87QUFDTkgsY0FBTUksTUFEQTtB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QUdBO0FBQ0Q7OztrQ0FHYTdCLEcsRUFBS0ksSSxFQUFNYyxNLEVBQVM7QUFFakMsVUFBSVksT0FBT3RDLE9BQU91QyxRQUFQLENBQWdCRCxJQUFoQixDQUFxQlQsS0FBckIsQ0FBMkIsQ0FBM0IsQ0FBWDtBQUFBLFVBQ0FXLE1BQU1GLEtBQUtHLE9BQUwsQ0FBYyxHQUFkLENBRE47QUFBQSxVQUVBQyxXQUFXLEVBRlg7O0FBSUEsVUFBSUYsT0FBTyxDQUFQLElBQVlGLEtBQUtqQyxNQUFMLEdBQWNtQyxHQUE5QixFQUFvQztBQUVuQ0Usa0JBQVdDLFlBQVluQixLQUFaLENBQW1CYyxLQUFLbEIsU0FBTCxDQUFnQm9CLE1BQUksQ0FBcEIsQ0FBbkIsQ0FBWDtBQUNBO0FBQ0QsV0FBS0ksSUFBTCxDQUFXLG1CQUFYLEVBQWdDLEVBQUNwQyxLQUFLQSxHQUFOLEVBQVdJLE1BQU1BLElBQWpCLEVBQXVCbEIsT0FBT1QsT0FBT3VCLEdBQVAsRUFBWUksSUFBWixDQUE5QixFQUFpREMsWUFBWWEsTUFBN0QsRUFBcUVBLFFBQVFnQixRQUE3RSxFQUFoQztBQUNBOzs7a0NBR2FHLEUsRUFBSUMsRSxFQUFLO0FBQ3RCLFVBQUksS0FBS3hELFFBQUwsSUFBaUJ1RCxFQUFyQixFQUEwQjtBQUN6QixXQUFJRSxPQUFPL0MsT0FBT3VDLFFBQVAsQ0FBZ0JELElBQWhCLENBQXFCVCxLQUFyQixDQUEyQixDQUEzQixLQUFpQyxLQUFLbkMsS0FBakQ7QUFDQU0sY0FBT3VDLFFBQVAsQ0FBZ0JELElBQWhCLEdBQXVCLEtBQUs1QyxLQUE1Qjs7QUFHQSxXQUFJcUQsSUFBSixFQUNDLEtBQUtsRCxNQUFMLENBQVltRCxRQUFaLENBQXFCLElBQXJCLEVBQTJCSCxFQUEzQjtBQUVEO0FBQ0Q7Ozs7Ozs7O0FBR0ZJLFdBQVM5RCxNQUFUIiwiZmlsZSI6IlJvdXRlci5qcyIsInNvdXJjZXNDb250ZW50IjpbImxldCBwcml2YXRlX3JvdXRlcixcblx0XHRyb3V0ZXMsXG5cdFx0UEFUSF9QQVJBTV9SRUdFWCA9IC86W2EtejAtOV8kXSovZztcblxuZXhwb3J0IGNsYXNzIFJvdXRlciB7XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1yb3V0ZXInO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdGF1dG9IYXNoOiB7XG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIGZhbHNlOyB9XG5cdFx0XHR9LFxuXG5cdFx0XHRyb3V0ZToge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdG9ic2VydmVyOiAncm91dGVDaGFuZ2VkJ1xuXHRcdFx0fSxcblxuXHRcdFx0cm91dGVyOiB7XG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0cmVhZE9ubHk6IHRydWUsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHtcblx0XHRcdFx0XHRpZiggIXByaXZhdGVfcm91dGVyICkge1xuXHRcdFx0XHRcdFx0cHJpdmF0ZV9yb3V0ZXIgPSBuZXcgd2luZG93LlJvdXRlcigpO1xuXHRcdFx0XHRcdFx0cHJpdmF0ZV9yb3V0ZXIuaW5pdCgpO1xuXHRcdFx0XHRcdH1cblx0XHRcdFx0XHRyZXR1cm4gcHJpdmF0ZV9yb3V0ZXI7XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHRpbml0KCBhbGxSb3V0ZXMgKSB7XG5cdFx0bGV0IG1vZHVsZXMgPSBPYmplY3Qua2V5cyhhbGxSb3V0ZXMpO1xuXG5cdFx0aWYoICFyb3V0ZXMgJiYgbW9kdWxlcy5sZW5ndGggKSB7XG5cdFx0XHRyb3V0ZXMgPSBhbGxSb3V0ZXM7XG5cdFx0XHRsZXQgcm91dGVyID0gdGhpcy5yb3V0ZXIsXG5cdFx0XHRsZW4gPSBtb2R1bGVzID8gbW9kdWxlcy5sZW5ndGggOiAwO1xuXG5cdFx0XHQvLyBhdHRhY2ggYSBEaXJlY3RvciBoYW5kbGVyIGZvciBhbGwgY29uZmlndXJlZCByb3V0ZXMgKG1vZHVsZSArIHBhdGggPSByb3V0ZSlcblx0XHRcdGZvciggbGV0IGk9MDsgaSA8IGxlbjsgaSsrICkge1xuXHRcdFx0XHRsZXQgbW9kID0gbW9kdWxlc1tpXSxcblx0XHRcdFx0bW9kdWxlUGF0aHMgPSBPYmplY3Qua2V5cyggcm91dGVzW21vZF0gKSxcblx0XHRcdFx0cExlbiA9IG1vZHVsZVBhdGhzID8gbW9kdWxlUGF0aHMubGVuZ3RoIDogMDtcblxuXHRcdFx0XHRmb3IoIGxldCBwPTA7IHAgPCBwTGVuOyBwKysgKSB7XG5cdFx0XHRcdFx0bGV0IHBhdGggPSBtb2R1bGVQYXRoc1twXSxcblx0XHRcdFx0XHRwYXRoUGFyYW1zID0gcGF0aCA/IHBhdGgubWF0Y2goIFBBVEhfUEFSQU1fUkVHRVggKSA6IG51bGwsXG5cdFx0XHRcdFx0cGFyYW1OYW1lcyA9IFtdLFxuXHRcdFx0XHRcdHBhcmFtTWFwID0ge307XG5cblx0XHRcdFx0XHQvLyBpZiBwYXRoIHBhcmFtcyBleGlzdCBidWlsZCBtYXAgb2YgbmFtZT12YWx1ZSBmb3IgZWFzeSBhY2Nlc3Ncblx0XHRcdFx0XHRpZiggcGF0aFBhcmFtcyApIHtcblx0XHRcdFx0XHRcdHBhcmFtTmFtZXMgPSBwYXRoUGFyYW1zLm1hcCggZnVuY3Rpb24oIHZhbCwgaW5kZXggKSB7XG5cdFx0XHRcdFx0XHRcdGxldCBwID0gdmFsLnN1YnN0cmluZygxKTtcblx0XHRcdFx0XHRcdFx0cGFyYW1NYXBbcF0gPSBudWxsO1xuXHRcdFx0XHRcdFx0XHRyZXR1cm4gcDtcblx0XHRcdFx0XHRcdH0pO1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdHJvdXRlci5vbiggbW9kICsgcGF0aCwgZnVuY3Rpb24oIG0sIHAsIHBhcmFtTmFtZXMsIHBhcmFtTWFwICkge1xuXHRcdFx0XHRcdFx0bGV0IHBhdGhQYXJhbXMgPSBKU09OLnBhcnNlKEpTT04uc3RyaW5naWZ5KCBwYXJhbU1hcCApKSwgIC8vIGNsb25lXG5cdFx0XHRcdFx0XHRwYXJhbXMgPSBBcnJheS5wcm90b3R5cGUuc2xpY2UuY2FsbChhcmd1bWVudHMsNCksXG5cdFx0XHRcdFx0XHRwYXJhbXNMZW4gPSBwYXJhbXMgPyBwYXJhbXMubGVuZ3RoIDogMDtcblxuXHRcdFx0XHRcdFx0Ly8gbWFwIHBhdGggcGFyYW1ldGVyIG5hbWUgdG8gYWN0dWFsIHZhbHVlXG5cdFx0XHRcdFx0XHRmb3IoIGxldCBqPTA7IGogPCBwYXJhbXNMZW47IGorKyApXG5cdFx0XHRcdFx0XHRwYXRoUGFyYW1zW3BhcmFtTmFtZXNbal1dID0gcGFyYW1zW2pdO1xuXG5cdFx0XHRcdFx0XHR0aGlzLnJvdXRlSGFuZGxlciggbSwgcCwgcGF0aFBhcmFtcyApO1xuXHRcdFx0XHRcdH0uYmluZCh0aGlzLCBtb2QsIHBhdGgsIHBhcmFtTmFtZXMsIHBhcmFtTWFwKSk7XG5cdFx0XHRcdH1cblx0XHRcdH1cblxuXHRcdFx0cm91dGVyLm9uKCAnLyonLCBmdW5jdGlvbigpIHtcblx0XHRcdFx0Y29uc29sZS5sb2coICdnb3QgYW4gdW5rbm93biByb3V0ZS4gbmVlZCB0byBzaG93IDQwNCBoZXJlJyApOyAvLyB0b2RvXG5cdFx0XHR9KTtcblxuXHRcdFx0cm91dGVyLm9uKCAnJywgZnVuY3Rpb24oKSB7XG5cdFx0XHRcdGNvbnNvbGUubG9nKCAnR290IHRoZSA8ZW1wdHk+IHJvdXRlJyApO1xuXHRcdFx0fSlcblx0XHR9XG5cdH1cblxuXHQvKiB0aGUgRGlyZWN0b3Igcm91dGUgaGFuZGxlciAqL1xuXHRyb3V0ZUhhbmRsZXIoIG1vZCwgcGF0aCwgcGFyYW1zICkge1xuXHRcdC8vIERpcmVjdG9yIGRvZXNuJ3Qgc3VwcG9ydCBxdWVyeSBzdHJpbmctbGlrZSBwYXJhbXMgaW4gdGhlIGhhc2guICBXZSBoYXZlIHRvIG1hbnVhbGx5IGdldCB0aGVtLlxuXHRcdGxldCBoYXNoID0gd2luZG93LmxvY2F0aW9uLmhhc2guc2xpY2UoMSksXG5cdFx0cG9zID0gaGFzaC5pbmRleE9mKCAnPycgKSxcblx0XHRxc1BhcmFtcyA9IHt9O1xuXG5cdFx0aWYoIHBvcyA+PSAwICYmIGhhc2gubGVuZ3RoID4gcG9zICkge1xuXHRcdFx0Ly8gdXNlIDNyZCBwYXJ0eSB0byBwYXJzZVxuXHRcdFx0cXNQYXJhbXMgPSBxdWVyeVN0cmluZy5wYXJzZSggaGFzaC5zdWJzdHJpbmcoIHBvcysxICkgKTtcblx0XHR9XG5cdFx0dGhpcy5maXJlKCAnc2Itcm91dGUtY29tcGxldGUnLCB7bW9kOiBtb2QsIHBhdGg6IHBhdGgsIHJvdXRlOiByb3V0ZXNbbW9kXVtwYXRoXSwgcGF0aFBhcmFtczogcGFyYW1zLCBwYXJhbXM6IHFzUGFyYW1zIH0gKTtcblx0fVxuXG5cdC8qKiBPYnNlcnZlciBmb3Igd2hlbiB0aGUgcm91dGUgcHJvcGVydHkgY2hhbmdlcy4gIFVwZGF0ZSB0aGUgd2luZG93IGhhc2ggYW5kIGZpcmUgZXZlbnQgaWYgbmVlZGVkICovXG5cdHJvdXRlQ2hhbmdlZCggbnYsIG92ICkge1xuXHRcdGlmKCB0aGlzLmF1dG9IYXNoICYmIG52ICkge1xuXHRcdFx0bGV0IHNhbWUgPSB3aW5kb3cubG9jYXRpb24uaGFzaC5zbGljZSgxKSA9PSB0aGlzLnJvdXRlO1xuXHRcdFx0d2luZG93LmxvY2F0aW9uLmhhc2ggPSB0aGlzLnJvdXRlO1xuXG5cdFx0XHQvLyBpZiB5b3Ugc2V0IHRoZSBoYXNoIHRvIGJlIHNhbWUgdmFsdWUgYXMgaXQgY3VycmVudGx5IGhhcyB5b3UgZG9uJ3QgZ2V0IGEgaGFzaGNoYW5nZSBldmVudFxuXHRcdFx0aWYoIHNhbWUgKVxuXHRcdFx0XHR0aGlzLnJvdXRlci5kaXNwYXRjaCgnb24nLCBudik7XG5cdFx0XHQvLyB3aW5kb3cuZGlzcGF0Y2hFdmVudChuZXcgSGFzaENoYW5nZUV2ZW50KFwiaGFzaGNoYW5nZVwiKSk7XG5cdFx0fVxuXHR9XG59XG5cblBvbHltZXIoIFJvdXRlciApO1xuIl19
'use strict';

System.register('common/data/cache/Cache.js', [], function (_export, _context) {
	var _createClass, map, Cache;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			map = {};

			_export('Cache', Cache = function () {
				function Cache() {
					_classCallCheck(this, Cache);
				}

				_createClass(Cache, null, [{
					key: 'add',
					value: function add(name, id, object, type) {
						if (!name || !id || !object) return;

						if (!type) type = 'value';

						if (!map[type]) map[type] = {};

						if (!map[type][name]) map[type][name] = {};

						map[type][name][id] = object;
					}
				}, {
					key: 'get',
					value: function get(name, id, type) {
						if (!name || !id) return null;

						if (!type) type = 'value';

						if (!map[type]) return null;

						if (!map[type][name]) return null;

						return map[type][name][id];
					}
				}, {
					key: 'remove',
					value: function remove(name, id, type) {
						if (!name || !id || !type) return null;

						if (!type) type = 'value';

						if (!map[type]) return;
						if (!map[type][name]) return;

						delete map[type][name][id];
					}
				}]);

				return Cache;
			}());

			_export('Cache', Cache);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkNhY2hlLmpzIl0sIm5hbWVzIjpbIm1hcCIsIkNhY2hlIiwibmFtZSIsImlkIiwib2JqZWN0IiwidHlwZSJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFBSUEsTSxHQUFNLEU7O29CQUVHQyxLOzs7Ozs7O3lCQUVEQyxJLEVBQU1DLEUsRUFBSUMsTSxFQUFRQyxJLEVBQU07QUFDbEMsVUFBRyxDQUFDSCxJQUFELElBQVMsQ0FBQ0MsRUFBVixJQUFnQixDQUFDQyxNQUFwQixFQUNDOztBQUVELFVBQUcsQ0FBQ0MsSUFBSixFQUNDQSxPQUFPLE9BQVA7O0FBRUQsVUFBRyxDQUFDTCxJQUFJSyxJQUFKLENBQUosRUFDQ0wsSUFBSUssSUFBSixJQUFZLEVBQVo7O0FBRUQsVUFBRyxDQUFDTCxJQUFJSyxJQUFKLEVBQVVILElBQVYsQ0FBSixFQUNDRixJQUFJSyxJQUFKLEVBQVVILElBQVYsSUFBa0IsRUFBbEI7O0FBRURGLFVBQUlLLElBQUosRUFBVUgsSUFBVixFQUFnQkMsRUFBaEIsSUFBc0JDLE1BQXRCO0FBQ0E7Ozt5QkFFVUYsSSxFQUFNQyxFLEVBQUlFLEksRUFBTTtBQUMxQixVQUFHLENBQUNILElBQUQsSUFBUyxDQUFDQyxFQUFiLEVBQ0MsT0FBTyxJQUFQOztBQUVELFVBQUcsQ0FBQ0UsSUFBSixFQUNDQSxPQUFPLE9BQVA7O0FBRUQsVUFBRyxDQUFDTCxJQUFJSyxJQUFKLENBQUosRUFDQyxPQUFPLElBQVA7O0FBRUQsVUFBRyxDQUFDTCxJQUFJSyxJQUFKLEVBQVVILElBQVYsQ0FBSixFQUNDLE9BQU8sSUFBUDs7QUFFRCxhQUFPRixJQUFJSyxJQUFKLEVBQVVILElBQVYsRUFBZ0JDLEVBQWhCLENBQVA7QUFDQTs7OzRCQUVhRCxJLEVBQU1DLEUsRUFBSUUsSSxFQUFNO0FBQzdCLFVBQUcsQ0FBQ0gsSUFBRCxJQUFTLENBQUNDLEVBQVYsSUFBZ0IsQ0FBQ0UsSUFBcEIsRUFDQyxPQUFPLElBQVA7O0FBRUQsVUFBRyxDQUFDQSxJQUFKLEVBQ0NBLE9BQU8sT0FBUDs7QUFFRCxVQUFHLENBQUNMLElBQUlLLElBQUosQ0FBSixFQUNDO0FBQ0QsVUFBRyxDQUFDTCxJQUFJSyxJQUFKLEVBQVVILElBQVYsQ0FBSixFQUNDOztBQUVELGFBQU9GLElBQUlLLElBQUosRUFBVUgsSUFBVixFQUFnQkMsRUFBaEIsQ0FBUDtBQUNBIiwiZmlsZSI6IkNhY2hlLmpzIiwic291cmNlc0NvbnRlbnQiOlsibGV0IG1hcCA9IHt9O1xuXG5leHBvcnQgY2xhc3MgQ2FjaGUge1xuXG5cdHN0YXRpYyBhZGQobmFtZSwgaWQsIG9iamVjdCwgdHlwZSkge1xuXHRcdGlmKCFuYW1lIHx8ICFpZCB8fCAhb2JqZWN0KVxuXHRcdFx0cmV0dXJuO1xuXG5cdFx0aWYoIXR5cGUpXG5cdFx0XHR0eXBlID0gJ3ZhbHVlJztcblxuXHRcdGlmKCFtYXBbdHlwZV0pXG5cdFx0XHRtYXBbdHlwZV0gPSB7fTtcblxuXHRcdGlmKCFtYXBbdHlwZV1bbmFtZV0pXG5cdFx0XHRtYXBbdHlwZV1bbmFtZV0gPSB7fTtcblxuXHRcdG1hcFt0eXBlXVtuYW1lXVtpZF0gPSBvYmplY3Q7XG5cdH1cblxuXHRzdGF0aWMgZ2V0KG5hbWUsIGlkLCB0eXBlKSB7XG5cdFx0aWYoIW5hbWUgfHwgIWlkKVxuXHRcdFx0cmV0dXJuIG51bGw7XG5cblx0XHRpZighdHlwZSlcblx0XHRcdHR5cGUgPSAndmFsdWUnO1xuXG5cdFx0aWYoIW1hcFt0eXBlXSlcblx0XHRcdHJldHVybiBudWxsO1xuXG5cdFx0aWYoIW1hcFt0eXBlXVtuYW1lXSlcblx0XHRcdHJldHVybiBudWxsO1xuXG5cdFx0cmV0dXJuIG1hcFt0eXBlXVtuYW1lXVtpZF07XG5cdH1cblxuXHRzdGF0aWMgcmVtb3ZlKG5hbWUsIGlkLCB0eXBlKSB7XG5cdFx0aWYoIW5hbWUgfHwgIWlkIHx8ICF0eXBlKVxuXHRcdFx0cmV0dXJuIG51bGw7XG5cblx0XHRpZighdHlwZSlcblx0XHRcdHR5cGUgPSAndmFsdWUnO1xuXG5cdFx0aWYoIW1hcFt0eXBlXSlcblx0XHRcdHJldHVybjtcblx0XHRpZighbWFwW3R5cGVdW25hbWVdKVxuXHRcdFx0cmV0dXJuO1xuXG5cdFx0ZGVsZXRlIG1hcFt0eXBlXVtuYW1lXVtpZF07XG5cdH1cbn0iXX0=
'use strict';

System.register('common/data/client/OAuthClient.js', ['common/oauth/OAuth.js', 'common/data/client/RemoteOAuth.js'], function (_export, _context) {
	var OAuth, RemoteOAuth, _createClass, OAuthClient;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_commonOauthOAuthJs) {
			OAuth = _commonOauthOAuthJs.OAuth;
		}, function (_commonDataClientRemoteOAuthJs) {
			RemoteOAuth = _commonDataClientRemoteOAuthJs.RemoteOAuth;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('OAuthClient', OAuthClient = function () {
				function OAuthClient(prefix) {
					_classCallCheck(this, OAuthClient);

					this.prefix = prefix;
				}

				_createClass(OAuthClient, [{
					key: 'getConnection',
					value: function getConnection() {
						if (typeof Visualforce !== 'undefined') {
							return new Promise(function (resolve, reject) {
								resolve(new RemoteOAuth(this.prefix).getConnection());
							}.bind(this));
						} else {
							return new OAuth().getConnection();
						}
					}
				}]);

				return OAuthClient;
			}());

			_export('OAuthClient', OAuthClient);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIk9BdXRoQ2xpZW50LmpzIl0sIm5hbWVzIjpbIk9BdXRoIiwiUmVtb3RlT0F1dGgiLCJPQXV0aENsaWVudCIsInByZWZpeCIsIlZpc3VhbGZvcmNlIiwiUHJvbWlzZSIsInJlc29sdmUiLCJyZWplY3QiLCJnZXRDb25uZWN0aW9uIiwiYmluZCJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztBQUFRQSxRLHVCQUFBQSxLOztBQUNBQyxjLGtDQUFBQSxXOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7MEJBRUtDLFc7QUFFWix5QkFBWUMsTUFBWixFQUFvQjtBQUFBOztBQUNuQixVQUFLQSxNQUFMLEdBQWNBLE1BQWQ7QUFDQTs7OztxQ0FFZTtBQUNmLFVBQUcsT0FBT0MsV0FBUCxLQUF1QixXQUExQixFQUF1QztBQUN0QyxjQUFPLElBQUlDLE9BQUosQ0FBWSxVQUFTQyxPQUFULEVBQWtCQyxNQUFsQixFQUEwQjtBQUM1Q0QsZ0JBQVEsSUFBSUwsV0FBSixDQUFnQixLQUFLRSxNQUFyQixFQUE2QkssYUFBN0IsRUFBUjtBQUNBLFFBRmtCLENBRWpCQyxJQUZpQixDQUVaLElBRlksQ0FBWixDQUFQO0FBR0EsT0FKRCxNQUlPO0FBQ04sY0FBTyxJQUFJVCxLQUFKLEdBQVlRLGFBQVosRUFBUDtBQUNBO0FBQ0QiLCJmaWxlIjoiT0F1dGhDbGllbnQuanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge09BdXRofSBmcm9tICdjb21tb24vb2F1dGgvT0F1dGguanMnO1xuaW1wb3J0IHtSZW1vdGVPQXV0aH0gZnJvbSAnY29tbW9uL2RhdGEvY2xpZW50L1JlbW90ZU9BdXRoLmpzJztcblxuZXhwb3J0IGNsYXNzIE9BdXRoQ2xpZW50IHtcblxuXHRjb25zdHJ1Y3RvcihwcmVmaXgpIHtcblx0XHR0aGlzLnByZWZpeCA9IHByZWZpeDtcblx0fVxuXG5cdGdldENvbm5lY3Rpb24oKSB7XG5cdFx0aWYodHlwZW9mIFZpc3VhbGZvcmNlICE9PSAndW5kZWZpbmVkJykge1xuXHRcdFx0cmV0dXJuIG5ldyBQcm9taXNlKGZ1bmN0aW9uKHJlc29sdmUsIHJlamVjdCkge1xuXHRcdFx0XHRyZXNvbHZlKG5ldyBSZW1vdGVPQXV0aCh0aGlzLnByZWZpeCkuZ2V0Q29ubmVjdGlvbigpKTtcblx0XHRcdH0uYmluZCh0aGlzKSk7XG5cdFx0fSBlbHNlIHtcblx0XHRcdHJldHVybiBuZXcgT0F1dGgoKS5nZXRDb25uZWN0aW9uKCk7XG5cdFx0fVxuXHR9XG59Il19
'use strict';

System.register('common/data/client/RemoteClient.js', ['common/data/client/RemoteOAuth.js'], function (_export, _context) {
	var RemoteOAuth, _createClass, RemoteClient;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_commonDataClientRemoteOAuthJs) {
			RemoteOAuth = _commonDataClientRemoteOAuthJs.RemoteOAuth;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('RemoteClient', RemoteClient = function () {
				function RemoteClient() {
					_classCallCheck(this, RemoteClient);
				}

				_createClass(RemoteClient, [{
					key: 'read',
					value: function read(prefix, reader, uid) {
						this.prefix = prefix;
						return this._remote('read', reader, uid);
					}
				}, {
					key: 'load',
					value: function load(prefix, loader, uid, context) {
						this.prefix = prefix;
						return this._remote('load', loader, uid, JSON.stringify(context));
					}
				}, {
					key: 'save',
					value: function save(prefix, saver, model) {
						this.prefix = prefix;
						return this._remote('save', saver, JSON.stringify(model));
					}
				}, {
					key: 'md',
					value: function md(prefix, type, fullNames) {
						return new RemoteOAuth(prefix).getConnection().metadata.read(type, fullNames);
					}
				}, {
					key: '_remote',
					value: function _remote(method, provider, input, context) {
						var action = this._getAction() + '.' + method;
						if (context) return new Promise(function (resolve, reject) {
							Visualforce.remoting.Manager.invokeAction(action, provider, input, context, function (obj, event) {
								this._callback(obj, event, resolve, reject);
							}.bind(this));
						}.bind(this));

						return new Promise(function (resolve, reject) {
							Visualforce.remoting.Manager.invokeAction(action, provider, input, function (obj, event) {
								this._callback(obj, event, resolve, reject);
							}.bind(this));
						}.bind(this));
					}
				}, {
					key: '_getAction',
					value: function _getAction() {
						return this._getPrefix() + 'ServiceRouter';
					}
				}, {
					key: '_getPrefix',
					value: function _getPrefix() {
						return this.prefix ? this.prefix + '.' : '';
					}
				}, {
					key: '_callback',
					value: function _callback(obj, event, resolve, reject) {
						if (!event.status) reject(event.message);else resolve(this._parse(obj));
					}
				}, {
					key: '_parse',
					value: function _parse(obj) {
						obj = obj.replace(/&quot;/g, '"');
						try {
							return JSON.parse(obj);
						} catch (e) {
							return obj;
						}
					}
				}]);

				return RemoteClient;
			}());

			_export('RemoteClient', RemoteClient);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlJlbW90ZUNsaWVudC5qcyJdLCJuYW1lcyI6WyJSZW1vdGVPQXV0aCIsIlJlbW90ZUNsaWVudCIsInByZWZpeCIsInJlYWRlciIsInVpZCIsIl9yZW1vdGUiLCJsb2FkZXIiLCJjb250ZXh0IiwiSlNPTiIsInN0cmluZ2lmeSIsInNhdmVyIiwibW9kZWwiLCJ0eXBlIiwiZnVsbE5hbWVzIiwiZ2V0Q29ubmVjdGlvbiIsIm1ldGFkYXRhIiwicmVhZCIsIm1ldGhvZCIsInByb3ZpZGVyIiwiaW5wdXQiLCJhY3Rpb24iLCJfZ2V0QWN0aW9uIiwiUHJvbWlzZSIsInJlc29sdmUiLCJyZWplY3QiLCJWaXN1YWxmb3JjZSIsInJlbW90aW5nIiwiTWFuYWdlciIsImludm9rZUFjdGlvbiIsIm9iaiIsImV2ZW50IiwiX2NhbGxiYWNrIiwiYmluZCIsIl9nZXRQcmVmaXgiLCJzdGF0dXMiLCJtZXNzYWdlIiwiX3BhcnNlIiwicmVwbGFjZSIsInBhcnNlIiwiZSJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztBQUFRQSxjLGtDQUFBQSxXOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7MkJBRUtDLFk7Ozs7Ozs7MEJBRVBDLE0sRUFBUUMsTSxFQUFRQyxHLEVBQUs7QUFDekIsV0FBS0YsTUFBTCxHQUFjQSxNQUFkO0FBQ0EsYUFBTyxLQUFLRyxPQUFMLENBQWEsTUFBYixFQUFxQkYsTUFBckIsRUFBNkJDLEdBQTdCLENBQVA7QUFDQTs7OzBCQUVJRixNLEVBQVFJLE0sRUFBUUYsRyxFQUFLRyxPLEVBQVM7QUFDbEMsV0FBS0wsTUFBTCxHQUFjQSxNQUFkO0FBQ0EsYUFBTyxLQUFLRyxPQUFMLENBQWEsTUFBYixFQUFxQkMsTUFBckIsRUFBNkJGLEdBQTdCLEVBQWtDSSxLQUFLQyxTQUFMLENBQWVGLE9BQWYsQ0FBbEMsQ0FBUDtBQUNBOzs7MEJBRUlMLE0sRUFBUVEsSyxFQUFPQyxLLEVBQU87QUFDMUIsV0FBS1QsTUFBTCxHQUFjQSxNQUFkO0FBQ0EsYUFBTyxLQUFLRyxPQUFMLENBQWEsTUFBYixFQUFxQkssS0FBckIsRUFBNEJGLEtBQUtDLFNBQUwsQ0FBZUUsS0FBZixDQUE1QixDQUFQO0FBQ0E7Ozt3QkFFRVQsTSxFQUFRVSxJLEVBQU1DLFMsRUFBVztBQUMzQixhQUFPLElBQUliLFdBQUosQ0FBZ0JFLE1BQWhCLEVBQXdCWSxhQUF4QixHQUF3Q0MsUUFBeEMsQ0FBaURDLElBQWpELENBQXNESixJQUF0RCxFQUE0REMsU0FBNUQsQ0FBUDtBQUNBOzs7NkJBRU9JLE0sRUFBUUMsUSxFQUFVQyxLLEVBQU9aLE8sRUFBUztBQUN6QyxVQUFJYSxTQUFTLEtBQUtDLFVBQUwsS0FBb0IsR0FBcEIsR0FBMEJKLE1BQXZDO0FBQ0EsVUFBR1YsT0FBSCxFQUNDLE9BQU8sSUFBSWUsT0FBSixDQUFZLFVBQVVDLE9BQVYsRUFBbUJDLE1BQW5CLEVBQTJCO0FBQzdDQyxtQkFBWUMsUUFBWixDQUFxQkMsT0FBckIsQ0FBNkJDLFlBQTdCLENBQTBDUixNQUExQyxFQUFrREYsUUFBbEQsRUFBNERDLEtBQTVELEVBQW1FWixPQUFuRSxFQUE0RSxVQUFTc0IsR0FBVCxFQUFjQyxLQUFkLEVBQXFCO0FBQ2hHLGFBQUtDLFNBQUwsQ0FBZUYsR0FBZixFQUFvQkMsS0FBcEIsRUFBMkJQLE9BQTNCLEVBQW9DQyxNQUFwQztBQUNFLFFBRnlFLENBRXhFUSxJQUZ3RSxDQUVuRSxJQUZtRSxDQUE1RTtBQUdBLE9BSmtCLENBSWpCQSxJQUppQixDQUlaLElBSlksQ0FBWixDQUFQOztBQU1ELGFBQU8sSUFBSVYsT0FBSixDQUFZLFVBQVVDLE9BQVYsRUFBbUJDLE1BQW5CLEVBQTJCO0FBQzdDQyxtQkFBWUMsUUFBWixDQUFxQkMsT0FBckIsQ0FBNkJDLFlBQTdCLENBQTBDUixNQUExQyxFQUFrREYsUUFBbEQsRUFBNERDLEtBQTVELEVBQW1FLFVBQVNVLEdBQVQsRUFBY0MsS0FBZCxFQUFxQjtBQUN2RixhQUFLQyxTQUFMLENBQWVGLEdBQWYsRUFBb0JDLEtBQXBCLEVBQTJCUCxPQUEzQixFQUFvQ0MsTUFBcEM7QUFDRSxRQUZnRSxDQUUvRFEsSUFGK0QsQ0FFMUQsSUFGMEQsQ0FBbkU7QUFHQSxPQUprQixDQUlqQkEsSUFKaUIsQ0FJWixJQUpZLENBQVosQ0FBUDtBQUtBOzs7a0NBRVk7QUFDWixhQUFPLEtBQUtDLFVBQUwsS0FBb0IsZUFBM0I7QUFDQTs7O2tDQUVZO0FBQ1osYUFBTyxLQUFLL0IsTUFBTCxHQUFlLEtBQUtBLE1BQUwsR0FBYyxHQUE3QixHQUFvQyxFQUEzQztBQUNBOzs7K0JBRVMyQixHLEVBQUtDLEssRUFBT1AsTyxFQUFTQyxNLEVBQVE7QUFDdEMsVUFBRyxDQUFDTSxNQUFNSSxNQUFWLEVBQ0NWLE9BQU9NLE1BQU1LLE9BQWIsRUFERCxLQUdDWixRQUFRLEtBQUthLE1BQUwsQ0FBWVAsR0FBWixDQUFSO0FBQ0Q7Ozs0QkFFTUEsRyxFQUFLO0FBQ1hBLFlBQU1BLElBQUlRLE9BQUosQ0FBWSxTQUFaLEVBQXNCLEdBQXRCLENBQU47QUFDQSxVQUFJO0FBQ0gsY0FBTzdCLEtBQUs4QixLQUFMLENBQVdULEdBQVgsQ0FBUDtBQUNBLE9BRkQsQ0FFRSxPQUFNVSxDQUFOLEVBQVM7QUFDVixjQUFPVixHQUFQO0FBQ0E7QUFDRCIsImZpbGUiOiJSZW1vdGVDbGllbnQuanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1JlbW90ZU9BdXRofSBmcm9tICdjb21tb24vZGF0YS9jbGllbnQvUmVtb3RlT0F1dGguanMnO1xuXG5leHBvcnQgY2xhc3MgUmVtb3RlQ2xpZW50IHtcblxuXHRyZWFkKHByZWZpeCwgcmVhZGVyLCB1aWQpIHtcblx0XHR0aGlzLnByZWZpeCA9IHByZWZpeDtcblx0XHRyZXR1cm4gdGhpcy5fcmVtb3RlKCdyZWFkJywgcmVhZGVyLCB1aWQpO1xuXHR9XG5cblx0bG9hZChwcmVmaXgsIGxvYWRlciwgdWlkLCBjb250ZXh0KSB7XG5cdFx0dGhpcy5wcmVmaXggPSBwcmVmaXg7XG5cdFx0cmV0dXJuIHRoaXMuX3JlbW90ZSgnbG9hZCcsIGxvYWRlciwgdWlkLCBKU09OLnN0cmluZ2lmeShjb250ZXh0KSk7XG5cdH1cblxuXHRzYXZlKHByZWZpeCwgc2F2ZXIsIG1vZGVsKSB7XG5cdFx0dGhpcy5wcmVmaXggPSBwcmVmaXg7XG5cdFx0cmV0dXJuIHRoaXMuX3JlbW90ZSgnc2F2ZScsIHNhdmVyLCBKU09OLnN0cmluZ2lmeShtb2RlbCkpO1xuXHR9XG5cblx0bWQocHJlZml4LCB0eXBlLCBmdWxsTmFtZXMpIHtcblx0XHRyZXR1cm4gbmV3IFJlbW90ZU9BdXRoKHByZWZpeCkuZ2V0Q29ubmVjdGlvbigpLm1ldGFkYXRhLnJlYWQodHlwZSwgZnVsbE5hbWVzKTtcblx0fVxuXG5cdF9yZW1vdGUobWV0aG9kLCBwcm92aWRlciwgaW5wdXQsIGNvbnRleHQpIHtcblx0XHR2YXIgYWN0aW9uID0gdGhpcy5fZ2V0QWN0aW9uKCkgKyAnLicgKyBtZXRob2Q7XG5cdFx0aWYoY29udGV4dClcblx0XHRcdHJldHVybiBuZXcgUHJvbWlzZShmdW5jdGlvbiAocmVzb2x2ZSwgcmVqZWN0KSB7XG5cdFx0XHRcdFZpc3VhbGZvcmNlLnJlbW90aW5nLk1hbmFnZXIuaW52b2tlQWN0aW9uKGFjdGlvbiwgcHJvdmlkZXIsIGlucHV0LCBjb250ZXh0LCBmdW5jdGlvbihvYmosIGV2ZW50KSB7XG5cdFx0XHRcdFx0dGhpcy5fY2FsbGJhY2sob2JqLCBldmVudCwgcmVzb2x2ZSwgcmVqZWN0KTtcblx0XHRcdCAgIH0uYmluZCh0aGlzKSk7XG5cdFx0XHR9LmJpbmQodGhpcykpO1xuXG5cdFx0cmV0dXJuIG5ldyBQcm9taXNlKGZ1bmN0aW9uIChyZXNvbHZlLCByZWplY3QpIHtcblx0XHRcdFZpc3VhbGZvcmNlLnJlbW90aW5nLk1hbmFnZXIuaW52b2tlQWN0aW9uKGFjdGlvbiwgcHJvdmlkZXIsIGlucHV0LCBmdW5jdGlvbihvYmosIGV2ZW50KSB7XG5cdFx0XHRcdHRoaXMuX2NhbGxiYWNrKG9iaiwgZXZlbnQsIHJlc29sdmUsIHJlamVjdCk7XG5cdFx0ICAgfS5iaW5kKHRoaXMpKTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cblx0X2dldEFjdGlvbigpIHtcblx0XHRyZXR1cm4gdGhpcy5fZ2V0UHJlZml4KCkgKyAnU2VydmljZVJvdXRlcic7XG5cdH1cblxuXHRfZ2V0UHJlZml4KCkge1xuXHRcdHJldHVybiB0aGlzLnByZWZpeCA/ICh0aGlzLnByZWZpeCArICcuJykgOiAnJztcblx0fVxuXG5cdF9jYWxsYmFjayhvYmosIGV2ZW50LCByZXNvbHZlLCByZWplY3QpIHtcblx0XHRpZighZXZlbnQuc3RhdHVzKVxuXHRcdFx0cmVqZWN0KGV2ZW50Lm1lc3NhZ2UpO1xuXHRcdGVsc2Vcblx0XHRcdHJlc29sdmUodGhpcy5fcGFyc2Uob2JqKSk7XG5cdH1cblxuXHRfcGFyc2Uob2JqKSB7XG5cdFx0b2JqID0gb2JqLnJlcGxhY2UoLyZxdW90Oy9nLCdcIicpO1xuXHRcdHRyeSB7XG5cdFx0XHRyZXR1cm4gSlNPTi5wYXJzZShvYmopO1xuXHRcdH0gY2F0Y2goZSkge1xuXHRcdFx0cmV0dXJuIG9iajtcblx0XHR9XG5cdH1cbn0iXX0=
'use strict';

System.register('common/data/client/RemoteOAuth.js', [], function (_export, _context) {
    var _createClass, RemoteOAuth;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('RemoteOAuth', RemoteOAuth = function () {
                function RemoteOAuth(prefix) {
                    _classCallCheck(this, RemoteOAuth);

                    this.remoteAction = 'OAuthExtension.refreshAccessToken';
                    if (prefix) this.remoteAction = prefix + '.' + this.remoteAction;

                    jsforce.OAuth2.prototype.refreshToken = function (refreshToken, callback) {
                        Visualforce.remoting.Manager.invokeAction(this.remoteAction, function (accessToken, event) {
                            this.cacheToken(accessToken);
                            callback(!accessToken ? { message: event.message } : false, { access_token: accessToken, id: '' });
                        }.bind(this));
                    }.bind(this);
                }

                _createClass(RemoteOAuth, [{
                    key: 'getConnection',
                    value: function getConnection() {
                        return new jsforce.Connection({
                            oauth2: new jsforce.OAuth2({ clientId: true, clientSecret: true }),
                            accessToken: this.getCachedToken(),
                            refreshToken: ''
                        });
                    }
                }, {
                    key: 'getCachedToken',
                    value: function getCachedToken() {
                        if (typeof sessionStorage === 'undefined') return '';

                        return sessionStorage.getItem(this.remoteAction);
                    }
                }, {
                    key: 'cacheToken',
                    value: function cacheToken(accessToken) {
                        if (typeof sessionStorage === 'undefined') return;

                        sessionStorage.setItem(this.remoteAction, accessToken);
                    }
                }]);

                return RemoteOAuth;
            }());

            _export('RemoteOAuth', RemoteOAuth);
        }
    };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlJlbW90ZU9BdXRoLmpzIl0sIm5hbWVzIjpbIlJlbW90ZU9BdXRoIiwicHJlZml4IiwicmVtb3RlQWN0aW9uIiwianNmb3JjZSIsIk9BdXRoMiIsInByb3RvdHlwZSIsInJlZnJlc2hUb2tlbiIsImNhbGxiYWNrIiwiVmlzdWFsZm9yY2UiLCJyZW1vdGluZyIsIk1hbmFnZXIiLCJpbnZva2VBY3Rpb24iLCJhY2Nlc3NUb2tlbiIsImV2ZW50IiwiY2FjaGVUb2tlbiIsIm1lc3NhZ2UiLCJhY2Nlc3NfdG9rZW4iLCJpZCIsImJpbmQiLCJDb25uZWN0aW9uIiwib2F1dGgyIiwiY2xpZW50SWQiLCJjbGllbnRTZWNyZXQiLCJnZXRDYWNoZWRUb2tlbiIsInNlc3Npb25TdG9yYWdlIiwiZ2V0SXRlbSIsInNldEl0ZW0iXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O21DQUFhQSxXO0FBRVQscUNBQVlDLE1BQVosRUFBb0I7QUFBQTs7QUFDaEIseUJBQUtDLFlBQUwsR0FBb0IsbUNBQXBCO0FBQ0Esd0JBQUlELE1BQUosRUFDSSxLQUFLQyxZQUFMLEdBQW9CRCxTQUFTLEdBQVQsR0FBZSxLQUFLQyxZQUF4Qzs7QUFFSkMsNEJBQVFDLE1BQVIsQ0FBZUMsU0FBZixDQUF5QkMsWUFBekIsR0FBd0MsVUFBVUEsWUFBVixFQUF3QkMsUUFBeEIsRUFBa0M7QUFDdEVDLG9DQUFZQyxRQUFaLENBQXFCQyxPQUFyQixDQUE2QkMsWUFBN0IsQ0FBMEMsS0FBS1QsWUFBL0MsRUFBNkQsVUFBVVUsV0FBVixFQUF1QkMsS0FBdkIsRUFBOEI7QUFDdkYsaUNBQUtDLFVBQUwsQ0FBZ0JGLFdBQWhCO0FBQ0FMLHFDQUFVLENBQUNLLFdBQUQsR0FBZSxFQUFDRyxTQUFTRixNQUFNRSxPQUFoQixFQUFmLEdBQTBDLEtBQXBELEVBQTRELEVBQUNDLGNBQWNKLFdBQWYsRUFBNEJLLElBQUksRUFBaEMsRUFBNUQ7QUFDSCx5QkFINEQsQ0FHM0RDLElBSDJELENBR3RELElBSHNELENBQTdEO0FBSUgscUJBTHVDLENBS3RDQSxJQUxzQyxDQUtqQyxJQUxpQyxDQUF4QztBQU1IOzs7O29EQUVlO0FBQ1osK0JBQU8sSUFBSWYsUUFBUWdCLFVBQVosQ0FBdUI7QUFDMUJDLG9DQUFTLElBQUlqQixRQUFRQyxNQUFaLENBQW1CLEVBQUNpQixVQUFXLElBQVosRUFBa0JDLGNBQWMsSUFBaEMsRUFBbkIsQ0FEaUI7QUFFMUJWLHlDQUFjLEtBQUtXLGNBQUwsRUFGWTtBQUcxQmpCLDBDQUFjO0FBSFkseUJBQXZCLENBQVA7QUFLSDs7O3FEQUVnQjtBQUNiLDRCQUFHLE9BQU9rQixjQUFQLEtBQTBCLFdBQTdCLEVBQ0ksT0FBTyxFQUFQOztBQUVKLCtCQUFPQSxlQUFlQyxPQUFmLENBQXVCLEtBQUt2QixZQUE1QixDQUFQO0FBQ0g7OzsrQ0FFVVUsVyxFQUFhO0FBQ3BCLDRCQUFHLE9BQU9ZLGNBQVAsS0FBMEIsV0FBN0IsRUFDSTs7QUFFSkEsdUNBQWVFLE9BQWYsQ0FBdUIsS0FBS3hCLFlBQTVCLEVBQTBDVSxXQUExQztBQUNIIiwiZmlsZSI6IlJlbW90ZU9BdXRoLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIFJlbW90ZU9BdXRoIHtcblxuICAgIGNvbnN0cnVjdG9yKHByZWZpeCkge1xuICAgICAgICB0aGlzLnJlbW90ZUFjdGlvbiA9ICdPQXV0aEV4dGVuc2lvbi5yZWZyZXNoQWNjZXNzVG9rZW4nO1xuICAgICAgICBpZiAocHJlZml4KVxuICAgICAgICAgICAgdGhpcy5yZW1vdGVBY3Rpb24gPSBwcmVmaXggKyAnLicgKyB0aGlzLnJlbW90ZUFjdGlvbjtcblxuICAgICAgICBqc2ZvcmNlLk9BdXRoMi5wcm90b3R5cGUucmVmcmVzaFRva2VuID0gZnVuY3Rpb24gKHJlZnJlc2hUb2tlbiwgY2FsbGJhY2spIHtcbiAgICAgICAgICAgIFZpc3VhbGZvcmNlLnJlbW90aW5nLk1hbmFnZXIuaW52b2tlQWN0aW9uKHRoaXMucmVtb3RlQWN0aW9uLCBmdW5jdGlvbiAoYWNjZXNzVG9rZW4sIGV2ZW50KSB7XG4gICAgICAgICAgICAgICAgdGhpcy5jYWNoZVRva2VuKGFjY2Vzc1Rva2VuKTtcbiAgICAgICAgICAgICAgICBjYWxsYmFjaygoIWFjY2Vzc1Rva2VuID8ge21lc3NhZ2U6IGV2ZW50Lm1lc3NhZ2V9IDogZmFsc2UpLCB7YWNjZXNzX3Rva2VuOiBhY2Nlc3NUb2tlbiwgaWQ6ICcnfSk7XG4gICAgICAgICAgICB9LmJpbmQodGhpcykpO1xuICAgICAgICB9LmJpbmQodGhpcyk7XG4gICAgfVxuXG4gICAgZ2V0Q29ubmVjdGlvbigpIHtcbiAgICAgICAgcmV0dXJuIG5ldyBqc2ZvcmNlLkNvbm5lY3Rpb24oe1xuICAgICAgICAgICAgb2F1dGgyIDogbmV3IGpzZm9yY2UuT0F1dGgyKHtjbGllbnRJZCA6IHRydWUsIGNsaWVudFNlY3JldDogdHJ1ZX0pLFxuICAgICAgICAgICAgYWNjZXNzVG9rZW4gOiB0aGlzLmdldENhY2hlZFRva2VuKCksXG4gICAgICAgICAgICByZWZyZXNoVG9rZW46ICcnXG4gICAgICAgIH0pO1xuICAgIH1cblxuICAgIGdldENhY2hlZFRva2VuKCkge1xuICAgICAgICBpZih0eXBlb2Ygc2Vzc2lvblN0b3JhZ2UgPT09ICd1bmRlZmluZWQnKVxuICAgICAgICAgICAgcmV0dXJuICcnO1xuXG4gICAgICAgIHJldHVybiBzZXNzaW9uU3RvcmFnZS5nZXRJdGVtKHRoaXMucmVtb3RlQWN0aW9uKTtcbiAgICB9XG5cbiAgICBjYWNoZVRva2VuKGFjY2Vzc1Rva2VuKSB7XG4gICAgICAgIGlmKHR5cGVvZiBzZXNzaW9uU3RvcmFnZSA9PT0gJ3VuZGVmaW5lZCcpXG4gICAgICAgICAgICByZXR1cm47XG5cbiAgICAgICAgc2Vzc2lvblN0b3JhZ2Uuc2V0SXRlbSh0aGlzLnJlbW90ZUFjdGlvbiwgYWNjZXNzVG9rZW4pO1xuICAgIH1cbn0iXX0=
'use strict';

System.register('common/data/client/RestClient.js', ['common/oauth/OAuth.js'], function (_export, _context) {
	var OAuth, _createClass, RestClient;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_commonOauthOAuthJs) {
			OAuth = _commonOauthOAuthJs.OAuth;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('RestClient', RestClient = function () {
				function RestClient() {
					_classCallCheck(this, RestClient);
				}

				_createClass(RestClient, [{
					key: 'read',
					value: function read(prefix, reader, uid) {
						this.prefix = prefix;
						return new Promise(function (resolve, reject) {
							this._getApex().then(function (apex) {
								apex.get(this._getEndpoint() + '?reader=' + reader + '&uid=' + uid).then(function (result) {
									this._handleResult(resolve, reject, result);
								}.bind(this), function (err) {
									reject(err.message || err);
								});
							}.bind(this), function (err) {
								reject(err.message || err);
							});
						}.bind(this));
					}
				}, {
					key: 'load',
					value: function load(prefix, loader, uid, context) {
						this.prefix = prefix;
						return new Promise(function (resolve, reject) {
							this._getApex().then(function (apex) {
								apex.patch(this._getEndpoint() + '?loader=' + loader + '&uid=' + uid, {
									context: JSON.stringify(context)
								}).then(function (result) {
									this._handleResult(resolve, reject, result);
								}.bind(this), function (err) {
									reject(err.message || err);
								});
							}.bind(this), function (err) {
								reject(err.message || err);
							});
						}.bind(this));
					}
				}, {
					key: 'save',
					value: function save(prefix, saver, model) {
						this.prefix = prefix;
						return new Promise(function (resolve, reject) {
							this._getApex().then(function (apex) {
								apex.post(this._getEndpoint(), {
									saver: saver,
									model: JSON.stringify(model)
								}).then(function (result) {
									this._handleResult(resolve, reject, result);
								}.bind(this), function (err) {
									reject(err.message || err);
								});
							}.bind(this), function (err) {
								reject(err.message || err);
							});
						}.bind(this));
					}
				}, {
					key: 'md',
					value: function md(prefix, type, fullNames) {
						return new Promise(function (resolve, reject) {
							this._getApex().then(function (apex) {
								apex.post(null, {
									saver: 'md.read',
									model: JSON.stringify({
										type: type,
										fullNames: fullNames
									})
								}).then(function (result) {
									this._handleResult(resolve, reject, result);
								}.bind(this), function (err) {
									reject(err.message || err);
								});
							}.bind(this), function (err) {
								reject(err.message || err);
							});
						}.bind(this));
					}
				}, {
					key: 'setConnection',
					value: function setConnection(conn) {
						this.connection = conn;
					}
				}, {
					key: '_getApex',
					value: function _getApex() {
						if (this.connection) return Promise.resolve(this.connection.apex);

						if (typeof window === 'undefined') return Promise.reject('Connection not set');

						this.oauth = this.oauth || new OAuth();
						return this._getConnection(this.oauth);
					}
				}, {
					key: '_getConnection',
					value: function _getConnection(oauth) {
						return new Promise(function (resolve, reject) {
							oauth.getConnection().then(function (conn) {
								this.connection = conn;
								resolve(this.connection.apex);
							}.bind(this), function (err) {
								reject(err.message || err);
							});
						}.bind(this));
					}
				}, {
					key: '_getEndpoint',
					value: function _getEndpoint() {
						return this._getPrefix() + '/ServiceRouter';
					}
				}, {
					key: '_getPrefix',
					value: function _getPrefix() {
						return this.prefix ? '/' + this.prefix : '';
					}
				}, {
					key: '_handleResult',
					value: function _handleResult(resolve, reject, result) {
						if (result.proxy) {
							this._handleProxyResult(resolve, reject, result.proxy);
							return;
						}
						resolve(parse(result));
					}
				}, {
					key: '_handleProxyResult',
					value: function _handleProxyResult(resolve, reject, proxyResult) {
						if (proxyResult.error) {
							this._handleProxyErrorResult(reject, proxyResult.error);
							return;
						}
						if (this.oauth && proxyResult.accessToken) this.oauth.accessToken = proxyResult.accessToken;

						resolve(this._parse(proxyResult.response));
					}
				}, {
					key: '_handleProxyErrorResult',
					value: function _handleProxyErrorResult(reject, error) {
						console.warn('Service Proxy Exception: ' + this._adjustProxyErrorMessage(error));
						reject(error);
					}
				}, {
					key: '_adjustProxyErrorMessage',
					value: function _adjustProxyErrorMessage(errorMessage) {
						if (errorMessage === 'expired access/refresh token') errorMessage += ' - to authorize go to http://localhost:' + location.port + '/common/oauth';

						return errorMessage;
					}
				}, {
					key: '_parse',
					value: function _parse(obj) {
						try {
							return JSON.parse(obj);
						} catch (e) {
							return obj;
						}
					}
				}]);

				return RestClient;
			}());

			_export('RestClient', RestClient);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlJlc3RDbGllbnQuanMiXSwibmFtZXMiOlsiT0F1dGgiLCJSZXN0Q2xpZW50IiwicHJlZml4IiwicmVhZGVyIiwidWlkIiwiUHJvbWlzZSIsInJlc29sdmUiLCJyZWplY3QiLCJfZ2V0QXBleCIsInRoZW4iLCJhcGV4IiwiZ2V0IiwiX2dldEVuZHBvaW50IiwicmVzdWx0IiwiX2hhbmRsZVJlc3VsdCIsImJpbmQiLCJlcnIiLCJtZXNzYWdlIiwibG9hZGVyIiwiY29udGV4dCIsInBhdGNoIiwiSlNPTiIsInN0cmluZ2lmeSIsInNhdmVyIiwibW9kZWwiLCJwb3N0IiwidHlwZSIsImZ1bGxOYW1lcyIsImNvbm4iLCJjb25uZWN0aW9uIiwid2luZG93Iiwib2F1dGgiLCJfZ2V0Q29ubmVjdGlvbiIsImdldENvbm5lY3Rpb24iLCJfZ2V0UHJlZml4IiwicHJveHkiLCJfaGFuZGxlUHJveHlSZXN1bHQiLCJwYXJzZSIsInByb3h5UmVzdWx0IiwiZXJyb3IiLCJfaGFuZGxlUHJveHlFcnJvclJlc3VsdCIsImFjY2Vzc1Rva2VuIiwiX3BhcnNlIiwicmVzcG9uc2UiLCJjb25zb2xlIiwid2FybiIsIl9hZGp1c3RQcm94eUVycm9yTWVzc2FnZSIsImVycm9yTWVzc2FnZSIsImxvY2F0aW9uIiwicG9ydCIsIm9iaiIsImUiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7QUFBUUEsUSx1QkFBQUEsSzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O3lCQUVLQyxVOzs7Ozs7OzBCQUVQQyxNLEVBQVFDLE0sRUFBUUMsRyxFQUFLO0FBQ3pCLFdBQUtGLE1BQUwsR0FBY0EsTUFBZDtBQUNBLGFBQU8sSUFBSUcsT0FBSixDQUFZLFVBQVNDLE9BQVQsRUFBa0JDLE1BQWxCLEVBQTBCO0FBQzVDLFlBQUtDLFFBQUwsR0FBZ0JDLElBQWhCLENBQXFCLFVBQVNDLElBQVQsRUFBZTtBQUNuQ0EsYUFBS0MsR0FBTCxDQUFTLEtBQUtDLFlBQUwsS0FBc0IsVUFBdEIsR0FBbUNULE1BQW5DLEdB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QUFLQyx3QkFBTCxDQUE4QlAsS0FBOUIsQ0FBM0M7QUFDQWhDLGFBQU9nQyxLQUFQO0FBQ0E7Ozs4Q0FFd0JRLFksRUFBYztBQUN0QyxVQUFHQSxpQkFBaUIsOEJBQXBCLEVBQ0NBLGdCQUFnQiw0Q0FBNENDLFNBQVNDLElBQXJELEdBQTRELGVBQTVFOztBQUVELGFBQU9GLFlBQVA7QUFDQTs7OzRCQUVNRyxHLEVBQUs7QUFDWCxVQUFJO0FBQ0gsY0FBTzdCLEtBQUtnQixLQUFMLENBQVdhLEdBQVgsQ0FBUDtBQUNBLE9BRkQsQ0FFRSxPQUFNQyxDQUFOLEVBQVM7QUFDVixjQUFPRCxHQUFQO0FBQ0E7QUFDRCIsImZpbGUiOiJSZXN0Q2xpZW50LmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtPQXV0aH0gZnJvbSAnY29tbW9uL29hdXRoL09BdXRoLmpzJztcblxuZXhwb3J0IGNsYXNzIFJlc3RDbGllbnQge1xuXG5cdHJlYWQocHJlZml4LCByZWFkZXIsIHVpZCkge1xuXHRcdHRoaXMucHJlZml4ID0gcHJlZml4O1xuXHRcdHJldHVybiBuZXcgUHJvbWlzZShmdW5jdGlvbihyZXNvbHZlLCByZWplY3QpIHtcblx0XHRcdHRoaXMuX2dldEFwZXgoKS50aGVuKGZ1bmN0aW9uKGFwZXgpIHtcblx0XHRcdFx0YXBleC5nZXQodGhpcy5fZ2V0RW5kcG9pbnQoKSArICc/cmVhZGVyPScgKyByZWFkZXIgKyAnJnVpZD0nICsgdWlkKS50aGVuKGZ1bmN0aW9uKHJlc3VsdCkge1xuXHRcdFx0XHRcdHRoaXMuX2hhbmRsZVJlc3VsdChyZXNvbHZlLCByZWplY3QsIHJlc3VsdCk7XG5cdFx0XHRcdH0uYmluZCh0aGlzKSwgZnVuY3Rpb24oZXJyKSB7XG5cdFx0XHRcdFx0cmVqZWN0KGVyci5tZXNzYWdlIHx8IGVycik7XG5cdFx0XHRcdH0pO1xuXHRcdFx0fS5iaW5kKHRoaXMpLCBmdW5jdGlvbihlcnIpIHtcblx0XHRcdFx0cmVqZWN0KGVyci5tZXNzYWdlIHx8IGVycik7XG5cdFx0ICAgfSk7XG5cdFx0fS5iaW5kKHRoaXMpKTtcblx0fVxuXG5cdGxvYWQocHJlZml4LCBsb2FkZXIsIHVpZCwgY29udGV4dCkge1xuXHRcdHRoaXMucHJlZml4ID0gcHJlZml4O1xuXHRcdHJldHVybiBuZXcgUHJvbWlzZShmdW5jdGlvbihyZXNvbHZlLCByZWplY3QpIHtcblx0XHRcdHRoaXMuX2dldEFwZXgoKS50aGVuKGZ1bmN0aW9uKGFwZXgpIHtcblx0XHRcdFx0YXBleC5wYXRjaCh0aGlzLl9nZXRFbmRwb2ludCgpICsgJz9sb2FkZXI9JyArIGxvYWRlciArICcmdWlkPScgKyB1aWQsIHtcblx0XHRcdFx0XHRcdGNvbnRleHQ6IEpTT04uc3RyaW5naWZ5KGNvbnRleHQpXG5cdFx0XHRcdFx0fSkudGhlbihmdW5jdGlvbihyZXN1bHQpIHtcblx0XHRcdFx0XHR0aGlzLl9oYW5kbGVSZXN1bHQocmVzb2x2ZSwgcmVqZWN0LCByZXN1bHQpO1xuXHRcdFx0XHR9LmJpbmQodGhpcyksIGZ1bmN0aW9uKGVycikge1xuXHRcdFx0XHRcdHJlamVjdChlcnIubWVzc2FnZSB8fCBlcnIpO1xuXHRcdFx0XHR9KTtcblx0XHRcdH0uYmluZCh0aGlzKSwgZnVuY3Rpb24oZXJyKSB7XG5cdFx0XHRcdHJlamVjdChlcnIubWVzc2FnZSB8fCBlcnIpO1xuXHRcdCAgIH0pO1xuXHRcdH0uYmluZCh0aGlzKSk7XG5cdH1cblxuXHRzYXZlKHByZWZpeCwgc2F2ZXIsIG1vZGVsKSB7XG5cdFx0dGhpcy5wcmVmaXggPSBwcmVmaXg7XG5cdFx0cmV0dXJuIG5ldyBQcm9taXNlKGZ1bmN0aW9uKHJlc29sdmUsIHJlamVjdCkge1xuXHRcdFx0dGhpcy5fZ2V0QXBleCgpLnRoZW4oZnVuY3Rpb24oYXBleCkge1xuXHRcdFx0XHRhcGV4LnBvc3QodGhpcy5fZ2V0RW5kcG9pbnQoKSwge1xuXHRcdFx0XHRcdHNhdmVyOiBzYXZlcixcblx0XHRcdFx0XHRtb2RlbDogSlNPTi5zdHJpbmdpZnkobW9kZWwpXG5cdFx0XHRcdH0pLnRoZW4oZnVuY3Rpb24ocmVzdWx0KSB7XG5cdFx0XHRcdFx0dGhpcy5faGFuZGxlUmVzdWx0KHJlc29sdmUsIHJlamVjdCwgcmVzdWx0KTtcblx0XHRcdFx0fS5iaW5kKHRoaXMpLCBmdW5jdGlvbihlcnIpIHtcblx0XHRcdFx0XHRyZWplY3QoZXJyLm1lc3NhZ2UgfHwgZXJyKTtcblx0XHRcdFx0fSk7XG5cdFx0XHR9LmJpbmQodGhpcyksIGZ1bmN0aW9uKGVycikge1xuXHRcdFx0ICAgcmVqZWN0KGVyci5tZXNzYWdlIHx8IGVycik7XG5cdFx0XHR9KTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cblx0bWQocHJlZml4LCB0eXBlLCBmdWxsTmFtZXMpIHtcblx0XHRyZXR1cm4gbmV3IFByb21pc2UoZnVuY3Rpb24ocmVzb2x2ZSwgcmVqZWN0KSB7XG5cdFx0XHR0aGlzLl9nZXRBcGV4KCkudGhlbihmdW5jdGlvbihhcGV4KSB7XG5cdFx0XHRcdGFwZXgucG9zdChudWxsLCB7XG5cdFx0XHRcdFx0c2F2ZXI6ICdtZC5yZWFkJyxcblx0XHRcdFx0XHRtb2RlbDogSlNPTi5zdHJpbmdpZnkoe1xuXHRcdFx0XHRcdFx0dHlwZTogdHlwZSxcblx0XHRcdFx0XHRcdGZ1bGxOYW1lczogZnVsbE5hbWVzXG5cdFx0XHRcdFx0fSlcblx0XHRcdFx0fSkudGhlbihmdW5jdGlvbihyZXN1bHQpIHtcblx0XHRcdFx0XHR0aGlzLl9oYW5kbGVSZXN1bHQocmVzb2x2ZSwgcmVqZWN0LCByZXN1bHQpO1xuXHRcdFx0XHR9LmJpbmQodGhpcyksIGZ1bmN0aW9uKGVycikge1xuXHRcdFx0XHRcdHJlamVjdChlcnIubWVzc2FnZSB8fCBlcnIpO1xuXHRcdFx0XHR9KTtcblx0XHRcdH0uYmluZCh0aGlzKSwgZnVuY3Rpb24oZXJyKSB7XG5cdFx0XHRcdHJlamVjdChlcnIubWVzc2FnZSB8fCBlcnIpO1xuXHRcdFx0fSk7XG5cdFx0fS5iaW5kKHRoaXMpKTtcblx0fVxuXG5cdHNldENvbm5lY3Rpb24oY29ubikge1xuXHRcdHRoaXMuY29ubmVjdGlvbiA9IGNvbm47XG5cdH1cblxuXHRfZ2V0QXBleCgpIHtcblx0XHRpZih0aGlzLmNvbm5lY3Rpb24pXG5cdFx0XHRyZXR1cm4gUHJvbWlzZS5yZXNvbHZlKHRoaXMuY29ubmVjdGlvbi5hcGV4KTtcblxuXHRcdGlmKHR5cGVvZiB3aW5kb3cgPT09ICd1bmRlZmluZWQnKVxuXHRcdFx0cmV0dXJuIFByb21pc2UucmVqZWN0KCdDb25uZWN0aW9uIG5vdCBzZXQnKTtcblxuXHRcdHRoaXMub2F1dGggPSB0aGlzLm9hdXRoIHx8IG5ldyBPQXV0aCgpO1xuXHRcdHJldHVybiB0aGlzLl9nZXRDb25uZWN0aW9uKHRoaXMub2F1dGgpO1xuXHR9XG5cblx0X2dldENvbm5lY3Rpb24ob2F1dGgpIHtcblx0XHRyZXR1cm4gbmV3IFByb21pc2UoZnVuY3Rpb24ocmVzb2x2ZSwgcmVqZWN0KSB7XG5cdFx0XHRvYXV0aC5nZXRDb25uZWN0aW9uKCkudGhlbihmdW5jdGlvbihjb25uKSB7XG5cdFx0XHRcdHRoaXMuY29ubmVjdGlvbiA9IGNvbm47XG5cdFx0XHRcdHJlc29sdmUodGhpcy5jb25uZWN0aW9uLmFwZXgpO1xuXHRcdFx0fS5iaW5kKHRoaXMpLCBmdW5jdGlvbihlcnIpIHtcblx0XHRcdFx0cmVqZWN0KGVyci5tZXNzYWdlIHx8IGVycik7XG5cdFx0XHR9KTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cblx0X2dldEVuZHBvaW50KCkge1xuXHRcdHJldHVybiB0aGlzLl9nZXRQcmVmaXgoKSArICcvU2VydmljZVJvdXRlcic7XG5cdH1cblxuXHRfZ2V0UHJlZml4KCkge1xuXHRcdHJldHVybiB0aGlzLnByZWZpeCA/ICgnLycgKyB0aGlzLnByZWZpeCkgOiAnJztcblx0fVxuXG5cdF9oYW5kbGVSZXN1bHQocmVzb2x2ZSwgcmVqZWN0LCByZXN1bHQpIHtcblx0XHRpZihyZXN1bHQucHJveHkpIHtcblx0XHRcdHRoaXMuX2hhbmRsZVByb3h5UmVzdWx0KHJlc29sdmUsIHJlamVjdCwgcmVzdWx0LnByb3h5KTtcblx0XHRcdHJldHVybjtcblx0XHR9XG5cdFx0cmVzb2x2ZShwYXJzZShyZXN1bHQpKTtcblx0fVxuXG5cdF9oYW5kbGVQcm94eVJlc3VsdChyZXNvbHZlLCByZWplY3QsIHByb3h5UmVzdWx0KSB7XG5cdFx0aWYocHJveHlSZXN1bHQuZXJyb3IpIHtcblx0XHRcdHRoaXMuX2hhbmRsZVByb3h5RXJyb3JSZXN1bHQocmVqZWN0LCBwcm94eVJlc3VsdC5lcnJvcik7XG5cdFx0XHRyZXR1cm47XG5cdFx0fVxuXHRcdGlmKHRoaXMub2F1dGggJiYgcHJveHlSZXN1bHQuYWNjZXNzVG9rZW4pXG5cdFx0XHR0aGlzLm9hdXRoLmFjY2Vzc1Rva2VuID0gcHJveHlSZXN1bHQuYWNjZXNzVG9rZW47XG5cblx0XHRyZXNvbHZlKHRoaXMuX3BhcnNlKHByb3h5UmVzdWx0LnJlc3BvbnNlKSk7XG5cdH1cblxuXHRfaGFuZGxlUHJveHlFcnJvclJlc3VsdChyZWplY3QsIGVycm9yKSB7XG5cdFx0Y29uc29sZS53YXJuKCdTZXJ2aWNlIFByb3h5IEV4Y2VwdGlvbjogJyArIHRoaXMuX2FkanVzdFByb3h5RXJyb3JNZXNzYWdlKGVycm9yKSk7XG5cdFx0cmVqZWN0KGVycm9yKTtcblx0fVxuXG5cdF9hZGp1c3RQcm94eUVycm9yTWVzc2FnZShlcnJvck1lc3NhZ2UpIHtcblx0XHRpZihlcnJvck1lc3NhZ2UgPT09ICdleHBpcmVkIGFjY2Vzcy9yZWZyZXNoIHRva2VuJylcblx0XHRcdGVycm9yTWVzc2FnZSArPSAnIC0gdG8gYXV0aG9yaXplIGdvIHRvIGh0dHA6Ly9sb2NhbGhvc3Q6JyArIGxvY2F0aW9uLnBvcnQgKyAnL2NvbW1vbi9vYXV0aCc7XG5cblx0XHRyZXR1cm4gZXJyb3JNZXNzYWdlO1xuXHR9XG5cblx0X3BhcnNlKG9iaikge1xuXHRcdHRyeSB7XG5cdFx0XHRyZXR1cm4gSlNPTi5wYXJzZShvYmopO1xuXHRcdH0gY2F0Y2goZSkge1xuXHRcdFx0cmV0dXJuIG9iajtcblx0XHR9XG5cdH1cbn0iXX0=
'use strict';

System.register('common/data/client/ServiceClient.js', ['common/data/client/RemoteClient.js', 'common/data/client/RestClient.js'], function (_export, _context) {
	var RemoteClient, RestClient, _createClass, ServiceClient;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_commonDataClientRemoteClientJs) {
			RemoteClient = _commonDataClientRemoteClientJs.RemoteClient;
		}, function (_commonDataClientRestClientJs) {
			RestClient = _commonDataClientRestClientJs.RestClient;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('ServiceClient', ServiceClient = function () {
				function ServiceClient() {
					_classCallCheck(this, ServiceClient);

					this.client = typeof Visualforce !== 'undefined' ? new RemoteClient() : new RestClient();
				}

				_createClass(ServiceClient, [{
					key: 'read',
					value: function read(prefix, reader, uid) {
						return this.client.read(prefix, reader, uid);
					}
				}, {
					key: 'load',
					value: function load(prefix, loader, uid, context) {
						return this.client.load(prefix, loader, uid, context);
					}
				}, {
					key: 'save',
					value: function save(prefix, saver, model) {
						return this.client.save(prefix, saver, model);
					}
				}, {
					key: 'md',
					value: function md(prefix, type, fullNames) {
						return this.client.md(prefix, type, fullNames);
					}
				}, {
					key: 'setConnection',
					value: function setConnection(conn) {
						if (typeof this.client.setConnection === 'function') this.client.setConnection(conn);
					}
				}]);

				return ServiceClient;
			}());

			_export('ServiceClient', ServiceClient);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlNlcnZpY2VDbGllbnQuanMiXSwibmFtZXMiOlsiUmVtb3RlQ2xpZW50IiwiUmVzdENsaWVudCIsIlNlcnZpY2VDbGllbnQiLCJjbGllbnQiLCJWaXN1YWxmb3JjZSIsInByZWZpeCIsInJlYWRlciIsInVpZCIsInJlYWQiLCJsb2FkZXIiLCJjb250ZXh0IiwibG9hZCIsInNhdmVyIiwibW9kZWwiLCJzYXZlIiwidHlwZSIsImZ1bGxOYW1lcyIsIm1kIiwiY29ubiIsInNldENvbm5lY3Rpb24iXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7QUFBUUEsZSxtQ0FBQUEsWTs7QUFDQUMsYSxpQ0FBQUEsVTs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzRCQUVLQyxhO0FBRVosNkJBQWM7QUFBQTs7QUFDYixVQUFLQyxNQUFMLEdBQWMsT0FBT0MsV0FBUCxLQUF1QixXQUF2QixHQUFxQyxJQUFJSixZQUFKLEVBQXJDLEdBQTBELElBQUlDLFVBQUosRUFBeEU7QUFDQTs7OzswQkFFSUksTSxFQUFRQyxNLEVBQVFDLEcsRUFBSztBQUN6QixhQUFPLEtBQUtKLE1BQUwsQ0FBWUssSUFBWixDQUFpQkgsTUFBakIsRUFBeUJDLE1BQXpCLEVBQWlDQyxHQUFqQyxDQUFQO0FBQ0E7OzswQkFFSUYsTSxFQUFRSSxNLEVBQVFGLEcsRUFBS0csTyxFQUFTO0FBQ2xDLGFBQU8sS0FBS1AsTUFBTCxDQUFZUSxJQUFaLENBQWlCTixNQUFqQixFQUF5QkksTUFBekIsRUFBaUNGLEdBQWpDLEVBQXNDRyxPQUF0QyxDQUFQO0FBQ0E7OzswQkFFSUwsTSxFQUFRTyxLLEVBQU9DLEssRUFBTztBQUMxQixhQUFPLEtBQUtWLE1BQUwsQ0FBWVcsSUFBWixDQUFpQlQsTUFBakIsRUFBeUJPLEtBQXpCLEVBQWdDQyxLQUFoQyxDQUFQO0FBQ0E7Ozt3QkFFRVIsTSxFQUFRVSxJLEVBQU1DLFMsRUFBVztBQUMzQixhQUFPLEtBQUtiLE1BQUwsQ0FBWWMsRUFBWixDQUFlWixNQUFmLEVBQXVCVSxJQUF2QixFQUE2QkMsU0FBN0IsQ0FBUDtBQUNBOzs7bUNBRWFFLEksRUFBTTtBQUNuQixVQUFHLE9BQU8sS0FBS2YsTUFBTCxDQUFZZ0IsYUFBbkIsS0FBcUMsVUFBeEMsRUFDQyxLQUFLaEIsTUFBTCxDQUFZZ0IsYUFBWixDQUEwQkQsSUFBMUI7QUFDRCIsImZpbGUiOiJTZXJ2aWNlQ2xpZW50LmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtSZW1vdGVDbGllbnR9IGZyb20gJ2NvbW1vbi9kYXRhL2NsaWVudC9SZW1vdGVDbGllbnQuanMnO1xuaW1wb3J0IHtSZXN0Q2xpZW50fSBmcm9tICdjb21tb24vZGF0YS9jbGllbnQvUmVzdENsaWVudC5qcyc7XG5cbmV4cG9ydCBjbGFzcyBTZXJ2aWNlQ2xpZW50IHtcblxuXHRjb25zdHJ1Y3RvcigpIHtcblx0XHR0aGlzLmNsaWVudCA9IHR5cGVvZiBWaXN1YWxmb3JjZSAhPT0gJ3VuZGVmaW5lZCcgPyBuZXcgUmVtb3RlQ2xpZW50KCkgOiBuZXcgUmVzdENsaWVudCgpO1xuXHR9XG5cblx0cmVhZChwcmVmaXgsIHJlYWRlciwgdWlkKSB7XG5cdFx0cmV0dXJuIHRoaXMuY2xpZW50LnJlYWQocHJlZml4LCByZWFkZXIsIHVpZCk7XG5cdH1cblxuXHRsb2FkKHByZWZpeCwgbG9hZGVyLCB1aWQsIGNvbnRleHQpIHtcblx0XHRyZXR1cm4gdGhpcy5jbGllbnQubG9hZChwcmVmaXgsIGxvYWRlciwgdWlkLCBjb250ZXh0KTtcblx0fVxuXG5cdHNhdmUocHJlZml4LCBzYXZlciwgbW9kZWwpIHtcblx0XHRyZXR1cm4gdGhpcy5jbGllbnQuc2F2ZShwcmVmaXgsIHNhdmVyLCBtb2RlbCk7XG5cdH1cblxuXHRtZChwcmVmaXgsIHR5cGUsIGZ1bGxOYW1lcykge1xuXHRcdHJldHVybiB0aGlzLmNsaWVudC5tZChwcmVmaXgsIHR5cGUsIGZ1bGxOYW1lcyk7XG5cdH1cblxuXHRzZXRDb25uZWN0aW9uKGNvbm4pIHtcblx0XHRpZih0eXBlb2YgdGhpcy5jbGllbnQuc2V0Q29ubmVjdGlvbiA9PT0gJ2Z1bmN0aW9uJylcblx0XHRcdHRoaXMuY2xpZW50LnNldENvbm5lY3Rpb24oY29ubik7XG5cdH1cbn0iXX0=
'use strict';

System.register('common/data/sb-db/Db.js', ['common/data/sb-db/Metadata.js'], function (_export, _context) {
	var Metadata, _createClass, ID_DELIM, JS_DEF, REL_PROP, md, Db, Model;

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function enhanceProperties(obj) {
		if (obj && obj.properties) {
			var requiredProps = {};
			for (var p in obj.required) {
				requiredProps[obj.required[p]] = true;
			}for (var prop in obj.properties) {
				var _p = obj.properties[prop],
				    type = _p.type;

				_p.id = _p.id ? _p.id : prop;
				if (requiredProps[prop]) _p.required = true;

				switch (_p.type) {
					case 'array':
						if (_p.items && _p.items.enum) type = 'enum';else if (_p.items && _p.items.$ref) type = _p.$_md ? 'md' : 'lookup';
						break;
					case 'string':
						switch (_p.format) {
							case 'date':
								type = 'date';break;
							case 'date-time':
								type = 'datetime';break;
							case 'email':
								type = 'email';break;
							case 'html':
								type = 'richstring';break;
							case 'uri':
								type = 'url';break;
							case 'phone':
								type = 'phone';break;
							case 'autonumber':
								type = 'autonumber';break;
						}
						break;
					case 'integer':
						type = 'number';
						break;
					case 'number':
						switch (_p.format) {
							case 'currency':
								type = 'currency';break;
							case 'percent':
								type = 'percent';break;
							case 'rollup':
								type = 'rollup';break;
						}
						break;
				}

				if (_p.$ref) type = _p.$_md ? 'md' : 'lookup';

				type = _p.enum ? 'enum' : type;
				type = _p.$_formula ? 'formula' : type;

				_p.$_type = type;
			}
		}
	}

	function initRelationships(obj, defs) {
		if (obj.schema && obj.schema.properties) {
			for (var p in obj.schema.properties) {
				var $ref = obj.schema.properties[p].$ref,
				    isArray = obj.schema.properties[p].type === 'array',
				    items = obj.schema.properties[p].items;

				if ($ref || isArray && items && items.$ref) {
					var rels = obj.schema[REL_PROP] || {};
					rels[p] = { obj: $ref };

					if (isArray) {
						rels[p].obj = items.$ref;
						rels[p].isMany = true;
					}
					obj.schema[REL_PROP] = rels;
				}
			}
		}
	}

	return {
		setters: [function (_commonDataSbDbMetadataJs) {
			Metadata = _commonDataSbDbMetadataJs;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			ID_DELIM = '_';
			JS_DEF = '#/definitions/';
			REL_PROP = '$_relations';
			md = {
				schema: Metadata.schema,
				objectLayouts: Metadata.objectLayouts
			};

			_export('Db', Db = function () {
				function Db() {
					_classCallCheck(this, Db);
				}

				_createClass(Db, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-db';
						this.properties = {
							item: {
								type: Object,
								notify: true
							},

							uid: String,

							items: {
								type: Array,
								notify: true
							},

							model: {
								type: String,
								observer: '_modelChanged'
							},

							modelClass: {
								type: Object
							}
						};

						Db.initObjectLayouts(md.objectLayouts, this);
						Db.fromSchema(md.schema, this);
					}
				}, {
					key: 'get',
					value: function get() {
						if (!this.modelClass) throw new Error('sb-db cannot get all records because modelClass is null');

						return this.modelClass.get().then(function (records) {
							var len = records ? records.length : 0;
							for (var i = 0; i < len; i++) {
								records[i] = new this.modelClass(records[i]);
							}this.items = records;
							this.foo = records;
						}.bind(this));
					}
				}, {
					key: 'save',
					value: function save() {}
				}, {
					key: 'remove',
					value: function remove(o) {
						if (Array.isArray(o)) {
							for (var obj in o) {
								o[obj]._deleted = true;
							}

							return this.modelClass.remove(o).then(function () {
								this.items = this.items.filter(function (n) {
									return !n._deleted;
								});
							}.bind(this));
						} else if (o && o.id && o.remove) {
							return o.remove().then(function () {
								this.item = {};
							});
						}
					}
				}, {
					key: '_get',
					value: function _get(modelClass, id) {
						if (modelClass && id && typeof id === 'string') {
							modelClass.get(id).then(function (item) {
								this.item = new modelClass(item);
							}.bind(this));
						}
					}
				}, {
					key: '_getNew',
					value: function _getNew(modelClass, item) {
						if (item && !item.id && modelClass && item.constructor !== modelClass) {
							this.item = new modelClass(item);
						}
					}
				}, {
					key: '_modelChanged',
					value: function _modelChanged(nv, ov) {
						if (!this.modelClass) this.modelClass = Db[nv];
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['_get( modelClass, uid )', '_getNew( modelClass, item )'];
					}
				}], [{
					key: 'initObjectLayouts',
					value: function initObjectLayouts(layouts, con) {
						Db.objectLayouts = md.objectLayouts = layouts;
						if (con) con.objectLayouts = layouts;
					}
				}, {
					key: 'fromSchema',
					value: function fromSchema(schema, con) {
						if (schema && schema.definitions) {
							md.schema = schema;
							for (var d in schema.definitions) {
								var clazz = function (_Model) {
									_inherits(DomainObject, _Model);

									function DomainObject() {
										_classCallCheck(this, DomainObject);

										return _possibleConstructorReturn(this, (DomainObject.__proto__ || Object.getPrototypeOf(DomainObject)).apply(this, arguments));
									}

									return DomainObject;
								}(Model);
								clazz.schema = schema.definitions[d];
								clazz.db = Db;

								enhanceProperties(clazz.schema);
								initRelationships(clazz);

								Db[d] = clazz;
								if (con) con[d] = clazz;
							}
						}
					}
				}]);

				return Db;
			}());

			_export('Db', Db);

			Model = function () {
				function Model(obj) {
					_classCallCheck(this, Model);

					var keys = Object.keys(obj),
					    len = keys ? keys.length : 0;

					for (var i = 0; i < len; i++) {
						var key = keys[i];
						if (key !== 'save' && key !== 'remove') this[key] = obj[key];
					}
				}

				_createClass(Model, [{
					key: 'save',
					value: function save() {
						return this.constructor.db.adapter.save(this);
					}
				}, {
					key: 'remove',
					value: function remove() {
						return this.constructor.db.adapter.remove(this);
					}
				}], [{
					key: 'save',
					value: function save(objs) {
						return this.db.adapter.save(objs);
					}
				}, {
					key: 'remove',
					value: function remove(objs) {
						return this.db.adapter.remove(objs);
					}
				}, {
					key: 'get',
					value: function get(id) {
						return this.db.adapter.get(id, this);
					}
				}, {
					key: 'md',
					value: function md() {
						return this.schema;
					}
				}, {
					key: 'relationships',
					value: function relationships() {
						return this.schema[REL_PROP];
					}
				}]);

				return Model;
			}();

			Polymer(Db);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRiLmpzIl0sIm5hbWVzIjpbImVuaGFuY2VQcm9wZXJ0aWVzIiwib2JqIiwicHJvcGVydGllcyIsInJlcXVpcmVkUHJvcHMiLCJwIiwicmVxdWlyZWQiLCJwcm9wIiwidHlwZSIsImlkIiwiaXRlbXMiLCJlbnVtIiwiJHJlZiIsIiRfbWQiLCJmb3JtYXQiLCIkX2Zvcm11bGEiLCIkX3R5cGUiLCJpbml0UmVsYXRpb25zaGlwcyIsImRlZnMiLCJzY2hlbWEiLCJpc0FycmF5IiwicmVscyIsIlJFTF9QUk9QIiwiaXNNYW55IiwiTWV0YWRhdGEiLCJJRF9ERUxJTSIsIkpTX0RFRiIsIm1kIiwib2JqZWN0TGF5b3V0cyIsIkRiIiwiaXMiLCJpdGVtIiwiT2JqZWN0Iiwibm90aWZ5IiwidWlkIiwiU3RyaW5nIiwiQXJyYXkiLCJtb2RlbCIsIm9ic2VydmVyIiwibW9kZWxDbGFzcyIsImluaXRPYmplY3RMYXlvdXRzIiwiZnJvbVNjaGVtYSIsIkVycm9yIiwiZ2V0IiwidGhlbiIsInJlY29yZHMiLCJsZW4iLCJsZW5ndGgiLCJpIiwiZm9vIiwiYmluZCIsIm8iLCJfZGVsZXRlZCIsInJlbW92ZSIsImZpbHRlciIsIm4iLCJjb25zdHJ1Y3RvciIsIm52Iiwib3YiLCJsYXlvdXRzIiwiY29uIiwiZGVmaW5pdGlvbnMiLCJkIiwiY2xhenoiLCJNb2RlbCIsImRiIiwia2V5cyIsImtleSIsImFkYXB0ZXIiLCJzYXZlIiwib2JqcyIsIlBvbHltZXIiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBMktBLFVBQVNBLGlCQUFULENBQTRCQyxHQUE1QixFQUFrQztBQUNqQyxNQUFJQSxPQUFPQSxJQUFJQyxVQUFmLEVBQTRCO0FBQzNCLE9BQUlDLGdCQUFnQixFQUFwQjtBQUNBLFFBQUssSUFBSUMsQ0FBVCxJQUFjSCxJQUFJSSxRQUFsQjtBQUNBRixrQkFBY0YsSUFBSUksUUFBSixDQUFhRCxDQUFiLENBQWQsSUFBaUMsSUFBakM7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QUFDdEIsYUFBTyxLQUFLQSxNQUFMLENBQVlHLFFBQVosQ0FBUDtBQUNBOzs7Ozs7QUFJRmlELFdBQVMxQyxFQUFUIiwiZmlsZSI6IkRiLmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0ICogYXMgTWV0YWRhdGEgZnJvbSAnY29tbW9uL2RhdGEvc2ItZGIvTWV0YWRhdGEuanMnO1xuXG5sZXQgSURfREVMSU0gPSAnXycsXG5cdFx0SlNfREVGID0gJyMvZGVmaW5pdGlvbnMvJyxcblx0XHRSRUxfUFJPUCA9ICckX3JlbGF0aW9ucycsXG5cdFx0bWQgPSB7ICAvLyBhIHNpbmdsZXRvbiBmb3Igb3B0aW1pemVkIFBvbHltZXIgcmVnaXN0cmF0aW9uL2RhdGEgc2hhcmluZ1xuXHRcdFx0c2NoZW1hOiBNZXRhZGF0YS5zY2hlbWEsICAvLyBkZWZhdWx0IHZhbHVlXG5cdFx0XHRvYmplY3RMYXlvdXRzOiBNZXRhZGF0YS5vYmplY3RMYXlvdXRzXG5cdFx0fTtcblxuLyoqXG4qIFRoZSBEYXRhYmFzZS9QZXJzaXN0ZW5jZSBsYXllciBjbGFzc1xuKlxuKiBUaGVyZSBhcmUgMiBcIm1vZGVzXCIgaW4gd2hpY2ggdGhpcyBjb21wb25lbnQgb3BlcmF0ZXM6ICBzaW5nbGUgaXRlbSBhbmQgbXVsdGktaXRlbTpcbiogIC0gU2luZ2xlIGl0ZW0gaXMgd2hlcmUgeW91IHdhbnQgdG8gZ2V0L3NhdmUgMSBkb21haW4gb2JqZWN0IGF0IGEgdGltZSwgZS5nLiBhIERldGFpbCBwYWdlXG4qICAtIE11bHRpIGl0ZW0gaXMgd2hlcmUgeW91IHdhbnQgdG8gZ2V0L3NhdmUgbXVsdGlwbGUgZG9tYWluIG9iamVjdHMgYXQgYSB0aW1lIChvZiBzYW1lIHR5cGUvY2xhc3MpLCBlLmcuIGEgTGlzdCBwYWdlXG4qXG4qIEluIGJvdGggY2FzZXMsIHRob3VnaCwgZG9tYWluIG9iamVjdHMgY2FuIGluY2x1ZGUgdGhlaXIgcmVsYXRpb25zIHNvIHNpbmdsZSBpdGVtIG1vZGUgY2FuIHN0aWxsIHByZXNlbnQgYSBcImxpc3RcIiBvZiByZWFsdGVkIGl0ZW1zLlxuKlxuKiBNZXRhZGF0YVxuKiA9PT09PT09PT09PT09XG4qIEVhY2ggZW50aXR5IGluIHRoZSBkb21haW4gbW9kZWwgd2lsbCBiZSBhIHN0YXRpYyBwcm9wZXJ0eSBvZiB0aGlzIGNsYXNzIGFuZCB3aWxsIGV4dGVuZCB0aGUgTW9kZWwgY2xhc3MgYmVsb3cuXG4qIEZvciBleGFtcGxlLCBEYi5RdW90ZSB3b3VsZCBiZSB0aGUgc2FtZSBhczpcbiogICBjbGFzcyBRdW90ZSBleHRlbmRzIE1vZGVsIHt9XG4qICAgRGIuUXVvdGUgPSBRdW90ZTtcbipcbiogQGNsYXNzXG4qL1xuZXhwb3J0IGNsYXNzIERiIHtcblxuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLWRiJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSB7XG5cdFx0XHQvKiogVGhlIG9iamVjdCBpbnN0YW5jZSAoc2luZ2xlIGl0ZW0gbW9kZSkgKi9cblx0XHRcdGl0ZW06IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHRub3RpZnk6IHRydWVcblx0XHRcdH0sXG5cdFx0XHQvKiogVGhlIGlkIG9mIHRoZSBpdGVtIChzaW5nbGUgaXRlbSBtb2RlKSAqL1xuXHRcdFx0dWlkOiBTdHJpbmcsXG5cdFx0XHQvKiogVGhlIGFycmF5IG9mIGl0ZW1zIChtdWx0aSBpdGVtIG1vZGUpICovXG5cdFx0XHRpdGVtczoge1xuXHRcdFx0XHR0eXBlOiBBcnJheSxcblx0XHRcdFx0bm90aWZ5OiB0cnVlXG5cdFx0XHR9LFxuXHRcdFx0LyoqIFRoZSBzdHJpbmcgbmFtZS90eXBlIG9mIHRoZSBNb2RlbENsYXNzLiAgT25seSBuZWVkZWQgaWYgbW9kZWxDbGFzcyBpcyBub3Qgc2V0IGFuZCB3aWxsIHNldCBtb2RlbENsYXNzIHdoZW4gY2hhbmdlZC4gKi9cblx0XHRcdG1vZGVsOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZyxcblx0XHRcdFx0b2JzZXJ2ZXI6ICdfbW9kZWxDaGFuZ2VkJ1xuXHRcdFx0fSxcblx0XHRcdC8qKiBUaGUgY2xhc3MgaW5zdGFuY2UgKERvbWFpbk9iamVjdCkgdGhhdCBiYWNrcyB0aGlzIGNvbXBvbmVudCBpbnN0YW5jZSwgZS5nLiBEYi5RdW90ZSwgRGIuUXVvdGVMaW5lLCBldGMuICovXG5cdFx0XHRtb2RlbENsYXNzOiB7XG5cdFx0XHRcdHR5cGU6IE9iamVjdFxuXHRcdFx0fVxuXHRcdH07XG5cblx0XHQvLyBQb2x5bWVyIGRvZXNuJ3QgdHJhbnNmZXIvZXh0ZW5kIHN0YXRpYyBwcm9wZXJ0aWVzIHRvIGNvbXBvbmVudCBpbnN0YW5jZXMsIGUuZy4gdGhpcy4kLmRiLlF1b3RlIHdpbGwgYmUgdW5kZWZpbmVkIGV2ZW4gdGhvdWdoIERiLlF1b3RlIGlzIHZhbGlkIChhZnRlciBhIGZyb21TY2hlbWEoKSBjYWxsKS5cblx0XHQvLyBTbyB3ZSBjYWxsIHRoZSBpbml0aWFsaXphdGlvbiBmdW5jdGlvbnMgaGVyZSwgdXNpbmcgdGhlIHNpbmdsZXRvbiBtZCBkYXRhICh3aGljaCBtdXN0IGJlIHByZXZpb3VzbHkgc2V0IHZpYSBEYiBzdGF0aWMgZnVuY3Rpb24gaW52b2thdGlvbnMpXG5cdFx0Ly8gYmVmb3JlUmVnaXN0ZXIoKSBpcyBvbmx5IGNhbGxlZCBvbmNlIGJ5IFBvbHltZXIgc28gd2UgZG9uJ3QgZXhlY3V0ZSB0aGVzZSBldmVyeSB0aW1lIGEgbmV3IDxzYi1kYj4gaXMgYWRkZWQgdG8gYSBwYWdlLlxuXHRcdC8vIElmIGxheW91dHMgYW5kIHNjaGVtYSBjaGFuZ2UgaW4gdGhlIG1pZGRsZSBvZiBhIHVzZXIgc2Vzc2lvbiB3ZSBzaG91bGQgZG8gYSBoYXJkIHBhZ2UgcmVmcmVzaCBzbyBiZWZvcmVSZWdpc3RlcigpIGdldHMgY2FsbGVkIGFnYWluLlxuXHRcdERiLmluaXRPYmplY3RMYXlvdXRzKCBtZC5vYmplY3RMYXlvdXRzLCB0aGlzICk7XG5cdFx0RGIuZnJvbVNjaGVtYSggbWQuc2NoZW1hLCB0aGlzICk7XG5cdH1cblxuXHRnZXQgb2JzZXJ2ZXJzKCkge1xuXHRcdHJldHVybiBbXG5cdFx0XHQnX2dldCggbW9kZWxDbGFzcywgdWlkICknLFxuXHRcdFx0J19nZXROZXcoIG1vZGVsQ2xhc3MsIGl0ZW0gKSdcblx0XHRdXG5cdH1cblxuXHQvKipcblx0KiBHZXQgYWxsIHRoZSBpdGVtcyBmb3IgdGhlIG1vZGVsQ2xhc3MgYW5kIHNldCB0byBcIml0ZW1zXCIgcHJvcGVydHlcblx0Ki9cblx0Z2V0KCkge1xuXHRcdGlmKCAhdGhpcy5tb2RlbENsYXNzIClcblx0XHR0aHJvdyBuZXcgRXJyb3IoICdzYi1kYiBjYW5ub3QgZ2V0IGFsbCByZWNvcmRzIGJlY2F1c2UgbW9kZWxDbGFzcyBpcyBudWxsJyApO1xuXG5cdFx0cmV0dXJuIHRoaXMubW9kZWxDbGFzcy5nZXQoKS50aGVuKCBmdW5jdGlvbihyZWNvcmRzKSB7XG5cdFx0XHRsZXQgbGVuID0gcmVjb3JkcyA/IHJlY29yZHMubGVuZ3RoIDogMDtcblx0XHRcdGZvciggbGV0IGk9MDsgaSA8IGxlbjsgaSsrIClcblx0XHRcdHJlY29yZHNbaV0gPSBuZXcgdGhpcy5tb2RlbENsYXNzKCByZWNvcmRzW2ldICk7XG5cblx0XHRcdHRoaXMuaXRlbXMgPSByZWNvcmRzO1xuXHRcdFx0dGhpcy5mb28gPSByZWNvcmRzO1xuXHRcdH0uYmluZCh0aGlzKSk7XG5cdH1cblxuXHRzYXZlKCkge1xuXHR9XG5cblx0cmVtb3ZlKCBvICkge1xuXHRcdGlmKCBBcnJheS5pc0FycmF5KG8pICkge1xuXHRcdFx0Zm9yKCBsZXQgb2JqIGluIG8gKVxuXHRcdFx0b1tvYmpdLl9kZWxldGVkID0gdHJ1ZTsgIC8vIHRlbXAgZmxhZyBhcyBkZWxldGVkXG5cblx0XHRcdHJldHVybiB0aGlzLm1vZGVsQ2xhc3MucmVtb3ZlKCBvICkudGhlbiggZnVuY3Rpb24oKSB7XG5cdFx0XHRcdC8vIHJlbW92ZSBhbGwgZGVsZXRlZCB2YWx1ZXMgZnJvbSBpdGVtcyBhcnJheVxuXHRcdFx0XHR0aGlzLml0ZW1zID0gdGhpcy5pdGVtcy5maWx0ZXIoIGZ1bmN0aW9uKG4pIHsgcmV0dXJuICFuLl9kZWxldGVkIH0gKTtcblx0XHRcdH0uYmluZCh0aGlzKSApO1xuXHRcdH1cblx0XHRlbHNlIGlmKCBvICYmIG8uaWQgJiYgby5yZW1vdmUgKSB7XG5cdFx0XHRyZXR1cm4gby5yZW1vdmUoKS50aGVuKCBmdW5jdGlvbigpIHtcblx0XHRcdFx0dGhpcy5pdGVtID0ge307XG5cdFx0XHR9KTtcblx0XHR9XG5cdH1cblxuXHRfZ2V0KCBtb2RlbENsYXNzLCBpZCApIHtcblx0XHRpZiggbW9kZWxDbGFzcyAmJiBpZCAmJiB0eXBlb2YgaWQgPT09ICdzdHJpbmcnICkge1xuXHRcdFx0Ly8gcXVlcnkgZGIgZm9yIGl0ZW0gaW5zdGFuY2UgdXNpbmcgaWRcblx0XHRcdG1vZGVsQ2xhc3MuZ2V0KCBpZCApLnRoZW4oIGZ1bmN0aW9uKGl0ZW0pIHtcblx0XHRcdFx0dGhpcy5pdGVtID0gbmV3IG1vZGVsQ2xhc3MoIGl0ZW0gKTtcblx0XHRcdH0uYmluZCh0aGlzKSk7XG5cdFx0fVxuXHR9XG5cblx0X2dldE5ldyggbW9kZWxDbGFzcywgaXRlbSApIHtcblx0XHRpZiggaXRlbSAmJiAhaXRlbS5pZCAmJiBtb2RlbENsYXNzICYmIGl0ZW0uY29uc3RydWN0b3IgIT09IG1vZGVsQ2xhc3MgKSB7XG5cdFx0XHQvLyBtdXN0IGJlIGNyZWF0aW5nIGEgbmV3IHJlY29yZCB3aXRoIHNpbXBsZSBKU09OIG9iamVjdCBzbyBpbnN0YW50aWF0ZSBjb3JyZWN0IG1vZGVsQ2xhc3MgaW5zdGFuY2Vcblx0XHRcdHRoaXMuaXRlbSA9IG5ldyBtb2RlbENsYXNzKCBpdGVtICk7XG5cdFx0fVxuXHR9XG5cblx0X21vZGVsQ2hhbmdlZCggbnYsIG92ICkge1xuXHRcdGlmKCAhdGhpcy5tb2RlbENsYXNzIClcblx0XHR0aGlzLm1vZGVsQ2xhc3MgPSBEYltudl07XG5cdH1cblxuXHRzdGF0aWMgaW5pdE9iamVjdExheW91dHMoIGxheW91dHMsIGNvbiApIHtcblx0XHREYi5vYmplY3RMYXlvdXRzID0gbWQub2JqZWN0TGF5b3V0cyA9IGxheW91dHM7XG5cdFx0aWYoIGNvbiApXG5cdFx0Y29uLm9iamVjdExheW91dHMgPSBsYXlvdXRzO1xuXHR9XG5cblx0c3RhdGljIGZyb21TY2hlbWEoIHNjaGVtYSwgY29uICkge1xuXHRcdGlmKCBzY2hlbWEgJiYgc2NoZW1hLmRlZmluaXRpb25zICkge1xuXHRcdFx0bWQuc2NoZW1hID0gc2NoZW1hO1xuXHRcdFx0Zm9yKCBsZXQgZCBpbiBzY2hlbWEuZGVmaW5pdGlvbnMgKSB7XG5cdFx0XHRcdGxldCBjbGF6eiA9IGNsYXNzIERvbWFpbk9iamVjdCBleHRlbmRzIE1vZGVsIHt9O1xuXHRcdFx0XHRjbGF6ei5zY2hlbWEgPSBzY2hlbWEuZGVmaW5pdGlvbnNbZF07XG5cdFx0XHRcdGNsYXp6LmRiID0gRGI7XG5cblx0XHRcdFx0ZW5oYW5jZVByb3BlcnRpZXMoIGNsYXp6LnNjaGVtYSApO1xuXHRcdFx0XHRpbml0UmVsYXRpb25zaGlwcyggY2xhenogKTtcblxuXHRcdFx0XHREYltkXSA9IGNsYXp6O1xuXHRcdFx0XHRpZiggY29uIClcblx0XHRcdFx0Y29uW2RdID0gY2xheno7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG59XG4vKipcbiogSlNPTiBTY2hlbWEgaGFzIHZlcnkgcHJpbWl0aXZlIHR5cGVzLiAgVGhpcyBmdW5jdGlvbiBhZGRzIGEgc3BlY2lhbCBwcm9wZXJ0eSB0byBwcm9wZXJ0aWVzIGNhbGxlZCBcIiRfdHlwZVwiXG4qIHRoYXQgZW51bWVyYXRlcyBvdXIgbG9naWNhbCB0eXBlcy4gIFBvc3NpYmxlIHZhbHVlcyBhcmU6XG4qIHN0cmluZywgbnVtYmVyLCBib29sZWFuLCBkYXRlLCBkYXRldGltZSwgZW51bSwgcmljaHN0cmluZywgY3VycmVuY3ksIHBlcmNlbnQsIGxvb2t1cCwgcm9sbHVwLCBhdXRvbnVtYmVyLCBmb3JtdWxhLCBlbWFpbCwgcGhvbmUsIHVybCwgbWRcbipcbiogVGhpcyBsaXN0IGNsb3NlbHkgbWlycm9ycyB0aGUgU0YgZGF0YXR5cGVzIHdpdGggdGhlc2UgZGlmZmVyZW5jZXM6XG4qXG4qIGVudW0gPSBwaWNrbGlzdCAgKGlmIHNjaGVtYS50eXBlID09ICdhcnJheScgd2Uga25vdyBpdCBpcyBtdWx0aS1zZWxlY3QgcGlja2xpc3QpXG4qIHJpY2hzdHJpbmcgPT0gdGV4dCBhcmVhIChyaWNoKVxuKiBsb29rdXAgKHNhbWUgYXMgU0YgYnV0IGlmIHNjaGVtYS50eXBlID09ICdhcnJheScgd2Uga25vdyBpdCBpcyBcImNoaWxkIHJlbGF0aW9uc2hpcFwiIHNpZGUgb2YgbG9va3VwKVxuKiBtZCAocGFydCBvZiBNYXN0ZXItRGV0YWlsIHJlbGF0aW9uc2hpcC4gIFRoZSBKU09OIHNjaGVtYSBsb29rcyB2ZXJ5IHNpbWlsYXIgdG8gbG9va3VwIGJ1dCB3ZSBhZGQgYSBcIiRfbWQ6IHRydWVcIiB0byBpdCBmb3IgdGhpcyBzcGVjaWFsIGNhc2UpXG4qXG4qIFdlIGFsc28gc2V0IHRoZSBpZCBwcm9wZXJ0eSBvZiB0aGUgYWN0dWFsIHByb3BlcnR5IG9iamVjdCwgaWYgaXQgZG9lc24ndCBhbHJlYWR5IGV4aXN0LCB0byB0aGUga2V5IHZhbHVlIGl0IGhhcyBpbiBcInByb3BlcnRpZXNcIi5cbiogV2UgYWxzbyBzZXQgcmVxdWlyZWQ6IHRydWUgb24gdGhlIHByb3BlcnR5IG9iamVjdCBpdHNlbGYgaW4gYWRkaXRpb24gdG8gdGhlIEpTT04gc2NoZW1hIHN0YW5kYXJkIFwicmVxdWlyZWRcIiBhcnJheSAoZm9yIGVhc2llciB1c2UgZG93bnN0cmVhbSkuXG4qXG4qIEBwYXJhbSAge1t0eXBlXX0gb2JqIFtkZXNjcmlwdGlvbl1cbiogQHJldHVybiB7W3R5cGVdfSAgICAgW2Rlc2NyaXB0aW9uXVxuKi9cbmZ1bmN0aW9uIGVuaGFuY2VQcm9wZXJ0aWVzKCBvYmogKSB7XG5cdGlmKCBvYmogJiYgb2JqLnByb3BlcnRpZXMgKSB7XG5cdFx0bGV0IHJlcXVpcmVkUHJvcHMgPSB7fTtcblx0XHRmb3IoIGxldCBwIGluIG9iai5yZXF1aXJlZCApXG5cdFx0cmVxdWlyZWRQcm9wc1tvYmoucmVxdWlyZWRbcF1dID0gdHJ1ZTtcblxuXHRcdGZvciggbGV0IHByb3AgaW4gb2JqLnByb3BlcnRpZXMgKSB7XG5cdFx0XHRsZXQgcCA9IG9iai5wcm9wZXJ0aWVzW3Byb3BdLFxuXHRcdFx0dHlwZSA9IHAudHlwZTtcblxuXHRcdFx0cC5pZCA9IHAuaWQgPyBwLmlkIDogcHJvcDsgLy8gY29udmllbmVuY2Vcblx0XHRcdGlmKCByZXF1aXJlZFByb3BzW3Byb3BdIClcblx0XHRcdHAucmVxdWlyZWQgPSB0cnVlO1xuXG5cdFx0XHRzd2l0Y2goIHAudHlwZSApIHtcblx0XHRcdFx0Y2FzZSAnYXJyYXknOlxuXHRcdFx0XHRpZiggcC5pdGVtcyAmJiBwLml0ZW1zLmVudW0gKVxuXHRcdFx0XHR0eXBlID0gJ2VudW0nOyAvLyBlLmcuIHBpY2tsaXN0IG11bHRpcGxlXG5cdFx0XHRcdGVsc2UgaWYoIHAuaXRlbXMgJiYgcC5pdGVtcy4kcmVmIClcblx0XHRcdFx0dHlwZSA9IHAuJF9tZCA/ICdtZCcgOiAnbG9va3VwJztcblx0XHRcdFx0YnJlYWs7XG5cdFx0XHRcdGNhc2UgJ3N0cmluZyc6XG5cdFx0XHRcdHN3aXRjaCggcC5mb3JtYXQgKSB7XG5cdFx0XHRcdFx0Y2FzZSAnZGF0ZSc6IHR5cGUgPSAnZGF0ZSc7IGJyZWFrO1xuXHRcdFx0XHRcdGNhc2UgJ2RhdGUtdGltZSc6IHR5cGUgPSAnZGF0ZXRpbWUnOyBicmVhaztcblx0XHRcdFx0XHRjYXNlICdlbWFpbCc6IHR5cGUgPSAnZW1haWwnOyBicmVhaztcblx0XHRcdFx0XHRjYXNlICdodG1sJzogdHlwZSA9ICdyaWNoc3RyaW5nJzsgYnJlYWs7XG5cdFx0XHRcdFx0Y2FzZSAndXJpJzogdHlwZSA9ICd1cmwnOyBicmVhaztcblx0XHRcdFx0XHRjYXNlICdwaG9uZSc6IHR5cGUgPSAncGhvbmUnOyBicmVhaztcblx0XHRcdFx0XHRjYXNlICdhdXRvbnVtYmVyJzogdHlwZSA9ICdhdXRvbnVtYmVyJzsgYnJlYWs7XG5cdFx0XHRcdH1cblx0XHRcdFx0YnJlYWs7XG5cdFx0XHRcdGNhc2UgJ2ludGVnZXInOlxuXHRcdFx0XHR0eXBlID0gJ251bWJlcic7IC8vIFRPRE86IHNldCBzY2FsZT9cblx0XHRcdFx0YnJlYWs7XG5cdFx0XHRcdGNhc2UgJ251bWJlcic6XG5cdFx0XHRcdHN3aXRjaCggcC5mb3JtYXQgKSB7XG5cdFx0XHRcdFx0Y2FzZSAnY3VycmVuY3knOiB0eXBlID0gJ2N1cnJlbmN5JzsgYnJlYWs7XG5cdFx0XHRcdFx0Y2FzZSAncGVyY2VudCc6IHR5cGUgPSAncGVyY2VudCc7IGJyZWFrO1xuXHRcdFx0XHRcdGNhc2UgJ3JvbGx1cCc6IHR5cGUgPSAncm9sbHVwJzsgYnJlYWs7XG5cdFx0XHRcdH1cblx0XHRcdFx0YnJlYWs7XG5cdFx0XHR9XG5cblx0XHRcdGlmKCBwLiRyZWYgKVxuXHRcdFx0dHlwZSA9IHAuJF9tZCA/ICdtZCcgOiAnbG9va3VwJztcblxuXHRcdFx0dHlwZSA9IHAuZW51bSA/ICdlbnVtJyA6IHR5cGU7ICAvLyBlLmcuIHBpY2tsaXN0XG5cdFx0XHR0eXBlID0gcC4kX2Zvcm11bGEgPyAnZm9ybXVsYScgOiB0eXBlO1xuXG5cdFx0XHRwLiRfdHlwZSA9IHR5cGU7XG5cdFx0fVxuXHR9XG59XG5cbmZ1bmN0aW9uIGluaXRSZWxhdGlvbnNoaXBzKCBvYmosIGRlZnMgKSB7XG5cdGlmKCBvYmouc2NoZW1hICYmIG9iai5zY2hlbWEucHJvcGVydGllcyApIHtcblx0XHRmb3IoIGxldCBwIGluIG9iai5zY2hlbWEucHJvcGVydGllcyApIHtcblx0XHRcdGxldCAkcmVmID0gb2JqLnNjaGVtYS5wcm9wZXJ0aWVzW3BdLiRyZWYsXG5cdFx0XHRpc0FycmF5ID0gb2JqLnNjaGVtYS5wcm9wZXJ0aWVzW3BdLnR5cGUgPT09ICdhcnJheScsXG5cdFx0XHRpdGVtcyA9IG9iai5zY2hlbWEucHJvcGVydGllc1twXS5pdGVtcztcblxuXHRcdFx0aWYoICRyZWYgfHwgKGlzQXJyYXkgJiYgaXRlbXMgJiYgaXRlbXMuJHJlZikgKSB7XG5cdFx0XHRcdGxldCByZWxzID0gb2JqLnNjaGVtYVtSRUxfUFJPUF0gfHwge307XG5cdFx0XHRcdHJlbHNbcF0gPSB7IG9iajogJHJlZiB9O1xuXG5cdFx0XHRcdGlmKCBpc0FycmF5ICkge1xuXHRcdFx0XHRcdHJlbHNbcF0ub2JqID0gaXRlbXMuJHJlZjtcblx0XHRcdFx0XHRyZWxzW3BdLmlzTWFueSA9IHRydWU7XG5cdFx0XHRcdH1cblx0XHRcdFx0b2JqLnNjaGVtYVtSRUxfUFJPUF0gPSByZWxzO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxufVxuXG4vKipcbiogQSBiYXNlIE1vZGVsIGNsYXNzXG4qL1xuY2xhc3MgTW9kZWwge1xuXHRjb25zdHJ1Y3Rvciggb2JqICkge1xuXHRcdGxldCBrZXlzID0gT2JqZWN0LmtleXMoIG9iaiApLFxuXHRcdGxlbiA9IGtleXMgPyBrZXlzLmxlbmd0aCA6IDA7XG5cblx0XHRmb3IoIGxldCBpPTA7IGkgPCBsZW47IGkrKyApIHtcblx0XHRcdGxldCBrZXkgPSBrZXlzW2ldO1xuXHRcdFx0aWYoIGtleSAhPT0gJ3NhdmUnICYmIGtleSAhPT0gJ3JlbW92ZScgKVxuXHRcdFx0dGhpc1trZXldID0gb2JqW2tleV07XG5cdFx0fVxuXHR9XG5cblx0LyoqXG5cdCogQ3JlYXRlIG9yIHVwZGF0ZSB0aGlzIG9iamVjdCB0byBkYlxuXHQqIEByZXR1cm4ge1Byb21pc2UuPE9iamVjdD59IHRoZSBuZXdseSBjcmVhdGVkIG9yIHVwZGF0ZWQgb2JqZWN0XG5cdCovXG5cdHNhdmUoKSB7XG5cdFx0Ly9UT0RPOiB2YWxpZGF0aW9uIGNvZGUgaGVyZVxuXHRcdHJldHVybiB0aGlzLmNvbnN0cnVjdG9yLmRiLmFkYXB0ZXIuc2F2ZSggdGhpcyApO1xuXHR9XG5cblx0LyoqXG5cdCogQ3JlYXRlIG9yIHVwZGF0ZSB0aGUgb2JqZWN0IGluc3RhbmNlKHMpIHRvIHRoZSBkYlxuXHQqIEBwYXJhbSAge0FycmF5fE9iamVjdH0gb2JqcyB0aGUgb2JqZWN0IGluc3RhbmNlKHMpIHRvIGNyZWF0ZSBvciB1cGRhdGVcblx0KiBAcmV0dXJuIHtQcm9taXNlLjwoQXJyYXl8T2JqZWN0KT59XG5cdCovXG5cdHN0YXRpYyBzYXZlKCBvYmpzICkge1xuXHRcdC8vVE9ETzogdmFsaWRhdGlvbiBjb2RlIGhlcmVcblx0XHRyZXR1cm4gdGhpcy5kYi5hZGFwdGVyLnNhdmUoIG9ianMgKTtcblx0fVxuXG5cdC8qKlxuXHQqIERlbGV0ZSB0aGlzIG9iamVjdCBmcm9tIHRoZSBkYlxuXHQqIEByZXR1cm4ge1Byb21pc2V9XG5cdCovXG5cdHJlbW92ZSgpIHtcblx0XHRyZXR1cm4gdGhpcy5jb25zdHJ1Y3Rvci5kYi5hZGFwdGVyLnJlbW92ZSggdGhpcyApO1xuXHR9XG5cblx0LyoqXG5cdCogRGVsZXRlIHRoZSBvYmplY3QocykgZnJvbSB0aGUgZGJcblx0KiBAcGFyYW0ge0FycmF5fE9iamVjdHxTdHJpbmd9IG9ianMgdGhlIG9iamVjdCBpbnN0YW5jZShzKSB0byBkZWxldGUsIG9yIHRoZSBpZHMgb2YgdGhlIGluc3RhbmNlcyAoU3RyaW5nKVxuXHQqIEByZXR1cm4ge1Byb21pc2V9XG5cdCovXG5cdHN0YXRpYyByZW1vdmUoIG9ianMgKSB7XG5cdFx0cmV0dXJuIHRoaXMuZGIuYWRhcHRlci5yZW1vdmUoIG9ianMgKTtcblx0fVxuXG5cdC8qKlxuXHQqIFJldHJpZXZlcyB0aGUgaW5zdGFuY2UgKHJlY29yZCkgZnJvbSB0aGUgZGJcblx0KiBAcGFyYW0gIHtTdHJpbmd9IGlkIHRoZSBpZCBvZiB0aGUgaW5zdGFuY2UgKHJlY29yZClcblx0KiBAcmV0dXJuIHtQcm9taXNlLjxPYmplY3Q+fSAgICBbZGVzY3JpcHRpb25dXG5cdCovXG5cdHN0YXRpYyBnZXQoIGlkICkge1xuXHRcdHJldHVybiB0aGlzLmRiLmFkYXB0ZXIuZ2V0KCBpZCwgdGhpcyApO1xuXHR9XG5cblx0LyoqXG5cdCogUmV0dXJucyB0aGUgbWV0YWRhdGEgb2YgdGhpcyBtb2RlbCBpbiBKU09OIFNjaGVtYSBmb3JtYXRcblx0KiBAcmV0dXJuIHtPYmplY3R9IHRoZSBzY2hlbWEgb2YgdGhpcyBtb2RlbFxuXHQqL1xuXHRzdGF0aWMgbWQoKSB7XG5cdFx0cmV0dXJuIHRoaXMuc2NoZW1hO1xuXHR9XG5cblx0c3RhdGljIHJlbGF0aW9uc2hpcHMoKSB7XG5cdFx0cmV0dXJuIHRoaXMuc2NoZW1hW1JFTF9QUk9QXTtcblx0fVxuXG59XG5cblBvbHltZXIoIERiICk7XG4iXX0=
"use strict";

System.register("common/data/sb-db/Metadata.js", [], function (_export, _context) {
	var schema, objectLayouts;
	return {
		setters: [],
		execute: function () {
			_export("schema", schema = {
				"$schema": "http://json-schema.org/draft-04/schema#",
				"id": "/",
				"definitions": {
					"Product": {
						"id": "Product",
						"title": "Product",
						"titlePlural": "Products",
						"type": "object",
						"properties": {
							"id": {
								"title": "ID",
								"type": "string"
							},
							"name": {
								"title": "Name",
								"type": "string"
							},
							"code": {
								"title": "Code",
								"type": "string"
							},
							"createdBy": {
								"title": "Created By",
								"$ref": "User"
							},
							"createdDate": {
								"title": "Created Date",
								"type": "string",
								"format": "date-time"
							},
							"lastModifiedBy": {
								"title": "Modified By",
								"$ref": "User"
							},
							"lastModified": {
								"title": "Last Modified Date",
								"type": "string",
								"format": "date-time"
							}
						},
						"required": ["id", "createdBy", "createdDate", "lastModifiedBy", "lastModifiedDate", "name"]
					},
					"Opportunity": {
						"id": "Opportunity",
						"title": "Opportunity",
						"titlePlural": "Opportunities",
						"type": "object",
						"properties": {
							"id": {
								"title": "ID",
								"type": "string"
							},
							"name": {
								"title": "Name",
								"type": "string"
							},
							"createdBy": {
								"title": "Created By",
								"$ref": "User"
							},
							"createdDate": {
								"title": "Created Date",
								"type": "string",
								"format": "date-time"
							},
							"lastModifiedBy": {
								"title": "Modified By",
								"$ref": "User"
							},
							"lastModified": {
								"title": "Last Modified Date",
								"type": "string",
								"format": "date-time"
							},
							"account": {
								"title": "Account",
								"$ref": "Account"
							},
							"amount": {
								"title": "Amount",
								"type": "number"
							},
							"description": {
								"title": "Description",
								"type": "string",
								"maxLength": 32000
							},
							"probability": {
								"title": "Probability",
								"type": "number"
							},
							"closeDate": {
								"title": "Close Date",
								"type": "string",
								"format": "date-time"
							},
							"nextStep": {
								"title": "Next Step",
								"type": "string"
							},
							"leadSource": {
								"title": "Lead Source",
								"enum": ["Web", "Phone Inquiry", "Partner Retai", "Purchased List", "Other"]
							},
							"type": {
								"title": "Type",
								"enum": ["Existing Customer - Upgrade", "Existing Customer - Replacement", "Existing Customer - Downgrade", "New Customer"]
							},
							"stageName": {
								"title": "Stage",
								"enum": ["Prospecting", "Qualification", "Needs Analysis", "Value Proposition", "Id. Decision Makers", "Perception Analysis", "Proposal/Price Quote", "Negotiation/Review", "Closed Won", "Closed Lost"]
							},
							"owner": {
								"title": "Owner",
								"$ref": "User"
							},
							"primaryQuote": {
								"title": "Primary Quote",
								"$ref": "Quote"
							},
							"quotePricebookId": {
								"title": "Quote Pricebook ID",
								"type": "string"
							},
							"renewal": {
								"title": "Renewal",
								"type": "boolean"
							},
							"contracted": {
								"title": "Contracted",
								"type": "boolean"
							},
							"renewedContract": {
								"title": "Renewed Contract",
								"$ref": "Quote"
							}
						},
						"required": ["id", "createdBy", "createdDate", "lastModifiedBy", "lastModifiedDate", "name"]
					},
					"User": {
						"id": "User",
						"title": "User",
						"titlePlural": "Users",
						"type": "object",
						"properties": {
							"id": {
								"title": "ID",
								"type": "string"
							},
							"lastname": {
								"title": "Last Name",
								"type": "string"
							},
							"firstname": {
								"title": "First Name",
								"type": "string"
							},
							"fullname": {
								"title": "Full Name",
								"type": "string"
							},
							"email": {
								"title": "Email",
								"type": "string",
								"format": "email"
							},
							"username": {
								"title": "Username",
								"type": "string"
							},
							"active": {
								"title": "Active",
								"type": "boolean"
							}
						},
						"required": ["id", "name", "username"]
					},
					"Quote": {
						"id": "Quote",
						"title": "Quote",
						"titlePlural": "Quotes",
						"type": "object",
						"properties": {
							"additionalDiscount": {
								"title": "Additional Discount",
								"type": "number"
							},
							"createdBy": {
								"title": "Created By",
								"$ref": "User"
							},
							"createdDate": {
								"title": "Created Date",
								"type": "string",
								"format": "date-time"
							},
							"endDate": {
								"title": "End Date",
								"type": "string",
								"format": "date-time"
							},
							"lastModifiedBy": {
								"title": "Modified By",
								"$ref": "User"
							},
							"lastModified": {
								"title": "Last Modified Date",
								"type": "string",
								"format": "date-time"
							},
							"lineItemCount": {
								"title": "Line Item Count",
								"type": "integer",
								"minimum": 0
							},
							"lines": {
								"title": "Lines",
								"type": "array",
								"items": { "$ref": "QuoteLine" },
								"$_md": true
							},
							"name": {
								"title": "Name",
								"type": "string"
							},
							"note": {
								"title": "Note",
								"type": "string"
							},
							"opportunity": {
								"title": "Opportunity",
								"$ref": "Opportunity"
							},
							"startDate": {
								"title": "Start Date",
								"type": "string",
								"format": "date-time"
							},
							"status": {
								"title": "Status",
								"enum": ["Draft", "In Review", "Approved", "Denied", "Presented", "Accepted", "Rejected"]
							},
							"paymentTerms": {
								"title": "Payment Terms",
								"enum": ["Due on Receipt", "Net 15", "Net 30", "Net 45", "Net 60", "Net 90"]
							},
							"type": {
								"title": "Type",
								"enum": ["Quote", "Renewal", "Amendment", "Change Order"]
							}
						}
					},
					"QuoteLine": {
						"id": "QuoteLine",
						"title": "Quote Line",
						"titlePlural": "Quote Lines",
						"type": "object",
						"properties": {
							"additionalDiscount": {
								"title": "Additional Discount",
								"type": "number"
							},
							"createdBy": {
								"title": "Created By",
								"$ref": "User"
							},
							"createdDate": {
								"title": "Created Date",
								"type": "string",
								"format": "date-time"
							},
							"endDate": {
								"title": "End Date",
								"type": "string",
								"format": "date-time"
							},
							"netUnitPrice": {
								"title": "Net Unit Price",
								"type": "number",
								"multipleOf": "0.01"
							},
							"netTotal": {
								"title": "Net Total",
								"type": "number",
								"multipleOf": "0.01",
								"$_formula": "netUnitPrice * quantity"
							},
							"lastModifiedBy": {
								"title": "Modified By",
								"$ref": "User"
							},
							"lastModified": {
								"title": "Last Modified Date",
								"type": "string",
								"format": "date-time"
							},
							"listUnitPrice": {
								"title": "List Unit Price",
								"type": "number",
								"multipleOf": "0.01"
							},
							"product": {
								"title": "Product",
								"$ref": "Product"
							},
							"productCode": {
								"title": "Product Code",
								"type": "string",
								"$_formula": "product.code"
							},
							"productName": {
								"title": "Product Name",
								"type": "string",
								"$_formula": "product.name"
							},
							"quantity": {
								"title": "Quantity",
								"type": "number",
								"multipleOf": "0.01"
							},
							"quote": {
								"title": "Quote",
								"$ref": "Quote",
								"$_md": true
							},
							"startDate": {
								"title": "Start Date",
								"type": "string",
								"format": "date-time"
							}
						}
					}
				}
			});

			_export("schema", schema);

			_export("objectLayouts", objectLayouts = {
				Quote: {
					list: {
						'all': {
							label: 'All',
							columns: [{ field: 'name', link: true }, { field: 'Opportunity', link: true }, { field: 'type' }, { field: 'primary' }, { field: 'lineItemsGrouped' }, { field: 'netAmount' }, { field: 'status' }, { field: 'expirationDate' }, { field: 'lastModifiedDate' }, { field: 'lastModifiedBy' }]
						}
					},
					detail: {
						'default': {
							titleAttr: 'Name',
							sections: [{
								label: 'Information',
								fields: [[{ name: 'name' }, { name: 'Primary' }, { name: 'Status', required: true }, { name: 'ExpirationDate' }, { name: 'SalesRep' }, { name: 'PrimaryContact' }, { name: 'SubscriptionTerm' }, { name: 'DeliveryMethod' }, { name: 'MasterContract' }], [{ name: 'Opportunity' }, { name: 'NetAmount' }, { name: 'CustomerAmount' }, { name: 'RegularAmount' }, { name: 'ListAmount' }, { name: 'Type', required: true }, { name: 'PaymentTerms' }]]
							}, {
								label: 'Discount Information',
								fields: []
							}]
						}
					}
				},

				Opportunity: {
					list: {
						'all': {
							label: 'All',
							columns: [{ field: 'name', link: true }, { field: 'account', link: true }, { field: 'amount' }, { field: 'closeDate' }, { field: 'stageName' }, { field: 'owner' }]
						}
					},
					detail: {
						'default': {
							titleAttr: 'name',
							sections: [{
								label: 'Opportunity Information',
								fields: [[{ name: 'owner', editable: false }, { name: 'name', required: true }, { name: 'account' }, { name: 'type' }, { name: 'leadSource' }], [{ name: 'closeDate', required: true }, { name: 'stageName', required: true }, { name: 'nextStep' }, { name: 'probability' }, { name: 'amount' }]]
							}, {
								label: 'Description Information',
								fields: [[{ name: 'description' }]]
							}, {
								label: 'SteelBrick Information',
								fields: [[{ name: 'primaryQuote' }, { name: 'quotePricebookId' }], [{ name: 'contracted' }, { name: 'renewal' }, { name: 'renewedContract' }]]
							}],
							relatedLists: [{ entity: 'quote' }, { entity: 'quotedoc' }]
						}
					}
				},

				User: {
					list: {
						'all': {
							label: 'All',
							columns: [{ field: 'Username', link: true }, { field: 'Firstname' }, { field: 'Lastname' }, { field: 'Active' }, { field: 'Alias' }]
						}
					},
					detail: {
						'default': {
							titleAttr: 'Username',
							sections: [{
								label: 'General Information',
								fields: [[{ name: 'Id', editable: false }, { name: 'Username' }, { name: 'Firstname' }, { name: 'Lastname' }, { name: 'Email' }, { name: 'Alias' }, { name: 'Active' }]]
							}]
						}
					}
				}
			});

			_export("objectLayouts", objectLayouts);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIk1ldGFkYXRhLmpzIl0sIm5hbWVzIjpbInNjaGVtYSIsIm9iamVjdExheW91dHMiLCJRdW90ZSIsImxpc3QiLCJsYWJlbCIsImNvbHVtbnMiLCJmaWVsZCIsImxpbmsiLCJkZXRhaWwiLCJ0aXRsZUF0dHIiLCJzZWN0aW9ucyIsImZpZWxkcyIsIm5hbWUiLCJyZXF1aXJlZCIsIk9wcG9ydHVuaXR5IiwiZWRpdGFibGUiLCJyZWxhdGVkTGlzdHMiLCJlbnRpdHkiLCJVc2VyIl0sIm1hcHBpbmdzIjoiOzs7Ozs7O3FCQUNXQSxNLEdBQVM7QUFDbkIsZUFBVyx5Q0FEUTtBQUVuQixVQUFNLEdBRmE7QUFHbkIsbUJBQWU7QUFDZCxnQkFBVztBQUNWLFlBQU0sU0FESTtBQUVWLGVBQVMsU0FGQztBQUdWLHFCQUFlLFVBSEw7QUFJVixjQUFRLFFBSkU7QUFLVixvQkFBYztBQUNiLGFBQU07QUFDTCxpQkFBUyxJQURKO0FBRUwsZ0JBQVE7QUFGSCxRQURPO0FBS2IsZUFBUTtBQUNQLGlCQUFTLE1BREY7QUFFUCxnQkFBUTtBQUZELFFBTEs7QUFTYixlQUFRO0FBQ1AsaUJBQVMsTUFERjtBQUVQLGdCQUFRO0FBRkQsUUFUSztBQWFiLG9CQUFhO0FBQ1osaUJBQVMsWUFERztBQUVaLGdCQUFRO0FBRkksUUFiQTtBQWlCYixzQkFBZTtBQUNkLGlCQUFTLGNBREs7QUFFZCxnQkFBUSxRQUZNO0FBR2Qsa0JBQVU7QUFISSxRQWpCRjtBQXNCYix5QkFBa0I7QUFDakIsaUJBQVMsYUFEUTtBQUVqQixnQkFBUTtBQUZTLFFBdEJMO0FBMEJiLHVCQUFnQjtBQUNmLGlCQUFTLG9CQURNO0FBRWYsZ0JBQVEsUUFGTztBQUdmLGtCQUFVO0FBSEs7QUExQkgsT0FMSjtBQXFDVixrQkFBWSxDQUNYLElBRFcsRUFFWCxXQUZXLEVBR1gsYUFIVyxFQUlYLGdCQUpXLEVBS1gsa0JBTFcsRUFNWCxNQU5XO0FBckNGLE1BREc7QUErQ2Qsb0JBQWU7QUFDZCxZQUFNLGFBRFE7QUFFZCxlQUFT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QUFWLEVBRmE7QUE3Q0o7QUFESjtBQWRJLEtBNURhOztBQWdJMUJDLFVBQU07QUFDTGYsV0FBTTtBQUNMLGFBQU87QUFDTkMsY0FBTyxLQUREO0FBRU5DLGdCQUFTLENBQ1IsRUFBRUMsT0FBTyxVQUFULEVBQXFCQyxNQUFNLElBQTNCLEVBRFEsRUFFUixFQUFFRCxPQUFPLFdBQVQsRUFGUSxFQUdSLEVBQUVBLE9BQU8sVUFBVCxFQUhRLEVBSVIsRUFBRUEsT0FBTyxRQUFULEVBSlEsRUFLUixFQUFFQSxPQUFPLE9BQVQsRUFMUTtBQUZIO0FBREYsTUFERDtBQWFMRSxhQUFRO0FBQ1AsaUJBQVc7QUFDVkMsa0JBQVcsVUFERDtBQUVWQyxpQkFBVSxDQUNUO0FBQ0NOLGVBQU8scUJBRFI7QUFFQ08sZ0JBQVEsQ0FDUCxDQUNDLEVBQUVDLE1BQU0sSUFBUixFQUFjRyxVQUFVLEtBQXhCLEVBREQsRUFFQyxFQUFFSCxNQUFNLFVBQVIsRUFGRCxFQUdDLEVBQUVBLE1BQU0sV0FBUixFQUhELEVBSUMsRUFBRUEsTUFBTSxVQUFSLEVBSkQsRUFLQyxFQUFFQSxNQUFNLE9BQVIsRUFMRCxFQU1DLEVBQUVBLE1BQU0sT0FBUixFQU5ELEVBT0MsRUFBRUEsTUFBTSxRQUFSLEVBUEQsQ0FETztBQUZULFFBRFM7QUFGQTtBQURKO0FBYkg7QUFoSW9CLEkiLCJmaWxlIjoiTWV0YWRhdGEuanMiLCJzb3VyY2VzQ29udGVudCI6WyJcbmV4cG9ydCBsZXQgc2NoZW1hID0ge1xuXHRcIiRzY2hlbWFcIjogXCJodHRwOi8vanNvbi1zY2hlbWEub3JnL2RyYWZ0LTA0L3NjaGVtYSNcIixcblx0XCJpZFwiOiBcIi9cIixcblx0XCJkZWZpbml0aW9uc1wiOiB7XG5cdFx0XCJQcm9kdWN0XCI6IHtcblx0XHRcdFwiaWRcIjogXCJQcm9kdWN0XCIsXG5cdFx0XHRcInRpdGxlXCI6IFwiUHJvZHVjdFwiLFxuXHRcdFx0XCJ0aXRsZVBsdXJhbFwiOiBcIlByb2R1Y3RzXCIsXG5cdFx0XHRcInR5cGVcIjogXCJvYmplY3RcIixcblx0XHRcdFwicHJvcGVydGllc1wiOiB7XG5cdFx0XHRcdFwiaWRcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJJRFwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibmFtZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIk5hbWVcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImNvZGVcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJDb2RlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJjcmVhdGVkQnlcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJDcmVhdGVkIEJ5XCIsXG5cdFx0XHRcdFx0XCIkcmVmXCI6IFwiVXNlclwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwiY3JlYXRlZERhdGVcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJDcmVhdGVkIERhdGVcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIixcblx0XHRcdFx0XHRcImZvcm1hdFwiOiBcImRhdGUtdGltZVwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibGFzdE1vZGlmaWVkQnlcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJNb2RpZmllZCBCeVwiLFxuXHRcdFx0XHRcdFwiJHJlZlwiOiBcIlVzZXJcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImxhc3RNb2RpZmllZFwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkxhc3QgTW9kaWZpZWQgRGF0ZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiLFxuXHRcdFx0XHRcdFwiZm9ybWF0XCI6IFwiZGF0ZS10aW1lXCJcblx0XHRcdFx0fVxuXHRcdFx0fSxcblx0XHRcdFwicmVxdWlyZWRcIjogW1xuXHRcdFx0XHRcImlkXCIsXG5cdFx0XHRcdFwiY3JlYXRlZEJ5XCIsXG5cdFx0XHRcdFwiY3JlYXRlZERhdGVcIixcblx0XHRcdFx0XCJsYXN0TW9kaWZpZWRCeVwiLFxuXHRcdFx0XHRcImxhc3RNb2RpZmllZERhdGVcIixcblx0XHRcdFx0XCJuYW1lXCJcblx0XHRcdF1cblx0XHR9LFxuXHRcdFwiT3Bwb3J0dW5pdHlcIjoge1xuXHRcdFx0XCJpZFwiOiBcIk9wcG9ydHVuaXR5XCIsXG5cdFx0XHRcInRpdGxlXCI6IFwiT3Bwb3J0dW5pdHlcIixcblx0XHRcdFwidGl0bGVQbHVyYWxcIjogXCJPcHBvcnR1bml0aWVzXCIsXG5cdFx0XHRcInR5cGVcIjogXCJvYmplY3RcIixcblx0XHRcdFwicHJvcGVydGllc1wiOiB7XG5cdFx0XHRcdFwiaWRcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJJRFwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibmFtZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIk5hbWVcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImNyZWF0ZWRCeVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkNyZWF0ZWQgQnlcIixcblx0XHRcdFx0XHRcIiRyZWZcIjogXCJVc2VyXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJjcmVhdGVkRGF0ZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkNyZWF0ZWQgRGF0ZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiLFxuXHRcdFx0XHRcdFwiZm9ybWF0XCI6IFwiZGF0ZS10aW1lXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJsYXN0TW9kaWZpZWRCeVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIk1vZGlmaWVkIEJ5XCIsXG5cdFx0XHRcdFx0XCIkcmVmXCI6IFwiVXNlclwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibGFzdE1vZGlmaWVkXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTGFzdCBNb2RpZmllZCBEYXRlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCIsXG5cdFx0XHRcdFx0XCJmb3JtYXRcIjogXCJkYXRlLXRpbWVcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImFjY291bnRcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJBY2NvdW50XCIsXG5cdFx0XHRcdFx0XCIkcmVmXCI6IFwiQWNjb3VudFwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwiYW1vdW50XCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiQW1vdW50XCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwibnVtYmVyXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJkZXNjcmlwdGlvblwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkRlc2NyaXB0aW9uXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCIsXG5cdFx0XHRcdFx0XCJtYXhMZW5ndGhcIjogMzIwMDBcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJwcm9iYWJpbGl0eVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIlByb2JhYmlsaXR5XCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwibnVtYmVyXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJjbG9zZURhdGVcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJDbG9zZSBEYXRlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCIsXG5cdFx0XHRcdFx0XCJmb3JtYXRcIjogXCJkYXRlLXRpbWVcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcIm5leHRTdGVwXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTmV4dCBTdGVwXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJsZWFkU291cmNlXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTGVhZCBTb3VyY2VcIixcblx0XHRcdFx0XHRcImVudW1cIjogW1wiV2ViXCIsIFwiUGhvbmUgSW5xdWlyeVwiLCBcIlBhcnRuZXIgUmV0YWlcIiwgXCJQdXJjaGFzZWQgTGlzdFwiLCBcIk90aGVyXCJdXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwidHlwZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIlR5cGVcIixcblx0XHRcdFx0XHRcImVudW1cIjogW1wiRXhpc3RpbmcgQ3VzdG9tZXIgLSBVcGdyYWRlXCIsIFwiRXhpc3RpbmcgQ3VzdG9tZXIgLSBSZXBsYWNlbWVudFwiLCBcIkV4aXN0aW5nIEN1c3RvbWVyIC0gRG93bmdyYWRlXCIsIFwiTmV3IEN1c3RvbWVyXCJdXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwic3RhZ2VOYW1lXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiU3RhZ2VcIixcblx0XHRcdFx0XHRcImVudW1cIjogW1wiUHJvc3BlY3RpbmdcIixcIlF1YWxpZmljYXRpb25cIixcIk5lZWRzIEFuYWx5c2lzXCIsXCJWYWx1ZSBQcm9wb3NpdGlvblwiLFwiSWQuIERlY2lzaW9uIE1ha2Vyc1wiLFwiUGVyY2VwdGlvbiBBbmFseXNpc1wiLFwiUHJvcG9zYWwvUHJpY2UgUXVvdGVcIixcIk5lZ290aWF0aW9uL1Jldmlld1wiLFwiQ2xvc2VkIFdvblwiLFwiQ2xvc2VkIExvc3RcIl1cblx0XHRcdFx0fSxcblx0XHRcdFx0XCJvd25lclwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIk93bmVyXCIsXG5cdFx0XHRcdFx0XCIkcmVmXCI6IFwiVXNlclwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwicHJpbWFyeVF1b3RlXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiUHJpbWFyeSBRdW90ZVwiLFxuXHRcdFx0XHRcdFwiJHJlZlwiOiBcIlF1b3RlXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJxdW90ZVByaWNlYm9va0lkXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiUXVvdGUgUHJpY2Vib29rIElEXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJyZW5ld2FsXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiUmVuZXdhbFwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcImJvb2xlYW5cIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImNvbnRyYWN0ZWRcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJDb250cmFjdGVkXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwiYm9vbGVhblwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwicmVuZXdlZENvbnRyYWN0XCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiUmVuZXdlZCBDb250cmFjdFwiLFxuXHRcdFx0XHRcdFwiJHJlZlwiOiBcIlF1b3RlXCJcblx0XHRcdFx0fVxuXHRcdFx0fSxcblx0XHRcdFwicmVxdWlyZWRcIjogW1xuXHRcdFx0XHRcImlkXCIsXG5cdFx0XHRcdFwiY3JlYXRlZEJ5XCIsXG5cdFx0XHRcdFwiY3JlYXRlZERhdGVcIixcblx0XHRcdFx0XCJsYXN0TW9kaWZpZWRCeVwiLFxuXHRcdFx0XHRcImxhc3RNb2RpZmllZERhdGVcIixcblx0XHRcdFx0XCJuYW1lXCJcblx0XHRcdF1cblx0XHR9LFxuXHRcdFwiVXNlclwiOiB7XG5cdFx0XHRcImlkXCI6IFwiVXNlclwiLFxuXHRcdFx0XCJ0aXRsZVwiOiBcIlVzZXJcIixcblx0XHRcdFwidGl0bGVQbHVyYWxcIjogXCJVc2Vyc1wiLFxuXHRcdFx0XCJ0eXBlXCI6IFwib2JqZWN0XCIsXG5cdFx0XHRcInByb3BlcnRpZXNcIjoge1xuXHRcdFx0XHRcImlkXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiSURcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImxhc3RuYW1lXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTGFzdCBOYW1lXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJmaXJzdG5hbWVcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJGaXJzdCBOYW1lXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJmdWxsbmFtZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkZ1bGwgTmFtZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwiZW1haWxcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJFbWFpbFwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiLFxuXHRcdFx0XHRcdFwiZm9ybWF0XCI6IFwiZW1haWxcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcInVzZXJuYW1lXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiVXNlcm5hbWVcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImFjdGl2ZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkFjdGl2ZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcImJvb2xlYW5cIlxuXHRcdFx0XHR9XG5cdFx0XHR9LFxuXHRcdFx0XCJyZXF1aXJlZFwiOiBbXG5cdFx0XHRcdFwiaWRcIixcblx0XHRcdFx0XCJuYW1lXCIsXG5cdFx0XHRcdFwidXNlcm5hbWVcIlxuXHRcdFx0XVxuXHRcdH0sXG5cdFx0XCJRdW90ZVwiOiB7XG5cdFx0XHRcImlkXCI6IFwiUXVvdGVcIixcblx0XHRcdFwidGl0bGVcIjogXCJRdW90ZVwiLFxuXHRcdFx0XCJ0aXRsZVBsdXJhbFwiOiBcIlF1b3Rlc1wiLFxuXHRcdFx0XCJ0eXBlXCI6IFwib2JqZWN0XCIsXG5cdFx0XHRcInByb3BlcnRpZXNcIjoge1xuXHRcdFx0XHRcImFkZGl0aW9uYWxEaXNjb3VudFwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkFkZGl0aW9uYWwgRGlzY291bnRcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJudW1iZXJcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImNyZWF0ZWRCeVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkNyZWF0ZWQgQnlcIixcblx0XHRcdFx0XHRcIiRyZWZcIjogXCJVc2VyXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJjcmVhdGVkRGF0ZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkNyZWF0ZWQgRGF0ZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiLFxuXHRcdFx0XHRcdFwiZm9ybWF0XCI6IFwiZGF0ZS10aW1lXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJlbmREYXRlXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiRW5kIERhdGVcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIixcblx0XHRcdFx0XHRcImZvcm1hdFwiOiBcImRhdGUtdGltZVwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibGFzdE1vZGlmaWVkQnlcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJNb2RpZmllZCBCeVwiLFxuXHRcdFx0XHRcdFwiJHJlZlwiOiBcIlVzZXJcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImxhc3RNb2RpZmllZFwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkxhc3QgTW9kaWZpZWQgRGF0ZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiLFxuXHRcdFx0XHRcdFwiZm9ybWF0XCI6IFwiZGF0ZS10aW1lXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJsaW5lSXRlbUNvdW50XCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTGluZSBJdGVtIENvdW50XCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwiaW50ZWdlclwiLFxuXHRcdFx0XHRcdFwibWluaW11bVwiOiAwXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibGluZXNcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJMaW5lc1wiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcImFycmF5XCIsXG5cdFx0XHRcdFx0XCJpdGVtc1wiOiB7IFwiJHJlZlwiOiBcIlF1b3RlTGluZVwiIH0sXG5cdFx0XHRcdFx0XCIkX21kXCI6IHRydWVcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJuYW1lXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTmFtZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibm90ZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIk5vdGVcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcIm9wcG9ydHVuaXR5XCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiT3Bwb3J0dW5pdHlcIixcblx0XHRcdFx0XHRcIiRyZWZcIjogXCJPcHBvcnR1bml0eVwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwic3RhcnREYXRlXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiU3RhcnQgRGF0ZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiLFxuXHRcdFx0XHRcdFwiZm9ybWF0XCI6IFwiZGF0ZS10aW1lXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJzdGF0dXNcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJTdGF0dXNcIixcblx0XHRcdFx0XHRcImVudW1cIjogW1wiRHJhZnRcIiwgXCJJbiBSZXZpZXdcIiwgXCJBcHByb3ZlZFwiLCBcIkRlbmllZFwiLCBcIlByZXNlbnRlZFwiLCBcIkFjY2VwdGVkXCIsIFwiUmVqZWN0ZWRcIl1cblx0XHRcdFx0fSxcblx0XHRcdFx0XCJwYXltZW50VGVybXNcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJQYXltZW50IFRlcm1zXCIsXG5cdFx0XHRcdFx0XCJlbnVtXCI6IFtcIkR1ZSBvbiBSZWNlaXB0XCIsIFwiTmV0IDE1XCIsIFwiTmV0IDMwXCIsIFwiTmV0IDQ1XCIsIFwiTmV0IDYwXCIsIFwiTmV0IDkwXCJdXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwidHlwZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIlR5cGVcIixcblx0XHRcdFx0XHRcImVudW1cIjogW1wiUXVvdGVcIiwgXCJSZW5ld2FsXCIsIFwiQW1lbmRtZW50XCIsIFwiQ2hhbmdlIE9yZGVyXCJdXG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9LFxuXHRcdFwiUXVvdGVMaW5lXCI6IHtcblx0XHRcdFwiaWRcIjogXCJRdW90ZUxpbmVcIixcblx0XHRcdFwidGl0bGVcIjogXCJRdW90ZSBMaW5lXCIsXG5cdFx0XHRcInRpdGxlUGx1cmFsXCI6IFwiUXVvdGUgTGluZXNcIixcblx0XHRcdFwidHlwZVwiOiBcIm9iamVjdFwiLFxuXHRcdFx0XCJwcm9wZXJ0aWVzXCI6IHtcblx0XHRcdFx0XCJhZGRpdGlvbmFsRGlzY291bnRcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJBZGRpdGlvbmFsIERpc2NvdW50XCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwibnVtYmVyXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJjcmVhdGVkQnlcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJDcmVhdGVkIEJ5XCIsXG5cdFx0XHRcdFx0XCIkcmVmXCI6IFwiVXNlclwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwiY3JlYXRlZERhdGVcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJDcmVhdGVkIERhdGVcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJzdHJpbmdcIixcblx0XHRcdFx0XHRcImZvcm1hdFwiOiBcImRhdGUtdGltZVwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwiZW5kRGF0ZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkVuZCBEYXRlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCIsXG5cdFx0XHRcdFx0XCJmb3JtYXRcIjogXCJkYXRlLXRpbWVcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcIm5ldFVuaXRQcmljZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIk5ldCBVbml0IFByaWNlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwibnVtYmVyXCIsXG5cdFx0XHRcdFx0XCJtdWx0aXBsZU9mXCI6IFwiMC4wMVwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibmV0VG90YWxcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJOZXQgVG90YWxcIixcblx0XHRcdFx0XHRcInR5cGVcIjogXCJudW1iZXJcIixcblx0XHRcdFx0XHRcIm11bHRpcGxlT2ZcIjogXCIwLjAxXCIsXG5cdFx0XHRcdFx0XCIkX2Zvcm11bGFcIjogXCJuZXRVbml0UHJpY2UgKiBxdWFudGl0eVwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwibGFzdE1vZGlmaWVkQnlcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJNb2RpZmllZCBCeVwiLFxuXHRcdFx0XHRcdFwiJHJlZlwiOiBcIlVzZXJcIlxuXHRcdFx0XHR9LFxuXHRcdFx0XHRcImxhc3RNb2RpZmllZFwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIkxhc3QgTW9kaWZpZWQgRGF0ZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiLFxuXHRcdFx0XHRcdFwiZm9ybWF0XCI6IFwiZGF0ZS10aW1lXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJsaXN0VW5pdFByaWNlXCI6IHtcblx0XHRcdFx0XHRcInRpdGxlXCI6IFwiTGlzdCBVbml0IFByaWNlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwibnVtYmVyXCIsXG5cdFx0XHRcdFx0XCJtdWx0aXBsZU9mXCI6IFwiMC4wMVwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwicHJvZHVjdFwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIlByb2R1Y3RcIixcblx0XHRcdFx0XHRcIiRyZWZcIjogXCJQcm9kdWN0XCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJwcm9kdWN0Q29kZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIlByb2R1Y3QgQ29kZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiLFxuXHRcdFx0XHRcdFwiJF9mb3JtdWxhXCI6IFwicHJvZHVjdC5jb2RlXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJwcm9kdWN0TmFtZVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIlByb2R1Y3QgTmFtZVwiLFxuXHRcdFx0XHRcdFwidHlwZVwiOiBcInN0cmluZ1wiLFxuXHRcdFx0XHRcdFwiJF9mb3JtdWxhXCI6IFwicHJvZHVjdC5uYW1lXCJcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJxdWFudGl0eVwiOiB7XG5cdFx0XHRcdFx0XCJ0aXRsZVwiOiBcIlF1YW50aXR5XCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwibnVtYmVyXCIsXG5cdFx0XHRcdFx0XCJtdWx0aXBsZU9mXCI6IFwiMC4wMVwiXG5cdFx0XHRcdH0sXG5cdFx0XHRcdFwicXVvdGVcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJRdW90ZVwiLFxuXHRcdFx0XHRcdFwiJHJlZlwiOiBcIlF1b3RlXCIsXG5cdFx0XHRcdFx0XCIkX21kXCI6IHRydWVcblx0XHRcdFx0fSxcblx0XHRcdFx0XCJzdGFydERhdGVcIjoge1xuXHRcdFx0XHRcdFwidGl0bGVcIjogXCJTdGFydCBEYXRlXCIsXG5cdFx0XHRcdFx0XCJ0eXBlXCI6IFwic3RyaW5nXCIsXG5cdFx0XHRcdFx0XCJmb3JtYXRcIjogXCJkYXRlLXRpbWVcIlxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG59XG5cbi8qXG5FeGFtcGxlIEluc3RhbmNlIERvY3VtZW50XG57XG5cIm9wcG9ydHVuaXR5XCI6IHtcblwiaWRcIjogXCJhYmNcIixcblwibmFtZVwiOiBcInRlc3Qgb3BwXCJcbn0sXG5cInVzZXJcIjoge1xuXCJpZFwiOiBcImFiY1wiLFxuXCJsYXN0bmFtZVwiOiBcIk9iYW1hXCIsXG5cImZpcnN0bmFtZVwiOiBcIkJhcmFja1wiLFxuXCJmdWxsbmFtZVwiOiBcIkJhcmFjayBPYmFtYVwiLFxuXCJlbWFpbFwiOiBcImZvb0BiYXIuY29tXCIsXG5cInVzZXJuYW1lXCI6IFwiYm9iYW1hXCIsXG5cImFjdGl2ZVwiOiB0cnVlXG59LFxuXCJxdW90ZVwiOiB7XG5cImFkZGl0aW9uYWxEaXNjb3VudFwiOiAwLjM0LFxuXCJjcmVhdGVkQnlcIjogXCJhYmNcIixcblwiY3JlYXRlZERhdGVcIjogXCIyMDE1LTA1LTA2VDAwOjAwOjAwXCIsXG5cImVuZERhdGVcIjogXCIyMDE1LTA1LTA2VDAwOjAwOjAwXCIsXG5cImxhc3RNb2RpZmllZEJ5XCI6IFwiMjAxNS0wNS0wNlQwMDowMDowMFwiLFxuXCJsYXN0TW9kaWZpZWRcIjogXCJhYmNcIixcblwibGluZUl0ZW1Db3VudFwiOiAzNCxcblwibmFtZVwiOiBcInRlc3RcIixcblwibm90ZVwiOiBcImJsYWggYmxhaFwiLFxuXCJvcHBvcnR1bml0eVwiOiBcImFiY1wiLFxuXCJzdGFydERhdGVcIjogXCIyMDE1LTA1LTA2VDAwOjAwOjAwXCIsXG5cInN0YXR1c1wiOiBcIk9wZW5cIixcblwidHlwZVwiOiBcIlF1b3RlXCJcbn1cbn1cbiovXG5cblxuZXhwb3J0IGxldCBvYmplY3RMYXlvdXRzID0ge1xuXHRRdW90ZToge1xuXHRcdGxpc3Q6IHtcblx0XHRcdCdhbGwnOiB7XG5cdFx0XHRcdGxhYmVsOiAnQWxsJyxcblx0XHRcdFx0Y29sdW1uczogW1xuXHRcdFx0XHRcdHsgZmllbGQ6ICduYW1lJywgbGluazogdHJ1ZSB9LFxuXHRcdFx0XHRcdHsgZmllbGQ6ICdPcHBvcnR1bml0eScsIGxpbms6IHRydWUgfSxcblx0XHRcdFx0XHR7IGZpZWxkOiAndHlwZScgfSxcblx0XHRcdFx0XHR7IGZpZWxkOiAncHJpbWFyeScgfSxcblx0XHRcdFx0XHR7IGZpZWxkOiAnbGluZUl0ZW1zR3JvdXBlZCcgfSxcblx0XHRcdFx0XHR7IGZpZWxkOiAnbmV0QW1vdW50JyB9LFxuXHRcdFx0XHRcdHsgZmllbGQ6ICdzdGF0dXMnIH0sXG5cdFx0XHRcdFx0eyBmaWVsZDogJ2V4cGlyYXRpb25EYXRlJyB9LFxuXHRcdFx0XHRcdHsgZmllbGQ6ICdsYXN0TW9kaWZpZWREYXRlJyB9LFxuXHRcdFx0XHRcdHsgZmllbGQ6ICdsYXN0TW9kaWZpZWRCeScgfVxuXHRcdFx0XHRdXG5cdFx0XHR9XG5cdFx0fSxcblx0XHRkZXRhaWw6IHtcblx0XHRcdCdkZWZhdWx0Jzoge1xuXHRcdFx0XHR0aXRsZUF0dHI6ICdOYW1lJyxcblx0XHRcdFx0c2VjdGlvbnM6IFtcblx0XHRcdFx0XHR7XG5cdFx0XHRcdFx0XHRsYWJlbDogJ0luZm9ybWF0aW9uJyxcblx0XHRcdFx0XHRcdGZpZWxkczogW1xuXHRcdFx0XHRcdFx0XHRbXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnbmFtZScgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdQcmltYXJ5JyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ1N0YXR1cycsIHJlcXVpcmVkOiB0cnVlIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnRXhwaXJhdGlvbkRhdGUnIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnU2FsZXNSZXAnIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnUHJpbWFyeUNvbnRhY3QnIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnU3Vic2NyaXB0aW9uVGVybScgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdEZWxpdmVyeU1ldGhvZCcgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdNYXN0ZXJDb250cmFjdCcgfVxuXHRcdFx0XHRcdFx0XHRdLFxuXHRcdFx0XHRcdFx0XHRbXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnT3Bwb3J0dW5pdHknIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnTmV0QW1vdW50JyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ0N1c3RvbWVyQW1vdW50JyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ1JlZ3VsYXJBbW91bnQnIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnTGlzdEFtb3VudCcgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdUeXBlJywgcmVxdWlyZWQ6IHRydWUgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdQYXltZW50VGVybXMnIH0vLyxcblx0XHRcdFx0XHRcdFx0XHQvL3sgbmFtZTogJ1N0YXJ0RGF0ZScgfSxcblx0XHRcdFx0XHRcdFx0XHQvL3sgbmFtZTogJ0VuZERhdGUnIH1cblx0XHRcdFx0XHRcdFx0XVxuXHRcdFx0XHRcdFx0XVxuXHRcdFx0XHRcdH0sXG5cdFx0XHRcdFx0e1xuXHRcdFx0XHRcdFx0bGFiZWw6ICdEaXNjb3VudCBJbmZvcm1hdGlvbicsXG5cdFx0XHRcdFx0XHRmaWVsZHM6IFtcblx0XHRcdFx0XHRcdF1cblx0XHRcdFx0XHR9XG5cdFx0XHRcdF1cblx0XHRcdH1cblx0XHR9XG5cdH0sXG5cblx0T3Bwb3J0dW5pdHk6IHtcblx0XHRsaXN0OiB7XG5cdFx0XHQnYWxsJzoge1xuXHRcdFx0XHRsYWJlbDogJ0FsbCcsXG5cdFx0XHRcdGNvbHVtbnM6IFtcblx0XHRcdFx0XHR7IGZpZWxkOiAnbmFtZScsIGxpbms6IHRydWUgfSxcblx0XHRcdFx0XHR7IGZpZWxkOiAnYWNjb3VudCcsIGxpbms6IHRydWUgfSxcblx0XHRcdFx0XHR7IGZpZWxkOiAnYW1vdW50JyB9LFxuXHRcdFx0XHRcdHsgZmllbGQ6ICdjbG9zZURhdGUnIH0sXG5cdFx0XHRcdFx0eyBmaWVsZDogJ3N0YWdlTmFtZScgfSxcblx0XHRcdFx0XHR7IGZpZWxkOiAnb3duZXInIH1cblx0XHRcdFx0XVxuXHRcdFx0fVxuXHRcdH0sXG5cdFx0ZGV0YWlsOiB7XG5cdFx0XHQnZGVmYXVsdCc6IHtcblx0XHRcdFx0dGl0bGVBdHRyOiAnbmFtZScsXG5cdFx0XHRcdHNlY3Rpb25zOiBbXG5cdFx0XHRcdFx0e1xuXHRcdFx0XHRcdFx0bGFiZWw6ICdPcHBvcnR1bml0eSBJbmZvcm1hdGlvbicsXG5cdFx0XHRcdFx0XHRmaWVsZHM6IFtcblx0XHRcdFx0XHRcdFx0W1xuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ293bmVyJywgZWRpdGFibGU6IGZhbHNlIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnbmFtZScsIHJlcXVpcmVkOiB0cnVlIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnYWNjb3VudCcgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICd0eXBlJyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ2xlYWRTb3VyY2UnIH0sXG5cdFx0XHRcdFx0XHRcdF0sXG5cdFx0XHRcdFx0XHRcdFtcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdjbG9zZURhdGUnLCByZXF1aXJlZDogdHJ1ZSB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ3N0YWdlTmFtZScsIHJlcXVpcmVkOiB0cnVlIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnbmV4dFN0ZXAnIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAncHJvYmFiaWxpdHknIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnYW1vdW50JyB9XG5cdFx0XHRcdFx0XHRcdF1cblx0XHRcdFx0XHRcdF1cblx0XHRcdFx0XHR9LFxuXHRcdFx0XHRcdHtcblx0XHRcdFx0XHRcdGxhYmVsOiAnRGVzY3JpcHRpb24gSW5mb3JtYXRpb24nLFxuXHRcdFx0XHRcdFx0ZmllbGRzOiBbXG5cdFx0XHRcdFx0XHRcdFtcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdkZXNjcmlwdGlvbicgfVxuXHRcdFx0XHRcdFx0XHRdXG5cdFx0XHRcdFx0XHRdXG5cdFx0XHRcdFx0fSxcblx0XHRcdFx0XHR7XG5cdFx0XHRcdFx0XHRsYWJlbDogJ1N0ZWVsQnJpY2sgSW5mb3JtYXRpb24nLFxuXHRcdFx0XHRcdFx0ZmllbGRzOiBbXG5cdFx0XHRcdFx0XHRcdFtcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdwcmltYXJ5UXVvdGUnIH0sXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAncXVvdGVQcmljZWJvb2tJZCcgfVxuXHRcdFx0XHRcdFx0XHRdLFxuXHRcdFx0XHRcdFx0XHRbXG5cdFx0XHRcdFx0XHRcdFx0eyBuYW1lOiAnY29udHJhY3RlZCcgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdyZW5ld2FsJyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ3JlbmV3ZWRDb250cmFjdCcgfVxuXHRcdFx0XHRcdFx0XHRdXG5cdFx0XHRcdFx0XHRdXG5cdFx0XHRcdFx0fVxuXHRcdFx0XHRdLFxuXHRcdFx0XHRyZWxhdGVkTGlzdHM6IFtcblx0XHRcdFx0XHR7IGVudGl0eTogJ3F1b3RlJ30sXG5cdFx0XHRcdFx0eyBlbnRpdHk6ICdxdW90ZWRvYycgfSxcblx0XHRcdFx0XVxuXHRcdFx0fVxuXHRcdH1cblx0fSxcblxuXHRVc2VyOiB7XG5cdFx0bGlzdDoge1xuXHRcdFx0J2FsbCc6IHtcblx0XHRcdFx0bGFiZWw6ICdBbGwnLFxuXHRcdFx0XHRjb2x1bW5zOiBbXG5cdFx0XHRcdFx0eyBmaWVsZDogJ1VzZXJuYW1lJywgbGluazogdHJ1ZSB9LFxuXHRcdFx0XHRcdHsgZmllbGQ6ICdGaXJzdG5hbWUnIH0sXG5cdFx0XHRcdFx0eyBmaWVsZDogJ0xhc3RuYW1lJyB9LFxuXHRcdFx0XHRcdHsgZmllbGQ6ICdBY3RpdmUnIH0sXG5cdFx0XHRcdFx0eyBmaWVsZDogJ0FsaWFzJyB9XG5cdFx0XHRcdF1cblx0XHRcdH1cblx0XHR9LFxuXHRcdGRldGFpbDoge1xuXHRcdFx0J2RlZmF1bHQnOiB7XG5cdFx0XHRcdHRpdGxlQXR0cjogJ1VzZXJuYW1lJyxcblx0XHRcdFx0c2VjdGlvbnM6IFtcblx0XHRcdFx0XHR7XG5cdFx0XHRcdFx0XHRsYWJlbDogJ0dlbmVyYWwgSW5mb3JtYXRpb24nLFxuXHRcdFx0XHRcdFx0ZmllbGRzOiBbXG5cdFx0XHRcdFx0XHRcdFtcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdJZCcsIGVkaXRhYmxlOiBmYWxzZSB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ1VzZXJuYW1lJyB9LFxuXHRcdFx0XHRcdFx0XHRcdHsgbmFtZTogJ0ZpcnN0bmFtZScgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdMYXN0bmFtZScgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdFbWFpbCcgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdBbGlhcycgfSxcblx0XHRcdFx0XHRcdFx0XHR7IG5hbWU6ICdBY3RpdmUnIH1cblx0XHRcdFx0XHRcdFx0XVxuXHRcdFx0XHRcdFx0XVxuXHRcdFx0XHRcdH1cblx0XHRcdFx0XVxuXHRcdFx0fVxuXHRcdH1cblx0fVxufVxuIl19
'use strict';

System.register('common/data/sb-service/Service.js', ['common/core/AppContext.js', 'common/data/client/ServiceClient.js', 'common/data/cache/Cache.js'], function (_export, _context) {
	var AppContext, ServiceClient, Cache, _createClass, Service;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_commonCoreAppContextJs) {
			AppContext = _commonCoreAppContextJs.AppContext;
		}, function (_commonDataClientServiceClientJs) {
			ServiceClient = _commonDataClientServiceClientJs.ServiceClient;
		}, function (_commonDataCacheCacheJs) {
			Cache = _commonDataCacheCacheJs.Cache;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('Service', Service = function (_AppContext) {
				_inherits(Service, _AppContext);

				function Service() {
					_classCallCheck(this, Service);

					return _possibleConstructorReturn(this, (Service.__proto__ || Object.getPrototypeOf(Service)).apply(this, arguments));
				}

				_createClass(Service, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-service';
						this.properties = Polymer.Base.extend({
							reader: String,
							loader: String,
							saver: String,
							uid: String,
							model: Object,
							context: Object,
							mdType: String,
							mdItems: Array,
							cache: String,
							waiting: {
								type: Boolean,
								notify: true
							},
							response: {
								type: Object,
								notify: true
							},
							error: {
								type: Object,
								notify: true
							},
							client: {
								type: Object,
								value: function value() {
									return new ServiceClient();
								}
							},
							transient: {
								type: Boolean
							},
							background: {
								type: Boolean,
								value: false
							}
						}, AppContext.properties);
					}
				}, {
					key: 'read',
					value: function read(request) {
						Polymer.Base.extend(this, request);
						var cachedResponse = Cache.get(this.cache, this.uid);
						if (cachedResponse) return this._response(Promise.resolve(cachedResponse));
						var cachedPromise = Cache.get(this.cache, this.uid, 'promise');
						if (cachedPromise) return cachedPromise;

						if (this.transient) return this._response(Promise.resolve(this.response));

						return this._response(this.client.read(this.app.org.prefix, this.reader, this.uid));
					}
				}, {
					key: 'load',
					value: function load(request) {
						Polymer.Base.extend(this, request);
						var cachedResponse = Cache.get(this.cache, this.uid);
						if (cachedResponse) return this._response(Promise.resolve(cachedResponse));
						var cachedPromise = Cache.get(this.cache, this.uid, 'promise');
						if (cachedPromise) return cachedPromise;

						if (this.transient) return this._response(Promise.resolve(this.response));

						return this._response(this.client.load(this.app.org.prefix, this.loader, this.uid, this.context));
					}
				}, {
					key: 'save',
					value: function save(request) {
						Polymer.Base.extend(this, request);
						if (this.transient) return this._response(Promise.resolve(this.model));

						return this._response(this.client.save(this.app.org.prefix, this.saver, this.model));
					}
				}, {
					key: 'md',
					value: function md(request) {
						Polymer.Base.extend(this, request);
						var cachedResponse = Cache.get(this.cache, this.uid);
						if (cachedResponse) return this._response(Promise.resolve(cachedResponse));
						var cachedPromise = Cache.get(this.cache, this.uid, 'promise');
						if (cachedPromise) return cachedPromise;

						var promiseArray = [];
						for (var i = 0, n = Math.ceil(this.mdItems.length / 10); i < n; i++) {
							promiseArray.push(this.client.md(this.app.org.prefix, this.mdType, this.mdItems.slice(i * 10, (i + 1) * 10)));
						}return this._responseAll(promiseArray);
					}
				}, {
					key: '_read',
					value: function _read() {
						this.read().then(function () {}, function (err) {
							console.error(err.message || err);
						});
					}
				}, {
					key: '_load',
					value: function _load() {
						this.load().then(function () {}, function (err) {
							console.error(err.message || err);
						});
					}
				}, {
					key: '_save',
					value: function _save() {
						this.save().then(function () {}, function (err) {
							console.error(err.message || err);
						});
					}
				}, {
					key: '_md',
					value: function _md() {
						this.md().then(function () {}, function (err) {
							console.error(err.message || err);
						});
					}
				}, {
					key: '_spinner',
					value: function _spinner() {
						this.spinner = this.waiting && !this.background;
					}
				}, {
					key: '_response',
					value: function _response(promise) {
						this.waiting = true;
						var newPromise = new Promise(function (resolve, reject) {
							promise.then(function (res) {
								this.waiting = false;
								if (res) this.response = res;
								Cache.remove(this.cache, this.uid, 'promise');
								resolve(this.response);
							}.bind(this), function (err) {
								this.waiting = false;
								if (err) this.error = this._createError(err);
								Cache.remove(this.cache, this.uid, 'promise');
								reject(this.error);
							}.bind(this));
						}.bind(this));
						Cache.add(this.cache, this.uid, newPromise, 'promise');
						return newPromise;
					}
				}, {
					key: '_responseAll',
					value: function _responseAll(promises) {
						this.waiting = true;
						var newPromise = Promise.all(promises).then(function (res) {
							for (var i = 0, l = res.length; i < l; i++) {
								if (res[i].constructor !== Array) res[i] = [res[i]];
							}
							this.waiting = false;
							this.response = [].concat.apply([], res);
							Cache.remove(this.cache, this.uid, 'promise');
							return Promise.resolve(this.response);
						}.bind(this), function (err) {
							this.waiting = false;
							if (err) this.error = this._createError(err);
							Cache.remove(this.cache, this.uid, 'promise');
							return Promise.reject(this.error);
						}.bind(this));

						Cache.add(this.cache, this.uid, newPromise, 'promise');
						return newPromise;
					}
				}, {
					key: '_cache',
					value: function _cache() {
						Cache.add(this.cache, this.uid, this.response);
					}
				}, {
					key: '_createError',
					value: function _createError(err) {
						var msg = err.message || err;
						var error = { message: msg };

						var validations;
						if (msg.indexOf('ValidationException: [') != -1 || msg.startsWith('[')) {
							var start = msg.indexOf('[');
							var end = msg.indexOf(']', start) + 1;
							if (end > start) validations = msg.substring(start, end);
						}

						if (validations) {
							try {
								var validationsArray = JSON.parse(validations);
								error.validations = validationsArray;
							} catch (e) {}
						}

						return error;
					}
				}, {
					key: 'listeners',
					get: function get() {
						return {
							'response-changed': '_cache'
						};
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['_read(reader, uid)', '_save(saver, model)', '_load(loader, uid, context)', '_md(mdType, mdItems)', '_spinner(waiting, background)'];
					}
				}]);

				return Service;
			}(AppContext));

			_export('Service', Service);

			Polymer(Service);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlNlcnZpY2UuanMiXSwibmFtZXMiOlsiQXBwQ29udGV4dCIsIlNlcnZpY2VDbGllbnQiLCJDYWNoZSIsIlNlcnZpY2UiLCJpcyIsInByb3BlcnRpZXMiLCJQb2x5bWVyIiwiQmFzZSIsImV4dGVuZCIsInJlYWRlciIsIlN0cmluZyIsImxvYWRlciIsInNhdmVyIiwidWlkIiwibW9kZWwiLCJPYmplY3QiLCJjb250ZXh0IiwibWRUeXBlIiwibWRJdGVtcyIsIkFycmF5IiwiY2FjaGUiLCJ3YWl0aW5nIiwidHlwZSIsIkJvb2xlYW4iLCJub3RpZnkiLCJyZXNwb25zZSIsImVycm9yIiwiY2xpZW50IiwidmFsdWUiLCJ0cmFuc2llbnQiLCJiYWNrZ3JvdW5kIiwicmVxdWVzdCIsImNhY2hlZFJlc3BvbnNlIiwiZ2V0IiwiX3Jlc3BvbnNlIiwiUHJvbWlzZSIsInJlc29sdmUiLCJjYWNoZWRQcm9taXNlIiwicmVhZCIsImFwcCIsIm9yZyIsInByZWZpeCIsImxvYWQiLCJzYXZlIiwicHJvbWlzZUFycmF5IiwiaSIsIm4iLCJNYXRoIiwiY2VpbCIsImxlbmd0aCIsInB1c2giLCJtZCIsInNsaWNlIiwiX3Jlc3BvbnNlQWxsIiwidGhlbiIsImVyciIsImNvbnNvbGUiLCJtZXNzYWdlIiwic3Bpbm5lciIsInByb21pc2UiLCJuZXdQcm9taXNlIiwicmVqZWN0IiwicmVzIiwicmVtb3ZlIiwiYmluZCIsIl9jcmVhdGVFcnJvciIsImFkZCIsInByb21pc2VzIiwiYWxsIiwibCIsImNvbnN0cnVjdG9yIiwiY29uY2F0IiwiYXBwbHkiLCJtc2ciLCJ2YWxpZGF0aW9ucyIsImluZGV4T2YiLCJzdGFydHNXaXRoIiwic3RhcnQiLCJlbmQiLCJzdWJzdHJpbmciLCJ2YWxpZGF0aW9uc0FycmF5IiwiSlNPTiIsInBhcnNlIiwiZSJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFRQSxhLDJCQUFBQSxVOztBQUNBQyxnQixvQ0FB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VUFBSTdCLFFBQVEsRUFBQytCLFNBQVVnQixHQUFYLEVBQVo7O0FBRUEsVUFBSUMsV0FBSjtBQUNBLFVBQUdELElBQUlFLE9BQUosQ0FBWSx3QkFBWixLQUF5QyxDQUFDLENBQTFDLElBQStDRixJQUFJRyxVQUFKLENBQWUsR0FBZixDQUFsRCxFQUF1RTtBQUN0RSxXQUFJQyxRQUFRSixJQUFJRSxPQUFKLENBQVksR0FBWixDQUFaO0FBQ0EsV0FBSUcsTUFBTUwsSUFBSUUsT0FBSixDQUFZLEdBQVosRUFBaUJFLEtBQWpCLElBQTBCLENBQXBDO0FBQ0EsV0FBR0MsTUFBTUQsS0FBVCxFQUNDSCxjQUFjRCxJQUFJTSxTQUFKLENBQWNGLEtBQWQsRUFBcUJDLEdBQXJCLENBQWQ7QUFDRDs7QUFFRCxVQUFHSixXQUFILEVBQWdCO0FBQ2YsV0FBSTtBQUNILFlBQUlNLG1CQUFtQkMsS0FBS0MsS0FBTCxDQUFXUixXQUFYLENBQXZCO0FBQ0FoRCxjQUFNZ0QsV0FBTixHQUFvQk0sZ0JBQXBCO0FBQ0EsUUFIRCxDQUdFLE9BQU9HLENBQVAsRUFBVSxDQUNYO0FBQ0Q7O0FBRUQsYUFBT3pELEtBQVA7QUFDQTs7O3lCQXpKZTtBQUNmLGFBQU87QUFDTiwyQkFBcUI7QUFEZixPQUFQO0FBR0E7Ozt5QkFFZTtBQUNmLGFBQU8sQ0FBQyxvQkFBRCxFQUF1QixxQkFBdkIsRUFBOEMsNkJBQTlDLEVBQTZFLHNCQUE3RSxFQUFxRywrQkFBckcsQ0FBUDtBQUNBOzs7O0tBaEQyQjFCLFU7Ozs7QUFvTTdCTSxXQUFTSCxPQUFUIiwiZmlsZSI6IlNlcnZpY2UuanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge0FwcENvbnRleHR9IGZyb20gJ2NvbW1vbi9jb3JlL0FwcENvbnRleHQuanMnO1xuaW1wb3J0IHtTZXJ2aWNlQ2xpZW50fSBmcm9tICdjb21tb24vZGF0YS9jbGllbnQvU2VydmljZUNsaWVudC5qcyc7XG5pbXBvcnQge0NhY2hlfSBmcm9tICdjb21tb24vZGF0YS9jYWNoZS9DYWNoZS5qcyc7XG5cbmV4cG9ydCBjbGFzcyBTZXJ2aWNlIGV4dGVuZHMgQXBwQ29udGV4dCB7XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1zZXJ2aWNlJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSAgUG9seW1lci5CYXNlLmV4dGVuZCh7XG5cdFx0XHRyZWFkZXI6IFN0cmluZyxcblx0XHRcdGxvYWRlcjogU3RyaW5nLFxuXHRcdFx0c2F2ZXI6IFN0cmluZyxcblx0XHRcdHVpZDogU3RyaW5nLCAvLyB1c2VkIGZvciByZWFkZXIsIGxvYWRlciwgYW5kIHNhdmVyXG5cdFx0XHRtb2RlbDogT2JqZWN0LCAvLyB1c2VyIGZvciBzYXZlclxuXHRcdFx0Y29udGV4dDogT2JqZWN0LCAvLyB1c2VkIGZvciBsb2FkZXJcblx0XHRcdG1kVHlwZTogU3RyaW5nLCAvLyB0eXBlIG9mIG1ldGFkYXRhIHRvIHJlYWQgKHNlZSBodHRwczovL2RldmVsb3Blci5zYWxlc2ZvcmNlLmNvbS9kb2NzL2F0bGFzLmVuLXVzLmFwaV9tZXRhLm1ldGEvYXBpX21ldGEvbWV0YV90eXBlc19saXN0Lmh0bSlcblx0XHRcdG1kSXRlbXM6IEFycmF5LCAvLyBpdGVtcyBvZiBtZXRhZGF0YSB0byByZWFkXG5cdFx0XHRjYWNoZTogU3RyaW5nLCAvLyB0aGUgbmFtZWQgY2FjaGUgdXNlZCBtYW5hZ2UgdGhlIHNlcnZlciByZXRyaWV2ZSByZXNwb25zZVxuXHRcdFx0d2FpdGluZzoge1xuXHRcdFx0XHR0eXBlOiBCb29sZWFuLFxuXHRcdFx0XHRub3RpZnk6IHRydWVcblx0XHRcdH0sXG5cdFx0XHRyZXNwb25zZToge1xuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdG5vdGlmeTogdHJ1ZVxuXHRcdFx0fSxcblx0XHRcdGVycm9yOiB7XG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0bm90aWZ5OiB0cnVlXG5cdFx0XHR9LFxuXHRcdFx0Y2xpZW50OiB7XG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uKCkgeyByZXR1cm4gbmV3IFNlcnZpY2VDbGllbnQoKTsgfVxuXHRcdFx0fSxcblx0XHRcdHRyYW5zaWVudDoge1xuXHRcdFx0XHR0eXBlOiBCb29sZWFuXG5cdFx0XHR9LFxuXHRcdFx0YmFja2dyb3VuZDoge1xuXHRcdFx0XHR0eXBlOiBCb29sZWFuLFxuXHRcdFx0XHR2YWx1ZTogZmFsc2Vcblx0XHRcdH1cblx0XHR9LCBBcHBDb250ZXh0LnByb3BlcnRpZXMgKTtcblx0fVxuXG5cdGdldCBsaXN0ZW5lcnMoKSB7XG5cdFx0cmV0dXJuIHtcblx0XHRcdCdyZXNwb25zZS1jaGFuZ2VkJyA6ICdfY2FjaGUnXG5cdFx0fTtcblx0fVxuXG5cdGdldCBvYnNlcnZlcnMoKSB7XG5cdFx0cmV0dXJuIFsnX3JlYWQocmVhZGVyLCB1aWQpJywgJ19zYXZlKHNhdmVyLCBtb2RlbCknLCAnX2xvYWQobG9hZGVyLCB1aWQsIGNvbnRleHQpJywgJ19tZChtZFR5cGUsIG1kSXRlbXMpJywgJ19zcGlubmVyKHdhaXRpbmcsIGJhY2tncm91bmQpJ107XG5cdH1cblxuXHRyZWFkKHJlcXVlc3QpIHtcblx0XHRQb2x5bWVyLkJhc2UuZXh0ZW5kKHRoaXMsIHJlcXVlc3QpO1xuXHRcdHZhciBjYWNoZWRSZXNwb25zZSA9IENhY2hlLmdldCh0aGlzLmNhY2hlLCB0aGlzLnVpZCk7XG5cdFx0aWYoY2FjaGVkUmVzcG9uc2UpXG5cdFx0XHRyZXR1cm4gdGhpcy5fcmVzcG9uc2UoUHJvbWlzZS5yZXNvbHZlKGNhY2hlZFJlc3BvbnNlKSk7XG5cdFx0dmFyIGNhY2hlZFByb21pc2UgPSBDYWNoZS5nZXQodGhpcy5jYWNoZSwgdGhpcy51aWQsICdwcm9taXNlJyk7XG5cdFx0aWYoY2FjaGVkUHJvbWlzZSlcblx0XHRcdHJldHVybiBjYWNoZWRQcm9taXNlO1xuXG5cdFx0aWYodGhpcy50cmFuc2llbnQpXG5cdFx0XHRyZXR1cm4gdGhpcy5fcmVzcG9uc2UoUHJvbWlzZS5yZXNvbHZlKHRoaXMucmVzcG9uc2UpKTtcblxuXHRcdHJldHVybiB0aGlzLl9yZXNwb25zZSh0aGlzLmNsaWVudC5yZWFkKHRoaXMuYXBwLm9yZy5wcmVmaXgsIHRoaXMucmVhZGVyLCB0aGlzLnVpZCkpO1xuXHR9XG5cblx0bG9hZChyZXF1ZXN0KSB7XG5cdFx0UG9seW1lci5CYXNlLmV4dGVuZCh0aGlzLCByZXF1ZXN0KTtcblx0XHR2YXIgY2FjaGVkUmVzcG9uc2UgPSBDYWNoZS5nZXQodGhpcy5jYWNoZSwgdGhpcy51aWQpO1xuXHRcdGlmKGNhY2hlZFJlc3BvbnNlKVxuXHRcdFx0cmV0dXJuIHRoaXMuX3Jlc3BvbnNlKFByb21pc2UucmVzb2x2ZShjYWNoZWRSZXNwb25zZSkpO1xuXHRcdHZhciBjYWNoZWRQcm9taXNlID0gQ2FjaGUuZ2V0KHRoaXMuY2FjaGUsIHRoaXMudWlkLCAncHJvbWlzZScpO1xuXHRcdGlmKGNhY2hlZFByb21pc2UpXG5cdFx0XHRyZXR1cm4gY2FjaGVkUHJvbWlzZTtcblxuXHRcdGlmKHRoaXMudHJhbnNpZW50KVxuXHRcdFx0cmV0dXJuIHRoaXMuX3Jlc3BvbnNlKFByb21pc2UucmVzb2x2ZSh0aGlzLnJlc3BvbnNlKSk7XG5cblx0XHRyZXR1cm4gdGhpcy5fcmVzcG9uc2UodGhpcy5jbGllbnQubG9hZCh0aGlzLmFwcC5vcmcucHJlZml4LCB0aGlzLmxvYWRlciwgdGhpcy51aWQsIHRoaXMuY29udGV4dCkpO1xuXHR9XG5cblx0c2F2ZShyZXF1ZXN0KSB7XG5cdFx0UG9seW1lci5CYXNlLmV4dGVuZCh0aGlzLCByZXF1ZXN0KTtcblx0XHRpZih0aGlzLnRyYW5zaWVudClcblx0XHRcdHJldHVybiB0aGlzLl9yZXNwb25zZShQcm9taXNlLnJlc29sdmUodGhpcy5tb2RlbCkpO1xuXG5cdFx0cmV0dXJuIHRoaXMuX3Jlc3BvbnNlKHRoaXMuY2xpZW50LnNhdmUodGhpcy5hcHAub3JnLnByZWZpeCwgdGhpcy5zYXZlciwgdGhpcy5tb2RlbCkpO1xuXHR9XG5cblx0bWQocmVxdWVzdCkge1xuXHRcdFBvbHltZXIuQmFzZS5leHRlbmQodGhpcywgcmVxdWVzdCk7XG5cdFx0dmFyIGNhY2hlZFJlc3BvbnNlID0gQ2FjaGUuZ2V0KHRoaXMuY2FjaGUsIHRoaXMudWlkKTtcblx0XHRpZihjYWNoZWRSZXNwb25zZSlcblx0XHRcdHJldHVybiB0aGlzLl9yZXNwb25zZShQcm9taXNlLnJlc29sdmUoY2FjaGVkUmVzcG9uc2UpKTtcblx0XHR2YXIgY2FjaGVkUHJvbWlzZSA9IENhY2hlLmdldCh0aGlzLmNhY2hlLCB0aGlzLnVpZCwgJ3Byb21pc2UnKTtcblx0XHRpZihjYWNoZWRQcm9taXNlKVxuXHRcdFx0cmV0dXJuIGNhY2hlZFByb21pc2U7XG5cblx0XHR2YXIgcHJvbWlzZUFycmF5ID0gW107XG5cdFx0Zm9yICh2YXIgaSA9IDAsIG4gPSBNYXRoLmNlaWwodGhpcy5tZEl0ZW1zLmxlbmd0aCAvIDEwKTsgaSA8IG47IGkrKylcblx0XHRcdHByb21pc2VBcnJheS5wdXNoKHRoaXMuY2xpZW50Lm1kKHRoaXMuYXBwLm9yZy5wcmVmaXgsIHRoaXMubWRUeXBlLCB0aGlzLm1kSXRlbXMuc2xpY2UoaSAqIDEwLCAoaSArIDEpICogMTApKSk7XG5cblx0XHRyZXR1cm4gdGhpcy5fcmVzcG9uc2VBbGwocHJvbWlzZUFycmF5KTtcblx0fVxuXG5cdF9yZWFkKCkge1xuXHRcdHRoaXMucmVhZCgpLnRoZW4oZnVuY3Rpb24oKSB7fSwgZnVuY3Rpb24oZXJyKSB7Y29uc29sZS5lcnJvcihlcnIubWVzc2FnZSB8fCBlcnIpfSk7XG5cdH1cblxuXHRfbG9hZCgpIHtcblx0XHR0aGlzLmxvYWQoKS50aGVuKGZ1bmN0aW9uKCkge30sIGZ1bmN0aW9uKGVycikge2NvbnNvbGUuZXJyb3IoZXJyLm1lc3NhZ2UgfHwgZXJyKX0pO1xuXHR9XG5cblx0X3NhdmUoKSB7XG5cdFx0dGhpcy5zYXZlKCkudGhlbihmdW5jdGlvbigpIHt9LCBmdW5jdGlvbihlcnIpIHtjb25zb2xlLmVycm9yKGVyci5tZXNzYWdlIHx8IGVycil9KTtcblx0fVxuXG5cdF9tZCgpIHtcblx0XHR0aGlzLm1kKCkudGhlbihmdW5jdGlvbigpIHt9LCBmdW5jdGlvbihlcnIpIHtjb25zb2xlLmVycm9yKGVyci5tZXNzYWdlIHx8IGVycil9KTtcblx0fVxuXG5cdF9zcGlubmVyKCkge1xuXHRcdHRoaXMuc3Bpbm5lciA9IHRoaXMud2FpdGluZyAmJiAhdGhpcy5iYWNrZ3JvdW5kO1xuXHR9XG5cblx0X3Jlc3BvbnNlKHByb21pc2UpIHtcblx0XHR0aGlzLndhaXRpbmcgPSB0cnVlO1xuXHRcdHZhciBuZXdQcm9taXNlID0gbmV3IFByb21pc2UoZnVuY3Rpb24ocmVzb2x2ZSwgcmVqZWN0KSB7XG5cdFx0XHRwcm9taXNlLnRoZW4oZnVuY3Rpb24ocmVzKSB7XG5cdFx0XHRcdHRoaXMud2FpdGluZyA9IGZhbHNlO1xuXHRcdFx0XHRpZihyZXMpXG5cdFx0XHRcdFx0dGhpcy5yZXNwb25zZSA9IHJlcztcblx0XHRcdFx0Q2FjaGUucmVtb3ZlKHRoaXMuY2FjaGUsIHRoaXMudWlkLCAncHJvbWlzZScpO1xuXHRcdFx0XHRyZXNvbHZlKHRoaXMucmVzcG9uc2UpO1xuXHRcdFx0fS5iaW5kKHRoaXMpLCBmdW5jdGlvbihlcnIpIHtcblx0XHRcdFx0dGhpcy53YWl0aW5nID0gZmFsc2U7XG5cdFx0XHRcdGlmKGVycilcblx0XHRcdFx0XHR0aGlzLmVycm9yID0gdGhpcy5fY3JlYXRlRXJyb3IoZXJyKTtcblx0XHRcdFx0Q2FjaGUucmVtb3ZlKHRoaXMuY2FjaGUsIHRoaXMudWlkLCAncHJvbWlzZScpO1xuXHRcdFx0XHRyZWplY3QodGhpcy5lcnJvcik7XG5cdFx0XHR9LmJpbmQodGhpcykpXG5cdFx0fS5iaW5kKHRoaXMpKTtcblx0XHRDYWNoZS5hZGQodGhpcy5jYWNoZSwgdGhpcy51aWQsIG5ld1Byb21pc2UsICdwcm9taXNlJyk7XG5cdFx0cmV0dXJuIG5ld1Byb21pc2U7XG5cdH1cblxuXHRfcmVzcG9uc2VBbGwocHJvbWlzZXMpIHtcblx0XHR0aGlzLndhaXRpbmcgPSB0cnVlO1xuXHRcdHZhciBuZXdQcm9taXNlID0gUHJvbWlzZS5hbGwocHJvbWlzZXMpLnRoZW4oZnVuY3Rpb24ocmVzKSB7XG5cdFx0XHRmb3IodmFyIGkgPSAwLCBsID0gcmVzLmxlbmd0aDsgaSA8IGw7IGkrKyl7XG5cdFx0XHRcdGlmKHJlc1tpXS5jb25zdHJ1Y3RvciAhPT0gQXJyYXkpXG5cdFx0XHRcdFx0cmVzW2ldID0gW3Jlc1tpXV07XG5cdFx0XHR9XG5cdFx0XHR0aGlzLndhaXRpbmcgPSBmYWxzZTtcblx0XHRcdHRoaXMucmVzcG9uc2UgPSBbXS5jb25jYXQuYXBwbHkoW10sIHJlcyk7XG5cdFx0XHRDYWNoZS5yZW1vdmUodGhpcy5jYWNoZSwgdGhpcy51aWQsICdwcm9taXNlJyk7XG5cdFx0XHRyZXR1cm4gUHJvbWlzZS5yZXNvbHZlKHRoaXMucmVzcG9uc2UpO1xuXHRcdH0uYmluZCh0aGlzKSwgZnVuY3Rpb24oZXJyKSB7XG5cdFx0XHR0aGlzLndhaXRpbmcgPSBmYWxzZTtcblx0XHRcdGlmKGVycilcblx0XHRcdFx0dGhpcy5lcnJvciA9IHRoaXMuX2NyZWF0ZUVycm9yKGVycik7XG5cdFx0XHRDYWNoZS5yZW1vdmUodGhpcy5jYWNoZSwgdGhpcy51aWQsICdwcm9taXNlJyk7XG5cdFx0XHRyZXR1cm4gUHJvbWlzZS5yZWplY3QodGhpcy5lcnJvcik7XG5cdFx0fS5iaW5kKHRoaXMpKTtcblxuXHRcdENhY2hlLmFkZCh0aGlzLmNhY2hlLCB0aGlzLnVpZCwgbmV3UHJvbWlzZSwgJ3Byb21pc2UnKTtcblx0XHRyZXR1cm4gbmV3UHJvbWlzZTtcblx0fVxuXG5cdF9jYWNoZSgpIHtcblx0XHRDYWNoZS5hZGQodGhpcy5jYWNoZSwgdGhpcy51aWQsIHRoaXMucmVzcG9uc2UpO1xuXHR9XG5cblx0X2NyZWF0ZUVycm9yKGVycikge1xuXHRcdHZhciBtc2cgPSBlcnIubWVzc2FnZSB8fCBlcnI7XG5cdFx0dmFyIGVycm9yID0ge21lc3NhZ2UgOiBtc2d9O1xuXG5cdFx0dmFyIHZhbGlkYXRpb25zO1xuXHRcdGlmKG1zZy5pbmRleE9mKCdWYWxpZGF0aW9uRXhjZXB0aW9uOiBbJykgIT0gLTEgfHwgbXNnLnN0YXJ0c1dpdGgoJ1snKSkge1xuXHRcdFx0dmFyIHN0YXJ0ID0gbXNnLmluZGV4T2YoJ1snKTtcblx0XHRcdHZhciBlbmQgPSBtc2cuaW5kZXhPZignXScsIHN0YXJ0KSArIDE7XG5cdFx0XHRpZihlbmQgPiBzdGFydClcblx0XHRcdFx0dmFsaWRhdGlvbnMgPSBtc2cuc3Vic3RyaW5nKHN0YXJ0LCBlbmQpO1xuXHRcdH1cblxuXHRcdGlmKHZhbGlkYXRpb25zKSB7XG5cdFx0XHR0cnkge1xuXHRcdFx0XHR2YXIgdmFsaWRhdGlvbnNBcnJheSA9IEpTT04ucGFyc2UodmFsaWRhdGlvbnMpO1xuXHRcdFx0XHRlcnJvci52YWxpZGF0aW9ucyA9IHZhbGlkYXRpb25zQXJyYXk7XG5cdFx0XHR9IGNhdGNoIChlKSB7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0cmV0dXJuIGVycm9yO1xuXHR9XG59XG5cblBvbHltZXIoIFNlcnZpY2UgKTsiXX0=
'use strict';

System.register('common/entities/sb-entity-detail/EntityDetail.js', ['../../core/Page.js'], function (_export, _context) {
	var Page, _createClass, EntityDetail;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_corePageJs) {
			Page = _corePageJs.Page;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('EntityDetail', EntityDetail = function (_Page) {
				_inherits(EntityDetail, _Page);

				function EntityDetail() {
					_classCallCheck(this, EntityDetail);

					return _possibleConstructorReturn(this, (EntityDetail.__proto__ || Object.getPrototypeOf(EntityDetail)).apply(this, arguments));
				}

				_createClass(EntityDetail, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-entity-detail';
						this.properties = Polymer.Base.extend({
							model: String,
							modelClass: {
								type: Object,
								value: function value() {
									return {};
								}
							},
							id: {
								type: String,
								value: function value() {
									return '';
								}
							},
							isNew: {
								type: Boolean,
								value: function value() {
									return true;
								}
							},
							layout: {
								type: Object,
								value: function value() {
									return {};
								}
							},
							obj: {
								type: Object,
								value: function value() {
									return {};
								}
							}
						}, Page.properties);
					}
				}, {
					key: 'ready',
					value: function ready() {
						this.model = this.ctx.pathParams.type;
						this.modelClass = this.$.db[this.model];
						this.fields = this.modelClass.schema.properties;
						this.layout = this.$.db.objectLayouts[this.model].detail['default'];
						this.isNew = this.ctx.params.id ? false : true;
						this.id = this.ctx.params.id;
					}
				}, {
					key: 'getEntityField',
					value: function getEntityField(viewField) {
						return this.fields[viewField.name];
					}
				}, {
					key: 'getObjTitleLabel',
					value: function getObjTitleLabel(obj, layout) {
						return this.obj[layout.titleAttr];
					}
				}, {
					key: 'getObjFieldLabel',
					value: function getObjFieldLabel(viewField) {
						return this.getEntityField(viewField).title;
					}
				}, {
					key: 'getFieldValue',
					value: function getFieldValue(viewField) {
						return this.obj[viewField.name];
					}
				}, {
					key: 'isViewable',
					value: function isViewable(field) {
						var f = this.fields[field.name];
						if (!this.isNew || this.isNew && f.$_type != 'formula' && f.$_type != 'autonumber') return true;

						return false;
					}
				}, {
					key: 'cancel',
					value: function cancel() {
						this.nav('/entities/' + this.model);
					}
				}, {
					key: 'preview',
					value: function preview() {
						this.nav('/docgen/preview?id=' + this.obj.id);
					}
				}, {
					key: 'save',
					value: function save(e, detail, sender, navUrl) {
						return this.obj.save().then(function (o) {
							this.nav(navUrl ? navUrl : '/entities/' + this.model + '/detail?id=' + o.id);
						}.bind(this));
					}
				}, {
					key: 'saveNew',
					value: function saveNew(e, detail, sender) {
						this.save(e, detail, sender, '/entities/' + this.model + '/new').then(function () {
							window.dispatchEvent(new HashChangeEvent("hashchange"));
						});
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.Page];
					}
				}]);

				return EntityDetail;
			}(Page));

			_export('EntityDetail', EntityDetail);

			Polymer(EntityDetail);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkVudGl0eURldGFpbC5qcyJdLCJuYW1lcyI6WyJQYWdlIiwiRW50aXR5RGV0YWlsIiwiaXMiLCJwcm9wZXJ0aWVzIiwiUG9seW1lciIsIkJhc2UiLCJleHRlbmQiLCJtb2RlbCIsIlN0cmluZyIsIm1vZGVsQ2xhc3MiLCJ0eXBlIiwiT2JqZWN0IiwidmFsdWUiLCJpZCIsImlzTmV3IiwiQm9vbGVhbiIsImxheW91dCIsIm9iaiIsImN0eCIsInBhdGhQYXJhbXMiLCIkIiwiZGIiLCJmaWVsZHMiLCJzY2hlbWEiLCJvYmplY3RMYXlvdXRzIiwiZGV0YWlsIiwicGFyYW1zIiwidmlld0ZpZWxkIiwibmFtZSIsInRpdGxlQXR0ciIsImdldEVudGl0eUZpZWxkIiwidGl0bGUiLCJmaWVsZCIsImYiLCIkX3R5cGUiLCJuYXYiLCJlIiwic2VuZGVyIiwibmF2VXJsIiwic2F2ZSIsInRoZW4iLCJvIiwiYmluZCIsIndpbmRvdyIsImRpc3BhdGNoRXZlbnQiLCJIYXNoQ2hhbmdlRXZlbnQiLCJzYiIsImNvbW1vbiIsImNvcmUiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFBUUEsTyxlQUFBQSxJOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7MkJBRUtDLFk7Ozs7Ozs7Ozs7O3NDQU1LO0FBQ2hCLFdBQUtDLEVBQUwsR0FBVSxrQkFBVjtBQUNBLFdBQUtDLFVBQUwsR0FBa0JDLFFBQVFDLElBQVIsQ0FBYUMsTUFBYixDQUFxQjtBQUN0Q0MsY0FBT0MsTUFEK0I7QUFFdENDLG1CQUFZO0FBQ1hDLGNBQU1DLE1BREs7QUFFWEMsZUFBTyxpQkFBVztBQUFFLGdCQUFPLEVBQVA7QUFBWTtBQUZyQixRQUYwQjtBQU10Q0MsV0FBSTtBQUNISCxjQUFNRixNQURIO0FBRUhJLGVBQU8saUJBQVc7QUFBRSxnQkFBTyxFQUFQO0FBQVk7QUFGN0IsUUFOa0M7QUFVdENFLGNBQU87QUFDTkosY0FBTUssT0FEQTtBQUVOSCxlQUFPLGlCQUFXO0FB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Ozs7S0FKZ0NBLEk7Ozs7QUFzRmxDSSxXQUFTSCxZQUFUIiwiZmlsZSI6IkVudGl0eURldGFpbC5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7UGFnZX0gZnJvbSAnLi4vLi4vY29yZS9QYWdlLmpzJztcblxuZXhwb3J0IGNsYXNzIEVudGl0eURldGFpbCBleHRlbmRzIFBhZ2Uge1xuXG5cdGdldCBiZWhhdmlvcnMoKSB7XG5cdFx0cmV0dXJuIFtzYi5jb21tb24uY29yZS5QYWdlXTtcblx0fVxuXHRcblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1lbnRpdHktZGV0YWlsJztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSBQb2x5bWVyLkJhc2UuZXh0ZW5kKCB7XG5cdFx0XHRtb2RlbDogU3RyaW5nLFxuXHRcdFx0bW9kZWxDbGFzczoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIHt9OyB9XG5cdFx0XHR9LFxuXHRcdFx0aWQ6IHtcblx0XHRcdFx0dHlwZTogU3RyaW5nLFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7IHJldHVybiAnJzsgfVxuXHRcdFx0fSxcblx0XHRcdGlzTmV3OiB7XG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIHRydWU7IH1cblx0XHRcdH0sXG5cdFx0XHRsYXlvdXQ6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7IHJldHVybiB7fTsgfVxuXHRcdFx0fSxcblx0XHRcdG9iajogeyAgLy8gb2JqZWN0IGluc3RhbmNlXG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uKCkgeyByZXR1cm4ge307IH1cblx0XHRcdH1cblx0XHR9LCBQYWdlLnByb3BlcnRpZXMgKTtcblx0fVxuXG5cdHJlYWR5KCkge1xuXHRcdHRoaXMubW9kZWwgPSB0aGlzLmN0eC5wYXRoUGFyYW1zLnR5cGU7XG5cdFx0dGhpcy5tb2RlbENsYXNzID0gdGhpcy4kLmRiWyB0aGlzLm1vZGVsIF07XG5cdFx0dGhpcy5maWVsZHMgPSB0aGlzLm1vZGVsQ2xhc3Muc2NoZW1hLnByb3BlcnRpZXM7XG5cdFx0dGhpcy5sYXlvdXQgPSB0aGlzLiQuZGIub2JqZWN0TGF5b3V0c1sgdGhpcy5tb2RlbCBdLmRldGFpbFsnZGVmYXVsdCddOyAgLy90b2RvOiBsb2FkIHNwZWNpZmljIGxheW91dFxuXHRcdHRoaXMuaXNOZXcgPSB0aGlzLmN0eC5wYXJhbXMuaWQgPyBmYWxzZSA6IHRydWU7XG5cdFx0dGhpcy5pZCA9IHRoaXMuY3R4LnBhcmFtcy5pZDtcblx0fVxuXG5cdGdldEVudGl0eUZpZWxkKCB2aWV3RmllbGQgKSB7XG5cdFx0cmV0dXJuIHRoaXMuZmllbGRzWyB2aWV3RmllbGQubmFtZSBdO1xuXHR9XG5cdGdldE9ialRpdGxlTGFiZWwoIG9iaiwgbGF5b3V0ICkge1xuXHRcdHJldHVybiB0aGlzLm9ialtsYXlvdXQudGl0bGVBdHRyXTtcblx0fVxuXHRnZXRPYmpGaWVsZExhYmVsKCB2aWV3RmllbGQgKSB7XG5cdFx0cmV0dXJuIHRoaXMuZ2V0RW50aXR5RmllbGQoIHZpZXdGaWVsZCApLnRpdGxlOyAgLy8gdG9kbzogY2hlY2sgZm9yIHZpZXctbGV2ZWwgb3ZlcnJpZGVcblx0fVxuXHRnZXRGaWVsZFZhbHVlKCB2aWV3RmllbGQgKSB7XG5cdFx0cmV0dXJuIHRoaXMub2JqWyB2aWV3RmllbGQubmFtZSBdO1xuXHR9XG5cblx0LyoqIFJldHVybnMgdHJ1ZSBpZiB0aGUgZmllbGQgaXMgdmlld2FibGUgaW4gdGhpcyBwYWdlICovXG5cdGlzVmlld2FibGUoIGZpZWxkICkge1xuXHRcdGxldCBmID0gdGhpcy5maWVsZHNbZmllbGQubmFtZV07XG5cdFx0aWYoICF0aGlzLmlzTmV3IHx8ICggdGhpcy5pc05ldyAmJiBmLiRfdHlwZSAhPSAnZm9ybXVsYScgJiYgZi4kX3R5cGUgIT0gJ2F1dG9udW1iZXInICkgKSAvLyBkb24ndCBzaG93IG9uIGNyZWF0ZSB2aWV3c1xuXHRcdHJldHVybiB0cnVlO1xuXG5cdFx0cmV0dXJuIGZhbHNlO1xuXHR9XG5cblx0Y2FuY2VsKCkge1xuXHRcdHRoaXMubmF2KCAnL2VudGl0aWVzLycgKyB0aGlzLm1vZGVsICk7XG5cdH1cblxuXHRwcmV2aWV3KCkge1xuXHRcdHRoaXMubmF2KCAnL2RvY2dlbi9wcmV2aWV3P2lkPScgKyB0aGlzLm9iai5pZCApO1xuXHR9XG5cblx0c2F2ZSggZSwgZGV0YWlsLCBzZW5kZXIsIG5hdlVybCApIHtcblx0XHRyZXR1cm4gdGhpcy5vYmouc2F2ZSgpLnRoZW4oIGZ1bmN0aW9uKCBvICkge1xuXHRcdFx0dGhpcy5uYXYoIG5hdlVybCA/IG5hdlVybCA6ICcvZW50aXRpZXMvJyArIHRoaXMubW9kZWwgKyAnL2RldGFpbD9pZD0nICsgby5pZCApO1xuXHRcdH0uYmluZCh0aGlzKSApO1xuXHR9XG5cblx0c2F2ZU5ldyggZSwgZGV0YWlsLCBzZW5kZXIgKSB7XG5cdFx0dGhpcy5zYXZlKCBlLCBkZXRhaWwsIHNlbmRlciwgJy9lbnRpdGllcy8nICsgdGhpcy5tb2RlbCArICcvbmV3JyApLnRoZW4oIGZ1bmN0aW9uKCkge1xuXHRcdFx0Ly8gaWYgeW91IHNldCB0aGUgaGFzaCB0byBiZSBzYW1lIHZhbHVlIGFzIGl0IGN1cnJlbnRseSBoYXMgeW91IGRvbid0IGdldCBhIGhhc2hjaGFuZ2UgZXZlbnRcblx0XHRcdHdpbmRvdy5kaXNwYXRjaEV2ZW50KG5ldyBIYXNoQ2hhbmdlRXZlbnQoXCJoYXNoY2hhbmdlXCIpKTtcblx0XHR9KTtcblx0fVxufVxuXG5Qb2x5bWVyKCBFbnRpdHlEZXRhaWwgKTtcbiJdfQ==
'use strict';

System.register('common/entities/sb-entity-field/EntityField.js', ['../../core/Page.js'], function (_export, _context) {
	var Page, _createClass, INPUT, CHECKBOX, DATE, TEXTAREA, EntityField;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_corePageJs) {
			Page = _corePageJs.Page;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			INPUT = '<input is="iron-input">';
			CHECKBOX = '<paper-checkbox></paper-checkbox>';
			DATE = '<input is="iron-input" type="date">';
			TEXTAREA = '<textarea is="iron-autogrow-textarea"></textarea>';

			_export('EntityField', EntityField = function () {
				function EntityField() {
					_classCallCheck(this, EntityField);
				}

				_createClass(EntityField, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-entity-field';
						this.properties = Polymer.Base.extend({
							field: {
								type: Object,
								value: function value() {
									return {};
								}
							},
							viewField: {
								type: Object,
								value: function value() {
									return {};
								}
							},
							object: {
								type: Object,
								value: function value() {
									return undefined;
								}
							},
							refRows: {
								type: Array,
								value: function value() {
									return [];
								}
							}
						}, Page.properties);
					}
				}, {
					key: 'render',
					value: function render() {
						var type = this.field ? this.field.$_type : undefined,
						    dValue = this.field ? this.field.defaultValue : undefined,
						    con = Polymer.dom(this.$.f);

						if (this.object && !this.object.id && this.field && this.field.id) this.object[this.field.id] = this.field.defaultValue;

						switch (type) {
							case 'boolean':
								var el = this.createBaseElement(CHECKBOX);
								el.checked = this.object[this.field.id];
								el.addEventListener('change', function (e) {
									if (this.object && this.field) this.object[this.field.id] = el.checked ? true : false;
								}.bind(this));
								break;

							case 'date':
							case 'datetime':
								el = this.createBaseElement(DATE, 'value');
								el.addEventListener('bind-value-changed', function (e) {
									if (this.object && this.field) this.object[this.field.id] = e.detail.value ? e.detail.value : null;
								}.bind(this));
								break;

							case 'number':
							case 'currency':
							case 'percent':
								el = this.createBaseElement(INPUT, 'value');
								el.addEventListener('bind-value-changed', function (e) {
									if (this.object && this.field) this.object[this.field.id] = e.detail.value ? parseFloat(e.detail.value) : null;
								}.bind(this));
								break;

							case 'autonumber':
								con.textContent = this.object[this.field.id];
								break;

							case 'enum':
								var none = !this.field.required && !this.viewField.required ? '-- None --' : '',
								    len = this.field.enum ? this.field.enum.length : 0,
								    html = '<select>' + (none ? '<option value>' + none + '</option>' : '');

								if (this.field.defaultValue && !this.object.id) this.object[this.field.id] = this.field.enum[i].value;

								for (var _i = 0; _i < len; _i++) {
									var selected = this.object[this.field.id] === this.field.enum[_i] ? true : false;
									html += '<option value="' + this.field.enum[_i] + '"' + (selected ? ' selected' : '') + '>' + this.field.enum[_i] + '</option>';
								}

								html += '</select>';
								el = this.createBaseElement(html);

								el.addEventListener('change', function (e) {
									if (this.object && this.field) this.object[this.field.id] = el.value ? el.value : null;
								}.bind(this));
								break;

							case 'lookup':
								break;

							case 'autonumber':
								con.textContent = this.object[this.field.id];
								break;

							case 'string':
								if (this.field.maxLength > 255 || this.field.format === 'multiline') {
									el = this.createBaseElement(TEXTAREA, 'value');
									el.addEventListener('bind-value-changed', function (e) {
										if (this.object && this.field) this.object[this.field.id] = e.detail.value ? e.detail.value : null;
									}.bind(this));
								} else {
									var _el = this.createBaseElement(INPUT, 'value');
									_el.addEventListener('bind-value-changed', function (e) {
										if (this.object && this.field) this.object[this.field.id] = e.detail.value ? e.detail.value : null;
									}.bind(this));
								}
								break;
						}
					}
				}, {
					key: 'createBaseElement',
					value: function createBaseElement(html, valueProp) {
						Polymer.dom(this.$.f).innerHTML = html;
						var el = this.$$('#f > *');

						if (valueProp && this.field && this.field.id && this.object[this.field.id]) el[valueProp] = this.object[this.field.id];

						return el;
					}
				}, {
					key: 'setDefaultValue',
					value: function setDefaultValue(v) {
						if (this.value == undefined) this.value = v;
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.Page];
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['render( field, object, viewField )'];
					}
				}]);

				return EntityField;
			}());

			_export('EntityField', EntityField);

			Polymer(EntityField);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkVudGl0eUZpZWxkLmpzIl0sIm5hbWVzIjpbIlBhZ2UiLCJJTlBVVCIsIkNIRUNLQk9YIiwiREFURSIsIlRFWFRBUkVBIiwiRW50aXR5RmllbGQiLCJpcyIsInByb3BlcnRpZXMiLCJQb2x5bWVyIiwiQmFzZSIsImV4dGVuZCIsImZpZWxkIiwidHlwZSIsIk9iamVjdCIsInZhbHVlIiwidmlld0ZpZWxkIiwib2JqZWN0IiwidW5kZWZpbmVkIiwicmVmUm93cyIsIkFycmF5IiwiJF90eXBlIiwiZFZhbHVlIiwiZGVmYXVsdFZhbHVlIiwiY29uIiwiZG9tIiwiJCIsImYiLCJpZCIsImVsIiwiY3JlYXRlQmFzZUVsZW1lbnQiLCJjaGVja2VkIiwiYWRkRXZlbnRMaXN0ZW5lciIsImUiLCJiaW5kIiwiZGV0YWlsIiwicGFyc2VGbG9hdCIsInRleHRDb250ZW50Iiwibm9uZSIsInJlcXVpcmVkIiwibGVuIiwiZW51bSIsImxlbmd0aCIsImh0bWwiLCJpIiwic2VsZWN0ZWQiLCJtYXhMZW5ndGgiLCJmb3JtYXQiLCJ2YWx1ZVByb3AiLCJpbm5lckhUTUwiLCIkJCIsInYiLCJzYiIsImNvbW1vbiIsImNvcmUiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7QUFBUUEsTyxlQUFBQSxJOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFFSkMsUSxHQUFRLHlCO0FBQ1ZDLFcsR0FBVyxtQztBQUNYQyxPLEdBQU8scUM7QUFDUEMsVyxHQUFXLG1EOzswQkFFQUMsVzs7Ozs7OztzQ0FNSztBQUNoQixXQUFLQyxFQUFMLEdBQVUsaUJBQVY7QUFDQSxXQUFLQyxVQUFMLEdBQWtCQyxRQUFRQyxJQUFSLENBQWFDLE1BQWIsQ0FBcUI7QUFDdENDLGNBQU87QUFDTkMsY0FBTUMsTUFEQTtBQUVOQyxlQUFPLGlCQUFXO0FBQUUsZ0JBQU8sRUFBUDtBQUFZO0FBRjFCLFFBRCtCO0FBS3RDQyxrQkFBVztBQUNWSCxjQUFNQyxNQURJO0FBRVZDLGVBQU8saUJBQVc7QUFBRSxnQkFBTyxFQUFQ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QUtMLEtBQXhCLEVBQ0EsS0FBS0ssTUFBTCxDQUFZLEtBQUtMLEtBQUwsQ0FBV2dCLEVBQXZCLElBQTZCSyxFQUFFRSxNQUFGLENBQVNwQixLQUFULEdBQWlCa0IsRUFBRUUsTUFBRixDQUFTcEIsS0FBMUIsR0FBa0MsSUFBL0Q7QUFDQSxVQUgwQyxDQUd6Q21CLElBSHlDLENBR3BDLElBSG9DLENBQTNDO0FBSUE7QUFDRDtBQTlFRDtBQWdGQTs7O3VDQUVrQlMsSSxFQUFNSyxTLEVBQVk7QUFDcEN2QyxjQUFRZ0IsR0FBUixDQUFZLEtBQUtDLENBQUwsQ0FBT0MsQ0FBbkIsRUFBc0JzQixTQUF0QixHQUFrQ04sSUFBbEM7QUFDQSxVQUFJZCxLQUFLLEtBQUtxQixFQUFMLENBQVEsUUFBUixDQUFUOztBQUdBLFVBQUlGLGFBQWEsS0FBS3BDLEtBQWxCLElBQTJCLEtBQUtBLEtBQUwsQ0FBV2dCLEVBQXRDLElBQTRDLEtBQUtYLE1BQUwsQ0FBWSxLQUFLTCxLQUFMLENBQVdnQixFQUF2QixDQUFoRCxFQUNBQyxHQUFHbUIsU0FBSCxJQUFnQixLQUFLL0IsTUFBTCxDQUFZLEtBQUtMLEtBQUwsQ0FBV2dCLEVBQXZCLENBQWhCOztBQUVBLGFBQU9DLEVBQVA7QUFDQTs7O3FDQUdnQnNCLEMsRUFBSTtBQUNwQixVQUFJLEtBQUtwQyxLQUFMLElBQWNHLFNBQWxCLEVBQ0EsS0FBS0gsS0FBTCxHQUFhb0MsQ0FBYjtBQUNBOzs7eUJBMUllO0FBQ2YsYUFBTyxDQUFDQyxHQUFHQyxNQUFILENBQVVDLElBQVYsQ0FBZXJELElBQWhCLENBQVA7QUFDQTs7O3lCQXdCZTtBQUNmLGFBQU8sQ0FBQyxvQ0FBRCxDQUFQO0FBQ0E7Ozs7Ozs7O0FBaUhGUSxXQUFTSCxXQUFUIiwiZmlsZSI6IkVudGl0eUZpZWxkLmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtQYWdlfSBmcm9tICcuLi8uLi9jb3JlL1BhZ2UuanMnO1xuXG5sZXQgSU5QVVQgPSAnPGlucHV0IGlzPVwiaXJvbi1pbnB1dFwiPicsXG5cdFx0Q0hFQ0tCT1ggPSAnPHBhcGVyLWNoZWNrYm94PjwvcGFwZXItY2hlY2tib3g+Jyxcblx0XHREQVRFID0gJzxpbnB1dCBpcz1cImlyb24taW5wdXRcIiB0eXBlPVwiZGF0ZVwiPicsXG5cdFx0VEVYVEFSRUEgPSAnPHRleHRhcmVhIGlzPVwiaXJvbi1hdXRvZ3Jvdy10ZXh0YXJlYVwiPjwvdGV4dGFyZWE+JztcblxuZXhwb3J0IGNsYXNzIEVudGl0eUZpZWxkIHtcblxuXHRnZXQgYmVoYXZpb3JzKCkge1xuXHRcdHJldHVybiBbc2IuY29tbW9uLmNvcmUuUGFnZV07XG5cdH1cblxuXHRiZWZvcmVSZWdpc3RlcigpIHtcblx0XHR0aGlzLmlzID0gJ3NiLWVudGl0eS1maWVsZCc7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0gUG9seW1lci5CYXNlLmV4dGVuZCgge1xuXHRcdFx0ZmllbGQ6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7IHJldHVybiB7fTsgfVxuXHRcdFx0fSxcblx0XHRcdHZpZXdGaWVsZDoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIHt9OyB9XG5cdFx0XHR9LFxuXHRcdFx0b2JqZWN0OiB7XG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uKCkgeyByZXR1cm4gdW5kZWZpbmVkOyB9XG5cdFx0XHR9LFxuXHRcdFx0cmVmUm93czoge1xuXHRcdFx0XHR0eXBlOiBBcnJheSxcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uKCkgeyByZXR1cm4gW107IH1cblx0XHRcdH1cblx0XHR9LCBQYWdlLnByb3BlcnRpZXMgKTtcblx0fVxuXG5cdGdldCBvYnNlcnZlcnMoKSB7XG5cdFx0cmV0dXJuIFsncmVuZGVyKCBmaWVsZCwgb2JqZWN0LCB2aWV3RmllbGQgKSddO1xuXHR9XG5cblx0cmVuZGVyKCkge1xuXHRcdGxldCB0eXBlID0gdGhpcy5maWVsZCA/IHRoaXMuZmllbGQuJF90eXBlIDogdW5kZWZpbmVkLFxuXHRcdGRWYWx1ZSA9IHRoaXMuZmllbGQgPyB0aGlzLmZpZWxkLmRlZmF1bHRWYWx1ZSA6IHVuZGVmaW5lZCxcblx0XHRjb24gPSBQb2x5bWVyLmRvbSh0aGlzLiQuZik7XG5cblx0XHQvLyBzZXQgZGVmYXVsdCB2YWx1ZSBmb3IgZmllbGQgb24gbmV3IG9iamVjdFxuXHRcdGlmKCB0aGlzLm9iamVjdCAmJiAhdGhpcy5vYmplY3QuaWQgJiYgdGhpcy5maWVsZCAmJiB0aGlzLmZpZWxkLmlkIClcblx0XHR0aGlzLm9iamVjdFt0aGlzLmZpZWxkLmlkXSA9IHRoaXMuZmllbGQuZGVmYXVsdFZhbHVlO1xuXG5cdFx0Ly8gZHluYW1pY2FsbHkgY3JlYXRlIERPTSBlbGVtZXQgYW5kIGhvb2sgdXAgbGlzdGVuZXJzXG5cdFx0Ly8gQXMgb2YgUG9seW1lciAxLjIsIGl0IGNhbid0IGJpbmQgd2l0aCBkeW5hbWljIGZpZWxkIGV4cHJlc3Npb25zIHNvIG11c3QgdXNlIG1hbnVhbCBldmVudCBsaXN0ZW5lcnMgaGVyZSA6KFxuXHRcdHN3aXRjaCggdHlwZSApIHtcblx0XHRcdGNhc2UgJ2Jvb2xlYW4nOlxuXHRcdFx0bGV0IGVsID0gdGhpcy5jcmVhdGVCYXNlRWxlbWVudCggQ0hFQ0tCT1ggKTtcblx0XHRcdGVsLmNoZWNrZWQgPSB0aGlzLm9iamVjdFt0aGlzLmZpZWxkLmlkXTtcblx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdjaGFuZ2UnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdGlmKCB0aGlzLm9iamVjdCAmJiB0aGlzLmZpZWxkIClcblx0XHRcdFx0dGhpcy5vYmplY3RbdGhpcy5maWVsZC5pZF0gPSBlbC5jaGVja2VkID8gdHJ1ZSA6IGZhbHNlO1xuXHRcdFx0fS5iaW5kKHRoaXMpICk7XG5cdFx0XHRicmVhaztcblxuXHRcdFx0Y2FzZSAnZGF0ZSc6XG5cdFx0XHRjYXNlICdkYXRldGltZSc6XG5cdFx0XHRlbCA9IHRoaXMuY3JlYXRlQmFzZUVsZW1lbnQoIERBVEUsICd2YWx1ZScgKTtcblx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdiaW5kLXZhbHVlLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdGlmKCB0aGlzLm9iamVjdCAmJiB0aGlzLmZpZWxkIClcblx0XHRcdFx0dGhpcy5vYmplY3RbdGhpcy5maWVsZC5pZF0gPSBlLmRldGFpbC52YWx1ZSA/IGUuZGV0YWlsLnZhbHVlIDogbnVsbDtcblx0XHRcdH0uYmluZCh0aGlzKSApO1xuXHRcdFx0YnJlYWs7XG5cblx0XHRcdGNhc2UgJ251bWJlcic6XG5cdFx0XHRjYXNlICdjdXJyZW5jeSc6XG5cdFx0XHRjYXNlICdwZXJjZW50Jzpcblx0XHRcdGVsID0gdGhpcy5jcmVhdGVCYXNlRWxlbWVudCggSU5QVVQsICd2YWx1ZScgKTtcblx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdiaW5kLXZhbHVlLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdGlmKCB0aGlzLm9iamVjdCAmJiB0aGlzLmZpZWxkIClcblx0XHRcdFx0dGhpcy5vYmplY3RbdGhpcy5maWVsZC5pZF0gPSBlLmRldGFpbC52YWx1ZSA/IHBhcnNlRmxvYXQoIGUuZGV0YWlsLnZhbHVlICkgOiBudWxsO1xuXHRcdFx0fS5iaW5kKHRoaXMpICk7XG5cdFx0XHRicmVhaztcblxuXHRcdFx0Y2FzZSAnYXV0b251bWJlcic6XG5cdFx0XHRjb24udGV4dENvbnRlbnQgPSB0aGlzLm9iamVjdFt0aGlzLmZpZWxkLmlkXTtcblx0XHRcdGJyZWFrO1xuXG5cdFx0XHRjYXNlICdlbnVtJzpcblx0XHRcdGxldCBub25lID0gIXRoaXMuZmllbGQucmVxdWlyZWQgJiYgIXRoaXMudmlld0ZpZWxkLnJlcXVpcmVkID8gJy0tIE5vbmUgLS0nIDogJycsXG5cdFx0XHRsZW4gPSB0aGlzLmZpZWxkLmVudW0gPyB0aGlzLmZpZWxkLmVudW0ubGVuZ3RoIDogMCxcblx0XHRcdGh0bWwgPSAnPHNlbGVjdD4nICsgKG5vbmUgPyAnPG9wdGlvbiB2YWx1ZT4nICsgbm9uZSArICc8L29wdGlvbj4nIDogJycpO1xuXG5cdFx0XHRpZiggdGhpcy5maWVsZC5kZWZhdWx0VmFsdWUgJiYgIXRoaXMub2JqZWN0LmlkICkgLy8gc2V0IGRlZmF1bHQgdmFsdWUgZm9yIG5ld2x5IGNyZWF0ZWQgb2JqZWN0c1xuXHRcdFx0dGhpcy5vYmplY3RbdGhpcy5maWVsZC5pZF0gPSB0aGlzLmZpZWxkLmVudW1baV0udmFsdWU7XG5cblx0XHRcdGZvciggbGV0IGk9MDsgaSA8IGxlbjsgaSsrICkge1xuXHRcdFx0XHRsZXQgc2VsZWN0ZWQgPSB0aGlzLm9iamVjdFt0aGlzLmZpZWxkLmlkXSA9PT0gdGhpcy5maWVsZC5lbnVtW2ldID8gdHJ1ZSA6IGZhbHNlO1xuXHRcdFx0XHRodG1sICs9ICc8b3B0aW9uIHZhbHVlPVwiJyArIHRoaXMuZmllbGQuZW51bVtpXSArICdcIicgKyAoc2VsZWN0ZWQgPyAnIHNlbGVjdGVkJyA6ICcnKSArICc+JyArIHRoaXMuZmllbGQuZW51bVtpXSArICc8L29wdGlvbj4nO1xuXHRcdFx0fVxuXG5cdFx0XHRodG1sICs9ICc8L3NlbGVjdD4nO1xuXHRcdFx0ZWwgPSB0aGlzLmNyZWF0ZUJhc2VFbGVtZW50KCBodG1sICk7XG5cblx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdjaGFuZ2UnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdGlmKCB0aGlzLm9iamVjdCAmJiB0aGlzLmZpZWxkIClcblx0XHRcdFx0dGhpcy5vYmplY3RbdGhpcy5maWVsZC5pZF0gPSBlbC52YWx1ZSA/IGVsLnZhbHVlIDogbnVsbDtcblx0XHRcdH0uYmluZCh0aGlzKSk7XG5cdFx0XHRicmVhaztcblxuXHRcdFx0Y2FzZSAnbG9va3VwJzpcblx0XHRcdC8vY29tcGxleCA9ICc8c2ItdHlwZWFoZWFkIGlkPVwidHlwZWFoZWFkXCIgaXRlbXM9XCJ7e3JlZlJvd3N9fVwiIHZhbHVlPVwie3t2YWx1ZX19XCIgdmFsdWVBdHRyPVwiaWRcIiBsYWJlbEF0dHI9XCJOYW1lXCI+PC9zYi10eXBlYWhlYWQ+Jztcblx0XHRcdGJyZWFrO1xuXG5cdFx0XHRjYXNlICdhdXRvbnVtYmVyJzpcblx0XHRcdGNvbi50ZXh0Q29udGVudCA9IHRoaXMub2JqZWN0W3RoaXMuZmllbGQuaWRdO1xuXHRcdFx0YnJlYWs7XG5cblx0XHRcdGNhc2UgJ3N0cmluZyc6XG5cdFx0XHRpZiggdGhpcy5maWVsZC5tYXhMZW5ndGggPiAyNTUgfHwgdGhpcy5maWVsZC5mb3JtYXQgPT09ICdtdWx0aWxpbmUnICkge1xuXHRcdFx0XHRlbCA9IHRoaXMuY3JlYXRlQmFzZUVsZW1lbnQoIFRFWFRBUkVBLCAndmFsdWUnICk7XG5cdFx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdiaW5kLXZhbHVlLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdFx0aWYoIHRoaXMub2JqZWN0ICYmIHRoaXMuZmllbGQgKVxuXHRcdFx0XHRcdHRoaXMub2JqZWN0W3RoaXMuZmllbGQuaWRdID0gZS5kZXRhaWwudmFsdWUgPyBlLmRldGFpbC52YWx1ZSA6IG51bGw7XG5cdFx0XHRcdH0uYmluZCh0aGlzKSApO1xuXHRcdFx0fVxuXHRcdFx0ZWxzZSB7XG5cdFx0XHRcdGxldCBlbCA9IHRoaXMuY3JlYXRlQmFzZUVsZW1lbnQoIElOUFVULCAndmFsdWUnICk7XG5cdFx0XHRcdGVsLmFkZEV2ZW50TGlzdGVuZXIoICdiaW5kLXZhbHVlLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRcdFx0aWYoIHRoaXMub2JqZWN0ICYmIHRoaXMuZmllbGQgKVxuXHRcdFx0XHRcdHRoaXMub2JqZWN0W3RoaXMuZmllbGQuaWRdID0gZS5kZXRhaWwudmFsdWUgPyBlLmRldGFpbC52YWx1ZSA6IG51bGw7XG5cdFx0XHRcdH0uYmluZCh0aGlzKSApO1xuXHRcdFx0fVxuXHRcdFx0YnJlYWs7XG5cdFx0fVxuXHR9XG5cblx0Y3JlYXRlQmFzZUVsZW1lbnQoIGh0bWwsIHZhbHVlUHJvcCApIHtcblx0XHRQb2x5bWVyLmRvbSh0aGlzLiQuZikuaW5uZXJIVE1MID0gaHRtbDtcblx0XHRsZXQgZWwgPSB0aGlzLiQkKCcjZiA+IConKTtcblxuXHRcdC8vIHNldCB2YWx1ZSBpZiB0aGVyZSBpcyBvbmVcblx0XHRpZiggdmFsdWVQcm9wICYmIHRoaXMuZmllbGQgJiYgdGhpcy5maWVsZC5pZCAmJiB0aGlzLm9iamVjdFt0aGlzLmZpZWxkLmlkXSApXG5cdFx0ZWxbdmFsdWVQcm9wXSA9IHRoaXMub2JqZWN0W3RoaXMuZmllbGQuaWRdO1xuXG5cdFx0cmV0dXJuIGVsO1xuXHR9XG5cblx0LyogU2V0cyB0aGUgZGVmYXVsdCB2YWx1ZSBvZiB0aGUgZmllbGQgdG8gYmUgdGhlIHZhbHVlIChpbml0aWFsbHkpIGlmIG5vIHZhbHVlIGV4aXN0cyAqL1xuXHRzZXREZWZhdWx0VmFsdWUoIHYgKSB7XG5cdFx0aWYoIHRoaXMudmFsdWUgPT0gdW5kZWZpbmVkIClcblx0XHR0aGlzLnZhbHVlID0gdjtcblx0fVxufVxuXG5Qb2x5bWVyKCBFbnRpdHlGaWVsZCApO1xuIl19
'use strict';

System.register('common/entities/sb-entity-list/EntityList.js', ['../../core/Page.js'], function (_export, _context) {
	var Page, _typeof, _createClass, EntityList;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_corePageJs) {
			Page = _corePageJs.Page;
		}],
		execute: function () {
			_typeof = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) {
				return typeof obj;
			} : function (obj) {
				return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj;
			};

			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('EntityList', EntityList = function (_Page) {
				_inherits(EntityList, _Page);

				function EntityList() {
					_classCallCheck(this, EntityList);

					return _possibleConstructorReturn(this, (EntityList.__proto__ || Object.getPrototypeOf(EntityList)).apply(this, arguments));
				}

				_createClass(EntityList, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-entity-list';
						this.properties = Polymer.Base.extend({
							rows: {
								type: Array,
								notify: true,
								value: function value() {
									return [];
								},
								observer: '_rowsChanged'
							},

							hasRows: {
								type: Number,
								computed: 'getHasRows(rows)'
							},

							entity: {
								type: Object,
								value: function value() {
									return {};
								}
							},

							entityType: String,

							layout: {
								type: Object,
								value: function value() {
									return {};
								}
							}
						}, Page.properties);
					}
				}, {
					key: '_rowsChanged',
					value: function _rowsChanged() {
						var op = this.rows && this.rows.length ? 'remove' : 'add';
						this.$.new.classList[op]('end');
					}
				}, {
					key: 'columnLabel',
					value: function columnLabel(col, e) {
						return this.fields[col.field].title;
					}
				}, {
					key: 'getHasRows',
					value: function getHasRows(rows) {
						return rows ? rows.length > 0 : false;
					}
				}, {
					key: 'ready',
					value: function ready() {
						this.model = this.ctx.pathParams.type;
						this.modelClass = this.$.db[this.model];
						this.fields = this.modelClass.schema.properties;

						this.layout = this.$.db.objectLayouts[this.model] ? this.$.db.objectLayouts[this.model].list['all'] : {};

						this.$.db.get();
					}
				}, {
					key: 'checkAll',
					value: function checkAll(e, detail, sender) {
						var boxes = Polymer.dom(this.$.list).querySelectorAll('paper-checkbox'),
						    len = boxes ? boxes.length : 0;
						for (var i = 0; i < len; i++) {
							boxes[i].checked = e.currentTarget.checked;
						}
					}
				}, {
					key: 'linkUrl',
					value: function linkUrl(col, row) {
						var value = row && col ? row[col.field] : null,
						    obj = value && value.id ? value : row,
						    link = obj && obj.type && obj.id ? '#/entities/' + obj.constructor.schema.id + '/detail?id=' + obj.id : '';

						return link;
					}
				}, {
					key: 'getCell',
					value: function getCell(col, row) {
						var h = row && col ? row[col.field] : null;
						return this._format(h, col.field);
					}
				}, {
					key: '_format',
					value: function _format(value, field) {
						var ret = value,
						    type = field && this.fields[field] ? this.fields[field].type : null;

						switch (type) {
							case 'boolean':
								ret = value ? this.i18n.l('Yes') : '';

								break;

							case 'date':
							case 'datetime':
								ret = this.i18n.format(value, { date: true });
								break;
							case 'reference':
								if ((typeof value === 'undefined' ? 'undefined' : _typeof(value)) === 'object' && value) {
									if (value.type === 'user') ret = value.Lastname + ', ' + value.Firstname;else ret = value.Name;
								}
						}
						return ret;
					}
				}, {
					key: 'goNew',
					value: function goNew(e, detail, sender) {
						this.nav('/entities/' + this.model + '/new');
					}
				}, {
					key: 'delete',
					value: function _delete(e, detail, sender) {

						var sel = Polymer.dom(this.$.list).querySelectorAll('paper-checkbox'),
						    len = sel ? sel.length : 0,
						    toDel = [],
						    toDelIdx = {};

						for (var i = 0; i < len; i++) {
							if (sel[i].checked) toDel.push(this.rows[i]);
						}

						if (toDel.length) return this.$.db.remove(toDel);else return Promise.resolve();
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.Page];
					}
				}]);

				return EntityList;
			}(Page));

			_export('EntityList', EntityList);

			Polymer(EntityList);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkVudGl0eUxpc3QuanMiXSwibmFtZXMiOlsiUGFnZSIsIkVudGl0eUxpc3QiLCJpcyIsInByb3BlcnRpZXMiLCJQb2x5bWVyIiwiQmFzZSIsImV4dGVuZCIsInJvd3MiLCJ0eXBlIiwiQXJyYXkiLCJub3RpZnkiLCJ2YWx1ZSIsIm9ic2VydmVyIiwiaGFzUm93cyIsIk51bWJlciIsImNvbXB1dGVkIiwiZW50aXR5IiwiT2JqZWN0IiwiZW50aXR5VHlwZSIsIlN0cmluZyIsImxheW91dCIsIm9wIiwibGVuZ3RoIiwiJCIsIm5ldyIsImNsYXNzTGlzdCIsImNvbCIsImUiLCJmaWVsZHMiLCJmaWVsZCIsInRpdGxlIiwibW9kZWwiLCJjdHgiLCJwYXRoUGFyYW1zIiwibW9kZWxDbGFzcyIsImRiIiwic2NoZW1hIiwib2JqZWN0TGF5b3V0cyIsImxpc3QiLCJnZXQiLCJkZXRhaWwiLCJzZW5kZXIiLCJib3hlcyIsImRvbSIsInF1ZXJ5U2VsZWN0b3JBbGwiLCJsZW4iLCJpIiwiY2hlY2tlZCIsImN1cnJlbnRUYXJnZXQiLCJyb3ciLCJvYmoiLCJpZCIsImxpbmsiLCJjb25zdHJ1Y3RvciIsImgiLCJfZm9ybWF0IiwicmV0IiwiaTE4biIsImwiLCJmb3JtYXQiLCJkYXRlIiwiTGFzdG5hbWUiLCJGaXJzdG5hbWUiLCJOYW1lIiwibmF2Iiwic2VsIiwidG9EZWwiLCJ0b0RlbElkeCIsInB1c2giLCJyZW1vdmUiLCJQcm9taXNlIiwicmVzb2x2ZSIsInNiIiwiY29tbW9uIiwiY29yZSJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFRQSxPLGVBQUFBLEk7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozt5QkFFS0MsVTs7Ozs7Ozs7Ozs7c0NBTUs7QUFDaEIsV0FBS0MsRUFBTCxHQUFVLGdCQUFWO0FBQ0EsV0FBS0MsVUFBTCxHQUFrQkMsUUFBUUMsSUFBUixDQUFhQyxNQUFiLENBQXFCO0FBSXRDQyxhQUFNO0FBQ0xD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LGdCQUF6QixDQUEyQyxnQkFBM0MsQ0FBVjtBQUFBLFVBQ0FDLE1BQU1vQixNQUFNQSxJQUFJM0MsTUFBVixHQUFtQixDQUR6QjtBQUFBLFVBRUE0QyxRQUFRLEVBRlI7QUFBQSxVQUdBQyxXQUFXLEVBSFg7O0FBS0EsV0FBSyxJQUFJckIsSUFBRSxDQUFYLEVBQWNBLElBQUlELEdBQWxCLEVBQXVCQyxHQUF2QixFQUE2QjtBQUM1QixXQUFJbUIsSUFBSW5CLENBQUosRUFBT0MsT0FBWCxFQUNBbUIsTUFBTUUsSUFBTixDQUFZLEtBQUs3RCxJQUFMLENBQVV1QyxDQUFWLENBQVo7QUFDQTs7QUFFRCxVQUFJb0IsTUFBTTVDLE1BQVYsRUFDQSxPQUFPLEtBQUtDLENBQUwsQ0FBT1ksRUFBUCxDQUFVa0MsTUFBVixDQUFrQkgsS0FBbEIsQ0FBUCxDQURBLEtBR0EsT0FBT0ksUUFBUUMsT0FBUixFQUFQO0FBQ0E7Ozt5QkF2SWU7QUFDZixhQUFPLENBQUNDLEdBQUdDLE1BQUgsQ0FBVUMsSUFBVixDQUFlMUUsSUFBaEIsQ0FBUDtBQUNBOzs7O0tBSjhCQSxJOzs7O0FBNEloQ0ksV0FBU0gsVUFBVCIsImZpbGUiOiJFbnRpdHlMaXN0LmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtQYWdlfSBmcm9tICcuLi8uLi9jb3JlL1BhZ2UuanMnO1xuXG5leHBvcnQgY2xhc3MgRW50aXR5TGlzdCBleHRlbmRzIFBhZ2Uge1xuXG5cdGdldCBiZWhhdmlvcnMoKSB7XG5cdFx0cmV0dXJuIFtzYi5jb21tb24uY29yZS5QYWdlXTtcblx0fVxuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItZW50aXR5LWxpc3QnO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IFBvbHltZXIuQmFzZS5leHRlbmQoIHtcblx0XHRcdC8qKlxuXHRcdFx0KiBUaGUgcm93cyBvZiBkYXRhL3JlY29yZHMgc2hvd24gaW4gdGhlIGxpc3Rcblx0XHRcdCovXG5cdFx0XHRyb3dzOiB7XG5cdFx0XHRcdHR5cGU6IEFycmF5LFxuXHRcdFx0XHRub3RpZnk6IHRydWUsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIFtdOyB9LFxuXHRcdFx0XHRvYnNlcnZlcjogJ19yb3dzQ2hhbmdlZCdcblx0XHRcdH0sXG5cdFx0XHQvKipcblx0XHRcdCogVHJ1ZSBpZiB0aGUgY29tcG9uZW50IGhhcyByb3dzIHRvIHJlbmRlclxuXHRcdFx0Ki9cblx0XHRcdGhhc1Jvd3M6IHtcblx0XHRcdFx0dHlwZTogTnVtYmVyLFxuXHRcdFx0XHRjb21wdXRlZDogJ2dldEhhc1Jvd3Mocm93cyknXG5cdFx0XHR9LFxuXHRcdFx0LyoqXG5cdFx0XHQqIFRoZSBPYmplY3QgbWV0YWRhdGEgZm9yIHRoZSBnaXZlbiBgZW50aXR5VHlwZWBcblx0XHRcdCovXG5cdFx0XHRlbnRpdHk6IHtcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7IHJldHVybiB7fTsgfVxuXHRcdFx0fSxcblx0XHRcdC8qKlxuXHRcdFx0KiBUaGUgaW50ZXJuYWwgbmFtZS9jb2RlIG9mIHRoZSBFbnRpdHkvT2JqZWN0IHRvIHNob3dcblx0XHRcdCovXG5cdFx0XHRlbnRpdHlUeXBlOiBTdHJpbmcsXG5cdFx0XHQvKipcblx0XHRcdCogVGhlIExheW91dCBtZXRhZGF0YSB1c2VkIHRvIHJlbmRlciB0aGUgdmlldy9wYWdlLlxuXHRcdFx0Ki9cblx0XHRcdGxheW91dDoge1xuXHRcdFx0XHR0eXBlOiBPYmplY3QsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIHt9OyB9XG5cdFx0XHR9XG5cdFx0fSwgUGFnZS5wcm9wZXJ0aWVzICk7XG5cdH1cblxuXHRfcm93c0NoYW5nZWQoKSB7XG5cdFx0Ly8gbXVzdCBtYW51YWxseSBhZGQvcmVtb3ZlICdlbmQnIGNsYXNzIHRvIE5ldyBoZWFkZXIgYnV0dG9uIGFzIERlbGV0ZSBidXR0b24gaXMgZHluYW1pY2FsbHkgaGlkZGVuXG5cdFx0bGV0IG9wID0gdGhpcy5yb3dzICYmIHRoaXMucm93cy5sZW5ndGggPyAncmVtb3ZlJyA6ICdhZGQnO1xuXHRcdHRoaXMuJC5uZXcuY2xhc3NMaXN0W29wXSggJ2VuZCcgKTtcblx0fVxuXG5cdGNvbHVtbkxhYmVsKCBjb2wsZSApIHtcblx0XHRyZXR1cm4gdGhpcy5maWVsZHNbY29sLmZpZWxkXS50aXRsZTtcblx0fVxuXG5cdGdldEhhc1Jvd3MoIHJvd3MgKSB7XG5cdFx0cmV0dXJuIHJvd3MgPyByb3dzLmxlbmd0aCA+IDAgOiBmYWxzZTtcblx0fVxuXG5cdHJlYWR5KCkge1xuXHRcdHRoaXMubW9kZWwgPSB0aGlzLmN0eC5wYXRoUGFyYW1zLnR5cGU7XG5cdFx0dGhpcy5tb2RlbENsYXNzID0gdGhpcy4kLmRiWyB0aGlzLm1vZGVsIF07XG5cdFx0dGhpcy5maWVsZHMgPSB0aGlzLm1vZGVsQ2xhc3Muc2NoZW1hLnByb3BlcnRpZXM7XG5cdFx0Ly8gZGVmYXVsdCB0byBhbGxcblx0XHR0aGlzLmxheW91dCA9IHRoaXMuJC5kYi5vYmplY3RMYXlvdXRzWyB0aGlzLm1vZGVsIF0gPyB0aGlzLiQuZGIub2JqZWN0TGF5b3V0c1sgdGhpcy5tb2RlbCBdLmxpc3RbJ2FsbCddIDoge307XG5cblx0XHR0aGlzLiQuZGIuZ2V0KCk7XG5cdFx0Ly8gcmVtYXBFbnRpdHkoIHRoaXMuZW50aXR5ICk7IC8vIGxvY2FsIGRldiBmdW5jdGlvblxuXHR9XG5cblx0Y2hlY2tBbGwoIGUsIGRldGFpbCwgc2VuZGVyICkge1xuXHRcdHZhciBib3hlcyA9IFBvbHltZXIuZG9tKHRoaXMuJC5saXN0KS5xdWVyeVNlbGVjdG9yQWxsKCAncGFwZXItY2hlY2tib3gnICksXG5cdFx0bGVuID0gYm94ZXMgPyBib3hlcy5sZW5ndGg6IDA7XG5cdFx0Zm9yKCB2YXIgaT0wOyBpIDwgbGVuOyBpKysgKVxuXHRcdGJveGVzW2ldLmNoZWNrZWQgPSBlLmN1cnJlbnRUYXJnZXQuY2hlY2tlZDtcblx0fVxuXG5cdGxpbmtVcmwoIGNvbCwgcm93ICkge1xuXHRcdGxldCB2YWx1ZSA9IHJvdyAmJiBjb2wgPyByb3dbY29sLmZpZWxkXSA6IG51bGwsXG5cdFx0b2JqID0gdmFsdWUgJiYgdmFsdWUuaWQgPyB2YWx1ZSA6IHJvdyxcblx0XHRsaW5rID0gb2JqICYmIG9iai50eXBlICYmIG9iai5pZCA/ICcjL2VudGl0aWVzLycgKyBvYmouY29uc3RydWN0b3Iuc2NoZW1hLmlkICsgJy9kZXRhaWw/aWQ9JyArIG9iai5pZCA6ICcnO1xuXG5cdFx0cmV0dXJuIGxpbms7XG5cdH1cblxuXHRnZXRDZWxsKCBjb2wsIHJvdyApIHtcblx0XHRsZXQgaCA9IHJvdyAmJiBjb2wgPyByb3dbY29sLmZpZWxkXSA6IG51bGw7XG5cdFx0cmV0dXJuIHRoaXMuX2Zvcm1hdCggaCwgY29sLmZpZWxkICk7XG5cdH1cblxuXHRfZm9ybWF0KCB2YWx1ZSwgZmllbGQgKSB7XG5cdFx0bGV0IHJldCA9IHZhbHVlLFxuXHRcdHR5cGUgPSBmaWVsZCAmJiB0aGlzLmZpZWxkc1tmaWVsZF0gPyB0aGlzLmZpZWxkc1tmaWVsZF0udHlwZSA6IG51bGw7XG5cblx0XHRzd2l0Y2goIHR5cGUgKSB7XG5cdFx0XHRjYXNlICdib29sZWFuJzpcblx0XHRcdHJldCA9IHZhbHVlID8gdGhpcy5pMThuLmwoICdZZXMnICkgOiAnJztcblx0XHRcdC8vIHJldCA9IHZhbHVlID8gJzxwYXBlci1jaGVja2JveD48L3BhcGVyLWNoZWNrYm94PicgOiAnJztcblx0XHRcdC8vIHJldCA9IHZhbHVlID8gJzxhIGhyZWY9XCIjXCI+Rm9vYmFyPC9hPicgOiAnJztcblx0XHRcdGJyZWFrO1xuXG5cdFx0XHRjYXNlICdkYXRlJzpcblx0XHRcdGNhc2UgJ2RhdGV0aW1lJzpcblx0XHRcdHJldCA9IHRoaXMuaTE4bi5mb3JtYXQoIHZhbHVlLCB7IGRhdGU6IHRydWUgfSApO1xuXHRcdFx0YnJlYWs7XG5cdFx0XHRjYXNlICdyZWZlcmVuY2UnOlxuXHRcdFx0aWYoIHR5cGVvZiB2YWx1ZSA9PT0gJ29iamVjdCcgJiYgdmFsdWUgKSB7XG5cdFx0XHRcdGlmKCB2YWx1ZS50eXBlID09PSAndXNlcicgKVxuXHRcdFx0XHRyZXQgPSB2YWx1ZS5MYXN0bmFtZSArICcsICcgKyB2YWx1ZS5GaXJzdG5hbWUgLy8gdG9kbzogYWx3YXlzIHRoaXMgZm9ybWF0P1xuXHRcdFx0XHRlbHNlXG5cdFx0XHRcdHJldCA9IHZhbHVlLk5hbWU7ICAvLyB0b2RvOiB1c2Ugb3RoZXIgZmllbGQ/XG5cdFx0XHR9XG5cdFx0fVxuXHRcdHJldHVybiByZXQ7XG5cdH1cblxuXHRnb05ldyggZSwgZGV0YWlsLCBzZW5kZXIgKSB7XG5cdFx0dGhpcy5uYXYoICcvZW50aXRpZXMvJyArIHRoaXMubW9kZWwgKyAnL25ldycgKTtcblx0fVxuXG5cdGRlbGV0ZSggZSwgZGV0YWlsLCBzZW5kZXIgKSB7XG5cblx0XHRsZXQgc2VsID0gUG9seW1lci5kb20odGhpcy4kLmxpc3QpLnF1ZXJ5U2VsZWN0b3JBbGwoICdwYXBlci1jaGVja2JveCcgKSxcblx0XHRsZW4gPSBzZWwgPyBzZWwubGVuZ3RoIDogMCxcblx0XHR0b0RlbCA9IFtdLFxuXHRcdHRvRGVsSWR4ID0ge307IC8vIHJlbWVtYmVyIHRoZSBpbmRleGVzIHRvIGRlbGV0ZVxuXG5cdFx0Zm9yKCB2YXIgaT0wOyBpIDwgbGVuOyBpKysgKSB7XG5cdFx0XHRpZiggc2VsW2ldLmNoZWNrZWQgKVxuXHRcdFx0dG9EZWwucHVzaCggdGhpcy5yb3dzW2ldICk7XG5cdFx0fVxuXG5cdFx0aWYoIHRvRGVsLmxlbmd0aCApXG5cdFx0cmV0dXJuIHRoaXMuJC5kYi5yZW1vdmUoIHRvRGVsICk7XG5cdFx0ZWxzZVxuXHRcdHJldHVybiBQcm9taXNlLnJlc29sdmUoKTtcblx0fVxufVxuXG5Qb2x5bWVyKCBFbnRpdHlMaXN0ICk7XG4iXX0=
'use strict';

System.register('common/forms/sb-datepicker/Datepicker.js', ['common/core/AppContext.js'], function (_export, _context) {
	var AppContext, _createClass, Datepicker;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_commonCoreAppContextJs) {
			AppContext = _commonCoreAppContextJs.AppContext;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('Datepicker', Datepicker = function (_AppContext) {
				_inherits(Datepicker, _AppContext);

				function Datepicker() {
					_classCallCheck(this, Datepicker);

					return _possibleConstructorReturn(this, (Datepicker.__proto__ || Object.getPrototypeOf(Datepicker)).apply(this, arguments));
				}

				_createClass(Datepicker, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-datepicker';

						this.properties = Polymer.Base.extend({
							selectedDate: {
								type: Date,
								value: function value() {
									return new Date();
								},
								observer: 'selectedDateChanged'
							},
							isBlank: {
								type: Boolean,
								value: false,
								observer: 'clearDate'
							},
							range: {
								type: Number,
								value: 30
							}
						}, AppContext.properties);
					}
				}, {
					key: 'ready',
					value: function ready() {
						this.isActive = false;

						this.weeks = [];
						this.weekDays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
						this.months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

						this.year = this.date.getFullYear();
						this.month = this.date.getMonth();
						this.monthName = this.months[this.month].toUpperCase();
						this.day = this.date.getDate();

						this.years = [];
						var start = this.year - this.range;
						var end = this.year + this.range + 1;
						for (var i = start; i < end; i++) {
							this.push('years', i);
						}

						this.invalidInput = false;
						this.parseDateTimePattern();

						setTimeout(function (e) {
							this.yearSelection = this.$.years;
							if (this.yearSelection.selectedOptions && this.yearSelection.selectedOptions.length > 0) {
								this.yearSelection.selectedOptions[0].selected = '';
								this.yearSelection.options[this.range].selected = 'selected';
							}
						}.bind(this), 1);
					}
				}, {
					key: 'getDate',
					value: function getDate(date) {
						return date.getDate();
					}
				}, {
					key: 'clearDate',
					value: function clearDate() {
						if (this.isBlank) {
							this.$.selectedDate = '';
							this.dateFormatted = '';
						}
					}
				}, {
					key: 'getClass',
					value: function getClass(day) {
						var className = '';
						if (day.getMonth() !== this.month) {
							className += 'notCurrent';
						} else {
							if (day.getFullYear() === this.date.getFullYear() && day.getMonth() === this.date.getMonth() && day.getDate() === this.date.getDate()) {
								className += 'selected';
							}
							if (day.getFullYear() === this.year && day.getMonth() === this.month && day.getDate() === this.date.getDate()) {
								className += ' current';
							}
						}
						return className;
					}
				}, {
					key: 'selectedDateChanged',
					value: function selectedDateChanged() {
						var dateObj = null;

						if (this.selectedDate && typeof this.selectedDate === 'string') {
							var pos = this.selectedDate.indexOf('T');
							if (pos < 0) {
								var ymd = this.selectedDate.split('-');
								if (ymd && ymd.length == 3) {
									dateObj = new Date(ymd[0], ymd[1] - 1, ymd[2]);
								}
							}
						}

						if (!dateObj) {
							dateObj = new Date(this.selectedDate);
						}

						this.date = dateObj;
						this.dateFormatted = this.date.toLocaleDateString(this.user.locale);
						this.updateVariables();
						this.fire('selected-date-changed', { value: this.selectedDate });
					}
				}, {
					key: 'showCalendar',
					value: function showCalendar() {
						this.isActive = true;
						this.updateCalendar();
						this.$.open.focus();
					}
				}, {
					key: 'hideCalendar',
					value: function hideCalendar() {
						this.isActive = false;
						this.$.dateInput.blur();
					}
				}, {
					key: 'findToday',
					value: function findToday() {
						this.date = new Date();
						this.updateYearSelection(this.year, this.date.getFullYear());
						this.updateVariables();
						this.updateCalendar();
						this.$.open.focus();
					}
				}, {
					key: 'changeYear',
					value: function changeYear() {
						var selectedYear = parseInt(this.yearSelection.selectedOptions[0].text);
						this.date = new Date(selectedYear, this.month, this.day);
						this.updateVariables();
						this.updateCalendar();
						this.$.open.focus();
					}
				}, {
					key: 'decreaseMonth',
					value: function decreaseMonth() {
						this.date = new Date(this.year, this.month - 1, this.day);
						this.updateYearSelection(this.year, this.date.getFullYear());
						this.updateVariables();
						this.updateCalendar();
						this.$.open.focus();
					}
				}, {
					key: 'increaseMonth',
					value: function increaseMonth() {
						this.date = new Date(this.year, this.month + 1, this.day);
						this.updateYearSelection(this.year, this.date.getFullYear());
						this.updateVariables();
						this.updateCalendar();
						this.$.open.focus();
					}
				}, {
					key: 'selectDay',
					value: function selectDay(e) {
						this.selectedDate = e.model ? e.model.day : this.date;
						this.hideCalendar();
						this.$.open.blur();
					}
				}, {
					key: 'updateYearSelection',
					value: function updateYearSelection(oldValue, newValue) {
						if (oldValue !== newValue) {
							var selectedYearIdx = this.yearSelection.selectedIndex;
							var index = selectedYearIdx + (newValue - oldValue);
							this.yearSelection.options[selectedYearIdx].selected = '';
							this.yearSelection.options[index].selected = 'selected';
						}
					}
				}, {
					key: 'updateVariables',
					value: function updateVariables() {
						this.year = this.date.getFullYear();
						this.month = this.date.getMonth();
						this.monthName = this.months ? this.months[this.month].toUpperCase() : '';
						this.day = this.date.getDate();
					}
				}, {
					key: 'updateDate',
					value: function updateDate(increment) {
						this.date.setDate(this.date.getDate() + increment);
						this.updateYearSelection(this.year, this.date.getFullYear());
						this.updateVariables();
						this.updateCalendar();
					}
				}, {
					key: 'updateCalendar',
					value: function updateCalendar() {
						this.weeks = [];
						var firstDay = new Date(this.date.getFullYear(), this.month, 1);
						var index = firstDay.getDay();
						var numOfDays = 6 * 7;
						var week = [];
						var dayIdx = 0;
						for (var i = 0; i < numOfDays; i++) {
							var day = new Date(firstDay);
							day.setDate(firstDay.getDate() + (i - index));
							week[dayIdx] = day;
							dayIdx++;

							if ((i + 1) % 7 === 0 || i + 1 === numOfDays) {
								this.push('weeks', week);
								week = [];
								dayIdx = 0;
							}
						}
					}
				}, {
					key: 'parseDateTimePattern',
					value: function parseDateTimePattern() {
						var dateTimeFormat = window && window.UserContext && window.UserContext.dateFormat ? window.UserContext.dateFormat : null;
						if (!dateTimeFormat) {
							var dtf = Intl.DateTimeFormat(this.user.locale);
							if (dtf && dtf.resolved) dateTimeFormat = dtf.resolved.pattern;else dateTimeFormat = 'M/d/y';
						}

						var dateTimeFormatSimple = dateTimeFormat.replace(new RegExp('[dD]+'), 'D').replace(new RegExp('[mM]+'), 'M').replace(new RegExp('[yY]+'), 'Y');

						this.separator = dateTimeFormatSimple.match(new RegExp('[\/.-]'))[0];

						this.dateTimeElements = dateTimeFormatSimple.split(this.separator);
						this.dateIdx = this.dateTimeElements.indexOf('D');
						this.monthIdx = this.dateTimeElements.indexOf('M');
						this.yearIdx = this.dateTimeElements.indexOf('Y');
					}
				}, {
					key: 'validateInput',
					value: function validateInput() {
						this.invalidInput = true;
						var dateString = this.$.dateInput.value;
						if (dateString !== this.date.toLocaleDateString(this.user.locale)) {
							var elements = dateString.split(this.separator),
							    day = elements[this.dateIdx],
							    month = elements[this.monthIdx],
							    year = elements[this.yearIdx];

							if (year && year.length == 4 && month && month.length > 0 && month.length <= 2 && day && day.length > 0 && day.length <= 2) {
								day = parseInt(day);
								month = parseInt(month);
								year = parseInt(year);

								if (elements.length && !isNaN(year) && !isNaN(month) && !isNaN(day)) {
									if (year >= this.year - this.range && year <= this.year + this.range) {
										if (month >= 1 && month <= 12) {
											var monthEnd = 31;
											if (month == 2) {
												monthEnd = 28;
												if (year % 4 == 0) {
													if (year % 100 != 0) {
														monthEnd = 29;
													} else {
														if (year % 400 == 0) {
															monthEnd = 29;
														}
													}
												}
											} else {
												if (month == 4 || month == 6 || month == 9 || month == 11) {
													monthEnd = 30;
												}
											}

											if (day >= 1 && day <= monthEnd) {
												this.invalidInput = false;
											}
										}
									}
								}

								if (!this.invalidInput) {
									this.updateYearSelection(this.year, year);
									this.selectedDate = new Date(year, month - 1, day);
									this.updateVariables();
								}
							}
						} else {
							this.invalidInput = false;
						}
					}
				}, {
					key: 'navigate',
					value: function navigate(e) {
						e.preventDefault();

						switch (e.keyCode) {
							case 13:
								this.selectDay(e);
								break;
							case 27:
								this.hideCalendar();
								break;
							case 37:
								this.updateDate(-1);
								break;
							case 38:
								this.updateDate(-7);
								break;
							case 39:
								this.updateDate(+1);
								break;
							case 40:
								this.updateDate(+7);
								break;
							default:
								break;
						}
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.AppContext];
					}
				}]);

				return Datepicker;
			}(AppContext));

			_export('Datepicker', Datepicker);

			Polymer(Datepicker);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRhdGVwaWNrZXIuanMiXSwibmFtZXMiOlsiQXBwQ29udGV4dCIsIkRhdGVwaWNrZXIiLCJpcyIsInByb3BlcnRpZXMiLCJQb2x5bWVyIiwiQmFzZSIsImV4dGVuZCIsInNlbGVjdGVkRGF0ZSIsInR5cGUiLCJEYXRlIiwidmFsdWUiLCJvYnNlcnZlciIsImlzQmxhbmsiLCJCb29sZWFuIiwicmFuZ2UiLCJOdW1iZXIiLCJpc0FjdGl2ZSIsIndlZWtzIiwid2Vla0RheXMiLCJtb250aHMiLCJ5ZWFyIiwiZGF0ZSIsImdldEZ1bGxZZWFyIiwibW9udGgiLCJnZXRNb250aCIsIm1vbnRoTmFtZSIsInRvVXBwZXJDYXNlIiwiZGF5IiwiZ2V0RGF0ZSIsInllYXJzIiwic3RhcnQiLCJlbmQiLCJpIiwicHVzaCIsImludmFsaWRJbnB1dCIsInBhcnNlRGF0ZVRpbWVQYXR0ZXJuIiwic2V0VGltZW91dCIsImUiLCJ5ZWFyU2VsZWN0aW9uIiwiJCIsInNlbGVjdGVkT3B0aW9ucyIsImxlbmd0aCIsInNlbGVjdGVkIiwib3B0aW9ucyIsImJpbmQiLCJkYXRlRm9ybWF0dGVkIiwiY2xhc3NOYW1lIiwiZGF0ZU9iaiIsInBvcyIsImluZGV4T2YiLCJ5bWQiLCJzcGxpdCIsInRvTG9jYWxlRGF0ZVN0cmluZyIsInVzZXIiLCJsb2NhbGUiLCJ1cGRhdGVWYXJpYWJsZXMiLCJmaXJlIiwidXBkYXRlQ2FsZW5kYXIiLCJvcGVuIiwiZm9jdXMiLCJkYXRlSW5wdXQiLCJibHVyIiwidXBkYXRlWWVhclNlbGVjdGlvbiIsInNlbGVjdGVkWWVhciIsInBhcnNlSW50IiwidGV4dCIsIm1vZGVsIiwiaGlkZUNhbGVuZGFyIiwib2xkVmFsdWUiLCJuZXdWYWx1ZSIsInNlbGVjdGVkWWVhcklkeCIsInNlbGVjdGVkSW5kZXgiLCJpbmRleCIsImluY3JlbWVudCIsInNldERhdGUiLCJmaXJzdERheSIsImdldERheSIsIm51bU9mRGF5cyIsIndlZWsiLCJkYXlJZHgiLCJkYXRlVGltZUZvcm1hdCIsIndpbmRvdyIsIlVzZXJDb250ZXh0IiwiZGF0ZUZvcm1hdCIsImR0ZiIsIkludGwiLCJEYXRlVGltZUZvcm1hdCIsInJlc29sdmVkIiwicGF0dGVybiIsImRhdGVUaW1lRm9ybWF0U2ltcGxlIiwicmVwbGFjZSIsIlJlZ0V4cCIsInNlcGFyYXRvciIsIm1hdGNoIiwiZGF0ZVRpbWVFbGVtZW50cyIsImRhdGVJZHgiLCJtb250aElkeCIsInllYXJJZHgiLCJkYXRlU3RyaW5nIiwiZWxlbWVudHMiLCJpc05hTiIsIm1vbnRoRW5kIiwicHJldmVudERlZmF1bHQiLCJrZXlDb2RlIiwic2VsZWN0RGF5IiwidXBkYXRlRGF0ZSIsInNiIiwiY29tbW9uIiwiY29yZSJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFRQSxhLDJCQUFBQSxVOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7eUJBRUtDLFU7Ozs7Ozs7Ozs7O3NDQU1LO0FBQ2hCLFdBQUtDLEVBQUwsR0FBVSxlQUFWOztBQUVBLFdBQUtDLFVBQUwsR0FBa0JDLFFBQVFDLElBQVIsQ0FBYUMsTUFBYixDQUFvQjtBQUNyQ0MscUJBQWM7QUFDYkMsY0FBTUMsSUFETztBQUViQyxlQUFPLGlCQUFXO0FBQUUsZ0JBQU8sSUFBSUQsSUFBSixFQUFQO0FBQW9CLFNBRjNCO0FBR2JFLGtCQUFVO0FBSEcsUUFEdUI7QUFNckNDLGdCQUFTO0FBQ1JKLGNBQU1LLE9BREU7QUFFUkgsZUFBTyxLQUZDO0FBR1JDLGtCQUFVO0FBSEYsUUFONEI7QUFXckNHLGNBQU87QUFDTk4sY0FBTU8sTUFEQTtBQUVOTCxlQUFPO0FBRkQ7QUFYOEIsT0FBcEIsRUFlZlYsV0FBV0csVUFmSSxDQUFsQjtBQWdCQTs7OzZCQUVPO0FBQ1AsV0FBS2EsUUFBTCxHQUFnQixLQUFoQjs7QUFFQSxXQUFLQyxLQUFMLEdBQWEsRUFBYjtBQUNBLFdBQUtDLFFBQUwsR0FBZ0IsQ0FBQyxLQUFELEVBQVEsS0FBUixFQUFlLEtBQWYsRUFBc0IsS0FB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Q29udGV4dH0gZnJvbSAnY29tbW9uL2NvcmUvQXBwQ29udGV4dC5qcyc7XG5cbmV4cG9ydCBjbGFzcyBEYXRlcGlja2VyIGV4dGVuZHMgQXBwQ29udGV4dCB7XG5cblx0Z2V0IGJlaGF2aW9ycygpIHtcblx0XHRyZXR1cm4gW3NiLmNvbW1vbi5jb3JlLkFwcENvbnRleHRdO1xuXHR9XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1kYXRlcGlja2VyJztcblxuXHRcdHRoaXMucHJvcGVydGllcyA9IFBvbHltZXIuQmFzZS5leHRlbmQoe1xuXHRcdFx0c2VsZWN0ZWREYXRlOiB7XG5cdFx0XHRcdHR5cGU6IERhdGUsXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIG5ldyBEYXRlKCk7IH0sXG5cdFx0XHRcdG9ic2VydmVyOiAnc2VsZWN0ZWREYXRlQ2hhbmdlZCdcblx0XHRcdH0sXG5cdFx0XHRpc0JsYW5rOiB7XG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmYWxzZSxcblx0XHRcdFx0b2JzZXJ2ZXI6ICdjbGVhckRhdGUnXG5cdFx0XHR9LFxuXHRcdFx0cmFuZ2U6IHtcblx0XHRcdFx0dHlwZTogTnVtYmVyLFxuXHRcdFx0XHR2YWx1ZTogMzBcblx0XHRcdH1cblx0XHR9LCBBcHBDb250ZXh0LnByb3BlcnRpZXMgKTtcblx0fVxuXG5cdHJlYWR5KCkge1xuXHRcdHRoaXMuaXNBY3RpdmUgPSBmYWxzZTtcblxuXHRcdHRoaXMud2Vla3MgPSBbXTtcblx0XHR0aGlzLndlZWtEYXlzID0gWydTdW4nLCAnTW9uJywgJ1R1ZScsICdXZWQnLCAnVGh1JywgJ0ZyaScsICdTYXQnXTsgLy8gVE9ETzogVXBkYXRlIGRlcGVuZGluZyBvbiB0aGUgbG9jYWxlXG5cdFx0dGhpcy5tb250aHMgPSBbJ0phbnVhcnknLCAnRmVicnVhcnknLCAnTWFyY2gnLCAnQXByaWwnLCAnTWF5JywgJ0p1bmUnLCAnSnVseScsICdBdWd1c3QnLCAnU2VwdGVtYmVyJywgJ09jdG9iZXInLCAnTm92ZW1iZXInLCAnRGVjZW1iZXInXTsgLy8gVE9ETzogVXBkYXRlIGRlcGVuZGluZyBvbiB0aGUgbG9jYWxlXG5cblx0XHR0aGlzLnllYXIgPSB0aGlzLmRhdGUuZ2V0RnVsbFllYXIoKTtcblx0XHR0aGlzLm1vbnRoID0gdGhpcy5kYXRlLmdldE1vbnRoKCk7XG5cdFx0dGhpcy5tb250aE5hbWUgPSB0aGlzLm1vbnRoc1t0aGlzLm1vbnRoXS50b1VwcGVyQ2FzZSgpO1xuXHRcdHRoaXMuZGF5ID0gdGhpcy5kYXRlLmdldERhdGUoKTtcblxuXHRcdHRoaXMueWVhcnMgPSBbXTtcblx0XHR2YXIgc3RhcnQgPSB0aGlzLnllYXIgLSB0aGlzLnJhbmdlO1xuXHRcdHZhciBlbmQgPSB0aGlzLnllYXIgKyB0aGlzLnJhbmdlICsgMTtcblx0XHRmb3IgKCB2YXIgaSA9IHN0YXJ0OyBpIDwgZW5kOyBpKyspIHtcblx0XHRcdHRoaXMucHVzaCgneWVhcnMnLCBpKTtcblx0XHR9XG5cblx0XHR0aGlzLmludmFsaWRJbnB1dCA9IGZhbHNlO1xuXHRcdHRoaXMucGFyc2VEYXRlVGltZVBhdHRlcm4oKTtcblxuXHRcdC8vIHRha2UgdGhpcyBvdXQgb2YgdGhlIG1haW4gZXZlbnQgbG9vcCB0byBwcmV2ZW50IGEgZG9tIGZsdXNoXG5cdFx0c2V0VGltZW91dChmdW5jdGlvbihlKSB7XG5cdFx0XHR0aGlzLnllYXJTZWxlY3Rpb24gPSB0aGlzLiQueWVhcnM7XG5cdFx0XHRpZiAodGhpcy55ZWFyU2VsZWN0aW9uLnNlbGVjdGVkT3B0aW9ucyAmJiB0aGlzLnllYXJTZWxlY3Rpb24uc2VsZWN0ZWRPcHRpb25zLmxlbmd0aCA+IDApIHsgLy8gSUUgZG9lcyBub3QgYXV0b3NlbGVjdCB0aGUgZmlyc3QgeWVhclxuXHRcdFx0XHR0aGlzLnllYXJTZWxlY3Rpb24uc2VsZWN0ZWRPcHRpb25zWzBdLnNlbGVjdGVkID0gJyc7XG5cdFx0XHRcdHRoaXMueWVhclNlbGVjdGlvbi5vcHRpb25zW3RoaXMucmFuZ2VdLnNlbGVjdGVkID0gJ3NlbGVjdGVkJztcblx0XHRcdH1cblx0XHR9LmJpbmQodGhpcyksIDEpO1xuXHR9XG5cblx0Ly8gbWV0aG9kcyBmb3IgcmVuZGVyaW5nXG5cdGdldERhdGUoZGF0ZSkge1xuXHRcdHJldHVybiBkYXRlLmdldERhdGUoKTtcblx0fVxuXG5cdGNsZWFyRGF0ZSgpIHtcblx0XHRpZiAodGhpcy5pc0JsYW5rKSB7XG5cdFx0XHR0aGlzLiQuc2VsZWN0ZWREYXRlID0gJyc7XG5cdFx0XHR0aGlzLmRhdGVGb3JtYXR0ZWQgPSAnJztcblx0XHR9XG5cdH1cblxuXHRnZXRDbGFzcyhkYXkpIHtcblx0XHR2YXIgY2xhc3NOYW1lID0gJyc7XG5cdFx0aWYgKGRheS5nZXRNb250aCgpICE9PSB0aGlzLm1vbnRoICkge1xuXHRcdFx0Y2xhc3NOYW1lICs9ICdub3RDdXJyZW50Jztcblx0XHR9IGVsc2Uge1xuXHRcdFx0aWYgKCAoZGF5LmdldEZ1bGxZZWFyKCkgPT09IHRoaXMuZGF0ZS5nZXRGdWxsWWVhcigpKSAmJiAoZGF5LmdldE1vbnRoKCkgPT09IHRoaXMuZGF0ZS5nZXRNb250aCgpKSAmJiAoZGF5LmdldERhdGUoKSA9PT0gdGhpcy5kYXRlLmdldERhdGUoKSkgKSB7XG5cdFx0XHRcdGNsYXNzTmFtZSArPSAnc2VsZWN0ZWQnO1xuXHRcdFx0fVxuXHRcdFx0aWYgKCAoZGF5LmdldEZ1bGxZZWFyKCkgPT09IHRoaXMueWVhcikgJiYgKGRheS5nZXRNb250aCgpID09PSB0aGlzLm1vbnRoKSAmJiAoZGF5LmdldERhdGUoKSA9PT0gdGhpcy5kYXRlLmdldERhdGUoKSkgKSB7XG5cdFx0XHRcdGNsYXNzTmFtZSArPSAnIGN1cnJlbnQnO1xuXHRcdFx0fVxuXHRcdH1cblx0XHRyZXR1cm4gY2xhc3NOYW1lO1xuXHR9XG5cblx0Ly8gb2JzZXJ2ZXJzXG5cdHNlbGVjdGVkRGF0ZUNoYW5nZWQoKSB7XG5cdFx0bGV0IGRhdGVPYmogPSBudWxsO1xuXHRcdC8vIGlmIHN0cmluZyBhbmQgaW4gWVlZWS1NTS1ERCBmb3JtYXQgdGhhbiBpbnN0YW50aWF0ZSBleHBsaWNpdGx5XG5cdFx0aWYoIHRoaXMuc2VsZWN0ZWREYXRlICYmIHR5cGVvZiB0aGlzLnNlbGVjdGVkRGF0ZSA9PT0gJ3N0cmluZycgKSB7XG5cdFx0XHRsZXQgcG9zID0gdGhpcy5zZWxlY3RlZERhdGUuaW5kZXhPZiggJ1QnICk7XG5cdFx0XHRpZiggcG9zIDwgMCApIHtcblx0XHRcdFx0bGV0IHltZCA9IHRoaXMuc2VsZWN0ZWREYXRlLnNwbGl0KCAnLScgKTtcblx0XHRcdFx0aWYoIHltZCAmJiB5bWQubGVuZ3RoID09IDMgKXtcblx0XHRcdFx0XHRkYXRlT2JqID0gbmV3IERhdGUoIHltZFswXSwgeW1kWzFdLTEsIHltZFsyXSApO1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0Ly8gZGVmYXVsdFxuXHRcdGlmKCAhZGF0ZU9iaiApIHtcblx0XHRcdGRhdGVPYmogPSBuZXcgRGF0ZSggdGhpcy5zZWxlY3RlZERhdGUgKTtcblx0XHR9XG5cblx0XHR0aGlzLmRhdGUgPSBkYXRlT2JqO1xuXHRcdHRoaXMuZGF0ZUZvcm1hdHRlZCA9IHRoaXMuZGF0ZS50b0xvY2FsZURhdGVTdHJpbmcoIHRoaXMudXNlci5sb2NhbGUgKTtcblx0XHR0aGlzLnVwZGF0ZVZhcmlhYmxlcygpO1xuXHRcdHRoaXMuZmlyZSggJ3NlbGVjdGVkLWRhdGUtY2hhbmdlZCcsIHsgdmFsdWU6IHRoaXMuc2VsZWN0ZWREYXRlIH0gKTtcblx0fVxuXG5cdC8vIGV2ZW50IGhhbmRsZXJzXG5cdHNob3dDYWxlbmRhcigpIHtcblx0XHR0aGlzLmlzQWN0aXZlID0gdHJ1ZTtcblx0XHR0aGlzLnVwZGF0ZUNhbGVuZGFyKCk7XG5cdFx0dGhpcy4kLm9wZW4uZm9jdXMoKTtcblx0fVxuXG5cdGhpZGVDYWxlbmRhcigpIHtcblx0XHR0aGlzLmlzQWN0aXZlID0gZmFsc2U7XG5cdFx0dGhpcy4kLmRhdGVJbnB1dC5ibHVyKCk7XG5cdH1cblxuXHRmaW5kVG9kYXkoKSB7XG5cdFx0dGhpcy5kYXRlID0gbmV3IERhdGUoKTtcblx0XHR0aGlzLnVwZGF0ZVllYXJTZWxlY3Rpb24odGhpcy55ZWFyLCB0aGlzLmRhdGUuZ2V0RnVsbFllYXIoKSk7XG5cdFx0dGhpcy51cGRhdGVWYXJpYWJsZXMoKTtcblx0XHR0aGlzLnVwZGF0ZUNhbGVuZGFyKCk7XG5cdFx0dGhpcy4kLm9wZW4uZm9jdXMoKTtcblx0fVxuXG5cdGNoYW5nZVllYXIoKSB7XG5cdFx0dmFyIHNlbGVjdGVkWWVhciA9IHBhcnNlSW50KHRoaXMueWVhclNlbGVjdGlvbi5zZWxlY3RlZE9wdGlvbnNbMF0udGV4dCk7XG5cdFx0dGhpcy5kYXRlID0gbmV3IERhdGUoc2VsZWN0ZWRZZWFyLCB0aGlzLm1vbnRoLCB0aGlzLmRheSk7XG5cdFx0dGhpcy51cGRhdGVWYXJpYWJsZXMoKTtcblx0XHR0aGlzLnVwZGF0ZUNhbGVuZGFyKCk7XG5cdFx0dGhpcy4kLm9wZW4uZm9jdXMoKTtcblx0fVxuXG5cdGRlY3JlYXNlTW9udGgoKSB7XG5cdFx0dGhpcy5kYXRlID0gbmV3IERhdGUodGhpcy55ZWFyLCB0aGlzLm1vbnRoIC0gMSwgdGhpcy5kYXkpO1xuXHRcdHRoaXMudXBkYXRlWWVhclNlbGVjdGlvbih0aGlzLnllYXIsIHRoaXMuZGF0ZS5nZXRGdWxsWWVhcigpKTtcblx0XHR0aGlzLnVwZGF0ZVZhcmlhYmxlcygpO1xuXHRcdHRoaXMudXBkYXRlQ2FsZW5kYXIoKTtcblx0XHR0aGlzLiQub3Blbi5mb2N1cygpO1xuXHR9XG5cblx0aW5jcmVhc2VNb250aCgpIHtcblx0XHR0aGlzLmRhdGUgPSBuZXcgRGF0ZSh0aGlzLnllYXIsIHRoaXMubW9udGggKyAxLCB0aGlzLmRheSk7XG5cdFx0dGhpcy51cGRhdGVZZWFyU2VsZWN0aW9uKHRoaXMueWVhciwgdGhpcy5kYXRlLmdldEZ1bGxZZWFyKCkpO1xuXHRcdHRoaXMudXBkYXRlVmFyaWFibGVzKCk7XG5cdFx0dGhpcy51cGRhdGVDYWxlbmRhcigpO1xuXHRcdHRoaXMuJC5vcGVuLmZvY3VzKCk7XG5cdH1cblxuXHRzZWxlY3REYXkoZSkge1xuXHRcdHRoaXMuc2VsZWN0ZWREYXRlID0gZS5tb2RlbCA/IGUubW9kZWwuZGF5IDogdGhpcy5kYXRlO1xuXHRcdHRoaXMuaGlkZUNhbGVuZGFyKCk7XG5cdFx0dGhpcy4kLm9wZW4uYmx1cigpO1xuXHR9XG5cblx0Ly8gaGVscGVyIG1ldGhvZHNcblx0dXBkYXRlWWVhclNlbGVjdGlvbihvbGRWYWx1ZSwgbmV3VmFsdWUpIHtcblx0XHRpZiAob2xkVmFsdWUgIT09IG5ld1ZhbHVlKSB7XG5cdFx0XHR2YXIgc2VsZWN0ZWRZZWFySWR4ID0gdGhpcy55ZWFyU2VsZWN0aW9uLnNlbGVjdGVkSW5kZXg7XG5cdFx0XHR2YXIgaW5kZXggPSBzZWxlY3RlZFllYXJJZHggKyAobmV3VmFsdWUgLSBvbGRWYWx1ZSk7XG5cdFx0XHR0aGlzLnllYXJTZWxlY3Rpb24ub3B0aW9uc1tzZWxlY3RlZFllYXJJZHhdLnNlbGVjdGVkID0gJyc7XG5cdFx0XHR0aGlzLnllYXJTZWxlY3Rpb24ub3B0aW9uc1tpbmRleF0uc2VsZWN0ZWQgPSAnc2VsZWN0ZWQnO1xuXHRcdH1cblx0fVxuXG5cdHVwZGF0ZVZhcmlhYmxlcygpIHtcblx0XHR0aGlzLnllYXIgPSB0aGlzLmRhdGUuZ2V0RnVsbFllYXIoKTtcblx0XHR0aGlzLm1vbnRoID0gdGhpcy5kYXRlLmdldE1vbnRoKCk7XG5cdFx0dGhpcy5tb250aE5hbWUgPSB0aGlzLm1vbnRocyA/IHRoaXMubW9udGhzW3RoaXMubW9udGhdLnRvVXBwZXJDYXNlKCk6ICcnO1xuXHRcdHRoaXMuZGF5ID0gdGhpcy5kYXRlLmdldERhdGUoKTtcblx0fVxuXG5cdHVwZGF0ZURhdGUoaW5jcmVtZW50KSB7XG5cdFx0dGhpcy5kYXRlLnNldERhdGUodGhpcy5kYXRlLmdldERhdGUoKSArIGluY3JlbWVudCk7XG5cdFx0dGhpcy51cGRhdGVZZWFyU2VsZWN0aW9uKHRoaXMueWVhciwgdGhpcy5kYXRlLmdldEZ1bGxZZWFyKCkpO1xuXHRcdHRoaXMudXBkYXRlVmFyaWFibGVzKCk7XG5cdFx0dGhpcy51cGRhdGVDYWxlbmRhcigpO1xuXHR9XG5cblx0dXBkYXRlQ2FsZW5kYXIoKSB7XG5cdFx0dGhpcy53ZWVrcyA9IFtdO1xuXHRcdHZhciBmaXJzdERheSA9IG5ldyBEYXRlKHRoaXMuZGF0ZS5nZXRGdWxsWWVhcigpLCB0aGlzLm1vbnRoLCAxKTtcblx0XHR2YXIgaW5kZXggPSBmaXJzdERheS5nZXREYXkoKTtcblx0XHR2YXIgbnVtT2ZEYXlzID0gNiAqIDc7XG5cdFx0dmFyIHdlZWsgPSBbXTtcblx0XHR2YXIgZGF5SWR4ID0gMDtcblx0XHRmb3IgKCB2YXIgaSA9IDA7IGkgPCBudW1PZkRheXM7IGkrKykge1xuXHRcdFx0dmFyIGRheSA9IG5ldyBEYXRlKGZpcnN0RGF5KTtcblx0XHRcdGRheS5zZXREYXRlKGZpcnN0RGF5LmdldERhdGUoKSArIChpIC0gaW5kZXgpKTtcblx0XHRcdHdlZWtbZGF5SWR4XSA9IGRheTtcblx0XHRcdGRheUlkeCsrO1xuXG5cdFx0XHRpZiAoICgoaSsxKSAlIDcpID09PSAwIHx8IGkrMSA9PT0gbnVtT2ZEYXlzKSB7XG5cdFx0XHRcdHRoaXMucHVzaCgnd2Vla3MnLCB3ZWVrKTtcblx0XHRcdFx0d2VlayA9IFtdO1xuXHRcdFx0XHRkYXlJZHggPSAwO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdHBhcnNlRGF0ZVRpbWVQYXR0ZXJuKCkge1xuXHRcdC8vIHVzZXIgU0YgVXNlckNvbnRleHQgaWYgd2UgaGF2ZSBpdFxuXHRcdHZhciBkYXRlVGltZUZvcm1hdCA9IHdpbmRvdyAmJiB3aW5kb3cuVXNlckNvbnRleHQgJiYgd2luZG93LlVzZXJDb250ZXh0LmRhdGVGb3JtYXQgPyB3aW5kb3cuVXNlckNvbnRleHQuZGF0ZUZvcm1hdCA6IG51bGw7XG5cdFx0aWYoICFkYXRlVGltZUZvcm1hdCApIHtcblx0XHRcdHZhciBkdGYgPSBJbnRsLkRhdGVUaW1lRm9ybWF0KCB0aGlzLnVzZXIubG9jYWxlICk7XG5cdFx0XHRpZiggZHRmICYmIGR0Zi5yZXNvbHZlZCApXG5cdFx0XHRcdGRhdGVUaW1lRm9ybWF0ID0gZHRmLnJlc29sdmVkLnBhdHRlcm47XG5cdFx0XHRlbHNlXG5cdFx0XHRcdGRhdGVUaW1lRm9ybWF0ID0gJ00vZC95Jztcblx0XHR9XG5cdFx0Ly8gc2ltcGxpZnkgZGF0ZVRpbWVGb3JtYXQgc3RyaW5nIGZvciByZXBlYXRpbmcgY2hhcmFjdGVyc1xuXHRcdHZhciBkYXRlVGltZUZvcm1hdFNpbXBsZSA9IGRhdGVUaW1lRm9ybWF0LnJlcGxhY2UobmV3IFJlZ0V4cCgnW2REXSsnKSwgJ0QnKS5yZXBsYWNlKG5ldyBSZWdFeHAoJ1ttTV0rJyksICdNJykucmVwbGFjZShuZXcgUmVnRXhwKCdbeVldKycpLCAnWScpO1xuXHRcdC8vIGdldCB0aGUgc2VwYXJhdG9yXG5cdFx0dGhpcy5zZXBhcmF0b3IgPSBkYXRlVGltZUZvcm1hdFNpbXBsZS5tYXRjaChuZXcgUmVnRXhwKCdbXFwvLi1dJykpWzBdO1xuXHRcdC8vIHNwbGl0IGJ5IHNlcGFyYXRvciB0byBnZXQgZGF5LCBtb250aCwgYW5kIHllYXIgaW5kZXhlc1xuXHRcdHRoaXMuZGF0ZVRpbWVFbGVtZW50cyA9IGRhdGVUaW1lRm9ybWF0U2ltcGxlLnNwbGl0KHRoaXMuc2VwYXJhdG9yKTtcblx0XHR0aGlzLmRhdGVJZHggPSB0aGlzLmRhdGVUaW1lRWxlbWVudHMuaW5kZXhPZignRCcpO1xuXHRcdHRoaXMubW9udGhJZHggPSB0aGlzLmRhdGVUaW1lRWxlbWVudHMuaW5kZXhPZignTScpO1xuXHRcdHRoaXMueWVhcklkeCA9IHRoaXMuZGF0ZVRpbWVFbGVtZW50cy5pbmRleE9mKCdZJyk7XG5cdH1cblxuXHR2YWxpZGF0ZUlucHV0KCkge1xuXHRcdHRoaXMuaW52YWxpZElucHV0ID0gdHJ1ZTtcblx0XHR2YXIgZGF0ZVN0cmluZyA9IHRoaXMuJC5kYXRlSW5wdXQudmFsdWU7XG5cdFx0aWYgKGRhdGVTdHJpbmcgIT09IHRoaXMuZGF0ZS50b0xvY2FsZURhdGVTdHJpbmcoIHRoaXMudXNlci5sb2NhbGUgKSkge1xuXHRcdFx0Ly8gcHVsbCBkYXksIG1vbnRoLCBhbmQgeWVhciBmcm9tIHRoZSBkYXRlXG5cdFx0XHR2YXIgZWxlbWVudHMgPSBkYXRlU3RyaW5nLnNwbGl0KHRoaXMuc2VwYXJhdG9yKSxcblx0XHRcdFx0ZGF5ID0gZWxlbWVudHNbdGhpcy5kYXRlSWR4XSxcblx0XHRcdFx0bW9udGggPSBlbGVtZW50c1t0aGlzLm1vbnRoSWR4XSxcblx0XHRcdFx0eWVhciA9IGVsZW1lbnRzW3RoaXMueWVhcklkeF07XG5cblx0XHRcdC8vIGNoZWNrIGRheSwgbW9udGgsIGFuZCB5ZWFyIHN0cmluZ3MgZm9yIHZhbGlkaXR5XG5cdFx0XHRpZiAoKHllYXIgJiYgeWVhci5sZW5ndGggPT0gNCkgJiYgKG1vbnRoICYmIG1vbnRoLmxlbmd0aCA+IDAgJiYgbW9udGgubGVuZ3RoIDw9IDIpICYmIChkYXkgJiYgZGF5Lmxlbmd0aCA+IDAgJiYgZGF5Lmxlbmd0aCA8PSAyKSkge1xuXHRcdFx0XHRkYXkgPSBwYXJzZUludChkYXkpO1xuXHRcdFx0XHRtb250aCA9IHBhcnNlSW50KG1vbnRoKTtcblx0XHRcdFx0eWVhciA9IHBhcnNlSW50KHllYXIpO1xuXG5cdFx0XHRcdC8vIGNoZWNrIHdoZXRoZXIgaW5wdXQgaXMgc3BsaXQgaW50byBzZXBhcmF0ZSBlbGVtZW50cyBhbmQgdGhhdCBpbnB1dCBlbGVtZW50cyBhcmUgbnVtYmVyc1xuXHRcdFx0XHRpZiAoZWxlbWVudHMubGVuZ3RoICYmICFpc05hTih5ZWFyKSAmJiAhaXNOYU4obW9udGgpICYmICFpc05hTihkYXkpKSB7XG5cdFx0XHRcdFx0Ly8gY2hlY2sgeWVhclxuXHRcdFx0XHRcdGlmICh5ZWFyID49IHRoaXMueWVhciAtIHRoaXMucmFuZ2UgICYmIHllYXIgPD0gdGhpcy55ZWFyICsgdGhpcy5yYW5nZSkge1xuXHRcdFx0XHRcdFx0Ly8gY2hlY2sgbW9udGhzXG5cdFx0XHRcdFx0XHRpZiAobW9udGggPj0gMSAmJiBtb250aCA8PSAxMikge1xuXHRcdFx0XHRcdFx0XHQvLyBjaGVjayBkYXlzIGluY2x1ZGluZyBsZWFwIHllYXJzXG5cdFx0XHRcdFx0XHRcdHZhciBtb250aEVuZCA9IDMxO1xuXHRcdFx0XHRcdFx0XHRpZiAobW9udGggPT0gMikge1xuXHRcdFx0XHRcdFx0XHRcdG1vbnRoRW5kID0gMjg7XG5cdFx0XHRcdFx0XHRcdFx0aWYgKHllYXIgJSA0ID09IDApIHtcblx0XHRcdFx0XHRcdFx0XHRcdGlmICh5ZWFyICUgMTAwICE9IDApIHtcblx0XHRcdFx0XHRcdFx0XHRcdFx0bW9udGhFbmQgPSAyOTtcblx0XHRcdFx0XHRcdFx0XHRcdH0gZWxzZSB7XG5cdFx0XHRcdFx0XHRcdFx0XHRcdGlmICh5ZWFyICUgNDAwID09IDApIHtcblx0XHRcdFx0XHRcdFx0XHRcdFx0XHRtb250aEVuZCA9IDI5O1xuXHRcdFx0XHRcdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdFx0XHR9IGVsc2Uge1xuXHRcdFx0XHRcdFx0XHRcdGlmICgobW9udGggPT0gNCkgfHwgKG1vbnRoID09IDYpIHx8IChtb250aCA9PSA5KSB8fCAobW9udGggPT0gMTEpKSB7XG5cdFx0XHRcdFx0XHRcdFx0XHRtb250aEVuZCA9IDMwO1xuXHRcdFx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0XHRcdGlmIChkYXkgPj0gMSAmJiBkYXkgPD0gbW9udGhFbmQpIHtcblx0XHRcdFx0XHRcdFx0XHR0aGlzLmludmFsaWRJbnB1dCA9IGZhbHNlO1xuXHRcdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cblx0XHRcdFx0Ly8gdXBkYXRlIGRhdGUgdG8gcmVmbGVjdCB0aGUgaW5wdXQgY2hhbmdlXG5cdFx0XHRcdGlmICghdGhpcy5pbnZhbGlkSW5wdXQpIHtcblx0XHRcdFx0XHR0aGlzLnVwZGF0ZVllYXJTZWxlY3Rpb24odGhpcy55ZWFyLCB5ZWFyKTtcblx0XHRcdFx0XHR0aGlzLnNlbGVjdGVkRGF0ZSA9IG5ldyBEYXRlKHllYXIsIG1vbnRoIC0gMSwgZGF5KTtcblx0XHRcdFx0XHR0aGlzLnVwZGF0ZVZhcmlhYmxlcygpO1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fSBlbHNlIHtcblx0XHRcdHRoaXMuaW52YWxpZElucHV0ID0gZmFsc2U7XG5cdFx0fVxuXG5cdH1cblxuXHRuYXZpZ2F0ZShlKSB7XG5cdFx0ZS5wcmV2ZW50RGVmYXVsdCgpO1xuXG5cdFx0c3dpdGNoKGUua2V5Q29kZSkge1xuXHRcdFx0Y2FzZSAxMzogLy9lbnRlciAtIHN1Ym1pdCB0aGUgc2VsZWN0ZWQgb3B0aW9uXG5cdFx0XHRcdHRoaXMuc2VsZWN0RGF5KGUpO1xuXHRcdFx0XHRicmVhaztcblx0XHRcdGNhc2UgMjc6IC8vIGVzYyAtIHByZXNlcnZlIG9sZC9vcmlnaW5hbGx5IHBlcnNpc3RlZCB2YWx1ZVxuXHRcdFx0XHR0aGlzLmhpZGVDYWxlbmRhcigpO1xuXHRcdFx0XHRicmVhaztcblx0XHRcdGNhc2UgMzc6IC8vIGxlZnQgYXJyb3dcblx0XHRcdFx0dGhpcy51cGRhdGVEYXRlKC0xKTtcblx0XHRcdFx0YnJlYWs7XG5cdFx0XHRjYXNlIDM4OiAvLyB1cCBhcnJvd1xuXHRcdFx0XHR0aGlzLnVwZGF0ZURhdGUoLTcpO1xuXHRcdFx0XHRicmVhaztcblx0XHRcdGNhc2UgMzk6IC8vIHJpZ2h0IGFycm93XG5cdFx0XHRcdHRoaXMudXBkYXRlRGF0ZSgrMSk7XG5cdFx0XHRcdGJyZWFrO1xuXHRcdFx0Y2FzZSA0MDogLy8gZG93biBhcnJvd1xuXHRcdFx0XHR0aGlzLnVwZGF0ZURhdGUoKzcpO1xuXHRcdFx0XHRicmVhaztcblx0XHRcdGRlZmF1bHQ6XG5cdFx0XHRcdGJyZWFrO1xuXHRcdH1cblx0fVxuXG59XG5cblBvbHltZXIoIERhdGVwaWNrZXIgKTtcbiJdfQ==
'use strict';

System.register('common/forms/sb-field/Field.js', ['common/core/AppContext.js'], function (_export, _context) {
	var AppContext, _createClass, INPUT, CHECKBOX, DATE, TEXTAREA, REFERENCE, DIV, SF_REF_SUFFIX, Field;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function _possibleConstructorReturn(self, call) {
		if (!self) {
			throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
		}

		return call && (typeof call === "object" || typeof call === "function") ? call : self;
	}

	function _inherits(subClass, superClass) {
		if (typeof superClass !== "function" && superClass !== null) {
			throw new TypeError("Super expression must either be null or a function, not " + typeof superClass);
		}

		subClass.prototype = Object.create(superClass && superClass.prototype, {
			constructor: {
				value: subClass,
				enumerable: false,
				writable: true,
				configurable: true
			}
		});
		if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
	}

	return {
		setters: [function (_commonCoreAppContextJs) {
			AppContext = _commonCoreAppContextJs.AppContext;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			INPUT = '<input is="iron-input" value="{{value}}" on-input="change" class$="[[inputClass]]">';
			CHECKBOX = '<paper-checkbox checked="{{value}}" on-change="change"></paper-checkbox>';
			DATE = '<sb-datepicker selected-date="{{value}}" on-selected-date-changed="dateChange"></sb-datepicker>';
			TEXTAREA = '<textarea is="iron-autogrow-textarea" value="{{value}}" on-input="change"></textarea>';
			REFERENCE = '<span value="{{value}}" on-click="refClick" class$="[[link]]">[[refDisplay]]</span>';
			DIV = '<div>{{value}}</div>';
			SF_REF_SUFFIX = 'Id';

			_export('Field', Field = function (_AppContext) {
				_inherits(Field, _AppContext);

				function Field() {
					_classCallCheck(this, Field);

					return _possibleConstructorReturn(this, (Field.__proto__ || Object.getPrototypeOf(Field)).apply(this, arguments));
				}

				_createClass(Field, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-field';
						this.properties = Polymer.Base.extend({
							obj: Object,

							property: String,

							md: Object,

							refObjects: {
								type: Array,
								value: []
							},
							editing: {
								type: Boolean,
								value: false
							},
							value: {
								observer: 'valueChanged'
							},
							refDisplay: String,
							objAndRefObjects: Object,
							objKey: String,
							refObjectsKey: String }, AppContext.properties);
					}
				}, {
					key: 'attached',
					value: function attached() {
						if (typeof this.value === 'undefined') return;

						if (!this.property) return;

						if (this.obj) return;

						var obj = {};
						obj[this.property] = this.value;
						this.obj = obj;
					}
				}, {
					key: 'setObjAndRefObjects',
					value: function setObjAndRefObjects() {
						this.obj = undefined;
						this.refObjects = undefined;
						this.refObjects = this.objAndRefObjects[this.refObjectsKey];
						if (typeof this.refObjects === 'undefined') this.refObjects = {};
						if (this.objKey !== '') this.obj = this.objAndRefObjects[this.objKey];else this.obj = this.objAndRefObjects;
					}
				}, {
					key: 'render',
					value: function render() {
						this.template = Polymer.dom(this.$.f).querySelector('template');
						if (this.template) {
							Polymer.dom(this.template.parentNode).removeChild(this.template.previousSibling);
							Polymer.dom(this.template.parentNode).removeChild(this.template);
						}

						this.template = document.createElement('template', 'dom-bind');
						var rValue = this.obj[this.property];
						var refDisplay = this.refDisplay;
						var inputClass = 'textInput';

						var type = this.md && this.md.type ? this.md.type.toLowerCase() : '';
						switch (type) {
							case 'boolean':
								this.createBaseElement(CHECKBOX);
								break;
							case 'date':
							case 'datetime':
								if (this.editing) {
									this.createBaseElement(DATE);
								} else {
									rValue = this.i18n.format(this.obj[this.property], { date: true });
									this.createBaseElement(DIV);
								}
								break;

							case 'double':
							case 'number':
							case 'currency':
							case 'percent':
								var opts = {};
								if (this.md.scale != undefined && this.md.scale >= 0) {
									opts.minimumFractionDigits = this.md.scale;
									opts.maxmfimumFractionDigits = this.md.scale;
								}

								if (type === 'currency') {
									opts.style = 'currency';
									opts.currency = 'USD';
								}

								rValue = this.i18n.format(this.obj[this.property], opts);
								inputClass = 'numberInput';
								this.createBaseElement(this.editing ? INPUT : DIV);
								break;

							case 'autonumber':
								this.createBaseElement(DIV);
								break;

							case 'reference':
								this.createBaseElement(REFERENCE);
								if (!refDisplay) {
									var fieldName = this.property.Name ? this.property.Name : this.md.name;
									var pos = fieldName.lastIndexOf(SF_REF_SUFFIX);
									var refObj = pos >= 0 ? fieldName.substring(0, pos) : fieldName.lastIndexOf('__c') >= 0 ? fieldName.replace('__c', '__r') : null;

									var refType = this.obj[refObj] ? this.obj[refObj].attributes.type : null;

									if (refObj && this.obj[refObj] && this.refObjects && refType && this.refObjects[refType]) {
										var nameProp = this.refObjects[refType].nameField.fieldName;
										if (this.obj[refObj][nameProp]) {
											refDisplay = this.obj[refObj][nameProp];
										} else refDisplay = this.obj[refObj].Id;
									}
								}
								break;

							case 'picklist':
								if (this.editing) {
									var none = !this.md.required ? '-- None --' : '',
									    len = this.md.picklistValues ? this.md.picklistValues.length : 0,
									    html = '<select id="picklist" on-change="change">' + (none ? '<option value>' + none + '</option>' : '');

									if (this.md.defaultValue && !this.obj.Id) this.obj[this.property] = this.md.defaultValue;

									for (var i = 0; i < len; i++) {
										var selected = this.obj[this.property] === this.md.picklistValues[i].value ? true : false;
										html += '<option value="' + this.md.picklistValues[i].value + '"' + (selected ? ' selected' : '') + '>' + this.md.picklistValues[i].label + '</option>';
									}

									html += '</select>';
									this.createBaseElement(html);
								} else {
									this.createBaseElement(DIV);
								}
								break;

							case 'string':
							case 'textarea':
								if (this.editing) {
									if (this.md.maxLength > 255 || this.md.format === 'multiline' || type === 'textarea') {
										this.createBaseElement(TEXTAREA);
									} else {
										this.createBaseElement(INPUT);
									}
								} else {
									this.createBaseElement(DIV);
								}
								break;
						}

						this.template.change = function (e) {
							var val = void 0;
							if (this.isBooleanType()) {
								val = e.target.checked;
							} else {
								val = e.target.value;
								if (val && this.isNumericType()) val = parseFloat(val);
							}
							this.obj[this.property] = val;
							this.domHost.value = val;
						}.bind(this);

						this.template.dateChange = function (e) {
							var value = e.detail.value ? e.detail.value : null;
							if (type === 'date' && value instanceof Date) {
								value = value.getFullYear() + '-' + (value.getMonth() + 1) + '-' + value.getDate();
							} else if (value instanceof Date) {
								value = value.toISOString();
							}
							this.template.change({ target: { value: value } });
						}.bind(this);

						this.template.refClick = function (e) {
							window.open(window.location.origin + '/' + e.target.value);
						};

						this.template.value = rValue;
						this.template.inputClass = inputClass;

						if (refDisplay) {
							this.template.refDisplay = refDisplay;
							this.template.link = 'link';
						}

						Polymer.dom(this.$.f).appendChild(this.template);
					}
				}, {
					key: 'createBaseElement',
					value: function createBaseElement(html) {
						var d = this.template.content.ownerDocument.createElement('div');
						d.innerHTML = html;
						this.el = Polymer.dom(d).firstChild;
						Polymer.dom(this.template.content).appendChild(this.el);
					}
				}, {
					key: 'isNumericType',
					value: function isNumericType() {
						var type = this.getType();
						switch (type) {
							case 'double':
							case 'number':
							case 'currency':
							case 'percent':
								return true;
						}
						return false;
					}
				}, {
					key: 'isBooleanType',
					value: function isBooleanType() {
						return this.getType() === 'boolean';
					}
				}, {
					key: 'isEditablePickListType',
					value: function isEditablePickListType() {
						return this.getType() === 'picklist' && this.editing;
					}
				}, {
					key: 'getType',
					value: function getType() {
						return this.md && this.md.type ? this.md.type.toLowerCase() : '';
					}
				}, {
					key: 'valueChanged',
					value: function valueChanged() {
						if (!this.template) {
							this.attached();
							return;
						}

						this.template.value = this.value;

						if (this.isEditablePickListType()) {
							var options = this.template.$.picklist.options;
							var numOptions = options ? options.length || 0 : 0;
							for (var i = 0; i < numOptions; i++) {
								options[i].selected = options[i].value === this.value;
							}
						}
					}
				}, {
					key: 'behaviors',
					get: function get() {
						return [sb.common.core.AppContext];
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['render( obj, property, md, refObjects, editing )', 'setObjAndRefObjects(objAndRefObjects, objKey, refObjectsKey)'];
					}
				}]);

				return Field;
			}(AppContext));

			_export('Field', Field);

			Polymer(Field);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkZpZWxkLmpzIl0sIm5hbWVzIjpbIkFwcENvbnRleHQiLCJJTlBVVCIsIkNIRUNLQk9YIiwiREFURSIsIlRFWFRBUkVBIiwiUkVGRVJFTkNFIiwiRElWIiwiU0ZfUkVGX1NVRkZJWCIsIkZpZWxkIiwiaXMiLCJwcm9wZXJ0aWVzIiwiUG9seW1lciIsIkJhc2UiLCJleHRlbmQiLCJvYmoiLCJPYmplY3QiLCJwcm9wZXJ0eSIsIlN0cmluZyIsIm1kIiwicmVmT2JqZWN0cyIsInR5cGUiLCJBcnJheSIsInZhbHVlIiwiZWRpdGluZyIsIkJvb2xlYW4iLCJvYnNlcnZlciIsInJlZkRpc3BsYXkiLCJvYmpBbmRSZWZPYmplY3RzIiwib2JqS2V5IiwicmVmT2JqZWN0c0tleSIsInVuZGVmaW5lZCIsInRlbXBsYXRlIiwiZG9tIiwiJCIsImYiLCJxdWVyeVNlbGVjdG9yIiwicGFyZW50Tm9kZSIsInJlbW92ZUNoaWxkIiwicHJldmlvdXNTaWJsaW5nIiwiZG9jdW1lbnQiLCJjcmVhdGVFbGVtZW50IiwiclZhbHVlIiwiaW5wdXRDbGFzcyIsInRvTG93ZXJDYXNlIiwiY3JlYXRlQmFzZUVsZW1lbnQiLCJpMThuIiwiZm9ybWF0IiwiZGF0ZSIsIm9wdHMiLCJzY2FsZSIsIm1pbmltdW1GcmFjdGlvbkRpZ2l0cyIsIm1heG1maW11bUZyYWN0aW9uRGlnaXRzIiwic3R5bGUiLCJjdXJyZW5jeSIsImZpZWxkTmFtZSIsIk5hbWUiLCJuYW1lIiwicG9zIiwibGFzdEluZGV4T2YiLCJyZWZPYmoiLCJzdWJzdHJpbmciLCJyZXBsYWNlIiwicmVmVHlwZSIsImF0dHJpYnV0ZXMiLCJuYW1lUHJvcCIsIm5hbWVGaWVsZCIsIklkIiwibm9uZSIsInJlcXVpcmVkIiwibGVuIiwicGlja2xpc3RWYWx1ZXMiLCJsZW5ndGgiLCJodG1sIiwiZGVmYXVsdFZhbHVlIiwiaSIsInNlbGVjdGVkIiwibGFiZWwiLCJtYXhMZW5ndGgiLCJjaGFuZ2UiLCJlIiwidmFsIiwiaXNCb29sZWFuVHlwZSIsInRhcmdldCIsImNoZWNrZWQiLCJpc051bWVyaWNUeXBlIiwicGFyc2VGbG9hdCIsImRvbUhvc3QiLCJiaW5kIiwiZGF0ZUNoYW5nZSIsImRldGFpbCIsIkRhdGUiLCJnZXRGdWxsWWVhciIsImdldE1vbnRoIiwiZ2V0RGF0ZSIsInRvSVNPU3RyaW5nIiwicmVmQ2xpY2siLCJ3aW5kb3ciLCJvcGVuIiwibG9jYXRpb24iLCJvcmlnaW4iLCJsaW5rIiwiYXBwZW5kQ2hpbGQiLCJkIiwiY29udGVudCIsIm93bmVyRG9jdW1lbnQiLCJpbm5lckhUTUwiLCJlbCIsImZpcnN0Q2hpbGQiLCJnZXRUeXBlIiwiYXR0YWNoZWQiLCJpc0VkaXRhYmxlUGlja0xpc3RUeXBlIiwib3B0aW9ucyIsInBpY2tsaXN0IiwibnVtT3B0aW9ucyIsInNiIiwiY29tbW9uIiwiY29yZSJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFRQSxhLDJCQUFBQSxVOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFFSkMsUSxHQUFRLHFGO0FBQ1hDLFcsR0FBVywwRTtBQUNYQyxPLEdBQU8saUc7QUFDUEMsVyxHQUFXLHVGO0FBQ1hDLFksR0FBWSxxRjtBQUNaQyxNLEdBQU0sc0I7QUFDTkMsZ0IsR0FBZ0IsSTs7b0JBRUpDLEs7Ozs7Ozs7Ozs7O3NDQU1LO0FBQ2hCLFdBQUtDLEVBQUwsR0FBVSxVQUFWO0FBQ0EsV0FBS0MsVUFBTCxHQUFrQkMsUUFBUUMsSUFBUixDQUFhQyxNQUFiLENBQXFCO0FBQ3RDQyxZQUFLQyxNQURpQzs7QUFHdENDLGlCQUFVQyxNQUg0Qjs7QUFjdENDLFdBQUlILE1BZGtDOztBQWdCdENJLG1CQUFZO0FBQ1hDLGNBQU1DLEtBREs7QUFFWEMsZUFBTztBQUZJLFFBaEIwQjtBQW9CdENDLGdCQUFTO0FBQ1JILGNBQU1JLE9BREU7QUFFUkYsZUFBTztBQUZDLFFBcEI2QjtBQXdCdENBLGNBQU87QUFDTkcsa0JBQVU7QUFESixRQXhCK0I7QUEyQnRDQyxtQkFBWVQs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QixZQUFLOEUsUUFBTDtBQUNBO0FBQ0E7O0FBRUQsV0FBSzlFLFFBQUwsQ0FBY1QsS0FBZCxHQUFzQixLQUFLQSxLQUEzQjs7QUFHQSxVQUFHLEtBQUt3RixzQkFBTCxFQUFILEVBQWtDO0FBQ2pDLFdBQUlDLFVBQVUsS0FBS2hGLFFBQUwsQ0FBY0UsQ0FBZCxDQUFnQitFLFFBQWhCLENBQXlCRCxPQUF2QztBQUNBLFdBQUlFLGFBQWFGLFVBQVdBLFFBQVF4QyxNQUFSLElBQWtCLENBQTdCLEdBQWtDLENBQW5EO0FBQ0EsWUFBSSxJQUFJRyxJQUFJLENBQVosRUFBZUEsSUFBSXVDLFVBQW5CLEVBQStCdkMsR0FBL0I7QUFDQ3FDLGdCQUFRckMsQ0FBUixFQUFXQyxRQUFYLEdBQXNCb0MsUUFBUXJDLENBQVIsRUFBV3BELEtBQVgsS0FBcUIsS0FBS0EsS0FBaEQ7QUFERDtBQUVBO0FBQ0Q7Ozt5QkFoUmU7QUFDZixhQUFPLENBQUM0RixHQUFHQyxNQUFILENBQVVDLElBQVYsQ0FBZXBILFVBQWhCLENBQVA7QUFDQTs7O3lCQXVDZTtBQUNmLGFBQU8sQ0FBQyxrREFBRCxFQUFxRCw4REFBckQsQ0FBUDtBQUNBOzs7O0tBN0N5QkEsVTs7OztBQXFSM0JXLFdBQVNILEtBQVQiLCJmaWxlIjoiRmllbGQuanMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge0FwcENvbnRleHR9IGZyb20gJ2NvbW1vbi9jb3JlL0FwcENvbnRleHQuanMnO1xuXG5sZXQgSU5QVVQgPSAnPGlucHV0IGlzPVwiaXJvbi1pbnB1dFwiIHZhbHVlPVwie3t2YWx1ZX19XCIgb24taW5wdXQ9XCJjaGFuZ2VcIiBjbGFzcyQ9XCJbW2lucHV0Q2xhc3NdXVwiPicsXG5cdENIRUNLQk9YID0gJzxwYXBlci1jaGVja2JveCBjaGVja2VkPVwie3t2YWx1ZX19XCIgb24tY2hhbmdlPVwiY2hhbmdlXCI+PC9wYXBlci1jaGVja2JveD4nLFxuXHREQVRFID0gJzxzYi1kYXRlcGlja2VyIHNlbGVjdGVkLWRhdGU9XCJ7e3ZhbHVlfX1cIiBvbi1zZWxlY3RlZC1kYXRlLWNoYW5nZWQ9XCJkYXRlQ2hhbmdlXCI+PC9zYi1kYXRlcGlja2VyPicsXG5cdFRFWFRBUkVBID0gJzx0ZXh0YXJlYSBpcz1cImlyb24tYXV0b2dyb3ctdGV4dGFyZWFcIiB2YWx1ZT1cInt7dmFsdWV9fVwiIG9uLWlucHV0PVwiY2hhbmdlXCI+PC90ZXh0YXJlYT4nLFxuXHRSRUZFUkVOQ0UgPSAnPHNwYW4gdmFsdWU9XCJ7e3ZhbHVlfX1cIiBvbi1jbGljaz1cInJlZkNsaWNrXCIgY2xhc3MkPVwiW1tsaW5rXV1cIj5bW3JlZkRpc3BsYXldXTwvc3Bhbj4nLFxuXHRESVYgPSAnPGRpdj57e3ZhbHVlfX08L2Rpdj4nLFxuXHRTRl9SRUZfU1VGRklYID0gJ0lkJztcblxuZXhwb3J0IGNsYXNzIEZpZWxkIGV4dGVuZHMgQXBwQ29udGV4dCB7XG5cblx0Z2V0IGJlaGF2aW9ycygpIHtcblx0XHRyZXR1cm4gW3NiLmNvbW1vbi5jb3JlLkFwcENvbnRleHRdO1xuXHR9XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi1maWVsZCc7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0gUG9seW1lci5CYXNlLmV4dGVuZCgge1xuXHRcdFx0b2JqOiBPYmplY3QsXG5cdFx0XHQvKiogUmVxdWlyZWQgYnV0IG9ubHkgaWYgeW91IGFyZSBub3QgcGFzc2luZyBpbiBhIHZhbHVlICovXG5cdFx0XHRwcm9wZXJ0eTogU3RyaW5nLFxuXHRcdFx0Ly9hZGFwdCBwcm9kdWN0IG1ldGFkYXRhIHRvIHJldHVybiBtYXAgb2JqZWN0IGluc3RlYWQgb2YgYXJyYXlcblx0XHRcdC8qKiBPYmplY3Qgd2l0aCBzdHJ1Y3R1cmUgb2Y6XG5cdFx0XHQge1xuXHRcdFx0XHR0eXBlOiBTVFJJTkcgfCBSRUZFUkVOQ0UgfCBET1VCTEUgfCBDVVJSRU5DWSB8IFBJQ0tMSVNUIHwgREFURSB8IERBVEVUSU1FXG5cdFx0XHRcdG5hbWU6IDxvYmplY3QgZmllbGQgQVBJIG5hbWU+XG5cdFx0XHRcdGxhYmVsOiA8b2JqZWN0IGZpZWxkIGxhYmVsPlxuXHRcdFx0XHRzY2FsZTogaW50ZWdlclxuXHRcdFx0XHRwaWNrbGlzdFZhbHVlczogWyB7IGxhYmVsOiA8bGFiZWw+LCB2YWx1ZTogPHZhbHVlPiB9XVxuXHRcdFx0IH1cblx0XHRcdCAqL1xuXHRcdFx0bWQ6IE9iamVjdCxcblx0XHRcdC8qKiBNZXRhZGF0YSBmb3IgYWxsIHJlZmVyZW5jZWQgb2JqZWN0cyBpbiBzYW1lIHN0cnVjdHVyZSBhcyBtZCAqL1xuXHRcdFx0cmVmT2JqZWN0czoge1xuXHRcdFx0XHR0eXBlOiBBcnJheSxcblx0XHRcdFx0dmFsdWU6IFtdXG5cdFx0XHR9LFxuXHRcdFx0ZWRpdGluZzoge1xuXHRcdFx0XHR0eXBlOiBCb29sZWFuLFxuXHRcdFx0XHR2YWx1ZTogZmFsc2Vcblx0XHRcdH0sXG5cdFx0XHR2YWx1ZToge1xuXHRcdFx0XHRvYnNlcnZlcjogJ3ZhbHVlQ2hhbmdlZCdcblx0XHRcdH0sXG5cdFx0XHRyZWZEaXNwbGF5OiBTdHJpbmcsXG5cdFx0XHRvYmpBbmRSZWZPYmplY3RzOiBPYmplY3QsIC8vIHVzZSBpZiBvYmogYW5kIHJlZk9iamVjdHMgb24gc2FtZSBvYmplY3Rcblx0XHRcdG9iaktleTogU3RyaW5nLCAvLyBpZiBvYmpBbmRSZWZPYmplY3RzIGlzIHNldCwgdGhpcyBzdHJpbmcgaXMgdGhlIGtleSB0byB0aGUgb2JqIHN1YiBwcm9wZXJ0eVxuXHRcdFx0cmVmT2JqZWN0c0tleTogU3RyaW5nIC8vIGlmIG9iakFuZFJlZk9iamVjdHMgaXMgc2V0LCB0aGlzIHN0cmluZyBpcyB0aGUga2V5IHRvIHRoZSByZWZPYmplY3RzIHN1YiBwcm9wZXJ0eVxuXG5cdFx0fSwgQXBwQ29udGV4dC5wcm9wZXJ0aWVzICk7XG5cdH1cblxuXHRnZXQgb2JzZXJ2ZXJzKCkge1xuXHRcdHJldHVybiBbJ3JlbmRlciggb2JqLCBwcm9wZXJ0eSwgbWQsIHJlZk9iamVjdHMsIGVkaXRpbmcgKScsICdzZXRPYmpBbmRSZWZPYmplY3RzKG9iakFuZFJlZk9iamVjdHMsIG9iaktleSwgcmVmT2JqZWN0c0tleSknXTtcblx0fVxuXG5cdGF0dGFjaGVkKCkge1xuXHRcdGlmKHR5cGVvZiB0aGlzLnZhbHVlID09PSAndW5kZWZpbmVkJylcblx0XHRcdHJldHVybjtcblxuXHRcdGlmKCF0aGlzLnByb3BlcnR5KVxuXHRcdFx0cmV0dXJuO1xuXG5cdFx0aWYodGhpcy5vYmopXG5cdFx0XHRyZXR1cm47XG5cblx0XHQvLyBoYXZlIGEgdmFsdWUgYW5kIHByb3BlcnR5IGJ1dCBubyBvYmplY3QsIHNvIGNyZWF0ZSBvYmplY3Qgd2l0aCB0aGUgdmFsdWVcblx0XHQvLyBpZiBvdGhlciByZXF1aXJlZCBwcm9wZXJ0aWVzIGFyZSBhbHJlYWR5IHNldCwgdGhlbiB3aWxsIHRyaWdnZXIgdGhlIHJlbmRlciB2aWEgdGhlIG9ic2VydmVyXG5cdFx0bGV0IG9iaiA9IHt9O1xuXHRcdG9ialt0aGlzLnByb3BlcnR5XSA9IHRoaXMudmFsdWU7XG5cdFx0dGhpcy5vYmogPSBvYmo7XG5cdH1cblxuXHRzZXRPYmpBbmRSZWZPYmplY3RzKCkge1xuXHRcdHRoaXMub2JqID0gdW5kZWZpbmVkO1xuXHRcdHRoaXMucmVmT2JqZWN0cyA9IHVuZGVmaW5lZDtcblx0XHR0aGlzLnJlZk9iamVjdHMgPSB0aGlzLm9iakFuZFJlZk9iamVjdHNbdGhpcy5yZWZPYmplY3RzS2V5XTtcblx0XHRpZiAodHlwZW9mIHRoaXMucmVmT2JqZWN0cyA9PT0gJ3VuZGVmaW5lZCcpXG5cdFx0XHR0aGlzLnJlZk9iamVjdHMgPSB7fTtcblx0XHRpZiAodGhpcy5vYmpLZXkgIT09ICcnKVxuXHRcdFx0dGhpcy5vYmogPSB0aGlzLm9iakFuZFJlZk9iamVjdHNbdGhpcy5vYmpLZXldO1xuXHRcdGVsc2Vcblx0XHRcdHRoaXMub2JqID0gdGhpcy5vYmpBbmRSZWZPYmplY3RzO1xuXHR9XG5cblx0cmVuZGVyKCkge1xuXHRcdHRoaXMudGVtcGxhdGUgPSBQb2x5bWVyLmRvbSh0aGlzLiQuZikucXVlcnlTZWxlY3RvcigndGVtcGxhdGUnKTtcblx0XHRpZih0aGlzLnRlbXBsYXRlKSB7Ly8gcmVtb3ZlIHRlbXBsYXRlIGlmIGFscmVhZHkgZXhpc3RzXG5cdFx0XHRQb2x5bWVyLmRvbSh0aGlzLnRlbXBsYXRlLnBhcmVudE5vZGUpLnJlbW92ZUNoaWxkKHRoaXMudGVtcGxhdGUucHJldmlvdXNTaWJsaW5nKTtcblx0XHRcdFBvbHltZXIuZG9tKHRoaXMudGVtcGxhdGUucGFyZW50Tm9kZSkucmVtb3ZlQ2hpbGQodGhpcy50ZW1wbGF0ZSk7XG5cdFx0fVxuXG5cdFx0dGhpcy50ZW1wbGF0ZSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ3RlbXBsYXRlJywgJ2RvbS1iaW5kJyk7XG5cdFx0bGV0IHJWYWx1ZSA9IHRoaXMub2JqW3RoaXMucHJvcGVydHldO1xuXHRcdGxldCByZWZEaXNwbGF5ID0gdGhpcy5yZWZEaXNwbGF5O1xuXHRcdGxldCBpbnB1dENsYXNzID0gJ3RleHRJbnB1dCc7XG5cblx0XHRsZXQgdHlwZSA9IHRoaXMubWQgJiYgdGhpcy5tZC50eXBlID8gdGhpcy5tZC50eXBlLnRvTG93ZXJDYXNlKCkgOiAnJztcblx0XHRzd2l0Y2goIHR5cGUgKSB7XG5cdFx0XHRjYXNlICdib29sZWFuJzpcblx0XHRcdFx0dGhpcy5jcmVhdGVCYXNlRWxlbWVudChDSEVDS0JPWCk7XG5cdFx0XHRcdGJyZWFrO1xuXHRcdFx0Y2FzZSAnZGF0ZSc6XG5cdFx0XHRjYXNlICdkYXRldGltZSc6XG5cdFx0XHRcdGlmICh0aGlzLmVkaXRpbmcpIHtcblx0XHRcdFx0XHR0aGlzLmNyZWF0ZUJhc2VFbGVtZW50KERBVEUpO1xuXHRcdFx0XHR9XG5cdFx0XHRcdGVsc2Uge1xuXHRcdFx0XHRcdHJWYWx1ZSA9IHRoaXMuaTE4bi5mb3JtYXQodGhpcy5vYmpbdGhpcy5wcm9wZXJ0eV0sIHtkYXRlOiB0cnVlfSk7XG5cdFx0XHRcdFx0dGhpcy5jcmVhdGVCYXNlRWxlbWVudChESVYpO1xuXHRcdFx0XHR9XG5cdFx0XHRcdGJyZWFrO1xuXG5cdFx0XHRjYXNlICdkb3VibGUnOlxuXHRcdFx0Y2FzZSAnbnVtYmVyJzpcblx0XHRcdGNhc2UgJ2N1cnJlbmN5Jzpcblx0XHRcdGNhc2UgJ3BlcmNlbnQnOlxuXHRcdFx0XHRsZXQgb3B0cyA9IHt9O1xuXHRcdFx0XHRpZiAodGhpcy5tZC5zY2FsZSAhPSB1bmRlZmluZWQgJiYgdGhpcy5tZC5zY2FsZSA+PSAwKSB7XG5cdFx0XHRcdFx0b3B0cy5taW5pbXVtRnJhY3Rpb25EaWdpdHMgPSB0aGlzLm1kLnNjYWxlO1xuXHRcdFx0XHRcdG9wdHMubWF4bWZpbXVtRnJhY3Rpb25EaWdpdHMgPSB0aGlzLm1kLnNjYWxlO1xuXHRcdFx0XHR9XG5cblx0XHRcdFx0aWYgKHR5cGUgPT09ICdjdXJyZW5jeScpIHtcblx0XHRcdFx0XHRvcHRzLnN0eWxlID0gJ2N1cnJlbmN5Jztcblx0XHRcdFx0XHRvcHRzLmN1cnJlbmN5ID0gJ1VTRCc7ICAvLyBUT0RPOiB1cGRhdGVcblx0XHRcdFx0fVxuXG5cdFx0XHRcdHJWYWx1ZSA9IHRoaXMuaTE4bi5mb3JtYXQodGhpcy5vYmpbdGhpcy5wcm9wZXJ0eV0sIG9wdHMpO1xuXHRcdFx0XHRpbnB1dENsYXNzID0gJ251bWJlcklucHV0Jztcblx0XHRcdFx0dGhpcy5jcmVhdGVCYXNlRWxlbWVudCh0aGlzLmVkaXRpbmcgPyBJTlBVVCA6IERJVik7XG5cdFx0XHRcdGJyZWFrO1xuXG5cdFx0XHRjYXNlICdhdXRvbnVtYmVyJzpcblx0XHRcdFx0dGhpcy5jcmVhdGVCYXNlRWxlbWVudChESVYpO1xuXHRcdFx0XHRicmVhaztcblxuXHRcdFx0Y2FzZSAncmVmZXJlbmNlJzpcblx0XHRcdFx0dGhpcy5jcmVhdGVCYXNlRWxlbWVudChSRUZFUkVOQ0UpO1xuXHRcdFx0XHRpZiAoIXJlZkRpc3BsYXkpIHtcblx0XHRcdFx0XHRsZXQgZmllbGROYW1lID0gdGhpcy5wcm9wZXJ0eS5OYW1lID8gdGhpcy5wcm9wZXJ0eS5OYW1lIDogdGhpcy5tZC5uYW1lO1xuXHRcdFx0XHRcdGxldCBwb3MgPSBmaWVsZE5hbWUubGFzdEluZGV4T2YoU0ZfUkVGX1NVRkZJWCk7XG5cdFx0XHRcdFx0bGV0IHJlZk9iaiA9IHBvcyA+PSAwID8gZmllbGROYW1lLnN1YnN0cmluZygwLCBwb3MpIDogKGZpZWxkTmFtZS5sYXN0SW5kZXhPZignX19jJykgPj0gMCA/IGZpZWxkTmFtZS5yZXBsYWNlKCdfX2MnLCAnX19yJykgOiBudWxsKTtcblxuXHRcdFx0XHRcdGxldCByZWZUeXBlID0gdGhpcy5vYmpbcmVmT2JqXSA/IHRoaXMub2JqW3JlZk9ial0uYXR0cmlidXRlcy50eXBlIDogbnVsbDtcblxuXHRcdFx0XHRcdGlmIChyZWZPYmogJiYgdGhpcy5vYmpbcmVmT2JqXSAmJiB0aGlzLnJlZk9iamVjdHMgJiYgcmVmVHlwZSAmJiB0aGlzLnJlZk9iamVjdHNbcmVmVHlwZV0pIHtcblx0XHRcdFx0XHRcdGxldCBuYW1lUHJvcCA9IHRoaXMucmVmT2JqZWN0c1tyZWZUeXBlXS5uYW1lRmllbGQuZmllbGROYW1lO1xuXHRcdFx0XHRcdFx0aWYgKHRoaXMub2JqW3JlZk9ial1bbmFtZVByb3BdKSB7XG5cdFx0XHRcdFx0XHRcdHJlZkRpc3BsYXkgPSB0aGlzLm9ialtyZWZPYmpdW25hbWVQcm9wXTtcblx0XHRcdFx0XHRcdH0gZWxzZSByZWZEaXNwbGF5ID0gdGhpcy5vYmpbcmVmT2JqXS5JZDtcblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblx0XHRcdFx0YnJlYWs7XG5cblx0XHRcdGNhc2UgJ3BpY2tsaXN0Jzpcblx0XHRcdFx0aWYoIHRoaXMuZWRpdGluZyApIHtcblx0XHRcdFx0XHRsZXQgbm9uZSA9ICF0aGlzLm1kLnJlcXVpcmVkID8gJy0tIE5vbmUgLS0nIDogJycsXG5cdFx0XHRcdFx0XHRsZW4gPSB0aGlzLm1kLnBpY2tsaXN0VmFsdWVzID8gdGhpcy5tZC5waWNrbGlzdFZhbHVlcy5sZW5ndGggOiAwLFxuXHRcdFx0XHRcdFx0aHRtbCA9ICc8c2VsZWN0IGlkPVwicGlja2xpc3RcIiBvbi1jaGFuZ2U9XCJjaGFuZ2VcIj4nICsgKG5vbmUgPyAnPG9wdGlvbiB2YWx1ZT4nICsgbm9uZSArICc8L29wdGlvbj4nIDogJycpO1xuXG5cdFx0XHRcdFx0aWYoIHRoaXMubWQuZGVmYXVsdFZhbHVlICYmICF0aGlzLm9iai5JZCApIC8vIHNldCBkZWZhdWx0IHZhbHVlIGZvciBuZXdseSBjcmVhdGVkIG9iamVjdHNcblx0XHRcdFx0XHRcdHRoaXMub2JqW3RoaXMucHJvcGVydHldID0gdGhpcy5tZC5kZWZhdWx0VmFsdWU7XG5cblx0XHRcdFx0XHRmb3IoIGxldCBpPTA7IGkgPCBsZW47IGkrKyApIHtcblx0XHRcdFx0XHRcdGxldCBzZWxlY3RlZCA9IHRoaXMub2JqW3RoaXMucHJvcGVydHldID09PSB0aGlzLm1kLnBpY2tsaXN0VmFsdWVzW2ldLnZhbHVlID8gdHJ1ZSA6IGZhbHNlO1xuXHRcdFx0XHRcdFx0aHRtbCArPSAnPG9wdGlvbiB2YWx1ZT1cIicgKyB0aGlzLm1kLnBpY2tsaXN0VmFsdWVzW2ldLnZhbHVlICsgJ1wiJyArIChzZWxlY3RlZCA/ICcgc2VsZWN0ZWQnIDogJycpICsgJz4nICsgdGhpcy5tZC5waWNrbGlzdFZhbHVlc1tpXS5sYWJlbCArICc8L29wdGlvbj4nO1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdGh0bWwgKz0gJzwvc2VsZWN0Pic7XG5cdFx0XHRcdFx0dGhpcy5jcmVhdGVCYXNlRWxlbWVudCggaHRtbCApO1xuXHRcdFx0XHR9XG5cdFx0XHRcdGVsc2Uge1xuXHRcdFx0XHRcdHRoaXMuY3JlYXRlQmFzZUVsZW1lbnQoRElWKTtcblx0XHRcdFx0fVxuXHRcdFx0XHRicmVhaztcblxuXHRcdFx0Y2FzZSAnc3RyaW5nJzpcblx0XHRcdGNhc2UgJ3RleHRhcmVhJzpcblx0XHRcdFx0aWYoIHRoaXMuZWRpdGluZyApIHtcblx0XHRcdFx0XHRpZiggdGhpcy5tZC5tYXhMZW5ndGggPiAyNTUgfHwgdGhpcy5tZC5mb3JtYXQgPT09ICdtdWx0aWxpbmUnIHx8IHR5cGUgPT09ICd0ZXh0YXJlYScgKSB7XG5cdFx0XHRcdFx0XHR0aGlzLmNyZWF0ZUJhc2VFbGVtZW50KCBURVhUQVJFQSApO1xuXHRcdFx0XHRcdH1cblx0XHRcdFx0XHRlbHNlIHtcblx0XHRcdFx0XHRcdHRoaXMuY3JlYXRlQmFzZUVsZW1lbnQoIElOUFVUICk7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHRcdGVsc2Uge1xuXHRcdFx0XHRcdHRoaXMuY3JlYXRlQmFzZUVsZW1lbnQoRElWKTtcblx0XHRcdFx0fVxuXHRcdFx0XHRicmVhaztcblx0XHR9XG5cblx0XHQvLyBjYWxsYmFjayB0byBoYW5kbGUgZ2VuZXJhbCBjaGFuZ2UgZXZlbnRzIG9mIGZpZWxkc1xuXHRcdHRoaXMudGVtcGxhdGUuY2hhbmdlID0gZnVuY3Rpb24oZSkge1xuXHRcdFx0bGV0IHZhbDtcblx0XHRcdGlmKHRoaXMuaXNCb29sZWFuVHlwZSgpKSB7XG5cdFx0XHRcdHZhbCA9IGUudGFyZ2V0LmNoZWNrZWQ7XG5cdFx0XHR9IGVsc2Uge1xuXHRcdFx0XHR2YWwgPSBlLnRhcmdldC52YWx1ZTtcblx0XHRcdFx0aWYodmFsICYmIHRoaXMuaXNOdW1lcmljVHlwZSgpKVxuXHRcdFx0XHRcdHZhbCA9IHBhcnNlRmxvYXQodmFsKTsgLy8gVE9ETzogc3RyaWN0ZXIgcGFyc2luZyAoZS5nLiA0NWFxayA9PiA0NSlcblx0XHRcdH1cblx0XHRcdHRoaXMub2JqW3RoaXMucHJvcGVydHldID0gdmFsO1xuXHRcdFx0dGhpcy5kb21Ib3N0LnZhbHVlID0gdmFsO1xuXHRcdH0uYmluZCh0aGlzKTtcblxuXHRcdC8vIGNhbGxiYWNrIHRvIGhhbmRsZSBzcGVjaWZpYyBjaGFuZ2UgZXZlbnQgZm9yIGRhdGUgZmllbGRzXG5cdFx0dGhpcy50ZW1wbGF0ZS5kYXRlQ2hhbmdlID0gZnVuY3Rpb24oZSkge1xuXHRcdFx0bGV0IHZhbHVlID0gZS5kZXRhaWwudmFsdWUgPyBlLmRldGFpbC52YWx1ZSA6IG51bGw7XG5cdFx0XHRpZiggdHlwZSA9PT0gJ2RhdGUnICYmIHZhbHVlIGluc3RhbmNlb2YgRGF0ZSApIHtcblx0XHRcdFx0dmFsdWUgPSB2YWx1ZS5nZXRGdWxsWWVhcigpICsgJy0nICsgKHZhbHVlLmdldE1vbnRoKCkrMSkgKyAnLScgKyB2YWx1ZS5nZXREYXRlKCk7XG5cdFx0XHR9XG5cdFx0XHRlbHNlIGlmKCB2YWx1ZSBpbnN0YW5jZW9mIERhdGUgKSB7XG5cdFx0XHRcdHZhbHVlID0gdmFsdWUudG9JU09TdHJpbmcoKTtcblx0XHRcdH1cblx0XHRcdHRoaXMudGVtcGxhdGUuY2hhbmdlKHt0YXJnZXQ6IHt2YWx1ZTogdmFsdWV9fSk7XG5cdFx0fS5iaW5kKHRoaXMpO1xuXG5cdFx0Ly8gY2FsbGJhY2sgdG8gaGFuZGxlIGNsaWNrIGV2ZW50IGZvciByZWZlcmVuY2UgZmllbGRzXG5cdFx0dGhpcy50ZW1wbGF0ZS5yZWZDbGljayA9IGZ1bmN0aW9uKGUpIHtcblx0XHRcdHdpbmRvdy5vcGVuKHdpbmRvdy5sb2NhdGlvbi5vcmlnaW4gKyAnLycgKyBlLnRhcmdldC52YWx1ZSk7XG5cdFx0fVxuXG5cdFx0Ly8gYXBwZW5kIHRoZSBmaWVsZCB0ZW1wbGF0ZSB0byB0aGUgRE9NIGFuZCBzZXQgdGhlIHZhbHVlXG5cdFx0dGhpcy50ZW1wbGF0ZS52YWx1ZSA9IHJWYWx1ZTtcblx0XHR0aGlzLnRlbXBsYXRlLmlucHV0Q2xhc3MgPSBpbnB1dENsYXNzO1xuXG5cdFx0Ly8gaWYgcmVmZXJlbmNlIHRoZW4gc2V0IHRoZSBkaXNwbGF5IHZhbHVlIGFuZCBsaW5rIGNsYXNzXG5cdFx0aWYocmVmRGlzcGxheSkge1xuXHRcdFx0dGhpcy50ZW1wbGF0ZS5yZWZEaXNwbGF5ID0gcmVmRGlzcGxheTtcblx0XHRcdHRoaXMudGVtcGxhdGUubGluayA9ICdsaW5rJztcblx0XHR9XG5cdFx0Ly8gc3RhbXAgdGhlIHRlbXBsYXRlIGludG8gdGhlIERPTVxuXHRcdFBvbHltZXIuZG9tKHRoaXMuJC5mKS5hcHBlbmRDaGlsZCh0aGlzLnRlbXBsYXRlKTtcblx0fVxuXG5cdGNyZWF0ZUJhc2VFbGVtZW50KCBodG1sICkge1xuXHRcdHZhciBkID0gdGhpcy50ZW1wbGF0ZS5jb250ZW50Lm93bmVyRG9jdW1lbnQuY3JlYXRlRWxlbWVudCgnZGl2Jyk7XG5cdFx0ZC5pbm5lckhUTUwgPSBodG1sO1xuXHRcdHRoaXMuZWwgPSBQb2x5bWVyLmRvbShkKS5maXJzdENoaWxkO1xuXHRcdFBvbHltZXIuZG9tKHRoaXMudGVtcGxhdGUuY29udGVudCkuYXBwZW5kQ2hpbGQodGhpcy5lbCk7XG5cdH1cblxuXHRpc051bWVyaWNUeXBlKCkge1xuXHRcdGxldCB0eXBlID0gdGhpcy5nZXRUeXBlKCk7XG5cdFx0c3dpdGNoKHR5cGUpIHtcblx0XHRcdGNhc2UgJ2RvdWJsZSc6XG5cdFx0XHRjYXNlICdudW1iZXInOlxuXHRcdFx0Y2FzZSAnY3VycmVuY3knOlxuXHRcdFx0Y2FzZSAncGVyY2VudCc6XG5cdFx0XHRcdHJldHVybiB0cnVlO1xuXHRcdH1cblx0XHRyZXR1cm4gZmFsc2U7XG5cdH1cblxuXHRpc0Jvb2xlYW5UeXBlKCkge1xuXHRcdHJldHVybiB0aGlzLmdldFR5cGUoKSA9PT0gJ2Jvb2xlYW4nO1xuXHR9XG5cblx0aXNFZGl0YWJsZVBpY2tMaXN0VHlwZSgpIHtcblx0XHRyZXR1cm4gdGhpcy5nZXRUeXBlKCkgPT09ICdwaWNrbGlzdCcgJiYgdGhpcy5lZGl0aW5nO1xuXHR9XG5cblx0Z2V0VHlwZSgpIHtcblx0XHRyZXR1cm4gdGhpcy5tZCAmJiB0aGlzLm1kLnR5cGUgPyB0aGlzLm1kLnR5cGUudG9Mb3dlckNhc2UoKSA6ICcnO1xuXHR9XG5cblx0dmFsdWVDaGFuZ2VkKCkge1xuXHRcdGlmKCF0aGlzLnRlbXBsYXRlKSB7XG5cdFx0XHR0aGlzLmF0dGFjaGVkKCk7XG5cdFx0XHRyZXR1cm47XG5cdFx0fVxuXG5cdFx0dGhpcy50ZW1wbGF0ZS52YWx1ZSA9IHRoaXMudmFsdWU7XG5cblx0XHQvLyBpZiBwaWNrIGxpc3QsIHRoZW4gd2UgbmVlZCB0byB1cGRhdGUgdGhlIHNlbGVjdGVkIG9wdGlvbiBhcyB3ZWxsXG5cdFx0aWYodGhpcy5pc0VkaXRhYmxlUGlja0xpc3RUeXBlKCkpIHtcblx0XHRcdHZhciBvcHRpb25zID0gdGhpcy50ZW1wbGF0ZS4kLnBpY2tsaXN0Lm9wdGlvbnM7XG5cdFx0XHR2YXIgbnVtT3B0aW9ucyA9IG9wdGlvbnMgPyAob3B0aW9ucy5sZW5ndGggfHwgMCkgOiAwO1xuXHRcdFx0Zm9yKHZhciBpID0gMDsgaSA8IG51bU9wdGlvbnM7IGkrKylcblx0XHRcdFx0b3B0aW9uc1tpXS5zZWxlY3RlZCA9IG9wdGlvbnNbaV0udmFsdWUgPT09IHRoaXMudmFsdWU7XG5cdFx0fVxuXHR9XG59XG5cblBvbHltZXIoIEZpZWxkICk7Il19
'use strict';

System.register('common/forms/sb-pagination/Pagination.js', [], function (_export, _context) {
	var _createClass, Pagination;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('Pagination', Pagination = function () {
				function Pagination() {
					_classCallCheck(this, Pagination);
				}

				_createClass(Pagination, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-pagination';
						this.properties = {
							pageIndex: {
								type: Number,
								value: 0
							},
							pageSize: Number,
							numItems: Number };
					}
				}, {
					key: 'next',
					value: function next() {
						this.pageIndex++;
						this.firePageEvent('next');
					}
				}, {
					key: 'previous',
					value: function previous() {
						this.pageIndex--;
						this.firePageEvent('previous');
					}
				}, {
					key: 'setNumberOfPages',
					value: function setNumberOfPages() {
						this.numPages = Math.ceil(this.numItems / this.pageSize);
					}
				}, {
					key: 'setPageWindow',
					value: function setPageWindow() {
						var start = this.pageIndex * this.pageSize;
						var end = start + this.pageSize;
						if (end >= this.numItems) end = this.numItems;
						this.pageWindow = [start, end];
					}
				}, {
					key: 'setNextDisabled',
					value: function setNextDisabled() {
						this.nextDisabled = this.pageIndex === this.numPages - 1;
					}
				}, {
					key: 'setPreviousDisabled',
					value: function setPreviousDisabled() {
						this.previousDisabled = this.pageIndex === 0;
					}
				}, {
					key: 'setPageNum',
					value: function setPageNum() {
						this.pageNum = this.pageIndex + 1;
					}
				}, {
					key: 'firePageEvent',
					value: function firePageEvent(direction) {
						this.fire('pagination-changed', { direction: direction, page: this.pageNum, index: this.pageIndex, window: this.pageWindow });
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['setNumberOfPages(pageSize, numItems)', 'setPageWindow(pageIndex, pageSize, numItems)', 'setNextDisabled(pageIndex, numPages)', 'setPreviousDisabled(pageIndex)', 'setPageNum(pageIndex)'];
					}
				}]);

				return Pagination;
			}());

			_export('Pagination', Pagination);

			Polymer(Pagination);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlBhZ2luYXRpb24uanMiXSwibmFtZXMiOlsiUGFnaW5hdGlvbiIsImlzIiwicHJvcGVydGllcyIsInBhZ2VJbmRleCIsInR5cGUiLCJOdW1iZXIiLCJ2YWx1ZSIsInBhZ2VTaXplIiwibnVtSXRlbXMiLCJmaXJlUGFnZUV2ZW50IiwibnVtUGFnZXMiLCJNYXRoIiwiY2VpbCIsInN0YXJ0IiwiZW5kIiwicGFnZVdpbmRvdyIsIm5leHREaXNhYmxlZCIsInByZXZpb3VzRGlzYWJsZWQiLCJwYWdlTnVtIiwiZGlyZWN0aW9uIiwiZmlyZSIsInBhZ2UiLCJpbmRleCIsIndpbmRvdyIsIlBvbHltZXIiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O3lCQUFhQSxVOzs7Ozs7O3NDQUVLO0FBQ2hCLFdBQUtDLEVBQUwsR0FBVSxlQUFWO0FBQ0EsV0FBS0MsVUFBTCxHQUFrQjtBQUNqQkMsa0JBQVc7QUFDVkMsY0FBTUMsTUFESTtBQUVWQyxlQUFPO0FBRkcsUUFETTtBQUtqQkMsaUJBQVVGLE1BTE87QUFNakJHLGlCQUFVSCxNQU5PLEVBQWxCO0FBUUE7Ozs0QkFNTTtBQUNOLFdBQUtGLFNBQUw7QUFDQSxXQUFLTSxhQUFMLENBQW1CLE1BQW5CO0FBQ0E7OztnQ0FFVTtBQUNWLFdBQUtOLFNBQUw7QUFDQSxXQUFLTSxhQUFMLENBQW1CLFVBQW5CO0FBQ0E7Ozt3Q0FFa0I7QUFDbEIsV0FBS0MsUUFBTCxHQUFnQkMsS0FBS0MsSUFBTCxDQUFVLEtBQUtKLFFBQUwsR0FBZ0IsS0FBS0QsUUFBL0IsQ0FBaEI7QUFDQTs7O3FDQUVlO0FBQ2YsVUFBSU0sUUFBUSxLQUFLVixTQUFMLEdBQWlCLEtBQUtJLFFBQWxDO0FBQ0EsVUFBSU8sTUFBTUQsUUFBUSxLQUFLTixRQUF2QjtBQUNBLFVBQUdPLE9BQU8sS0FBS04sUUFBZixFQUNDTSxNQUFNLEtBQUtOLFFBQVg7QUFDRCxXQUFLTyxVQUFMLEdBQWtCLENBQUNGLEtBQUQsRUFBUUMsR0FBUixDQUFsQjtBQUNBOzs7dUNBRWlCO0FBQ2pCLFdBQUtFLFlBQUwsR0FBb0IsS0FBS2IsU0FBTCxLQUFvQixLQUFLTyxRQUFMLEdBQWdCLENBQXhEO0FBQ0E7OzsyQ0FFcUI7QUFDckIsV0FBS08sZ0JBQUwsR0FBd0IsS0FBS2QsU0FBTCxLQUFtQixDQUEzQztBQUNBOzs7a0NBRVk7QUFDWixXQUFLZSxPQUFMLEdBQWUsS0FBS2YsU0FBTCxHQUFpQixDQUFoQztBQUNBOzs7bUNBRWFnQixTLEVBQVc7QUFDeEIsV0FBS0MsSUFBTCxDQUFVLG9CQUFWLEVBQWdDLEVBQUNELFdBQVdBLFNBQVosRUFBdUJFLE1BQU0sS0FBS0gsT0FBbEMsRUFBMkNJLE9BQU8sS0FBS25CLFNBQXZELEVBQWtFb0IsUUFBUSxLQUFLUixVQUEvRSxFQUFoQztBQUNBOzs7eUJBeENlO0FBQ2YsYUFBTyxDQUFDLHNDQUFELEVBQXlDLDhDQUF6QyxFQUF5RixzQ0FBekYsRUFBaUksZ0NBQWpJLEVBQW1LLHVCQUFuSyxDQUFQO0FBQ0E7Ozs7Ozs7O0FBeUNGUyxXQUFReEIsVUFBUiIsImZpbGUiOiJQYWdpbmF0aW9uLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIFBhZ2luYXRpb24ge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItcGFnaW5hdGlvbic7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0ge1xuXHRcdFx0cGFnZUluZGV4OiB7IC8vIHRoZSBjdXJyZW50IHBhZ2UgdGhlIHBhZ2luYXRpb24gd2lkZ2V0IGlzIG9uXG5cdFx0XHRcdHR5cGU6IE51bWJlcixcblx0XHRcdFx0dmFsdWU6IDBcblx0XHRcdH0sXG5cdFx0XHRwYWdlU2l6ZTogTnVtYmVyLCAvLyB0aGUgbnVtYmVyIG9mIGl0ZW1zIHBlciBwYWdlXG5cdFx0XHRudW1JdGVtczogTnVtYmVyIC8vIHRoZSBudW1iZXIgb2YgdG90YWwgaXRlbXNcblx0XHR9XG5cdH1cblxuXHRnZXQgb2JzZXJ2ZXJzKCkge1xuXHRcdHJldHVybiBbJ3NldE51bWJlck9mUGFnZXMocGFnZVNpemUsIG51bUl0ZW1zKScsICdzZXRQYWdlV2luZG93KHBhZ2VJbmRleCwgcGFnZVNpemUsIG51bUl0ZW1zKScsICdzZXROZXh0RGlzYWJsZWQocGFnZUluZGV4LCBudW1QYWdlcyknLCAnc2V0UHJldmlvdXNEaXNhYmxlZChwYWdlSW5kZXgpJywgJ3NldFBhZ2VOdW0ocGFnZUluZGV4KSddXG5cdH1cblxuXHRuZXh0KCkge1xuXHRcdHRoaXMucGFnZUluZGV4Kys7XG5cdFx0dGhpcy5maXJlUGFnZUV2ZW50KCduZXh0Jyk7XG5cdH1cblxuXHRwcmV2aW91cygpIHtcblx0XHR0aGlzLnBhZ2VJbmRleC0tO1xuXHRcdHRoaXMuZmlyZVBhZ2VFdmVudCgncHJldmlvdXMnKTtcblx0fVxuXG5cdHNldE51bWJlck9mUGFnZXMoKSB7XG5cdFx0dGhpcy5udW1QYWdlcyA9IE1hdGguY2VpbCh0aGlzLm51bUl0ZW1zIC8gdGhpcy5wYWdlU2l6ZSk7XG5cdH1cblxuXHRzZXRQYWdlV2luZG93KCkge1xuXHRcdGxldCBzdGFydCA9IHRoaXMucGFnZUluZGV4ICogdGhpcy5wYWdlU2l6ZTtcblx0XHRsZXQgZW5kID0gc3RhcnQgKyB0aGlzLnBhZ2VTaXplO1xuXHRcdGlmKGVuZCA+PSB0aGlzLm51bUl0ZW1zKVxuXHRcdFx0ZW5kID0gdGhpcy5udW1JdGVtcztcblx0XHR0aGlzLnBhZ2VXaW5kb3cgPSBbc3RhcnQsIGVuZF07XG5cdH1cblxuXHRzZXROZXh0RGlzYWJsZWQoKSB7XG5cdFx0dGhpcy5uZXh0RGlzYWJsZWQgPSB0aGlzLnBhZ2VJbmRleCA9PT0gKHRoaXMubnVtUGFnZXMgLSAxKTtcblx0fVxuXG5cdHNldFByZXZpb3VzRGlzYWJsZWQoKSB7XG5cdFx0dGhpcy5wcmV2aW91c0Rpc2FibGVkID0gdGhpcy5wYWdlSW5kZXggPT09IDA7XG5cdH1cblxuXHRzZXRQYWdlTnVtKCkge1xuXHRcdHRoaXMucGFnZU51bSA9IHRoaXMucGFnZUluZGV4ICsgMTtcblx0fVxuXG5cdGZpcmVQYWdlRXZlbnQoZGlyZWN0aW9uKSB7XG5cdFx0dGhpcy5maXJlKCdwYWdpbmF0aW9uLWNoYW5nZWQnLCB7ZGlyZWN0aW9uOiBkaXJlY3Rpb24sIHBhZ2U6IHRoaXMucGFnZU51bSwgaW5kZXg6IHRoaXMucGFnZUluZGV4LCB3aW5kb3c6IHRoaXMucGFnZVdpbmRvd30pO1xuXHR9XG59XG5cblBvbHltZXIoUGFnaW5hdGlvbik7Il19
'use strict';

System.register('common/forms/sb-typeahead/Typeahead.js', [], function (_export, _context) {
	var _createClass, wildCards, resultLimit, Typeahead;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			wildCards = new RegExp('[*_%]+');
			resultLimit = 10;

			_export('Typeahead', Typeahead = function () {
				function Typeahead() {
					_classCallCheck(this, Typeahead);
				}

				_createClass(Typeahead, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-typeahead';

						this.properties = {
							items: {
								type: Array
							},
							selectedItem: {
								type: Object
							},
							itemsList: {
								type: Array,
								observer: 'itemsListChanged'
							},
							labels: {
								type: String,
								value: function value() {
									return this.getAttribute('labels') || ['label'];
								}
							},
							labelValue: {
								type: String
							},
							value: {
								type: String
							},
							delimiter: {
								type: String
							},
							savedLabelValue: {
								type: String
							},
							invalidLabel: {
								type: Boolean,
								value: function value() {
									return false;
								}
							},
							hasList: {
								type: Boolean,
								value: function value() {
									return false;
								}
							},
							hasLabel: {
								type: Boolean,
								value: function value() {
									return false;
								}
							},
							optionIndex: {
								type: Number,
								value: 0
							}
						};

						this.observers = ['itemsChanged(items, selectedItem, value)'];
					}
				}, {
					key: 'itemsChanged',
					value: function itemsChanged() {
						this.itemsList = this.items;
						var len = this.items.length;
						if (len && this.selectedItem) {
							this.valueAttr = this.value ? this.value : 'value';
							this.$.itemLabel.value = this.selectedItem[this.valueAttr];
						}
					}
				}, {
					key: 'itemsListChanged',
					value: function itemsListChanged() {
						Polymer.dom.flush();

						var options = this.$.selector.querySelectorAll('.option'),
						    numOfOptions = options.length,
						    numOfLabels = this.labels.length;
						if (numOfOptions > 0) {
							options[0].setAttribute('selected', '');
							for (var i = 0; i < numOfOptions; i++) {
								var item = this.itemsList[i],
								    html = '';
								for (var j = 0; j < numOfLabels; j++) {
									var label = '_' + this.labels[j],
									    delimiter = j === 0 ? '' : this.delimiter,
									    labelValue = item[label] ? item[label] : item[this.labels[j]];
									html += delimiter + labelValue;
								}
								options[i].innerHTML = html;
							}
						}
					}
				}, {
					key: 'getSelectedItemValue',
					value: function getSelectedItemValue() {
						return this.selectedItem ? this.selectedItem[this.valueAttr] : '';
					}
				}, {
					key: 'revert',
					value: function revert() {
						this.labelValue = this.selectedItem[this.valueAttr];
						this.$.itemLabel.blur();
					}
				}, {
					key: 'clear',
					value: function clear() {
						this.labelValue = '';
						this.$.itemLabel.focus();
						this.hide();
					}
				}, {
					key: 'hide',
					value: function hide() {
						this.hasList = false;
						this.hasLabel = false;
						this.invalidLabel = false;
						this.optionIndex = 0;
					}
				}, {
					key: 'cloneItem',
					value: function cloneItem(item) {
						var clone = {},
						    keys = Object.keys(item),
						    len = keys.length;
						for (var i = 0; i < len; i++) {
							var key = keys[i];
							clone[key] = item[key];
						}
						return clone;
					}
				}, {
					key: 'updateItem',
					value: function updateItem(item) {
						var keys = Object.keys(this.selectedItem),
						    len = keys.length;
						for (var i = 0; i < len; i++) {
							var key = keys[i];
							this.selectedItem[key] = item[key];
						}

						var labelValue = '',
						    numOfLabels = this.labels.length;
						for (var j = 0; j < numOfLabels; j++) {
							var delimiter = j === 0 ? '' : this.delimiter;
							labelValue += delimiter + this.selectedItem[this.labels[j]];
						}
						this.labelValue = labelValue;
					}
				}, {
					key: 'submitItem',
					value: function submitItem(e) {
						this.updateItem(e.model.item);
						this.hide();
					}
				}, {
					key: 'selectAdjacentItem',
					value: function selectAdjacentItem(keyCode) {
						var len = this.itemsList.length;
						if (this.optionIndex >= 0 && this.optionIndex < len) {
							this.$.selector.children[this.optionIndex].removeAttribute('selected');
							if (keyCode === 38) {
								this.optionIndex = this.optionIndex === 0 ? len - 1 : this.optionIndex - 1;
							} else if (keyCode === 40) {
								this.optionIndex = this.optionIndex === len - 1 ? 0 : this.optionIndex + 1;
							}
							this.$.selector.children[this.optionIndex].setAttribute('selected', '');
						}
					}
				}, {
					key: 'updateItemsList',
					value: function updateItemsList() {
						var result = [],
						    highlighted = false;
						if (this.labelValue) {
							var searchLabel = this.labelValue.replace(wildCards, '.+'),
							    searchText = new RegExp(searchLabel, 'i');

							var numOfItems = this.items.length,
							    numOfLabels = this.labels.length;
							for (var i = 0; i < numOfItems; i++) {
								var item = this.items[i],
								    clone = this.cloneItem(item);
								for (var j = 0; j < numOfLabels; j++) {
									var itemLabel = item[this.labels[j]];
									if (searchText.test(itemLabel)) {
										var label = '_' + this.labels[j];
										clone[label] = itemLabel.replace(searchText, '<span style="font-weight:bold;">$&</span>');
										highlighted = true;
									}
								}
								if (highlighted) {
									result.push(clone);
									highlighted = false;
								}
								if (result.length >= resultLimit) {
									break;
								}
							}
						}
						return result;
					}
				}, {
					key: 'suggest',
					value: function suggest(e) {
						switch (e.keyCode) {
							case 13:
								this.updateItem(this.itemsList[this.optionIndex]);
								this.$.itemLabel.blur();
								this.hide();
								break;
							case 27:
								this.revert();
								this.hide();
								break;
							case 38:
							case 40:
								this.selectAdjacentItem(e.keyCode);
								break;
							default:
								this.invalidLabel = false;
								if (this.labelValue) {
									this.hasList = true;
									this.hasLabel = true;
								}

								this.itemsList = this.updateItemsList();
								if (this.itemsList.length === 0) {
									if (this.labelValue) {
										this.invalidLabel = true;
									} else {
										this.hasLabel = false;
									}
									this.hasList = false;
								}
								break;
						}
					}
				}]);

				return Typeahead;
			}());

			_export('Typeahead', Typeahead);

			Polymer(Typeahead);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlR5cGVhaGVhZC5qcyJdLCJuYW1lcyI6WyJ3aWxkQ2FyZHMiLCJSZWdFeHAiLCJyZXN1bHRMaW1pdCIsIlR5cGVhaGVhZCIsImlzIiwicHJvcGVydGllcyIsIml0ZW1zIiwidHlwZSIsIkFycmF5Iiwic2VsZWN0ZWRJdGVtIiwiT2JqZWN0IiwiaXRlbXNMaXN0Iiwib2JzZXJ2ZXIiLCJsYWJlbHMiLCJTdHJpbmciLCJ2YWx1ZSIsImdldEF0dHJpYnV0ZSIsImxhYmVsVmFsdWUiLCJkZWxpbWl0ZXIiLCJzYXZlZExhYmVsVmFsdWUiLCJpbnZhbGlkTGFiZWwiLCJCb29sZWFuIiwiaGFzTGlzdCIsImhhc0xhYmVsIiwib3B0aW9uSW5kZXgiLCJOdW1iZXIiLCJvYnNlcnZlcnMiLCJsZW4iLCJsZW5ndGgiLCJ2YWx1ZUF0dHIiLCIkIiwiaXRlbUxhYmVsIiwiUG9seW1lciIsImRvbSIsImZsdXNoIiwib3B0aW9ucyIsInNlbGVjdG9yIiwicXVlcnlTZWxlY3RvckFsbCIsIm51bU9mT3B0aW9ucyIsIm51bU9mTGFiZWxzIiwic2V0QXR0cmlidXRlIiwiaSIsIml0ZW0iLCJodG1sIiwiaiIsImxhYmVsIiwiaW5uZXJIVE1MIiwiYmx1ciIsImZvY3VzIiwiaGlkZSIsImNsb25lIiwia2V5cyIsImtleSIsImUiLCJ1cGRhdGVJdGVtIiwibW9kZWwiLCJrZXlDb2RlIiwiY2hpbGRyZW4iLCJyZW1vdmVBdHRyaWJ1dGUiLCJyZXN1bHQiLCJoaWdobGlnaHRlZCIsInNlYXJjaExhYmVsIiwicmVwbGFjZSIsInNlYXJjaFRleHQiLCJudW1PZkl0ZW1zIiwiY2xvbmVJdGVtIiwidGVzdCIsInB1c2giLCJyZXZlcnQiLCJzZWxlY3RBZGphY2VudEl0ZW0iLCJ1cGRhdGVJdGVtc0xpc3QiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBQ01BLFksR0FBWSxJQUFJQyxNQUFKLENBQVcsUUFBWCxDO0FBQ2RDLGMsR0FBYyxFOzt3QkFHTEMs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cmNlc0NvbnRlbnQiOlsiXG5jb25zdCB3aWxkQ2FyZHMgPSBuZXcgUmVnRXhwKCdbKl8lXSsnKTtcbmxldCByZXN1bHRMaW1pdCA9IDEwOyAvLyBmaXJzdCAxMCBtYXRjaGluZyBpdGVtc1xuXG5cbmV4cG9ydCBjbGFzcyBUeXBlYWhlYWQge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItdHlwZWFoZWFkJztcblxuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdGl0ZW1zOiB7XG5cdFx0XHRcdHR5cGU6IEFycmF5XG5cdFx0XHR9LFxuXHRcdFx0c2VsZWN0ZWRJdGVtOntcblx0XHRcdFx0dHlwZTogT2JqZWN0XG5cdFx0XHR9LFxuXHRcdFx0aXRlbXNMaXN0OiB7XG5cdFx0XHRcdHR5cGU6IEFycmF5LFxuXHRcdFx0XHRvYnNlcnZlcjogJ2l0ZW1zTGlzdENoYW5nZWQnXG5cdFx0XHR9LFxuXHRcdFx0bGFiZWxzOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZyxcblx0XHRcdFx0dmFsdWU6IGZ1bmN0aW9uICgpIHsgcmV0dXJuIHRoaXMuZ2V0QXR0cmlidXRlKCdsYWJlbHMnKSB8fCBbJ2xhYmVsJ107IH1cblx0XHRcdH0sXG5cdFx0XHRsYWJlbFZhbHVlOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZ1xuXHRcdFx0fSxcblx0XHRcdHZhbHVlOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZ1xuXHRcdFx0fSxcblx0XHRcdGRlbGltaXRlcjoge1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHR9LFxuXHRcdFx0c2F2ZWRMYWJlbFZhbHVlOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZ1xuXHRcdFx0fSxcblx0XHRcdGludmFsaWRMYWJlbDoge1xuXHRcdFx0XHR0eXBlOiBCb29sZWFuLFxuXHRcdFx0XHR2YWx1ZTogZnVuY3Rpb24oKSB7IHJldHVybiBmYWxzZTsgfSxcblx0XHRcdH0sXG5cdFx0XHRoYXNMaXN0OiB7XG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIGZhbHNlOyB9LFxuXHRcdFx0fSxcblx0XHRcdGhhc0xhYmVsOiB7XG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmdW5jdGlvbigpIHsgcmV0dXJuIGZhbHNlOyB9XG5cdFx0XHR9LFxuXHRcdFx0b3B0aW9uSW5kZXg6IHtcblx0XHRcdFx0dHlwZTogTnVtYmVyLFxuXHRcdFx0XHR2YWx1ZTogMFxuXHRcdFx0fVxuXHRcdH07XG5cblx0XHR0aGlzLm9ic2VydmVycyA9IFsnaXRlbXNDaGFuZ2VkKGl0ZW1zLCBzZWxlY3RlZEl0ZW0sIHZhbHVlKSddO1xuXHR9XG5cblx0aXRlbXNDaGFuZ2VkKCkge1xuXHRcdHRoaXMuaXRlbXNMaXN0ID0gdGhpcy5pdGVtcztcblx0XHRsZXQgbGVuID0gdGhpcy5pdGVtcy5sZW5ndGg7XG5cdFx0aWYoIGxlbiAmJiB0aGlzLnNlbGVjdGVkSXRlbSApIHtcblx0XHRcdC8vIHNldCBpbml0aWFsIGxhYmVsIHRvIHNlbGVjdGVkIGl0ZW0gdmFsdWVcblx0XHRcdHRoaXMudmFsdWVBdHRyID0gdGhpcy52YWx1ZSA/IHRoaXMudmFsdWUgOiAndmFsdWUnO1xuXHRcdFx0dGhpcy4kLml0ZW1MYWJlbC52YWx1ZSA9IHRoaXMuc2VsZWN0ZWRJdGVtW3RoaXMudmFsdWVBdHRyXTtcblx0XHR9XG5cdH1cblxuXHRpdGVtc0xpc3RDaGFuZ2VkKCkge1xuXHRcdFBvbHltZXIuZG9tLmZsdXNoKCk7IC8vIG5lZWQgdG8gdXBkYXRlIERPTSBiZWZvcmUgdXBkYXRpbmcgaW5uZXJIVE1MIG9mIHRoZSBuZXcgZWxlbWVudHMgb24gdGhlIGxpc3RcblxuXHRcdGxldCBvcHRpb25zID0gdGhpcy4kLnNlbGVjdG9yLnF1ZXJ5U2VsZWN0b3JBbGwoJy5vcHRpb24nKSxcblx0XHRcdG51bU9mT3B0aW9ucyA9IG9wdGlvbnMubGVuZ3RoLFxuXHRcdFx0bnVtT2ZMYWJlbHMgPSB0aGlzLmxhYmVscy5sZW5ndGg7XG5cdFx0aWYgKCBudW1PZk9wdGlvbnMgPiAwICkge1xuXHRcdFx0b3B0aW9uc1swXS5zZXRBdHRyaWJ1dGUoICdzZWxlY3RlZCcsICcnICk7IC8vaGlnaGxpZ2h0IHRoZSBmaXJzdCBvcHRpb25cblx0XHRcdGZvciAoIGxldCBpID0gMDsgaSA8IG51bU9mT3B0aW9uczsgaSsrICkgeyAvLyBoaWdobGlnaHQgbWF0Y2hpbmcgY2hhcmFjdGVycyBpbiB0aGUgbGFiZWxcblx0XHRcdFx0bGV0IGl0ZW0gPSB0aGlzLml0ZW1zTGlzdFtpXSxcblx0XHRcdFx0XHRodG1sID0gJyc7XG5cdFx0XHRcdGZvciAoIGxldCBqPTA7IGogPCBudW1PZkxhYmVsczsgaisrKSB7XG5cdFx0XHRcdFx0bGV0IGxhYmVsID0gJ18nICsgdGhpcy5sYWJlbHNbal0sXG5cdFx0XHRcdFx0XHRkZWxpbWl0ZXIgPSAoIGo9PT0wICkgPyAnJyA6IHRoaXMuZGVsaW1pdGVyLFxuXHRcdFx0XHRcdFx0bGFiZWxWYWx1ZSA9IGl0ZW1bbGFiZWxdID8gaXRlbVtsYWJlbF0gOiBpdGVtW3RoaXMubGFiZWxzW2pdXTtcblx0XHRcdFx0XHRodG1sICs9IGRlbGltaXRlciArIGxhYmVsVmFsdWU7XG5cdFx0XHRcdH1cblx0XHRcdFx0b3B0aW9uc1tpXS5pbm5lckhUTUwgPSBodG1sO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdGdldFNlbGVjdGVkSXRlbVZhbHVlKCkge1xuXHRcdHJldHVybiB0aGlzLnNlbGVjdGVkSXRlbSA/IHRoaXMuc2VsZWN0ZWRJdGVtW3RoaXMudmFsdWVBdHRyXSA6ICcnO1xuXHR9XG5cblx0cmV2ZXJ0KCkge1xuXHRcdHRoaXMubGFiZWxWYWx1ZSA9IHRoaXMuc2VsZWN0ZWRJdGVtW3RoaXMudmFsdWVBdHRyXTtcblx0XHR0aGlzLiQuaXRlbUxhYmVsLmJsdXIoKTtcblx0fVxuXG5cdGNsZWFyKCkge1xuXHRcdHRoaXMubGFiZWxWYWx1ZSA9ICcnO1xuXHRcdHRoaXMuJC5pdGVtTGFiZWwuZm9jdXMoKTtcblx0XHR0aGlzLmhpZGUoKTtcblx0fVxuXG5cdGhpZGUoKSB7XG5cdFx0dGhpcy5oYXNMaXN0ID0gZmFsc2U7XG5cdFx0dGhpcy5oYXNMYWJlbCA9IGZhbHNlO1xuXHRcdHRoaXMuaW52YWxpZExhYmVsID0gZmFsc2U7XG5cdFx0dGhpcy5vcHRpb25JbmRleCA9IDA7XG5cdH1cblxuXHRjbG9uZUl0ZW0oaXRlbSkge1xuXHRcdGxldCBjbG9uZSA9IHt9LFxuXHRcdFx0a2V5cyA9IE9iamVjdC5rZXlzKGl0ZW0pLFxuXHRcdFx0bGVuID0ga2V5cy5sZW5ndGg7XG5cdFx0Zm9yICggbGV0IGkgPSAwOyBpIDwgbGVuOyBpKysgKSB7XG5cdFx0XHRsZXQga2V5ID0ga2V5c1tpXTtcblx0XHRcdGNsb25lW2tleV0gPSBpdGVtW2tleV07XG5cdFx0fVxuXHRcdHJldHVybiBjbG9uZTtcblx0fVxuXG5cdHVwZGF0ZUl0ZW0oaXRlbSkge1xuXHRcdC8vdXBkYXRlIHNlbGVjdGVkSXRlbVxuXHRcdGxldCBrZXlzID0gT2JqZWN0LmtleXModGhpcy5zZWxlY3RlZEl0ZW0pLFxuXHRcdFx0bGVuID0ga2V5cy5sZW5ndGg7XG5cdFx0Zm9yICggbGV0IGk9MDsgaSA8IGxlbjsgaSsrKSB7XG5cdFx0XHRsZXQga2V5ID0ga2V5c1tpXTtcblx0XHRcdHRoaXMuc2VsZWN0ZWRJdGVtW2tleV0gPSBpdGVtW2tleV07XG5cdFx0fVxuXG5cdFx0Ly91cGRhdGUgdmFsdWUgaW4gdGhlIGlucHV0IGJveFxuXHRcdGxldCBsYWJlbFZhbHVlID0gJycsXG5cdFx0XHRudW1PZkxhYmVscyA9IHRoaXMubGFiZWxzLmxlbmd0aDtcblx0XHRmb3IgKCBsZXQgaj0wOyBqIDwgbnVtT2ZMYWJlbHM7IGorKykge1xuXHRcdFx0bGV0IGRlbGltaXRlciA9ICggaj09PTAgKSA/ICcnIDogdGhpcy5kZWxpbWl0ZXI7XG5cdFx0XHRsYWJlbFZhbHVlICs9IGRlbGltaXRlciArIHRoaXMuc2VsZWN0ZWRJdGVtW3RoaXMubGFiZWxzW2pdXTtcblx0XHR9XG5cdFx0dGhpcy5sYWJlbFZhbHVlID0gbGFiZWxWYWx1ZTtcblx0fVxuXG5cdHN1Ym1pdEl0ZW0oZSkge1xuXHRcdHRoaXMudXBkYXRlSXRlbSggZS5tb2RlbC5pdGVtICk7XG5cdFx0dGhpcy5oaWRlKCk7XG5cdH1cblxuXHRzZWxlY3RBZGphY2VudEl0ZW0oa2V5Q29kZSkge1xuXHRcdGxldCBsZW4gPSB0aGlzLml0ZW1zTGlzdC5sZW5ndGg7XG5cdFx0aWYgKCB0aGlzLm9wdGlvbkluZGV4ID49IDAgJiYgdGhpcy5vcHRpb25JbmRleCA8IGxlbiApIHtcblx0XHRcdHRoaXMuJC5zZWxlY3Rvci5jaGlsZHJlblt0aGlzLm9wdGlvbkluZGV4XS5yZW1vdmVBdHRyaWJ1dGUoICdzZWxlY3RlZCcgKTtcblx0XHRcdGlmICgga2V5Q29kZSA9PT0gMzggKSB7XG5cdFx0XHRcdHRoaXMub3B0aW9uSW5kZXggPSB0aGlzLm9wdGlvbkluZGV4ID09PSAwID8gbGVuIC0gMSA6IHRoaXMub3B0aW9uSW5kZXggLSAxO1xuXHRcdFx0fSBlbHNlIGlmICgga2V5Q29kZSA9PT0gNDAgKSB7XG5cdFx0XHRcdHRoaXMub3B0aW9uSW5kZXggPSB0aGlzLm9wdGlvbkluZGV4ID09PSBsZW4gLSAxID8gMCA6IHRoaXMub3B0aW9uSW5kZXggKyAxO1xuXHRcdFx0fVxuXHRcdFx0dGhpcy4kLnNlbGVjdG9yLmNoaWxkcmVuW3RoaXMub3B0aW9uSW5kZXhdLnNldEF0dHJpYnV0ZSggJ3NlbGVjdGVkJywgJycgKTtcblx0XHR9XG5cdH1cblxuXHR1cGRhdGVJdGVtc0xpc3QoKSB7XG5cdFx0bGV0IHJlc3VsdCA9IFtdLFxuXHRcdFx0aGlnaGxpZ2h0ZWQgPSBmYWxzZTtcblx0XHRpZiAoIHRoaXMubGFiZWxWYWx1ZSApIHtcblx0XHRcdGxldCBzZWFyY2hMYWJlbCA9IHRoaXMubGFiZWxWYWx1ZS5yZXBsYWNlKCB3aWxkQ2FyZHMsICcuKycgKSwgLy9jYXB0dXJlIHdpbGQgY2FyZCBjaGFyYWN0ZXJzICgxIG9yIG1vcmUpXG5cdFx0XHRcdHNlYXJjaFRleHQgPSBuZXcgUmVnRXhwKCBzZWFyY2hMYWJlbCwgJ2knICk7XG5cblx0XHRcdGxldCBudW1PZkl0ZW1zID0gdGhpcy5pdGVtcy5sZW5ndGgsXG5cdFx0XHRcdG51bU9mTGFiZWxzID0gdGhpcy5sYWJlbHMubGVuZ3RoO1xuXHRcdFx0Zm9yICggbGV0IGkgPSAwOyBpIDwgbnVtT2ZJdGVtczsgaSsrICkge1xuXHRcdFx0XHRsZXQgaXRlbSA9IHRoaXMuaXRlbXNbaV0sXG5cdFx0XHRcdFx0Y2xvbmUgPSB0aGlzLmNsb25lSXRlbShpdGVtKTsgLy8gY2xvbmUgaXRlbSB0byBwcmVzZXJ2ZSBvcmlnaW5hbCBvYmplY3Rcblx0XHRcdFx0Zm9yICggbGV0IGo9MDsgaiA8IG51bU9mTGFiZWxzOyBqKyspIHtcblx0XHRcdFx0XHRsZXQgaXRlbUxhYmVsID0gaXRlbVt0aGlzLmxhYmVsc1tqXV07XG5cdFx0XHRcdFx0aWYgKCBzZWFyY2hUZXh0LnRlc3QoaXRlbUxhYmVsKSApIHtcblx0XHRcdFx0XHRcdGxldCBsYWJlbCA9ICdfJyArIHRoaXMubGFiZWxzW2pdOyAvLyBjcmVhdGUgYSBuZXcgbGFiZWwgZm9yIGludGVybmFsbHkgc3RvcmluZyB0aGUgaGlnaGxpZ2h0ZWQgaHRtbCB0ZXh0XG5cdFx0XHRcdFx0XHRjbG9uZVtsYWJlbF0gPSBpdGVtTGFiZWwucmVwbGFjZSggc2VhcmNoVGV4dCwgJzxzcGFuIHN0eWxlPVwiZm9udC13ZWlnaHQ6Ym9sZDtcIj4kJjwvc3Bhbj4nICk7XG5cdFx0XHRcdFx0XHRoaWdobGlnaHRlZCA9IHRydWU7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHRcdGlmICggaGlnaGxpZ2h0ZWQgKSB7XG5cdFx0XHRcdFx0cmVzdWx0LnB1c2goY2xvbmUpO1xuXHRcdFx0XHRcdGhpZ2hsaWdodGVkID0gZmFsc2U7XG5cdFx0XHRcdH1cblx0XHRcdFx0aWYgKCByZXN1bHQubGVuZ3RoID49IHJlc3VsdExpbWl0ICkge1xuXHRcdFx0XHRcdGJyZWFrO1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXHRcdHJldHVybiByZXN1bHQ7XG5cdH1cblxuXHRzdWdnZXN0KGUpIHtcblx0XHRzd2l0Y2goIGUua2V5Q29kZSApIHtcblx0XHRcdGNhc2UgMTM6IC8vZW50ZXIgLSBzdWJtaXQgdGhlIHNlbGVjdGVkIG9wdGlvblxuXHRcdFx0XHR0aGlzLnVwZGF0ZUl0ZW0oIHRoaXMuaXRlbXNMaXN0W3RoaXMub3B0aW9uSW5kZXhdICk7XG5cdFx0XHRcdHRoaXMuJC5pdGVtTGFiZWwuYmx1cigpO1xuXHRcdFx0XHR0aGlzLmhpZGUoKTtcblx0XHRcdFx0YnJlYWs7XG5cdFx0XHRjYXNlIDI3OiAvLyBlc2MgLSBwcmVzZXJ2ZSBvbGQvb3JpZ2luYWxseSBwZXJzaXN0ZWQgdmFsdWVcblx0XHRcdFx0dGhpcy5yZXZlcnQoKTtcblx0XHRcdFx0dGhpcy5oaWRlKCk7XG5cdFx0XHRcdGJyZWFrO1xuXHRcdFx0Y2FzZSAzODogLy8gdXAgYXJyb3dcblx0XHRcdGNhc2UgNDA6IC8vIGRvd24gYXJyb3cgLSBtb3ZlIHRyb3VnaCBtYXRjaGluZyBsaXN0IGl0ZW1zXG5cdFx0XHRcdHRoaXMuc2VsZWN0QWRqYWNlbnRJdGVtKCBlLmtleUNvZGUgKTtcblx0XHRcdFx0YnJlYWs7XG5cdFx0XHRkZWZhdWx0OiAvLyByZS1idWlsZCBpdGVtc0xpc3Rcblx0XHRcdFx0dGhpcy5pbnZhbGlkTGFiZWwgPSBmYWxzZTtcblx0XHRcdFx0aWYgKCB0aGlzLmxhYmVsVmFsdWUgKSB7XG5cdFx0XHRcdFx0dGhpcy5oYXNMaXN0ID0gdHJ1ZTtcblx0XHRcdFx0XHR0aGlzLmhhc0xhYmVsID0gdHJ1ZTtcblx0XHRcdFx0fVxuXG5cdFx0XHRcdHRoaXMuaXRlbXNMaXN0ID0gdGhpcy51cGRhdGVJdGVtc0xpc3QoKTtcblx0XHRcdFx0aWYgKCB0aGlzLml0ZW1zTGlzdC5sZW5ndGggPT09IDAgKSB7XG5cdFx0XHRcdFx0aWYgKCB0aGlzLmxhYmVsVmFsdWUgKSB7XG5cdFx0XHRcdFx0XHR0aGlzLmludmFsaWRMYWJlbCA9IHRydWU7XG5cdFx0XHRcdFx0fSBlbHNlIHtcblx0XHRcdFx0XHRcdHRoaXMuaGFzTGFiZWwgPSBmYWxzZTtcblx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0dGhpcy5oYXNMaXN0ID0gZmFsc2U7XG5cdFx0XHRcdH1cblx0XHRcdFx0YnJlYWs7XG5cdFx0fVxuXHR9XG5cbn1cblxuUG9seW1lciggVHlwZWFoZWFkICk7XG4iXX0=
'use strict';

System.register('common/layout/fields/FieldSetHandler.js', [], function (_export, _context) {
	var _createClass, FieldSetHandler;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('FieldSetHandler', FieldSetHandler = function () {
				function FieldSetHandler(fieldSets, desktop, tablet, phone) {
					_classCallCheck(this, FieldSetHandler);

					this.fieldSets = fieldSets;
					this.desktopFields = { name: desktop };
					if (tablet) this.tabletFields = { name: tablet };
					if (phone) this.phoneFields = { name: phone };
				}

				_createClass(FieldSetHandler, [{
					key: 'getByViewport',
					value: function getByViewport(viewport) {
						var size = viewport ? viewport.current().size : '';
						switch (size) {
							case 'XS':
								return this._getPhoneFieldSet();
							case 'S':
								return this._getTabletFieldSet();
							default:
								return this._getDesktopFieldSet();
						}
					}
				}, {
					key: '_getPhoneFieldSet',
					value: function _getPhoneFieldSet() {
						var fieldSet = this.phoneFields ? this.fieldSets[this.phoneFields.name] : null;
						if (!fieldSet || fieldSet.length === 0) return this._getTabletFieldSet();

						this.phoneFields.fields = fieldSet;
						return this.phoneFields;
					}
				}, {
					key: '_getTabletFieldSet',
					value: function _getTabletFieldSet() {
						var fieldSet = this.tabletFields ? this.fieldSets[this.tabletFields.name] : null;
						if (!fieldSet || fieldSet.length === 0) return this._getDesktopFieldSet();

						this.tabletFields.fields = fieldSet;
						return this.tabletFields;
					}
				}, {
					key: '_getDesktopFieldSet',
					value: function _getDesktopFieldSet() {
						this.desktopFields.fields = this.fieldSets[this.desktopFields.name];
						return this.desktopFields;
					}
				}]);

				return FieldSetHandler;
			}());

			_export('FieldSetHandler', FieldSetHandler);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkZpZWxkU2V0SGFuZGxlci5qcyJdLCJuYW1lcyI6WyJGaWVsZFNldEhhbmRsZXIiLCJmaWVsZFNldHMiLCJkZXNrdG9wIiwidGFibGV0IiwicGhvbmUiLCJkZXNrdG9wRmllbGRzIiwibmFtZSIsInRhYmxldEZpZWxkcyIsInBob25lRmllbGRzIiwidmlld3BvcnQiLCJzaXplIiwiY3VycmVudCIsIl9nZXRQaG9uZUZpZWxkU2V0IiwiX2dldFRhYmxldEZpZWxkU2V0IiwiX2dldERlc2t0b3BGaWVsZFNldCIsImZpZWxkU2V0IiwibGVuZ3RoIiwiZmllbGRzIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs4QkFBYUEsZTtBQUVaLDZCQUFZQyxTQUFaLEVBQXVCQyxPQUF2QixFQUFnQ0MsTUFBaEMsRUFBd0NDLEtBQXhDLEVBQStDO0FBQUE7O0FBQzlDLFVBQUtILFNBQUwsR0FBaUJBLFNBQWpCO0FBQ0EsVUFBS0ksYUFBTCxHQUFxQixFQUFDQyxNQUFNSixPQUFQLEVBQXJCO0FBQ0EsU0FBR0MsTUFBSCxFQUNDLEtBQUtJLFlBQUwsR0FBb0IsRUFBQ0QsTUFBTUgsTUFBUCxFQUFwQjtBQUNELFNBQUdDLEtBQUgsRUFDQyxLQUFLSSxXQUFMLEdBQW1CLEVBQUNGLE1BQU1GLEtBQVAsRUFBbkI7QUFDRDs7OzttQ0FFYUssUSxFQUFVO0FBQ3ZCLFVBQUlDLE9BQU9ELFdBQVdBLFNBQVNFLE9BQVQsR0FBbUJELElBQTlCLEdBQXFDLEVBQWhEO0FBQ0EsY0FBT0EsSUFBUDtBQUNDLFlBQUssSUFBTDtBQUNDLGVBQU8sS0FBS0UsaUJBQUwsRUFBUDtBQUNELFlBQUssR0FBTDtBQUNDLGVBQU8sS0FBS0Msa0JBQUwsRUFBUDtBQUNEO0FBQ0MsZUFBTyxLQUFLQyxtQkFBTCxFQUFQO0FBTkY7QUFRQTs7O3lDQUVtQjtBQUNuQixVQUFJQyxXQUFXLEtBQUtQLFdBQUwsR0FBbUIsS0FBS1AsU0FBTCxDQUFlLEtBQUtPLFdBQUwsQ0FBaUJGLElBQWhDLENBQW5CLEdBQTJELElBQTFFO0FBQ0EsVUFBRyxDQUFDUyxRQUFELElBQWFBLFNBQVNDLE1BQVQsS0FBb0IsQ0FBcEMsRUFDQyxPQUFPLEtBQUtILGtCQUFMLEVBQVA7O0FBRUQsV0FBS0wsV0FBTCxDQUFpQlMsTUFBakIsR0FBMEJGLFFBQTFCO0FBQ0EsYUFBTyxLQUFLUCxXQUFaO0FBQ0E7OzswQ0FFb0I7QUFDcEIsVUFBSU8sV0FBVyxLQUFLUixZQUFMLEdBQW9CLEtBQUtOLFNBQUwsQ0FBZSxLQUFLTSxZQUFMLENBQWtCRCxJQUFqQyxDQUFwQixHQUE2RCxJQUE1RTtBQUNBLFVBQUcsQ0FBQ1MsUUFBRCxJQUFhQSxTQUFTQyxNQUFULEtBQW9CLENBQXBDLEVBQ0MsT0FBTyxLQUFLRixtQkFBTCxFQUFQOztBQUVELFdBQUtQLFlBQUwsQ0FBa0JVLE1BQWxCLEdBQTJCRixRQUEzQjtBQUNBLGFBQU8sS0FBS1IsWUFBWjtBQUNBOzs7MkNBRXFCO0FBQ3JCLFdBQUtGLGFBQUwsQ0FBbUJZLE1BQW5CLEdBQTRCLEtBQUtoQixTQUFMLENBQWUsS0FBS0ksYUFBTCxDQUFtQkMsSUFBbEMsQ0FBNUI7QUFDQSxhQUFPLEtBQUtELGFBQVo7QUFDQSIsImZpbGUiOiJGaWVsZFNldEhhbmRsZXIuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgRmllbGRTZXRIYW5kbGVyIHtcblxuXHRjb25zdHJ1Y3RvcihmaWVsZFNldHMsIGRlc2t0b3AsIHRhYmxldCwgcGhvbmUpIHtcblx0XHR0aGlzLmZpZWxkU2V0cyA9IGZpZWxkU2V0cztcblx0XHR0aGlzLmRlc2t0b3BGaWVsZHMgPSB7bmFtZTogZGVza3RvcH07XG5cdFx0aWYodGFibGV0KVxuXHRcdFx0dGhpcy50YWJsZXRGaWVsZHMgPSB7bmFtZTogdGFibGV0fTtcblx0XHRpZihwaG9uZSlcblx0XHRcdHRoaXMucGhvbmVGaWVsZHMgPSB7bmFtZTogcGhvbmV9O1xuXHR9XG5cblx0Z2V0QnlWaWV3cG9ydCh2aWV3cG9ydCkge1xuXHRcdGxldCBzaXplID0gdmlld3BvcnQgPyB2aWV3cG9ydC5jdXJyZW50KCkuc2l6ZSA6ICcnO1xuXHRcdHN3aXRjaChzaXplKSB7XG5cdFx0XHRjYXNlICdYUyc6XG5cdFx0XHRcdHJldHVybiB0aGlzLl9nZXRQaG9uZUZpZWxkU2V0KCk7XG5cdFx0XHRjYXNlICdTJzpcblx0XHRcdFx0cmV0dXJuIHRoaXMuX2dldFRhYmxldEZpZWxkU2V0KCk7XG5cdFx0XHRkZWZhdWx0OlxuXHRcdFx0XHRyZXR1cm4gdGhpcy5fZ2V0RGVza3RvcEZpZWxkU2V0KCk7XG5cdFx0fVxuXHR9XG5cblx0X2dldFBob25lRmllbGRTZXQoKSB7XG5cdFx0bGV0IGZpZWxkU2V0ID0gdGhpcy5waG9uZUZpZWxkcyA/IHRoaXMuZmllbGRTZXRzW3RoaXMucGhvbmVGaWVsZHMubmFtZV0gOiBudWxsO1xuXHRcdGlmKCFmaWVsZFNldCB8fCBmaWVsZFNldC5sZW5ndGggPT09IDApXG5cdFx0XHRyZXR1cm4gdGhpcy5fZ2V0VGFibGV0RmllbGRTZXQoKTtcblxuXHRcdHRoaXMucGhvbmVGaWVsZHMuZmllbGRzID0gZmllbGRTZXQ7XG5cdFx0cmV0dXJuIHRoaXMucGhvbmVGaWVsZHM7XG5cdH1cblxuXHRfZ2V0VGFibGV0RmllbGRTZXQoKSB7XG5cdFx0bGV0IGZpZWxkU2V0ID0gdGhpcy50YWJsZXRGaWVsZHMgPyB0aGlzLmZpZWxkU2V0c1t0aGlzLnRhYmxldEZpZWxkcy5uYW1lXSA6IG51bGw7XG5cdFx0aWYoIWZpZWxkU2V0IHx8IGZpZWxkU2V0Lmxlbmd0aCA9PT0gMClcblx0XHRcdHJldHVybiB0aGlzLl9nZXREZXNrdG9wRmllbGRTZXQoKTtcblxuXHRcdHRoaXMudGFibGV0RmllbGRzLmZpZWxkcyA9IGZpZWxkU2V0O1xuXHRcdHJldHVybiB0aGlzLnRhYmxldEZpZWxkcztcblx0fVxuXG5cdF9nZXREZXNrdG9wRmllbGRTZXQoKSB7XG5cdFx0dGhpcy5kZXNrdG9wRmllbGRzLmZpZWxkcyA9IHRoaXMuZmllbGRTZXRzW3RoaXMuZGVza3RvcEZpZWxkcy5uYW1lXTtcblx0XHRyZXR1cm4gdGhpcy5kZXNrdG9wRmllbGRzO1xuXHR9XG59Il19
'use strict';

System.register('common/layout/sb-div/Div.js', [], function (_export, _context) {
    var _createClass, Div;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('Div', Div = function () {
                function Div() {
                    _classCallCheck(this, Div);
                }

                _createClass(Div, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-div';
                    }
                }]);

                return Div;
            }());

            _export('Div', Div);

            Polymer(Div);
        }
    };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRpdi5qcyJdLCJuYW1lcyI6WyJEaXYiLCJpcyIsIlBvbHltZXIiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzJCQUFhQSxHOzs7Ozs7O3FEQUVRO0FBQ2IsNkJBQUtDLEVBQUwsR0FBVSxRQUFWO0FBQ0g7Ozs7Ozs7O0FBR0xDLG9CQUFRRixHQUFSIiwiZmlsZSI6IkRpdi5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBEaXYge1xuXG4gICAgYmVmb3JlUmVnaXN0ZXIoKSB7XG4gICAgICAgIHRoaXMuaXMgPSAnc2ItZGl2JztcbiAgICB9XG59XG5cblBvbHltZXIoRGl2KTsiXX0=
'use strict';

System.register('common/layout/sb-group/Group.js', [], function (_export, _context) {
	var _createClass, Group;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('Group', Group = function () {
				function Group() {
					_classCallCheck(this, Group);
				}

				_createClass(Group, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-group';
						this.properties = {
							item: String,
							group: Array,
							data: {
								type: Object,
								notify: true
							},
							parent: {
								type: String,
								value: null
							},
							model: {
								type: Object,
								value: null
							},
							groupClass: String,
							itemClass: String,
							groupDisplay: Object,
							primaryIndex: Number };
					}
				}, {
					key: 'buildGroup',
					value: function buildGroup() {
						var template = Polymer.dom(this.$.g).querySelector('template');
						if (template) Polymer.dom(template.parentNode).removeChild(template);

						template = document.createElement('template', 'dom-bind');
						template.model = this.model;
						template.data = this.data;
						this.buildItems(template);
						Polymer.dom(this.$.g).appendChild(template);
						this.template = template;

						Polymer.dom(this.$.g).observeNodes(function (info) {
							if (info.addedNodes[0]) this.bindElementEvents(info.addedNodes[0].childNodes);
						}.bind(this));
					}
				}, {
					key: 'buildItems',
					value: function buildItems(template) {
						var doc = template.content.ownerDocument;
						var root = doc.createElement('div');
						if (this.groupClass) Polymer.dom(root).setAttribute('class', this.groupClass);
						this.group.forEach(function (item, index) {
							var html = '<' + this.item + ' ' + 'item="' + item + '" ' + 'value="{{data.' + item + '}}" ' + 'model="[[model]]"';

							if (this.primaryIndex !== index && this.groupDisplay && this.groupDisplay[item]) html += ' field-label="' + this.groupDisplay[item] + '"';

							var classes = '';
							if (this.itemClass) classes += this.itemClass + ' ';
							if (this.primaryIndex === index) classes += 'primary {{selected}} {{expanded}}';else if (this.primaryIndex >= 0) classes += 'secondary {{expanded}}';

							if (classes) {
								var equals = classes.indexOf('{{') != -1 ? '$=' : '=';
								html += ' class' + equals + '"' + classes + '"';
							}
							html += '></' + this.item + '>';

							var div = doc.createElement('div');
							div.innerHTML = html;
							Polymer.dom(root).appendChild(Polymer.dom(div).firstChild);
						}.bind(this));
						Polymer.dom(template.content).appendChild(root);
					}
				}, {
					key: 'bindElementEvents',
					value: function bindElementEvents(elements) {
						var numElements = elements ? elements.length : 0;
						for (var i = 0; i < numElements; i++) {
							elements[i].addEventListener('value-changed', function (e) {
								if (e.target.item && this.data[e.target.item] !== e.detail.value) this.set('data.' + e.target.item, e.detail.value);
							}.bind(this));
						}

						if (!this.parent) return;

						this.domHost.addEventListener(this.parent + '-changed', function (e) {
							if (!e.detail.path) return;

							var parts = e.detail.path.split('.');
							var item = parts[parts.length - 1];
							for (var i = 0; i < numElements; i++) {
								if (elements[i].item === item) elements[i].value = e.detail.value;
							}
						}.bind(this));
					}
				}, {
					key: 'handlePrimaryEvents',
					value: function handlePrimaryEvents() {
						this.addEventListener('group-selected', function (e) {
							var className = e.detail.selected ? 'selected' : '';
							this.template.selected = className;
						});
						this.addEventListener('group-expanded', function (e) {
							var primary = e.detail.path.filter(function (node) {
								var el = Polymer.dom(node);
								var tagName = el.node.tagName ? el.node.tagName.toLowerCase() : '';
								return tagName === this.item && el.classList.contains('primary');
							}.bind(this));
							if (primary && primary.length > 0) {
								var className = e.detail.expanded ? 'expanded' : '';
								this.template.expanded = className;
							}
						}.bind(this));
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['buildGroup(item, group, data)', 'handlePrimaryEvents(template, primaryIndex)'];
					}
				}]);

				return Group;
			}());

			_export('Group', Group);

			Polymer(Group);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkdyb3VwLmpzIl0sIm5hbWVzIjpbIkdyb3VwIiwiaXMiLCJwcm9wZXJ0aWVzIiwiaXRlbSIsIlN0cmluZyIsImdyb3VwIiwiQXJyYXkiLCJkYXRhIiwidHlwZSIsIk9iamVjdCIsIm5vdGlmeSIsInBhcmVudCIsInZhbHVlIiwibW9kZWwiLCJncm91cENsYXNzIiwiaXRlbUNsYXNzIiwiZ3JvdXBEaXNwbGF5IiwicHJpbWFyeUluZGV4IiwiTnVtYmVyIiwidGVtcGxhdGUiLCJQb2x5bWVyIiwiZG9tIiwiJCIsImciLCJxdWVyeVNlbGVjdG9yIiwicGFyZW50Tm9kZSIsInJlbW92ZUNoaWxkIiwiZG9jdW1lbnQiLCJjcmVhdGVFbGVtZW50IiwiYnVpbGRJdGVtcyIsImFwcGVuZENoaWxkIiwib2JzZXJ2ZU5vZGVzIiwiaW5mbyIsImFkZGVkTm9kZXMiLCJiaW5kRWxlbWVudEV2ZW50cyIsImNoaWxkTm9kZXMiLCJiaW5kIiwiZG9jIiwiY29udGVudCIsIm93bmVyRG9jdW1lbnQiLCJyb290Iiwic2V0QXR0cmlidXRlIiwiZm9yRWFjaCIsImluZGV4IiwiaHRtbCIsImNsYXNzZXMiLCJlcXVhbHMiLCJpbmRleE9mIiwiZGl2IiwiaW5uZXJIVE1MIiwiZmlyc3RDaGlsZCIsImVsZW1lbnRzIiwibnVtRWxlbWVudHMiLCJsZW5ndGgiLCJpIiwiYWRkRXZlbnRMaXN0ZW5lciIsImUiLCJ0YXJnZXQiLCJkZXRhaWwiLCJzZXQiLCJkb21Ib3N0IiwicGF0aCIsInBhcnRzIiwic3BsaXQiLCJjbGFzc05hbWUiLCJzZWxlY3RlZCIsInByaW1hcnkiLCJmaWx0ZXIiLCJub2RlIiwiZWwiLCJ0YWdOYW1lIiwidG9Mb3dlckNhc2UiLCJjbGFzc0xpc3QiLCJjb250YWlucyIsImV4cGFuZGVkIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztvQkFBYUEsSzs7Ozs7OztzQ0FFSztBQUNoQixXQUFLQyxFQUFMLEdBQVUsVUFBVjtBQUNBLFdB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R0csU0FBSCxDQUFhQyxRQUFiLENBQXNCLFNBQXRCLENBQWhDO0FBQ0EsUUFKa0MsQ0FJakNyQyxJQUppQyxDQUk1QixJQUo0QixDQUFyQixDQUFkO0FBS0EsV0FBRzhCLFdBQVdBLFFBQVFiLE1BQVIsR0FBaUIsQ0FBL0IsRUFBa0M7QUFDakMsWUFBSVcsWUFBWVIsRUFBRUUsTUFBRixDQUFTZ0IsUUFBVCxHQUFvQixVQUFwQixHQUFpQyxFQUFqRDtBQUNBLGFBQUt2RCxRQUFMLENBQWN1RCxRQUFkLEdBQXlCVixTQUF6QjtBQUNBO0FBQ0QsT0FWdUMsQ0FVdEM1QixJQVZzQyxDQVVqQyxJQVZpQyxDQUF4QztBQVdBOzs7eUJBckdlO0FBQ2YsYUFBTyxDQUFDLCtCQUFELEVBQWtDLDZDQUFsQyxDQUFQO0FBQ0E7Ozs7Ozs7O0FBcUdGaEIsV0FBU3BCLEtBQVQiLCJmaWxlIjoiR3JvdXAuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgR3JvdXAge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItZ3JvdXAnO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdGl0ZW06IFN0cmluZywgLy8gbmFtZSBvZiB0aGUgY29tcG9uZW50IHRoYXQgcmVwcmVzZW50cyBhbiBpdGVtIGluIHRoZSBncm91cFxuXHRcdFx0Z3JvdXA6IEFycmF5LCAvLyBhcnJheSBvZiBzdHJpbmdzIHRoYXQgcmVwcmVzZW50cyB0aGUgZ3JvdXBcblx0XHRcdGRhdGE6IHsgLy8gY29udGFpbnMgdGhlIGdyb3VwIGRhdGEgdGhhdCBjYW4gYmUgZGUtcmVmZXJlbmNlZCB1c2luZyB0aGUgdmFsdWVzIGluc2lkZSBvZiB0aGUgZ3JvdXAgYXJyYXlcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHRub3RpZnk6IHRydWVcblx0XHRcdH0sXG5cdFx0XHRwYXJlbnQ6IHtcblx0XHRcdFx0dHlwZTogU3RyaW5nLCAvLyBuYW1lIG9mIHRoZSBvYmplY3QgZnJvbSB0aGUgcGFyZW50IGNvbXBvbmVudCB3aGVyZSB0aGUgZ3JvdXAgZGF0YSBsaXZlcyAob3B0aW9uYWwpXG5cdFx0XHRcdHZhbHVlOiBudWxsXG5cdFx0XHR9LFxuXHRcdFx0bW9kZWw6IHsgLy8gb2JqZWN0IHRvIHBhc3MgdGhyb3VnaCB0byBlYWNoIGdyb3VwIGl0ZW0gY29tcG9uZW50IChvcHRpb25hbClcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZTogbnVsbFxuXHRcdFx0fSxcblx0XHRcdGdyb3VwQ2xhc3MgOiBTdHJpbmcsIC8vIGNsYXNzIHN0cmluZyB0byBiZSBhZGRlZCB0aGUgZGl2IHRoYXQgd3JhcHMgdGhlIGdyb3VwIGl0ZW1zXG5cdFx0XHRpdGVtQ2xhc3MgOiBTdHJpbmcsIC8vIGNsYXNzIHN0cmluZyB0byBiZSBhZGRlZCB0byBlYWNoIGdyb3VwIGl0ZW1cblx0XHRcdGdyb3VwRGlzcGxheTogT2JqZWN0LCAvLyBtYXAgd2hvc2Uga2V5cyBtYXRjaCB0aGUgZ3JvdXAgYXJyYXkgYW5kIHZhbHVlIGlzIHVzZWQgZm9yIGRpc3BsYXkgcHVycG9zZXNcblx0XHRcdHByaW1hcnlJbmRleDogTnVtYmVyIC8vIGlmIG5vbiBuZWdhdGl2ZSwgdGhpcyBpdGVtIGluIHRoZSBncm91cCBpcyBjb25zaWRlcmVkIHByaW1hcnkgYW5kIGFsbCBvdGhlciBpdGVtcyBjb25zaWRlcmVkIHNlY29uZGFyeVxuXHRcdH1cblx0fVxuXG5cdGdldCBvYnNlcnZlcnMoKSB7XG5cdFx0cmV0dXJuIFsnYnVpbGRHcm91cChpdGVtLCBncm91cCwgZGF0YSknLCAnaGFuZGxlUHJpbWFyeUV2ZW50cyh0ZW1wbGF0ZSwgcHJpbWFyeUluZGV4KSddO1xuXHR9XG5cblx0YnVpbGRHcm91cCgpIHtcblx0XHR2YXIgdGVtcGxhdGUgPSBQb2x5bWVyLmRvbSh0aGlzLiQuZykucXVlcnlTZWxlY3RvcigndGVtcGxhdGUnKTtcblx0XHRpZih0ZW1wbGF0ZSkgLy8gcmVtb3ZlIHRlbXBsYXRlIGlmIGFscmVhZHkgZXhpc3RzXG5cdFx0XHRQb2x5bWVyLmRvbSh0ZW1wbGF0ZS5wYXJlbnROb2RlKS5yZW1vdmVDaGlsZCh0ZW1wbGF0ZSk7XG5cblx0XHR0ZW1wbGF0ZSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ3RlbXBsYXRlJywgJ2RvbS1iaW5kJyk7XG5cdFx0dGVtcGxhdGUubW9kZWwgPSB0aGlzLm1vZGVsO1xuXHRcdHRlbXBsYXRlLmRhdGEgPSB0aGlzLmRhdGE7XG5cdFx0dGhpcy5idWlsZEl0ZW1zKHRlbXBsYXRlKTtcblx0XHRQb2x5bWVyLmRvbSh0aGlzLiQuZykuYXBwZW5kQ2hpbGQodGVtcGxhdGUpO1xuXHRcdHRoaXMudGVtcGxhdGUgPSB0ZW1wbGF0ZTtcblxuXHRcdC8vIG9ic2VydmUgZm9yIHdoZW4gdGhlIGNoaWxkIGVsZW1lbnRzIGFyZSBib3VuZCB0byB0aGUgRE9NIHNvIHdlIGNhbiBiaW5kIGV2ZW50cyB0byB0aGVtXG5cdFx0UG9seW1lci5kb20odGhpcy4kLmcpLm9ic2VydmVOb2RlcyhmdW5jdGlvbihpbmZvKSB7XG5cdFx0XHRpZiAoaW5mby5hZGRlZE5vZGVzWzBdKVxuXHRcdFx0XHR0aGlzLmJpbmRFbGVtZW50RXZlbnRzKGluZm8uYWRkZWROb2Rlc1swXS5jaGlsZE5vZGVzKTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cblx0YnVpbGRJdGVtcyh0ZW1wbGF0ZSkge1xuXHRcdHZhciBkb2MgPSB0ZW1wbGF0ZS5jb250ZW50Lm93bmVyRG9jdW1lbnQ7XG5cdFx0dmFyIHJvb3QgPSBkb2MuY3JlYXRlRWxlbWVudCgnZGl2Jyk7XG5cdFx0aWYodGhpcy5ncm91cENsYXNzKVxuXHRcdFx0UG9seW1lci5kb20ocm9vdCkuc2V0QXR0cmlidXRlKCdjbGFzcycsIHRoaXMuZ3JvdXBDbGFzcyk7XG5cdFx0dGhpcy5ncm91cC5mb3JFYWNoKGZ1bmN0aW9uKGl0ZW0sIGluZGV4KSB7XG5cdFx0XHRsZXQgaHRtbCA9ICc8JyArIHRoaXMuaXRlbSArICcgJyArXG5cdFx0XHRcdCdpdGVtPVwiJyArIGl0ZW0gKyAnXCIgJyArXG5cdFx0XHRcdCd2YWx1ZT1cInt7ZGF0YS4nICsgaXRlbSArICd9fVwiICcgK1xuXHRcdFx0XHQnbW9kZWw9XCJbW21vZGVsXV1cIic7XG5cblx0XHRcdGlmICh0aGlzLnByaW1hcnlJbmRleCAhPT0gaW5kZXggJiYgdGhpcy5ncm91cERpc3BsYXkgJiYgdGhpcy5ncm91cERpc3BsYXlbaXRlbV0pXG5cdFx0XHRcdGh0bWwgKz0gJyBmaWVsZC1sYWJlbD1cIicgKyBcdHRoaXMuZ3JvdXBEaXNwbGF5W2l0ZW1dICsgJ1wiJztcblxuXHRcdFx0bGV0IGNsYXNzZXMgPSAnJztcblx0XHRcdGlmKHRoaXMuaXRlbUNsYXNzKVxuXHRcdFx0XHRjbGFzc2VzICs9IHRoaXMuaXRlbUNsYXNzICsgJyAnO1xuXHRcdFx0aWYodGhpcy5wcmltYXJ5SW5kZXggPT09IGluZGV4KVxuXHRcdFx0XHRjbGFzc2VzICs9ICdwcmltYXJ5IHt7c2VsZWN0ZWR9fSB7e2V4cGFuZGVkfX0nO1xuXHRcdFx0ZWxzZSBpZih0aGlzLnByaW1hcnlJbmRleCA+PSAwKVxuXHRcdFx0XHRjbGFzc2VzICs9ICdzZWNvbmRhcnkge3tleHBhbmRlZH19JztcblxuXHRcdFx0aWYoY2xhc3Nlcykge1xuXHRcdFx0XHRsZXQgZXF1YWxzID0gY2xhc3Nlcy5pbmRleE9mKCd7eycpICE9IC0xID8gJyQ9JyA6ICc9Jztcblx0XHRcdFx0aHRtbCArPSAnIGNsYXNzJyArIGVxdWFscyArICdcIicgKyBjbGFzc2VzICsgJ1wiJztcblx0XHRcdH1cblx0XHRcdGh0bWwgKz0gJz48LycgKyB0aGlzLml0ZW0gKyAnPic7XG5cblx0XHRcdGxldCBkaXYgPSBkb2MuY3JlYXRlRWxlbWVudCgnZGl2Jyk7XG5cdFx0XHRkaXYuaW5uZXJIVE1MID0gaHRtbDtcblx0XHRcdFBvbHltZXIuZG9tKHJvb3QpLmFwcGVuZENoaWxkKFBvbHltZXIuZG9tKGRpdikuZmlyc3RDaGlsZCk7XG5cdFx0fS5iaW5kKHRoaXMpKTtcblx0XHRQb2x5bWVyLmRvbSh0ZW1wbGF0ZS5jb250ZW50KS5hcHBlbmRDaGlsZChyb290KTtcblx0fVxuXG5cdGJpbmRFbGVtZW50RXZlbnRzKGVsZW1lbnRzKSB7XG5cdFx0dmFyIG51bUVsZW1lbnRzID0gZWxlbWVudHMgPyBlbGVtZW50cy5sZW5ndGggOiAwO1xuXHRcdGZvcih2YXIgaSA9IDA7IGkgPCBudW1FbGVtZW50czsgaSsrKSB7XG5cdFx0XHQvLyBwcm9wYWdhdGVzIHZhbHVlIGNoYW5nZXMgZnJvbSBjaGlsZCBpdGVtIGNvbXBvbmVudHMgKGlmIG5vdGlmeTogdHJ1ZSkgdXAgdG8gcGFyZW50IGNvbXBvbmVudFxuXHRcdFx0ZWxlbWVudHNbaV0uYWRkRXZlbnRMaXN0ZW5lcigndmFsdWUtY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcblx0XHRcdFx0aWYoZS50YXJnZXQuaXRlbSAmJiB0aGlzLmRhdGFbZS50YXJnZXQuaXRlbV0gIT09IGUuZGV0YWlsLnZhbHVlKVxuXHRcdFx0XHRcdHRoaXMuc2V0KCdkYXRhLicgKyBlLnRhcmdldC5pdGVtLCBlLmRldGFpbC52YWx1ZSk7XG5cdFx0XHR9LmJpbmQodGhpcykpO1xuXHRcdH1cblxuXHRcdGlmKCF0aGlzLnBhcmVudClcblx0XHRcdHJldHVybjtcblxuXHRcdC8vIHByb3BhZ2F0ZXMgdmFsdWUgY2hhbmdlcyBmcm9tIHBhcmVudCBjb21wb25lbnQgZG93biB0byB0aGUgYXBwcm9wcmlhdGUgY2hpbGQgaXRlbSBjb21wb25lbnRcblx0XHR0aGlzLmRvbUhvc3QuYWRkRXZlbnRMaXN0ZW5lcih0aGlzLnBhcmVudCArICctY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcblx0XHRcdGlmKCFlLmRldGFpbC5wYXRoKVxuXHRcdFx0XHRyZXR1cm47XG5cblx0XHRcdHZhciBwYXJ0cyA9IGUuZGV0YWlsLnBhdGguc3BsaXQoJy4nKTtcblx0XHRcdHZhciBpdGVtID0gcGFydHNbcGFydHMubGVuZ3RoLTFdO1xuXHRcdFx0Zm9yKHZhciBpID0gMDsgaSA8IG51bUVsZW1lbnRzOyBpKyspIHtcblx0XHRcdFx0aWYoZWxlbWVudHNbaV0uaXRlbSA9PT0gaXRlbSlcblx0XHRcdFx0XHRlbGVtZW50c1tpXS52YWx1ZSA9IGUuZGV0YWlsLnZhbHVlO1xuXHRcdFx0fVxuXHRcdH0uYmluZCh0aGlzKSk7XG5cdH1cblxuXHRoYW5kbGVQcmltYXJ5RXZlbnRzKCkge1xuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcignZ3JvdXAtc2VsZWN0ZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRsZXQgY2xhc3NOYW1lID0gZS5kZXRhaWwuc2VsZWN0ZWQgPyAnc2VsZWN0ZWQnIDogJyc7XG5cdFx0XHR0aGlzLnRlbXBsYXRlLnNlbGVjdGVkID0gY2xhc3NOYW1lO1xuXHRcdH0pO1xuXHRcdHRoaXMuYWRkRXZlbnRMaXN0ZW5lcignZ3JvdXAtZXhwYW5kZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHRsZXQgcHJpbWFyeSA9IGUuZGV0YWlsLnBhdGguZmlsdGVyKGZ1bmN0aW9uKG5vZGUpIHtcblx0XHRcdFx0bGV0IGVsID0gUG9seW1lci5kb20obm9kZSk7XG5cdFx0XHRcdGxldCB0YWdOYW1lID0gZWwubm9kZS50YWdOYW1lID8gZWwubm9kZS50YWdOYW1lLnRvTG93ZXJDYXNlKCkgOiAnJztcblx0XHRcdFx0cmV0dXJuIHRhZ05hbWUgPT09IHRoaXMuaXRlbSAmJiBlbC5jbGFzc0xpc3QuY29udGFpbnMoJ3ByaW1hcnknKTtcblx0XHRcdH0uYmluZCh0aGlzKSk7XG5cdFx0XHRpZihwcmltYXJ5ICYmIHByaW1hcnkubGVuZ3RoID4gMCkge1xuXHRcdFx0XHRsZXQgY2xhc3NOYW1lID0gZS5kZXRhaWwuZXhwYW5kZWQgPyAnZXhwYW5kZWQnIDogJyc7XG5cdFx0XHRcdHRoaXMudGVtcGxhdGUuZXhwYW5kZWQgPSBjbGFzc05hbWU7XG5cdFx0XHR9XG5cdFx0fS5iaW5kKHRoaXMpKTtcblx0fVxufVxuUG9seW1lciggR3JvdXAgKTsiXX0=
'use strict';

System.register('common/layout/sb-side-panel/SidePanel.js', [], function (_export, _context) {
	var _createClass, SidePanel;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('SidePanel', SidePanel = function () {
				function SidePanel() {
					_classCallCheck(this, SidePanel);
				}

				_createClass(SidePanel, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-side-panel';
					}
				}, {
					key: 'closeDrawer',
					value: function closeDrawer() {
						this.fire('x-clicked');
					}
				}, {
					key: 'keyCheck',
					value: function keyCheck(event) {
						if (event.keyCode == 13) this.fire('enter-keypress');
					}
				}]);

				return SidePanel;
			}());

			_export('SidePanel', SidePanel);

			Polymer(SidePanel);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlNpZGVQYW5lbC5qcyJdLCJuYW1lcyI6WyJTaWRlUGFuZWwiLCJpcyIsImZpcmUiLCJldmVudCIsImtleUNvZGUiLCJQb2x5bWVyIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozt3QkFBYUEsUzs7Ozs7OztzQ0FFSztBQUNoQixXQUFLQyxFQUFMLEdBQVUsZUFBVjtBQUNBOzs7bUNBRWE7QUFDYixXQUFLQyxJQUFMLENBQVUsV0FBVjtBQUNBOzs7OEJBRVFDLEssRUFBTztBQUNmLFVBQUlBLE1BQU1DLE9BQU4sSUFBaUIsRUFBckIsRUFDQyxLQUFLRixJQUFMLENBQVUsZ0JBQVY7QUFDRDs7Ozs7Ozs7QUFHRkcsV0FBU0wsU0FBVCIsImZpbGUiOiJTaWRlUGFuZWwuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgU2lkZVBhbmVse1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2Itc2lkZS1wYW5lbCc7XG5cdH1cblxuXHRjbG9zZURyYXdlcigpIHtcblx0XHR0aGlzLmZpcmUoJ3gtY2xpY2tlZCcpO1xuXHR9XG5cblx0a2V5Q2hlY2soZXZlbnQpIHtcblx0XHRpZiAoZXZlbnQua2V5Q29kZSA9PSAxMylcblx0XHRcdHRoaXMuZmlyZSgnZW50ZXIta2V5cHJlc3MnKTtcblx0fVxufVxuXG5Qb2x5bWVyKCBTaWRlUGFuZWwgKTsiXX0=
'use strict';

System.register('common/layout/sb-table-cell/TableCell.js', [], function (_export, _context) {
	var _createClass, TableCell;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('TableCell', TableCell = function () {
				function TableCell() {
					_classCallCheck(this, TableCell);
				}

				_createClass(TableCell, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-table-cell';
						this.properties = {
							item: String,
							value: {
								notify: true
							},
							model: Object
						};
					}
				}, {
					key: 'buildCell',
					value: function buildCell() {
						if (this.model && this.model[this.item] && this.model[this.item].type) {
							this.md = this.model[this.item];
							return;
						}

						var type;
						switch (this.item) {
							case 'boolean':
							case 'radio':
								type = this.item;
								break;
							default:
								type = 'string';
						}

						this.md = this.md || { type: type };
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['buildCell(item, value)'];
					}
				}]);

				return TableCell;
			}());

			_export('TableCell', TableCell);

			Polymer(TableCell);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlRhYmxlQ2VsbC5qcyJdLCJuYW1lcyI6WyJUYWJsZUNlbGwiLCJpcyIsInByb3BlcnRpZXMiLCJpdGVtIiwiU3RyaW5nIiwidmFsdWUiLCJub3RpZnkiLCJtb2RlbCIsIk9iamVjdCIsInR5cGUiLCJtZCIsIlBvbHltZXIiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O3dCQUFhQSxTOzs7Ozs7O3NDQUVLO0FBQ2hCLFdBQUtDLEVBQUwsR0FBVSxlQUFWO0FBQ0EsV0FBS0MsVUFBTCxHQUFrQjtBQUNqQkMsYUFBTUMsTUFEVztBQUVqQkMsY0FBTztBQUNOQyxnQkFBUTtBQURGLFFBRlU7QUFLakJDLGNBQU9DO0FBTFUsT0FBbEI7QUFPQTs7O2lDQU1XO0FBQ1gsVUFBRyxLQUFLRCxLQUFMLElBQWMsS0FBS0EsS0FBTCxDQUFXLEtBQUtKLElBQWhCLENBQWQsSUFBdUMsS0FBS0ksS0FBTCxDQUFXLEtBQUtKLElBQWhCLEVBQXNCTSxJQUFoRSxFQUFzRTtBQUNyRSxZQUFLQyxFQUFMLEdBQVUsS0FBS0gsS0FBTCxDQUFXLEtBQUtKLElBQWhCLENBQVY7QUFDQTtBQUNBOztBQUVELFVBQUlNLElBQUo7QUFDQSxjQUFPLEtBQUtOLElBQVo7QUFDQyxZQUFLLFNBQUw7QUFDQSxZQUFLLE9BQUw7QUFDQ00sZUFBTyxLQUFLTixJQUFaO0FBQ0E7QUFDRDtBQUNDTSxlQUFPLFFBQVA7QUFORjs7QUFTQSxXQUFLQyxFQUFMLEdBQVUsS0FBS0EsRUFBTCxJQUFXLEVBQUNELE1BQU1BLElBQVAsRUFBckI7QUFDQTs7O3lCQXJCZTtBQUNmLGFBQU8sQ0FBQyx3QkFBRCxDQUFQO0FBQ0E7Ozs7Ozs7O0FBc0JGRSxXQUFRWCxTQUFSIiwiZmlsZSI6IlRhYmxlQ2VsbC5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBUYWJsZUNlbGwge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItdGFibGUtY2VsbCc7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0ge1xuXHRcdFx0aXRlbTogU3RyaW5nLFxuXHRcdFx0dmFsdWU6IHtcblx0XHRcdFx0bm90aWZ5OiB0cnVlXG5cdFx0XHR9LFxuXHRcdFx0bW9kZWw6IE9iamVjdFxuXHRcdH1cblx0fVxuXG5cdGdldCBvYnNlcnZlcnMoKSB7XG5cdFx0cmV0dXJuIFsnYnVpbGRDZWxsKGl0ZW0sIHZhbHVlKSddO1xuXHR9XG5cblx0YnVpbGRDZWxsKCkge1xuXHRcdGlmKHRoaXMubW9kZWwgJiYgdGhpcy5tb2RlbFt0aGlzLml0ZW1dICYmIHRoaXMubW9kZWxbdGhpcy5pdGVtXS50eXBlKSB7XG5cdFx0XHR0aGlzLm1kID0gdGhpcy5tb2RlbFt0aGlzLml0ZW1dO1xuXHRcdFx0cmV0dXJuO1xuXHRcdH1cblx0XHQvLyBpZiBubyBtb2RlbCB0aGVuIGluZmVyIHRoZSB0eXBlIGJhc2VkIG9uIHRoZSBpdGVtIG5hbWVcblx0XHR2YXIgdHlwZTtcblx0XHRzd2l0Y2godGhpcy5pdGVtKSB7XG5cdFx0XHRjYXNlICdib29sZWFuJzpcblx0XHRcdGNhc2UgJ3JhZGlvJzpcblx0XHRcdFx0dHlwZSA9IHRoaXMuaXRlbTtcblx0XHRcdFx0YnJlYWs7XG5cdFx0XHRkZWZhdWx0OlxuXHRcdFx0XHR0eXBlID0gJ3N0cmluZyc7XG5cdFx0fVxuXG5cdFx0dGhpcy5tZCA9IHRoaXMubWQgfHwge3R5cGU6IHR5cGV9O1xuXHR9XG59XG5cblBvbHltZXIoVGFibGVDZWxsKTsiXX0=
'use strict';

System.register('common/layout/sb-table-header/TableHeader.js', [], function (_export, _context) {
	var _createClass, TableHeader;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('TableHeader', TableHeader = function () {
				function TableHeader() {
					_classCallCheck(this, TableHeader);
				}

				_createClass(TableHeader, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-table-header';
						this.properties = {
							cols: Array,
							selectable: Boolean,
							selectionType: {
								type: String,
								value: 'boolean'
							},
							selected: {
								type: Boolean,
								value: false
							}
						};
					}
				}, {
					key: 'buildLabels',
					value: function buildLabels() {
						var data = {};
						var group = [];

						this.cols.forEach(function (col) {
							if (!col) return;

							var item = col.replace(/\W/g, '');
							group.push(item);
							data[item] = col;
						});

						this.$.header.data = undefined;
						this.$.header.group = undefined;

						this.$.header.data = data;
						this.$.header.group = group;
					}
				}, {
					key: 'setSelectable',
					value: function setSelectable() {
						if (!this.selectable) return;

						this.$.selection.addEventListener('data-changed', function (e) {
							this.internal = true;
							this.selected = typeof e.detail.value[this.selectionType] !== 'undefined' ? e.detail.value[this.selectionType] : e.detail.value;
							this.internal = false;
							this.fire('header-selection-changed', { selected: this.selected });
						}.bind(this));
					}
				}, {
					key: 'setSelected',
					value: function setSelected() {
						if (!this.selectable || this.internal) return;

						var key = this.selectionType === 'boolean' ? 'boolean' : 'string';
						this.$.selection.group = [key];
						var selectionData = {};

						var value = this.selectionType === 'boolean' ? this.selected : '';
						selectionData[key] = value;
						this.$.selection.data = selectionData;
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['buildLabels(cols)', 'setSelectable(selectable, selectionType)', 'setSelected(selected, selectable, selectionType)'];
					}
				}]);

				return TableHeader;
			}());

			_export('TableHeader', TableHeader);

			Polymer(TableHeader);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlRhYmxlSGVhZGVyLmpzIl0sIm5hbWVzIjpbIlRhYmxlSGVhZGVyIiwiaXMiLCJwcm9wZXJ0aWVzIiwiY29scyIsIkFycmF5Iiwic2VsZWN0YWJsZSIsIkJvb2xlYW4iLCJzZWxlY3Rpb25UeXBlIiwidHlwZSIsIlN0cmluZyIsInZhbHVlIiwic2VsZWN0ZWQiLCJkYXRhIiwiZ3JvdXAiLCJmb3JFYWNoIiwiY29sIiwiaXRlbSIsInJlcGxhY2UiLCJwdXNoIiwiJCIsImhlYWRlciIsInVuZGVmaW5lZCIsInNlbGVjdGlvbiIsImFkZEV2ZW50TGlzdGVuZXIiLCJlIiwiaW50ZXJuYWwiLCJkZXRhaWwiLCJmaXJlIiwiYmluZCIsImtleSIsInNlbGVjdGlvbkRhdGEiLCJQb2x5bWVyIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzswQkFBYUEsVzs7Ozs7OztzQ0FFSztBQUNoQixXQUFLQyxFQUFMLEdBQVUsaUJBQVY7QUFDQSxXQUFLQyxVQUFMLEdBQWtCO0FBQ2pCQyxhQUFNQyxLQURXO0FBRWpCQyxtQkFBWUMsT0FGSztBQUdqQkMsc0JBQWU7QUFDZEMsY0FBTUMsTUFEUTtBQUVkQyxlQUFPO0FBRk8sUUFIRTtBQU9qQkMsaUJBQVU7QUFDVEgsY0FBTUYsT0FERztBQUVUSSxlQUFPO0FBRkU7QUFQTyxPQUFsQjtBQVlBOzs7bUNBTWE7QUFDYixVQUFJRSxPQUFPLEVBQVg7QUFDQSxVQUFJQyxRQUFRLEVBQVo7O0FBRUEsV0FBS1YsSUFBTCxDQUFVVyxPQUFWLENBQWtCLFVBQVNDLEdBQVQsRUFBYztBQUMvQixXQUFHLENBQUNBLEdBQUosRUFDQzs7QUFFRCxXQUFJQyxPQUFPRCxJQUFJRSxPQUFKLENBQVksS0FBWixFQUFtQixFQUFuQixDQUFYO0FBQ0FKLGFBQU1LLElBQU4sQ0FBV0YsSUFBWDtBQUNBSixZQUFLSSxJQUFMLElBQWFELEdBQWI7QUFDQSxPQVBEOztBQVNBLFdBQUtJLENBQUwsQ0FBT0MsTUFBUCxDQUFjUixJQUFkLEdBQXFCUyxTQUFyQjtBQUNBLFdBQUtGLENBQUwsQ0FBT0MsTUFBUCxDQUFjUCxLQUFkLEdBQXNCUSxTQUF0Qjs7QUFFQSxXQUFLRixDQUFMLENBQU9DLE1BQVAsQ0FBY1IsSUFBZCxHQUFxQkEsSUFBckI7QUFDQSxXQUFLTyxDQUFMLENBQU9DLE1BQVAsQ0FBY1AsS0FBZCxHQUFzQkEsS0FBdEI7QUFDQTs7O3FDQUVlO0FBQ2YsVUFBRyxDQUFDLEtBQUtSLFVBQVQsRUFDQzs7QUFFRCxXQUFLYyxDQUFMLENBQU9HLFNBQVAsQ0FBaUJDLGdCQUFqQixDQUFrQyxjQUFsQyxFQUFrRCxVQUFTQyxDQUFULEVBQVk7QUFDN0QsWUFBS0MsUUFBTCxHQUFnQixJQUFoQjtBQUNBLFlBQUtkLFFBQUwsR0FBZ0IsT0FBT2EsRUFBRUUsTUFBRixDQUFTaEIsS0FBVCxDQUFlLEtBQUtILGFBQXBCLENBQVAsS0FBOEMsV0FBOUMsR0FBNERpQixFQUFFRSxNQUFGLENBQVNoQixLQUFULENBQWUsS0FBS0gsYUFBcEIsQ0FBNUQsR0FBaUdpQixFQUFFRSxNQUFGLENBQVNoQixLQUExSDtBQUNBLFlBQUtlLFFBQUwsR0FBZ0IsS0FBaEI7QUFDQSxZQUFLRSxJQUFMLENBQVUsMEJBQVYsRUFBc0MsRUFBQ2hCLFVBQVUsS0FBS0EsUUFBaEIsRUFBdEM7QUFDQSxPQUxpRCxDQUtoRGlCLElBTGdELENBSzNDLElBTDJDLENBQWxEO0FBTUE7OzttQ0FFYTtBQUNiLFVBQUcsQ0FBQyxLQUFLdkIsVUFBTixJQUFvQixLQUFLb0IsUUFBNUIsRUFDQzs7QUFFRCxVQUFJSSxNQUFNLEtBQUt0QixhQUFMLEtBQXVCLFNBQXZCLEdBQW1DLFNBQW5DLEdBQStDLFFBQXpEO0FBQ0EsV0FBS1ksQ0FBTCxDQUFPRyxTQUFQLENBQWlCVCxLQUFqQixHQUF5QixDQUFDZ0IsR0FBRCxDQUF6QjtBQUNBLFVBQUlDLGdCQUFnQixFQUFwQjs7QUFFQSxVQUFJcEIsUUFBUSxLQUFLSCxhQUFMLEtBQXVCLFNBQXZCLEdBQW1DLEtBQUtJLFFBQXhDLEdBQW1ELEVBQS9EO0FBQ0FtQixvQkFBY0QsR0FBZCxJQUFxQm5CLEtBQXJCO0FBQ0EsV0FBS1MsQ0FBTCxDQUFPRyxTQUFQLENBQWlCVixJQUFqQixHQUF3QmtCLGFBQXhCO0FBQ0E7Ozt5QkEvQ2U7QUFDZixhQUFPLENBQUMsbUJBQUQsRUFBc0IsMENBQXRCLEVBQWtFLGtEQUFsRSxDQUFQO0FBQ0E7Ozs7Ozs7O0FBZ0RGQyxXQUFRL0IsV0FBUiIsImZpbGUiOiJUYWJsZUhlYWRlci5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBUYWJsZUhlYWRlciB7XG5cblx0YmVmb3JlUmVnaXN0ZXIoKSB7XG5cdFx0dGhpcy5pcyA9ICdzYi10YWJsZS1oZWFkZXInO1xuXHRcdHRoaXMucHJvcGVydGllcyA9IHtcblx0XHRcdGNvbHM6IEFycmF5LCAvLyBhcnJheSBvZiBzdHJpbmdzIHRoYXQgcmVwcmVzZW50cyB0aGUgY29sdW1uc1xuXHRcdFx0c2VsZWN0YWJsZTogQm9vbGVhbiwgLy8gdHJ1ZSBpZiB0aGUgcm93J3MgbGVmdCBtb3N0IGNvbHVtbiBzZWxlY3RhYmxlXG5cdFx0XHRzZWxlY3Rpb25UeXBlOiB7IC8vIFwiYm9vbGVhblwiIGZvciBjaGVja2JveCBvciBcInJhZGlvXCIgZm9yIHJhZGlvXG5cdFx0XHRcdHR5cGU6IFN0cmluZyxcblx0XHRcdFx0dmFsdWU6ICdib29sZWFuJ1xuXHRcdFx0fSxcblx0XHRcdHNlbGVjdGVkOiB7IC8vIHRydWUgaWYgdGhlIHJvdyBpcyBzZWxlY3RhYmxlIGFuZCBzaG91bGQgYmUgc2VsZWN0ZWRcblx0XHRcdFx0dHlwZTogQm9vbGVhbixcblx0XHRcdFx0dmFsdWU6IGZhbHNlXG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0Z2V0IG9ic2VydmVycygpIHtcblx0XHRyZXR1cm4gWydidWlsZExhYmVscyhjb2xzKScsICdzZXRTZWxlY3RhYmxlKHNlbGVjdGFibGUsIHNlbGVjdGlvblR5cGUpJywgJ3NldFNlbGVjdGVkKHNlbGVjdGVkLCBzZWxlY3RhYmxlLCBzZWxlY3Rpb25UeXBlKSddO1xuXHR9XG5cblx0YnVpbGRMYWJlbHMoKSB7XG5cdFx0dmFyIGRhdGEgPSB7fTtcblx0XHR2YXIgZ3JvdXAgPSBbXTtcblxuXHRcdHRoaXMuY29scy5mb3JFYWNoKGZ1bmN0aW9uKGNvbCkge1xuXHRcdFx0aWYoIWNvbClcblx0XHRcdFx0cmV0dXJuO1xuXG5cdFx0XHR2YXIgaXRlbSA9IGNvbC5yZXBsYWNlKC9cXFcvZywgJycpO1xuXHRcdFx0Z3JvdXAucHVzaChpdGVtKTtcblx0XHRcdGRhdGFbaXRlbV0gPSBjb2w7XG5cdFx0fSk7XG5cblx0XHR0aGlzLiQuaGVhZGVyLmRhdGEgPSB1bmRlZmluZWQ7XG5cdFx0dGhpcy4kLmhlYWRlci5ncm91cCA9IHVuZGVmaW5lZDtcblxuXHRcdHRoaXMuJC5oZWFkZXIuZGF0YSA9IGRhdGE7XG5cdFx0dGhpcy4kLmhlYWRlci5ncm91cCA9IGdyb3VwO1xuXHR9XG5cblx0c2V0U2VsZWN0YWJsZSgpIHtcblx0XHRpZighdGhpcy5zZWxlY3RhYmxlKVxuXHRcdFx0cmV0dXJuO1xuXG5cdFx0dGhpcy4kLnNlbGVjdGlvbi5hZGRFdmVudExpc3RlbmVyKCdkYXRhLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG5cdFx0XHR0aGlzLmludGVybmFsID0gdHJ1ZTsgLy8gaW50ZXJuYWwgc2V0dGluZyBvZiB0aGlzLnNlbGVjdGVkIHNvIGRvIG5vdCBleGVjdXRlIHRoZSBpbXBsZW1lbnRhdGlvbiBvZiB0aGUgc2V0U2VsZWN0ZWQgb2JzZXJ2ZXIgYmVsb3dcblx0XHRcdHRoaXMuc2VsZWN0ZWQgPSB0eXBlb2YgZS5kZXRhaWwudmFsdWVbdGhpcy5zZWxlY3Rpb25UeXBlXSAhPT0gJ3VuZGVmaW5lZCcgPyBlLmRldGFpbC52YWx1ZVt0aGlzLnNlbGVjdGlvblR5cGVdIDogZS5kZXRhaWwudmFsdWU7XG5cdFx0XHR0aGlzLmludGVybmFsID0gZmFsc2U7XG5cdFx0XHR0aGlzLmZpcmUoJ2hlYWRlci1zZWxlY3Rpb24tY2hhbmdlZCcsIHtzZWxlY3RlZDogdGhpcy5zZWxlY3RlZH0pO1xuXHRcdH0uYmluZCh0aGlzKSk7XG5cdH1cblxuXHRzZXRTZWxlY3RlZCgpIHtcblx0XHRpZighdGhpcy5zZWxlY3RhYmxlIHx8IHRoaXMuaW50ZXJuYWwpXG5cdFx0XHRyZXR1cm47XG5cblx0XHRsZXQga2V5ID0gdGhpcy5zZWxlY3Rpb25UeXBlID09PSAnYm9vbGVhbicgPyAnYm9vbGVhbicgOiAnc3RyaW5nJztcblx0XHR0aGlzLiQuc2VsZWN0aW9uLmdyb3VwID0gW2tleV07XG5cdFx0bGV0IHNlbGVjdGlvbkRhdGEgPSB7fTtcblxuXHRcdGxldCB2YWx1ZSA9IHRoaXMuc2VsZWN0aW9uVHlwZSA9PT0gJ2Jvb2xlYW4nID8gdGhpcy5zZWxlY3RlZCA6ICcnO1xuXHRcdHNlbGVjdGlvbkRhdGFba2V5XSA9IHZhbHVlO1xuXHRcdHRoaXMuJC5zZWxlY3Rpb24uZGF0YSA9IHNlbGVjdGlvbkRhdGE7XG5cdH1cbn1cblxuUG9seW1lcihUYWJsZUhlYWRlcik7Il19
'use strict';

System.register('common/layout/sb-table-row/TableRow.js', [], function (_export, _context) {
	var _createClass, TableRow;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('TableRow', TableRow = function () {
				function TableRow() {
					_classCallCheck(this, TableRow);
				}

				_createClass(TableRow, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-table-row';
						this.properties = {
							cell: String,
							cols: Array,
							colsDisplay: Object,
							data: {
								type: Object,
								notify: true
							},
							model: {
								type: Object,
								value: null
							},
							selectable: {
								type: Boolean,
								value: false
							},
							selected: {
								type: Boolean,
								value: false
							},
							selectionType: {
								type: String,
								value: 'boolean'
							},
							selectionIdDataPath: {
								type: String,
								value: 'Id'
							}
						};
					}
				}, {
					key: 'buildRow',
					value: function buildRow() {
						this.$.row.data = undefined;
						this.$.row.groupDisplay = undefined;
						this.$.row.group = undefined;

						this.$.row.data = this.data;
						this.$.row.groupDisplay = this.colsDisplay;
						this.$.row.primaryIndex = 0;
						this.$.row.group = this.cols;

						this.rowDataChangedListener = this.rowDataChangedListener || function (e) {
							if (e.detail.path) this.set(e.detail.path, e.detail.value);
						}.bind(this);

						this.$.row.removeEventListener('data-changed', this.rowDataChangedListener);
						this.$.row.addEventListener('data-changed', this.rowDataChangedListener);
					}
				}, {
					key: 'setSelectable',
					value: function setSelectable() {
						if (!this.selectable) return;

						this.$.selection.addEventListener('data-changed', function (e) {
							this.internal = true;
							this.selected = typeof e.detail.value[this.selectionType] !== 'undefined' ? e.detail.value[this.selectionType] : e.detail.value;
							this.internal = false;
							this.fire('selection-changed', { selected: this.selected, Id: this.get('data.' + this.selectionIdDataPath) });
						}.bind(this));
					}
				}, {
					key: 'setSelected',
					value: function setSelected() {
						if (!this.selectable || this.internal) return;

						this.$.selection.group = [this.selectionType];
						var selectionData = {};
						selectionData[this.selectionType] = this.selected;
						this.$.selection.data = selectionData;
					}
				}, {
					key: 'select',
					value: function select(e) {
						var rootTarget = Polymer.dom(e).rootTarget;
						var tagName = rootTarget && rootTarget.tagName ? rootTarget.tagName.toLowerCase() : '';
						if (tagName === 'sb-group') this.selected = !this.selected;
						this.$.row.fire('group-selected', { selected: this.selected });
					}
				}, {
					key: 'expand',
					value: function expand(e) {
						this.expanded = !this.expanded;
						this.$.row.fire('group-expanded', { expanded: this.expanded, path: Polymer.dom(e).path });
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['buildRow(cell, cols, colsDisplay, data)', 'setSelectable(selectable)', 'setSelected(selected, selectable, selectionType)'];
					}
				}]);

				return TableRow;
			}());

			_export('TableRow', TableRow);

			Polymer(TableRow);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlRhYmxlUm93LmpzIl0sIm5hbWVzIjpbIlRhYmxlUm93IiwiaXMiLCJwcm9wZXJ0aWVzIiwiY2VsbCIsIlN0cmluZyIsImNvbHMiLCJBcnJheSIsImNvbHNEaXNwbGF5IiwiT2JqZWN0IiwiZGF0YSIsInR5cGUiLCJub3RpZnkiLCJtb2RlbCIsInZhbHVlIiwic2VsZWN0YWJsZSIsIkJvb2xlYW4iLCJzZWxlY3RlZCIsInNlbGVjdGlvblR5cGUiLCJzZWxlY3Rpb25JZERhdGFQYXRoIiwiJCIsInJvdyIsInVuZGVmaW5lZCIsImdyb3VwRGlzcGxheSIsImdyb3VwIiwicHJpbWFyeUluZGV4Iiwicm93RGF0YUNoYW5nZWRMaXN0ZW5lciIsImUiLCJkZXRhaWwiLCJwYXRoIiwic2V0IiwiYmluZCIsInJlbW92ZUV2ZW50TGlzdGVuZXIiLCJhZGRFdmVudExpc3RlbmVyIiwic2VsZWN0aW9uIiwiaW50ZXJuYWwiLCJmaXJlIiwiSWQiLCJnZXQiLCJzZWxlY3Rpb25EYXRhIiwicm9vdFRhcmdldCIsIlBvbHltZXIiLCJkb20iLCJ0YWdOYW1lIiwidG9Mb3dlckNhc2UiLCJleHBhbmRlZCJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7dUJBQWFBLFE7Ozs7Ozs7c0NBRUs7QUFDaEIsV0FBS0MsRUFBTCxHQUFVLGNBQVY7QUFDQSxXQUFLQyxVQUFMLEdBQWtCO0FBQ2pCQyxhQUFNQyxNQURXO0FBRWpCQyxhQUFNQyxLQUZXO0FBR2pCQyxvQkFBYUMsTUFISTtBQUlqQkMsYUFBTTtBQUNMQyxjQUFNRixNQUREO0FBRUxHLGdCQUFRO0FBRkgsUUFKVztBQVFqQkMsY0FBTztBQUNORixjQUFNRixNQURBO0FBRU5LLGVBQU87QUFGRCxRQVJVO0FBWWpCQyxtQkFBWTtBQUNYSixjQUFNSyxPQURLO0FBRVhGLGVBQU87QUFGSSxRQVpLO0FBZ0JqQkcsaUJBQVU7QUFDVE4sY0FBTUssT0FERztBQUVURixlQUFPO0FBRkUsUUFoQk87QUFv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UUFBTCxHQUFnQixDQUFDLEtBQUtBLFFBQXRCO0FBQ0QsV0FBS0csQ0FBTCxDQUFPQyxHQUFQLENBQVdlLElBQVgsQ0FBZ0IsZ0JBQWhCLEVBQWtDLEVBQUNuQixVQUFVLEtBQUtBLFFBQWhCLEVBQWxDO0FBQ0E7Ozs0QkFFTVUsQyxFQUFHO0FBQ1QsV0FBS2tCLFFBQUwsR0FBZ0IsQ0FBQyxLQUFLQSxRQUF0QjtBQUNBLFdBQUt6QixDQUFMLENBQU9DLEdBQVAsQ0FBV2UsSUFBWCxDQUFnQixnQkFBaEIsRUFBa0MsRUFBQ1MsVUFBVSxLQUFLQSxRQUFoQixFQUEwQmhCLE1BQU1ZLFFBQVFDLEdBQVIsQ0FBWWYsQ0FBWixFQUFlRSxJQUEvQyxFQUFsQztBQUNBOzs7eUJBekRlO0FBQ2YsYUFBTyxDQUFDLHlDQUFELEVBQTRDLDJCQUE1QyxFQUF5RSxrREFBekUsQ0FBUDtBQUNBOzs7Ozs7OztBQTBERlksV0FBUXhDLFFBQVIiLCJmaWxlIjoiVGFibGVSb3cuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgVGFibGVSb3cge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItdGFibGUtcm93Jztcblx0XHR0aGlzLnByb3BlcnRpZXMgPSB7XG5cdFx0XHRjZWxsOiBTdHJpbmcsIC8vIG5hbWUgb2YgdGhlIGNvbXBvbmVudCB0aGF0IHJlcHJlc2VudHMgYW4gdGFibGUgY2VsbCBpbiB0aGUgcm93XG5cdFx0XHRjb2xzOiBBcnJheSwgLy8gYXJyYXkgb2Ygc3RyaW5ncyB0aGF0IHJlcHJlc2VudHMgdGhlIGNvbHVtbnNcblx0XHRcdGNvbHNEaXNwbGF5OiBPYmplY3QsLy8gbWFwIHdob3NlIGtleXMgbWF0Y2ggdGhlIGNvbHMgYXJyYXkgaXRlbXMgYW5kIHZhbHVlIGlzIHVzZWQgZm9yIGRpc3BsYXkgcHVycG9zZXNcblx0XHRcdGRhdGE6IHsgLy8gY29udGFpbnMgdGhlIGdyb3VwIGRhdGEgdGhhdCBjYW4gYmUgZGUtcmVmZXJlbmNlZCB1c2luZyB0aGUgdmFsdWVzIGluc2lkZSBvZiB0aGUgZ3JvdXAgYXJyYXlcblx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHRub3RpZnk6IHRydWVcblx0XHRcdH0sXG5cdFx0XHRtb2RlbDogeyAvLyBvYmplY3QgdG8gcGFzcyB0aHJvdWdoIHRvIGVhY2ggY2VsbCBpdGVtIGNvbXBvbmVudCAob3B0aW9uYWwpXG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0dmFsdWU6IG51bGxcblx0XHRcdH0sXG5cdFx0XHRzZWxlY3RhYmxlOiB7Ly8gdHJ1ZSBpZiB0aGUgcm93J3MgbGVmdCBtb3N0IGNvbHVtbiBpcyBzZWxlY3RhYmxlXG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmYWxzZVxuXHRcdFx0fSxcblx0XHRcdHNlbGVjdGVkOiB7IC8vIHRydWUgaWYgdGhlIHJvdyBpcyBzZWxlY3RhYmxlIGFuZCBzaG91bGQgYmUgc2VsZWN0ZWRcblx0XHRcdFx0dHlwZTogQm9vbGVhbixcblx0XHRcdFx0dmFsdWU6IGZhbHNlXG5cdFx0XHR9LFxuXHRcdFx0c2VsZWN0aW9uVHlwZTogeyAvLyBcImJvb2xlYW5cIiBmb3IgY2hlY2tib3ggb3IgXCJyYWRpb1wiIGZvciByYWRpb1xuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdHZhbHVlOiAnYm9vbGVhbidcblx0XHRcdH0sXG5cdFx0XHRzZWxlY3Rpb25JZERhdGFQYXRoOiB7IC8vIHBhdGggb24gdGhlIGRhdGEgb2JqZWN0IHRoYXQgY29udGFpbnMgdGhlIHNlbGVjdGlvbiBpZFxuXHRcdFx0XHR0eXBlOiBTdHJpbmcsXG5cdFx0XHRcdHZhbHVlOiAnSWQnXG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0Z2V0IG9ic2VydmVycygpIHtcblx0XHRyZXR1cm4gWydidWlsZFJvdyhjZWxsLCBjb2xzLCBjb2xzRGlzcGxheSwgZGF0YSknLCAnc2V0U2VsZWN0YWJsZShzZWxlY3RhYmxlKScsICdzZXRTZWxlY3RlZChzZWxlY3RlZCwgc2VsZWN0YWJsZSwgc2VsZWN0aW9uVHlwZSknXTtcblx0fVxuXG5cdGJ1aWxkUm93KCkge1xuXHRcdHRoaXMuJC5yb3cuZGF0YSA9IHVuZGVmaW5lZDtcblx0XHR0aGlzLiQucm93Lmdyb3VwRGlzcGxheSA9IHVuZGVmaW5lZDtcblx0XHR0aGlzLiQucm93Lmdyb3VwID0gdW5kZWZpbmVkO1xuXG5cdFx0dGhpcy4kLnJvdy5kYXRhID0gdGhpcy5kYXRhO1xuXHRcdHRoaXMuJC5yb3cuZ3JvdXBEaXNwbGF5ID0gdGhpcy5jb2xzRGlzcGxheTtcblx0XHR0aGlzLiQucm93LnByaW1hcnlJbmRleCA9IDA7XG5cdFx0dGhpcy4kLnJvdy5ncm91cCA9IHRoaXMuY29scztcblxuXHRcdHRoaXMucm93RGF0YUNoYW5nZWRMaXN0ZW5lciA9IHRoaXMucm93RGF0YUNoYW5nZWRMaXN0ZW5lciB8fCBmdW5jdGlvbihlKSB7XG5cdFx0XHRpZiAoZS5kZXRhaWwucGF0aClcblx0XHRcdFx0dGhpcy5zZXQoZS5kZXRhaWwucGF0aCwgZS5kZXRhaWwudmFsdWUpO1xuXHRcdH0uYmluZCh0aGlzKTtcblxuXHRcdC8vIHByb3BhZ2F0ZSBkYXRhIGNoYW5nZSBvbiBzYi1ncm91cCB0aHJvdWdoIHRvIHRoaXMgY29tcG9uZW50XG5cdFx0dGhpcy4kLnJvdy5yZW1vdmVFdmVudExpc3RlbmVyKCdkYXRhLWNoYW5nZWQnLCB0aGlzLnJvd0RhdGFDaGFuZ2VkTGlzdGVuZXIpO1xuXHRcdHRoaXMuJC5yb3cuYWRkRXZlbnRMaXN0ZW5lcignZGF0YS1jaGFuZ2VkJywgdGhpcy5yb3dEYXRhQ2hhbmdlZExpc3RlbmVyKTtcblx0fVxuXG5cdHNldFNlbGVjdGFibGUoKSB7XG5cdFx0aWYoIXRoaXMuc2VsZWN0YWJsZSlcblx0XHRcdHJldHVybjtcblxuXHRcdHRoaXMuJC5zZWxlY3Rpb24uYWRkRXZlbnRMaXN0ZW5lcignZGF0YS1jaGFuZ2VkJywgZnVuY3Rpb24oZSkge1xuXHRcdFx0dGhpcy5pbnRlcm5hbCA9IHRydWU7IC8vIGludGVybmFsIHNldHRpbmcgb2YgdGhpcy5zZWxlY3RlZCBzbyBkbyBub3QgZXhlY3V0ZSB0aGUgaW1wbGVtZW50YXRpb24gb2YgdGhlIHNldFNlbGVjdGVkIG9ic2VydmVyIGJlbG93XG5cdFx0XHR0aGlzLnNlbGVjdGVkID0gdHlwZW9mIGUuZGV0YWlsLnZhbHVlW3RoaXMuc2VsZWN0aW9uVHlwZV0gIT09ICd1bmRlZmluZWQnID8gZS5kZXRhaWwudmFsdWVbdGhpcy5zZWxlY3Rpb25UeXBlXSA6IGUuZGV0YWlsLnZhbHVlO1xuXHRcdFx0dGhpcy5pbnRlcm5hbCA9IGZhbHNlO1xuXHRcdFx0dGhpcy5maXJlKCdzZWxlY3Rpb24tY2hhbmdlZCcsIHtzZWxlY3RlZDogdGhpcy5zZWxlY3RlZCwgSWQ6IHRoaXMuZ2V0KCdkYXRhLicgKyB0aGlzLnNlbGVjdGlvbklkRGF0YVBhdGgpfSk7XG5cdFx0fS5iaW5kKHRoaXMpKTtcblx0fVxuXG5cdHNldFNlbGVjdGVkKCkge1xuXHRcdGlmKCF0aGlzLnNlbGVjdGFibGUgfHwgdGhpcy5pbnRlcm5hbClcblx0XHRcdHJldHVybjtcblxuXHRcdHRoaXMuJC5zZWxlY3Rpb24uZ3JvdXAgPSBbdGhpcy5zZWxlY3Rpb25UeXBlXTtcblx0XHR2YXIgc2VsZWN0aW9uRGF0YSA9IHt9O1xuXHRcdHNlbGVjdGlvbkRhdGFbdGhpcy5zZWxlY3Rpb25UeXBlXSA9IHRoaXMuc2VsZWN0ZWQ7XG5cdFx0dGhpcy4kLnNlbGVjdGlvbi5kYXRhID0gc2VsZWN0aW9uRGF0YTtcblx0fVxuXG5cdHNlbGVjdChlKSB7XG5cdFx0bGV0IHJvb3RUYXJnZXQgPSBQb2x5bWVyLmRvbShlKS5yb290VGFyZ2V0O1xuXHRcdGxldCB0YWdOYW1lID0gcm9vdFRhcmdldCAmJiByb290VGFyZ2V0LnRhZ05hbWUgPyByb290VGFyZ2V0LnRhZ05hbWUudG9Mb3dlckNhc2UoKSA6ICcnO1xuXHRcdGlmKHRhZ05hbWUgPT09ICdzYi1ncm91cCcpXG5cdFx0XHR0aGlzLnNlbGVjdGVkID0gIXRoaXMuc2VsZWN0ZWQ7XG5cdFx0dGhpcy4kLnJvdy5maXJlKCdncm91cC1zZWxlY3RlZCcsIHtzZWxlY3RlZDogdGhpcy5zZWxlY3RlZH0pO1xuXHR9XG5cblx0ZXhwYW5kKGUpIHtcblx0XHR0aGlzLmV4cGFuZGVkID0gIXRoaXMuZXhwYW5kZWQ7XG5cdFx0dGhpcy4kLnJvdy5maXJlKCdncm91cC1leHBhbmRlZCcsIHtleHBhbmRlZDogdGhpcy5leHBhbmRlZCwgcGF0aDogUG9seW1lci5kb20oZSkucGF0aH0pO1xuXHR9XG59XG5cblBvbHltZXIoVGFibGVSb3cpOyJdfQ==
'use strict';

System.register('common/layout/sb-tabs/Tabs.js', [], function (_export, _context) {
	var _createClass, Tabs;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('Tabs', Tabs = function () {
				function Tabs() {
					_classCallCheck(this, Tabs);
				}

				_createClass(Tabs, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-tabs';
						this.properties = {
							tabs: Array,
							pageComponent: String,
							pageData: {
								type: Object,
								value: {}
							},
							commonData: {
								type: Object,
								value: {}
							},
							selectedTabIndex: {
								type: Number,
								value: 0,
								observer: 'handleSelectedChanged'
							},
							tabsClass: {
								type: String,
								value: 'horizontal layout center-justified'
							},
							usePagination: {
								type: Boolean,
								value: false
							},
							paginationClass: {
								type: String,
								value: 'horizontal layout center-justified'
							}
						};
					}
				}, {
					key: 'render',
					value: function render() {
						this.enforceValidTabSelected();
						this.buildTabs();
					}
				}, {
					key: 'buildTabs',
					value: function buildTabs() {
						var template = this.$.pages.querySelector('template');
						if (template) Polymer.dom(template.parentNode).removeChild(template);

						template = document.createElement('template', 'dom-bind');
						template.pageData = this.pageData;
						template.commonData = this.commonData;
						this.buildPages(template);
						Polymer.dom(this.$.pages).appendChild(template);
					}
				}, {
					key: 'buildPages',
					value: function buildPages(template) {
						var doc = template.content.ownerDocument;
						this.tabs.forEach(function (tab) {
							var d = doc.createElement('div');
							var elem = doc.createElement(this.pageComponent);
							Polymer.dom(elem).setAttribute('name', tab.name);
							Polymer.dom(elem).setAttribute('label', tab.label);
							Polymer.dom(elem).setAttribute('page-data', '[[pageData.' + tab.name + ']]');
							Polymer.dom(elem).setAttribute('common-data', '[[commonData]]');
							Polymer.dom(d).appendChild(elem);
							Polymer.dom(template.content).appendChild(d);
						}.bind(this));
					}
				}, {
					key: 'setPaginationListener',
					value: function setPaginationListener() {
						if (!this.usePagination) return;

						this.addEventListener('pagination-changed', function (e) {
							this.selectedTabIndex = e.detail.index;
						});
					}
				}, {
					key: 'handleSelectedChanged',
					value: function handleSelectedChanged() {
						this.enforceValidTabSelected();
						this.fire('selected-tab-changed', this.selectedTabIndex);
					}
				}, {
					key: 'enforceValidTabSelected',
					value: function enforceValidTabSelected() {
						if (this.tabs && this.tabs.length <= this.selectedTabIndex) this.selectedTabIndex = 0;
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['render(tabs, pageComponent)', 'setPaginationListener(usePagination)'];
					}
				}]);

				return Tabs;
			}());

			_export('Tabs', Tabs);

			Polymer(Tabs);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlRhYnMuanMiXSwibmFtZXMiOlsiVGFicyIsImlzIiwicHJvcGVydGllcyIsInRhYnMiLCJBcnJheSIsInBhZ2VDb21wb25lbnQiLCJTdHJpbmciLCJwYWdlRGF0YSIsInR5cGUiLCJPYmplY3QiLCJ2YWx1ZSIsImNvbW1vbkRhdGEiLCJzZWxlY3RlZFRhYkluZGV4IiwiTnVtYmVyIiwib2JzZXJ2ZXIiLCJ0YWJzQ2xhc3MiLCJ1c2VQYWdpbmF0aW9uIiwiQm9vbGVhbiIsInBhZ2luYXRpb25DbGFzcyIsImVuZm9yY2VWYWxpZFRhYlNlbGVjdGVkIiwiYnVpbGRUYWJzIiwidGVtcGxhdGUiLCIkIiwicGFnZXMiLCJxdWVyeVNlbGVjdG9yIiwiUG9seW1lciIsImRvbSIsInBhcmVudE5vZGUiLCJyZW1vdmVDaGlsZCIsImRvY3VtZW50IiwiY3JlYXRlRWxlbWVudCIsImJ1aWxkUGFnZXMiLCJhcHBlbmRDaGlsZCIsImRvYyIsImNvbnRlbnQiLCJvd25lckRvY3VtZW50IiwiZm9yRWFjaCIsInRhYiIsImQiLCJlbGVtIiwic2V0QXR0cmlidXRlIiwibmFtZSIsImxhYmVsIiwiYmluZCIsImFkZEV2ZW50TGlzdGVuZXIiLCJlIiwiZGV0YWlsIiwiaW5kZXgiLCJmaXJlIiwibGVuZ3RoIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzttQkFBYUEsSTs7Ozs7OztzQ0FFSztBQUNoQixXQUFLQyxFQUFMLEdBQVUsU0FBVjtBQUNBLFdBQUtDLFVBQUwsR0FBa0I7QUFDakJDLGFBQU1DLEtBRFc7QUFFakJDLHNCQUFlQyxNQUZFO0FBR2pCQyxpQkFBVTtBQUNUQyxjQUFNQyxNQURHO0FBRVRDLGVBQU87QUFGRSxRQUhPO0FBT2pCQyxtQkFBWTtBQUNWSCxjQUFNQyxNQURJO0FBRVhDLGVBQU87QUFGSSxRQVBLO0FBV2hCRSx5QkFBa0I7QUFDbEJKLGNBQU1LLE1BRFk7QUFFbEJILGVBQU8sQ0FGVztBQUdsQkksa0JBQVU7QUFIUSxRQVhGO0FBZ0JqQkMsa0JBQVc7QUFDVlAsY0FBTUYsTUFESTtBQUVWSSxlQUFPO0FBRkcsUUFoQk07QUFvQmpCTSxzQkFBZTtBQUNkUixjQUFNUyxPQURRO0FBRWRQLGVBQU87QUFGTyxRQXBCRTtBQXdCakJRLHdCQUFpQjtBQUNoQlYsY0FBTUYsTUFEVTtBQUVoQkksZUFBTztBQUZTO0FBeEJBLE9BQWxCO0FBNkJBOzs7OEJBTVE7QUFDUixXQUFLUyx1QkFBTDtBQUNBLFdBQUtDLFNBQUw7QUFDQTs7O2lDQUVXO0FBQ1gsVUFBSUMsV0FBVyxLQUFLQyxDQUFMLENBQU9DLEtBQVAsQ0FBYUMsYUFBYixDQUEyQixVQUEzQixDQUFmO0FBQ0EsVUFBR0gsUUFBSCxFQUNDSSxRQUFRQyxHQUFSLENBQVlMLFNBQVNNLFVBQXJCLEVBQWlDQyxXQUFqQyxDQUE2Q1AsUUFBN0M7O0FBRURBLGlCQUFXUSxTQUFTQyxhQUFULENBQXVCLFVBQXZCLEVBQW1DLFVBQW5DLENBQVg7QUFDQVQsZUFBU2QsUUFBVCxHQUFvQixLQUFLQSxRQUF6QjtBQUNBYyxlQUFTVixVQUFULEdBQXNCLEtBQUtBLFVBQTNCO0FBQ0EsV0FBS29CLFVBQUwsQ0FBZ0JWLFFBQWhCO0FBQ0FJLGNBQVFDLEdBQVIsQ0FBWSxLQUFLSixDQUFMLENBQU9DLEtBQW5CLEVBQTBCUyxXQUExQixDQUFzQ1gsUUFBdEM7QUFDQTs7O2dDQUVVQSxRLEVBQVU7QUFDcEIsVUFBSVksTUFBTVosU0FBU2EsT0FBVCxDQUFpQkMsYUFBM0I7QUFDQSxXQUFLaEMsSUFBTCxDQUFVaUMsT0FBVixDQUFrQixVQUFTQyxHQUFULEVBQWM7QUFDL0IsV0FBSUMsSUFBSUwsSUFBSUgsYUFBSixDQUFrQixLQUFsQixDQUFSO0FBQ0EsV0FBSVMsT0FBT04sSUFBSUgsYUFBSixDQUFrQixLQUFLekIsYUFBdkIsQ0FBWDtBQUNBb0IsZUFBUUMsR0FBUixDQUFZYSxJQUFaLEVBQWtCQyxZQUFsQixDQUErQixNQUEvQixFQUF1Q0gsSUFBSUksSUFBM0M7QUFDQWhCLGVBQVFDLEdBQVIsQ0FBWWEsSUFBWixFQUFrQkMsWUFBbEIsQ0FBK0IsT0FBL0IsRUFBd0NILElBQUlLLEtBQTVDO0FBQ0FqQixlQUFRQyxHQUFSLENBQVlhLElBQVosRUFBa0JDLFlBQWxCLENBQStCLFdBQS9CLEVBQTRDLGdCQUFnQkgsSUFBSUksSUFBcEIsR0FBMkIsSUFBdkU7QUFDQWhCLGVBQVFDLEdBQVIsQ0FBWWEsSUFBWixFQUFrQkMsWUFBbEIsQ0FBK0IsYUFBL0IsRUFBOEMsZ0JBQTlDO0FBQ0FmLGVBQVFDLEdBQVIsQ0FBWVksQ0FBWixFQUFlTixXQUFmLENBQTJCTyxJQUEzQjtBQUNBZCxlQUFRQyxHQUFSLENBQVlMLFNBQVNhLE9BQXJCLEVBQThCRixXQUE5QixDQUEwQ00sQ0FBMUM7QUFDQSxPQVRpQixDQVNoQkssSUFUZ0IsQ0FTWCxJQVRXLENBQWxCO0FBVUE7Ozs2Q0FFdUI7QUFDdkIsVUFBRyxDQUFDLEtBQUszQixhQUFULEVBQ0M7O0FBRUQsV0FBSzRCLGdCQUFMLENBQXNCLG9CQUF0QixFQUE0QyxVQUFVQyxDQUFWLEVBQWE7QUFDeEQsWUFBS2pDLGdCQUFMLEdBQXdCaUMsRUFBRUMsTUFBRixDQUFTQyxLQUFqQztBQUNBLE9BRkQ7QUFHQTs7OzZDQUV1QjtBQUN2QixXQUFLNUIsdUJBQUw7QUFDQSxXQUFLNkIsSUFBTCxDQUFVLHNCQUFWLEVBQWtDLEtBQUtwQyxnQkFBdkM7QUFDQTs7OytDQUV5QjtBQUN6QixVQUFJLEtBQUtULElBQUwsSUFBYSxLQUFLQSxJQUFMLENBQVU4QyxNQUFWLElBQW9CLEtBQUtyQyxnQkFBMUMsRUFDQyxLQUFLQSxnQkFBTCxHQUF3QixDQUF4QjtBQUNEOzs7eUJBcERlO0FBQ2YsYUFBTyxDQUFDLDZCQUFELEVBQWdDLHNDQUFoQyxDQUFQO0FBQ0E7Ozs7Ozs7O0FBcURGYSxXQUFRekIsSUFBUiIsImZpbGUiOiJUYWJzLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIFRhYnMge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItdGFicyc7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0ge1xuXHRcdFx0dGFiczogQXJyYXksIC8vIGFycmF5IG9mIHRhYiBvYmplY3RzIHRoYXQgaGFzIGEgbmFtZSBhbmQgbGFiZWwgcHJvcGVydGllc1xuXHRcdFx0cGFnZUNvbXBvbmVudDogU3RyaW5nLCAvLyBuYW1lIG9mIGR5bmFtaWMgcGFnZSBjb21wb25lbnRcblx0XHRcdHBhZ2VEYXRhOiB7IC8vIG9iamVjdCB3aXRoIGtleXMgdGhhdCBtYXRjaCB0aGUgdGFiLm5hbWUgc28gZWFjaCBwYWdlIGNhbiBnZXQgcGFnZSBzcGVjaWZpYyBkYXRhXG5cdFx0XHRcdHR5cGU6IE9iamVjdCxcblx0XHRcdFx0dmFsdWU6IHt9XG5cdFx0XHR9LFxuXHRcdFx0Y29tbW9uRGF0YTogeyAvLyBvYmplY3QgdGhhdCB3aWxsIGJlIHBhc3NlZCB0aHJvdWdoIHRvIGFsbCBwYWdlc1xuIFx0XHRcdFx0dHlwZTogT2JqZWN0LFxuXHRcdFx0XHR2YWx1ZToge31cblx0XHRcdH0sXG4gXHRcdFx0c2VsZWN0ZWRUYWJJbmRleDogeyAvLyB0aGUgaW5kZXggb2YgdGhlIGN1cnJlbnQgc2VsZWN0ZWQgdGFiXG5cdFx0XHRcdHR5cGU6IE51bWJlcixcblx0XHRcdFx0dmFsdWU6IDAsXG5cdFx0XHRcdG9ic2VydmVyOiAnaGFuZGxlU2VsZWN0ZWRDaGFuZ2VkJ1xuXHRcdFx0fSxcblx0XHRcdHRhYnNDbGFzczogeyAvLyBjbGFzcyB2YWx1ZSBvZiB0aGUgcGFwZXItdGFicyBzdWIgY29tcG9uZW50XG5cdFx0XHRcdHR5cGU6IFN0cmluZyxcblx0XHRcdFx0dmFsdWU6ICdob3Jpem9udGFsIGxheW91dCBjZW50ZXItanVzdGlmaWVkJ1xuXHRcdFx0fSxcblx0XHRcdHVzZVBhZ2luYXRpb246IHsgLy8gaWYgdHJ1ZSB1c2UgcGFnaW5hdGlvbiB3aWRnZXQgdG8gbmF2aWdhdGUgdGhyb3VnaCB0YWJzXG5cdFx0XHRcdHR5cGU6IEJvb2xlYW4sXG5cdFx0XHRcdHZhbHVlOiBmYWxzZVxuXHRcdFx0fSxcblx0XHRcdHBhZ2luYXRpb25DbGFzczogeyAvLyBjbGFzcyB2YWx1ZSBvZiB0aGUgZGl2IHdyYXBwZXIgb2Ygc2ItcGFnaW5hdGlvbiBpZiB1c2VQYWdpbmF0aW9uIGlzIHRydWVcblx0XHRcdFx0dHlwZTogU3RyaW5nLFxuXHRcdFx0XHR2YWx1ZTogJ2hvcml6b250YWwgbGF5b3V0IGNlbnRlci1qdXN0aWZpZWQnXG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0Z2V0IG9ic2VydmVycygpIHtcblx0XHRyZXR1cm4gWydyZW5kZXIodGFicywgcGFnZUNvbXBvbmVudCknLCAnc2V0UGFnaW5hdGlvbkxpc3RlbmVyKHVzZVBhZ2luYXRpb24pJ107XG5cdH1cblxuXHRyZW5kZXIoKSB7XG5cdFx0dGhpcy5lbmZvcmNlVmFsaWRUYWJTZWxlY3RlZCgpO1xuXHRcdHRoaXMuYnVpbGRUYWJzKCk7XG5cdH1cblxuXHRidWlsZFRhYnMoKSB7XG5cdFx0bGV0IHRlbXBsYXRlID0gdGhpcy4kLnBhZ2VzLnF1ZXJ5U2VsZWN0b3IoJ3RlbXBsYXRlJyk7XG5cdFx0aWYodGVtcGxhdGUpIC8vIHJlbW92ZSB0ZW1wbGF0ZSBpZiBhbHJlYWR5IGV4aXN0c1xuXHRcdFx0UG9seW1lci5kb20odGVtcGxhdGUucGFyZW50Tm9kZSkucmVtb3ZlQ2hpbGQodGVtcGxhdGUpO1xuXG5cdFx0dGVtcGxhdGUgPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50KCd0ZW1wbGF0ZScsICdkb20tYmluZCcpO1xuXHRcdHRlbXBsYXRlLnBhZ2VEYXRhID0gdGhpcy5wYWdlRGF0YTtcblx0XHR0ZW1wbGF0ZS5jb21tb25EYXRhID0gdGhpcy5jb21tb25EYXRhO1xuXHRcdHRoaXMuYnVpbGRQYWdlcyh0ZW1wbGF0ZSk7XG5cdFx0UG9seW1lci5kb20odGhpcy4kLnBhZ2VzKS5hcHBlbmRDaGlsZCh0ZW1wbGF0ZSk7XG5cdH1cblxuXHRidWlsZFBhZ2VzKHRlbXBsYXRlKSB7XG5cdFx0bGV0IGRvYyA9IHRlbXBsYXRlLmNvbnRlbnQub3duZXJEb2N1bWVudDtcblx0XHR0aGlzLnRhYnMuZm9yRWFjaChmdW5jdGlvbih0YWIpIHtcblx0XHRcdGxldCBkID0gZG9jLmNyZWF0ZUVsZW1lbnQoJ2RpdicpO1xuXHRcdFx0bGV0IGVsZW0gPSBkb2MuY3JlYXRlRWxlbWVudCh0aGlzLnBhZ2VDb21wb25lbnQpO1xuXHRcdFx0UG9seW1lci5kb20oZWxlbSkuc2V0QXR0cmlidXRlKCduYW1lJywgdGFiLm5hbWUpO1xuXHRcdFx0UG9seW1lci5kb20oZWxlbSkuc2V0QXR0cmlidXRlKCdsYWJlbCcsIHRhYi5sYWJlbCk7XG5cdFx0XHRQb2x5bWVyLmRvbShlbGVtKS5zZXRBdHRyaWJ1dGUoJ3BhZ2UtZGF0YScsICdbW3BhZ2VEYXRhLicgKyB0YWIubmFtZSArICddXScpO1xuXHRcdFx0UG9seW1lci5kb20oZWxlbSkuc2V0QXR0cmlidXRlKCdjb21tb24tZGF0YScsICdbW2NvbW1vbkRhdGFdXScpO1xuXHRcdFx0UG9seW1lci5kb20oZCkuYXBwZW5kQ2hpbGQoZWxlbSk7XG5cdFx0XHRQb2x5bWVyLmRvbSh0ZW1wbGF0ZS5jb250ZW50KS5hcHBlbmRDaGlsZChkKTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cblx0c2V0UGFnaW5hdGlvbkxpc3RlbmVyKCkge1xuXHRcdGlmKCF0aGlzLnVzZVBhZ2luYXRpb24pXG5cdFx0XHRyZXR1cm47XG5cblx0XHR0aGlzLmFkZEV2ZW50TGlzdGVuZXIoJ3BhZ2luYXRpb24tY2hhbmdlZCcsIGZ1bmN0aW9uIChlKSB7XG5cdFx0XHR0aGlzLnNlbGVjdGVkVGFiSW5kZXggPSBlLmRldGFpbC5pbmRleDtcblx0XHR9KTtcblx0fVxuXG5cdGhhbmRsZVNlbGVjdGVkQ2hhbmdlZCgpIHtcblx0XHR0aGlzLmVuZm9yY2VWYWxpZFRhYlNlbGVjdGVkKCk7XG5cdFx0dGhpcy5maXJlKCdzZWxlY3RlZC10YWItY2hhbmdlZCcsIHRoaXMuc2VsZWN0ZWRUYWJJbmRleCk7XG5cdH1cblxuXHRlbmZvcmNlVmFsaWRUYWJTZWxlY3RlZCgpIHtcblx0XHRpZiAodGhpcy50YWJzICYmIHRoaXMudGFicy5sZW5ndGggPD0gdGhpcy5zZWxlY3RlZFRhYkluZGV4KVxuXHRcdFx0dGhpcy5zZWxlY3RlZFRhYkluZGV4ID0gMDtcblx0fVxufVxuXG5Qb2x5bWVyKFRhYnMpOyJdfQ==
'use strict';

System.register('common/services/sb-line-editor-cache-save/LineEditorCacheSaver.js', [], function (_export, _context) {
	var _createClass, LineEditorCacheSaver;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('LineEditorCacheSaver', LineEditorCacheSaver = function () {
				function LineEditorCacheSaver() {
					_classCallCheck(this, LineEditorCacheSaver);
				}

				_createClass(LineEditorCacheSaver, [{
					key: 'beforeRegister',
					value: function beforeRegister() {
						this.is = 'sb-line-editor-cache-save';
						this.properties = {
							quote: Object,
							error: {
								type: String,
								notify: true
							}
						};
					}
				}, {
					key: 'ready',
					value: function ready() {
						this.$.service.addEventListener('error-changed', function (e) {
							this.error = e.detail;
							console.log(e.detail);
						}.bind(this));
					}
				}, {
					key: 'save',
					value: function save() {
						this.$.service.transient = true;
						this.$.service.uid = this.quote.record.Id;
						this.$.service.model = this.quote;
						this.$.service.saver = null;
					}
				}, {
					key: 'observers',
					get: function get() {
						return ['save(quote)'];
					}
				}]);

				return LineEditorCacheSaver;
			}());

			_export('LineEditorCacheSaver', LineEditorCacheSaver);

			Polymer(LineEditorCacheSaver);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkxpbmVFZGl0b3JDYWNoZVNhdmVyLmpzIl0sIm5hbWVzIjpbIkxpbmVFZGl0b3JDYWNoZVNhdmVyIiwiaXMiLCJwcm9wZXJ0aWVzIiwicXVvdGUiLCJPYmplY3QiLCJlcnJvciIsInR5cGUiLCJTdHJpbmciLCJub3RpZnkiLCIkIiwic2VydmljZSIsImFkZEV2ZW50TGlzdGVuZXIiLCJlIiwiZGV0YWlsIiwiY29uc29sZSIsImxvZyIsImJpbmQiLCJ0cmFuc2llbnQiLCJ1aWQiLCJyZWNvcmQiLCJJZCIsIm1vZGVsIiwic2F2ZXIiLCJQb2x5bWVyIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzttQ0FBYUEsb0I7Ozs7Ozs7c0NBRUs7QUFDaEIsV0FBS0MsRUFBTCxHQUFVLDJCQUFWO0FBQ0EsV0FBS0MsVUFBTCxHQUFrQjtBQUNqQkMsY0FBT0MsTUFEVTtBQUVqQkMsY0FBTztBQUNOQyxjQUFNQyxNQURBO0FBRU5DLGdCQUFRO0FBRkY7QUFGVSxPQUFsQjtBQU9BOzs7NkJBTU87QUFDUCxXQUFLQyxDQUFMLENBQU9DLE9BQVAsQ0FBZUMsZ0JBQWYsQ0FBZ0MsZUFBaEMsRUFBaUQsVUFBU0MsQ0FBVCxFQUFZO0FBQzVELFlBQUtQLEtBQUwsR0FBYU8sRUFBRUMsTUFBZjtBQUNBQyxlQUFRQyxHQUFSLENBQVlILEVBQUVDLE1BQWQ7QUFDQSxPQUhnRCxDQUcvQ0csSUFIK0MsQ0FHMUMsSUFIMEMsQ0FBakQ7QUFJQTs7OzRCQUVNO0FBQ04sV0FBS1AsQ0FBTCxDQUFPQyxPQUFQLENBQWVPLFNBQWYsR0FBMkIsSUFBM0I7QUFDQSxXQUFLUixDQUFMLENBQU9DLE9BQVAsQ0FBZVEsR0FBZixHQUFxQixLQUFLZixLQUFMLENBQVdnQixNQUFYLENBQWtCQyxFQUF2QztBQUNBLFdBQUtYLENBQUwsQ0FBT0MsT0FBUCxDQUFlVyxLQUFmLEdBQXVCLEtBQUtsQixLQUE1QjtBQUNBLFdBQUtNLENBQUwsQ0FBT0MsT0FBUCxDQUFlWSxLQUFmLEdBQXVCLElBQXZCO0FBQ0E7Ozt5QkFoQmU7QUFDZixhQUFPLENBQUMsYUFBRCxDQUFQO0FBQ0E7Ozs7Ozs7O0FBZ0JGQyxXQUFRdkIsb0JBQVIiLCJmaWxlIjoiTGluZUVkaXRvckNhY2hlU2F2ZXIuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgTGluZUVkaXRvckNhY2hlU2F2ZXIge1xuXG5cdGJlZm9yZVJlZ2lzdGVyKCkge1xuXHRcdHRoaXMuaXMgPSAnc2ItbGluZS1lZGl0b3ItY2FjaGUtc2F2ZSc7XG5cdFx0dGhpcy5wcm9wZXJ0aWVzID0ge1xuXHRcdFx0cXVvdGU6IE9iamVjdCxcblx0XHRcdGVycm9yOiB7XG5cdFx0XHRcdHR5cGU6IFN0cmluZyxcblx0XHRcdFx0bm90aWZ5OiB0cnVlXG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0Z2V0IG9ic2VydmVycygpIHtcblx0XHRyZXR1cm4gWydzYXZlKHF1b3RlKSddO1xuXHR9XG5cblx0cmVhZHkoKSB7XG5cdFx0dGhpcy4kLnNlcnZpY2UuYWRkRXZlbnRMaXN0ZW5lcignZXJyb3ItY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcblx0XHRcdHRoaXMuZXJyb3IgPSBlLmRldGFpbDtcblx0XHRcdGNvbnNvbGUubG9nKGUuZGV0YWlsKTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cdFxuXHRzYXZlKCkge1xuXHRcdHRoaXMuJC5zZXJ2aWNlLnRyYW5zaWVudCA9IHRydWU7XG5cdFx0dGhpcy4kLnNlcnZpY2UudWlkID0gdGhpcy5xdW90ZS5yZWNvcmQuSWQ7XG5cdFx0dGhpcy4kLnNlcnZpY2UubW9kZWwgPSB0aGlzLnF1b3RlO1xuXHRcdHRoaXMuJC5zZXJ2aWNlLnNhdmVyID0gbnVsbDtcblx0fVxufVxuUG9seW1lcihMaW5lRWRpdG9yQ2FjaGVTYXZlcik7XG4iXX0=
'use strict';

System.register('common/services/sb-line-editor-calculate/LineEditorCalculator.js', [], function (_export, _context) {
    var _createClass, LineEditorCalculator;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('LineEditorCalculator', LineEditorCalculator = function () {
                function LineEditorCalculator() {
                    _classCallCheck(this, LineEditorCalculator);
                }

                _createClass(LineEditorCalculator, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-line-editor-calculate';
                        this.properties = {
                            error: {
                                type: String,
                                notify: true
                            }
                        };
                    }
                }, {
                    key: 'ready',
                    value: function ready() {
                        this.$.service.addEventListener('response-changed', function (e) {
                            if (e.detail.value) {
                                this.fire('quote-changed', {
                                    quote: e.detail.value
                                });
                            }
                        }.bind(this));

                        this.$.service.addEventListener('error-changed', function (e) {
                            if (e.detail.value) this.error = e.detail.value;
                        }.bind(this));
                    }
                }, {
                    key: 'calculate',
                    value: function calculate() {
                        if (!this.quote) {
                            return;
                        };
                        if (this.settings.usesClientCalculator) {
                            console.log('JSQC');
                        } else {
                            this.$.service.model = this.quote;
                        }
                    }
                }, {
                    key: 'observers',
                    get: function get() {
                        return ['calculate(quote)'];
                    }
                }]);

                return LineEditorCalculator;
            }());

            _export('LineEditorCalculator', LineEditorCalculator);

            Polymer(LineEditorCalculator);
        }
    };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkxpbmVFZGl0b3JDYWxjdWxhdG9yLmpzIl0sIm5hbWVzIjpbIkxpbmVFZGl0b3JDYWxjdWxhdG9yIiwiaXMiLCJwcm9wZXJ0aWVzIiwiZXJyb3IiLCJ0eXBlIiwiU3RyaW5nIiwibm90aWZ5IiwiJCIsInNlcnZpY2UiLCJhZGRFdmVudExpc3RlbmVyIiwiZSIsImRldGFpbCIsInZhbHVlIiwiZmlyZSIsInF1b3RlIiwiYmluZCIsInNldHRpbmdzIiwidXNlc0NsaWVudENhbGN1bGF0b3IiLCJjb25zb2xlIiwibG9nIiwibW9kZWwiLCJQb2x5bWVyIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs0Q0FBYUEsb0I7Ozs7Ozs7cURBRVE7QUFDYiw2QkFBS0MsRUFBTCxHQUFVLDBCQUFWO0FBQ0EsNkJBQUtDLFVBQUwsR0FBa0I7QUFDZEMsbUNBQU87QUFDSEMsc0NBQU1DLE1BREg7QUFFSEMsd0NBQVE7QUFGTDtBQURPLHlCQUFsQjtBQU1IOzs7NENBTU87QUFDSiw2QkFBS0MsQ0FBTCxDQUFPQyxPQUFQLENBQWVDLGdCQUFmLENBQWdDLGtCQUFoQyxFQUFvRCxVQUFTQyxDQUFULEVBQVk7QUFDNUQsZ0NBQUlBLEVBQUVDLE1BQUYsQ0FBU0MsS0FBYixFQUFvQjtBQUNoQixxQ0FBS0MsSUFBTCxDQUFVLGVBQVYsRUFBMkI7QUFDdkJDLDJDQUFPSixFQUFFQyxNQUFGLENBQVNDO0FBRE8saUNBQTNCO0FBR0g7QUFDSix5QkFObUQsQ0FNbERHLElBTmtELENBTTdDLElBTjZDLENBQXBEOztBQVFBLDZCQUFLUixDQUFMLENBQU9DLE9BQVAsQ0FBZUMsZ0JBQWYsQ0FBZ0MsZUFBaEMsRUFBaUQsVUFBU0MsQ0FBVCxFQUFZO0FBQ3pELGdDQUFJQSxFQUFFQyxNQUFGLENBQVNDLEtBQWIsRUFDSSxLQUFLVCxLQUFMLEdBQWFPLEVBQUVDLE1BQUYsQ0FBU0MsS0FBdEI7QUFDUCx5QkFIZ0QsQ0FHL0NHLElBSCtDLENBRzFDLElBSDBDLENBQWpEO0FBSUg7OztnREFFVztBQUNSLDRCQUFJLENBQUMsS0FBS0QsS0FBVixFQUFpQjtBQUFFO0FBQVE7QUFDM0IsNEJBQUksS0FBS0UsUUFBTCxDQUFjQyxvQkFBbEIsRUFBd0M7QUFDcENDLG9DQUFRQyxHQUFSLENBQVksTUFBWjtBQUNILHlCQUZELE1BRU87QUFDSCxpQ0FBS1osQ0FBTCxDQUFPQyxPQUFQLENBQWVZLEtBQWYsR0FBdUIsS0FBS04sS0FBNUI7QUFDSDtBQUNKOzs7d0NBMUJlO0FBQ1osK0JBQU8sQ0FBQyxrQkFBRCxDQUFQO0FBQ0g7Ozs7Ozs7O0FBMkJMTyxvQkFBUXJCLG9CQUFSIiwiZmlsZSI6IkxpbmVFZGl0b3JDYWxjdWxhdG9yLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIExpbmVFZGl0b3JDYWxjdWxhdG9yIHtcblxuICAgIGJlZm9yZVJlZ2lzdGVyKCkge1xuICAgICAgICB0aGlzLmlzID0gJ3NiLWxpbmUtZWRpdG9yLWNhbGN1bGF0ZSc7XG4gICAgICAgIHRoaXMucHJvcGVydGllcyA9IHtcbiAgICAgICAgICAgIGVycm9yOiB7XG4gICAgICAgICAgICAgICAgdHlwZTogU3RyaW5nLFxuICAgICAgICAgICAgICAgIG5vdGlmeTogdHJ1ZVxuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgfVxuXG4gICAgZ2V0IG9ic2VydmVycygpIHtcbiAgICAgICAgcmV0dXJuIFsnY2FsY3VsYXRlKHF1b3RlKSddO1xuICAgIH1cblxuICAgIHJlYWR5KCkge1xuICAgICAgICB0aGlzLiQuc2VydmljZS5hZGRFdmVudExpc3RlbmVyKCdyZXNwb25zZS1jaGFuZ2VkJywgZnVuY3Rpb24oZSkge1xuICAgICAgICAgICAgaWYgKGUuZGV0YWlsLnZhbHVlKSB7XG4gICAgICAgICAgICAgICAgdGhpcy5maXJlKCdxdW90ZS1jaGFuZ2VkJywge1xuICAgICAgICAgICAgICAgICAgICBxdW90ZTogZS5kZXRhaWwudmFsdWVcbiAgICAgICAgICAgICAgICB9KTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgfS5iaW5kKHRoaXMpKTtcblxuICAgICAgICB0aGlzLiQuc2VydmljZS5hZGRFdmVudExpc3RlbmVyKCdlcnJvci1jaGFuZ2VkJywgZnVuY3Rpb24oZSkge1xuICAgICAgICAgICAgaWYgKGUuZGV0YWlsLnZhbHVlKVxuICAgICAgICAgICAgICAgIHRoaXMuZXJyb3IgPSBlLmRldGFpbC52YWx1ZTtcbiAgICAgICAgfS5iaW5kKHRoaXMpKTtcbiAgICB9XG5cbiAgICBjYWxjdWxhdGUoKSB7XG4gICAgICAgIGlmICghdGhpcy5xdW90ZSkgeyByZXR1cm4gfTtcbiAgICAgICAgaWYgKHRoaXMuc2V0dGluZ3MudXNlc0NsaWVudENhbGN1bGF0b3IpIHtcbiAgICAgICAgICAgIGNvbnNvbGUubG9nKCdKU1FDJylcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIHRoaXMuJC5zZXJ2aWNlLm1vZGVsID0gdGhpcy5xdW90ZTtcbiAgICAgICAgfVxuICAgIH1cbn1cblxuUG9seW1lcihMaW5lRWRpdG9yQ2FsY3VsYXRvcik7Il19
'use strict';

System.register('common/services/sb-line-editor-read/LineEditorReader.js', [], function (_export, _context) {
    var _createClass, LineEditorReader;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('LineEditorReader', LineEditorReader = function () {
                function LineEditorReader() {
                    _classCallCheck(this, LineEditorReader);
                }

                _createClass(LineEditorReader, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-line-editor-read';
                        this.properties = {
                            quoteId: String,
                            lineEditorModel: {
                                type: Object,
                                notify: true
                            },
                            error: {
                                type: String,
                                notify: true
                            }
                        };
                    }
                }, {
                    key: 'ready',
                    value: function ready() {
                        this.$.service.addEventListener('response-changed', function (e) {
                            if (e.detail.value) this.lineEditorModel = e.detail.value;
                        }.bind(this));

                        this.$.service.addEventListener('error-changed', function (e) {
                            if (e.detail.value) this.error = e.detail.value;
                        }.bind(this));
                    }
                }, {
                    key: 'read',
                    value: function read() {
                        this.$.service.uid = this.quoteId.substring(0, 15);
                    }
                }, {
                    key: 'observers',
                    get: function get() {
                        return ['read(quoteId)'];
                    }
                }]);

                return LineEditorReader;
            }());

            _export('LineEditorReader', LineEditorReader);

            Polymer(LineEditorReader);
        }
    };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkxpbmVFZGl0b3JSZWFkZXIuanMiXSwibmFtZXMiOlsiTGluZUVkaXRvclJlYWRlciIsImlzIiwicHJvcGVydGllcyIsInF1b3RlSWQiLCJTdHJpbmciLCJsaW5lRWRpdG9yTW9kZWwiLCJ0eXBlIiwiT2JqZWN0Iiwibm90aWZ5IiwiZXJyb3IiLCIkIiwic2VydmljZSIsImFkZEV2ZW50TGlzdGVuZXIiLCJlIiwiZGV0YWlsIiwidmFsdWUiLCJiaW5kIiwidWlkIiwic3Vic3RyaW5nIiwiUG9seW1lciJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7d0NBQWFBLGdCOzs7Ozs7O3FEQUVRO0FBQ2IsNkJBQUtDLEVBQUwsR0FBVSxxQkFBVjtBQUNBLDZCQUFLQyxVQUFMLEdBQWtCO0FBQ2RDLHFDQUFTQyxNQURLO0FBRWRDLDZDQUFpQjtBQUNiQyxzQ0FBTUMsTUFETztBQUViQyx3Q0FBUTtBQUZLLDZCQUZIO0FBTWRDLG1DQUFPO0FBQ0hILHNDQUFNRixNQURIO0FBRUhJLHdDQUFRO0FBRkw7QUFOTyx5QkFBbEI7QUFnQkg7Ozs0Q0FPTztBQUNKLDZCQUFLRSxDQUFMLENBQU9DLE9BQVAsQ0FBZUMsZ0JBQWYsQ0FBZ0Msa0JBQWhDLEVBQW9ELFVBQVNDLENBQVQsRUFBWTtBQUM1RCxnQ0FBR0EsRUFBRUMsTUFBRixDQUFTQyxLQUFaLEVBQ0ksS0FBS1YsZUFBTCxHQUF1QlEsRUFBRUMsTUFBRixDQUFTQyxLQUFoQztBQUNQLHlCQUhtRCxDQUdsREMsSUFIa0QsQ0FHN0MsSUFINkMsQ0FBcEQ7O0FBS0EsNkJBQUtOLENBQUwsQ0FBT0MsT0FBUCxDQUFlQyxnQkFBZixDQUFnQyxlQUFoQyxFQUFpRCxVQUFTQyxDQUFULEVBQVk7QUFDekQsZ0NBQUdBLEVBQUVDLE1BQUYsQ0FBU0MsS0FBWixFQUNJLEtBQUtOLEtBQUwsR0FBYUksRUFBRUMsTUFBRixDQUFTQyxLQUF0QjtBQUNQLHlCQUhnRCxDQUcvQ0MsSUFIK0MsQ0FHMUMsSUFIMEMsQ0FBakQ7QUFJSDs7OzJDQUVNO0FBQ0gsNkJBQUtOLENBQUwsQ0FBT0MsT0FBUCxDQUFlTSxHQUFmLEdBQXFCLEtBQUtkLE9BQUwsQ0FBYWUsU0FBYixDQUF1QixDQUF2QixFQUEwQixFQUExQixDQUFyQjtBQUNIOzs7d0NBbkJlO0FBQ1osK0JBQU8sQ0FBQyxlQUFELENBQVA7QUFDSDs7Ozs7Ozs7QUFvQkxDLG9CQUFRbkIsZ0JBQVIiLCJmaWxlIjoiTGluZUVkaXRvclJlYWRlci5qcyIsInNvdXJjZXNDb250ZW50IjpbImV4cG9ydCBjbGFzcyBMaW5lRWRpdG9yUmVhZGVyIHtcblxuICAgIGJlZm9yZVJlZ2lzdGVyKCkge1xuICAgICAgICB0aGlzLmlzID0gJ3NiLWxpbmUtZWRpdG9yLXJlYWQnO1xuICAgICAgICB0aGlzLnByb3BlcnRpZXMgPSB7XG4gICAgICAgICAgICBxdW90ZUlkOiBTdHJpbmcsXG4gICAgICAgICAgICBsaW5lRWRpdG9yTW9kZWw6IHtcbiAgICAgICAgICAgICAgICB0eXBlOiBPYmplY3QsXG4gICAgICAgICAgICAgICAgbm90aWZ5OiB0cnVlXG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgZXJyb3I6IHtcbiAgICAgICAgICAgICAgICB0eXBlOiBTdHJpbmcsXG4gICAgICAgICAgICAgICAgbm90aWZ5OiB0cnVlXG4gICAgICAgICAgICB9XG4gICAgICAgICAgICAvLyBUT0RPIHVwZGF0ZSBjb21wb25lbnQgdG8gdXNlIHJlc3BvbnNlIGF0dHJpYnV0ZSBhbmQgZ2V0IHJpZCBvZiByZXNwb25zZS1jaGFuZ2VkIGV2ZW50IGxpc3RlbmVyXG4gICAgICAgICAgICAvL3Jlc3BvbnNlOiB7XG4gICAgICAgICAgICAvLyAgICB0eXBlOiBPYmplY3QsXG4gICAgICAgICAgICAvLyAgICBub3RpZnk6IHRydWVcbiAgICAgICAgICAgIC8vfVxuICAgICAgICB9XG4gICAgfVxuXG4gICAgZ2V0IG9ic2VydmVycygpIHtcbiAgICAgICAgcmV0dXJuIFsncmVhZChxdW90ZUlkKSddO1xuICAgIH1cblxuICAgIC8vIFRPRE8gZ2V0IHJpZCBvZiBsaXN0ZW5lcnNcbiAgICByZWFkeSgpIHtcbiAgICAgICAgdGhpcy4kLnNlcnZpY2UuYWRkRXZlbnRMaXN0ZW5lcigncmVzcG9uc2UtY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcbiAgICAgICAgICAgIGlmKGUuZGV0YWlsLnZhbHVlKVxuICAgICAgICAgICAgICAgIHRoaXMubGluZUVkaXRvck1vZGVsID0gZS5kZXRhaWwudmFsdWU7XG4gICAgICAgIH0uYmluZCh0aGlzKSk7XG5cbiAgICAgICAgdGhpcy4kLnNlcnZpY2UuYWRkRXZlbnRMaXN0ZW5lcignZXJyb3ItY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcbiAgICAgICAgICAgIGlmKGUuZGV0YWlsLnZhbHVlKVxuICAgICAgICAgICAgICAgIHRoaXMuZXJyb3IgPSBlLmRldGFpbC52YWx1ZTtcbiAgICAgICAgfS5iaW5kKHRoaXMpKTtcbiAgICB9XG5cbiAgICByZWFkKCkge1xuICAgICAgICB0aGlzLiQuc2VydmljZS51aWQgPSB0aGlzLnF1b3RlSWQuc3Vic3RyaW5nKDAsIDE1KTtcbiAgICB9XG59XG5cblBvbHltZXIoTGluZUVkaXRvclJlYWRlcik7Il19
'use strict';

System.register('dealdesk/services/sb-dd-model-read/DealDeskModelReader.js', [], function (_export, _context) {
    var _createClass, DealDeskModelReader;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('DealDeskModelReader', DealDeskModelReader = function () {
                function DealDeskModelReader() {
                    _classCallCheck(this, DealDeskModelReader);
                }

                _createClass(DealDeskModelReader, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-dd-model-read';
                        this.properties = {
                            recordId: String,
                            dealDeskModelRead: {
                                type: Object,
                                notify: true
                            },
                            error: {
                                type: String,
                                notify: true
                            }
                        };
                    }
                }, {
                    key: 'ready',
                    value: function ready() {
                        this.$.service.addEventListener('response-changed', function (e) {
                            var returnModel = e.detail.value;
                            this.$.validation.model = returnModel;
                        }.bind(this));
                        this.$.service.addEventListener('error-changed', function (e) {
                            this.error = e.detail.value;
                        }.bind(this));
                        this.$.validation.addEventListener('modelValidated', function (e) {
                            this.dealDeskModelRead = e.detail.model;
                            this.fire('showDealDesk');
                            this.fire('setIFrame');
                        }.bind(this));
                    }
                }, {
                    key: 'read',
                    value: function read() {
                        this.$.service.uid = this.recordId;
                    }
                }, {
                    key: 'observers',
                    get: function get() {
                        return ['read(recordId)'];
                    }
                }]);

                return DealDeskModelReader;
            }());

            _export('DealDeskModelReader', DealDeskModelReader);

            Polymer(DealDeskModelReader);
        }
    };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRlYWxEZXNrTW9kZWxSZWFkZXIuanMiXSwibmFtZXMiOlsiRGVhbERlc2tNb2RlbFJlYWRlciIsImlzIiwicHJvcGVydGllcyIsInJlY29yZElkIiwiU3RyaW5nIiwiZGVhbERlc2tNb2RlbFJlYWQiLCJ0eXBlIiwiT2JqZWN0Iiwibm90aWZ5IiwiZXJyb3IiLCIkIiwic2VydmljZSIsImFkZEV2ZW50TGlzdGVuZXIiLCJlIiwicmV0dXJuTW9kZWwiLCJkZXRhaWwiLCJ2YWx1ZSIsInZhbGlkYXRpb24iLCJtb2RlbCIsImJpbmQiLCJmaXJlIiwidWlkIiwiUG9seW1lciJdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7MkNBQWFBLG1COzs7Ozs7O3FEQUVRO0FBQ2IsNkJBQUtDLEVBQUwsR0FBVSxrQkFBVjtBQUNBLDZCQUFLQyxVQUFMLEdBQWtCO0FBQ2RDLHNDQUFVQyxNQURJO0FBRWRDLCtDQUFtQjtBQUNmQyxzQ0FBTUMsTUFEUztBQUVmQyx3Q0FBUTtBQUZPLDZCQUZMO0FBTWRDLG1DQUFPO0FBQ0hILHNDQUFNRixNQURIO0FBRUhJLHdDQUFRO0FBRkw7QUFOTyx5QkFBbEI7QUFXSDs7OzRDQU1PO0FBQ0osNkJBQUtFLENBQUwsQ0FBT0MsT0FBUCxDQUFlQyxnQkFBZixDQUFnQyxrQkFBaEMsRUFBb0QsVUFBU0MsQ0FBVCxFQUFZO0FBQzVELGdDQUFJQyxjQUFjRCxFQUFFRSxNQUFGLENBQVNDLEtBQTNCO0FBQ0EsaUNBQUtOLENBQUwsQ0FBT08sVUFBUCxDQUFrQkMsS0FBbEIsR0FBMEJKLFdBQTFCO0FBQ0gseUJBSG1ELENBR2xESyxJQUhrRCxDQUc3QyxJQUg2QyxDQUFwRDtBQUlBLDZCQUFLVCxDQUFMLENBQU9DLE9BQVAsQ0FBZUMsZ0JBQWYsQ0FBZ0MsZUFBaEMsRUFBaUQsVUFBU0MsQ0FBVCxFQUFZO0FBQ3pELGlDQUFLSixLQUFMLEdBQWFJLEVBQUVFLE1BQUYsQ0FBU0MsS0FBdEI7QUFDSCx5QkFGZ0QsQ0FFL0NHLElBRitDLENBRTFDLElBRjBDLENBQWpEO0FBR0EsNkJBQUtULENBQUwsQ0FBT08sVUFBUCxDQUFrQkwsZ0JBQWxCLENBQW1DLGdCQUFuQyxFQUFxRCxVQUFTQyxDQUFULEVBQVk7QUFDN0QsaUNBQUtSLGlCQUFMLEdBQXlCUSxFQUFFRSxNQUFGLENBQVNHLEtBQWxDO0FBQ0EsaUNBQUtFLElBQUwsQ0FBVSxjQUFWO0FBQ0EsaUNBQUtBLElBQUwsQ0FBVSxXQUFWO0FBQ0gseUJBSm9ELENBSW5ERCxJQUptRCxDQUk5QyxJQUo4QyxDQUFyRDtBQUtIOzs7MkNBRU07QUFDSCw2QkFBS1QsQ0FBTCxDQUFPQyxPQUFQLENBQWVVLEdBQWYsR0FBcUIsS0FBS2xCLFFBQTFCO0FBQ0g7Ozt3Q0FyQmU7QUFDWiwrQkFBTyxDQUFDLGdCQUFELENBQVA7QUFDSDs7Ozs7Ozs7QUF1QkxtQixvQkFBU3RCLG1CQUFUIiwiZmlsZSI6IkRlYWxEZXNrTW9kZWxSZWFkZXIuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgRGVhbERlc2tNb2RlbFJlYWRlciB7XG5cbiAgICBiZWZvcmVSZWdpc3RlcigpIHtcbiAgICAgICAgdGhpcy5pcyA9ICdzYi1kZC1tb2RlbC1yZWFkJztcbiAgICAgICAgdGhpcy5wcm9wZXJ0aWVzID0ge1xuICAgICAgICAgICAgcmVjb3JkSWQ6IFN0cmluZyxcbiAgICAgICAgICAgIGRlYWxEZXNrTW9kZWxSZWFkOiB7XG4gICAgICAgICAgICAgICAgdHlwZTogT2JqZWN0LFxuICAgICAgICAgICAgICAgIG5vdGlmeTogdHJ1ZVxuICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIGVycm9yOiB7XG4gICAgICAgICAgICAgICAgdHlwZTogU3RyaW5nLFxuICAgICAgICAgICAgICAgIG5vdGlmeTogdHJ1ZVxuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgfVxuXG4gICAgZ2V0IG9ic2VydmVycygpIHtcbiAgICAgICAgcmV0dXJuIFsncmVhZChyZWNvcmRJZCknXTtcbiAgICB9XG5cbiAgICByZWFkeSgpIHtcbiAgICAgICAgdGhpcy4kLnNlcnZpY2UuYWRkRXZlbnRMaXN0ZW5lcigncmVzcG9uc2UtY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcbiAgICAgICAgICAgIHZhciByZXR1cm5Nb2RlbCA9IGUuZGV0YWlsLnZhbHVlO1xuICAgICAgICAgICAgdGhpcy4kLnZhbGlkYXRpb24ubW9kZWwgPSByZXR1cm5Nb2RlbDtcbiAgICAgICAgfS5iaW5kKHRoaXMpKTtcbiAgICAgICAgdGhpcy4kLnNlcnZpY2UuYWRkRXZlbnRMaXN0ZW5lcignZXJyb3ItY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcbiAgICAgICAgICAgIHRoaXMuZXJyb3IgPSBlLmRldGFpbC52YWx1ZTtcbiAgICAgICAgfS5iaW5kKHRoaXMpKTtcbiAgICAgICAgdGhpcy4kLnZhbGlkYXRpb24uYWRkRXZlbnRMaXN0ZW5lcignbW9kZWxWYWxpZGF0ZWQnLCBmdW5jdGlvbihlKSB7XG4gICAgICAgICAgICB0aGlzLmRlYWxEZXNrTW9kZWxSZWFkID0gZS5kZXRhaWwubW9kZWw7XG4gICAgICAgICAgICB0aGlzLmZpcmUoJ3Nob3dEZWFsRGVzaycpO1xuICAgICAgICAgICAgdGhpcy5maXJlKCdzZXRJRnJhbWUnKTtcbiAgICAgICAgfS5iaW5kKHRoaXMpKTtcbiAgICB9XG5cbiAgICByZWFkKCkge1xuICAgICAgICB0aGlzLiQuc2VydmljZS51aWQgPSB0aGlzLnJlY29yZElkO1xuICAgIH1cblxuXG59XG5Qb2x5bWVyKCBEZWFsRGVza01vZGVsUmVhZGVyICk7Il19
'use strict';

System.register('dealdesk/services/sb-dd-model-save/DealDeskModelSaver.js', [], function (_export, _context) {
    var _createClass, DealDeskModelSaver;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('DealDeskModelSaver', DealDeskModelSaver = function () {
                function DealDeskModelSaver() {
                    _classCallCheck(this, DealDeskModelSaver);
                }

                _createClass(DealDeskModelSaver, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-dd-model-save';
                        this.properties = {
                            recordId: String,
                            dealDeskModelUpdated: {
                                type: Object,
                                notify: true
                            },
                            error: {
                                type: String,
                                notify: true
                            }
                        };
                    }
                }, {
                    key: 'ready',
                    value: function ready() {
                        this.$.service.addEventListener('response-changed', function (e) {
                            if (this.closeAfterSave == true) {
                                this.$.service.waiting = true;
                                setTimeout(function () {
                                    window.location.href = window.location.origin + '/' + e.detail.value.parentRecord.Id;
                                }, 0);
                            } else {
                                this.clearProps();
                                this.dealDeskModelUpdated = e.detail.value;
                                this.fire('cleanAfterSave');
                                this.fire('reloadIFrame');
                                setTimeout(function () {
                                    this.fire('newModelReceived');
                                }.bind(this), 0);
                            }
                        }.bind(this));
                        this.$.service.addEventListener('error-changed', function (e) {
                            this.clearProps();
                            this.error = e.detail.value;
                        }.bind(this));
                    }
                }, {
                    key: 'save',
                    value: function save() {
                        this.$.service.model = this.dealDeskModelSave;
                    }
                }, {
                    key: 'clearProps',
                    value: function clearProps() {
                        this.dealDeskModelSave = undefined;
                        this.closeAfterSave = undefined;
                        this.$.service.model = undefined;
                    }
                }, {
                    key: 'observers',
                    get: function get() {
                        return ['save(dealDeskModelSave, closeAfterSave)'];
                    }
                }]);

                return DealDeskModelSaver;
            }());

            _export('DealDeskModelSaver', DealDeskModelSaver);

            Polymer(DealDeskModelSaver);
        }
    };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRlYWxEZXNrTW9kZWxTYXZlci5qcyJdLCJuYW1lcyI6WyJEZWFsRGVza01vZGVsU2F2ZXIiLCJpcyIsInByb3BlcnRpZXMiLCJyZWNvcmRJZCIsIlN0cmluZyIsImRlYWxEZXNrTW9kZWxVcGRhdGVkIiwidHlwZSIsIk9iamVjdCIsIm5vdGlmeSIsImVycm9yIiwiJCIsInNlcnZpY2UiLCJhZGRFdmVudExpc3RlbmVyIiwiZSIsImNsb3NlQWZ0ZXJTYXZlIiwid2FpdGluZyIsInNldFRpbWVvdXQiLCJ3aW5kb3ciLCJsb2NhdGlvbiIsImhyZWYiLCJvcmlnaW4iLCJkZXRhaWwiLCJ2YWx1ZSIsInBhcmVudFJlY29yZCIsIklkIiwiY2xlYXJQcm9wcyIsImZpcmUiLCJiaW5kIiwibW9kZWwiLCJkZWFsRGVza01vZGVsU2F2ZSIsInVuZGVmaW5lZCIsIlBvbHltZXIiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzBDQUFhQSxrQjs7Ozs7OztxREFFUTtBQUNiLDZCQUFLQyxFQUFMLEdBQVUsa0JBQVY7QUFDQSw2QkFBS0MsVUFBTCxHQUFrQjtBQUNkQyxzQ0FBVUMsTUFESTtBQUVkQyxrREFBc0I7QUFDbEJDLHNDQUFNQyxNQURZO0FBRWxCQyx3Q0FBUTtBQUZVLDZCQUZSO0FBTWRDLG1DQUFPO0FBQ0hILHNDQUFNRixNQURIO0FBRUhJLHdDQUFRO0FBRkw7QUFOTyx5QkFBbEI7QUFXSDs7OzRDQU1PO0FBQ0osNkJBQUtFLENBQUwsQ0FBT0MsT0FBUCxDQUFlQyxnQkFBZixDQUFnQyxrQkFBaEMsRUFBb0QsVUFBU0MsQ0FBVCxFQUFZO0FBQzVELGdDQUFJLEtBQUtDLGNBQUwsSUFBdUIsSUFBM0IsRUFBaUM7QUFDN0IscUNBQUtKLENBQUwsQ0FBT0MsT0FBUCxDQUFlSSxPQUFmLEdBQXlCLElBQXpCO0FBQ0FDLDJDQUFXLFlBQVU7QUFDakJDLDJDQUFPQyxRQUFQLENBQWdCQyxJQUFoQixHQUF1QkYsT0FBT0MsUUFBUCxDQUFnQkUsTUFBaEIsR0FBeUIsR0FBekIsR0FBK0JQLEVBQUVRLE1BQUYsQ0FBU0MsS0FBVCxDQUFlQyxZQUFmLENBQTRCQyxFQUFsRjtBQUNILGlDQUZELEVBRUcsQ0FGSDtBQUdILDZCQUxELE1BS087QUFDSCxxQ0FBS0MsVUFBTDtBQUNBLHFDQUFLcEIsb0JBQUwsR0FBNEJRLEVBQUVRLE1BQUYsQ0FBU0MsS0FBckM7QUFDQSxxQ0FBS0ksSUFBTCxDQUFVLGdCQUFWO0FBQ0EscUNBQUtBLElBQUwsQ0FBVSxjQUFWO0FBQ0FWLDJDQUFXLFlBQVU7QUFDakIseUNBQUtVLElBQUwsQ0FBVSxrQkFBVjtBQUNILGlDQUZVLENBRVRDLElBRlMsQ0FFSixJQUZJLENBQVgsRUFFYyxDQUZkO0FBR0g7QUFDSix5QkFmbUQsQ0FlbERBLElBZmtELENBZTdDLElBZjZDLENBQXBEO0FBZ0JBLDZCQUFLakIsQ0FBTCxDQUFPQyxPQUFQLENBQWVDLGdCQUFmLENBQWdDLGVBQWhDLEVBQWlELFVBQVNDLENBQVQsRUFBWTtBQUN6RCxpQ0FBS1ksVUFBTDtBQUNBLGlDQUFLaEIsS0FBTCxHQUFhSSxFQUFFUSxNQUFGLENBQVNDLEtBQXRCO0FBQ0gseUJBSGdELENBRy9DSyxJQUgrQyxDQUcxQyxJQUgwQyxDQUFqRDtBQUlIOzs7MkNBRU07QUFDSCw2QkFBS2pCLENBQUwsQ0FBT0MsT0FBUCxDQUFlaUIsS0FBZixHQUF1QixLQUFLQyxpQkFBNUI7QUFDSDs7O2lEQUVZO0FBQ1QsNkJBQUtBLGlCQUFMLEdBQXlCQyxTQUF6QjtBQUNBLDZCQUFLaEIsY0FBTCxHQUFzQmdCLFNBQXRCO0FBQ0EsNkJBQUtwQixDQUFMLENBQU9DLE9BQVAsQ0FBZWlCLEtBQWYsR0FBdUJFLFNBQXZCO0FBQ0g7Ozt3Q0FuQ2U7QUFDWiwrQkFBTyxDQUFDLHlDQUFELENBQVA7QUFDSDs7Ozs7Ozs7QUFtQ0xDLG9CQUFTL0Isa0JBQVQiLCJmaWxlIjoiRGVhbERlc2tNb2RlbFNhdmVyLmpzIiwic291cmNlc0NvbnRlbnQiOlsiZXhwb3J0IGNsYXNzIERlYWxEZXNrTW9kZWxTYXZlciB7XG5cbiAgICBiZWZvcmVSZWdpc3RlcigpIHtcbiAgICAgICAgdGhpcy5pcyA9ICdzYi1kZC1tb2RlbC1zYXZlJztcbiAgICAgICAgdGhpcy5wcm9wZXJ0aWVzID0ge1xuICAgICAgICAgICAgcmVjb3JkSWQ6IFN0cmluZyxcbiAgICAgICAgICAgIGRlYWxEZXNrTW9kZWxVcGRhdGVkOiB7XG4gICAgICAgICAgICAgICAgdHlwZTogT2JqZWN0LFxuICAgICAgICAgICAgICAgIG5vdGlmeTogdHJ1ZVxuICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIGVycm9yOiB7XG4gICAgICAgICAgICAgICAgdHlwZTogU3RyaW5nLFxuICAgICAgICAgICAgICAgIG5vdGlmeTogdHJ1ZVxuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgfVxuXG4gICAgZ2V0IG9ic2VydmVycygpIHtcbiAgICAgICAgcmV0dXJuIFsnc2F2ZShkZWFsRGVza01vZGVsU2F2ZSwgY2xvc2VBZnRlclNhdmUpJ107XG4gICAgfVxuXG4gICAgcmVhZHkoKSB7XG4gICAgICAgIHRoaXMuJC5zZXJ2aWNlLmFkZEV2ZW50TGlzdGVuZXIoJ3Jlc3BvbnNlLWNoYW5nZWQnLCBmdW5jdGlvbihlKSB7XG4gICAgICAgICAgICBpZiAodGhpcy5jbG9zZUFmdGVyU2F2ZSA9PSB0cnVlKSB7XG4gICAgICAgICAgICAgICAgdGhpcy4kLnNlcnZpY2Uud2FpdGluZyA9IHRydWU7XG4gICAgICAgICAgICAgICAgc2V0VGltZW91dChmdW5jdGlvbigpe1xuICAgICAgICAgICAgICAgICAgICB3aW5kb3cubG9jYXRpb24uaHJlZiA9IHdpbmRvdy5sb2NhdGlvbi5vcmlnaW4gKyAnLycgKyBlLmRldGFpbC52YWx1ZS5wYXJlbnRSZWNvcmQuSWQ7XG4gICAgICAgICAgICAgICAgfSwgMCk7XG4gICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgIHRoaXMuY2xlYXJQcm9wcygpXG4gICAgICAgICAgICAgICAgdGhpcy5kZWFsRGVza01vZGVsVXBkYXRlZCA9IGUuZGV0YWlsLnZhbHVlO1xuICAgICAgICAgICAgICAgIHRoaXMuZmlyZSgnY2xlYW5BZnRlclNhdmUnKTtcbiAgICAgICAgICAgICAgICB0aGlzLmZpcmUoJ3JlbG9hZElGcmFtZScpO1xuICAgICAgICAgICAgICAgIHNldFRpbWVvdXQoZnVuY3Rpb24oKXtcbiAgICAgICAgICAgICAgICAgICAgdGhpcy5maXJlKCduZXdNb2RlbFJlY2VpdmVkJyk7XG4gICAgICAgICAgICAgICAgfS5iaW5kKHRoaXMpLCAwKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgfS5iaW5kKHRoaXMpKTtcbiAgICAgICAgdGhpcy4kLnNlcnZpY2UuYWRkRXZlbnRMaXN0ZW5lcignZXJyb3ItY2hhbmdlZCcsIGZ1bmN0aW9uKGUpIHtcbiAgICAgICAgICAgIHRoaXMuY2xlYXJQcm9wcygpXG4gICAgICAgICAgICB0aGlzLmVycm9yID0gZS5kZXRhaWwudmFsdWU7XG4gICAgICAgIH0uYmluZCh0aGlzKSk7XG4gICAgfVxuXG4gICAgc2F2ZSgpIHtcbiAgICAgICAgdGhpcy4kLnNlcnZpY2UubW9kZWwgPSB0aGlzLmRlYWxEZXNrTW9kZWxTYXZlO1xuICAgIH1cblxuICAgIGNsZWFyUHJvcHMoKSB7XG4gICAgICAgIHRoaXMuZGVhbERlc2tNb2RlbFNhdmUgPSB1bmRlZmluZWQ7XG4gICAgICAgIHRoaXMuY2xvc2VBZnRlclNhdmUgPSB1bmRlZmluZWQ7XG4gICAgICAgIHRoaXMuJC5zZXJ2aWNlLm1vZGVsID0gdW5kZWZpbmVkO1xuICAgIH1cbn1cblBvbHltZXIoIERlYWxEZXNrTW9kZWxTYXZlciApOyJdfQ==
'use strict';

System.register('dealdesk/validations/sb-dd-read-validations/DealDeskReadValidations.js', ['common/core/AppContext.js'], function (_export, _context) {
    var AppContext, _createClass, DealDeskReadValidations;

    function _classCallCheck(instance, Constructor) {
        if (!(instance instanceof Constructor)) {
            throw new TypeError("Cannot call a class as a function");
        }
    }

    return {
        setters: [function (_commonCoreAppContextJs) {
            AppContext = _commonCoreAppContextJs.AppContext;
        }],
        execute: function () {
            _createClass = function () {
                function defineProperties(target, props) {
                    for (var i = 0; i < props.length; i++) {
                        var descriptor = props[i];
                        descriptor.enumerable = descriptor.enumerable || false;
                        descriptor.configurable = true;
                        if ("value" in descriptor) descriptor.writable = true;
                        Object.defineProperty(target, descriptor.key, descriptor);
                    }
                }

                return function (Constructor, protoProps, staticProps) {
                    if (protoProps) defineProperties(Constructor.prototype, protoProps);
                    if (staticProps) defineProperties(Constructor, staticProps);
                    return Constructor;
                };
            }();

            _export('DealDeskReadValidations', DealDeskReadValidations = function () {
                function DealDeskReadValidations() {
                    _classCallCheck(this, DealDeskReadValidations);
                }

                _createClass(DealDeskReadValidations, [{
                    key: 'beforeRegister',
                    value: function beforeRegister() {
                        this.is = 'sb-dd-read-validations';
                        this.properties = {
                            validationMessages: {
                                type: Array,
                                value: []
                            }
                        };
                    }
                }, {
                    key: 'validate',
                    value: function validate() {
                        this.validateChildLineStatuses(this.model);
                        if (this.validationMessages.length <= 0) {
                            this.fire("modelValidated", {
                                model: this.model
                            });
                        } else {
                            this.fire('addMessages', {
                                value: this.validationMessages
                            });
                        }
                    }
                }, {
                    key: 'validateChildLineStatuses',
                    value: function validateChildLineStatuses(model) {
                        console.log('AppContext.org.prefix: ', AppContext.org.prefix);
                        var fieldName = AppContext.org.prefix ? AppContext.org.prefix + '__ApprovalStatus__c' : 'ApprovalStatus__c';
                        console.log('fieldName: ', fieldName);
                        var childLines = model.childRecords;
                        var numChildLines = childLines.length;
                        for (var i = 0; i < numChildLines; i++) {
                            console.log('childLines[i]', childLines[i]);
                            if (!childLines[i][fieldName]) {
                                var message = "Object must be submitted for approval before accessing Deal Desk";
                                this.push("validationMessages", message);
                                return;
                            }
                        }
                    }
                }, {
                    key: 'observers',
                    get: function get() {
                        return ['validate(model)'];
                    }
                }]);

                return DealDeskReadValidations;
            }());

            _export('DealDeskReadValidations', DealDeskReadValidations);

            Polymer(DealDeskReadValidations);
        }
    };
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkRlYWxEZXNrUmVhZFZhbGlkYXRpb25zLmpzIl0sIm5hbWVzIjpbIkFwcENvbnRleHQiLCJEZWFsRGVza1JlYWRWYWxpZGF0aW9ucyIsImlzIiwicHJvcGVydGllcyIsInZhbGlkYXRpb25NZXNzYWdlcyIsInR5cGUiLCJBcnJheSIsInZhbHVlIiwidmFsaWRhdGVDaGlsZExpbmVTdGF0dXNlcyIsIm1vZGVsIiwibGVuZ3RoIiwiZmlyZSIsImNvbnNvbGUiLCJsb2ciLCJvcmciLCJwcmVmaXgiLCJmaWVsZE5hbWUiLCJjaGlsZExpbmVzIiwiY2hpbGRSZWNvcmRzIiwibnVtQ2hpbGRMaW5lcyIsImkiLCJtZXNzYWdlIiwicHVzaCIsIlBvbHltZXIiXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7QUFBUUEsc0IsMkJBQUFBLFU7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OzsrQ0FFS0MsdUI7Ozs7Ozs7cURBRVE7QUFDYiw2QkFBS0MsRUFBTCxHQUFVLHdCQUFWO0FBQ0EsNkJBQUtDLFVBQUwsR0FBa0I7QUFDZEMsZ0RBQW9CO0FBQ2hCQyxzQ0FBTUMsS0FEVTtBQUVoQkMsdUNBQU87QUFGUztBQUROLHlCQUFsQjtBQU1IOzs7K0NBTVU7QUFDUCw2QkFBS0MseUJBQUwsQ0FBK0IsS0FBS0MsS0FBcEM7QUFDQSw0QkFBSSxLQUFLTCxrQkFBTCxDQUF3Qk0sTUFBeEIsSUFBa0MsQ0FBdEMsRUFBeUM7QUFDckMsaUNBQUtDLElBQUwsQ0FBVSxnQkFBVixFQUE0QjtBQUN4QkYsdUNBQU8sS0FBS0E7QUFEWSw2QkFBNUI7QUFHSCx5QkFKRCxNQUlPO0FBQ0gsaUNBQUtFLElBQUwsQ0FBVSxhQUFWLEVBQXlCO0FBQ3JCSix1Q0FBTyxLQUFLSDtBQURTLDZCQUF6QjtBQUdIO0FBQ0o7Ozs4REFFeUJLLEssRUFBTztBQUM3QkcsZ0NBQVFDLEdBQVIsQ0FBWSx5QkFBWixFQUF1Q2IsV0FBV2MsR0FBWCxDQUFlQyxNQUF0RDtBQUNOLDRCQUFJQyxZQUFZaEIsV0FBV2MsR0FBWCxDQUFlQyxNQUFmLEdBQXdCZixXQUFXYyxHQUFYLENBQWVDLE1BQWYsR0FBd0IscUJBQWhELEdBQXdFLG1CQUF4RjtBQUNNSCxnQ0FBUUMsR0FBUixDQUFZLGFBQVosRUFBMkJHLFNBQTNCO0FBQ0EsNEJBQUlDLGFBQWFSLE1BQU1TLFlBQXZCO0FBQ0EsNEJBQUlDLGdCQUFnQkYsV0FBV1AsTUFBL0I7QUFDQSw2QkFBSyxJQUFJVSxJQUFJLENBQWIsRUFBZ0JBLElBQUlELGFBQXBCLEVBQW1DQyxHQUFuQyxFQUF3QztBQUNwQ1Isb0NBQVFDLEdBQVIsQ0FBWSxlQUFaLEVBQTZCSSxXQUFXRyxDQUFYLENBQTdCO0FBQ0EsZ0NBQUksQ0FBQ0gsV0FBV0csQ0FBWCxFQUFjSixTQUFkLENBQUwsRUFBK0I7QUFDM0Isb0NBQUlLLFVBQVUsa0VBQWQ7QUFDQSxxQ0FBS0MsSUFBTCxDQUFVLG9CQUFWLEVBQWdDRCxPQUFoQztBQUNBO0FBQ0g7QUFDSjtBQUNKOzs7d0NBL0JlO0FBQ1osK0JBQU8sQ0FBQyxpQkFBRCxDQUFQO0FBQ0g7Ozs7Ozs7O0FBK0JMRSxvQkFBU3RCLHVCQUFUIiwiZmlsZSI6IkRlYWxEZXNrUmVhZFZhbGlkYXRpb25zLmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtBcHBDb250ZXh0fSBmcm9tICdjb21tb24vY29yZS9BcHBDb250ZXh0LmpzJztcblxuZXhwb3J0IGNsYXNzIERlYWxEZXNrUmVhZFZhbGlkYXRpb25zIHtcblxuICAgIGJlZm9yZVJlZ2lzdGVyKCkge1xuICAgICAgICB0aGlzLmlzID0gJ3NiLWRkLXJlYWQtdmFsaWRhdGlvbnMnO1xuICAgICAgICB0aGlzLnByb3BlcnRpZXMgPSB7XG4gICAgICAgICAgICB2YWxpZGF0aW9uTWVzc2FnZXM6IHtcbiAgICAgICAgICAgICAgICB0eXBlOiBBcnJheSxcbiAgICAgICAgICAgICAgICB2YWx1ZTogW11cbiAgICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgIH1cblxuICAgIGdldCBvYnNlcnZlcnMoKSB7XG4gICAgICAgIHJldHVybiBbJ3ZhbGlkYXRlKG1vZGVsKSddO1xuICAgIH1cblxuICAgIHZhbGlkYXRlKCkge1xuICAgICAgICB0aGlzLnZhbGlkYXRlQ2hpbGRMaW5lU3RhdHVzZXModGhpcy5tb2RlbCk7XG4gICAgICAgIGlmICh0aGlzLnZhbGlkYXRpb25NZXNzYWdlcy5sZW5ndGggPD0gMCkge1xuICAgICAgICAgICAgdGhpcy5maXJlKFwibW9kZWxWYWxpZGF0ZWRcIiwge1xuICAgICAgICAgICAgICAgIG1vZGVsOiB0aGlzLm1vZGVsXG4gICAgICAgICAgICB9KVxuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgdGhpcy5maXJlKCdhZGRNZXNzYWdlcycsIHtcbiAgICAgICAgICAgICAgICB2YWx1ZTogdGhpcy52YWxpZGF0aW9uTWVzc2FnZXNcbiAgICAgICAgICAgIH0pO1xuICAgICAgICB9XG4gICAgfVxuXG4gICAgdmFsaWRhdGVDaGlsZExpbmVTdGF0dXNlcyhtb2RlbCkge1xuICAgICAgICBjb25zb2xlLmxvZygnQXBwQ29udGV4dC5vcmcucHJlZml4OiAnLCBBcHBDb250ZXh0Lm9yZy5wcmVmaXgpO1xuXHRcdGxldCBmaWVsZE5hbWUgPSBBcHBDb250ZXh0Lm9yZy5wcmVmaXggPyBBcHBDb250ZXh0Lm9yZy5wcmVmaXggKyAnX19BcHByb3ZhbFN0YXR1c19fYycgOiAnQXBwcm92YWxTdGF0dXNfX2MnO1xuICAgICAgICBjb25zb2xlLmxvZygnZmllbGROYW1lOiAnLCBmaWVsZE5hbWUpO1xuICAgICAgICBsZXQgY2hpbGRMaW5lcyA9IG1vZGVsLmNoaWxkUmVjb3JkcztcbiAgICAgICAgbGV0IG51bUNoaWxkTGluZXMgPSBjaGlsZExpbmVzLmxlbmd0aDtcbiAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBudW1DaGlsZExpbmVzOyBpKyspIHtcbiAgICAgICAgICAgIGNvbnNvbGUubG9nKCdjaGlsZExpbmVzW2ldJywgY2hpbGRMaW5lc1tpXSk7XG4gICAgICAgICAgICBpZiAoIWNoaWxkTGluZXNbaV1bZmllbGROYW1lXSkge1xuICAgICAgICAgICAgICAgIGxldCBtZXNzYWdlID0gXCJPYmplY3QgbXVzdCBiZSBzdWJtaXR0ZWQgZm9yIGFwcHJvdmFsIGJlZm9yZSBhY2Nlc3NpbmcgRGVhbCBEZXNrXCI7XG4gICAgICAgICAgICAgICAgdGhpcy5wdXNoKFwidmFsaWRhdGlvbk1lc3NhZ2VzXCIsIG1lc3NhZ2UpO1xuICAgICAgICAgICAgICAgIHJldHVybjtcbiAgICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgIH1cbn1cblBvbHltZXIoIERlYWxEZXNrUmVhZFZhbGlkYXRpb25zICk7Il19
'use strict';

System.register('common/data/sb-service/test/Setup.js', ['../../../oauth/OAuth.js'], function (_export, _context) {
	var OAuth, _createClass, ORG_URL, ORG_ID, REFRESH_TOKEN, LOGIN_URL, Setup;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [function (_oauthOAuthJs) {
			OAuth = _oauthOAuthJs.OAuth;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			ORG_URL = 'https://na34.salesforce.com';
			ORG_ID = '00D61000000dwYmEAI';
			REFRESH_TOKEN = '5Aep861tbt360sO1.vax81FWRk4cQc8WdhWW6kMjRQMgJ9b1jsXbB9KTqr4OJWqucCWzAJdxSZapNU6w6_VAReK';
			LOGIN_URL = 'https://login.salesforce.com';

			_export('Setup', Setup = function () {
				function Setup(orgUrl, orgId, refreshToken) {
					_classCallCheck(this, Setup);

					this.orgUrl = orgUrl || ORG_URL;
					this.orgId = orgId || ORG_ID;
					this.refreshToken = refreshToken || REFRESH_TOKEN;
					this.id = LOGIN_URL + '/id/' + this.orgId;
					this.oauth = new OAuth();
				}

				_createClass(Setup, [{
					key: 'setup',
					value: function setup() {
						var tokens = {
							instance_url: this.orgUrl,
							id: this.id,
							refresh_token: this.refreshToken
						};
						this.tokens = this.oauth.tokens;
						this.oauth.tokens = tokens;
					}
				}, {
					key: 'cleanup',
					value: function cleanup() {
						if (!this.tokens || !this.tokens.refreshToken) return;

						var tokens = {
							instance_url: this.tokens.instanceUrl,
							id: this.tokens.userInfo.url,
							refresh_token: this.tokens.refreshToken,
							access_token: this.tokens.accessToken
						};
						this.oauth.tokens = tokens;
					}
				}]);

				return Setup;
			}());

			_export('Setup', Setup);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIlNldHVwLmpzIl0sIm5hbWVzIjpbIk9BdXRoIiwiT1JHX1VSTCIsIk9SR19JRCIsIlJFRlJFU0hfVE9LRU4iLCJMT0dJTl9VUkwiLCJTZXR1cCIsIm9yZ1VybCIsIm9yZ0lkIiwicmVmcmVzaFRva2VuIiwiaWQiLCJvYXV0aCIsInRva2VucyIsImluc3RhbmNlX3VybCIsInJlZnJlc2hfdG9rZW4iLCJpbnN0YW5jZVVybCIsInVzZXJJbmZvIiwidXJsIiwiYWNjZXNzX3Rva2VuIiwiYWNjZXNzVG9rZW4iXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7QUFBUUEsUSxpQkFBQUEsSzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBRUZDLFUsR0FBVSw2QjtBQUNWQyxTLEdBQVMsb0I7QUFDVEMsZ0IsR0FBZ0IseUY7QUFDaEJDLFksR0FBWSw4Qjs7b0JBRUxDLEs7QUFFWixtQkFBWUMsTUFBWixFQUFvQkMsS0FBcEIsRUFBMkJDLFlBQTNCLEVBQXlDO0FBQUE7O0FBQ3hDLFVBQUtGLE1BQUwsR0FBY0EsVUFBVUwsT0FBeEI7QUFDQSxVQUFLTSxLQUFMLEdBQWFBLFNBQVNMLE1BQXRCO0FBQ0EsVUFBS00sWUFBTCxHQUFvQkEsZ0JBQWdCTCxhQUFwQztBQUNBLFVBQUtNLEVBQUwsR0FBVUwsWUFBWSxNQUFaLEdBQXFCLEtBQUtHLEtBQXBDO0FBQ0EsVUFBS0csS0FBTCxHQUFhLElBQUlWLEtBQUosRUFBYjtBQUNBOzs7OzZCQUVPO0FBQ1AsVUFBSVcsU0FBUztBQUNaQyxxQkFBYyxLQUFLTixNQURQO0FBRVpHLFdBQUksS0FBS0EsRUFGRztBQUdaSSxzQkFBZSxLQUFLTDtBQUhSLE9BQWI7QUFLQSxXQUFLRyxNQUFMLEdBQWMsS0FBS0QsS0FBTCxDQUFXQyxNQUF6QjtBQUNBLFdBQUtELEtBQUwsQ0FBV0MsTUFBWCxHQUFvQkEsTUFBcEI7QUFDQTs7OytCQUVTO0FBQ1QsVUFBRyxDQUFDLEtBQUtBLE1BQU4sSUFBZ0IsQ0FBQyxLQUFLQSxNQUFMLENBQVlILFlBQWhDLEVBQ0M7O0FBRUQsVUFBSUcsU0FBUztBQUNaQyxxQkFBYyxLQUFLRCxNQUFMLENBQVlHLFdBRGQ7QUFFWkwsV0FBSSxLQUFLRSxNQUFMLENBQVlJLFFBQVosQ0FBcUJDLEdBRmI7QUFHWkgsc0JBQWUsS0FBS0YsTUFBTCxDQUFZSCxZQUhmO0FBSVpTLHFCQUFjLEtBQUtOLE1BQUwsQ0FBWU87QUFKZCxPQUFiO0FBTUEsV0FBS1IsS0FBTCxDQUFXQyxNQUFYLEdBQW9CQSxNQUFwQjtBQUNBIiwiZmlsZSI6IlNldHVwLmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtPQXV0aH0gZnJvbSAnLi4vLi4vLi4vb2F1dGgvT0F1dGguanMnO1xuXG5jb25zdCBPUkdfVVJMID0gJ2h0dHBzOi8vbmEzNC5zYWxlc2ZvcmNlLmNvbSc7XG5jb25zdCBPUkdfSUQgPSAnMDBENjEwMDAwMDBkd1ltRUFJJztcbmNvbnN0IFJFRlJFU0hfVE9LRU4gPSAnNUFlcDg2MXRidDM2MHNPMS52YXg4MUZXUms0Y1FjOFdkaFdXNmtNalJRTWdKOWIxanNYYkI5S1RxcjRPSldxdWNDV3pBSmR4U1phcE5VNnc2X1ZBUmVLJztcbmNvbnN0IExPR0lOX1VSTCA9ICdodHRwczovL2xvZ2luLnNhbGVzZm9yY2UuY29tJztcblxuZXhwb3J0IGNsYXNzIFNldHVwIHtcblxuXHRjb25zdHJ1Y3RvcihvcmdVcmwsIG9yZ0lkLCByZWZyZXNoVG9rZW4pIHtcblx0XHR0aGlzLm9yZ1VybCA9IG9yZ1VybCB8fCBPUkdfVVJMO1xuXHRcdHRoaXMub3JnSWQgPSBvcmdJZCB8fCBPUkdfSUQ7XG5cdFx0dGhpcy5yZWZyZXNoVG9rZW4gPSByZWZyZXNoVG9rZW4gfHwgUkVGUkVTSF9UT0tFTjtcblx0XHR0aGlzLmlkID0gTE9HSU5fVVJMICsgJy9pZC8nICsgdGhpcy5vcmdJZDtcblx0XHR0aGlzLm9hdXRoID0gbmV3IE9BdXRoKCk7XG5cdH1cblxuXHRzZXR1cCgpIHtcblx0XHR2YXIgdG9rZW5zID0ge1xuXHRcdFx0aW5zdGFuY2VfdXJsOiB0aGlzLm9yZ1VybCxcblx0XHRcdGlkOiB0aGlzLmlkLFxuXHRcdFx0cmVmcmVzaF90b2tlbjogdGhpcy5yZWZyZXNoVG9rZW5cblx0XHR9O1xuXHRcdHRoaXMudG9rZW5zID0gdGhpcy5vYXV0aC50b2tlbnM7XG5cdFx0dGhpcy5vYXV0aC50b2tlbnMgPSB0b2tlbnM7XG5cdH1cblxuXHRjbGVhbnVwKCkge1xuXHRcdGlmKCF0aGlzLnRva2VucyB8fCAhdGhpcy50b2tlbnMucmVmcmVzaFRva2VuKVxuXHRcdFx0cmV0dXJuO1xuXG5cdFx0dmFyIHRva2VucyA9IHtcblx0XHRcdGluc3RhbmNlX3VybDogdGhpcy50b2tlbnMuaW5zdGFuY2VVcmwsXG5cdFx0XHRpZDogdGhpcy50b2tlbnMudXNlckluZm8udXJsLFxuXHRcdFx0cmVmcmVzaF90b2tlbjogdGhpcy50b2tlbnMucmVmcmVzaFRva2VuLFxuXHRcdFx0YWNjZXNzX3Rva2VuOiB0aGlzLnRva2Vucy5hY2Nlc3NUb2tlblxuXHRcdH07XG5cdFx0dGhpcy5vYXV0aC50b2tlbnMgPSB0b2tlbnM7XG5cdH1cbn0iXX0=
'use strict';

System.register('common/data/sb-db/adapter/leveljs/LevelAdapter.js', ['common/Util.js'], function (_export, _context) {
	var Util, _createClass, ID, ID_DELIM, LevelAdapter;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	function getRelatedId(ref) {
		var id = null;

		if (ref && typeof ref === 'string') id = ref;else if (ref && ref.id) id = ref.id;

		return id;
	}

	function getAll(db, model) {
		if (!model) return Promise.reject('Cannot query all records without model');

		return new Promise(function (resolve, reject) {
			var it = db.iterator({
				'gte': model.schema.id + ID_DELIM,
				'lte': model.schema.id + ID_DELIM + '\uFFFF',
				'valueAsBuffer': false
			});

			next(it, []).then(function (records) {
				resolve(records);
			}).catch(function (err) {
				reject(err);
			});
		});
	}

	function next(it, records) {
		return new Promise(function (resolve, reject) {
			it.next(function (err, key, value) {
				if (err) {
					reject(err);
				} else {
					if (!key && !value) {
						resolve(records);
					} else {
						records.push(value);
						next(it, records).then(function (newRecords) {
							resolve(newRecords);
						}).catch(function (err) {
							reject(err);
						});
					}
				}
			});
		});
	}

	function getOne(db, id) {
		if (!id) return Promise.resolve();

		return new Promise(function (resolve, reject) {
			db.get(id, { asBuffer: false }, function (err, obj) {
				if (err) reject(err);else resolve(obj);
			});
		});
	}

	function toArray(x) {
		return x == null || Array.isArray(x) ? x : [x];
	}

	function hasProp(x) {
		if (!x) return false;

		for (var p in x) {
			return true;
		}return false;
	}
	return {
		setters: [function (_commonUtilJs) {
			Util = _commonUtilJs.Util;
		}],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			ID = 'id';
			ID_DELIM = '_';

			_export('LevelAdapter', LevelAdapter = function () {
				function LevelAdapter() {
					_classCallCheck(this, LevelAdapter);
				}

				_createClass(LevelAdapter, [{
					key: 'open',
					value: function open(name) {
						this.db = new window.Level(name);
						return new Promise(function (resolve, reject) {
							this.db.open(function (err) {
								if (err) reject(err);else resolve(this.db);
							}.bind(this));
						}.bind(this));
					}
				}, {
					key: 'save',
					value: function save(objs) {
						if (objs == null) return Promise.reject('Cannot save a null object');

						var ops = [],
						    self = this,
						    wasArray = Array.isArray(objs),
						    now = Date.now(),
						    nowStr = Util.toIsoDate(now),
						    user = 1;

						objs = toArray(objs);

						var _iteratorNormalCompletion = true;
						var _didIteratorError = false;
						var _iteratorError = undefined;

						try {
							for (var _iterator = objs[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
								var obj = _step.value;

								if (hasProp(obj)) {
									for (var r in obj.constructor.relationships()) {
										var ref = obj[r];
										if (Array.isArray(ref)) {
											var len = ref.length;
											for (var i = 0; i < len; i++) {
												ref[i] = getRelatedId(ref[i]);
											}obj[r] = ref.filter(function (v) {
												return v != null;
											});

											if (!obj[r].length) delete obj[r];
										} else {
											obj[r] = getRelatedId(ref);
											if (!obj[r]) delete obj[r];
										}
									}

									if (!obj.id) {
										obj.id = obj.constructor.schema.id + ID_DELIM + now;
										obj.createdDate = nowStr;
										obj.createdBy = user;
									}

									obj.lastModifiedDate = nowStr;
									obj.lastModifiedBy = user;

									ops.push({
										type: 'put',
										key: obj.id,
										value: obj
									});
								}
							}
						} catch (err) {
							_didIteratorError = true;
							_iteratorError = err;
						} finally {
							try {
								if (!_iteratorNormalCompletion && _iterator.return) {
									_iterator.return();
								}
							} finally {
								if (_didIteratorError) {
									throw _iteratorError;
								}
							}
						}

						return new Promise(function (resolve, reject) {
							this.db.batch(ops, function (err) {
								if (err) {
									reject(err);
								} else {
									resolve(wasArray ? objs : objs[0]);
								}
							}.bind(this));
						}.bind(this));
					}
				}, {
					key: 'remove',
					value: function remove(objs) {
						if (objs == null) return Promise.reject('Cannot remove a null object');

						var ops = [];
						objs = toArray(objs);
						var _iteratorNormalCompletion2 = true;
						var _didIteratorError2 = false;
						var _iteratorError2 = undefined;

						try {
							for (var _iterator2 = objs[Symbol.iterator](), _step2; !(_iteratorNormalCompletion2 = (_step2 = _iterator2.next()).done); _iteratorNormalCompletion2 = true) {
								var obj = _step2.value;

								if (obj) {
									ops.push({
										type: 'del',
										key: obj.id ? obj.id : obj });
								}
							}
						} catch (err) {
							_didIteratorError2 = true;
							_iteratorError2 = err;
						} finally {
							try {
								if (!_iteratorNormalCompletion2 && _iterator2.return) {
									_iterator2.return();
								}
							} finally {
								if (_didIteratorError2) {
									throw _iteratorError2;
								}
							}
						}

						return new Promise(function (resolve, reject) {
							this.db.batch(ops, function (err) {
								if (err) {
									reject(err);
								} else {
									resolve();
								}
							});
						}.bind(this));
					}
				}, {
					key: 'get',
					value: function get(id, model) {
						if (id) {
							return getOne(this.db, id);
						} else {
							return getAll(this.db, model);
						}
					}
				}]);

				return LevelAdapter;
			}());

			_export('LevelAdapter', LevelAdapter);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIkxldmVsQWRhcHRlci5qcyJdLCJuYW1lcyI6WyJnZXRSZWxhdGVkSWQiLCJyZWYiLCJpZCIsImdldEFsbCIsImRiIiwibW9kZWwiLCJQcm9taXNlIiwicmVqZWN0IiwicmVzb2x2ZSIsIml0IiwiaXRlcmF0b3IiLCJzY2hlbWEiLCJJRF9ERUxJTSIsIm5leHQiLCJ0aGVuIiwicmVjb3JkcyIsImNhdGNoIiwiZXJyIiwia2V5IiwidmFsdWUiLCJwdXNoIiwibmV3UmVjb3JkcyIsImdldE9uZSIsImdldCIsImFzQnVmZmVyIiwib2JqIiwidG9BcnJheSIsIngiLCJBcnJheSIsImlzQXJyYXkiLCJoYXNQcm9wIiwicCIsIlV0aWwiLCJJRCIsIkxldmVsQWRhcHRlciIsIm5hbWUiLCJ3aW5kb3ciLCJMZXZlbCIsIm9wZW4iLCJiaW5kIiwib2JqcyIsIm9wcyIsInNlbGYiLCJ3YXNBcnJheSIsIm5vdyIsIkRhdGUiLCJub3dTdHIiLCJ0b0lzb0RhdGUiLCJ1c2VyIiwiciIsImNvbnN0cnVjdG9yIiwicmVsYXRpb25zaGlwcyIsImxlbiIsImxlbmd0aCIsImkiLCJmaWx0ZXIiLCJ2IiwiY3JlYXRlZERhdGUiLCJjcmVhdGVkQnkiLCJsYXN0TW9kaWZpZWREYXRlIiwibGFzdE1vZGlmaWVkQnkiLCJ0eXBlIiwiYmF0Y2giXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7O0FBOElBLFVBQVNBLFlBQVQsQ0FBdUJDLEdBQXZCLEVBQTZCO0FBQzVCLE1BQUlDLEtBQUssSUFBVDs7QUFFQSxNQUFJRCxPQUFPLE9BQU9BLEdBQVAsS0FBZSxRQUExQixFQUNDQyxLQUFLRCxHQUFMLENBREQsS0FFSyxJQUFJQSxPQUFPQSxJQUFJQyxFQUFmLEVBQ0pBLEtBQUtELElBQUlDLEVBQVQ7O0FBRUQsU0FBT0EsRUFBUDtBQUNBOztBQUVELFVBQVNDLE1BQVQsQ0FBaUJDLEVBQWpCLEVBQXFCQyxLQUFyQixFQUE2QjtBQUM1QixNQUFJLENBQUNBLEtBQUwsRUFDQyxPQUFPQyxRQUFRQyxNQUFSLENBQWdCLHdDQUFoQixDQUFQOztBQUVELFNBQU8sSUFBSUQsT0FBSixDQUFhLFVBQVVFLE9BQVYsRUFBbUJELE1BQW5CLEVBQTRCO0FBQy9DLE9BQUlFLEtBQUtMLEdBQUdNLFFBQUgsQ0FBWTtBQUNwQixXQUFPTCxNQUFNTSxNQUFOLENBQWFULEVBQWIsR0FBa0JVLFFBREw7QUFFcEIsV0FBT1AsTUFBTU0sTUFBTixDQUFhVCxFQUFiLEdBQWtCVSxRQUFsQixHQUE2QixRQUZoQjtBQUdwQixxQkFBaUI7QUFIRyxJQUFaLENBQVQ7O0FBTUFDLFFBQU1KLEVBQU4sRUFBVSxFQUFWLEVBQWVLLElBQWYsQ0FBcUIsVUFBVUMsT0FBVixFQUFvQjtBQUN4Q1AsWUFBU08sT0FBVDtBQUNBLElBRkQsRUFFR0MsS0FGSCxDQUVVLFVBQVNDLEdBQVQsRUFBYztBQUN2QlYsV0FBUVUsR0FBUjtBQUNBLElBSkQ7QUFLQSxHQVpNLENBQVA7QUFhQTs7QUFHRCxVQUFTSixJQUFULENBQWVKLEVBQWYsRUFBbUJNLE9BQW5CLEVBQTZCO0FBQzVCLFNBQU8sSUFBSVQsT0FBSixDQUFhLFVBQVVFLE9BQVYsRUFBbUJELE1BQW5CLEVBQTRCO0FBQy9DRSxNQUFHSSxJQUFILENBQVMsVUFBVUksR0FBVixFQUFlQyxHQUFmLEVBQW9CQyxLQUFwQixFQUE0QjtBQUNwQyxRQUFJRixHQUFKLEVBQVU7QUFDVFYsWUFBUVUsR0FBUjtBQUNBLEtBRkQsTUFHSztBQUNKLFNBQUksQ0FBQ0MsR0FBRCxJQUFRLENBQUNDLEtBQWIsRUFBcUI7QUFDcEJYLGNBQVNPLE9BQVQ7QUFDQSxNQUZELE1BR0s7QUFDSkEsY0FBUUssSUFBUixDQUFjRCxLQUFkO0FBQ0FOLFdBQU1KLEVBQU4sRUFBVU0sT0FBVixFQUFvQkQsSUFBcEIsQ0FBMEIsVUFBVU8sVUFBVixFQUF1QjtBQUNoRGIsZUFBU2EsVUFBVDtBQUNBLE9BRkQsRUFFR0wsS0FGSCxDQUVVLFVBQVVDLEdBQVYsRUFBZ0I7QUFDekJWLGNBQVFVLEdBQVI7QUFDQSxPQUpEO0FBS0E7QUFDRDtBQUNELElBakJEO0FBa0JBLEdBbkJNLENBQVA7QUFvQkE7O0FBRUQsVUFBU0ssTUFBVCxDQUFpQmxCLEVBQWpCLEVBQXFCRixFQUFyQixFQUEwQjtBQUN6QixNQUFJLENBQUNBLEVBQUwsRUFDQSxPQUFPSSxRQUFRRSxPQUFSLEVBQVA7O0FBRUEsU0FBTyxJQUFJRixPQUFKLENBQWEsVUFBVUUsT0FBVixFQUFtQkQsTUFBbkIsRUFBNEI7QUFDL0NILE1BQUdtQixHQUFILENBQVFyQixFQUFSLEVBQVksRUFBQ3NCLFVBQVUsS0FBWCxFQUFaLEVBQStCLFVBQVVQLEdBQVYsRUFBZVEsR0FBZixFQUFxQjtBQUNuRCxRQUFJUixHQUFKLEVBQ0NWLE9BQVFVLEdBQVIsRUFERCxLQUdDVCxRQUFTaUIsR0FBVDtBQUNELElBTEQ7QUFNQSxHQVBNLENBQVA7QUFRQTs7QUFPRCxVQUFTQyxPQUFULENBQWtCQyxDQUFsQixFQUFzQjtBQUNyQixTQUFPQSxLQUFLLElBQUwsSUFBYUMsTUFBTUMsT0FBTixDQUFlRixDQUFmLENBQWIsR0FBa0NBLENBQWxDLEdBQXNDLENBQUNBLENBQUQsQ0FBN0M7QUFDQTs7QUFPRCxVQUFTRyxPQUFULENBQWtCSCxDQUFsQixFQUFzQjtBQUNyQixNQUFJLENBQUNBLENBQUwsRUFDQyxPQUFPLEtBQVA7O0FBRUQsT0FBSyxJQUFJSSxDQUFULElBQWNKLENBQWQ7QUFDQyxVQUFPLElBQVA7QUFERCxHQUdBLE9BQU8sS0FBUDtBQUNBOzs7QUF4T09LLE8saUJBQUFBLEk7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUVKQyxLLEdBQUssSTtBQUNUckIsVyxHQUFXLEc7OzJCQUdFc0IsWTs7Ozs7OzswQkFFTkMsSSxFQUFPO0FBQ1osV0FBSy9CLEVBQUwsR0FBVSxJQUFJZ0MsT0FBT0MsS0FBWCxDQUFrQkYsSUFBbEIsQ0FBVjtBQUNBLGFBQU8sSUFBSTdCLE9BQUosQ0FBYSxVQUFVRSxPQUFWLEVBQW1CRCxNQUFuQixFQUE0QjtBQUMvQyxZQUFLSCxFQUFMLENBQVFrQyxJQUFSLENBQWMsVUFBVXJCLEdBQVYsRUFBZ0I7QUFDN0IsWUFBSUEsR0FBSixFQUNDVixPQUFRVSxHQUFSLEVBREQsS0FHQ1QsUUFBUSxLQUFLSixFQUFiO0FBQ0QsUUFMYSxDQUtabUMsSUFMWSxDQUtQLElBTE8sQ0FBZDtBQU1BLE9BUG1CLENBT2xCQSxJQVBrQixDQU9iLElBUGEsQ0FBYixDQUFQO0FBUUE7OzswQkFPS0MsSSxFQUFPO0FBQ1osVUFBSUEsUUFBUSxJQUFaLEVBQ0MsT0FBT2xDLFFBQVFDLE1BQVIsQ0FBZ0IsMkJBQWhCLENBQVA7O0FBRUQsVUFBSWtDLE1BQU0sRUFBVjtBQUFBLFVBQWNDLE9BQU8sSUFBckI7QUFBQSxVQUNFQyxXQUFXZixNQUFNQyxPQUFOLENBQWVXLElBQWYsQ0FEYjtBQUFBLFVBRUVJLE1BQU1DLEtBQUtELEdBQUwsRUFGUjtBQUFBLFVBR0VFLFNBQVNkLEtBQUtlLFNBQUwsQ0FBZ0JILEdBQWhCLENBSFg7QUFBQSxVQUlFSSxPQUFPLENBSlQ7O0FBTUFSLGFBQU9kLFFBQVNjLElBQVQsQ0FBUDs7QUFWWTtBQUFBO0FBQUE7O0FBQUE7QUFZWiw0QkFBZ0JBLElBQWhCLDhIQUF1QjtBQUFBLFlBQWRmLEdBQWM7O0FBQ3RCLFlBQUlLLFFBQVNMLEdBQVQsQ0FBSixFQUFxQjtBQUVwQixjQUFLLElBQUl3QixDQUFULElBQWN4QixJQUFJeUIsV0FBSixDQUFnQkMsYUFBaEIsRUFBZCxFQUFnRDtBQUMvQyxjQUFJbEQsTUFBTXdCLElBQUl3QixDQUFKLENBQVY7QUFDQSxjQUFJckIsTUFBTUMsT0FBTixDQUFlNUIsR0FBZixDQUFKLEVBQTJCO0FBQzFCLGVBQUltRCxNQUFNbkQsSUFBSW9ELE1BQWQ7QUFDQSxnQkFBSyxJQUFJQyxJQUFFLENBQVgsRUFBY0EsSUFBSUYsR0FBbEIsRUFBdUJFLEdBQXZCO0FBQ0NyRCxnQkFBSXFELENBQUosSUFBU3RELGFBQWNDLElBQUlxRCxDQUFKLENBQWQsQ0FBVDtBQURELFlBR0E3QixJQUFJd0IsQ0FBSixJQUFTaEQsSUFBSXNELE1BQUosQ0FBWSxVQUFTQyxDQUFULEVBQVk7QUFBRSxtQkFBT0EsS0FBSyxJQUFaO0FBQWtCLFlBQTVDLENBQVQ7O0FBRUEsZUFBSSxDQUFDL0IsSUFBSXdCLENBQUosRUFBT0ksTUFBWixFQUNDLE9BQU81QixJQUFJd0IsQ0FBSixDQUFQO0FBQ0QsV0FURCxNQVVLO0FBQ0p4QixlQUFJd0IsQ0FBSixJQUFTakQsYUFBY0MsR0FBZCxDQUFUO0FBQ0EsZUFBSSxDQUFDd0IsSUFBSXdCLENBQUosQ0FBTCxFQUNDLE9BQU94QixJQUFJd0IsQ0FBSixDQUFQO0FBRUQ7QUFDRDs7QUFFRCxhQUFJLENBQUN4QixJQUFJdkIsRUFBVCxFQUFjO0FBQ2J1QixjQUFJdkIsRUFBSixHQUFTdUIsSUFBSXlCLFdBQUosQ0FBZ0J2QyxNQUFoQixDQUF1QlQsRUFBdkIsR0FBNEJVLFFBQTVCLEdBQXVDZ0MsR0FBaEQ7QUFDQW5CLGNBQUlnQyxXQUFKLEdBQWtCWCxNQUFsQjtBQUNBckIsY0FBSWlDLFNBQUosR0FBZ0JWLElBQWhCO0FBQ0E7O0FBRUR2QixhQUFJa0MsZ0JBQUosR0FBdUJiLE1BQXZCO0FBQ0FyQixhQUFJbUMsY0FBSixHQUFxQlosSUFBckI7O0FBRUFQLGFBQUlyQixJQUFKLENBQVU7QUFDVHlDLGdCQUFNLEtBREc7QUFFVDNDLGVBQUtPLElBQUl2QixFQUZBO0FBR1RpQixpQkFBT007QUFIRSxVQUFWO0FBS0E7QUFDRDtBQWxEVztBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBOztBQW9EWixhQUFPLElBQUluQixPQUFKLENBQWEsVUFBVUUsT0FBVixFQUFtQkQsTUFBbkIsRUFBNEI7QUFDL0MsWUFBS0gsRUFBTCxDQUFRMEQsS0FBUixDQUFlckIsR0FBZixFQUFvQixVQUFVeEIsR0FBVixFQUFnQjtBQUNuQyxZQUFJQSxHQUFKLEVBQVU7QUFDVFYsZ0JBQVFVLEdBQVI7QUFDQSxTQUZELE1BR0s7QUFDSlQsaUJBQVNtQyxXQUFXSCxJQUFYLEdBQWtCQSxLQUFLLENBQUwsQ0FBM0I7QUFDQTtBQUNELFFBUG1CLENBT2xCRCxJQVBrQixDQU9iLElBUGEsQ0FBcEI7QUFRQSxPQVRtQixDQVNsQkEsSUFUa0IsQ0FTYixJQVRhLENBQWIsQ0FBUDtBQVVBOzs7NEJBT09DLEksRUFBTztBQUNkLFVBQUlBLFFBQVEsSUFBWixFQUNBLE9BQU9sQyxRQUFRQyxNQUFSLENBQWdCLDZCQUFoQixDQUFQOztBQUVBLFVBQUlrQyxNQUFNLEVBQVY7QUFDQUQsYUFBT2QsUUFBU2MsSUFBVCxDQUFQO0FBTGM7QUFBQTtBQUFBOztBQUFBO0FBTWQsNkJBQWdCQSxJQUFoQixtSUFBdUI7QUFBQSxZQUFkZixHQUFjOztBQUN0QixZQUFJQSxHQUFKLEVBQVU7QUFFVGdCLGFBQUlyQixJQUFKLENBQVU7QUFDVHlDLGdCQUFNLEtBREc7QUFFVDNDLGVBQUtPLElBQUl2QixFQUFKLEdBQVN1QixJQUFJdkIsRUFBYixHQUFrQnVCLEdBRmQsRUFBVjtBQUlBO0FBQ0Q7QUFkYTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBO0FBQUE7QUFBQTtBQUFBOztBQWdCZCxhQUFPLElBQUluQixPQUFKLENBQWEsVUFBVUUsT0FBVixFQUFtQkQsTUFBbkIsRUFBNEI7QUFDL0MsWUFBS0gsRUFBTCxDQUFRMEQsS0FBUixDQUFlckIsR0FBZixFQUFvQixVQUFVeEIsR0FBVixFQUFnQjtBQUNuQyxZQUFJQSxHQUFKLEVBQVU7QUFDVFYsZ0JBQVFVLEdBQVI7QUFDQSxTQUZELE1BR0s7QUFDSlQ7QUFDQTtBQUNELFFBUEQ7QUFRQSxPQVRtQixDQVNsQitCLElBVGtCLENBU2IsSUFUYSxDQUFiLENBQVA7QUFVQTs7O3lCQU9JckMsRSxFQUFJRyxLLEVBQVE7QUFDaEIsVUFBSUgsRUFBSixFQUFTO0FBQ1IsY0FBT29CLE9BQVEsS0FBS2xCLEVBQWIsRUFBaUJGLEVBQWpCLENBQVA7QUFDQSxPQUZELE1BR0s7QUFDSixjQUFPQyxPQUFRLEtBQUtDLEVBQWIsRUFBaUJDLEtBQWpCLENBQVA7QUFDQTtBQUNEIiwiZmlsZSI6IkxldmVsQWRhcHRlci5qcyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7VXRpbH0gZnJvbSAnY29tbW9uL1V0aWwuanMnO1xuXG5sZXQgSUQgPSAnaWQnLCAvLyBjb25maWd1cmFibGUvZmxleGlibCBpbiB0aGUgZnV0dXJlP1xuSURfREVMSU0gPSAnXyc7XG5cbi8vIEEgdHJhbnNmb3JtZXIvYnJpZGdlL2FkYXB0ZXIgZnJvbSBvdXIgTW9kZWwgQVBJIHRvIExldmVsRE9XTlxuZXhwb3J0IGNsYXNzIExldmVsQWRhcHRlciB7XG5cblx0b3BlbiggbmFtZSApIHtcblx0XHR0aGlzLmRiID0gbmV3IHdpbmRvdy5MZXZlbCggbmFtZSApOyAvLyBUT0RPOiAgbnNwISFcblx0XHRyZXR1cm4gbmV3IFByb21pc2UoIGZ1bmN0aW9uKCByZXNvbHZlLCByZWplY3QgKSB7XG5cdFx0XHR0aGlzLmRiLm9wZW4oIGZ1bmN0aW9uKCBlcnIgKSB7XG5cdFx0XHRcdGlmKCBlcnIgKVxuXHRcdFx0XHRcdHJlamVjdCggZXJyICk7XG5cdFx0XHRcdGVsc2Vcblx0XHRcdFx0XHRyZXNvbHZlKHRoaXMuZGIpO1xuXHRcdFx0fS5iaW5kKHRoaXMpKTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cblx0LyoqXG5cdCogQ3JlYXRlIG9yIHVwZGF0ZSB0aGlzIG9iamVjdChzKSB0byBkYlxuXHQqIEBwYXJhbSB7QXJyYXl8T2JqZWN0fSBvYmpzIHRoZSBvYmplY3RzXG5cdCogQHJldHVybiB7UHJvbWlzZS48QXJyYXl8T2JqZWN0Pn0gdGhlIG5ld2x5IGNyZWF0ZWQgb3IgdXBkYXRlZCBvYmplY3Rcblx0Ki9cblx0c2F2ZSggb2JqcyApIHtcblx0XHRpZiggb2JqcyA9PSBudWxsIClcblx0XHRcdHJldHVybiBQcm9taXNlLnJlamVjdCggJ0Nhbm5vdCBzYXZlIGEgbnVsbCBvYmplY3QnICk7XG5cblx0XHRsZXQgb3BzID0gW10sIHNlbGYgPSB0aGlzLFxuXHRcdFx0XHR3YXNBcnJheSA9IEFycmF5LmlzQXJyYXkoIG9ianMgKSxcblx0XHRcdFx0bm93ID0gRGF0ZS5ub3coKSxcblx0XHRcdFx0bm93U3RyID0gVXRpbC50b0lzb0RhdGUoIG5vdyApLFxuXHRcdFx0XHR1c2VyID0gMTsgIC8vIFRPRE86IGdldCBjdXJyZW50IHVzZXIgaWRcblxuXHRcdG9ianMgPSB0b0FycmF5KCBvYmpzICk7XG5cblx0XHRmb3IoIGxldCBvYmogb2Ygb2JqcyApIHtcblx0XHRcdGlmKCBoYXNQcm9wKCBvYmogKSApIHtcblx0XHRcdFx0Ly8gc2F2ZSByZWxhdGlvbnMgZmlyc3QuICBJZiBzdHJpbmcgdGhlbiBhc3N1bWUgaXQgaXMgSUQuICBJZiBvYmplY3QsIHNhdmUgb25seSBJRC5cblx0XHRcdFx0Zm9yKCBsZXQgciBpbiBvYmouY29uc3RydWN0b3IucmVsYXRpb25zaGlwcygpICkge1xuXHRcdFx0XHRcdGxldCByZWYgPSBvYmpbcl07XG5cdFx0XHRcdFx0aWYoIEFycmF5LmlzQXJyYXkoIHJlZiApICkge1xuXHRcdFx0XHRcdFx0bGV0IGxlbiA9IHJlZi5sZW5ndGg7XG5cdFx0XHRcdFx0XHRmb3IoIGxldCBpPTA7IGkgPCBsZW47IGkrKyApXG5cdFx0XHRcdFx0XHRcdHJlZltpXSA9IGdldFJlbGF0ZWRJZCggcmVmW2ldICk7XG5cblx0XHRcdFx0XHRcdG9ialtyXSA9IHJlZi5maWx0ZXIoIGZ1bmN0aW9uKHYpIHsgcmV0dXJuIHYgIT0gbnVsbCB9ICk7XG5cblx0XHRcdFx0XHRcdGlmKCAhb2JqW3JdLmxlbmd0aCApXG5cdFx0XHRcdFx0XHRcdGRlbGV0ZSBvYmpbcl07XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHRcdGVsc2Uge1xuXHRcdFx0XHRcdFx0b2JqW3JdID0gZ2V0UmVsYXRlZElkKCByZWYgKTtcblx0XHRcdFx0XHRcdGlmKCAhb2JqW3JdIClcblx0XHRcdFx0XHRcdFx0ZGVsZXRlIG9ialtyXTsgIC8vIGRvbid0IGtub3cgd2hhdCB0aGlzIGlzIHNvIGlnbm9yZSBpdFxuXHRcdFx0XHRcdFx0Ly8gZnV0dXJlIGVuaDogc3VwcG9ydCBjcmVhdGlvbiBvZiByZWxhdGVkIG9iamVjdHMgYXQgc2FtZSB0aW1lIGFzIHRoaXMgb2JqZWN0XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cblx0XHRcdFx0aWYoICFvYmouaWQgKSB7XG5cdFx0XHRcdFx0b2JqLmlkID0gb2JqLmNvbnN0cnVjdG9yLnNjaGVtYS5pZCArIElEX0RFTElNICsgbm93O1xuXHRcdFx0XHRcdG9iai5jcmVhdGVkRGF0ZSA9IG5vd1N0cjtcblx0XHRcdFx0XHRvYmouY3JlYXRlZEJ5ID0gdXNlcjtcblx0XHRcdFx0fVxuXG5cdFx0XHRcdG9iai5sYXN0TW9kaWZpZWREYXRlID0gbm93U3RyO1xuXHRcdFx0XHRvYmoubGFzdE1vZGlmaWVkQnkgPSB1c2VyO1xuXG5cdFx0XHRcdG9wcy5wdXNoKCB7XG5cdFx0XHRcdFx0dHlwZTogJ3B1dCcsXG5cdFx0XHRcdFx0a2V5OiBvYmouaWQsXG5cdFx0XHRcdFx0dmFsdWU6IG9ialxuXHRcdFx0XHR9KTtcblx0XHRcdH1cblx0XHR9XG5cblx0XHRyZXR1cm4gbmV3IFByb21pc2UoIGZ1bmN0aW9uKCByZXNvbHZlLCByZWplY3QgKSB7XG5cdFx0XHR0aGlzLmRiLmJhdGNoKCBvcHMsIGZ1bmN0aW9uKCBlcnIgKSB7XG5cdFx0XHRcdGlmKCBlcnIgKSB7XG5cdFx0XHRcdFx0cmVqZWN0KCBlcnIgKTtcblx0XHRcdFx0fVxuXHRcdFx0XHRlbHNlIHtcblx0XHRcdFx0XHRyZXNvbHZlKCB3YXNBcnJheSA/IG9ianMgOiBvYmpzWzBdICk7XG5cdFx0XHRcdH1cblx0XHRcdH0uYmluZCh0aGlzKSk7XG5cdFx0fS5iaW5kKHRoaXMpKTtcblx0fVxuXG5cdC8qKlxuXHQqIERlbGV0ZSB0aGUgb2JqZWN0KHMpIGZyb20gdGhlIGRiXG5cdCogQHBhcmFtIHtBcnJheXxPYmplY3R8U3RyaW5nfSBvYmpzIHRoZSBvYmplY3QgaW5zdGFuY2UocykgdG8gZGVsZXRlLCBvciB0aGUgaWRzIG9mIHRoZSBpbnN0YW5jZXMgKFN0cmluZylcblx0KiBAcmV0dXJuIHtQcm9taXNlfVxuXHQqL1xuXHRyZW1vdmUoIG9ianMgKSB7XG5cdFx0aWYoIG9ianMgPT0gbnVsbCApXG5cdFx0cmV0dXJuIFByb21pc2UucmVqZWN0KCAnQ2Fubm90IHJlbW92ZSBhIG51bGwgb2JqZWN0JyApO1xuXG5cdFx0bGV0IG9wcyA9IFtdO1xuXHRcdG9ianMgPSB0b0FycmF5KCBvYmpzICk7XG5cdFx0Zm9yKCBsZXQgb2JqIG9mIG9ianMgKSB7XG5cdFx0XHRpZiggb2JqICkge1xuXHRcdFx0XHQvLyBUT0RPOiByZW1vdmUgcmVsYXRpb25zIGZpcnN0XG5cdFx0XHRcdG9wcy5wdXNoKCB7XG5cdFx0XHRcdFx0dHlwZTogJ2RlbCcsXG5cdFx0XHRcdFx0a2V5OiBvYmouaWQgPyBvYmouaWQgOiBvYmogIC8vIGNhbiBiZSBzdHJpbmdcblx0XHRcdFx0fSk7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0cmV0dXJuIG5ldyBQcm9taXNlKCBmdW5jdGlvbiggcmVzb2x2ZSwgcmVqZWN0ICkge1xuXHRcdFx0dGhpcy5kYi5iYXRjaCggb3BzLCBmdW5jdGlvbiggZXJyICkge1xuXHRcdFx0XHRpZiggZXJyICkge1xuXHRcdFx0XHRcdHJlamVjdCggZXJyICk7XG5cdFx0XHRcdH1cblx0XHRcdFx0ZWxzZSB7XG5cdFx0XHRcdFx0cmVzb2x2ZSgpO1xuXHRcdFx0XHR9XG5cdFx0XHR9KTtcblx0XHR9LmJpbmQodGhpcykpO1xuXHR9XG5cblx0LyoqXG5cdCogUmV0cmlldmVzIHRoZSBpbnN0YW5jZSAocmVjb3JkKSBmcm9tIHRoZSBkYlxuXHQqIEBwYXJhbSAge1N0cmluZ30gaWQgdGhlIGlkIG9mIHRoZSBpbnN0YW5jZSAocmVjb3JkKVxuXHQqIEByZXR1cm4ge1Byb21pc2UuPE9iamVjdD59ICAgIFtkZXNjcmlwdGlvbl1cblx0Ki9cblx0Z2V0KCBpZCwgbW9kZWwgKSB7XG5cdFx0aWYoIGlkICkge1xuXHRcdFx0cmV0dXJuIGdldE9uZSggdGhpcy5kYiwgaWQgKTtcblx0XHR9XG5cdFx0ZWxzZSB7XG5cdFx0XHRyZXR1cm4gZ2V0QWxsKCB0aGlzLmRiLCBtb2RlbCApO1xuXHRcdH1cblx0fVxufVxuXG4vKipcbiogUmV0dXJucyB0aGUgaWQgb2YgdGhlIHJlbGF0ZWQgb2JqZWN0XG4qIEBwYXJhbSAge1N0cmluZ3xPYmplY3R9IHJlZiB0aGUgcmVmZXJlbmNlIHRvIHRoZSByZWxhdGVkIG9iamVjdCwgb3IgdGhlIHJlbGF0ZWQgb2JqZWN0IElEIGl0c2VsZlxuKiBAcmV0dXJuIHtTdHJpbmd9ICAgICB0aGUgcmVsYXRlZCBvYmplY3QncyBpZCBvciBudWxsIGlmIG5vdCBrbm93blxuKi9cbmZ1bmN0aW9uIGdldFJlbGF0ZWRJZCggcmVmICkge1xuXHRsZXQgaWQgPSBudWxsO1xuXG5cdGlmKCByZWYgJiYgdHlwZW9mIHJlZiA9PT0gJ3N0cmluZycgKVxuXHRcdGlkID0gcmVmO1xuXHRlbHNlIGlmKCByZWYgJiYgcmVmLmlkIClcblx0XHRpZCA9IHJlZi5pZDtcblxuXHRyZXR1cm4gaWQ7XG59XG5cbmZ1bmN0aW9uIGdldEFsbCggZGIsIG1vZGVsICkge1xuXHRpZiggIW1vZGVsIClcblx0XHRyZXR1cm4gUHJvbWlzZS5yZWplY3QoICdDYW5ub3QgcXVlcnkgYWxsIHJlY29yZHMgd2l0aG91dCBtb2RlbCcgKTtcblxuXHRyZXR1cm4gbmV3IFByb21pc2UoIGZ1bmN0aW9uKCByZXNvbHZlLCByZWplY3QgKSB7XG5cdFx0bGV0IGl0ID0gZGIuaXRlcmF0b3Ioe1xuXHRcdFx0J2d0ZSc6IG1vZGVsLnNjaGVtYS5pZCArIElEX0RFTElNLFxuXHRcdFx0J2x0ZSc6IG1vZGVsLnNjaGVtYS5pZCArIElEX0RFTElNICsgJ1xcdWZmZmYnLFxuXHRcdFx0J3ZhbHVlQXNCdWZmZXInOiBmYWxzZVxuXHRcdH0pO1xuXG5cdFx0bmV4dCggaXQsIFtdICkudGhlbiggZnVuY3Rpb24oIHJlY29yZHMgKSB7XG5cdFx0XHRyZXNvbHZlKCByZWNvcmRzICk7XG5cdFx0fSkuY2F0Y2goIGZ1bmN0aW9uKGVycikge1xuXHRcdFx0cmVqZWN0KCBlcnIgKTtcblx0XHR9KTtcblx0fSk7XG59XG5cbi8vIEdldHMgbmV4dCBvZiBpdGVyYXRvciwgcmV0dXJucyBhIHByb21pc2VcbmZ1bmN0aW9uIG5leHQoIGl0LCByZWNvcmRzICkge1xuXHRyZXR1cm4gbmV3IFByb21pc2UoIGZ1bmN0aW9uKCByZXNvbHZlLCByZWplY3QgKSB7XG5cdFx0aXQubmV4dCggZnVuY3Rpb24oIGVyciwga2V5LCB2YWx1ZSApIHtcblx0XHRcdGlmKCBlcnIgKSB7XG5cdFx0XHRcdHJlamVjdCggZXJyICk7XG5cdFx0XHR9XG5cdFx0XHRlbHNlIHtcblx0XHRcdFx0aWYoICFrZXkgJiYgIXZhbHVlICkge1xuXHRcdFx0XHRcdHJlc29sdmUoIHJlY29yZHMgKTtcblx0XHRcdFx0fVxuXHRcdFx0XHRlbHNlIHtcblx0XHRcdFx0XHRyZWNvcmRzLnB1c2goIHZhbHVlICk7XG5cdFx0XHRcdFx0bmV4dCggaXQsIHJlY29yZHMgKS50aGVuKCBmdW5jdGlvbiggbmV3UmVjb3JkcyApIHtcblx0XHRcdFx0XHRcdHJlc29sdmUoIG5ld1JlY29yZHMgKTtcblx0XHRcdFx0XHR9KS5jYXRjaCggZnVuY3Rpb24oIGVyciApIHtcblx0XHRcdFx0XHRcdHJlamVjdCggZXJyICk7XG5cdFx0XHRcdFx0fSlcblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH0pO1xuXHR9KTtcbn1cblxuZnVuY3Rpb24gZ2V0T25lKCBkYiwgaWQgKSB7XG5cdGlmKCAhaWQgKVxuXHRyZXR1cm4gUHJvbWlzZS5yZXNvbHZlKCk7XG5cblx0cmV0dXJuIG5ldyBQcm9taXNlKCBmdW5jdGlvbiggcmVzb2x2ZSwgcmVqZWN0ICkge1xuXHRcdGRiLmdldCggaWQsIHthc0J1ZmZlcjogZmFsc2V9LCBmdW5jdGlvbiggZXJyLCBvYmogKSB7XG5cdFx0XHRpZiggZXJyIClcblx0XHRcdFx0cmVqZWN0KCBlcnIgKVxuXHRcdFx0ZWxzZVxuXHRcdFx0XHRyZXNvbHZlKCBvYmogKTtcblx0XHR9KVxuXHR9KTtcbn1cblxuLyoqXG4qIE1ha2UgYW4gYXJyYXkgaWYgbm90IGFscmVhZHkgYW4gYXJyYXlcbiogQHBhcmFtICB7T2JqZWN0fSB4IHRoZSBvYmplY3Qgb3IgYXJyYXlcbiogQHJldHVybiB7QXJyYXl9IGFycmF5IG9yIG51bGwgaWYgeCB3YXMgbnVsbC91bmRlZmluZWRcbiovXG5mdW5jdGlvbiB0b0FycmF5KCB4ICkge1xuXHRyZXR1cm4geCA9PSBudWxsIHx8IEFycmF5LmlzQXJyYXkoIHggKSA/IHggOiBbeF07XG59XG5cbi8qKlxuKiBSZXR1cm5zIHRydWUgaWYgdGhlIG9iamVjdCBoYXMgYXQgbGVhc3Qgb25lIHByb3BlcnR5LCBpLmUuIGl0IGlzIFwicGVyc2lzdGFibGVcIlxuKiBAcGFyYW0gIHtPYmplY3R9ICB4IHRoZSBvYmplY3RcbiogQHJldHVybiB7Qm9vbGVhbn0gICAgIHRydWUgaWYgaXQgaGFzIGF0IGxlYXN0IG9uZSBwcm9wZXJ0eSwgZmFsc2Ugb3RoZXJ3aXNlXG4qL1xuZnVuY3Rpb24gaGFzUHJvcCggeCApIHtcblx0aWYoICF4ICkgLy8gd2FudCB0byB1c2UgdHlwZW9mIGJ1dCBidWcgaW4gQmFiZWwgcHJldmVudHMgaXQgZm9yIG5vdyAoaHR0cHM6Ly9waGFicmljYXRvci5iYWJlbGpzLmlvL1Q2Nzc3KVxuXHRcdHJldHVybiBmYWxzZTtcblxuXHRmb3IoIGxldCBwIGluIHggKVxuXHRcdHJldHVybiB0cnVlO1xuXG5cdHJldHVybiBmYWxzZTtcbn1cbiJdfQ==
(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
window.Level = require( '../../../../../../node_modules/level-js/index.js' );

},{"../../../../../../node_modules/level-js/index.js":14}],2:[function(require,module,exports){
(function (process){
/* Copyright (c) 2013 Rod Vagg, MIT License */

function AbstractChainedBatch (db) {
  this._db         = db
  this._operations = []
  this._written    = false
}

AbstractChainedBatch.prototype._checkWritten = function () {
  if (this._written)
    throw new Error('write() already called on this batch')
}

AbstractChainedBatch.prototype.put = function (key, value) {
  this._checkWritten()

  var err = this._db._checkKeyValue(key, 'key', this._db._isBuffer)
  if (err) throw err
  err = this._db._checkKeyValue(value, 'value', this._db._isBuffer)
  if (err) throw err

  if (!this._db._isBuffer(key)) key = String(key)
  if (!this._db._isBuffer(value)) value = String(value)

  if (typeof this._put == 'function' )
    this._put(key, value)
  else
    this._operations.push({ type: 'put', key: key, value: value })

  return this
}

AbstractChainedBatch.prototype.del = function (key) {
  this._checkWritten()

  var err = this._db._checkKeyValue(key, 'key', this._db._isBuffer)
  if (err) throw err

  if (!this._db._isBuffer(key)) key = String(key)

  if (typeof this._del == 'function' )
    this._del(key)
  else
    this._operations.push({ type: 'del', key: key })

  return this
}

AbstractChainedBatch.prototype.clear = function () {
  this._checkWritten()

  this._operations = []

  if (typeof this._clear == 'function' )
    this._clear()

  return this
}

AbstractChainedBatch.prototype.write = function (options, callback) {
  this._checkWritten()

  if (typeof options == 'function')
    callback = options
  if (typeof callback != 'function')
    throw new Error('write() requires a callback argument')
  if (typeof options != 'object')
    options = {}

  this._written = true

  if (typeof this._write == 'function' )
    return this._write(callback)

  if (typeof this._db._batch == 'function')
    return this._db._batch(this._operations, options, callback)

  process.nextTick(callback)
}

module.exports = AbstractChainedBatch
}).call(this,require('_process'))
},{"_process":23}],3:[function(require,module,exports){
(function (process){
/* Copyright (c) 2013 Rod Vagg, MIT License */

function AbstractIterator (db) {
  this.db = db
  this._ended = false
  this._nexting = false
}

AbstractIterator.prototype.next = function (callback) {
  var self = this

  if (typeof callback != 'function')
    throw new Error('next() requires a callback argument')

  if (self._ended)
    return callback(new Error('cannot call next() after end()'))
  if (self._nexting)
    return callback(new Error('cannot call next() before previous next() has completed'))

  self._nexting = true
  if (typeof self._next == 'function') {
    return self._next(function () {
      self._nexting = false
      callback.apply(null, arguments)
    })
  }

  process.nextTick(function () {
    self._nexting = false
    callback()
  })
}

AbstractIterator.prototype.end = function (callback) {
  if (typeof callback != 'function')
    throw new Error('end() requires a callback argument')

  if (this._ended)
    return callback(new Error('end() already called on iterator'))

  this._ended = true

  if (typeof this._end == 'function')
    return this._end(callback)

  process.nextTick(callback)
}

module.exports = AbstractIterator

}).call(this,require('_process'))
},{"_process":23}],4:[function(require,module,exports){
(function (Buffer,process){
/* Copyright (c) 2013 Rod Vagg, MIT License */

var xtend                = require('xtend')
  , AbstractIterator     = require('./abstract-iterator')
  , AbstractChainedBatch = require('./abstract-chained-batch')

function AbstractLevelDOWN (location) {
  if (!arguments.length || location === undefined)
    throw new Error('constructor requires at least a location argument')

  if (typeof location != 'string')
    throw new Error('constructor requires a location string argument')

  this.location = location
}

AbstractLevelDOWN.prototype.open = function (options, callback) {
  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('open() requires a callback argument')

  if (typeof options != 'object')
    options = {}

  if (typeof this._open == 'function')
    return this._open(options, callback)

  process.nextTick(callback)
}

AbstractLevelDOWN.prototype.close = function (callback) {
  if (typeof callback != 'function')
    throw new Error('close() requires a callback argument')

  if (typeof this._close == 'function')
    return this._close(callback)

  process.nextTick(callback)
}

AbstractLevelDOWN.prototype.get = function (key, options, callback) {
  var err

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('get() requires a callback argument')

  if (err = this._checkKeyValue(key, 'key', this._isBuffer))
    return callback(err)

  if (!this._isBuffer(key))
    key = String(key)

  if (typeof options != 'object')
    options = {}

  if (typeof this._get == 'function')
    return this._get(key, options, callback)

  process.nextTick(function () { callback(new Error('NotFound')) })
}

AbstractLevelDOWN.prototype.put = function (key, value, options, callback) {
  var err

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('put() requires a callback argument')

  if (err = this._checkKeyValue(key, 'key', this._isBuffer))
    return callback(err)

  if (err = this._checkKeyValue(value, 'value', this._isBuffer))
    return callback(err)

  if (!this._isBuffer(key))
    key = String(key)

  // coerce value to string in node, don't touch it in browser
  // (indexeddb can store any JS type)
  if (!this._isBuffer(value) && !process.browser)
    value = String(value)

  if (typeof options != 'object')
    options = {}

  if (typeof this._put == 'function')
    return this._put(key, value, options, callback)

  process.nextTick(callback)
}

AbstractLevelDOWN.prototype.del = function (key, options, callback) {
  var err

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('del() requires a callback argument')

  if (err = this._checkKeyValue(key, 'key', this._isBuffer))
    return callback(err)

  if (!this._isBuffer(key))
    key = String(key)

  if (typeof options != 'object')
    options = {}

  if (typeof this._del == 'function')
    return this._del(key, options, callback)

  process.nextTick(callback)
}

AbstractLevelDOWN.prototype.batch = function (array, options, callback) {
  if (!arguments.length)
    return this._chainedBatch()

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('batch(array) requires a callback argument')

  if (!Array.isArray(array))
    return callback(new Error('batch(array) requires an array argument'))

  if (typeof options != 'object')
    options = {}

  var i = 0
    , l = array.length
    , e
    , err

  for (; i < l; i++) {
    e = array[i]
    if (typeof e != 'object')
      continue

    if (err = this._checkKeyValue(e.type, 'type', this._isBuffer))
      return callback(err)

    if (err = this._checkKeyValue(e.key, 'key', this._isBuffer))
      return callback(err)

    if (e.type == 'put') {
      if (err = this._checkKeyValue(e.value, 'value', this._isBuffer))
        return callback(err)
    }
  }

  if (typeof this._batch == 'function')
    return this._batch(array, options, callback)

  process.nextTick(callback)
}

//TODO: remove from here, not a necessary primitive
AbstractLevelDOWN.prototype.approximateSize = function (start, end, callback) {
  if (   start == null
      || end == null
      || typeof start == 'function'
      || typeof end == 'function') {
    throw new Error('approximateSize() requires valid `start`, `end` and `callback` arguments')
  }

  if (typeof callback != 'function')
    throw new Error('approximateSize() requires a callback argument')

  if (!this._isBuffer(start))
    start = String(start)

  if (!this._isBuffer(end))
    end = String(end)

  if (typeof this._approximateSize == 'function')
    return this._approximateSize(start, end, callback)

  process.nextTick(function () {
    callback(null, 0)
  })
}

AbstractLevelDOWN.prototype._setupIteratorOptions = function (options) {
  var self = this

  options = xtend(options)

  ;[ 'start', 'end', 'gt', 'gte', 'lt', 'lte' ].forEach(function (o) {
    if (options[o] && self._isBuffer(options[o]) && options[o].length === 0)
      delete options[o]
  })

  options.reverse = !!options.reverse

  // fix `start` so it takes into account gt, gte, lt, lte as appropriate
  if (options.reverse && options.lt)
    options.start = options.lt
  if (options.reverse && options.lte)
    options.start = options.lte
  if (!options.reverse && options.gt)
    options.start = options.gt
  if (!options.reverse && options.gte)
    options.start = options.gte

  if ((options.reverse && options.lt && !options.lte)
    || (!options.reverse && options.gt && !options.gte))
    options.exclusiveStart = true // start should *not* include matching key

  return options
}

AbstractLevelDOWN.prototype.iterator = function (options) {
  if (typeof options != 'object')
    options = {}

  options = this._setupIteratorOptions(options)

  if (typeof this._iterator == 'function')
    return this._iterator(options)

  return new AbstractIterator(this)
}

AbstractLevelDOWN.prototype._chainedBatch = function () {
  return new AbstractChainedBatch(this)
}

AbstractLevelDOWN.prototype._isBuffer = function (obj) {
  return Buffer.isBuffer(obj)
}

AbstractLevelDOWN.prototype._checkKeyValue = function (obj, type) {

  if (obj === null || obj === undefined)
    return new Error(type + ' cannot be `null` or `undefined`')

  if (this._isBuffer(obj)) {
    if (obj.length === 0)
      return new Error(type + ' cannot be an empty Buffer')
  } else if (String(obj) === '')
    return new Error(type + ' cannot be an empty String')
}

module.exports.AbstractLevelDOWN    = AbstractLevelDOWN
module.exports.AbstractIterator     = AbstractIterator
module.exports.AbstractChainedBatch = AbstractChainedBatch

}).call(this,{"isBuffer":require("../is-buffer/index.js")},require('_process'))
},{"../is-buffer/index.js":12,"./abstract-chained-batch":2,"./abstract-iterator":3,"_process":23,"xtend":5}],5:[function(require,module,exports){
module.exports = extend

function extend() {
    var target = {}

    for (var i = 0; i < arguments.length; i++) {
        var source = arguments[i]

        for (var key in source) {
            if (source.hasOwnProperty(key)) {
                target[key] = source[key]
            }
        }
    }

    return target
}

},{}],6:[function(require,module,exports){
var lookup = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';

;(function (exports) {
	'use strict';

  var Arr = (typeof Uint8Array !== 'undefined')
    ? Uint8Array
    : Array

	var PLUS   = '+'.charCodeAt(0)
	var SLASH  = '/'.charCodeAt(0)
	var NUMBER = '0'.charCodeAt(0)
	var LOWER  = 'a'.charCodeAt(0)
	var UPPER  = 'A'.charCodeAt(0)
	var PLUS_URL_SAFE = '-'.charCodeAt(0)
	var SLASH_URL_SAFE = '_'.charCodeAt(0)

	function decode (elt) {
		var code = elt.charCodeAt(0)
		if (code === PLUS ||
		    code === PLUS_URL_SAFE)
			return 62 // '+'
		if (code === SLASH ||
		    code === SLASH_URL_SAFE)
			return 63 // '/'
		if (code < NUMBER)
			return -1 //no match
		if (code < NUMBER + 10)
			return code - NUMBER + 26 + 26
		if (code < UPPER + 26)
			return code - UPPER
		if (code < LOWER + 26)
			return code - LOWER + 26
	}

	function b64ToByteArray (b64) {
		var i, j, l, tmp, placeHolders, arr

		if (b64.length % 4 > 0) {
			throw new Error('Invalid string. Length must be a multiple of 4')
		}

		// the number of equal signs (place holders)
		// if there are two placeholders, than the two characters before it
		// represent one byte
		// if there is only one, then the three characters before it represent 2 bytes
		// this is just a cheap hack to not do indexOf twice
		var len = b64.length
		placeHolders = '=' === b64.charAt(len - 2) ? 2 : '=' === b64.charAt(len - 1) ? 1 : 0

		// base64 is 4/3 + up to two characters of the original data
		arr = new Arr(b64.length * 3 / 4 - placeHolders)

		// if there are placeholders, only get up to the last complete 4 chars
		l = placeHolders > 0 ? b64.length - 4 : b64.length

		var L = 0

		function push (v) {
			arr[L++] = v
		}

		for (i = 0, j = 0; i < l; i += 4, j += 3) {
			tmp = (decode(b64.charAt(i)) << 18) | (decode(b64.charAt(i + 1)) << 12) | (decode(b64.charAt(i + 2)) << 6) | decode(b64.charAt(i + 3))
			push((tmp & 0xFF0000) >> 16)
			push((tmp & 0xFF00) >> 8)
			push(tmp & 0xFF)
		}

		if (placeHolders === 2) {
			tmp = (decode(b64.charAt(i)) << 2) | (decode(b64.charAt(i + 1)) >> 4)
			push(tmp & 0xFF)
		} else if (placeHolders === 1) {
			tmp = (decode(b64.charAt(i)) << 10) | (decode(b64.charAt(i + 1)) << 4) | (decode(b64.charAt(i + 2)) >> 2)
			push((tmp >> 8) & 0xFF)
			push(tmp & 0xFF)
		}

		return arr
	}

	function uint8ToBase64 (uint8) {
		var i,
			extraBytes = uint8.length % 3, // if we have 1 byte left, pad 2 bytes
			output = "",
			temp, length

		function encode (num) {
			return lookup.charAt(num)
		}

		function tripletToBase64 (num) {
			return encode(num >> 18 & 0x3F) + encode(num >> 12 & 0x3F) + encode(num >> 6 & 0x3F) + encode(num & 0x3F)
		}

		// go through the array every three bytes, we'll deal with trailing stuff later
		for (i = 0, length = uint8.length - extraBytes; i < length; i += 3) {
			temp = (uint8[i] << 16) + (uint8[i + 1] << 8) + (uint8[i + 2])
			output += tripletToBase64(temp)
		}

		// pad the end with zeros, but make sure to not forget the extra bytes
		switch (extraBytes) {
			case 1:
				temp = uint8[uint8.length - 1]
				output += encode(temp >> 2)
				output += encode((temp << 4) & 0x3F)
				output += '=='
				break
			case 2:
				temp = (uint8[uint8.length - 2] << 8) + (uint8[uint8.length - 1])
				output += encode(temp >> 10)
				output += encode((temp >> 4) & 0x3F)
				output += encode((temp << 2) & 0x3F)
				output += '='
				break
		}

		return output
	}

	exports.toByteArray = b64ToByteArray
	exports.fromByteArray = uint8ToBase64
}(typeof exports === 'undefined' ? (this.base64js = {}) : exports))

},{}],7:[function(require,module,exports){
(function (global){
/*!
 * The buffer module from node.js, for the browser.
 *
 * @author   Feross Aboukhadijeh <feross@feross.org> <http://feross.org>
 * @license  MIT
 */
/* eslint-disable no-proto */

var base64 = require('base64-js')
var ieee754 = require('ieee754')
var isArray = require('is-array')

exports.Buffer = Buffer
exports.SlowBuffer = SlowBuffer
exports.INSPECT_MAX_BYTES = 50
Buffer.poolSize = 8192 // not used by this implementation

var rootParent = {}

/**
 * If `Buffer.TYPED_ARRAY_SUPPORT`:
 *   === true    Use Uint8Array implementation (fastest)
 *   === false   Use Object implementation (most compatible, even IE6)
 *
 * Browsers that support typed arrays are IE 10+, Firefox 4+, Chrome 7+, Safari 5.1+,
 * Opera 11.6+, iOS 4.2+.
 *
 * Due to various browser bugs, sometimes the Object implementation will be used even
 * when the browser supports typed arrays.
 *
 * Note:
 *
 *   - Firefox 4-29 lacks support for adding new properties to `Uint8Array` instances,
 *     See: https://bugzilla.mozilla.org/show_bug.cgi?id=695438.
 *
 *   - Safari 5-7 lacks support for changing the `Object.prototype.constructor` property
 *     on objects.
 *
 *   - Chrome 9-10 is missing the `TypedArray.prototype.subarray` function.
 *
 *   - IE10 has a broken `TypedArray.prototype.subarray` function which returns arrays of
 *     incorrect length in some situations.

 * We detect these buggy browsers and set `Buffer.TYPED_ARRAY_SUPPORT` to `false` so they
 * get the Object implementation, which is slower but behaves correctly.
 */
Buffer.TYPED_ARRAY_SUPPORT = global.TYPED_ARRAY_SUPPORT !== undefined
  ? global.TYPED_ARRAY_SUPPORT
  : typedArraySupport()

function typedArraySupport () {
  function Bar () {}
  try {
    var arr = new Uint8Array(1)
    arr.foo = function () { return 42 }
    arr.constructor = Bar
    return arr.foo() === 42 && // typed array instances can be augmented
        arr.constructor === Bar && // constructor can be set
        typeof arr.subarray === 'function' && // chrome 9-10 lack `subarray`
        arr.subarray(1, 1).byteLength === 0 // ie10 has broken `subarray`
  } catch (e) {
    return false
  }
}

function kMaxLength () {
  return Buffer.TYPED_ARRAY_SUPPORT
    ? 0x7fffffff
    : 0x3fffffff
}

/**
 * Class: Buffer
 * =============
 *
 * The Buffer constructor returns instances of `Uint8Array` that are augmented
 * with function properties for all the node `Buffer` API functions. We use
 * `Uint8Array` so that square bracket notation works as expected -- it returns
 * a single octet.
 *
 * By augmenting the instances, we can avoid modifying the `Uint8Array`
 * prototype.
 */
function Buffer (arg) {
  if (!(this instanceof Buffer)) {
    // Avoid going through an ArgumentsAdaptorTrampoline in the common case.
    if (arguments.length > 1) return new Buffer(arg, arguments[1])
    return new Buffer(arg)
  }

  this.length = 0
  this.parent = undefined

  // Common case.
  if (typeof arg === 'number') {
    return fromNumber(this, arg)
  }

  // Slightly less common case.
  if (typeof arg === 'string') {
    return fromString(this, arg, arguments.length > 1 ? arguments[1] : 'utf8')
  }

  // Unusual.
  return fromObject(this, arg)
}

function fromNumber (that, length) {
  that = allocate(that, length < 0 ? 0 : checked(length) | 0)
  if (!Buffer.TYPED_ARRAY_SUPPORT) {
    for (var i = 0; i < length; i++) {
      that[i] = 0
    }
  }
  return that
}

function fromString (that, string, encoding) {
  if (typeof encoding !== 'string' || encoding === '') encoding = 'utf8'

  // Assumption: byteLength() return value is always < kMaxLength.
  var length = byteLength(string, encoding) | 0
  that = allocate(that, length)

  that.write(string, encoding)
  return that
}

function fromObject (that, object) {
  if (Buffer.isBuffer(object)) return fromBuffer(that, object)

  if (isArray(object)) return fromArray(that, object)

  if (object == null) {
    throw new TypeError('must start with number, buffer, array or string')
  }

  if (typeof ArrayBuffer !== 'undefined') {
    if (object.buffer instanceof ArrayBuffer) {
      return fromTypedArray(that, object)
    }
    if (object instanceof ArrayBuffer) {
      return fromArrayBuffer(that, object)
    }
  }

  if (object.length) return fromArrayLike(that, object)

  return fromJsonObject(that, object)
}

function fromBuffer (that, buffer) {
  var length = checked(buffer.length) | 0
  that = allocate(that, length)
  buffer.copy(that, 0, 0, length)
  return that
}

function fromArray (that, array) {
  var length = checked(array.length) | 0
  that = allocate(that, length)
  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

// Duplicate of fromArray() to keep fromArray() monomorphic.
function fromTypedArray (that, array) {
  var length = checked(array.length) | 0
  that = allocate(that, length)
  // Truncating the elements is probably not what people expect from typed
  // arrays with BYTES_PER_ELEMENT > 1 but it's compatible with the behavior
  // of the old Buffer constructor.
  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

function fromArrayBuffer (that, array) {
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    // Return an augmented `Uint8Array` instance, for best performance
    array.byteLength
    that = Buffer._augment(new Uint8Array(array))
  } else {
    // Fallback: Return an object instance of the Buffer class
    that = fromTypedArray(that, new Uint8Array(array))
  }
  return that
}

function fromArrayLike (that, array) {
  var length = checked(array.length) | 0
  that = allocate(that, length)
  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

// Deserialize { type: 'Buffer', data: [1,2,3,...] } into a Buffer object.
// Returns a zero-length buffer for inputs that don't conform to the spec.
function fromJsonObject (that, object) {
  var array
  var length = 0

  if (object.type === 'Buffer' && isArray(object.data)) {
    array = object.data
    length = checked(array.length) | 0
  }
  that = allocate(that, length)

  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

if (Buffer.TYPED_ARRAY_SUPPORT) {
  Buffer.prototype.__proto__ = Uint8Array.prototype
  Buffer.__proto__ = Uint8Array
}

function allocate (that, length) {
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    // Return an augmented `Uint8Array` instance, for best performance
    that = Buffer._augment(new Uint8Array(length))
    that.__proto__ = Buffer.prototype
  } else {
    // Fallback: Return an object instance of the Buffer class
    that.length = length
    that._isBuffer = true
  }

  var fromPool = length !== 0 && length <= Buffer.poolSize >>> 1
  if (fromPool) that.parent = rootParent

  return that
}

function checked (length) {
  // Note: cannot use `length < kMaxLength` here because that fails when
  // length is NaN (which is otherwise coerced to zero.)
  if (length >= kMaxLength()) {
    throw new RangeError('Attempt to allocate Buffer larger than maximum ' +
                         'size: 0x' + kMaxLength().toString(16) + ' bytes')
  }
  return length | 0
}

function SlowBuffer (subject, encoding) {
  if (!(this instanceof SlowBuffer)) return new SlowBuffer(subject, encoding)

  var buf = new Buffer(subject, encoding)
  delete buf.parent
  return buf
}

Buffer.isBuffer = function isBuffer (b) {
  return !!(b != null && b._isBuffer)
}

Buffer.compare = function compare (a, b) {
  if (!Buffer.isBuffer(a) || !Buffer.isBuffer(b)) {
    throw new TypeError('Arguments must be Buffers')
  }

  if (a === b) return 0

  var x = a.length
  var y = b.length

  var i = 0
  var len = Math.min(x, y)
  while (i < len) {
    if (a[i] !== b[i]) break

    ++i
  }

  if (i !== len) {
    x = a[i]
    y = b[i]
  }

  if (x < y) return -1
  if (y < x) return 1
  return 0
}

Buffer.isEncoding = function isEncoding (encoding) {
  switch (String(encoding).toLowerCase()) {
    case 'hex':
    case 'utf8':
    case 'utf-8':
    case 'ascii':
    case 'binary':
    case 'base64':
    case 'raw':
    case 'ucs2':
    case 'ucs-2':
    case 'utf16le':
    case 'utf-16le':
      return true
    default:
      return false
  }
}

Buffer.concat = function concat (list, length) {
  if (!isArray(list)) throw new TypeError('list argument must be an Array of Buffers.')

  if (list.length === 0) {
    return new Buffer(0)
  }

  var i
  if (length === undefined) {
    length = 0
    for (i = 0; i < list.length; i++) {
      length += list[i].length
    }
  }

  var buf = new Buffer(length)
  var pos = 0
  for (i = 0; i < list.length; i++) {
    var item = list[i]
    item.copy(buf, pos)
    pos += item.length
  }
  return buf
}

function byteLength (string, encoding) {
  if (typeof string !== 'string') string = '' + string

  var len = string.length
  if (len === 0) return 0

  // Use a for loop to avoid recursion
  var loweredCase = false
  for (;;) {
    switch (encoding) {
      case 'ascii':
      case 'binary':
      // Deprecated
      case 'raw':
      case 'raws':
        return len
      case 'utf8':
      case 'utf-8':
        return utf8ToBytes(string).length
      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return len * 2
      case 'hex':
        return len >>> 1
      case 'base64':
        return base64ToBytes(string).length
      default:
        if (loweredCase) return utf8ToBytes(string).length // assume utf8
        encoding = ('' + encoding).toLowerCase()
        loweredCase = true
    }
  }
}
Buffer.byteLength = byteLength

// pre-set for values that may exist in the future
//Buffer.prototype.length = undefined
//Buffer.prototype.parent = undefined

function slowToString (encoding, start, end) {
  var loweredCase = false

  start = start | 0
  end = end === undefined || end === Infinity ? this.length : end | 0

  if (!encoding) encoding = 'utf8'
  if (start < 0) start = 0
  if (end > this.length) end = this.length
  if (end <= start) return ''

  while (true) {
    switch (encoding) {
      case 'hex':
        return hexSlice(this, start, end)

      case 'utf8':
      case 'utf-8':
        return utf8Slice(this, start, end)

      case 'ascii':
        return asciiSlice(this, start, end)

      case 'binary':
        return binarySlice(this, start, end)

      case 'base64':
        return base64Slice(this, start, end)

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return utf16leSlice(this, start, end)

      default:
        if (loweredCase) throw new TypeError('Unknown encoding: ' + encoding)
        encoding = (encoding + '').toLowerCase()
        loweredCase = true
    }
  }
}

Buffer.prototype.toString = function toString () {
  var length = this.length | 0
  if (length === 0) return ''
  if (arguments.length === 0) return utf8Slice(this, 0, length)
  return slowToString.apply(this, arguments)
}

Buffer.prototype.equals = function equals (b) {
  if (!Buffer.isBuffer(b)) throw new TypeError('Argument must be a Buffer')
  if (this === b) return true
  return Buffer.compare(this, b) === 0
}

Buffer.prototype.inspect = function inspect () {
  var str = ''
  var max = exports.INSPECT_MAX_BYTES
  if (this.length > 0) {
    str = this.toString('hex', 0, max).match(/.{2}/g).join(' ')
    if (this.length > max) str += ' ... '
  }
  return '<Buffer ' + str + '>'
}

Buffer.prototype.compare = function compare (b) {
  if (!Buffer.isBuffer(b)) throw new TypeError('Argument must be a Buffer')
  if (this === b) return 0
  return Buffer.compare(this, b)
}

Buffer.prototype.indexOf = function indexOf (val, byteOffset) {
  if (byteOffset > 0x7fffffff) byteOffset = 0x7fffffff
  else if (byteOffset < -0x80000000) byteOffset = -0x80000000
  byteOffset >>= 0

  if (this.length === 0) return -1
  if (byteOffset >= this.length) return -1

  // Negative offsets start from the end of the buffer
  if (byteOffset < 0) byteOffset = Math.max(this.length + byteOffset, 0)

  if (typeof val === 'string') {
    if (val.length === 0) return -1 // special case: looking for empty string always fails
    return String.prototype.indexOf.call(this, val, byteOffset)
  }
  if (Buffer.isBuffer(val)) {
    return arrayIndexOf(this, val, byteOffset)
  }
  if (typeof val === 'number') {
    if (Buffer.TYPED_ARRAY_SUPPORT && Uint8Array.prototype.indexOf === 'function') {
      return Uint8Array.prototype.indexOf.call(this, val, byteOffset)
    }
    return arrayIndexOf(this, [ val ], byteOffset)
  }

  function arrayIndexOf (arr, val, byteOffset) {
    var foundIndex = -1
    for (var i = 0; byteOffset + i < arr.length; i++) {
      if (arr[byteOffset + i] === val[foundIndex === -1 ? 0 : i - foundIndex]) {
        if (foundIndex === -1) foundIndex = i
        if (i - foundIndex + 1 === val.length) return byteOffset + foundIndex
      } else {
        foundIndex = -1
      }
    }
    return -1
  }

  throw new TypeError('val must be string, number or Buffer')
}

// `get` is deprecated
Buffer.prototype.get = function get (offset) {
  console.log('.get() is deprecated. Access using array indexes instead.')
  return this.readUInt8(offset)
}

// `set` is deprecated
Buffer.prototype.set = function set (v, offset) {
  console.log('.set() is deprecated. Access using array indexes instead.')
  return this.writeUInt8(v, offset)
}

function hexWrite (buf, string, offset, length) {
  offset = Number(offset) || 0
  var remaining = buf.length - offset
  if (!length) {
    length = remaining
  } else {
    length = Number(length)
    if (length > remaining) {
      length = remaining
    }
  }

  // must be an even number of digits
  var strLen = string.length
  if (strLen % 2 !== 0) throw new Error('Invalid hex string')

  if (length > strLen / 2) {
    length = strLen / 2
  }
  for (var i = 0; i < length; i++) {
    var parsed = parseInt(string.substr(i * 2, 2), 16)
    if (isNaN(parsed)) throw new Error('Invalid hex string')
    buf[offset + i] = parsed
  }
  return i
}

function utf8Write (buf, string, offset, length) {
  return blitBuffer(utf8ToBytes(string, buf.length - offset), buf, offset, length)
}

function asciiWrite (buf, string, offset, length) {
  return blitBuffer(asciiToBytes(string), buf, offset, length)
}

function binaryWrite (buf, string, offset, length) {
  return asciiWrite(buf, string, offset, length)
}

function base64Write (buf, string, offset, length) {
  return blitBuffer(base64ToBytes(string), buf, offset, length)
}

function ucs2Write (buf, string, offset, length) {
  return blitBuffer(utf16leToBytes(string, buf.length - offset), buf, offset, length)
}

Buffer.prototype.write = function write (string, offset, length, encoding) {
  // Buffer#write(string)
  if (offset === undefined) {
    encoding = 'utf8'
    length = this.length
    offset = 0
  // Buffer#write(string, encoding)
  } else if (length === undefined && typeof offset === 'string') {
    encoding = offset
    length = this.length
    offset = 0
  // Buffer#write(string, offset[, length][, encoding])
  } else if (isFinite(offset)) {
    offset = offset | 0
    if (isFinite(length)) {
      length = length | 0
      if (encoding === undefined) encoding = 'utf8'
    } else {
      encoding = length
      length = undefined
    }
  // legacy write(string, encoding, offset, length) - remove in v0.13
  } else {
    var swap = encoding
    encoding = offset
    offset = length | 0
    length = swap
  }

  var remaining = this.length - offset
  if (length === undefined || length > remaining) length = remaining

  if ((string.length > 0 && (length < 0 || offset < 0)) || offset > this.length) {
    throw new RangeError('attempt to write outside buffer bounds')
  }

  if (!encoding) encoding = 'utf8'

  var loweredCase = false
  for (;;) {
    switch (encoding) {
      case 'hex':
        return hexWrite(this, string, offset, length)

      case 'utf8':
      case 'utf-8':
        return utf8Write(this, string, offset, length)

      case 'ascii':
        return asciiWrite(this, string, offset, length)

      case 'binary':
        return binaryWrite(this, string, offset, length)

      case 'base64':
        // Warning: maxLength not taken into account in base64Write
        return base64Write(this, string, offset, length)

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return ucs2Write(this, string, offset, length)

      default:
        if (loweredCase) throw new TypeError('Unknown encoding: ' + encoding)
        encoding = ('' + encoding).toLowerCase()
        loweredCase = true
    }
  }
}

Buffer.prototype.toJSON = function toJSON () {
  return {
    type: 'Buffer',
    data: Array.prototype.slice.call(this._arr || this, 0)
  }
}

function base64Slice (buf, start, end) {
  if (start === 0 && end === buf.length) {
    return base64.fromByteArray(buf)
  } else {
    return base64.fromByteArray(buf.slice(start, end))
  }
}

function utf8Slice (buf, start, end) {
  end = Math.min(buf.length, end)
  var res = []

  var i = start
  while (i < end) {
    var firstByte = buf[i]
    var codePoint = null
    var bytesPerSequence = (firstByte > 0xEF) ? 4
      : (firstByte > 0xDF) ? 3
      : (firstByte > 0xBF) ? 2
      : 1

    if (i + bytesPerSequence <= end) {
      var secondByte, thirdByte, fourthByte, tempCodePoint

      switch (bytesPerSequence) {
        case 1:
          if (firstByte < 0x80) {
            codePoint = firstByte
          }
          break
        case 2:
          secondByte = buf[i + 1]
          if ((secondByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0x1F) << 0x6 | (secondByte & 0x3F)
            if (tempCodePoint > 0x7F) {
              codePoint = tempCodePoint
            }
          }
          break
        case 3:
          secondByte = buf[i + 1]
          thirdByte = buf[i + 2]
          if ((secondByte & 0xC0) === 0x80 && (thirdByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0xF) << 0xC | (secondByte & 0x3F) << 0x6 | (thirdByte & 0x3F)
            if (tempCodePoint > 0x7FF && (tempCodePoint < 0xD800 || tempCodePoint > 0xDFFF)) {
              codePoint = tempCodePoint
            }
          }
          break
        case 4:
          secondByte = buf[i + 1]
          thirdByte = buf[i + 2]
          fourthByte = buf[i + 3]
          if ((secondByte & 0xC0) === 0x80 && (thirdByte & 0xC0) === 0x80 && (fourthByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0xF) << 0x12 | (secondByte & 0x3F) << 0xC | (thirdByte & 0x3F) << 0x6 | (fourthByte & 0x3F)
            if (tempCodePoint > 0xFFFF && tempCodePoint < 0x110000) {
              codePoint = tempCodePoint
            }
          }
      }
    }

    if (codePoint === null) {
      // we did not generate a valid codePoint so insert a
      // replacement char (U+FFFD) and advance only 1 byte
      codePoint = 0xFFFD
      bytesPerSequence = 1
    } else if (codePoint > 0xFFFF) {
      // encode to utf16 (surrogate pair dance)
      codePoint -= 0x10000
      res.push(codePoint >>> 10 & 0x3FF | 0xD800)
      codePoint = 0xDC00 | codePoint & 0x3FF
    }

    res.push(codePoint)
    i += bytesPerSequence
  }

  return decodeCodePointsArray(res)
}

// Based on http://stackoverflow.com/a/22747272/680742, the browser with
// the lowest limit is Chrome, with 0x10000 args.
// We go 1 magnitude less, for safety
var MAX_ARGUMENTS_LENGTH = 0x1000

function decodeCodePointsArray (codePoints) {
  var len = codePoints.length
  if (len <= MAX_ARGUMENTS_LENGTH) {
    return String.fromCharCode.apply(String, codePoints) // avoid extra slice()
  }

  // Decode in chunks to avoid "call stack size exceeded".
  var res = ''
  var i = 0
  while (i < len) {
    res += String.fromCharCode.apply(
      String,
      codePoints.slice(i, i += MAX_ARGUMENTS_LENGTH)
    )
  }
  return res
}

function asciiSlice (buf, start, end) {
  var ret = ''
  end = Math.min(buf.length, end)

  for (var i = start; i < end; i++) {
    ret += String.fromCharCode(buf[i] & 0x7F)
  }
  return ret
}

function binarySlice (buf, start, end) {
  var ret = ''
  end = Math.min(buf.length, end)

  for (var i = start; i < end; i++) {
    ret += String.fromCharCode(buf[i])
  }
  return ret
}

function hexSlice (buf, start, end) {
  var len = buf.length

  if (!start || start < 0) start = 0
  if (!end || end < 0 || end > len) end = len

  var out = ''
  for (var i = start; i < end; i++) {
    out += toHex(buf[i])
  }
  return out
}

function utf16leSlice (buf, start, end) {
  var bytes = buf.slice(start, end)
  var res = ''
  for (var i = 0; i < bytes.length; i += 2) {
    res += String.fromCharCode(bytes[i] + bytes[i + 1] * 256)
  }
  return res
}

Buffer.prototype.slice = function slice (start, end) {
  var len = this.length
  start = ~~start
  end = end === undefined ? len : ~~end

  if (start < 0) {
    start += len
    if (start < 0) start = 0
  } else if (start > len) {
    start = len
  }

  if (end < 0) {
    end += len
    if (end < 0) end = 0
  } else if (end > len) {
    end = len
  }

  if (end < start) end = start

  var newBuf
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    newBuf = Buffer._augment(this.subarray(start, end))
  } else {
    var sliceLen = end - start
    newBuf = new Buffer(sliceLen, undefined)
    for (var i = 0; i < sliceLen; i++) {
      newBuf[i] = this[i + start]
    }
  }

  if (newBuf.length) newBuf.parent = this.parent || this

  return newBuf
}

/*
 * Need to make sure that buffer isn't trying to write out of bounds.
 */
function checkOffset (offset, ext, length) {
  if ((offset % 1) !== 0 || offset < 0) throw new RangeError('offset is not uint')
  if (offset + ext > length) throw new RangeError('Trying to access beyond buffer length')
}

Buffer.prototype.readUIntLE = function readUIntLE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var val = this[offset]
  var mul = 1
  var i = 0
  while (++i < byteLength && (mul *= 0x100)) {
    val += this[offset + i] * mul
  }

  return val
}

Buffer.prototype.readUIntBE = function readUIntBE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) {
    checkOffset(offset, byteLength, this.length)
  }

  var val = this[offset + --byteLength]
  var mul = 1
  while (byteLength > 0 && (mul *= 0x100)) {
    val += this[offset + --byteLength] * mul
  }

  return val
}

Buffer.prototype.readUInt8 = function readUInt8 (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 1, this.length)
  return this[offset]
}

Buffer.prototype.readUInt16LE = function readUInt16LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  return this[offset] | (this[offset + 1] << 8)
}

Buffer.prototype.readUInt16BE = function readUInt16BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  return (this[offset] << 8) | this[offset + 1]
}

Buffer.prototype.readUInt32LE = function readUInt32LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return ((this[offset]) |
      (this[offset + 1] << 8) |
      (this[offset + 2] << 16)) +
      (this[offset + 3] * 0x1000000)
}

Buffer.prototype.readUInt32BE = function readUInt32BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset] * 0x1000000) +
    ((this[offset + 1] << 16) |
    (this[offset + 2] << 8) |
    this[offset + 3])
}

Buffer.prototype.readIntLE = function readIntLE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var val = this[offset]
  var mul = 1
  var i = 0
  while (++i < byteLength && (mul *= 0x100)) {
    val += this[offset + i] * mul
  }
  mul *= 0x80

  if (val >= mul) val -= Math.pow(2, 8 * byteLength)

  return val
}

Buffer.prototype.readIntBE = function readIntBE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var i = byteLength
  var mul = 1
  var val = this[offset + --i]
  while (i > 0 && (mul *= 0x100)) {
    val += this[offset + --i] * mul
  }
  mul *= 0x80

  if (val >= mul) val -= Math.pow(2, 8 * byteLength)

  return val
}

Buffer.prototype.readInt8 = function readInt8 (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 1, this.length)
  if (!(this[offset] & 0x80)) return (this[offset])
  return ((0xff - this[offset] + 1) * -1)
}

Buffer.prototype.readInt16LE = function readInt16LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  var val = this[offset] | (this[offset + 1] << 8)
  return (val & 0x8000) ? val | 0xFFFF0000 : val
}

Buffer.prototype.readInt16BE = function readInt16BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  var val = this[offset + 1] | (this[offset] << 8)
  return (val & 0x8000) ? val | 0xFFFF0000 : val
}

Buffer.prototype.readInt32LE = function readInt32LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset]) |
    (this[offset + 1] << 8) |
    (this[offset + 2] << 16) |
    (this[offset + 3] << 24)
}

Buffer.prototype.readInt32BE = function readInt32BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset] << 24) |
    (this[offset + 1] << 16) |
    (this[offset + 2] << 8) |
    (this[offset + 3])
}

Buffer.prototype.readFloatLE = function readFloatLE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)
  return ieee754.read(this, offset, true, 23, 4)
}

Buffer.prototype.readFloatBE = function readFloatBE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)
  return ieee754.read(this, offset, false, 23, 4)
}

Buffer.prototype.readDoubleLE = function readDoubleLE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 8, this.length)
  return ieee754.read(this, offset, true, 52, 8)
}

Buffer.prototype.readDoubleBE = function readDoubleBE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 8, this.length)
  return ieee754.read(this, offset, false, 52, 8)
}

function checkInt (buf, value, offset, ext, max, min) {
  if (!Buffer.isBuffer(buf)) throw new TypeError('buffer must be a Buffer instance')
  if (value > max || value < min) throw new RangeError('value is out of bounds')
  if (offset + ext > buf.length) throw new RangeError('index out of range')
}

Buffer.prototype.writeUIntLE = function writeUIntLE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkInt(this, value, offset, byteLength, Math.pow(2, 8 * byteLength), 0)

  var mul = 1
  var i = 0
  this[offset] = value & 0xFF
  while (++i < byteLength && (mul *= 0x100)) {
    this[offset + i] = (value / mul) & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeUIntBE = function writeUIntBE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkInt(this, value, offset, byteLength, Math.pow(2, 8 * byteLength), 0)

  var i = byteLength - 1
  var mul = 1
  this[offset + i] = value & 0xFF
  while (--i >= 0 && (mul *= 0x100)) {
    this[offset + i] = (value / mul) & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeUInt8 = function writeUInt8 (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 1, 0xff, 0)
  if (!Buffer.TYPED_ARRAY_SUPPORT) value = Math.floor(value)
  this[offset] = (value & 0xff)
  return offset + 1
}

function objectWriteUInt16 (buf, value, offset, littleEndian) {
  if (value < 0) value = 0xffff + value + 1
  for (var i = 0, j = Math.min(buf.length - offset, 2); i < j; i++) {
    buf[offset + i] = (value & (0xff << (8 * (littleEndian ? i : 1 - i)))) >>>
      (littleEndian ? i : 1 - i) * 8
  }
}

Buffer.prototype.writeUInt16LE = function writeUInt16LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0xffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
  } else {
    objectWriteUInt16(this, value, offset, true)
  }
  return offset + 2
}

Buffer.prototype.writeUInt16BE = function writeUInt16BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0xffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 8)
    this[offset + 1] = (value & 0xff)
  } else {
    objectWriteUInt16(this, value, offset, false)
  }
  return offset + 2
}

function objectWriteUInt32 (buf, value, offset, littleEndian) {
  if (value < 0) value = 0xffffffff + value + 1
  for (var i = 0, j = Math.min(buf.length - offset, 4); i < j; i++) {
    buf[offset + i] = (value >>> (littleEndian ? i : 3 - i) * 8) & 0xff
  }
}

Buffer.prototype.writeUInt32LE = function writeUInt32LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0xffffffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset + 3] = (value >>> 24)
    this[offset + 2] = (value >>> 16)
    this[offset + 1] = (value >>> 8)
    this[offset] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, true)
  }
  return offset + 4
}

Buffer.prototype.writeUInt32BE = function writeUInt32BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0xffffffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 24)
    this[offset + 1] = (value >>> 16)
    this[offset + 2] = (value >>> 8)
    this[offset + 3] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, false)
  }
  return offset + 4
}

Buffer.prototype.writeIntLE = function writeIntLE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) {
    var limit = Math.pow(2, 8 * byteLength - 1)

    checkInt(this, value, offset, byteLength, limit - 1, -limit)
  }

  var i = 0
  var mul = 1
  var sub = value < 0 ? 1 : 0
  this[offset] = value & 0xFF
  while (++i < byteLength && (mul *= 0x100)) {
    this[offset + i] = ((value / mul) >> 0) - sub & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeIntBE = function writeIntBE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) {
    var limit = Math.pow(2, 8 * byteLength - 1)

    checkInt(this, value, offset, byteLength, limit - 1, -limit)
  }

  var i = byteLength - 1
  var mul = 1
  var sub = value < 0 ? 1 : 0
  this[offset + i] = value & 0xFF
  while (--i >= 0 && (mul *= 0x100)) {
    this[offset + i] = ((value / mul) >> 0) - sub & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeInt8 = function writeInt8 (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 1, 0x7f, -0x80)
  if (!Buffer.TYPED_ARRAY_SUPPORT) value = Math.floor(value)
  if (value < 0) value = 0xff + value + 1
  this[offset] = (value & 0xff)
  return offset + 1
}

Buffer.prototype.writeInt16LE = function writeInt16LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0x7fff, -0x8000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
  } else {
    objectWriteUInt16(this, value, offset, true)
  }
  return offset + 2
}

Buffer.prototype.writeInt16BE = function writeInt16BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0x7fff, -0x8000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 8)
    this[offset + 1] = (value & 0xff)
  } else {
    objectWriteUInt16(this, value, offset, false)
  }
  return offset + 2
}

Buffer.prototype.writeInt32LE = function writeInt32LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0x7fffffff, -0x80000000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
    this[offset + 2] = (value >>> 16)
    this[offset + 3] = (value >>> 24)
  } else {
    objectWriteUInt32(this, value, offset, true)
  }
  return offset + 4
}

Buffer.prototype.writeInt32BE = function writeInt32BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0x7fffffff, -0x80000000)
  if (value < 0) value = 0xffffffff + value + 1
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 24)
    this[offset + 1] = (value >>> 16)
    this[offset + 2] = (value >>> 8)
    this[offset + 3] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, false)
  }
  return offset + 4
}

function checkIEEE754 (buf, value, offset, ext, max, min) {
  if (value > max || value < min) throw new RangeError('value is out of bounds')
  if (offset + ext > buf.length) throw new RangeError('index out of range')
  if (offset < 0) throw new RangeError('index out of range')
}

function writeFloat (buf, value, offset, littleEndian, noAssert) {
  if (!noAssert) {
    checkIEEE754(buf, value, offset, 4, 3.4028234663852886e+38, -3.4028234663852886e+38)
  }
  ieee754.write(buf, value, offset, littleEndian, 23, 4)
  return offset + 4
}

Buffer.prototype.writeFloatLE = function writeFloatLE (value, offset, noAssert) {
  return writeFloat(this, value, offset, true, noAssert)
}

Buffer.prototype.writeFloatBE = function writeFloatBE (value, offset, noAssert) {
  return writeFloat(this, value, offset, false, noAssert)
}

function writeDouble (buf, value, offset, littleEndian, noAssert) {
  if (!noAssert) {
    checkIEEE754(buf, value, offset, 8, 1.7976931348623157E+308, -1.7976931348623157E+308)
  }
  ieee754.write(buf, value, offset, littleEndian, 52, 8)
  return offset + 8
}

Buffer.prototype.writeDoubleLE = function writeDoubleLE (value, offset, noAssert) {
  return writeDouble(this, value, offset, true, noAssert)
}

Buffer.prototype.writeDoubleBE = function writeDoubleBE (value, offset, noAssert) {
  return writeDouble(this, value, offset, false, noAssert)
}

// copy(targetBuffer, targetStart=0, sourceStart=0, sourceEnd=buffer.length)
Buffer.prototype.copy = function copy (target, targetStart, start, end) {
  if (!start) start = 0
  if (!end && end !== 0) end = this.length
  if (targetStart >= target.length) targetStart = target.length
  if (!targetStart) targetStart = 0
  if (end > 0 && end < start) end = start

  // Copy 0 bytes; we're done
  if (end === start) return 0
  if (target.length === 0 || this.length === 0) return 0

  // Fatal error conditions
  if (targetStart < 0) {
    throw new RangeError('targetStart out of bounds')
  }
  if (start < 0 || start >= this.length) throw new RangeError('sourceStart out of bounds')
  if (end < 0) throw new RangeError('sourceEnd out of bounds')

  // Are we oob?
  if (end > this.length) end = this.length
  if (target.length - targetStart < end - start) {
    end = target.length - targetStart + start
  }

  var len = end - start
  var i

  if (this === target && start < targetStart && targetStart < end) {
    // descending copy from end
    for (i = len - 1; i >= 0; i--) {
      target[i + targetStart] = this[i + start]
    }
  } else if (len < 1000 || !Buffer.TYPED_ARRAY_SUPPORT) {
    // ascending copy from start
    for (i = 0; i < len; i++) {
      target[i + targetStart] = this[i + start]
    }
  } else {
    target._set(this.subarray(start, start + len), targetStart)
  }

  return len
}

// fill(value, start=0, end=buffer.length)
Buffer.prototype.fill = function fill (value, start, end) {
  if (!value) value = 0
  if (!start) start = 0
  if (!end) end = this.length

  if (end < start) throw new RangeError('end < start')

  // Fill 0 bytes; we're done
  if (end === start) return
  if (this.length === 0) return

  if (start < 0 || start >= this.length) throw new RangeError('start out of bounds')
  if (end < 0 || end > this.length) throw new RangeError('end out of bounds')

  var i
  if (typeof value === 'number') {
    for (i = start; i < end; i++) {
      this[i] = value
    }
  } else {
    var bytes = utf8ToBytes(value.toString())
    var len = bytes.length
    for (i = start; i < end; i++) {
      this[i] = bytes[i % len]
    }
  }

  return this
}

/**
 * Creates a new `ArrayBuffer` with the *copied* memory of the buffer instance.
 * Added in Node 0.12. Only available in browsers that support ArrayBuffer.
 */
Buffer.prototype.toArrayBuffer = function toArrayBuffer () {
  if (typeof Uint8Array !== 'undefined') {
    if (Buffer.TYPED_ARRAY_SUPPORT) {
      return (new Buffer(this)).buffer
    } else {
      var buf = new Uint8Array(this.length)
      for (var i = 0, len = buf.length; i < len; i += 1) {
        buf[i] = this[i]
      }
      return buf.buffer
    }
  } else {
    throw new TypeError('Buffer.toArrayBuffer not supported in this browser')
  }
}

// HELPER FUNCTIONS
// ================

var BP = Buffer.prototype

/**
 * Augment a Uint8Array *instance* (not the Uint8Array class!) with Buffer methods
 */
Buffer._augment = function _augment (arr) {
  arr.constructor = Buffer
  arr._isBuffer = true

  // save reference to original Uint8Array set method before overwriting
  arr._set = arr.set

  // deprecated
  arr.get = BP.get
  arr.set = BP.set

  arr.write = BP.write
  arr.toString = BP.toString
  arr.toLocaleString = BP.toString
  arr.toJSON = BP.toJSON
  arr.equals = BP.equals
  arr.compare = BP.compare
  arr.indexOf = BP.indexOf
  arr.copy = BP.copy
  arr.slice = BP.slice
  arr.readUIntLE = BP.readUIntLE
  arr.readUIntBE = BP.readUIntBE
  arr.readUInt8 = BP.readUInt8
  arr.readUInt16LE = BP.readUInt16LE
  arr.readUInt16BE = BP.readUInt16BE
  arr.readUInt32LE = BP.readUInt32LE
  arr.readUInt32BE = BP.readUInt32BE
  arr.readIntLE = BP.readIntLE
  arr.readIntBE = BP.readIntBE
  arr.readInt8 = BP.readInt8
  arr.readInt16LE = BP.readInt16LE
  arr.readInt16BE = BP.readInt16BE
  arr.readInt32LE = BP.readInt32LE
  arr.readInt32BE = BP.readInt32BE
  arr.readFloatLE = BP.readFloatLE
  arr.readFloatBE = BP.readFloatBE
  arr.readDoubleLE = BP.readDoubleLE
  arr.readDoubleBE = BP.readDoubleBE
  arr.writeUInt8 = BP.writeUInt8
  arr.writeUIntLE = BP.writeUIntLE
  arr.writeUIntBE = BP.writeUIntBE
  arr.writeUInt16LE = BP.writeUInt16LE
  arr.writeUInt16BE = BP.writeUInt16BE
  arr.writeUInt32LE = BP.writeUInt32LE
  arr.writeUInt32BE = BP.writeUInt32BE
  arr.writeIntLE = BP.writeIntLE
  arr.writeIntBE = BP.writeIntBE
  arr.writeInt8 = BP.writeInt8
  arr.writeInt16LE = BP.writeInt16LE
  arr.writeInt16BE = BP.writeInt16BE
  arr.writeInt32LE = BP.writeInt32LE
  arr.writeInt32BE = BP.writeInt32BE
  arr.writeFloatLE = BP.writeFloatLE
  arr.writeFloatBE = BP.writeFloatBE
  arr.writeDoubleLE = BP.writeDoubleLE
  arr.writeDoubleBE = BP.writeDoubleBE
  arr.fill = BP.fill
  arr.inspect = BP.inspect
  arr.toArrayBuffer = BP.toArrayBuffer

  return arr
}

var INVALID_BASE64_RE = /[^+\/0-9A-Za-z-_]/g

function base64clean (str) {
  // Node strips out invalid characters like \n and \t from the string, base64-js does not
  str = stringtrim(str).replace(INVALID_BASE64_RE, '')
  // Node converts strings with length < 2 to ''
  if (str.length < 2) return ''
  // Node allows for non-padded base64 strings (missing trailing ===), base64-js does not
  while (str.length % 4 !== 0) {
    str = str + '='
  }
  return str
}

function stringtrim (str) {
  if (str.trim) return str.trim()
  return str.replace(/^\s+|\s+$/g, '')
}

function toHex (n) {
  if (n < 16) return '0' + n.toString(16)
  return n.toString(16)
}

function utf8ToBytes (string, units) {
  units = units || Infinity
  var codePoint
  var length = string.length
  var leadSurrogate = null
  var bytes = []

  for (var i = 0; i < length; i++) {
    codePoint = string.charCodeAt(i)

    // is surrogate component
    if (codePoint > 0xD7FF && codePoint < 0xE000) {
      // last char was a lead
      if (!leadSurrogate) {
        // no lead yet
        if (codePoint > 0xDBFF) {
          // unexpected trail
          if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
          continue
        } else if (i + 1 === length) {
          // unpaired lead
          if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
          continue
        }

        // valid lead
        leadSurrogate = codePoint

        continue
      }

      // 2 leads in a row
      if (codePoint < 0xDC00) {
        if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
        leadSurrogate = codePoint
        continue
      }

      // valid surrogate pair
      codePoint = (leadSurrogate - 0xD800 << 10 | codePoint - 0xDC00) + 0x10000
    } else if (leadSurrogate) {
      // valid bmp char, but last char was a lead
      if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
    }

    leadSurrogate = null

    // encode utf8
    if (codePoint < 0x80) {
      if ((units -= 1) < 0) break
      bytes.push(codePoint)
    } else if (codePoint < 0x800) {
      if ((units -= 2) < 0) break
      bytes.push(
        codePoint >> 0x6 | 0xC0,
        codePoint & 0x3F | 0x80
      )
    } else if (codePoint < 0x10000) {
      if ((units -= 3) < 0) break
      bytes.push(
        codePoint >> 0xC | 0xE0,
        codePoint >> 0x6 & 0x3F | 0x80,
        codePoint & 0x3F | 0x80
      )
    } else if (codePoint < 0x110000) {
      if ((units -= 4) < 0) break
      bytes.push(
        codePoint >> 0x12 | 0xF0,
        codePoint >> 0xC & 0x3F | 0x80,
        codePoint >> 0x6 & 0x3F | 0x80,
        codePoint & 0x3F | 0x80
      )
    } else {
      throw new Error('Invalid code point')
    }
  }

  return bytes
}

function asciiToBytes (str) {
  var byteArray = []
  for (var i = 0; i < str.length; i++) {
    // Node's code seems to be doing this and not & 0x7F..
    byteArray.push(str.charCodeAt(i) & 0xFF)
  }
  return byteArray
}

function utf16leToBytes (str, units) {
  var c, hi, lo
  var byteArray = []
  for (var i = 0; i < str.length; i++) {
    if ((units -= 2) < 0) break

    c = str.charCodeAt(i)
    hi = c >> 8
    lo = c % 256
    byteArray.push(lo)
    byteArray.push(hi)
  }

  return byteArray
}

function base64ToBytes (str) {
  return base64.toByteArray(base64clean(str))
}

function blitBuffer (src, dst, offset, length) {
  for (var i = 0; i < length; i++) {
    if ((i + offset >= dst.length) || (i >= src.length)) break
    dst[i + offset] = src[i]
  }
  return i
}

}).call(this,typeof global !== "undefined" ? global : typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
},{"base64-js":6,"ieee754":9,"is-array":11}],8:[function(require,module,exports){
/*global window:false, self:false, define:false, module:false */

/**
 * @license IDBWrapper - A cross-browser wrapper for IndexedDB
 * Version 1.6.1
 * Copyright (c) 2011 - 2015 Jens Arps
 * http://jensarps.de/
 *
 * Licensed under the MIT (X11) license
 */

(function (name, definition, global) {
  if (typeof define === 'function') {
    define(definition);
  } else if (typeof module !== 'undefined' && module.exports) {
    module.exports = definition();
  } else {
    global[name] = definition();
  }
})('IDBStore', function () {

  'use strict';

  var defaultErrorHandler = function (error) {
    throw error;
  };
  var defaultSuccessHandler = function () {};

  var defaults = {
    storeName: 'Store',
    storePrefix: 'IDBWrapper-',
    dbVersion: 1,
    keyPath: 'id',
    autoIncrement: true,
    onStoreReady: function () {
    },
    onError: defaultErrorHandler,
    indexes: [],
    implementationPreference: [
      'indexedDB',
      'webkitIndexedDB',
      'mozIndexedDB',
      'shimIndexedDB'
    ]
  };

  /**
   *
   * The IDBStore constructor
   *
   * @constructor
   * @name IDBStore
   * @version 1.6.1
   *
   * @param {Object} [kwArgs] An options object used to configure the store and
   *  set callbacks
   * @param {String} [kwArgs.storeName='Store'] The name of the store
   * @param {String} [kwArgs.storePrefix='IDBWrapper-'] A prefix that is
   *  internally used to construct the name of the database, which will be
   *  kwArgs.storePrefix + kwArgs.storeName
   * @param {Number} [kwArgs.dbVersion=1] The version of the store
   * @param {String} [kwArgs.keyPath='id'] The key path to use. If you want to
   *  setup IDBWrapper to work with out-of-line keys, you need to set this to
   *  `null`
   * @param {Boolean} [kwArgs.autoIncrement=true] If set to true, IDBStore will
   *  automatically make sure a unique keyPath value is present on each object
   *  that is stored.
   * @param {Function} [kwArgs.onStoreReady] A callback to be called when the
   *  store is ready to be used.
   * @param {Function} [kwArgs.onError=throw] A callback to be called when an
   *  error occurred during instantiation of the store.
   * @param {Array} [kwArgs.indexes=[]] An array of indexData objects
   *  defining the indexes to use with the store. For every index to be used
   *  one indexData object needs to be passed in the array.
   *  An indexData object is defined as follows:
   * @param {Object} [kwArgs.indexes.indexData] An object defining the index to
   *  use
   * @param {String} kwArgs.indexes.indexData.name The name of the index
   * @param {String} [kwArgs.indexes.indexData.keyPath] The key path of the index
   * @param {Boolean} [kwArgs.indexes.indexData.unique] Whether the index is unique
   * @param {Boolean} [kwArgs.indexes.indexData.multiEntry] Whether the index is multi entry
   * @param {Array} [kwArgs.implementationPreference=['indexedDB','webkitIndexedDB','mozIndexedDB','shimIndexedDB']] An array of strings naming implementations to be used, in order or preference
   * @param {Function} [onStoreReady] A callback to be called when the store
   * is ready to be used.
   * @example
      // create a store for customers with an additional index over the
      // `lastname` property.
      var myCustomerStore = new IDBStore({
        dbVersion: 1,
        storeName: 'customer-index',
        keyPath: 'customerid',
        autoIncrement: true,
        onStoreReady: populateTable,
        indexes: [
          { name: 'lastname', keyPath: 'lastname', unique: false, multiEntry: false }
        ]
      });
   * @example
      // create a generic store
      var myCustomerStore = new IDBStore({
        storeName: 'my-data-store',
        onStoreReady: function(){
          // start working with the store.
        }
      });
   */
  var IDBStore = function (kwArgs, onStoreReady) {

    if (typeof onStoreReady == 'undefined' && typeof kwArgs == 'function') {
      onStoreReady = kwArgs;
    }
    if (Object.prototype.toString.call(kwArgs) != '[object Object]') {
      kwArgs = {};
    }

    for (var key in defaults) {
      this[key] = typeof kwArgs[key] != 'undefined' ? kwArgs[key] : defaults[key];
    }

    this.dbName = this.storePrefix + this.storeName;
    this.dbVersion = parseInt(this.dbVersion, 10) || 1;

    onStoreReady && (this.onStoreReady = onStoreReady);

    var env = typeof window == 'object' ? window : self;
    var availableImplementations = this.implementationPreference.filter(function (implName) {
      return implName in env;
    });
    this.implementation = availableImplementations[0];
    this.idb = env[this.implementation];
    this.keyRange = env.IDBKeyRange || env.webkitIDBKeyRange || env.mozIDBKeyRange;

    this.consts = {
      'READ_ONLY':         'readonly',
      'READ_WRITE':        'readwrite',
      'VERSION_CHANGE':    'versionchange',
      'NEXT':              'next',
      'NEXT_NO_DUPLICATE': 'nextunique',
      'PREV':              'prev',
      'PREV_NO_DUPLICATE': 'prevunique'
    };

    this.openDB();
  };

  IDBStore.prototype = /** @lends IDBStore */ {

    /**
     * A pointer to the IDBStore ctor
     *
     * @private
     * @type {Function}
     */
    constructor: IDBStore,

    /**
     * The version of IDBStore
     *
     * @type {String}
     */
    version: '1.6.1',

    /**
     * A reference to the IndexedDB object
     *
     * @type {Object}
     */
    db: null,

    /**
     * The full name of the IndexedDB used by IDBStore, composed of
     * this.storePrefix + this.storeName
     *
     * @type {String}
     */
    dbName: null,

    /**
     * The version of the IndexedDB used by IDBStore
     *
     * @type {Number}
     */
    dbVersion: null,

    /**
     * A reference to the objectStore used by IDBStore
     *
     * @type {Object}
     */
    store: null,

    /**
     * The store name
     *
     * @type {String}
     */
    storeName: null,

    /**
     * The prefix to prepend to the store name
     *
     * @type {String}
     */
    storePrefix: null,

    /**
     * The key path
     *
     * @type {String}
     */
    keyPath: null,

    /**
     * Whether IDBStore uses autoIncrement
     *
     * @type {Boolean}
     */
    autoIncrement: null,

    /**
     * The indexes used by IDBStore
     *
     * @type {Array}
     */
    indexes: null,

    /**
     * The implemantations to try to use, in order of preference
     *
     * @type {Array}
     */
    implementationPreference: null,

    /**
     * The actual implementation being used
     *
     * @type {String}
     */
    implementation: '',

    /**
     * The callback to be called when the store is ready to be used
     *
     * @type {Function}
     */
    onStoreReady: null,

    /**
     * The callback to be called if an error occurred during instantiation
     * of the store
     *
     * @type {Function}
     */
    onError: null,

    /**
     * The internal insertID counter
     *
     * @type {Number}
     * @private
     */
    _insertIdCount: 0,

    /**
     * Opens an IndexedDB; called by the constructor.
     *
     * Will check if versions match and compare provided index configuration
     * with existing ones, and update indexes if necessary.
     *
     * Will call this.onStoreReady() if everything went well and the store
     * is ready to use, and this.onError() is something went wrong.
     *
     * @private
     *
     */
    openDB: function () {

      var openRequest = this.idb.open(this.dbName, this.dbVersion);
      var preventSuccessCallback = false;

      openRequest.onerror = function (error) {

        var gotVersionErr = false;
        if ('error' in error.target) {
          gotVersionErr = error.target.error.name == 'VersionError';
        } else if ('errorCode' in error.target) {
          gotVersionErr = error.target.errorCode == 12;
        }

        if (gotVersionErr) {
          this.onError(new Error('The version number provided is lower than the existing one.'));
        } else {
          this.onError(error);
        }
      }.bind(this);

      openRequest.onsuccess = function (event) {

        if (preventSuccessCallback) {
          return;
        }

        if(this.db){
          this.onStoreReady();
          return;
        }

        this.db = event.target.result;

        if(typeof this.db.version == 'string'){
          this.onError(new Error('The IndexedDB implementation in this browser is outdated. Please upgrade your browser.'));
          return;
        }

        if(!this.db.objectStoreNames.contains(this.storeName)){
          // We should never ever get here.
          // Lets notify the user anyway.
          this.onError(new Error('Object store couldn\'t be created.'));
          return;
        }

        var emptyTransaction = this.db.transaction([this.storeName], this.consts.READ_ONLY);
        this.store = emptyTransaction.objectStore(this.storeName);

        // check indexes
        var existingIndexes = Array.prototype.slice.call(this.getIndexList());
        this.indexes.forEach(function(indexData){
          var indexName = indexData.name;

          if(!indexName){
            preventSuccessCallback = true;
            this.onError(new Error('Cannot create index: No index name given.'));
            return;
          }

          this.normalizeIndexData(indexData);

          if(this.hasIndex(indexName)){
            // check if it complies
            var actualIndex = this.store.index(indexName);
            var complies = this.indexComplies(actualIndex, indexData);
            if(!complies){
              preventSuccessCallback = true;
              this.onError(new Error('Cannot modify index "' + indexName + '" for current version. Please bump version number to ' + ( this.dbVersion + 1 ) + '.'));
            }

            existingIndexes.splice(existingIndexes.indexOf(indexName), 1);
          } else {
            preventSuccessCallback = true;
            this.onError(new Error('Cannot create new index "' + indexName + '" for current version. Please bump version number to ' + ( this.dbVersion + 1 ) + '.'));
          }

        }, this);

        if (existingIndexes.length) {
          preventSuccessCallback = true;
          this.onError(new Error('Cannot delete index(es) "' + existingIndexes.toString() + '" for current version. Please bump version number to ' + ( this.dbVersion + 1 ) + '.'));
        }

        preventSuccessCallback || this.onStoreReady();
      }.bind(this);

      openRequest.onupgradeneeded = function(/* IDBVersionChangeEvent */ event){

        this.db = event.target.result;

        if(this.db.objectStoreNames.contains(this.storeName)){
          this.store = event.target.transaction.objectStore(this.storeName);
        } else {
          var optionalParameters = { autoIncrement: this.autoIncrement };
          if (this.keyPath !== null) {
            optionalParameters.keyPath = this.keyPath;
          }
          this.store = this.db.createObjectStore(this.storeName, optionalParameters);
        }

        var existingIndexes = Array.prototype.slice.call(this.getIndexList());
        this.indexes.forEach(function(indexData){
          var indexName = indexData.name;

          if(!indexName){
            preventSuccessCallback = true;
            this.onError(new Error('Cannot create index: No index name given.'));
          }

          this.normalizeIndexData(indexData);

          if(this.hasIndex(indexName)){
            // check if it complies
            var actualIndex = this.store.index(indexName);
            var complies = this.indexComplies(actualIndex, indexData);
            if(!complies){
              // index differs, need to delete and re-create
              this.store.deleteIndex(indexName);
              this.store.createIndex(indexName, indexData.keyPath, { unique: indexData.unique, multiEntry: indexData.multiEntry });
            }

            existingIndexes.splice(existingIndexes.indexOf(indexName), 1);
          } else {
            this.store.createIndex(indexName, indexData.keyPath, { unique: indexData.unique, multiEntry: indexData.multiEntry });
          }

        }, this);

        if (existingIndexes.length) {
          existingIndexes.forEach(function(_indexName){
            this.store.deleteIndex(_indexName);
          }, this);
        }

      }.bind(this);
    },

    /**
     * Deletes the database used for this store if the IDB implementations
     * provides that functionality.
     *
     * @param {Function} [onSuccess] A callback that is called if deletion
     *  was successful.
     * @param {Function} [onError] A callback that is called if deletion
     *  failed.
     */
    deleteDatabase: function (onSuccess, onError) {
      if (this.idb.deleteDatabase) {
        this.db.close();
        var deleteRequest = this.idb.deleteDatabase(this.dbName);
        deleteRequest.onsuccess = onSuccess;
        deleteRequest.onerror = onError;
      } else {
        onError(new Error('Browser does not support IndexedDB deleteDatabase!'));
      }
    },

    /*********************
     * data manipulation *
     *********************/

    /**
     * Puts an object into the store. If an entry with the given id exists,
     * it will be overwritten. This method has a different signature for inline
     * keys and out-of-line keys; please see the examples below.
     *
     * @param {*} [key] The key to store. This is only needed if IDBWrapper
     *  is set to use out-of-line keys. For inline keys - the default scenario -
     *  this can be omitted.
     * @param {Object} value The data object to store.
     * @param {Function} [onSuccess] A callback that is called if insertion
     *  was successful.
     * @param {Function} [onError] A callback that is called if insertion
     *  failed.
     * @returns {IDBTransaction} The transaction used for this operation.
     * @example
        // Storing an object, using inline keys (the default scenario):
        var myCustomer = {
          customerid: 2346223,
          lastname: 'Doe',
          firstname: 'John'
        };
        myCustomerStore.put(myCustomer, mySuccessHandler, myErrorHandler);
        // Note that passing success- and error-handlers is optional.
     * @example
        // Storing an object, using out-of-line keys:
       var myCustomer = {
         lastname: 'Doe',
         firstname: 'John'
       };
       myCustomerStore.put(2346223, myCustomer, mySuccessHandler, myErrorHandler);
      // Note that passing success- and error-handlers is optional.
     */
    put: function (key, value, onSuccess, onError) {
      if (this.keyPath !== null) {
        onError = onSuccess;
        onSuccess = value;
        value = key;
      }
      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);

      var hasSuccess = false,
          result = null,
          putRequest;

      var putTransaction = this.db.transaction([this.storeName], this.consts.READ_WRITE);
      putTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      putTransaction.onabort = onError;
      putTransaction.onerror = onError;

      if (this.keyPath !== null) { // in-line keys
        this._addIdPropertyIfNeeded(value);
        putRequest = putTransaction.objectStore(this.storeName).put(value);
      } else { // out-of-line keys
        putRequest = putTransaction.objectStore(this.storeName).put(value, key);
      }
      putRequest.onsuccess = function (event) {
        hasSuccess = true;
        result = event.target.result;
      };
      putRequest.onerror = onError;

      return putTransaction;
    },

    /**
     * Retrieves an object from the store. If no entry exists with the given id,
     * the success handler will be called with null as first and only argument.
     *
     * @param {*} key The id of the object to fetch.
     * @param {Function} [onSuccess] A callback that is called if fetching
     *  was successful. Will receive the object as only argument.
     * @param {Function} [onError] A callback that will be called if an error
     *  occurred during the operation.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    get: function (key, onSuccess, onError) {
      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);

      var hasSuccess = false,
          result = null;

      var getTransaction = this.db.transaction([this.storeName], this.consts.READ_ONLY);
      getTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      getTransaction.onabort = onError;
      getTransaction.onerror = onError;
      var getRequest = getTransaction.objectStore(this.storeName).get(key);
      getRequest.onsuccess = function (event) {
        hasSuccess = true;
        result = event.target.result;
      };
      getRequest.onerror = onError;

      return getTransaction;
    },

    /**
     * Removes an object from the store.
     *
     * @param {*} key The id of the object to remove.
     * @param {Function} [onSuccess] A callback that is called if the removal
     *  was successful.
     * @param {Function} [onError] A callback that will be called if an error
     *  occurred during the operation.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    remove: function (key, onSuccess, onError) {
      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);

      var hasSuccess = false,
          result = null;

      var removeTransaction = this.db.transaction([this.storeName], this.consts.READ_WRITE);
      removeTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      removeTransaction.onabort = onError;
      removeTransaction.onerror = onError;

      var deleteRequest = removeTransaction.objectStore(this.storeName)['delete'](key);
      deleteRequest.onsuccess = function (event) {
        hasSuccess = true;
        result = event.target.result;
      };
      deleteRequest.onerror = onError;

      return removeTransaction;
    },

    /**
     * Runs a batch of put and/or remove operations on the store.
     *
     * @param {Array} dataArray An array of objects containing the operation to run
     *  and the data object (for put operations).
     * @param {Function} [onSuccess] A callback that is called if all operations
     *  were successful.
     * @param {Function} [onError] A callback that is called if an error
     *  occurred during one of the operations.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    batch: function (dataArray, onSuccess, onError) {
      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);

      if(Object.prototype.toString.call(dataArray) != '[object Array]'){
        onError(new Error('dataArray argument must be of type Array.'));
      } else if (dataArray.length === 0) {
        return onSuccess(true);
      }
      var batchTransaction = this.db.transaction([this.storeName] , this.consts.READ_WRITE);
      batchTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(hasSuccess);
      };
      batchTransaction.onabort = onError;
      batchTransaction.onerror = onError;

      var count = dataArray.length;
      var called = false;
      var hasSuccess = false;

      var onItemSuccess = function () {
        count--;
        if (count === 0 && !called) {
          called = true;
          hasSuccess = true;
        }
      };

      dataArray.forEach(function (operation) {
        var type = operation.type;
        var key = operation.key;
        var value = operation.value;

        var onItemError = function (err) {
          batchTransaction.abort();
          if (!called) {
            called = true;
            onError(err, type, key);
          }
        };

        if (type == 'remove') {
          var deleteRequest = batchTransaction.objectStore(this.storeName)['delete'](key);
          deleteRequest.onsuccess = onItemSuccess;
          deleteRequest.onerror = onItemError;
        } else if (type == 'put') {
          var putRequest;
          if (this.keyPath !== null) { // in-line keys
            this._addIdPropertyIfNeeded(value);
            putRequest = batchTransaction.objectStore(this.storeName).put(value);
          } else { // out-of-line keys
            putRequest = batchTransaction.objectStore(this.storeName).put(value, key);
          }
          putRequest.onsuccess = onItemSuccess;
          putRequest.onerror = onItemError;
        }
      }, this);

      return batchTransaction;
    },

    /**
     * Takes an array of objects and stores them in a single transaction.
     *
     * @param {Array} dataArray An array of objects to store
     * @param {Function} [onSuccess] A callback that is called if all operations
     *  were successful.
     * @param {Function} [onError] A callback that is called if an error
     *  occurred during one of the operations.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    putBatch: function (dataArray, onSuccess, onError) {
      var batchData = dataArray.map(function(item){
        return { type: 'put', value: item };
      });

      return this.batch(batchData, onSuccess, onError);
    },

    /**
     * Like putBatch, takes an array of objects and stores them in a single
     * transaction, but allows processing of the result values.  Returns the
     * processed records containing the key for newly created records to the
     * onSuccess calllback instead of only returning true or false for success.
     * In addition, added the option for the caller to specify a key field that
     * should be set to the newly created key.
     *
     * @param {Array} dataArray An array of objects to store
     * @param {Object} [options] An object containing optional options
     * @param {String} [options.keyField=this.keyPath] Specifies a field in the record to update
     *  with the auto-incrementing key. Defaults to the store's keyPath.
     * @param {Function} [onSuccess] A callback that is called if all operations
     *  were successful.
     * @param {Function} [onError] A callback that is called if an error
     *  occurred during one of the operations.
     * @returns {IDBTransaction} The transaction used for this operation.
     *
     */
    upsertBatch: function (dataArray, options, onSuccess, onError) {
      // handle `dataArray, onSuccess, onError` signature
      if (typeof options == 'function') {
        onSuccess = options;
        onError = onSuccess;
        options = {};
      }

      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);
      options || (options = {});

      if (Object.prototype.toString.call(dataArray) != '[object Array]') {
        onError(new Error('dataArray argument must be of type Array.'));
      }
      var batchTransaction = this.db.transaction([this.storeName], this.consts.READ_WRITE);
      batchTransaction.oncomplete = function () {
        if (hasSuccess) {
          onSuccess(dataArray);
        } else {
          onError(false);
        }
      };
      batchTransaction.onabort = onError;
      batchTransaction.onerror = onError;

      var keyField = options.keyField || this.keyPath;
      var count = dataArray.length;
      var called = false;
      var hasSuccess = false;
      var index = 0; // assume success callbacks are executed in order

      var onItemSuccess = function (event) {
        var record = dataArray[index++];
        record[keyField] = event.target.result;

        count--;
        if (count === 0 && !called) {
          called = true;
          hasSuccess = true;
        }
      };

      dataArray.forEach(function (record) {
        var key = record.key;

        var onItemError = function (err) {
          batchTransaction.abort();
          if (!called) {
            called = true;
            onError(err);
          }
        };

        var putRequest;
        if (this.keyPath !== null) { // in-line keys
          this._addIdPropertyIfNeeded(record);
          putRequest = batchTransaction.objectStore(this.storeName).put(record);
        } else { // out-of-line keys
          putRequest = batchTransaction.objectStore(this.storeName).put(record, key);
        }
        putRequest.onsuccess = onItemSuccess;
        putRequest.onerror = onItemError;
      }, this);

      return batchTransaction;
    },

    /**
     * Takes an array of keys and removes matching objects in a single
     * transaction.
     *
     * @param {Array} keyArray An array of keys to remove
     * @param {Function} [onSuccess] A callback that is called if all operations
     *  were successful.
     * @param {Function} [onError] A callback that is called if an error
     *  occurred during one of the operations.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    removeBatch: function (keyArray, onSuccess, onError) {
      var batchData = keyArray.map(function(key){
        return { type: 'remove', key: key };
      });

      return this.batch(batchData, onSuccess, onError);
    },

    /**
     * Takes an array of keys and fetches matching objects
     *
     * @param {Array} keyArray An array of keys identifying the objects to fetch
     * @param {Function} [onSuccess] A callback that is called if all operations
     *  were successful.
     * @param {Function} [onError] A callback that is called if an error
     *  occurred during one of the operations.
     * @param {String} [arrayType='sparse'] The type of array to pass to the
     *  success handler. May be one of 'sparse', 'dense' or 'skip'. Defaults to
     *  'sparse'. This parameter specifies how to handle the situation if a get
     *  operation did not throw an error, but there was no matching object in
     *  the database. In most cases, 'sparse' provides the most desired
     *  behavior. See the examples for details.
     * @returns {IDBTransaction} The transaction used for this operation.
     * @example
     // given that there are two objects in the database with the keypath
     // values 1 and 2, and the call looks like this:
     myStore.getBatch([1, 5, 2], onError, function (data) { … }, arrayType);

     // this is what the `data` array will be like:

     // arrayType == 'sparse':
     // data is a sparse array containing two entries and having a length of 3:
       [Object, 2: Object]
         0: Object
         2: Object
         length: 3
         __proto__: Array[0]
     // calling forEach on data will result in the callback being called two
     // times, with the index parameter matching the index of the key in the
     // keyArray.

     // arrayType == 'dense':
     // data is a dense array containing three entries and having a length of 3,
     // where data[1] is of type undefined:
       [Object, undefined, Object]
         0: Object
         1: undefined
         2: Object
         length: 3
         __proto__: Array[0]
     // calling forEach on data will result in the callback being called three
     // times, with the index parameter matching the index of the key in the
     // keyArray, but the second call will have undefined as first argument.

     // arrayType == 'skip':
     // data is a dense array containing two entries and having a length of 2:
       [Object, Object]
         0: Object
         1: Object
         length: 2
         __proto__: Array[0]
     // calling forEach on data will result in the callback being called two
     // times, with the index parameter not matching the index of the key in the
     // keyArray.
     */
    getBatch: function (keyArray, onSuccess, onError, arrayType) {
      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);
      arrayType || (arrayType = 'sparse');

      if (Object.prototype.toString.call(keyArray) != '[object Array]'){
        onError(new Error('keyArray argument must be of type Array.'));
      } else if (keyArray.length === 0) {
        return onSuccess([]);
      }
      var batchTransaction = this.db.transaction([this.storeName] , this.consts.READ_ONLY);
      batchTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      batchTransaction.onabort = onError;
      batchTransaction.onerror = onError;

      var data = [];
      var count = keyArray.length;
      var called = false;
      var hasSuccess = false;
      var result = null;

      var onItemSuccess = function (event) {
        if (event.target.result || arrayType == 'dense') {
          data.push(event.target.result);
        } else if (arrayType == 'sparse') {
          data.length++;
        }
        count--;
        if (count === 0) {
          called = true;
          hasSuccess = true;
          result = data;
        }
      };

      keyArray.forEach(function (key) {

        var onItemError = function (err) {
          called = true;
          result = err;
          onError(err);
          batchTransaction.abort();
        };

        var getRequest = batchTransaction.objectStore(this.storeName).get(key);
        getRequest.onsuccess = onItemSuccess;
        getRequest.onerror = onItemError;

      }, this);

      return batchTransaction;
    },

    /**
     * Fetches all entries in the store.
     *
     * @param {Function} [onSuccess] A callback that is called if the operation
     *  was successful. Will receive an array of objects.
     * @param {Function} [onError] A callback that will be called if an error
     *  occurred during the operation.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    getAll: function (onSuccess, onError) {
      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);
      var getAllTransaction = this.db.transaction([this.storeName], this.consts.READ_ONLY);
      var store = getAllTransaction.objectStore(this.storeName);
      if (store.getAll) {
        this._getAllNative(getAllTransaction, store, onSuccess, onError);
      } else {
        this._getAllCursor(getAllTransaction, store, onSuccess, onError);
      }

      return getAllTransaction;
    },

    /**
     * Implements getAll for IDB implementations that have a non-standard
     * getAll() method.
     *
     * @param {Object} getAllTransaction An open READ transaction.
     * @param {Object} store A reference to the store.
     * @param {Function} onSuccess A callback that will be called if the
     *  operation was successful.
     * @param {Function} onError A callback that will be called if an
     *  error occurred during the operation.
     * @private
     */
    _getAllNative: function (getAllTransaction, store, onSuccess, onError) {
      var hasSuccess = false,
          result = null;

      getAllTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      getAllTransaction.onabort = onError;
      getAllTransaction.onerror = onError;

      var getAllRequest = store.getAll();
      getAllRequest.onsuccess = function (event) {
        hasSuccess = true;
        result = event.target.result;
      };
      getAllRequest.onerror = onError;
    },

    /**
     * Implements getAll for IDB implementations that do not have a getAll()
     * method.
     *
     * @param {Object} getAllTransaction An open READ transaction.
     * @param {Object} store A reference to the store.
     * @param {Function} onSuccess A callback that will be called if the
     *  operation was successful.
     * @param {Function} onError A callback that will be called if an
     *  error occurred during the operation.
     * @private
     */
    _getAllCursor: function (getAllTransaction, store, onSuccess, onError) {
      var all = [],
          hasSuccess = false,
          result = null;

      getAllTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      getAllTransaction.onabort = onError;
      getAllTransaction.onerror = onError;

      var cursorRequest = store.openCursor();
      cursorRequest.onsuccess = function (event) {
        var cursor = event.target.result;
        if (cursor) {
          all.push(cursor.value);
          cursor['continue']();
        }
        else {
          hasSuccess = true;
          result = all;
        }
      };
      cursorRequest.onError = onError;
    },

    /**
     * Clears the store, i.e. deletes all entries in the store.
     *
     * @param {Function} [onSuccess] A callback that will be called if the
     *  operation was successful.
     * @param {Function} [onError] A callback that will be called if an
     *  error occurred during the operation.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    clear: function (onSuccess, onError) {
      onError || (onError = defaultErrorHandler);
      onSuccess || (onSuccess = defaultSuccessHandler);

      var hasSuccess = false,
          result = null;

      var clearTransaction = this.db.transaction([this.storeName], this.consts.READ_WRITE);
      clearTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      clearTransaction.onabort = onError;
      clearTransaction.onerror = onError;

      var clearRequest = clearTransaction.objectStore(this.storeName).clear();
      clearRequest.onsuccess = function (event) {
        hasSuccess = true;
        result = event.target.result;
      };
      clearRequest.onerror = onError;

      return clearTransaction;
    },

    /**
     * Checks if an id property needs to present on a object and adds one if
     * necessary.
     *
     * @param {Object} dataObj The data object that is about to be stored
     * @private
     */
    _addIdPropertyIfNeeded: function (dataObj) {
      if (typeof dataObj[this.keyPath] == 'undefined') {
        dataObj[this.keyPath] = this._insertIdCount++ + Date.now();
      }
    },

    /************
     * indexing *
     ************/

    /**
     * Returns a DOMStringList of index names of the store.
     *
     * @return {DOMStringList} The list of index names
     */
    getIndexList: function () {
      return this.store.indexNames;
    },

    /**
     * Checks if an index with the given name exists in the store.
     *
     * @param {String} indexName The name of the index to look for
     * @return {Boolean} Whether the store contains an index with the given name
     */
    hasIndex: function (indexName) {
      return this.store.indexNames.contains(indexName);
    },

    /**
     * Normalizes an object containing index data and assures that all
     * properties are set.
     *
     * @param {Object} indexData The index data object to normalize
     * @param {String} indexData.name The name of the index
     * @param {String} [indexData.keyPath] The key path of the index
     * @param {Boolean} [indexData.unique] Whether the index is unique
     * @param {Boolean} [indexData.multiEntry] Whether the index is multi entry
     */
    normalizeIndexData: function (indexData) {
      indexData.keyPath = indexData.keyPath || indexData.name;
      indexData.unique = !!indexData.unique;
      indexData.multiEntry = !!indexData.multiEntry;
    },

    /**
     * Checks if an actual index complies with an expected index.
     *
     * @param {Object} actual The actual index found in the store
     * @param {Object} expected An Object describing an expected index
     * @return {Boolean} Whether both index definitions are identical
     */
    indexComplies: function (actual, expected) {
      var complies = ['keyPath', 'unique', 'multiEntry'].every(function (key) {
        // IE10 returns undefined for no multiEntry
        if (key == 'multiEntry' && actual[key] === undefined && expected[key] === false) {
          return true;
        }
        // Compound keys
        if (key == 'keyPath' && Object.prototype.toString.call(expected[key]) == '[object Array]') {
          var exp = expected.keyPath;
          var act = actual.keyPath;

          // IE10 can't handle keyPath sequences and stores them as a string.
          // The index will be unusable there, but let's still return true if
          // the keyPath sequence matches.
          if (typeof act == 'string') {
            return exp.toString() == act;
          }

          // Chrome/Opera stores keyPath squences as DOMStringList, Firefox
          // as Array
          if ( ! (typeof act.contains == 'function' || typeof act.indexOf == 'function') ) {
            return false;
          }

          if (act.length !== exp.length) {
            return false;
          }

          for (var i = 0, m = exp.length; i<m; i++) {
            if ( ! ( (act.contains && act.contains(exp[i])) || act.indexOf(exp[i] !== -1) )) {
              return false;
            }
          }
          return true;
        }
        return expected[key] == actual[key];
      });
      return complies;
    },

    /**********
     * cursor *
     **********/

    /**
     * Iterates over the store using the given options and calling onItem
     * for each entry matching the options.
     *
     * @param {Function} onItem A callback to be called for each match
     * @param {Object} [options] An object defining specific options
     * @param {Object} [options.index=null] An IDBIndex to operate on
     * @param {String} [options.order=ASC] The order in which to provide the
     *  results, can be 'DESC' or 'ASC'
     * @param {Boolean} [options.autoContinue=true] Whether to automatically
     *  iterate the cursor to the next result
     * @param {Boolean} [options.filterDuplicates=false] Whether to exclude
     *  duplicate matches
     * @param {Object} [options.keyRange=null] An IDBKeyRange to use
     * @param {Boolean} [options.writeAccess=false] Whether grant write access
     *  to the store in the onItem callback
     * @param {Function} [options.onEnd=null] A callback to be called after
     *  iteration has ended
     * @param {Function} [options.onError=throw] A callback to be called
     *  if an error occurred during the operation.
     * @param {Number} [options.limit=Infinity] Limit the number of returned
     *  results to this number
     * @param {Number} [options.offset=0] Skip the provided number of results
     *  in the resultset
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    iterate: function (onItem, options) {
      options = mixin({
        index: null,
        order: 'ASC',
        autoContinue: true,
        filterDuplicates: false,
        keyRange: null,
        writeAccess: false,
        onEnd: null,
        onError: defaultErrorHandler,
        limit: Infinity,
        offset: 0
      }, options || {});

      var directionType = options.order.toLowerCase() == 'desc' ? 'PREV' : 'NEXT';
      if (options.filterDuplicates) {
        directionType += '_NO_DUPLICATE';
      }

      var hasSuccess = false;
      var cursorTransaction = this.db.transaction([this.storeName], this.consts[options.writeAccess ? 'READ_WRITE' : 'READ_ONLY']);
      var cursorTarget = cursorTransaction.objectStore(this.storeName);
      if (options.index) {
        cursorTarget = cursorTarget.index(options.index);
      }
      var recordCount = 0;

      cursorTransaction.oncomplete = function () {
        if (!hasSuccess) {
          options.onError(null);
          return;
        }
        if (options.onEnd) {
          options.onEnd();
        } else {
          onItem(null);
        }
      };
      cursorTransaction.onabort = options.onError;
      cursorTransaction.onerror = options.onError;

      var cursorRequest = cursorTarget.openCursor(options.keyRange, this.consts[directionType]);
      cursorRequest.onerror = options.onError;
      cursorRequest.onsuccess = function (event) {
        var cursor = event.target.result;
        if (cursor) {
          if (options.offset) {
            cursor.advance(options.offset);
            options.offset = 0;
          } else {
            onItem(cursor.value, cursor, cursorTransaction);
            recordCount++;
            if (options.autoContinue) {
              if (recordCount + options.offset < options.limit) {
                cursor['continue']();
              } else {
                hasSuccess = true;
              }
            }
          }
        } else {
          hasSuccess = true;
        }
      };

      return cursorTransaction;
    },

    /**
     * Runs a query against the store and passes an array containing matched
     * objects to the success handler.
     *
     * @param {Function} onSuccess A callback to be called when the operation
     *  was successful.
     * @param {Object} [options] An object defining specific options
     * @param {Object} [options.index=null] An IDBIndex to operate on
     * @param {String} [options.order=ASC] The order in which to provide the
     *  results, can be 'DESC' or 'ASC'
     * @param {Boolean} [options.filterDuplicates=false] Whether to exclude
     *  duplicate matches
     * @param {Object} [options.keyRange=null] An IDBKeyRange to use
     * @param {Function} [options.onError=throw] A callback to be called
     *  if an error occurred during the operation.
     * @param {Number} [options.limit=Infinity] Limit the number of returned
     *  results to this number
     * @param {Number} [options.offset=0] Skip the provided number of results
     *  in the resultset
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    query: function (onSuccess, options) {
      var result = [];
      options = options || {};
      options.autoContinue = true;
      options.writeAccess = false;
      options.onEnd = function () {
        onSuccess(result);
      };
      return this.iterate(function (item) {
        result.push(item);
      }, options);
    },

    /**
     *
     * Runs a query against the store, but only returns the number of matches
     * instead of the matches itself.
     *
     * @param {Function} onSuccess A callback to be called if the opration
     *  was successful.
     * @param {Object} [options] An object defining specific options
     * @param {Object} [options.index=null] An IDBIndex to operate on
     * @param {Object} [options.keyRange=null] An IDBKeyRange to use
     * @param {Function} [options.onError=throw] A callback to be called if an error
     *  occurred during the operation.
     * @returns {IDBTransaction} The transaction used for this operation.
     */
    count: function (onSuccess, options) {

      options = mixin({
        index: null,
        keyRange: null
      }, options || {});

      var onError = options.onError || defaultErrorHandler;

      var hasSuccess = false,
          result = null;

      var cursorTransaction = this.db.transaction([this.storeName], this.consts.READ_ONLY);
      cursorTransaction.oncomplete = function () {
        var callback = hasSuccess ? onSuccess : onError;
        callback(result);
      };
      cursorTransaction.onabort = onError;
      cursorTransaction.onerror = onError;

      var cursorTarget = cursorTransaction.objectStore(this.storeName);
      if (options.index) {
        cursorTarget = cursorTarget.index(options.index);
      }
      var countRequest = cursorTarget.count(options.keyRange);
      countRequest.onsuccess = function (evt) {
        hasSuccess = true;
        result = evt.target.result;
      };
      countRequest.onError = onError;

      return cursorTransaction;
    },

    /**************/
    /* key ranges */
    /**************/

    /**
     * Creates a key range using specified options. This key range can be
     * handed over to the count() and iterate() methods.
     *
     * Note: You must provide at least one or both of "lower" or "upper" value.
     *
     * @param {Object} options The options for the key range to create
     * @param {*} [options.lower] The lower bound
     * @param {Boolean} [options.excludeLower] Whether to exclude the lower
     *  bound passed in options.lower from the key range
     * @param {*} [options.upper] The upper bound
     * @param {Boolean} [options.excludeUpper] Whether to exclude the upper
     *  bound passed in options.upper from the key range
     * @param {*} [options.only] A single key value. Use this if you need a key
     *  range that only includes one value for a key. Providing this
     *  property invalidates all other properties.
     * @return {Object} The IDBKeyRange representing the specified options
     */
    makeKeyRange: function(options){
      /*jshint onecase:true */
      var keyRange,
          hasLower = typeof options.lower != 'undefined',
          hasUpper = typeof options.upper != 'undefined',
          isOnly = typeof options.only != 'undefined';

      switch(true){
        case isOnly:
          keyRange = this.keyRange.only(options.only);
          break;
        case hasLower && hasUpper:
          keyRange = this.keyRange.bound(options.lower, options.upper, options.excludeLower, options.excludeUpper);
          break;
        case hasLower:
          keyRange = this.keyRange.lowerBound(options.lower, options.excludeLower);
          break;
        case hasUpper:
          keyRange = this.keyRange.upperBound(options.upper, options.excludeUpper);
          break;
        default:
          throw new Error('Cannot create KeyRange. Provide one or both of "lower" or "upper" value, or an "only" value.');
      }

      return keyRange;

    }

  };

  /** helpers **/
  var empty = {};
  var mixin = function (target, source) {
    var name, s;
    for (name in source) {
      s = source[name];
      if (s !== empty[name] && s !== target[name]) {
        target[name] = s;
      }
    }
    return target;
  };

  IDBStore.version = IDBStore.prototype.version;

  return IDBStore;

}, this);

},{}],9:[function(require,module,exports){
exports.read = function (buffer, offset, isLE, mLen, nBytes) {
  var e, m
  var eLen = nBytes * 8 - mLen - 1
  var eMax = (1 << eLen) - 1
  var eBias = eMax >> 1
  var nBits = -7
  var i = isLE ? (nBytes - 1) : 0
  var d = isLE ? -1 : 1
  var s = buffer[offset + i]

  i += d

  e = s & ((1 << (-nBits)) - 1)
  s >>= (-nBits)
  nBits += eLen
  for (; nBits > 0; e = e * 256 + buffer[offset + i], i += d, nBits -= 8) {}

  m = e & ((1 << (-nBits)) - 1)
  e >>= (-nBits)
  nBits += mLen
  for (; nBits > 0; m = m * 256 + buffer[offset + i], i += d, nBits -= 8) {}

  if (e === 0) {
    e = 1 - eBias
  } else if (e === eMax) {
    return m ? NaN : ((s ? -1 : 1) * Infinity)
  } else {
    m = m + Math.pow(2, mLen)
    e = e - eBias
  }
  return (s ? -1 : 1) * m * Math.pow(2, e - mLen)
}

exports.write = function (buffer, value, offset, isLE, mLen, nBytes) {
  var e, m, c
  var eLen = nBytes * 8 - mLen - 1
  var eMax = (1 << eLen) - 1
  var eBias = eMax >> 1
  var rt = (mLen === 23 ? Math.pow(2, -24) - Math.pow(2, -77) : 0)
  var i = isLE ? 0 : (nBytes - 1)
  var d = isLE ? 1 : -1
  var s = value < 0 || (value === 0 && 1 / value < 0) ? 1 : 0

  value = Math.abs(value)

  if (isNaN(value) || value === Infinity) {
    m = isNaN(value) ? 1 : 0
    e = eMax
  } else {
    e = Math.floor(Math.log(value) / Math.LN2)
    if (value * (c = Math.pow(2, -e)) < 1) {
      e--
      c *= 2
    }
    if (e + eBias >= 1) {
      value += rt / c
    } else {
      value += rt * Math.pow(2, 1 - eBias)
    }
    if (value * c >= 2) {
      e++
      c /= 2
    }

    if (e + eBias >= eMax) {
      m = 0
      e = eMax
    } else if (e + eBias >= 1) {
      m = (value * c - 1) * Math.pow(2, mLen)
      e = e + eBias
    } else {
      m = value * Math.pow(2, eBias - 1) * Math.pow(2, mLen)
      e = 0
    }
  }

  for (; mLen >= 8; buffer[offset + i] = m & 0xff, i += d, m /= 256, mLen -= 8) {}

  e = (e << mLen) | m
  eLen += mLen
  for (; eLen > 0; buffer[offset + i] = e & 0xff, i += d, e /= 256, eLen -= 8) {}

  buffer[offset + i - d] |= s * 128
}

},{}],10:[function(require,module,exports){
if (typeof Object.create === 'function') {
  // implementation from standard node.js 'util' module
  module.exports = function inherits(ctor, superCtor) {
    ctor.super_ = superCtor
    ctor.prototype = Object.create(superCtor.prototype, {
      constructor: {
        value: ctor,
        enumerable: false,
        writable: true,
        configurable: true
      }
    });
  };
} else {
  // old school shim for old browsers
  module.exports = function inherits(ctor, superCtor) {
    ctor.super_ = superCtor
    var TempCtor = function () {}
    TempCtor.prototype = superCtor.prototype
    ctor.prototype = new TempCtor()
    ctor.prototype.constructor = ctor
  }
}

},{}],11:[function(require,module,exports){

/**
 * isArray
 */

var isArray = Array.isArray;

/**
 * toString
 */

var str = Object.prototype.toString;

/**
 * Whether or not the given `val`
 * is an array.
 *
 * example:
 *
 *        isArray([]);
 *        // > true
 *        isArray(arguments);
 *        // > false
 *        isArray('');
 *        // > false
 *
 * @param {mixed} val
 * @return {bool}
 */

module.exports = isArray || function (val) {
  return !! val && '[object Array]' == str.call(val);
};

},{}],12:[function(require,module,exports){
/**
 * Determine if an object is Buffer
 *
 * Author:   Feross Aboukhadijeh <feross@feross.org> <http://feross.org>
 * License:  MIT
 *
 * `npm install is-buffer`
 */

module.exports = function (obj) {
  return !!(obj != null &&
    (obj._isBuffer || // For Safari 5-7 (missing Object.prototype.constructor)
      (obj.constructor &&
      typeof obj.constructor.isBuffer === 'function' &&
      obj.constructor.isBuffer(obj))
    ))
}

},{}],13:[function(require,module,exports){
var Buffer = require('buffer').Buffer;

module.exports = isBuffer;

function isBuffer (o) {
  return Buffer.isBuffer(o)
    || /\[object (.+Array|Array.+)\]/.test(Object.prototype.toString.call(o));
}

},{"buffer":7}],14:[function(require,module,exports){
(function (Buffer){
module.exports = Level

var IDB = require('idb-wrapper')
var AbstractLevelDOWN = require('abstract-leveldown').AbstractLevelDOWN
var util = require('util')
var Iterator = require('./iterator')
var isBuffer = require('isbuffer')
var xtend = require('xtend')
var toBuffer = require('typedarray-to-buffer')

function Level(location) {
  if (!(this instanceof Level)) return new Level(location)
  if (!location) throw new Error("constructor requires at least a location argument")
  this.IDBOptions = {}
  this.location = location
}

util.inherits(Level, AbstractLevelDOWN)

Level.prototype._open = function(options, callback) {
  var self = this

  var idbOpts = {
    storeName: this.location,
    autoIncrement: false,
    keyPath: null,
    onStoreReady: function () {
      callback && callback(null, self.idb)
    },
    onError: function(err) {
      callback && callback(err)
    }
  }

  xtend(idbOpts, options)
  this.IDBOptions = idbOpts
  this.idb = new IDB(idbOpts)
}

Level.prototype._get = function (key, options, callback) {
  this.idb.get(key, function (value) {
    if (value === undefined) {
      // 'NotFound' error, consistent with LevelDOWN API
      return callback(new Error('NotFound'))
    }
    // by default return buffers, unless explicitly told not to
    var asBuffer = true
    if (options.asBuffer === false) asBuffer = false
    if (options.raw) asBuffer = false
    if (asBuffer) {
      if (value instanceof Uint8Array) value = toBuffer(value)
      else value = new Buffer(String(value))
    }
    return callback(null, value, key)
  }, callback)
}

Level.prototype._del = function(id, options, callback) {
  this.idb.remove(id, callback, callback)
}

Level.prototype._put = function (key, value, options, callback) {
  if (value instanceof ArrayBuffer) {
    value = toBuffer(new Uint8Array(value))
  }
  var obj = this.convertEncoding(key, value, options)
  if (Buffer.isBuffer(obj.value)) {
    obj.value = new Uint8Array(value.toArrayBuffer())
  }
  this.idb.put(obj.key, obj.value, function() { callback() }, callback)
}

Level.prototype.convertEncoding = function(key, value, options) {
  if (options.raw) return {key: key, value: value}
  if (value) {
    var stringed = value.toString()
    if (stringed === 'NaN') value = 'NaN'
  }
  var valEnc = options.valueEncoding
  var obj = {key: key, value: value}
  if (value && (!valEnc || valEnc !== 'binary')) {
    if (typeof obj.value !== 'object') {
      obj.value = stringed
    }
  }
  return obj
}

Level.prototype.iterator = function (options) {
  if (typeof options !== 'object') options = {}
  return new Iterator(this.idb, options)
}

Level.prototype._batch = function (array, options, callback) {
  var op
  var i
  var k
  var copiedOp
  var currentOp
  var modified = []

  if (array.length === 0) return setTimeout(callback, 0)

  for (i = 0; i < array.length; i++) {
    copiedOp = {}
    currentOp = array[i]
    modified[i] = copiedOp

    var converted = this.convertEncoding(currentOp.key, currentOp.value, options)
    currentOp.key = converted.key
    currentOp.value = converted.value

    for (k in currentOp) {
      if (k === 'type' && currentOp[k] == 'del') {
        copiedOp[k] = 'remove'
      } else {
        copiedOp[k] = currentOp[k]
      }
    }
  }

  return this.idb.batch(modified, function(){ callback() }, callback)
}

Level.prototype._close = function (callback) {
  this.idb.db.close()
  callback()
}

Level.prototype._approximateSize = function (start, end, callback) {
  var err = new Error('Not implemented')
  if (callback)
    return callback(err)

  throw err
}

Level.prototype._isBuffer = function (obj) {
  return Buffer.isBuffer(obj)
}

Level.destroy = function (db, callback) {
  if (typeof db === 'object') {
    var prefix = db.IDBOptions.storePrefix || 'IDBWrapper-'
    var dbname = db.location
  } else {
    var prefix = 'IDBWrapper-'
    var dbname = db
  }
  var request = indexedDB.deleteDatabase(prefix + dbname)
  request.onsuccess = function() {
    callback()
  }
  request.onerror = function(err) {
    callback(err)
  }
}

var checkKeyValue = Level.prototype._checkKeyValue = function (obj, type) {
  if (obj === null || obj === undefined)
    return new Error(type + ' cannot be `null` or `undefined`')
  if (obj === null || obj === undefined)
    return new Error(type + ' cannot be `null` or `undefined`')
  if (isBuffer(obj) && obj.byteLength === 0)
    return new Error(type + ' cannot be an empty ArrayBuffer')
  if (String(obj) === '')
    return new Error(type + ' cannot be an empty String')
  if (obj.length === 0)
    return new Error(type + ' cannot be an empty Array')
}

}).call(this,require("buffer").Buffer)
},{"./iterator":15,"abstract-leveldown":4,"buffer":7,"idb-wrapper":8,"isbuffer":13,"typedarray-to-buffer":24,"util":26,"xtend":21}],15:[function(require,module,exports){
var util = require('util')
var AbstractIterator  = require('abstract-leveldown').AbstractIterator
var ltgt = require('ltgt')

module.exports = Iterator

function Iterator (db, options) {
  if (!options) options = {}
  this.options = options
  AbstractIterator.call(this, db)
  this._order = options.reverse ? 'DESC': 'ASC'
  this._limit = options.limit
  this._count = 0
  this._done  = false
  var lower = ltgt.lowerBound(options)
  var upper = ltgt.upperBound(options)
  try {
    this._keyRange = lower || upper ? this.db.makeKeyRange({
      lower: lower,
      upper: upper,
      excludeLower: ltgt.lowerBoundExclusive(options),
      excludeUpper: ltgt.upperBoundExclusive(options)
    }) : null
  } catch (e) {
    // The lower key is greater than the upper key.
    // IndexedDB throws an error, but we'll just return 0 results.
    this._keyRangeError = true
  }
  this.callback = null
}

util.inherits(Iterator, AbstractIterator)

Iterator.prototype.createIterator = function() {
  var self = this

  self.iterator = self.db.iterate(function () {
    self.onItem.apply(self, arguments)
  }, {
    keyRange: self._keyRange,
    autoContinue: false,
    order: self._order,
    onError: function(err) { console.log('horrible error', err) },
  })
}

// TODO the limit implementation here just ignores all reads after limit has been reached
// it should cancel the iterator instead but I don't know how
Iterator.prototype.onItem = function (value, cursor, cursorTransaction) {
  if (!cursor && this.callback) {
    this.callback()
    this.callback = false
    return
  }
  var shouldCall = true

  if (!!this._limit && this._limit > 0 && this._count++ >= this._limit)
    shouldCall = false

  if (shouldCall) this.callback(false, cursor.key, cursor.value)
  if (cursor) cursor['continue']()
}

Iterator.prototype._next = function (callback) {
  if (!callback) return new Error('next() requires a callback argument')
  if (this._keyRangeError) return callback()
  if (!this._started) {
    this.createIterator()
    this._started = true
  }
  this.callback = callback
}

},{"abstract-leveldown":4,"ltgt":22,"util":26}],16:[function(require,module,exports){
var hasOwn = Object.prototype.hasOwnProperty;
var toString = Object.prototype.toString;

var isFunction = function (fn) {
	var isFunc = (typeof fn === 'function' && !(fn instanceof RegExp)) || toString.call(fn) === '[object Function]';
	if (!isFunc && typeof window !== 'undefined') {
		isFunc = fn === window.setTimeout || fn === window.alert || fn === window.confirm || fn === window.prompt;
	}
	return isFunc;
};

module.exports = function forEach(obj, fn) {
	if (!isFunction(fn)) {
		throw new TypeError('iterator must be a function');
	}
	var i, k,
		isString = typeof obj === 'string',
		l = obj.length,
		context = arguments.length > 2 ? arguments[2] : null;
	if (l === +l) {
		for (i = 0; i < l; i++) {
			if (context === null) {
				fn(isString ? obj.charAt(i) : obj[i], i, obj);
			} else {
				fn.call(context, isString ? obj.charAt(i) : obj[i], i, obj);
			}
		}
	} else {
		for (k in obj) {
			if (hasOwn.call(obj, k)) {
				if (context === null) {
					fn(obj[k], k, obj);
				} else {
					fn.call(context, obj[k], k, obj);
				}
			}
		}
	}
};


},{}],17:[function(require,module,exports){
module.exports = Object.keys || require('./shim');


},{"./shim":19}],18:[function(require,module,exports){
var toString = Object.prototype.toString;

module.exports = function isArguments(value) {
	var str = toString.call(value);
	var isArguments = str === '[object Arguments]';
	if (!isArguments) {
		isArguments = str !== '[object Array]'
			&& value !== null
			&& typeof value === 'object'
			&& typeof value.length === 'number'
			&& value.length >= 0
			&& toString.call(value.callee) === '[object Function]';
	}
	return isArguments;
};


},{}],19:[function(require,module,exports){
(function () {
	"use strict";

	// modified from https://github.com/kriskowal/es5-shim
	var has = Object.prototype.hasOwnProperty,
		toString = Object.prototype.toString,
		forEach = require('./foreach'),
		isArgs = require('./isArguments'),
		hasDontEnumBug = !({'toString': null}).propertyIsEnumerable('toString'),
		hasProtoEnumBug = (function () {}).propertyIsEnumerable('prototype'),
		dontEnums = [
			"toString",
			"toLocaleString",
			"valueOf",
			"hasOwnProperty",
			"isPrototypeOf",
			"propertyIsEnumerable",
			"constructor"
		],
		keysShim;

	keysShim = function keys(object) {
		var isObject = object !== null && typeof object === 'object',
			isFunction = toString.call(object) === '[object Function]',
			isArguments = isArgs(object),
			theKeys = [];

		if (!isObject && !isFunction && !isArguments) {
			throw new TypeError("Object.keys called on a non-object");
		}

		if (isArguments) {
			forEach(object, function (value) {
				theKeys.push(value);
			});
		} else {
			var name,
				skipProto = hasProtoEnumBug && isFunction;

			for (name in object) {
				if (!(skipProto && name === 'prototype') && has.call(object, name)) {
					theKeys.push(name);
				}
			}
		}

		if (hasDontEnumBug) {
			var ctor = object.constructor,
				skipConstructor = ctor && ctor.prototype === object;

			forEach(dontEnums, function (dontEnum) {
				if (!(skipConstructor && dontEnum === 'constructor') && has.call(object, dontEnum)) {
					theKeys.push(dontEnum);
				}
			});
		}
		return theKeys;
	};

	module.exports = keysShim;
}());


},{"./foreach":16,"./isArguments":18}],20:[function(require,module,exports){
module.exports = hasKeys

function hasKeys(source) {
    return source !== null &&
        (typeof source === "object" ||
        typeof source === "function")
}

},{}],21:[function(require,module,exports){
var Keys = require("object-keys")
var hasKeys = require("./has-keys")

module.exports = extend

function extend() {
    var target = {}

    for (var i = 0; i < arguments.length; i++) {
        var source = arguments[i]

        if (!hasKeys(source)) {
            continue
        }

        var keys = Keys(source)

        for (var j = 0; j < keys.length; j++) {
            var name = keys[j]
            target[name] = source[name]
        }
    }

    return target
}

},{"./has-keys":20,"object-keys":17}],22:[function(require,module,exports){
(function (Buffer){

exports.compare = function (a, b) {

  if(Buffer.isBuffer(a)) {
    var l = Math.min(a.length, b.length)
    for(var i = 0; i < l; i++) {
      var cmp = a[i] - b[i]
      if(cmp) return cmp
    }
    return a.length - b.length
  }

  return a < b ? -1 : a > b ? 1 : 0
}

function has(obj, key) {
  return Object.hasOwnProperty.call(obj, key)
}

// to be compatible with the current abstract-leveldown tests
// nullish or empty strings.
// I could use !!val but I want to permit numbers and booleans,
// if possible.

function isDef (val) {
  return val !== undefined && val !== ''
}

function has (range, name) {
  return Object.hasOwnProperty.call(range, name)
}

function hasKey(range, name) {
  return Object.hasOwnProperty.call(range, name) && name
}

var lowerBoundKey = exports.lowerBoundKey = function (range) {
    return (
       hasKey(range, 'gt')
    || hasKey(range, 'gte')
    || hasKey(range, 'min')
    || (range.reverse ? hasKey(range, 'end') : hasKey(range, 'start'))
    || undefined
    )
}

var lowerBound = exports.lowerBound = function (range) {
  var k = lowerBoundKey(range)
  return k && range[k]
}

exports.lowerBoundInclusive = function (range) {
  return has(range, 'gt') ? false : true
}

exports.upperBoundInclusive =
  function (range) {
    return has(range, 'lt') || !range.minEx ? false : true
  }

var lowerBoundExclusive = exports.lowerBoundExclusive =
  function (range) {
    return has(range, 'gt') || range.minEx ? true : false
  }

var upperBoundExclusive = exports.upperBoundExclusive =
  function (range) {
    return has(range, 'lt') ? true : false
  }

var upperBoundKey = exports.upperBoundKey = function (range) {
    return (
       hasKey(range, 'lt')
    || hasKey(range, 'lte')
    || hasKey(range, 'max')
    || (range.reverse ? hasKey(range, 'start') : hasKey(range, 'end'))
    || undefined
    )
}

var upperBound = exports.upperBound = function (range) {
  var k = upperBoundKey(range)
  return k && range[k]
}

function id (e) { return e }

exports.toLtgt = function (range, _range, map, lower, upper) {
  _range = _range || {}
  map = map || id
  var defaults = arguments.length > 3
  var lb = exports.lowerBoundKey(range)
  var ub = exports.upperBoundKey(range)
  if(lb) {
    if(lb === 'gt') _range.gt = map(range.gt, false)
    else            _range.gte = map(range[lb], false)
  }
  else if(defaults)
    _range.gte = map(lower, false)

  if(ub) {
    if(ub === 'lt') _range.lt = map(range.lt, true)
    else            _range.lte = map(range[ub], true)
  }
  else if(defaults)
    _range.lte = map(upper, true)

  if(range.reverse != null)
    _range.reverse = !!range.reverse

  //if range was used mutably
  //(in level-sublevel it's part of an options object
  //that has more properties on it.)
  if(has(_range, 'max'))   delete _range.max
  if(has(_range, 'min'))   delete _range.min
  if(has(_range, 'start')) delete _range.start
  if(has(_range, 'end'))   delete _range.end

  return _range
}

exports.contains = function (range, key, compare) {
  compare = compare || exports.compare

  var lb = lowerBound(range)
  if(isDef(lb)) {
    var cmp = compare(key, lb)
    if(cmp < 0 || (cmp === 0 && lowerBoundExclusive(range)))
      return false
  }

  var ub = upperBound(range)
  if(isDef(ub)) {
    var cmp = compare(key, ub)
    if(cmp > 0 || (cmp === 0) && upperBoundExclusive(range))
      return false
  }

  return true
}

exports.filter = function (range, compare) {
  return function (key) {
    return exports.contains(range, key, compare)
  }
}

}).call(this,{"isBuffer":require("../is-buffer/index.js")})
},{"../is-buffer/index.js":12}],23:[function(require,module,exports){
// shim for using process in browser

var process = module.exports = {};
var queue = [];
var draining = false;
var currentQueue;
var queueIndex = -1;

function cleanUpNextTick() {
    draining = false;
    if (currentQueue.length) {
        queue = currentQueue.concat(queue);
    } else {
        queueIndex = -1;
    }
    if (queue.length) {
        drainQueue();
    }
}

function drainQueue() {
    if (draining) {
        return;
    }
    var timeout = setTimeout(cleanUpNextTick);
    draining = true;

    var len = queue.length;
    while(len) {
        currentQueue = queue;
        queue = [];
        while (++queueIndex < len) {
            if (currentQueue) {
                currentQueue[queueIndex].run();
            }
        }
        queueIndex = -1;
        len = queue.length;
    }
    currentQueue = null;
    draining = false;
    clearTimeout(timeout);
}

process.nextTick = function (fun) {
    var args = new Array(arguments.length - 1);
    if (arguments.length > 1) {
        for (var i = 1; i < arguments.length; i++) {
            args[i - 1] = arguments[i];
        }
    }
    queue.push(new Item(fun, args));
    if (queue.length === 1 && !draining) {
        setTimeout(drainQueue, 0);
    }
};

// v8 likes predictible objects
function Item(fun, array) {
    this.fun = fun;
    this.array = array;
}
Item.prototype.run = function () {
    this.fun.apply(null, this.array);
};
process.title = 'browser';
process.browser = true;
process.env = {};
process.argv = [];
process.version = ''; // empty string to avoid regexp issues
process.versions = {};

function noop() {}

process.on = noop;
process.addListener = noop;
process.once = noop;
process.off = noop;
process.removeListener = noop;
process.removeAllListeners = noop;
process.emit = noop;

process.binding = function (name) {
    throw new Error('process.binding is not supported');
};

process.cwd = function () { return '/' };
process.chdir = function (dir) {
    throw new Error('process.chdir is not supported');
};
process.umask = function() { return 0; };

},{}],24:[function(require,module,exports){
(function (Buffer){
/**
 * Convert a typed array to a Buffer without a copy
 *
 * Author:   Feross Aboukhadijeh <feross@feross.org> <http://feross.org>
 * License:  MIT
 *
 * `npm install typedarray-to-buffer`
 */

module.exports = function (arr) {
  if (typeof Buffer._augment === 'function' && Buffer.TYPED_ARRAY_SUPPORT) {
    // If `Buffer` is from the `buffer` module and this browser supports typed arrays,
    // then augment it with all the `Buffer` methods.
    return Buffer._augment(arr)
  } else {
    // Otherwise, fallback to creating a `Buffer` with a copy.
    return new Buffer(arr)
  }
}

}).call(this,require("buffer").Buffer)
},{"buffer":7}],25:[function(require,module,exports){
module.exports = function isBuffer(arg) {
  return arg && typeof arg === 'object'
    && typeof arg.copy === 'function'
    && typeof arg.fill === 'function'
    && typeof arg.readUInt8 === 'function';
}
},{}],26:[function(require,module,exports){
(function (process,global){
// Copyright Joyent, Inc. and other Node contributors.
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to permit
// persons to whom the Software is furnished to do so, subject to the
// following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
// NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
// USE OR OTHER DEALINGS IN THE SOFTWARE.

var formatRegExp = /%[sdj%]/g;
exports.format = function(f) {
  if (!isString(f)) {
    var objects = [];
    for (var i = 0; i < arguments.length; i++) {
      objects.push(inspect(arguments[i]));
    }
    return objects.join(' ');
  }

  var i = 1;
  var args = arguments;
  var len = args.length;
  var str = String(f).replace(formatRegExp, function(x) {
    if (x === '%%') return '%';
    if (i >= len) return x;
    switch (x) {
      case '%s': return String(args[i++]);
      case '%d': return Number(args[i++]);
      case '%j':
        try {
          return JSON.stringify(args[i++]);
        } catch (_) {
          return '[Circular]';
        }
      default:
        return x;
    }
  });
  for (var x = args[i]; i < len; x = args[++i]) {
    if (isNull(x) || !isObject(x)) {
      str += ' ' + x;
    } else {
      str += ' ' + inspect(x);
    }
  }
  return str;
};


// Mark that a method should not be used.
// Returns a modified function which warns once by default.
// If --no-deprecation is set, then it is a no-op.
exports.deprecate = function(fn, msg) {
  // Allow for deprecating things in the process of starting up.
  if (isUndefined(global.process)) {
    return function() {
      return exports.deprecate(fn, msg).apply(this, arguments);
    };
  }

  if (process.noDeprecation === true) {
    return fn;
  }

  var warned = false;
  function deprecated() {
    if (!warned) {
      if (process.throwDeprecation) {
        throw new Error(msg);
      } else if (process.traceDeprecation) {
        console.trace(msg);
      } else {
        console.error(msg);
      }
      warned = true;
    }
    return fn.apply(this, arguments);
  }

  return deprecated;
};


var debugs = {};
var debugEnviron;
exports.debuglog = function(set) {
  if (isUndefined(debugEnviron))
    debugEnviron = process.env.NODE_DEBUG || '';
  set = set.toUpperCase();
  if (!debugs[set]) {
    if (new RegExp('\\b' + set + '\\b', 'i').test(debugEnviron)) {
      var pid = process.pid;
      debugs[set] = function() {
        var msg = exports.format.apply(exports, arguments);
        console.error('%s %d: %s', set, pid, msg);
      };
    } else {
      debugs[set] = function() {};
    }
  }
  return debugs[set];
};


/**
 * Echos the value of a value. Trys to print the value out
 * in the best way possible given the different types.
 *
 * @param {Object} obj The object to print out.
 * @param {Object} opts Optional options object that alters the output.
 */
/* legacy: obj, showHidden, depth, colors*/
function inspect(obj, opts) {
  // default options
  var ctx = {
    seen: [],
    stylize: stylizeNoColor
  };
  // legacy...
  if (arguments.length >= 3) ctx.depth = arguments[2];
  if (arguments.length >= 4) ctx.colors = arguments[3];
  if (isBoolean(opts)) {
    // legacy...
    ctx.showHidden = opts;
  } else if (opts) {
    // got an "options" object
    exports._extend(ctx, opts);
  }
  // set default options
  if (isUndefined(ctx.showHidden)) ctx.showHidden = false;
  if (isUndefined(ctx.depth)) ctx.depth = 2;
  if (isUndefined(ctx.colors)) ctx.colors = false;
  if (isUndefined(ctx.customInspect)) ctx.customInspect = true;
  if (ctx.colors) ctx.stylize = stylizeWithColor;
  return formatValue(ctx, obj, ctx.depth);
}
exports.inspect = inspect;


// http://en.wikipedia.org/wiki/ANSI_escape_code#graphics
inspect.colors = {
  'bold' : [1, 22],
  'italic' : [3, 23],
  'underline' : [4, 24],
  'inverse' : [7, 27],
  'white' : [37, 39],
  'grey' : [90, 39],
  'black' : [30, 39],
  'blue' : [34, 39],
  'cyan' : [36, 39],
  'green' : [32, 39],
  'magenta' : [35, 39],
  'red' : [31, 39],
  'yellow' : [33, 39]
};

// Don't use 'blue' not visible on cmd.exe
inspect.styles = {
  'special': 'cyan',
  'number': 'yellow',
  'boolean': 'yellow',
  'undefined': 'grey',
  'null': 'bold',
  'string': 'green',
  'date': 'magenta',
  // "name": intentionally not styling
  'regexp': 'red'
};


function stylizeWithColor(str, styleType) {
  var style = inspect.styles[styleType];

  if (style) {
    return '\u001b[' + inspect.colors[style][0] + 'm' + str +
           '\u001b[' + inspect.colors[style][1] + 'm';
  } else {
    return str;
  }
}


function stylizeNoColor(str, styleType) {
  return str;
}


function arrayToHash(array) {
  var hash = {};

  array.forEach(function(val, idx) {
    hash[val] = true;
  });

  return hash;
}


function formatValue(ctx, value, recurseTimes) {
  // Provide a hook for user-specified inspect functions.
  // Check that value is an object with an inspect function on it
  if (ctx.customInspect &&
      value &&
      isFunction(value.inspect) &&
      // Filter out the util module, it's inspect function is special
      value.inspect !== exports.inspect &&
      // Also filter out any prototype objects using the circular check.
      !(value.constructor && value.constructor.prototype === value)) {
    var ret = value.inspect(recurseTimes, ctx);
    if (!isString(ret)) {
      ret = formatValue(ctx, ret, recurseTimes);
    }
    return ret;
  }

  // Primitive types cannot have properties
  var primitive = formatPrimitive(ctx, value);
  if (primitive) {
    return primitive;
  }

  // Look up the keys of the object.
  var keys = Object.keys(value);
  var visibleKeys = arrayToHash(keys);

  if (ctx.showHidden) {
    keys = Object.getOwnPropertyNames(value);
  }

  // IE doesn't make error fields non-enumerable
  // http://msdn.microsoft.com/en-us/library/ie/dww52sbt(v=vs.94).aspx
  if (isError(value)
      && (keys.indexOf('message') >= 0 || keys.indexOf('description') >= 0)) {
    return formatError(value);
  }

  // Some type of object without properties can be shortcutted.
  if (keys.length === 0) {
    if (isFunction(value)) {
      var name = value.name ? ': ' + value.name : '';
      return ctx.stylize('[Function' + name + ']', 'special');
    }
    if (isRegExp(value)) {
      return ctx.stylize(RegExp.prototype.toString.call(value), 'regexp');
    }
    if (isDate(value)) {
      return ctx.stylize(Date.prototype.toString.call(value), 'date');
    }
    if (isError(value)) {
      return formatError(value);
    }
  }

  var base = '', array = false, braces = ['{', '}'];

  // Make Array say that they are Array
  if (isArray(value)) {
    array = true;
    braces = ['[', ']'];
  }

  // Make functions say that they are functions
  if (isFunction(value)) {
    var n = value.name ? ': ' + value.name : '';
    base = ' [Function' + n + ']';
  }

  // Make RegExps say that they are RegExps
  if (isRegExp(value)) {
    base = ' ' + RegExp.prototype.toString.call(value);
  }

  // Make dates with properties first say the date
  if (isDate(value)) {
    base = ' ' + Date.prototype.toUTCString.call(value);
  }

  // Make error with message first say the error
  if (isError(value)) {
    base = ' ' + formatError(value);
  }

  if (keys.length === 0 && (!array || value.length == 0)) {
    return braces[0] + base + braces[1];
  }

  if (recurseTimes < 0) {
    if (isRegExp(value)) {
      return ctx.stylize(RegExp.prototype.toString.call(value), 'regexp');
    } else {
      return ctx.stylize('[Object]', 'special');
    }
  }

  ctx.seen.push(value);

  var output;
  if (array) {
    output = formatArray(ctx, value, recurseTimes, visibleKeys, keys);
  } else {
    output = keys.map(function(key) {
      return formatProperty(ctx, value, recurseTimes, visibleKeys, key, array);
    });
  }

  ctx.seen.pop();

  return reduceToSingleString(output, base, braces);
}


function formatPrimitive(ctx, value) {
  if (isUndefined(value))
    return ctx.stylize('undefined', 'undefined');
  if (isString(value)) {
    var simple = '\'' + JSON.stringify(value).replace(/^"|"$/g, '')
                                             .replace(/'/g, "\\'")
                                             .replace(/\\"/g, '"') + '\'';
    return ctx.stylize(simple, 'string');
  }
  if (isNumber(value))
    return ctx.stylize('' + value, 'number');
  if (isBoolean(value))
    return ctx.stylize('' + value, 'boolean');
  // For some reason typeof null is "object", so special case here.
  if (isNull(value))
    return ctx.stylize('null', 'null');
}


function formatError(value) {
  return '[' + Error.prototype.toString.call(value) + ']';
}


function formatArray(ctx, value, recurseTimes, visibleKeys, keys) {
  var output = [];
  for (var i = 0, l = value.length; i < l; ++i) {
    if (hasOwnProperty(value, String(i))) {
      output.push(formatProperty(ctx, value, recurseTimes, visibleKeys,
          String(i), true));
    } else {
      output.push('');
    }
  }
  keys.forEach(function(key) {
    if (!key.match(/^\d+$/)) {
      output.push(formatProperty(ctx, value, recurseTimes, visibleKeys,
          key, true));
    }
  });
  return output;
}


function formatProperty(ctx, value, recurseTimes, visibleKeys, key, array) {
  var name, str, desc;
  desc = Object.getOwnPropertyDescriptor(value, key) || { value: value[key] };
  if (desc.get) {
    if (desc.set) {
      str = ctx.stylize('[Getter/Setter]', 'special');
    } else {
      str = ctx.stylize('[Getter]', 'special');
    }
  } else {
    if (desc.set) {
      str = ctx.stylize('[Setter]', 'special');
    }
  }
  if (!hasOwnProperty(visibleKeys, key)) {
    name = '[' + key + ']';
  }
  if (!str) {
    if (ctx.seen.indexOf(desc.value) < 0) {
      if (isNull(recurseTimes)) {
        str = formatValue(ctx, desc.value, null);
      } else {
        str = formatValue(ctx, desc.value, recurseTimes - 1);
      }
      if (str.indexOf('\n') > -1) {
        if (array) {
          str = str.split('\n').map(function(line) {
            return '  ' + line;
          }).join('\n').substr(2);
        } else {
          str = '\n' + str.split('\n').map(function(line) {
            return '   ' + line;
          }).join('\n');
        }
      }
    } else {
      str = ctx.stylize('[Circular]', 'special');
    }
  }
  if (isUndefined(name)) {
    if (array && key.match(/^\d+$/)) {
      return str;
    }
    name = JSON.stringify('' + key);
    if (name.match(/^"([a-zA-Z_][a-zA-Z_0-9]*)"$/)) {
      name = name.substr(1, name.length - 2);
      name = ctx.stylize(name, 'name');
    } else {
      name = name.replace(/'/g, "\\'")
                 .replace(/\\"/g, '"')
                 .replace(/(^"|"$)/g, "'");
      name = ctx.stylize(name, 'string');
    }
  }

  return name + ': ' + str;
}


function reduceToSingleString(output, base, braces) {
  var numLinesEst = 0;
  var length = output.reduce(function(prev, cur) {
    numLinesEst++;
    if (cur.indexOf('\n') >= 0) numLinesEst++;
    return prev + cur.replace(/\u001b\[\d\d?m/g, '').length + 1;
  }, 0);

  if (length > 60) {
    return braces[0] +
           (base === '' ? '' : base + '\n ') +
           ' ' +
           output.join(',\n  ') +
           ' ' +
           braces[1];
  }

  return braces[0] + base + ' ' + output.join(', ') + ' ' + braces[1];
}


// NOTE: These type checking functions intentionally don't use `instanceof`
// because it is fragile and can be easily faked with `Object.create()`.
function isArray(ar) {
  return Array.isArray(ar);
}
exports.isArray = isArray;

function isBoolean(arg) {
  return typeof arg === 'boolean';
}
exports.isBoolean = isBoolean;

function isNull(arg) {
  return arg === null;
}
exports.isNull = isNull;

function isNullOrUndefined(arg) {
  return arg == null;
}
exports.isNullOrUndefined = isNullOrUndefined;

function isNumber(arg) {
  return typeof arg === 'number';
}
exports.isNumber = isNumber;

function isString(arg) {
  return typeof arg === 'string';
}
exports.isString = isString;

function isSymbol(arg) {
  return typeof arg === 'symbol';
}
exports.isSymbol = isSymbol;

function isUndefined(arg) {
  return arg === void 0;
}
exports.isUndefined = isUndefined;

function isRegExp(re) {
  return isObject(re) && objectToString(re) === '[object RegExp]';
}
exports.isRegExp = isRegExp;

function isObject(arg) {
  return typeof arg === 'object' && arg !== null;
}
exports.isObject = isObject;

function isDate(d) {
  return isObject(d) && objectToString(d) === '[object Date]';
}
exports.isDate = isDate;

function isError(e) {
  return isObject(e) &&
      (objectToString(e) === '[object Error]' || e instanceof Error);
}
exports.isError = isError;

function isFunction(arg) {
  return typeof arg === 'function';
}
exports.isFunction = isFunction;

function isPrimitive(arg) {
  return arg === null ||
         typeof arg === 'boolean' ||
         typeof arg === 'number' ||
         typeof arg === 'string' ||
         typeof arg === 'symbol' ||  // ES6 symbol
         typeof arg === 'undefined';
}
exports.isPrimitive = isPrimitive;

exports.isBuffer = require('./support/isBuffer');

function objectToString(o) {
  return Object.prototype.toString.call(o);
}


function pad(n) {
  return n < 10 ? '0' + n.toString(10) : n.toString(10);
}


var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep',
              'Oct', 'Nov', 'Dec'];

// 26 Feb 16:19:34
function timestamp() {
  var d = new Date();
  var time = [pad(d.getHours()),
              pad(d.getMinutes()),
              pad(d.getSeconds())].join(':');
  return [d.getDate(), months[d.getMonth()], time].join(' ');
}


// log is just a thin wrapper to console.log that prepends a timestamp
exports.log = function() {
  console.log('%s - %s', timestamp(), exports.format.apply(exports, arguments));
};


/**
 * Inherit the prototype methods from one constructor into another.
 *
 * The Function.prototype.inherits from lang.js rewritten as a standalone
 * function (not on Function.prototype). NOTE: If this file is to be loaded
 * during bootstrapping this function needs to be rewritten using some native
 * functions as prototype setup using normal JavaScript does not work as
 * expected during bootstrapping (see mirror.js in r114903).
 *
 * @param {function} ctor Constructor function which needs to inherit the
 *     prototype.
 * @param {function} superCtor Constructor function to inherit prototype from.
 */
exports.inherits = require('inherits');

exports._extend = function(origin, add) {
  // Don't do anything if add isn't an object
  if (!add || !isObject(add)) return origin;

  var keys = Object.keys(add);
  var i = keys.length;
  while (i--) {
    origin[keys[i]] = add[keys[i]];
  }
  return origin;
};

function hasOwnProperty(obj, prop) {
  return Object.prototype.hasOwnProperty.call(obj, prop);
}

}).call(this,require('_process'),typeof global !== "undefined" ? global : typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
},{"./support/isBuffer":25,"_process":23,"inherits":10}]},{},[1]);

(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
window.Memdown = require( '../node_modules/memdown/memdown.js' );

},{"../node_modules/memdown/memdown.js":9}],2:[function(require,module,exports){
var lookup = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';

;(function (exports) {
	'use strict';

  var Arr = (typeof Uint8Array !== 'undefined')
    ? Uint8Array
    : Array

	var PLUS   = '+'.charCodeAt(0)
	var SLASH  = '/'.charCodeAt(0)
	var NUMBER = '0'.charCodeAt(0)
	var LOWER  = 'a'.charCodeAt(0)
	var UPPER  = 'A'.charCodeAt(0)
	var PLUS_URL_SAFE = '-'.charCodeAt(0)
	var SLASH_URL_SAFE = '_'.charCodeAt(0)

	function decode (elt) {
		var code = elt.charCodeAt(0)
		if (code === PLUS ||
		    code === PLUS_URL_SAFE)
			return 62 // '+'
		if (code === SLASH ||
		    code === SLASH_URL_SAFE)
			return 63 // '/'
		if (code < NUMBER)
			return -1 //no match
		if (code < NUMBER + 10)
			return code - NUMBER + 26 + 26
		if (code < UPPER + 26)
			return code - UPPER
		if (code < LOWER + 26)
			return code - LOWER + 26
	}

	function b64ToByteArray (b64) {
		var i, j, l, tmp, placeHolders, arr

		if (b64.length % 4 > 0) {
			throw new Error('Invalid string. Length must be a multiple of 4')
		}

		// the number of equal signs (place holders)
		// if there are two placeholders, than the two characters before it
		// represent one byte
		// if there is only one, then the three characters before it represent 2 bytes
		// this is just a cheap hack to not do indexOf twice
		var len = b64.length
		placeHolders = '=' === b64.charAt(len - 2) ? 2 : '=' === b64.charAt(len - 1) ? 1 : 0

		// base64 is 4/3 + up to two characters of the original data
		arr = new Arr(b64.length * 3 / 4 - placeHolders)

		// if there are placeholders, only get up to the last complete 4 chars
		l = placeHolders > 0 ? b64.length - 4 : b64.length

		var L = 0

		function push (v) {
			arr[L++] = v
		}

		for (i = 0, j = 0; i < l; i += 4, j += 3) {
			tmp = (decode(b64.charAt(i)) << 18) | (decode(b64.charAt(i + 1)) << 12) | (decode(b64.charAt(i + 2)) << 6) | decode(b64.charAt(i + 3))
			push((tmp & 0xFF0000) >> 16)
			push((tmp & 0xFF00) >> 8)
			push(tmp & 0xFF)
		}

		if (placeHolders === 2) {
			tmp = (decode(b64.charAt(i)) << 2) | (decode(b64.charAt(i + 1)) >> 4)
			push(tmp & 0xFF)
		} else if (placeHolders === 1) {
			tmp = (decode(b64.charAt(i)) << 10) | (decode(b64.charAt(i + 1)) << 4) | (decode(b64.charAt(i + 2)) >> 2)
			push((tmp >> 8) & 0xFF)
			push(tmp & 0xFF)
		}

		return arr
	}

	function uint8ToBase64 (uint8) {
		var i,
			extraBytes = uint8.length % 3, // if we have 1 byte left, pad 2 bytes
			output = "",
			temp, length

		function encode (num) {
			return lookup.charAt(num)
		}

		function tripletToBase64 (num) {
			return encode(num >> 18 & 0x3F) + encode(num >> 12 & 0x3F) + encode(num >> 6 & 0x3F) + encode(num & 0x3F)
		}

		// go through the array every three bytes, we'll deal with trailing stuff later
		for (i = 0, length = uint8.length - extraBytes; i < length; i += 3) {
			temp = (uint8[i] << 16) + (uint8[i + 1] << 8) + (uint8[i + 2])
			output += tripletToBase64(temp)
		}

		// pad the end with zeros, but make sure to not forget the extra bytes
		switch (extraBytes) {
			case 1:
				temp = uint8[uint8.length - 1]
				output += encode(temp >> 2)
				output += encode((temp << 4) & 0x3F)
				output += '=='
				break
			case 2:
				temp = (uint8[uint8.length - 2] << 8) + (uint8[uint8.length - 1])
				output += encode(temp >> 10)
				output += encode((temp >> 4) & 0x3F)
				output += encode((temp << 2) & 0x3F)
				output += '='
				break
		}

		return output
	}

	exports.toByteArray = b64ToByteArray
	exports.fromByteArray = uint8ToBase64
}(typeof exports === 'undefined' ? (this.base64js = {}) : exports))

},{}],3:[function(require,module,exports){
(function (global){
/*!
 * The buffer module from node.js, for the browser.
 *
 * @author   Feross Aboukhadijeh <feross@feross.org> <http://feross.org>
 * @license  MIT
 */
/* eslint-disable no-proto */

var base64 = require('base64-js')
var ieee754 = require('ieee754')
var isArray = require('is-array')

exports.Buffer = Buffer
exports.SlowBuffer = SlowBuffer
exports.INSPECT_MAX_BYTES = 50
Buffer.poolSize = 8192 // not used by this implementation

var rootParent = {}

/**
 * If `Buffer.TYPED_ARRAY_SUPPORT`:
 *   === true    Use Uint8Array implementation (fastest)
 *   === false   Use Object implementation (most compatible, even IE6)
 *
 * Browsers that support typed arrays are IE 10+, Firefox 4+, Chrome 7+, Safari 5.1+,
 * Opera 11.6+, iOS 4.2+.
 *
 * Due to various browser bugs, sometimes the Object implementation will be used even
 * when the browser supports typed arrays.
 *
 * Note:
 *
 *   - Firefox 4-29 lacks support for adding new properties to `Uint8Array` instances,
 *     See: https://bugzilla.mozilla.org/show_bug.cgi?id=695438.
 *
 *   - Safari 5-7 lacks support for changing the `Object.prototype.constructor` property
 *     on objects.
 *
 *   - Chrome 9-10 is missing the `TypedArray.prototype.subarray` function.
 *
 *   - IE10 has a broken `TypedArray.prototype.subarray` function which returns arrays of
 *     incorrect length in some situations.

 * We detect these buggy browsers and set `Buffer.TYPED_ARRAY_SUPPORT` to `false` so they
 * get the Object implementation, which is slower but behaves correctly.
 */
Buffer.TYPED_ARRAY_SUPPORT = global.TYPED_ARRAY_SUPPORT !== undefined
  ? global.TYPED_ARRAY_SUPPORT
  : typedArraySupport()

function typedArraySupport () {
  function Bar () {}
  try {
    var arr = new Uint8Array(1)
    arr.foo = function () { return 42 }
    arr.constructor = Bar
    return arr.foo() === 42 && // typed array instances can be augmented
        arr.constructor === Bar && // constructor can be set
        typeof arr.subarray === 'function' && // chrome 9-10 lack `subarray`
        arr.subarray(1, 1).byteLength === 0 // ie10 has broken `subarray`
  } catch (e) {
    return false
  }
}

function kMaxLength () {
  return Buffer.TYPED_ARRAY_SUPPORT
    ? 0x7fffffff
    : 0x3fffffff
}

/**
 * Class: Buffer
 * =============
 *
 * The Buffer constructor returns instances of `Uint8Array` that are augmented
 * with function properties for all the node `Buffer` API functions. We use
 * `Uint8Array` so that square bracket notation works as expected -- it returns
 * a single octet.
 *
 * By augmenting the instances, we can avoid modifying the `Uint8Array`
 * prototype.
 */
function Buffer (arg) {
  if (!(this instanceof Buffer)) {
    // Avoid going through an ArgumentsAdaptorTrampoline in the common case.
    if (arguments.length > 1) return new Buffer(arg, arguments[1])
    return new Buffer(arg)
  }

  this.length = 0
  this.parent = undefined

  // Common case.
  if (typeof arg === 'number') {
    return fromNumber(this, arg)
  }

  // Slightly less common case.
  if (typeof arg === 'string') {
    return fromString(this, arg, arguments.length > 1 ? arguments[1] : 'utf8')
  }

  // Unusual.
  return fromObject(this, arg)
}

function fromNumber (that, length) {
  that = allocate(that, length < 0 ? 0 : checked(length) | 0)
  if (!Buffer.TYPED_ARRAY_SUPPORT) {
    for (var i = 0; i < length; i++) {
      that[i] = 0
    }
  }
  return that
}

function fromString (that, string, encoding) {
  if (typeof encoding !== 'string' || encoding === '') encoding = 'utf8'

  // Assumption: byteLength() return value is always < kMaxLength.
  var length = byteLength(string, encoding) | 0
  that = allocate(that, length)

  that.write(string, encoding)
  return that
}

function fromObject (that, object) {
  if (Buffer.isBuffer(object)) return fromBuffer(that, object)

  if (isArray(object)) return fromArray(that, object)

  if (object == null) {
    throw new TypeError('must start with number, buffer, array or string')
  }

  if (typeof ArrayBuffer !== 'undefined') {
    if (object.buffer instanceof ArrayBuffer) {
      return fromTypedArray(that, object)
    }
    if (object instanceof ArrayBuffer) {
      return fromArrayBuffer(that, object)
    }
  }

  if (object.length) return fromArrayLike(that, object)

  return fromJsonObject(that, object)
}

function fromBuffer (that, buffer) {
  var length = checked(buffer.length) | 0
  that = allocate(that, length)
  buffer.copy(that, 0, 0, length)
  return that
}

function fromArray (that, array) {
  var length = checked(array.length) | 0
  that = allocate(that, length)
  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

// Duplicate of fromArray() to keep fromArray() monomorphic.
function fromTypedArray (that, array) {
  var length = checked(array.length) | 0
  that = allocate(that, length)
  // Truncating the elements is probably not what people expect from typed
  // arrays with BYTES_PER_ELEMENT > 1 but it's compatible with the behavior
  // of the old Buffer constructor.
  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

function fromArrayBuffer (that, array) {
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    // Return an augmented `Uint8Array` instance, for best performance
    array.byteLength
    that = Buffer._augment(new Uint8Array(array))
  } else {
    // Fallback: Return an object instance of the Buffer class
    that = fromTypedArray(that, new Uint8Array(array))
  }
  return that
}

function fromArrayLike (that, array) {
  var length = checked(array.length) | 0
  that = allocate(that, length)
  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

// Deserialize { type: 'Buffer', data: [1,2,3,...] } into a Buffer object.
// Returns a zero-length buffer for inputs that don't conform to the spec.
function fromJsonObject (that, object) {
  var array
  var length = 0

  if (object.type === 'Buffer' && isArray(object.data)) {
    array = object.data
    length = checked(array.length) | 0
  }
  that = allocate(that, length)

  for (var i = 0; i < length; i += 1) {
    that[i] = array[i] & 255
  }
  return that
}

if (Buffer.TYPED_ARRAY_SUPPORT) {
  Buffer.prototype.__proto__ = Uint8Array.prototype
  Buffer.__proto__ = Uint8Array
}

function allocate (that, length) {
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    // Return an augmented `Uint8Array` instance, for best performance
    that = Buffer._augment(new Uint8Array(length))
    that.__proto__ = Buffer.prototype
  } else {
    // Fallback: Return an object instance of the Buffer class
    that.length = length
    that._isBuffer = true
  }

  var fromPool = length !== 0 && length <= Buffer.poolSize >>> 1
  if (fromPool) that.parent = rootParent

  return that
}

function checked (length) {
  // Note: cannot use `length < kMaxLength` here because that fails when
  // length is NaN (which is otherwise coerced to zero.)
  if (length >= kMaxLength()) {
    throw new RangeError('Attempt to allocate Buffer larger than maximum ' +
                         'size: 0x' + kMaxLength().toString(16) + ' bytes')
  }
  return length | 0
}

function SlowBuffer (subject, encoding) {
  if (!(this instanceof SlowBuffer)) return new SlowBuffer(subject, encoding)

  var buf = new Buffer(subject, encoding)
  delete buf.parent
  return buf
}

Buffer.isBuffer = function isBuffer (b) {
  return !!(b != null && b._isBuffer)
}

Buffer.compare = function compare (a, b) {
  if (!Buffer.isBuffer(a) || !Buffer.isBuffer(b)) {
    throw new TypeError('Arguments must be Buffers')
  }

  if (a === b) return 0

  var x = a.length
  var y = b.length

  var i = 0
  var len = Math.min(x, y)
  while (i < len) {
    if (a[i] !== b[i]) break

    ++i
  }

  if (i !== len) {
    x = a[i]
    y = b[i]
  }

  if (x < y) return -1
  if (y < x) return 1
  return 0
}

Buffer.isEncoding = function isEncoding (encoding) {
  switch (String(encoding).toLowerCase()) {
    case 'hex':
    case 'utf8':
    case 'utf-8':
    case 'ascii':
    case 'binary':
    case 'base64':
    case 'raw':
    case 'ucs2':
    case 'ucs-2':
    case 'utf16le':
    case 'utf-16le':
      return true
    default:
      return false
  }
}

Buffer.concat = function concat (list, length) {
  if (!isArray(list)) throw new TypeError('list argument must be an Array of Buffers.')

  if (list.length === 0) {
    return new Buffer(0)
  }

  var i
  if (length === undefined) {
    length = 0
    for (i = 0; i < list.length; i++) {
      length += list[i].length
    }
  }

  var buf = new Buffer(length)
  var pos = 0
  for (i = 0; i < list.length; i++) {
    var item = list[i]
    item.copy(buf, pos)
    pos += item.length
  }
  return buf
}

function byteLength (string, encoding) {
  if (typeof string !== 'string') string = '' + string

  var len = string.length
  if (len === 0) return 0

  // Use a for loop to avoid recursion
  var loweredCase = false
  for (;;) {
    switch (encoding) {
      case 'ascii':
      case 'binary':
      // Deprecated
      case 'raw':
      case 'raws':
        return len
      case 'utf8':
      case 'utf-8':
        return utf8ToBytes(string).length
      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return len * 2
      case 'hex':
        return len >>> 1
      case 'base64':
        return base64ToBytes(string).length
      default:
        if (loweredCase) return utf8ToBytes(string).length // assume utf8
        encoding = ('' + encoding).toLowerCase()
        loweredCase = true
    }
  }
}
Buffer.byteLength = byteLength

// pre-set for values that may exist in the future
//Buffer.prototype.length = undefined
//Buffer.prototype.parent = undefined

function slowToString (encoding, start, end) {
  var loweredCase = false

  start = start | 0
  end = end === undefined || end === Infinity ? this.length : end | 0

  if (!encoding) encoding = 'utf8'
  if (start < 0) start = 0
  if (end > this.length) end = this.length
  if (end <= start) return ''

  while (true) {
    switch (encoding) {
      case 'hex':
        return hexSlice(this, start, end)

      case 'utf8':
      case 'utf-8':
        return utf8Slice(this, start, end)

      case 'ascii':
        return asciiSlice(this, start, end)

      case 'binary':
        return binarySlice(this, start, end)

      case 'base64':
        return base64Slice(this, start, end)

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return utf16leSlice(this, start, end)

      default:
        if (loweredCase) throw new TypeError('Unknown encoding: ' + encoding)
        encoding = (encoding + '').toLowerCase()
        loweredCase = true
    }
  }
}

Buffer.prototype.toString = function toString () {
  var length = this.length | 0
  if (length === 0) return ''
  if (arguments.length === 0) return utf8Slice(this, 0, length)
  return slowToString.apply(this, arguments)
}

Buffer.prototype.equals = function equals (b) {
  if (!Buffer.isBuffer(b)) throw new TypeError('Argument must be a Buffer')
  if (this === b) return true
  return Buffer.compare(this, b) === 0
}

Buffer.prototype.inspect = function inspect () {
  var str = ''
  var max = exports.INSPECT_MAX_BYTES
  if (this.length > 0) {
    str = this.toString('hex', 0, max).match(/.{2}/g).join(' ')
    if (this.length > max) str += ' ... '
  }
  return '<Buffer ' + str + '>'
}

Buffer.prototype.compare = function compare (b) {
  if (!Buffer.isBuffer(b)) throw new TypeError('Argument must be a Buffer')
  if (this === b) return 0
  return Buffer.compare(this, b)
}

Buffer.prototype.indexOf = function indexOf (val, byteOffset) {
  if (byteOffset > 0x7fffffff) byteOffset = 0x7fffffff
  else if (byteOffset < -0x80000000) byteOffset = -0x80000000
  byteOffset >>= 0

  if (this.length === 0) return -1
  if (byteOffset >= this.length) return -1

  // Negative offsets start from the end of the buffer
  if (byteOffset < 0) byteOffset = Math.max(this.length + byteOffset, 0)

  if (typeof val === 'string') {
    if (val.length === 0) return -1 // special case: looking for empty string always fails
    return String.prototype.indexOf.call(this, val, byteOffset)
  }
  if (Buffer.isBuffer(val)) {
    return arrayIndexOf(this, val, byteOffset)
  }
  if (typeof val === 'number') {
    if (Buffer.TYPED_ARRAY_SUPPORT && Uint8Array.prototype.indexOf === 'function') {
      return Uint8Array.prototype.indexOf.call(this, val, byteOffset)
    }
    return arrayIndexOf(this, [ val ], byteOffset)
  }

  function arrayIndexOf (arr, val, byteOffset) {
    var foundIndex = -1
    for (var i = 0; byteOffset + i < arr.length; i++) {
      if (arr[byteOffset + i] === val[foundIndex === -1 ? 0 : i - foundIndex]) {
        if (foundIndex === -1) foundIndex = i
        if (i - foundIndex + 1 === val.length) return byteOffset + foundIndex
      } else {
        foundIndex = -1
      }
    }
    return -1
  }

  throw new TypeError('val must be string, number or Buffer')
}

// `get` is deprecated
Buffer.prototype.get = function get (offset) {
  console.log('.get() is deprecated. Access using array indexes instead.')
  return this.readUInt8(offset)
}

// `set` is deprecated
Buffer.prototype.set = function set (v, offset) {
  console.log('.set() is deprecated. Access using array indexes instead.')
  return this.writeUInt8(v, offset)
}

function hexWrite (buf, string, offset, length) {
  offset = Number(offset) || 0
  var remaining = buf.length - offset
  if (!length) {
    length = remaining
  } else {
    length = Number(length)
    if (length > remaining) {
      length = remaining
    }
  }

  // must be an even number of digits
  var strLen = string.length
  if (strLen % 2 !== 0) throw new Error('Invalid hex string')

  if (length > strLen / 2) {
    length = strLen / 2
  }
  for (var i = 0; i < length; i++) {
    var parsed = parseInt(string.substr(i * 2, 2), 16)
    if (isNaN(parsed)) throw new Error('Invalid hex string')
    buf[offset + i] = parsed
  }
  return i
}

function utf8Write (buf, string, offset, length) {
  return blitBuffer(utf8ToBytes(string, buf.length - offset), buf, offset, length)
}

function asciiWrite (buf, string, offset, length) {
  return blitBuffer(asciiToBytes(string), buf, offset, length)
}

function binaryWrite (buf, string, offset, length) {
  return asciiWrite(buf, string, offset, length)
}

function base64Write (buf, string, offset, length) {
  return blitBuffer(base64ToBytes(string), buf, offset, length)
}

function ucs2Write (buf, string, offset, length) {
  return blitBuffer(utf16leToBytes(string, buf.length - offset), buf, offset, length)
}

Buffer.prototype.write = function write (string, offset, length, encoding) {
  // Buffer#write(string)
  if (offset === undefined) {
    encoding = 'utf8'
    length = this.length
    offset = 0
  // Buffer#write(string, encoding)
  } else if (length === undefined && typeof offset === 'string') {
    encoding = offset
    length = this.length
    offset = 0
  // Buffer#write(string, offset[, length][, encoding])
  } else if (isFinite(offset)) {
    offset = offset | 0
    if (isFinite(length)) {
      length = length | 0
      if (encoding === undefined) encoding = 'utf8'
    } else {
      encoding = length
      length = undefined
    }
  // legacy write(string, encoding, offset, length) - remove in v0.13
  } else {
    var swap = encoding
    encoding = offset
    offset = length | 0
    length = swap
  }

  var remaining = this.length - offset
  if (length === undefined || length > remaining) length = remaining

  if ((string.length > 0 && (length < 0 || offset < 0)) || offset > this.length) {
    throw new RangeError('attempt to write outside buffer bounds')
  }

  if (!encoding) encoding = 'utf8'

  var loweredCase = false
  for (;;) {
    switch (encoding) {
      case 'hex':
        return hexWrite(this, string, offset, length)

      case 'utf8':
      case 'utf-8':
        return utf8Write(this, string, offset, length)

      case 'ascii':
        return asciiWrite(this, string, offset, length)

      case 'binary':
        return binaryWrite(this, string, offset, length)

      case 'base64':
        // Warning: maxLength not taken into account in base64Write
        return base64Write(this, string, offset, length)

      case 'ucs2':
      case 'ucs-2':
      case 'utf16le':
      case 'utf-16le':
        return ucs2Write(this, string, offset, length)

      default:
        if (loweredCase) throw new TypeError('Unknown encoding: ' + encoding)
        encoding = ('' + encoding).toLowerCase()
        loweredCase = true
    }
  }
}

Buffer.prototype.toJSON = function toJSON () {
  return {
    type: 'Buffer',
    data: Array.prototype.slice.call(this._arr || this, 0)
  }
}

function base64Slice (buf, start, end) {
  if (start === 0 && end === buf.length) {
    return base64.fromByteArray(buf)
  } else {
    return base64.fromByteArray(buf.slice(start, end))
  }
}

function utf8Slice (buf, start, end) {
  end = Math.min(buf.length, end)
  var res = []

  var i = start
  while (i < end) {
    var firstByte = buf[i]
    var codePoint = null
    var bytesPerSequence = (firstByte > 0xEF) ? 4
      : (firstByte > 0xDF) ? 3
      : (firstByte > 0xBF) ? 2
      : 1

    if (i + bytesPerSequence <= end) {
      var secondByte, thirdByte, fourthByte, tempCodePoint

      switch (bytesPerSequence) {
        case 1:
          if (firstByte < 0x80) {
            codePoint = firstByte
          }
          break
        case 2:
          secondByte = buf[i + 1]
          if ((secondByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0x1F) << 0x6 | (secondByte & 0x3F)
            if (tempCodePoint > 0x7F) {
              codePoint = tempCodePoint
            }
          }
          break
        case 3:
          secondByte = buf[i + 1]
          thirdByte = buf[i + 2]
          if ((secondByte & 0xC0) === 0x80 && (thirdByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0xF) << 0xC | (secondByte & 0x3F) << 0x6 | (thirdByte & 0x3F)
            if (tempCodePoint > 0x7FF && (tempCodePoint < 0xD800 || tempCodePoint > 0xDFFF)) {
              codePoint = tempCodePoint
            }
          }
          break
        case 4:
          secondByte = buf[i + 1]
          thirdByte = buf[i + 2]
          fourthByte = buf[i + 3]
          if ((secondByte & 0xC0) === 0x80 && (thirdByte & 0xC0) === 0x80 && (fourthByte & 0xC0) === 0x80) {
            tempCodePoint = (firstByte & 0xF) << 0x12 | (secondByte & 0x3F) << 0xC | (thirdByte & 0x3F) << 0x6 | (fourthByte & 0x3F)
            if (tempCodePoint > 0xFFFF && tempCodePoint < 0x110000) {
              codePoint = tempCodePoint
            }
          }
      }
    }

    if (codePoint === null) {
      // we did not generate a valid codePoint so insert a
      // replacement char (U+FFFD) and advance only 1 byte
      codePoint = 0xFFFD
      bytesPerSequence = 1
    } else if (codePoint > 0xFFFF) {
      // encode to utf16 (surrogate pair dance)
      codePoint -= 0x10000
      res.push(codePoint >>> 10 & 0x3FF | 0xD800)
      codePoint = 0xDC00 | codePoint & 0x3FF
    }

    res.push(codePoint)
    i += bytesPerSequence
  }

  return decodeCodePointsArray(res)
}

// Based on http://stackoverflow.com/a/22747272/680742, the browser with
// the lowest limit is Chrome, with 0x10000 args.
// We go 1 magnitude less, for safety
var MAX_ARGUMENTS_LENGTH = 0x1000

function decodeCodePointsArray (codePoints) {
  var len = codePoints.length
  if (len <= MAX_ARGUMENTS_LENGTH) {
    return String.fromCharCode.apply(String, codePoints) // avoid extra slice()
  }

  // Decode in chunks to avoid "call stack size exceeded".
  var res = ''
  var i = 0
  while (i < len) {
    res += String.fromCharCode.apply(
      String,
      codePoints.slice(i, i += MAX_ARGUMENTS_LENGTH)
    )
  }
  return res
}

function asciiSlice (buf, start, end) {
  var ret = ''
  end = Math.min(buf.length, end)

  for (var i = start; i < end; i++) {
    ret += String.fromCharCode(buf[i] & 0x7F)
  }
  return ret
}

function binarySlice (buf, start, end) {
  var ret = ''
  end = Math.min(buf.length, end)

  for (var i = start; i < end; i++) {
    ret += String.fromCharCode(buf[i])
  }
  return ret
}

function hexSlice (buf, start, end) {
  var len = buf.length

  if (!start || start < 0) start = 0
  if (!end || end < 0 || end > len) end = len

  var out = ''
  for (var i = start; i < end; i++) {
    out += toHex(buf[i])
  }
  return out
}

function utf16leSlice (buf, start, end) {
  var bytes = buf.slice(start, end)
  var res = ''
  for (var i = 0; i < bytes.length; i += 2) {
    res += String.fromCharCode(bytes[i] + bytes[i + 1] * 256)
  }
  return res
}

Buffer.prototype.slice = function slice (start, end) {
  var len = this.length
  start = ~~start
  end = end === undefined ? len : ~~end

  if (start < 0) {
    start += len
    if (start < 0) start = 0
  } else if (start > len) {
    start = len
  }

  if (end < 0) {
    end += len
    if (end < 0) end = 0
  } else if (end > len) {
    end = len
  }

  if (end < start) end = start

  var newBuf
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    newBuf = Buffer._augment(this.subarray(start, end))
  } else {
    var sliceLen = end - start
    newBuf = new Buffer(sliceLen, undefined)
    for (var i = 0; i < sliceLen; i++) {
      newBuf[i] = this[i + start]
    }
  }

  if (newBuf.length) newBuf.parent = this.parent || this

  return newBuf
}

/*
 * Need to make sure that buffer isn't trying to write out of bounds.
 */
function checkOffset (offset, ext, length) {
  if ((offset % 1) !== 0 || offset < 0) throw new RangeError('offset is not uint')
  if (offset + ext > length) throw new RangeError('Trying to access beyond buffer length')
}

Buffer.prototype.readUIntLE = function readUIntLE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var val = this[offset]
  var mul = 1
  var i = 0
  while (++i < byteLength && (mul *= 0x100)) {
    val += this[offset + i] * mul
  }

  return val
}

Buffer.prototype.readUIntBE = function readUIntBE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) {
    checkOffset(offset, byteLength, this.length)
  }

  var val = this[offset + --byteLength]
  var mul = 1
  while (byteLength > 0 && (mul *= 0x100)) {
    val += this[offset + --byteLength] * mul
  }

  return val
}

Buffer.prototype.readUInt8 = function readUInt8 (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 1, this.length)
  return this[offset]
}

Buffer.prototype.readUInt16LE = function readUInt16LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  return this[offset] | (this[offset + 1] << 8)
}

Buffer.prototype.readUInt16BE = function readUInt16BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  return (this[offset] << 8) | this[offset + 1]
}

Buffer.prototype.readUInt32LE = function readUInt32LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return ((this[offset]) |
      (this[offset + 1] << 8) |
      (this[offset + 2] << 16)) +
      (this[offset + 3] * 0x1000000)
}

Buffer.prototype.readUInt32BE = function readUInt32BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset] * 0x1000000) +
    ((this[offset + 1] << 16) |
    (this[offset + 2] << 8) |
    this[offset + 3])
}

Buffer.prototype.readIntLE = function readIntLE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var val = this[offset]
  var mul = 1
  var i = 0
  while (++i < byteLength && (mul *= 0x100)) {
    val += this[offset + i] * mul
  }
  mul *= 0x80

  if (val >= mul) val -= Math.pow(2, 8 * byteLength)

  return val
}

Buffer.prototype.readIntBE = function readIntBE (offset, byteLength, noAssert) {
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkOffset(offset, byteLength, this.length)

  var i = byteLength
  var mul = 1
  var val = this[offset + --i]
  while (i > 0 && (mul *= 0x100)) {
    val += this[offset + --i] * mul
  }
  mul *= 0x80

  if (val >= mul) val -= Math.pow(2, 8 * byteLength)

  return val
}

Buffer.prototype.readInt8 = function readInt8 (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 1, this.length)
  if (!(this[offset] & 0x80)) return (this[offset])
  return ((0xff - this[offset] + 1) * -1)
}

Buffer.prototype.readInt16LE = function readInt16LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  var val = this[offset] | (this[offset + 1] << 8)
  return (val & 0x8000) ? val | 0xFFFF0000 : val
}

Buffer.prototype.readInt16BE = function readInt16BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 2, this.length)
  var val = this[offset + 1] | (this[offset] << 8)
  return (val & 0x8000) ? val | 0xFFFF0000 : val
}

Buffer.prototype.readInt32LE = function readInt32LE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset]) |
    (this[offset + 1] << 8) |
    (this[offset + 2] << 16) |
    (this[offset + 3] << 24)
}

Buffer.prototype.readInt32BE = function readInt32BE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)

  return (this[offset] << 24) |
    (this[offset + 1] << 16) |
    (this[offset + 2] << 8) |
    (this[offset + 3])
}

Buffer.prototype.readFloatLE = function readFloatLE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)
  return ieee754.read(this, offset, true, 23, 4)
}

Buffer.prototype.readFloatBE = function readFloatBE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 4, this.length)
  return ieee754.read(this, offset, false, 23, 4)
}

Buffer.prototype.readDoubleLE = function readDoubleLE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 8, this.length)
  return ieee754.read(this, offset, true, 52, 8)
}

Buffer.prototype.readDoubleBE = function readDoubleBE (offset, noAssert) {
  if (!noAssert) checkOffset(offset, 8, this.length)
  return ieee754.read(this, offset, false, 52, 8)
}

function checkInt (buf, value, offset, ext, max, min) {
  if (!Buffer.isBuffer(buf)) throw new TypeError('buffer must be a Buffer instance')
  if (value > max || value < min) throw new RangeError('value is out of bounds')
  if (offset + ext > buf.length) throw new RangeError('index out of range')
}

Buffer.prototype.writeUIntLE = function writeUIntLE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkInt(this, value, offset, byteLength, Math.pow(2, 8 * byteLength), 0)

  var mul = 1
  var i = 0
  this[offset] = value & 0xFF
  while (++i < byteLength && (mul *= 0x100)) {
    this[offset + i] = (value / mul) & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeUIntBE = function writeUIntBE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  byteLength = byteLength | 0
  if (!noAssert) checkInt(this, value, offset, byteLength, Math.pow(2, 8 * byteLength), 0)

  var i = byteLength - 1
  var mul = 1
  this[offset + i] = value & 0xFF
  while (--i >= 0 && (mul *= 0x100)) {
    this[offset + i] = (value / mul) & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeUInt8 = function writeUInt8 (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 1, 0xff, 0)
  if (!Buffer.TYPED_ARRAY_SUPPORT) value = Math.floor(value)
  this[offset] = (value & 0xff)
  return offset + 1
}

function objectWriteUInt16 (buf, value, offset, littleEndian) {
  if (value < 0) value = 0xffff + value + 1
  for (var i = 0, j = Math.min(buf.length - offset, 2); i < j; i++) {
    buf[offset + i] = (value & (0xff << (8 * (littleEndian ? i : 1 - i)))) >>>
      (littleEndian ? i : 1 - i) * 8
  }
}

Buffer.prototype.writeUInt16LE = function writeUInt16LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0xffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
  } else {
    objectWriteUInt16(this, value, offset, true)
  }
  return offset + 2
}

Buffer.prototype.writeUInt16BE = function writeUInt16BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0xffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 8)
    this[offset + 1] = (value & 0xff)
  } else {
    objectWriteUInt16(this, value, offset, false)
  }
  return offset + 2
}

function objectWriteUInt32 (buf, value, offset, littleEndian) {
  if (value < 0) value = 0xffffffff + value + 1
  for (var i = 0, j = Math.min(buf.length - offset, 4); i < j; i++) {
    buf[offset + i] = (value >>> (littleEndian ? i : 3 - i) * 8) & 0xff
  }
}

Buffer.prototype.writeUInt32LE = function writeUInt32LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0xffffffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset + 3] = (value >>> 24)
    this[offset + 2] = (value >>> 16)
    this[offset + 1] = (value >>> 8)
    this[offset] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, true)
  }
  return offset + 4
}

Buffer.prototype.writeUInt32BE = function writeUInt32BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0xffffffff, 0)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 24)
    this[offset + 1] = (value >>> 16)
    this[offset + 2] = (value >>> 8)
    this[offset + 3] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, false)
  }
  return offset + 4
}

Buffer.prototype.writeIntLE = function writeIntLE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) {
    var limit = Math.pow(2, 8 * byteLength - 1)

    checkInt(this, value, offset, byteLength, limit - 1, -limit)
  }

  var i = 0
  var mul = 1
  var sub = value < 0 ? 1 : 0
  this[offset] = value & 0xFF
  while (++i < byteLength && (mul *= 0x100)) {
    this[offset + i] = ((value / mul) >> 0) - sub & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeIntBE = function writeIntBE (value, offset, byteLength, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) {
    var limit = Math.pow(2, 8 * byteLength - 1)

    checkInt(this, value, offset, byteLength, limit - 1, -limit)
  }

  var i = byteLength - 1
  var mul = 1
  var sub = value < 0 ? 1 : 0
  this[offset + i] = value & 0xFF
  while (--i >= 0 && (mul *= 0x100)) {
    this[offset + i] = ((value / mul) >> 0) - sub & 0xFF
  }

  return offset + byteLength
}

Buffer.prototype.writeInt8 = function writeInt8 (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 1, 0x7f, -0x80)
  if (!Buffer.TYPED_ARRAY_SUPPORT) value = Math.floor(value)
  if (value < 0) value = 0xff + value + 1
  this[offset] = (value & 0xff)
  return offset + 1
}

Buffer.prototype.writeInt16LE = function writeInt16LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0x7fff, -0x8000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
  } else {
    objectWriteUInt16(this, value, offset, true)
  }
  return offset + 2
}

Buffer.prototype.writeInt16BE = function writeInt16BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 2, 0x7fff, -0x8000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 8)
    this[offset + 1] = (value & 0xff)
  } else {
    objectWriteUInt16(this, value, offset, false)
  }
  return offset + 2
}

Buffer.prototype.writeInt32LE = function writeInt32LE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0x7fffffff, -0x80000000)
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value & 0xff)
    this[offset + 1] = (value >>> 8)
    this[offset + 2] = (value >>> 16)
    this[offset + 3] = (value >>> 24)
  } else {
    objectWriteUInt32(this, value, offset, true)
  }
  return offset + 4
}

Buffer.prototype.writeInt32BE = function writeInt32BE (value, offset, noAssert) {
  value = +value
  offset = offset | 0
  if (!noAssert) checkInt(this, value, offset, 4, 0x7fffffff, -0x80000000)
  if (value < 0) value = 0xffffffff + value + 1
  if (Buffer.TYPED_ARRAY_SUPPORT) {
    this[offset] = (value >>> 24)
    this[offset + 1] = (value >>> 16)
    this[offset + 2] = (value >>> 8)
    this[offset + 3] = (value & 0xff)
  } else {
    objectWriteUInt32(this, value, offset, false)
  }
  return offset + 4
}

function checkIEEE754 (buf, value, offset, ext, max, min) {
  if (value > max || value < min) throw new RangeError('value is out of bounds')
  if (offset + ext > buf.length) throw new RangeError('index out of range')
  if (offset < 0) throw new RangeError('index out of range')
}

function writeFloat (buf, value, offset, littleEndian, noAssert) {
  if (!noAssert) {
    checkIEEE754(buf, value, offset, 4, 3.4028234663852886e+38, -3.4028234663852886e+38)
  }
  ieee754.write(buf, value, offset, littleEndian, 23, 4)
  return offset + 4
}

Buffer.prototype.writeFloatLE = function writeFloatLE (value, offset, noAssert) {
  return writeFloat(this, value, offset, true, noAssert)
}

Buffer.prototype.writeFloatBE = function writeFloatBE (value, offset, noAssert) {
  return writeFloat(this, value, offset, false, noAssert)
}

function writeDouble (buf, value, offset, littleEndian, noAssert) {
  if (!noAssert) {
    checkIEEE754(buf, value, offset, 8, 1.7976931348623157E+308, -1.7976931348623157E+308)
  }
  ieee754.write(buf, value, offset, littleEndian, 52, 8)
  return offset + 8
}

Buffer.prototype.writeDoubleLE = function writeDoubleLE (value, offset, noAssert) {
  return writeDouble(this, value, offset, true, noAssert)
}

Buffer.prototype.writeDoubleBE = function writeDoubleBE (value, offset, noAssert) {
  return writeDouble(this, value, offset, false, noAssert)
}

// copy(targetBuffer, targetStart=0, sourceStart=0, sourceEnd=buffer.length)
Buffer.prototype.copy = function copy (target, targetStart, start, end) {
  if (!start) start = 0
  if (!end && end !== 0) end = this.length
  if (targetStart >= target.length) targetStart = target.length
  if (!targetStart) targetStart = 0
  if (end > 0 && end < start) end = start

  // Copy 0 bytes; we're done
  if (end === start) return 0
  if (target.length === 0 || this.length === 0) return 0

  // Fatal error conditions
  if (targetStart < 0) {
    throw new RangeError('targetStart out of bounds')
  }
  if (start < 0 || start >= this.length) throw new RangeError('sourceStart out of bounds')
  if (end < 0) throw new RangeError('sourceEnd out of bounds')

  // Are we oob?
  if (end > this.length) end = this.length
  if (target.length - targetStart < end - start) {
    end = target.length - targetStart + start
  }

  var len = end - start
  var i

  if (this === target && start < targetStart && targetStart < end) {
    // descending copy from end
    for (i = len - 1; i >= 0; i--) {
      target[i + targetStart] = this[i + start]
    }
  } else if (len < 1000 || !Buffer.TYPED_ARRAY_SUPPORT) {
    // ascending copy from start
    for (i = 0; i < len; i++) {
      target[i + targetStart] = this[i + start]
    }
  } else {
    target._set(this.subarray(start, start + len), targetStart)
  }

  return len
}

// fill(value, start=0, end=buffer.length)
Buffer.prototype.fill = function fill (value, start, end) {
  if (!value) value = 0
  if (!start) start = 0
  if (!end) end = this.length

  if (end < start) throw new RangeError('end < start')

  // Fill 0 bytes; we're done
  if (end === start) return
  if (this.length === 0) return

  if (start < 0 || start >= this.length) throw new RangeError('start out of bounds')
  if (end < 0 || end > this.length) throw new RangeError('end out of bounds')

  var i
  if (typeof value === 'number') {
    for (i = start; i < end; i++) {
      this[i] = value
    }
  } else {
    var bytes = utf8ToBytes(value.toString())
    var len = bytes.length
    for (i = start; i < end; i++) {
      this[i] = bytes[i % len]
    }
  }

  return this
}

/**
 * Creates a new `ArrayBuffer` with the *copied* memory of the buffer instance.
 * Added in Node 0.12. Only available in browsers that support ArrayBuffer.
 */
Buffer.prototype.toArrayBuffer = function toArrayBuffer () {
  if (typeof Uint8Array !== 'undefined') {
    if (Buffer.TYPED_ARRAY_SUPPORT) {
      return (new Buffer(this)).buffer
    } else {
      var buf = new Uint8Array(this.length)
      for (var i = 0, len = buf.length; i < len; i += 1) {
        buf[i] = this[i]
      }
      return buf.buffer
    }
  } else {
    throw new TypeError('Buffer.toArrayBuffer not supported in this browser')
  }
}

// HELPER FUNCTIONS
// ================

var BP = Buffer.prototype

/**
 * Augment a Uint8Array *instance* (not the Uint8Array class!) with Buffer methods
 */
Buffer._augment = function _augment (arr) {
  arr.constructor = Buffer
  arr._isBuffer = true

  // save reference to original Uint8Array set method before overwriting
  arr._set = arr.set

  // deprecated
  arr.get = BP.get
  arr.set = BP.set

  arr.write = BP.write
  arr.toString = BP.toString
  arr.toLocaleString = BP.toString
  arr.toJSON = BP.toJSON
  arr.equals = BP.equals
  arr.compare = BP.compare
  arr.indexOf = BP.indexOf
  arr.copy = BP.copy
  arr.slice = BP.slice
  arr.readUIntLE = BP.readUIntLE
  arr.readUIntBE = BP.readUIntBE
  arr.readUInt8 = BP.readUInt8
  arr.readUInt16LE = BP.readUInt16LE
  arr.readUInt16BE = BP.readUInt16BE
  arr.readUInt32LE = BP.readUInt32LE
  arr.readUInt32BE = BP.readUInt32BE
  arr.readIntLE = BP.readIntLE
  arr.readIntBE = BP.readIntBE
  arr.readInt8 = BP.readInt8
  arr.readInt16LE = BP.readInt16LE
  arr.readInt16BE = BP.readInt16BE
  arr.readInt32LE = BP.readInt32LE
  arr.readInt32BE = BP.readInt32BE
  arr.readFloatLE = BP.readFloatLE
  arr.readFloatBE = BP.readFloatBE
  arr.readDoubleLE = BP.readDoubleLE
  arr.readDoubleBE = BP.readDoubleBE
  arr.writeUInt8 = BP.writeUInt8
  arr.writeUIntLE = BP.writeUIntLE
  arr.writeUIntBE = BP.writeUIntBE
  arr.writeUInt16LE = BP.writeUInt16LE
  arr.writeUInt16BE = BP.writeUInt16BE
  arr.writeUInt32LE = BP.writeUInt32LE
  arr.writeUInt32BE = BP.writeUInt32BE
  arr.writeIntLE = BP.writeIntLE
  arr.writeIntBE = BP.writeIntBE
  arr.writeInt8 = BP.writeInt8
  arr.writeInt16LE = BP.writeInt16LE
  arr.writeInt16BE = BP.writeInt16BE
  arr.writeInt32LE = BP.writeInt32LE
  arr.writeInt32BE = BP.writeInt32BE
  arr.writeFloatLE = BP.writeFloatLE
  arr.writeFloatBE = BP.writeFloatBE
  arr.writeDoubleLE = BP.writeDoubleLE
  arr.writeDoubleBE = BP.writeDoubleBE
  arr.fill = BP.fill
  arr.inspect = BP.inspect
  arr.toArrayBuffer = BP.toArrayBuffer

  return arr
}

var INVALID_BASE64_RE = /[^+\/0-9A-Za-z-_]/g

function base64clean (str) {
  // Node strips out invalid characters like \n and \t from the string, base64-js does not
  str = stringtrim(str).replace(INVALID_BASE64_RE, '')
  // Node converts strings with length < 2 to ''
  if (str.length < 2) return ''
  // Node allows for non-padded base64 strings (missing trailing ===), base64-js does not
  while (str.length % 4 !== 0) {
    str = str + '='
  }
  return str
}

function stringtrim (str) {
  if (str.trim) return str.trim()
  return str.replace(/^\s+|\s+$/g, '')
}

function toHex (n) {
  if (n < 16) return '0' + n.toString(16)
  return n.toString(16)
}

function utf8ToBytes (string, units) {
  units = units || Infinity
  var codePoint
  var length = string.length
  var leadSurrogate = null
  var bytes = []

  for (var i = 0; i < length; i++) {
    codePoint = string.charCodeAt(i)

    // is surrogate component
    if (codePoint > 0xD7FF && codePoint < 0xE000) {
      // last char was a lead
      if (!leadSurrogate) {
        // no lead yet
        if (codePoint > 0xDBFF) {
          // unexpected trail
          if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
          continue
        } else if (i + 1 === length) {
          // unpaired lead
          if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
          continue
        }

        // valid lead
        leadSurrogate = codePoint

        continue
      }

      // 2 leads in a row
      if (codePoint < 0xDC00) {
        if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
        leadSurrogate = codePoint
        continue
      }

      // valid surrogate pair
      codePoint = (leadSurrogate - 0xD800 << 10 | codePoint - 0xDC00) + 0x10000
    } else if (leadSurrogate) {
      // valid bmp char, but last char was a lead
      if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD)
    }

    leadSurrogate = null

    // encode utf8
    if (codePoint < 0x80) {
      if ((units -= 1) < 0) break
      bytes.push(codePoint)
    } else if (codePoint < 0x800) {
      if ((units -= 2) < 0) break
      bytes.push(
        codePoint >> 0x6 | 0xC0,
        codePoint & 0x3F | 0x80
      )
    } else if (codePoint < 0x10000) {
      if ((units -= 3) < 0) break
      bytes.push(
        codePoint >> 0xC | 0xE0,
        codePoint >> 0x6 & 0x3F | 0x80,
        codePoint & 0x3F | 0x80
      )
    } else if (codePoint < 0x110000) {
      if ((units -= 4) < 0) break
      bytes.push(
        codePoint >> 0x12 | 0xF0,
        codePoint >> 0xC & 0x3F | 0x80,
        codePoint >> 0x6 & 0x3F | 0x80,
        codePoint & 0x3F | 0x80
      )
    } else {
      throw new Error('Invalid code point')
    }
  }

  return bytes
}

function asciiToBytes (str) {
  var byteArray = []
  for (var i = 0; i < str.length; i++) {
    // Node's code seems to be doing this and not & 0x7F..
    byteArray.push(str.charCodeAt(i) & 0xFF)
  }
  return byteArray
}

function utf16leToBytes (str, units) {
  var c, hi, lo
  var byteArray = []
  for (var i = 0; i < str.length; i++) {
    if ((units -= 2) < 0) break

    c = str.charCodeAt(i)
    hi = c >> 8
    lo = c % 256
    byteArray.push(lo)
    byteArray.push(hi)
  }

  return byteArray
}

function base64ToBytes (str) {
  return base64.toByteArray(base64clean(str))
}

function blitBuffer (src, dst, offset, length) {
  for (var i = 0; i < length; i++) {
    if ((i + offset >= dst.length) || (i >= src.length)) break
    dst[i + offset] = src[i]
  }
  return i
}

}).call(this,typeof global !== "undefined" ? global : typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
},{"base64-js":2,"ieee754":5,"is-array":7}],4:[function(require,module,exports){
"use strict"

module.exports = createRBTree

var RED   = 0
var BLACK = 1

function RBNode(color, key, value, left, right, count) {
  this._color = color
  this.key = key
  this.value = value
  this.left = left
  this.right = right
  this._count = count
}

function cloneNode(node) {
  return new RBNode(node._color, node.key, node.value, node.left, node.right, node._count)
}

function repaint(color, node) {
  return new RBNode(color, node.key, node.value, node.left, node.right, node._count)
}

function recount(node) {
  node._count = 1 + (node.left ? node.left._count : 0) + (node.right ? node.right._count : 0)
}

function RedBlackTree(compare, root) {
  this._compare = compare
  this.root = root
}

var proto = RedBlackTree.prototype

Object.defineProperty(proto, "keys", {
  get: function() {
    var result = []
    this.forEach(function(k,v) {
      result.push(k)
    })
    return result
  }
})

Object.defineProperty(proto, "values", {
  get: function() {
    var result = []
    this.forEach(function(k,v) {
      result.push(v)
    })
    return result
  }
})

//Returns the number of nodes in the tree
Object.defineProperty(proto, "length", {
  get: function() {
    if(this.root) {
      return this.root._count
    }
    return 0
  }
})

//Insert a new item into the tree
proto.insert = function(key, value) {
  var cmp = this._compare
  //Find point to insert new node at
  var n = this.root
  var n_stack = []
  var d_stack = []
  while(n) {
    var d = cmp(key, n.key)
    n_stack.push(n)
    d_stack.push(d)
    if(d <= 0) {
      n = n.left
    } else {
      n = n.right
    }
  }
  //Rebuild path to leaf node
  n_stack.push(new RBNode(RED, key, value, null, null, 1))
  for(var s=n_stack.length-2; s>=0; --s) {
    var n = n_stack[s]
    if(d_stack[s] <= 0) {
      n_stack[s] = new RBNode(n._color, n.key, n.value, n_stack[s+1], n.right, n._count+1)
    } else {
      n_stack[s] = new RBNode(n._color, n.key, n.value, n.left, n_stack[s+1], n._count+1)
    }
  }
  //Rebalance tree using rotations
  //console.log("start insert", key, d_stack)
  for(var s=n_stack.length-1; s>1; --s) {
    var p = n_stack[s-1]
    var n = n_stack[s]
    if(p._color === BLACK || n._color === BLACK) {
      break
    }
    var pp = n_stack[s-2]
    if(pp.left === p) {
      if(p.left === n) {
        var y = pp.right
        if(y && y._color === RED) {
          //console.log("LLr")
          p._color = BLACK
          pp.right = repaint(BLACK, y)
          pp._color = RED
          s -= 1
        } else {
          //console.log("LLb")
          pp._color = RED
          pp.left = p.right
          p._color = BLACK
          p.right = pp
          n_stack[s-2] = p
          n_stack[s-1] = n
          recount(pp)
          recount(p)
          if(s >= 3) {
            var ppp = n_stack[s-3]
            if(ppp.left === pp) {
              ppp.left = p
            } else {
              ppp.right = p
            }
          }
          break
        }
      } else {
        var y = pp.right
        if(y && y._color === RED) {
          //console.log("LRr")
          p._color = BLACK
          pp.right = repaint(BLACK, y)
          pp._color = RED
          s -= 1
        } else {
          //console.log("LRb")
          p.right = n.left
          pp._color = RED
          pp.left = n.right
          n._color = BLACK
          n.left = p
          n.right = pp
          n_stack[s-2] = n
          n_stack[s-1] = p
          recount(pp)
          recount(p)
          recount(n)
          if(s >= 3) {
            var ppp = n_stack[s-3]
            if(ppp.left === pp) {
              ppp.left = n
            } else {
              ppp.right = n
            }
          }
          break
        }
      }
    } else {
      if(p.right === n) {
        var y = pp.left
        if(y && y._color === RED) {
          //console.log("RRr", y.key)
          p._color = BLACK
          pp.left = repaint(BLACK, y)
          pp._color = RED
          s -= 1
        } else {
          //console.log("RRb")
          pp._color = RED
          pp.right = p.left
          p._color = BLACK
          p.left = pp
          n_stack[s-2] = p
          n_stack[s-1] = n
          recount(pp)
          recount(p)
          if(s >= 3) {
            var ppp = n_stack[s-3]
            if(ppp.right === pp) {
              ppp.right = p
            } else {
              ppp.left = p
            }
          }
          break
        }
      } else {
        var y = pp.left
        if(y && y._color === RED) {
          //console.log("RLr")
          p._color = BLACK
          pp.left = repaint(BLACK, y)
          pp._color = RED
          s -= 1
        } else {
          //console.log("RLb")
          p.left = n.right
          pp._color = RED
          pp.right = n.left
          n._color = BLACK
          n.right = p
          n.left = pp
          n_stack[s-2] = n
          n_stack[s-1] = p
          recount(pp)
          recount(p)
          recount(n)
          if(s >= 3) {
            var ppp = n_stack[s-3]
            if(ppp.right === pp) {
              ppp.right = n
            } else {
              ppp.left = n
            }
          }
          break
        }
      }
    }
  }
  //Return new tree
  n_stack[0]._color = BLACK
  return new RedBlackTree(cmp, n_stack[0])
}


//Visit all nodes inorder
function doVisitFull(visit, node) {
  if(node.left) {
    var v = doVisitFull(visit, node.left)
    if(v) { return v }
  }
  var v = visit(node.key, node.value)
  if(v) { return v }
  if(node.right) {
    return doVisitFull(visit, node.right)
  }
}

//Visit half nodes in order
function doVisitHalf(lo, compare, visit, node) {
  var l = compare(lo, node.key)
  if(l <= 0) {
    if(node.left) {
      var v = doVisitHalf(lo, compare, visit, node.left)
      if(v) { return v }
    }
    var v = visit(node.key, node.value)
    if(v) { return v }
  }
  if(node.right) {
    return doVisitHalf(lo, compare, visit, node.right)
  }
}

//Visit all nodes within a range
function doVisit(lo, hi, compare, visit, node) {
  var l = compare(lo, node.key)
  var h = compare(hi, node.key)
  var v
  if(l <= 0) {
    if(node.left) {
      v = doVisit(lo, hi, compare, visit, node.left)
      if(v) { return v }
    }
    if(h > 0) {
      v = visit(node.key, node.value)
      if(v) { return v }
    }
  }
  if(h > 0 && node.right) {
    return doVisit(lo, hi, compare, visit, node.right)
  }
}


proto.forEach = function rbTreeForEach(visit, lo, hi) {
  if(!this.root) {
    return
  }
  switch(arguments.length) {
    case 1:
      return doVisitFull(visit, this.root)
    break

    case 2:
      return doVisitHalf(lo, this._compare, visit, this.root)
    break

    case 3:
      if(this._compare(lo, hi) >= 0) {
        return
      }
      return doVisit(lo, hi, this._compare, visit, this.root)
    break
  }
}

//First item in list
Object.defineProperty(proto, "begin", {
  get: function() {
    var stack = []
    var n = this.root
    while(n) {
      stack.push(n)
      n = n.left
    }
    return new RedBlackTreeIterator(this, stack)
  }
})

//Last item in list
Object.defineProperty(proto, "end", {
  get: function() {
    var stack = []
    var n = this.root
    while(n) {
      stack.push(n)
      n = n.right
    }
    return new RedBlackTreeIterator(this, stack)
  }
})

//Find the ith item in the tree
proto.at = function(idx) {
  if(idx < 0) {
    return new RedBlackTreeIterator(this, [])
  }
  var n = this.root
  var stack = []
  while(true) {
    stack.push(n)
    if(n.left) {
      if(idx < n.left._count) {
        n = n.left
        continue
      }
      idx -= n.left._count
    }
    if(!idx) {
      return new RedBlackTreeIterator(this, stack)
    }
    idx -= 1
    if(n.right) {
      if(idx >= n.right._count) {
        break
      }
      n = n.right
    } else {
      break
    }
  }
  return new RedBlackTreeIterator(this, [])
}

proto.ge = function(key) {
  var cmp = this._compare
  var n = this.root
  var stack = []
  var last_ptr = 0
  while(n) {
    var d = cmp(key, n.key)
    stack.push(n)
    if(d <= 0) {
      last_ptr = stack.length
    }
    if(d <= 0) {
      n = n.left
    } else {
      n = n.right
    }
  }
  stack.length = last_ptr
  return new RedBlackTreeIterator(this, stack)
}

proto.gt = function(key) {
  var cmp = this._compare
  var n = this.root
  var stack = []
  var last_ptr = 0
  while(n) {
    var d = cmp(key, n.key)
    stack.push(n)
    if(d < 0) {
      last_ptr = stack.length
    }
    if(d < 0) {
      n = n.left
    } else {
      n = n.right
    }
  }
  stack.length = last_ptr
  return new RedBlackTreeIterator(this, stack)
}

proto.lt = function(key) {
  var cmp = this._compare
  var n = this.root
  var stack = []
  var last_ptr = 0
  while(n) {
    var d = cmp(key, n.key)
    stack.push(n)
    if(d > 0) {
      last_ptr = stack.length
    }
    if(d <= 0) {
      n = n.left
    } else {
      n = n.right
    }
  }
  stack.length = last_ptr
  return new RedBlackTreeIterator(this, stack)
}

proto.le = function(key) {
  var cmp = this._compare
  var n = this.root
  var stack = []
  var last_ptr = 0
  while(n) {
    var d = cmp(key, n.key)
    stack.push(n)
    if(d >= 0) {
      last_ptr = stack.length
    }
    if(d < 0) {
      n = n.left
    } else {
      n = n.right
    }
  }
  stack.length = last_ptr
  return new RedBlackTreeIterator(this, stack)
}

//Finds the item with key if it exists
proto.find = function(key) {
  var cmp = this._compare
  var n = this.root
  var stack = []
  while(n) {
    var d = cmp(key, n.key)
    stack.push(n)
    if(d === 0) {
      return new RedBlackTreeIterator(this, stack)
    }
    if(d <= 0) {
      n = n.left
    } else {
      n = n.right
    }
  }
  return new RedBlackTreeIterator(this, [])
}

//Removes item with key from tree
proto.remove = function(key) {
  var iter = this.find(key)
  if(iter) {
    return iter.remove()
  }
  return this
}

//Returns the item at `key`
proto.get = function(key) {
  var cmp = this._compare
  var n = this.root
  while(n) {
    var d = cmp(key, n.key)
    if(d === 0) {
      return n.value
    }
    if(d <= 0) {
      n = n.left
    } else {
      n = n.right
    }
  }
  return
}

//Iterator for red black tree
function RedBlackTreeIterator(tree, stack) {
  this.tree = tree
  this._stack = stack
}

var iproto = RedBlackTreeIterator.prototype

//Test if iterator is valid
Object.defineProperty(iproto, "valid", {
  get: function() {
    return this._stack.length > 0
  }
})

//Node of the iterator
Object.defineProperty(iproto, "node", {
  get: function() {
    if(this._stack.length > 0) {
      return this._stack[this._stack.length-1]
    }
    return null
  },
  enumerable: true
})

//Makes a copy of an iterator
iproto.clone = function() {
  return new RedBlackTreeIterator(this.tree, this._stack.slice())
}

//Swaps two nodes
function swapNode(n, v) {
  n.key = v.key
  n.value = v.value
  n.left = v.left
  n.right = v.right
  n._color = v._color
  n._count = v._count
}

//Fix up a double black node in a tree
function fixDoubleBlack(stack) {
  var n, p, s, z
  for(var i=stack.length-1; i>=0; --i) {
    n = stack[i]
    if(i === 0) {
      n._color = BLACK
      return
    }
    //console.log("visit node:", n.key, i, stack[i].key, stack[i-1].key)
    p = stack[i-1]
    if(p.left === n) {
      //console.log("left child")
      s = p.right
      if(s.right && s.right._color === RED) {
        //console.log("case 1: right sibling child red")
        s = p.right = cloneNode(s)
        z = s.right = cloneNode(s.right)
        p.right = s.left
        s.left = p
        s.right = z
        s._color = p._color
        n._color = BLACK
        p._color = BLACK
        z._color = BLACK
        recount(p)
        recount(s)
        if(i > 1) {
          var pp = stack[i-2]
          if(pp.left === p) {
            pp.left = s
          } else {
            pp.right = s
          }
        }
        stack[i-1] = s
        return
      } else if(s.left && s.left._color === RED) {
        //console.log("case 1: left sibling child red")
        s = p.right = cloneNode(s)
        z = s.left = cloneNode(s.left)
        p.right = z.left
        s.left = z.right
        z.left = p
        z.right = s
        z._color = p._color
        p._color = BLACK
        s._color = BLACK
        n._color = BLACK
        recount(p)
        recount(s)
        recount(z)
        if(i > 1) {
          var pp = stack[i-2]
          if(pp.left === p) {
            pp.left = z
          } else {
            pp.right = z
          }
        }
        stack[i-1] = z
        return
      }
      if(s._color === BLACK) {
        if(p._color === RED) {
          //console.log("case 2: black sibling, red parent", p.right.value)
          p._color = BLACK
          p.right = repaint(RED, s)
          return
        } else {
          //console.log("case 2: black sibling, black parent", p.right.value)
          p.right = repaint(RED, s)
          continue
        }
      } else {
        //console.log("case 3: red sibling")
        s = cloneNode(s)
        p.right = s.left
        s.left = p
        s._color = p._color
        p._color = RED
        recount(p)
        recount(s)
        if(i > 1) {
          var pp = stack[i-2]
          if(pp.left === p) {
            pp.left = s
          } else {
            pp.right = s
          }
        }
        stack[i-1] = s
        stack[i] = p
        if(i+1 < stack.length) {
          stack[i+1] = n
        } else {
          stack.push(n)
        }
        i = i+2
      }
    } else {
      //console.log("right child")
      s = p.left
      if(s.left && s.left._color === RED) {
        //console.log("case 1: left sibling child red", p.value, p._color)
        s = p.left = cloneNode(s)
        z = s.left = cloneNode(s.left)
        p.left = s.right
        s.right = p
        s.left = z
        s._color = p._color
        n._color = BLACK
        p._color = BLACK
        z._color = BLACK
        recount(p)
        recount(s)
        if(i > 1) {
          var pp = stack[i-2]
          if(pp.right === p) {
            pp.right = s
          } else {
            pp.left = s
          }
        }
        stack[i-1] = s
        return
      } else if(s.right && s.right._color === RED) {
        //console.log("case 1: right sibling child red")
        s = p.left = cloneNode(s)
        z = s.right = cloneNode(s.right)
        p.left = z.right
        s.right = z.left
        z.right = p
        z.left = s
        z._color = p._color
        p._color = BLACK
        s._color = BLACK
        n._color = BLACK
        recount(p)
        recount(s)
        recount(z)
        if(i > 1) {
          var pp = stack[i-2]
          if(pp.right === p) {
            pp.right = z
          } else {
            pp.left = z
          }
        }
        stack[i-1] = z
        return
      }
      if(s._color === BLACK) {
        if(p._color === RED) {
          //console.log("case 2: black sibling, red parent")
          p._color = BLACK
          p.left = repaint(RED, s)
          return
        } else {
          //console.log("case 2: black sibling, black parent")
          p.left = repaint(RED, s)
          continue
        }
      } else {
        //console.log("case 3: red sibling")
        s = cloneNode(s)
        p.left = s.right
        s.right = p
        s._color = p._color
        p._color = RED
        recount(p)
        recount(s)
        if(i > 1) {
          var pp = stack[i-2]
          if(pp.right === p) {
            pp.right = s
          } else {
            pp.left = s
          }
        }
        stack[i-1] = s
        stack[i] = p
        if(i+1 < stack.length) {
          stack[i+1] = n
        } else {
          stack.push(n)
        }
        i = i+2
      }
    }
  }
}

//Removes item at iterator from tree
iproto.remove = function() {
  var stack = this._stack
  if(stack.length === 0) {
    return this.tree
  }
  //First copy path to node
  var cstack = new Array(stack.length)
  var n = stack[stack.length-1]
  cstack[cstack.length-1] = new RBNode(n._color, n.key, n.value, n.left, n.right, n._count)
  for(var i=stack.length-2; i>=0; --i) {
    var n = stack[i]
    if(n.left === stack[i+1]) {
      cstack[i] = new RBNode(n._color, n.key, n.value, cstack[i+1], n.right, n._count)
    } else {
      cstack[i] = new RBNode(n._color, n.key, n.value, n.left, cstack[i+1], n._count)
    }
  }

  //Get node
  n = cstack[cstack.length-1]
  //console.log("start remove: ", n.value)

  //If not leaf, then swap with previous node
  if(n.left && n.right) {
    //console.log("moving to leaf")

    //First walk to previous leaf
    var split = cstack.length
    n = n.left
    while(n.right) {
      cstack.push(n)
      n = n.right
    }
    //Copy path to leaf
    var v = cstack[split-1]
    cstack.push(new RBNode(n._color, v.key, v.value, n.left, n.right, n._count))
    cstack[split-1].key = n.key
    cstack[split-1].value = n.value

    //Fix up stack
    for(var i=cstack.length-2; i>=split; --i) {
      n = cstack[i]
      cstack[i] = new RBNode(n._color, n.key, n.value, n.left, cstack[i+1], n._count)
    }
    cstack[split-1].left = cstack[split]
  }
  //console.log("stack=", cstack.map(function(v) { return v.value }))

  //Remove leaf node
  n = cstack[cstack.length-1]
  if(n._color === RED) {
    //Easy case: removing red leaf
    //console.log("RED leaf")
    var p = cstack[cstack.length-2]
    if(p.left === n) {
      p.left = null
    } else if(p.right === n) {
      p.right = null
    }
    cstack.pop()
    for(var i=0; i<cstack.length; ++i) {
      cstack[i]._count--
    }
    return new RedBlackTree(this.tree._compare, cstack[0])
  } else {
    if(n.left || n.right) {
      //Second easy case:  Single child black parent
      //console.log("BLACK single child")
      if(n.left) {
        swapNode(n, n.left)
      } else if(n.right) {
        swapNode(n, n.right)
      }
      //Child must be red, so repaint it black to balance color
      n._color = BLACK
      for(var i=0; i<cstack.length-1; ++i) {
        cstack[i]._count--
      }
      return new RedBlackTree(this.tree._compare, cstack[0])
    } else if(cstack.length === 1) {
      //Third easy case: root
      //console.log("ROOT")
      return new RedBlackTree(this.tree._compare, null)
    } else {
      //Hard case: Repaint n, and then do some nasty stuff
      //console.log("BLACK leaf no children")
      for(var i=0; i<cstack.length; ++i) {
        cstack[i]._count--
      }
      var parent = cstack[cstack.length-2]
      fixDoubleBlack(cstack)
      //Fix up links
      if(parent.left === n) {
        parent.left = null
      } else {
        parent.right = null
      }
    }
  }
  return new RedBlackTree(this.tree._compare, cstack[0])
}

//Returns key
Object.defineProperty(iproto, "key", {
  get: function() {
    if(this._stack.length > 0) {
      return this._stack[this._stack.length-1].key
    }
    return
  },
  enumerable: true
})

//Returns value
Object.defineProperty(iproto, "value", {
  get: function() {
    if(this._stack.length > 0) {
      return this._stack[this._stack.length-1].value
    }
    return
  },
  enumerable: true
})


//Returns the position of this iterator in the sorted list
Object.defineProperty(iproto, "index", {
  get: function() {
    var idx = 0
    var stack = this._stack
    if(stack.length === 0) {
      var r = this.tree.root
      if(r) {
        return r._count
      }
      return 0
    } else if(stack[stack.length-1].left) {
      idx = stack[stack.length-1].left._count
    }
    for(var s=stack.length-2; s>=0; --s) {
      if(stack[s+1] === stack[s].right) {
        ++idx
        if(stack[s].left) {
          idx += stack[s].left._count
        }
      }
    }
    return idx
  },
  enumerable: true
})

//Advances iterator to next element in list
iproto.next = function() {
  var stack = this._stack
  if(stack.length === 0) {
    return
  }
  var n = stack[stack.length-1]
  if(n.right) {
    n = n.right
    while(n) {
      stack.push(n)
      n = n.left
    }
  } else {
    stack.pop()
    while(stack.length > 0 && stack[stack.length-1].right === n) {
      n = stack[stack.length-1]
      stack.pop()
    }
  }
}

//Checks if iterator is at end of tree
Object.defineProperty(iproto, "hasNext", {
  get: function() {
    var stack = this._stack
    if(stack.length === 0) {
      return false
    }
    if(stack[stack.length-1].right) {
      return true
    }
    for(var s=stack.length-1; s>0; --s) {
      if(stack[s-1].left === stack[s]) {
        return true
      }
    }
    return false
  }
})

//Update value
iproto.update = function(value) {
  var stack = this._stack
  if(stack.length === 0) {
    throw new Error("Can't update empty node!")
  }
  var cstack = new Array(stack.length)
  var n = stack[stack.length-1]
  cstack[cstack.length-1] = new RBNode(n._color, n.key, value, n.left, n.right, n._count)
  for(var i=stack.length-2; i>=0; --i) {
    n = stack[i]
    if(n.left === stack[i+1]) {
      cstack[i] = new RBNode(n._color, n.key, n.value, cstack[i+1], n.right, n._count)
    } else {
      cstack[i] = new RBNode(n._color, n.key, n.value, n.left, cstack[i+1], n._count)
    }
  }
  return new RedBlackTree(this.tree._compare, cstack[0])
}

//Moves iterator backward one element
iproto.prev = function() {
  var stack = this._stack
  if(stack.length === 0) {
    return
  }
  var n = stack[stack.length-1]
  if(n.left) {
    n = n.left
    while(n) {
      stack.push(n)
      n = n.right
    }
  } else {
    stack.pop()
    while(stack.length > 0 && stack[stack.length-1].left === n) {
      n = stack[stack.length-1]
      stack.pop()
    }
  }
}

//Checks if iterator is at start of tree
Object.defineProperty(iproto, "hasPrev", {
  get: function() {
    var stack = this._stack
    if(stack.length === 0) {
      return false
    }
    if(stack[stack.length-1].left) {
      return true
    }
    for(var s=stack.length-1; s>0; --s) {
      if(stack[s-1].right === stack[s]) {
        return true
      }
    }
    return false
  }
})

//Default comparison function
function defaultCompare(a, b) {
  if(a < b) {
    return -1
  }
  if(a > b) {
    return 1
  }
  return 0
}

//Build a tree
function createRBTree(compare) {
  return new RedBlackTree(compare || defaultCompare, null)
}
},{}],5:[function(require,module,exports){
exports.read = function (buffer, offset, isLE, mLen, nBytes) {
  var e, m
  var eLen = nBytes * 8 - mLen - 1
  var eMax = (1 << eLen) - 1
  var eBias = eMax >> 1
  var nBits = -7
  var i = isLE ? (nBytes - 1) : 0
  var d = isLE ? -1 : 1
  var s = buffer[offset + i]

  i += d

  e = s & ((1 << (-nBits)) - 1)
  s >>= (-nBits)
  nBits += eLen
  for (; nBits > 0; e = e * 256 + buffer[offset + i], i += d, nBits -= 8) {}

  m = e & ((1 << (-nBits)) - 1)
  e >>= (-nBits)
  nBits += mLen
  for (; nBits > 0; m = m * 256 + buffer[offset + i], i += d, nBits -= 8) {}

  if (e === 0) {
    e = 1 - eBias
  } else if (e === eMax) {
    return m ? NaN : ((s ? -1 : 1) * Infinity)
  } else {
    m = m + Math.pow(2, mLen)
    e = e - eBias
  }
  return (s ? -1 : 1) * m * Math.pow(2, e - mLen)
}

exports.write = function (buffer, value, offset, isLE, mLen, nBytes) {
  var e, m, c
  var eLen = nBytes * 8 - mLen - 1
  var eMax = (1 << eLen) - 1
  var eBias = eMax >> 1
  var rt = (mLen === 23 ? Math.pow(2, -24) - Math.pow(2, -77) : 0)
  var i = isLE ? 0 : (nBytes - 1)
  var d = isLE ? 1 : -1
  var s = value < 0 || (value === 0 && 1 / value < 0) ? 1 : 0

  value = Math.abs(value)

  if (isNaN(value) || value === Infinity) {
    m = isNaN(value) ? 1 : 0
    e = eMax
  } else {
    e = Math.floor(Math.log(value) / Math.LN2)
    if (value * (c = Math.pow(2, -e)) < 1) {
      e--
      c *= 2
    }
    if (e + eBias >= 1) {
      value += rt / c
    } else {
      value += rt * Math.pow(2, 1 - eBias)
    }
    if (value * c >= 2) {
      e++
      c /= 2
    }

    if (e + eBias >= eMax) {
      m = 0
      e = eMax
    } else if (e + eBias >= 1) {
      m = (value * c - 1) * Math.pow(2, mLen)
      e = e + eBias
    } else {
      m = value * Math.pow(2, eBias - 1) * Math.pow(2, mLen)
      e = 0
    }
  }

  for (; mLen >= 8; buffer[offset + i] = m & 0xff, i += d, m /= 256, mLen -= 8) {}

  e = (e << mLen) | m
  eLen += mLen
  for (; eLen > 0; buffer[offset + i] = e & 0xff, i += d, e /= 256, eLen -= 8) {}

  buffer[offset + i - d] |= s * 128
}

},{}],6:[function(require,module,exports){
if (typeof Object.create === 'function') {
  // implementation from standard node.js 'util' module
  module.exports = function inherits(ctor, superCtor) {
    ctor.super_ = superCtor
    ctor.prototype = Object.create(superCtor.prototype, {
      constructor: {
        value: ctor,
        enumerable: false,
        writable: true,
        configurable: true
      }
    });
  };
} else {
  // old school shim for old browsers
  module.exports = function inherits(ctor, superCtor) {
    ctor.super_ = superCtor
    var TempCtor = function () {}
    TempCtor.prototype = superCtor.prototype
    ctor.prototype = new TempCtor()
    ctor.prototype.constructor = ctor
  }
}

},{}],7:[function(require,module,exports){

/**
 * isArray
 */

var isArray = Array.isArray;

/**
 * toString
 */

var str = Object.prototype.toString;

/**
 * Whether or not the given `val`
 * is an array.
 *
 * example:
 *
 *        isArray([]);
 *        // > true
 *        isArray(arguments);
 *        // > false
 *        isArray('');
 *        // > false
 *
 * @param {mixed} val
 * @return {bool}
 */

module.exports = isArray || function (val) {
  return !! val && '[object Array]' == str.call(val);
};

},{}],8:[function(require,module,exports){
/**
 * Determine if an object is Buffer
 *
 * Author:   Feross Aboukhadijeh <feross@feross.org> <http://feross.org>
 * License:  MIT
 *
 * `npm install is-buffer`
 */

module.exports = function (obj) {
  return !!(obj != null &&
    (obj._isBuffer || // For Safari 5-7 (missing Object.prototype.constructor)
      (obj.constructor &&
      typeof obj.constructor.isBuffer === 'function' &&
      obj.constructor.isBuffer(obj))
    ))
}

},{}],9:[function(require,module,exports){
(function (process,global,Buffer){
var inherits          = require('inherits')
  , AbstractLevelDOWN = require('abstract-leveldown').AbstractLevelDOWN
  , AbstractIterator  = require('abstract-leveldown').AbstractIterator
  , ltgt              = require('ltgt')
  , setImmediate      = global.setImmediate || process.nextTick
  , createRBT = require('functional-red-black-tree')
  , globalStore       = {}

function toKey (key) {
  return typeof key == 'string' ? '$' + key : JSON.stringify(key)
}

function gt(value) {
  return ltgt.compare(value, this._end) > 0
}

function gte(value) {
  return ltgt.compare(value, this._end) >= 0
}

function lt(value) {
  return ltgt.compare(value, this._end) < 0
}

function lte(value) {
  return ltgt.compare(value, this._end) <= 0
}


function MemIterator (db, options) {
  AbstractIterator.call(this, db)
  this._limit   = options.limit

  if (this._limit === -1)
    this._limit = Infinity

  var tree = db._store[db._location];

  this.keyAsBuffer = options.keyAsBuffer !== false
  this.valueAsBuffer = options.valueAsBuffer !== false
  this._reverse   = options.reverse
  this._options = options
  this._done = 0

  if (!this._reverse) {
    this._incr = 'next';
    this._start = ltgt.lowerBound(options);
    this._end = ltgt.upperBound(options)

    if (typeof this._start === 'undefined')
      this._tree = tree.begin;
    else if (ltgt.lowerBoundInclusive(options))
      this._tree = tree.ge(this._start);
    else
      this._tree = tree.gt(this._start);

    if (this._end) {
      if (ltgt.upperBoundInclusive(options))
        this._test = lte
      else
        this._test = lt
    }

  } else {
    this._incr = 'prev';
    this._start = ltgt.upperBound(options)
    this._end = ltgt.lowerBound(options)

    if (typeof this._start === 'undefined')
      this._tree = tree.end;
    else if (ltgt.upperBoundInclusive(options))
      this._tree = tree.le(this._start)
    else
      this._tree = tree.lt(this._start)

    if (this._end) {
      if (ltgt.lowerBoundInclusive(options))
        this._test = gte
      else
        this._test = gt
    }

  }

}

inherits(MemIterator, AbstractIterator)

MemIterator.prototype._next = function (callback) {
  var key
    , value

  if (this._done++ >= this._limit)
    return setImmediate(callback)

  if (!this._tree.valid)
    return setImmediate(callback)

  key = this._tree.key
  value = this._tree.value

  if (!this._test(key))
    return setImmediate(callback)

  if (this.keyAsBuffer)
    key = new Buffer(key)

  if (this.valueAsBuffer)
    value = new Buffer(value)

  this._tree[this._incr]()

  setImmediate(function callNext() {
    callback(null, key, value)
  })
}

MemIterator.prototype._test = function () {return true}

function MemDOWN (location) {
  if (!(this instanceof MemDOWN))
    return new MemDOWN(location)

  AbstractLevelDOWN.call(this, typeof location == 'string' ? location : '')

  this._location = this.location ? toKey(this.location) : '_tree'
  this._store = this.location ? globalStore: this
  this._store[this._location] = this._store[this._location] || createRBT()
}

MemDOWN.clearGlobalStore = function (strict) {
  if (strict) {
    Object.keys(globalStore).forEach(function (key) {
      delete globalStore[key];
    })
  } else {
    globalStore = {}
  }
}

inherits(MemDOWN, AbstractLevelDOWN)

MemDOWN.prototype._open = function (options, callback) {
  var self = this
  setImmediate(function callNext() { callback(null, self) })
}

MemDOWN.prototype._put = function (key, value, options, callback) {
  if (typeof value === 'undefined' || value === null) value = ''
  this._store[this._location] = this._store[this._location].remove(key).insert(key, value)
  setImmediate(callback)
}

MemDOWN.prototype._get = function (key, options, callback) {
  var value = this._store[this._location].get(key)

  if (value === undefined) {
    // 'NotFound' error, consistent with LevelDOWN API
    var err = new Error('NotFound')
    return setImmediate(function callNext() { callback(err) })
  }

  if (options.asBuffer !== false && !this._isBuffer(value))
    value = new Buffer(String(value))

  setImmediate(function callNext () {
    callback(null, value)
  })

}

MemDOWN.prototype._del = function (key, options, callback) {
  this._store[this._location] = this._store[this._location].remove(key)
  setImmediate(callback)
}

MemDOWN.prototype._batch = function (array, options, callback) {
  var err
    , i = -1
    , key
    , value
    , len = array.length
    , tree = this._store[this._location]

  while (++i < len) {
    if (!array[i])
      continue;

    key = this._isBuffer(array[i].key) ? array[i].key : String(array[i].key)
    err = this._checkKey(key, 'key')
    if (err)
      return setImmediate(function errorCall() { callback(err) })

    tree = tree.remove(array[i].key)
    // we always remove as insert doesn't replace

    if (array[i].type === 'put') {

      value = this._isBuffer(array[i].value) ? array[i].value : String(array[i].value)
      err = this._checkKey(value, 'value')

      if (err)
        return setImmediate(function errorCall() { callback(err) })

      tree = tree.insert(key, value)
    }

  }

  this._store[this._location] = tree;

  setImmediate(callback)
}

MemDOWN.prototype._iterator = function (options) {
  return new MemIterator(this, options)
}

MemDOWN.prototype._isBuffer = function (obj) {
  return Buffer.isBuffer(obj)
}

MemDOWN.destroy = function (name, callback) {
  var key = toKey(name)

  if (key in globalStore)
    delete globalStore[key]

  setImmediate(callback)
}

module.exports = MemDOWN

}).call(this,require('_process'),typeof global !== "undefined" ? global : typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {},require("buffer").Buffer)
},{"_process":16,"abstract-leveldown":13,"buffer":3,"functional-red-black-tree":4,"inherits":6,"ltgt":15}],10:[function(require,module,exports){
(function (process){
/* Copyright (c) 2013 Rod Vagg, MIT License */

function AbstractChainedBatch (db) {
  this._db         = db
  this._operations = []
  this._written    = false
}

AbstractChainedBatch.prototype._checkWritten = function () {
  if (this._written)
    throw new Error('write() already called on this batch')
}

AbstractChainedBatch.prototype.put = function (key, value) {
  this._checkWritten()

  var err = this._db._checkKey(key, 'key', this._db._isBuffer)
  if (err)
    throw err

  if (!this._db._isBuffer(key)) key = String(key)
  if (!this._db._isBuffer(value)) value = String(value)

  if (typeof this._put == 'function' )
    this._put(key, value)
  else
    this._operations.push({ type: 'put', key: key, value: value })

  return this
}

AbstractChainedBatch.prototype.del = function (key) {
  this._checkWritten()

  var err = this._db._checkKey(key, 'key', this._db._isBuffer)
  if (err) throw err

  if (!this._db._isBuffer(key)) key = String(key)

  if (typeof this._del == 'function' )
    this._del(key)
  else
    this._operations.push({ type: 'del', key: key })

  return this
}

AbstractChainedBatch.prototype.clear = function () {
  this._checkWritten()

  this._operations = []

  if (typeof this._clear == 'function' )
    this._clear()

  return this
}

AbstractChainedBatch.prototype.write = function (options, callback) {
  this._checkWritten()

  if (typeof options == 'function')
    callback = options
  if (typeof callback != 'function')
    throw new Error('write() requires a callback argument')
  if (typeof options != 'object')
    options = {}

  this._written = true

  if (typeof this._write == 'function' )
    return this._write(callback)

  if (typeof this._db._batch == 'function')
    return this._db._batch(this._operations, options, callback)

  process.nextTick(callback)
}

module.exports = AbstractChainedBatch
}).call(this,require('_process'))
},{"_process":16}],11:[function(require,module,exports){
(function (process){
/* Copyright (c) 2013 Rod Vagg, MIT License */

function AbstractIterator (db) {
  this.db = db
  this._ended = false
  this._nexting = false
}

AbstractIterator.prototype.next = function (callback) {
  var self = this

  if (typeof callback != 'function')
    throw new Error('next() requires a callback argument')

  if (self._ended)
    return callback(new Error('cannot call next() after end()'))
  if (self._nexting)
    return callback(new Error('cannot call next() before previous next() has completed'))

  self._nexting = true
  if (typeof self._next == 'function') {
    return self._next(function () {
      self._nexting = false
      callback.apply(null, arguments)
    })
  }

  process.nextTick(function () {
    self._nexting = false
    callback()
  })
}

AbstractIterator.prototype.end = function (callback) {
  if (typeof callback != 'function')
    throw new Error('end() requires a callback argument')

  if (this._ended)
    return callback(new Error('end() already called on iterator'))

  this._ended = true

  if (typeof this._end == 'function')
    return this._end(callback)

  process.nextTick(callback)
}

module.exports = AbstractIterator

}).call(this,require('_process'))
},{"_process":16}],12:[function(require,module,exports){
(function (Buffer,process){
/* Copyright (c) 2013 Rod Vagg, MIT License */

var xtend                = require('xtend')
  , AbstractIterator     = require('./abstract-iterator')
  , AbstractChainedBatch = require('./abstract-chained-batch')

function AbstractLevelDOWN (location) {
  if (!arguments.length || location === undefined)
    throw new Error('constructor requires at least a location argument')

  if (typeof location != 'string')
    throw new Error('constructor requires a location string argument')

  this.location = location
  this.status = 'new'
}

AbstractLevelDOWN.prototype.open = function (options, callback) {
  var self      = this
    , oldStatus = this.status

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('open() requires a callback argument')

  if (typeof options != 'object')
    options = {}

  options.createIfMissing = options.createIfMissing != false
  options.errorIfExists = !!options.errorIfExists

  if (typeof this._open == 'function') {
    this.status = 'opening'
    this._open(options, function (err) {
      if (err) {
        self.status = oldStatus
        return callback(err)
      }
      self.status = 'open'
      callback()
    })
  } else {
    this.status = 'open'
    process.nextTick(callback)
  }
}

AbstractLevelDOWN.prototype.close = function (callback) {
  var self      = this
    , oldStatus = this.status

  if (typeof callback != 'function')
    throw new Error('close() requires a callback argument')

  if (typeof this._close == 'function') {
    this.status = 'closing'
    this._close(function (err) {
      if (err) {
        self.status = oldStatus
        return callback(err)
      }
      self.status = 'closed'
      callback()
    })
  } else {
    this.status = 'closed'
    process.nextTick(callback)
  }
}

AbstractLevelDOWN.prototype.get = function (key, options, callback) {
  var err

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('get() requires a callback argument')

  if (err = this._checkKey(key, 'key', this._isBuffer))
    return callback(err)

  if (!this._isBuffer(key))
    key = String(key)

  if (typeof options != 'object')
    options = {}

  options.asBuffer = options.asBuffer != false

  if (typeof this._get == 'function')
    return this._get(key, options, callback)

  process.nextTick(function () { callback(new Error('NotFound')) })
}

AbstractLevelDOWN.prototype.put = function (key, value, options, callback) {
  var err

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('put() requires a callback argument')

  if (err = this._checkKey(key, 'key', this._isBuffer))
    return callback(err)

  if (!this._isBuffer(key))
    key = String(key)

  // coerce value to string in node, don't touch it in browser
  // (indexeddb can store any JS type)
  if (value != null && !this._isBuffer(value) && !process.browser)
    value = String(value)

  if (typeof options != 'object')
    options = {}

  if (typeof this._put == 'function')
    return this._put(key, value, options, callback)

  process.nextTick(callback)
}

AbstractLevelDOWN.prototype.del = function (key, options, callback) {
  var err

  if (typeof options == 'function')
    callback = options

  if (typeof callback != 'function')
    throw new Error('del() requires a callback argument')

  if (err = this._checkKey(key, 'key', this._isBuffer))
    return callback(err)

  if (!this._isBuffer(key))
    key = String(key)

  if (typeof options != 'object')
    options = {}

  if (typeof this._del == 'function')
    return this._del(key, options, callback)

  process.nextTick(callback)
}

AbstractLevelDOWN.prototype.batch = function (array, options, callback) {
  if (!arguments.length)
    return this._chainedBatch()

  if (typeof options == 'function')
    callback = options

  if (typeof array == 'function')
    callback = array

  if (typeof callback != 'function')
    throw new Error('batch(array) requires a callback argument')

  if (!Array.isArray(array))
    return callback(new Error('batch(array) requires an array argument'))

  if (!options || typeof options != 'object')
    options = {}

  var i = 0
    , l = array.length
    , e
    , err

  for (; i < l; i++) {
    e = array[i]
    if (typeof e != 'object')
      continue

    if (err = this._checkKey(e.type, 'type', this._isBuffer))
      return callback(err)

    if (err = this._checkKey(e.key, 'key', this._isBuffer))
      return callback(err)
  }

  if (typeof this._batch == 'function')
    return this._batch(array, options, callback)

  process.nextTick(callback)
}

//TODO: remove from here, not a necessary primitive
AbstractLevelDOWN.prototype.approximateSize = function (start, end, callback) {
  if (   start == null
      || end == null
      || typeof start == 'function'
      || typeof end == 'function') {
    throw new Error('approximateSize() requires valid `start`, `end` and `callback` arguments')
  }

  if (typeof callback != 'function')
    throw new Error('approximateSize() requires a callback argument')

  if (!this._isBuffer(start))
    start = String(start)

  if (!this._isBuffer(end))
    end = String(end)

  if (typeof this._approximateSize == 'function')
    return this._approximateSize(start, end, callback)

  process.nextTick(function () {
    callback(null, 0)
  })
}

AbstractLevelDOWN.prototype._setupIteratorOptions = function (options) {
  var self = this

  options = xtend(options)

  ;[ 'start', 'end', 'gt', 'gte', 'lt', 'lte' ].forEach(function (o) {
    if (options[o] && self._isBuffer(options[o]) && options[o].length === 0)
      delete options[o]
  })

  options.reverse = !!options.reverse
  options.keys = options.keys != false
  options.values = options.values != false
  options.limit = 'limit' in options ? options.limit : -1
  options.keyAsBuffer = options.keyAsBuffer != false
  options.valueAsBuffer = options.valueAsBuffer != false

  return options
}

AbstractLevelDOWN.prototype.iterator = function (options) {
  if (typeof options != 'object')
    options = {}

  options = this._setupIteratorOptions(options)

  if (typeof this._iterator == 'function')
    return this._iterator(options)

  return new AbstractIterator(this)
}

AbstractLevelDOWN.prototype._chainedBatch = function () {
  return new AbstractChainedBatch(this)
}

AbstractLevelDOWN.prototype._isBuffer = function (obj) {
  return Buffer.isBuffer(obj)
}

AbstractLevelDOWN.prototype._checkKey = function (obj, type) {

  if (obj === null || obj === undefined)
    return new Error(type + ' cannot be `null` or `undefined`')

  if (this._isBuffer(obj)) {
    if (obj.length === 0)
      return new Error(type + ' cannot be an empty Buffer')
  } else if (String(obj) === '')
    return new Error(type + ' cannot be an empty String')
}

module.exports = AbstractLevelDOWN

}).call(this,{"isBuffer":require("../../../is-buffer/index.js")},require('_process'))
},{"../../../is-buffer/index.js":8,"./abstract-chained-batch":10,"./abstract-iterator":11,"_process":16,"xtend":17}],13:[function(require,module,exports){
exports.AbstractLevelDOWN    = require('./abstract-leveldown')
exports.AbstractIterator     = require('./abstract-iterator')
exports.AbstractChainedBatch = require('./abstract-chained-batch')
exports.isLevelDOWN          = require('./is-leveldown')

},{"./abstract-chained-batch":10,"./abstract-iterator":11,"./abstract-leveldown":12,"./is-leveldown":14}],14:[function(require,module,exports){
var AbstractLevelDOWN = require('./abstract-leveldown')

function isLevelDOWN (db) {
  if (!db || typeof db !== 'object')
    return false
  return Object.keys(AbstractLevelDOWN.prototype).filter(function (name) {
    // TODO remove approximateSize check when method is gone
    return name[0] != '_' && name != 'approximateSize'
  }).every(function (name) {
    return typeof db[name] == 'function'
  })
}

module.exports = isLevelDOWN

},{"./abstract-leveldown":12}],15:[function(require,module,exports){
(function (Buffer){

exports.compare = function (a, b) {

  if(Buffer.isBuffer(a)) {
    var l = Math.min(a.length, b.length)
    for(var i = 0; i < l; i++) {
      var cmp = a[i] - b[i]
      if(cmp) return cmp
    }
    return a.length - b.length
  }

  return a < b ? -1 : a > b ? 1 : 0
}

function has(obj, key) {
  return Object.hasOwnProperty.call(obj, key)
}

// to be compatible with the current abstract-leveldown tests
// nullish or empty strings.
// I could use !!val but I want to permit numbers and booleans,
// if possible.

function isDef (val) {
  return val != null && val !== ''
}

var lowerBound = exports.lowerBound = function (range) {
  return (
      isDef(range.gt)                      ? range.gt
    : isDef(range.gte)                     ? range.gte
    : isDef(range.min)                     ? range.min
    : isDef(range.start) && !range.reverse ? range.start
    : isDef(range.end) && range.reverse    ? range.end
    :                                        undefined
  )
}

exports.lowerBoundInclusive = function (range) {
  return isDef(range.gt) ? false : true
}

exports.upperBoundInclusive =
  function (range) {
    return isDef(range.lt) ? false : true
  }

var lowerBoundExclusive = exports.lowerBoundExclusive =
  function (range) {
    return isDef(range.gt) ? true : false
  }

var upperBoundExclusive = exports.upperBoundExclusive =
  function (range) {
    return isDef(range.lt) ? true : false
  }

var upperBound = exports.upperBound = function (range) {
  return (
      isDef(range.lt)                     ? range.lt
    : isDef(range.lte)                    ? range.lte
    : isDef(range.max)                    ? range.max
    : isDef(range.start) && range.reverse ? range.start
    : isDef(range.end) && !range.reverse  ? range.end
    :                                       undefined
  )
}


exports.contains = function (range, key, compare) {
  compare = compare || exports.compare

  var lb = lowerBound(range)
  if(isDef(lb)) {
    var cmp = compare(key, lb)
    if(cmp < 0 || (cmp === 0 && lowerBoundExclusive(range)))
      return false
  }

  var ub = upperBound(range)
  if(isDef(ub)) {
    var cmp = compare(key, ub)
    if(cmp > 0 || (cmp === 0) && upperBoundExclusive(range))
      return false
  }

  return true
}

exports.filter = function (range, compare) {
  return function (key) {
    return exports.contains(range, key, compare)
  }
}

}).call(this,{"isBuffer":require("../../../is-buffer/index.js")})
},{"../../../is-buffer/index.js":8}],16:[function(require,module,exports){
// shim for using process in browser

var process = module.exports = {};
var queue = [];
var draining = false;
var currentQueue;
var queueIndex = -1;

function cleanUpNextTick() {
    draining = false;
    if (currentQueue.length) {
        queue = currentQueue.concat(queue);
    } else {
        queueIndex = -1;
    }
    if (queue.length) {
        drainQueue();
    }
}

function drainQueue() {
    if (draining) {
        return;
    }
    var timeout = setTimeout(cleanUpNextTick);
    draining = true;

    var len = queue.length;
    while(len) {
        currentQueue = queue;
        queue = [];
        while (++queueIndex < len) {
            if (currentQueue) {
                currentQueue[queueIndex].run();
            }
        }
        queueIndex = -1;
        len = queue.length;
    }
    currentQueue = null;
    draining = false;
    clearTimeout(timeout);
}

process.nextTick = function (fun) {
    var args = new Array(arguments.length - 1);
    if (arguments.length > 1) {
        for (var i = 1; i < arguments.length; i++) {
            args[i - 1] = arguments[i];
        }
    }
    queue.push(new Item(fun, args));
    if (queue.length === 1 && !draining) {
        setTimeout(drainQueue, 0);
    }
};

// v8 likes predictible objects
function Item(fun, array) {
    this.fun = fun;
    this.array = array;
}
Item.prototype.run = function () {
    this.fun.apply(null, this.array);
};
process.title = 'browser';
process.browser = true;
process.env = {};
process.argv = [];
process.version = ''; // empty string to avoid regexp issues
process.versions = {};

function noop() {}

process.on = noop;
process.addListener = noop;
process.once = noop;
process.off = noop;
process.removeListener = noop;
process.removeAllListeners = noop;
process.emit = noop;

process.binding = function (name) {
    throw new Error('process.binding is not supported');
};

process.cwd = function () { return '/' };
process.chdir = function (dir) {
    throw new Error('process.chdir is not supported');
};
process.umask = function() { return 0; };

},{}],17:[function(require,module,exports){
module.exports = extend

var hasOwnProperty = Object.prototype.hasOwnProperty;

function extend() {
    var target = {}

    for (var i = 0; i < arguments.length; i++) {
        var source = arguments[i]

        for (var key in source) {
            if (hasOwnProperty.call(source, key)) {
                target[key] = source[key]
            }
        }
    }

    return target
}

},{}]},{},[1]);

'use strict';

System.register('common/data/sb-service/test/mock/MockClient.js', [], function (_export, _context) {
	var _createClass, MockClient;

	function _classCallCheck(instance, Constructor) {
		if (!(instance instanceof Constructor)) {
			throw new TypeError("Cannot call a class as a function");
		}
	}

	return {
		setters: [],
		execute: function () {
			_createClass = function () {
				function defineProperties(target, props) {
					for (var i = 0; i < props.length; i++) {
						var descriptor = props[i];
						descriptor.enumerable = descriptor.enumerable || false;
						descriptor.configurable = true;
						if ("value" in descriptor) descriptor.writable = true;
						Object.defineProperty(target, descriptor.key, descriptor);
					}
				}

				return function (Constructor, protoProps, staticProps) {
					if (protoProps) defineProperties(Constructor.prototype, protoProps);
					if (staticProps) defineProperties(Constructor, staticProps);
					return Constructor;
				};
			}();

			_export('MockClient', MockClient = function () {
				function MockClient(serviceComponent) {
					_classCallCheck(this, MockClient);

					this.serviceComponent = serviceComponent;
				}

				_createClass(MockClient, [{
					key: 'read',
					value: function read(prefix, reader, uid) {
						this.serviceComponent.fire('sb-read', { prefix: prefix, reader: reader, uid: uid });
						return Promise.resolve();
					}
				}, {
					key: 'load',
					value: function load(prefix, loader, uid, context) {
						this.serviceComponent.fire('sb-load', { prefix: prefix, loader: loader, uid: uid, context: context });
						return Promise.resolve();
					}
				}, {
					key: 'save',
					value: function save(prefix, saver, model) {
						this.serviceComponent.fire('sb-save', { prefix: prefix, saver: saver, model: model });
						return Promise.resolve();
					}
				}, {
					key: 'md',
					value: function md(prefix, type, fullNames) {
						this.serviceComponent.fire('sb-md', { prefix: prefix, mdType: type, mdItems: fullNames });
						return Promise.resolve();
					}
				}]);

				return MockClient;
			}());

			_export('MockClient', MockClient);
		}
	};
});
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIk1vY2tDbGllbnQuanMiXSwibmFtZXMiOlsiTW9ja0NsaWVudCIsInNlcnZpY2VDb21wb25lbnQiLCJwcmVmaXgiLCJyZWFkZXIiLCJ1aWQiLCJmaXJlIiwiUHJvbWlzZSIsInJlc29sdmUiLCJsb2FkZXIiLCJjb250ZXh0Iiwic2F2ZXIiLCJtb2RlbCIsInR5cGUiLCJmdWxsTmFtZXMiLCJtZFR5cGUiLCJtZEl0ZW1zIl0sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozt5QkFBYUEsVTtBQUVaLHdCQUFZQyxnQkFBWixFQUE4QjtBQUFBOztBQUM3QixVQUFLQSxnQkFBTCxHQUF3QkEsZ0JBQXhCO0FBQ0E7Ozs7MEJBRUlDLE0sRUFBUUMsTSxFQUFRQyxHLEVBQUs7QUFDekIsV0FBS0gsZ0JBQUwsQ0FBc0JJLElBQXRCLENBQTJCLFNBQTNCLEVBQXNDLEVBQUNILFFBQVFBLE1BQVQsRUFBaUJDLFFBQVFBLE1BQXpCLEVBQWlDQyxLQUFLQSxHQUF0QyxFQUF0QztBQUNBLGFBQU9FLFFBQVFDLE9BQVIsRUFBUDtBQUNBOzs7MEJBRUlMLE0sRUFBUU0sTSxFQUFRSixHLEVBQUtLLE8sRUFBUztBQUNsQyxXQUFLUixnQkFBTCxDQUFzQkksSUFBdEIsQ0FBMkIsU0FBM0IsRUFBc0MsRUFBQ0gsUUFBUUEsTUFBVCxFQUFpQk0sUUFBUUEsTUFBekIsRUFBaUNKLEtBQUtBLEdBQXRDLEVBQTJDSyxTQUFTQSxPQUFwRCxFQUF0QztBQUNBLGFBQU9ILFFBQVFDLE9BQVIsRUFBUDtBQUNBOzs7MEJBRUlMLE0sRUFBUVEsSyxFQUFPQyxLLEVBQU87QUFDMUIsV0FBS1YsZ0JBQUwsQ0FBc0JJLElBQXRCLENBQTJCLFNBQTNCLEVBQXNDLEVBQUNILFFBQVFBLE1BQVQsRUFBaUJRLE9BQU9BLEtBQXhCLEVBQStCQyxPQUFPQSxLQUF0QyxFQUF0QztBQUNBLGFBQU9MLFFBQVFDLE9BQVIsRUFBUDtBQUNBOzs7d0JBRUVMLE0sRUFBUVUsSSxFQUFNQyxTLEVBQVc7QUFDM0IsV0FBS1osZ0JBQUwsQ0FBc0JJLElBQXRCLENBQTJCLE9BQTNCLEVBQW9DLEVBQUNILFFBQVFBLE1BQVQsRUFBaUJZLFFBQVFGLElBQXpCLEVBQStCRyxTQUFTRixTQUF4QyxFQUFwQztBQUNBLGFBQU9QLFFBQVFDLE9BQVIsRUFBUDtBQUNBIiwiZmlsZSI6Ik1vY2tDbGllbnQuanMiLCJzb3VyY2VzQ29udGVudCI6WyJleHBvcnQgY2xhc3MgTW9ja0NsaWVudCB7XG5cblx0Y29uc3RydWN0b3Ioc2VydmljZUNvbXBvbmVudCkge1xuXHRcdHRoaXMuc2VydmljZUNvbXBvbmVudCA9IHNlcnZpY2VDb21wb25lbnQ7XG5cdH1cblxuXHRyZWFkKHByZWZpeCwgcmVhZGVyLCB1aWQpIHtcblx0XHR0aGlzLnNlcnZpY2VDb21wb25lbnQuZmlyZSgnc2ItcmVhZCcsIHtwcmVmaXg6IHByZWZpeCwgcmVhZGVyOiByZWFkZXIsIHVpZDogdWlkfSApO1xuXHRcdHJldHVybiBQcm9taXNlLnJlc29sdmUoKTtcblx0fVxuXG5cdGxvYWQocHJlZml4LCBsb2FkZXIsIHVpZCwgY29udGV4dCkge1xuXHRcdHRoaXMuc2VydmljZUNvbXBvbmVudC5maXJlKCdzYi1sb2FkJywge3ByZWZpeDogcHJlZml4LCBsb2FkZXI6IGxvYWRlciwgdWlkOiB1aWQsIGNvbnRleHQ6IGNvbnRleHR9ICk7XG5cdFx0cmV0dXJuIFByb21pc2UucmVzb2x2ZSgpO1xuXHR9XG5cblx0c2F2ZShwcmVmaXgsIHNhdmVyLCBtb2RlbCkge1xuXHRcdHRoaXMuc2VydmljZUNvbXBvbmVudC5maXJlKCdzYi1zYXZlJywge3ByZWZpeDogcHJlZml4LCBzYXZlcjogc2F2ZXIsIG1vZGVsOiBtb2RlbH0gKTtcblx0XHRyZXR1cm4gUHJvbWlzZS5yZXNvbHZlKCk7XG5cdH1cblxuXHRtZChwcmVmaXgsIHR5cGUsIGZ1bGxOYW1lcykge1xuXHRcdHRoaXMuc2VydmljZUNvbXBvbmVudC5maXJlKCdzYi1tZCcsIHtwcmVmaXg6IHByZWZpeCwgbWRUeXBlOiB0eXBlLCBtZEl0ZW1zOiBmdWxsTmFtZXN9ICk7XG5cdFx0cmV0dXJuIFByb21pc2UucmVzb2x2ZSgpO1xuXHR9XG59Il19