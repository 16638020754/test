(function (w) {
  function bb(a) {
    var b = function (d, e, f, g) {
      var k = new w.XMLHttpRequest; k.open("POST", a.url); k.withCredentials = a.credentials; k.upload.onprogress = function (p) { g(p.loaded / p.total * 100) }; k.onerror = function () { f("Image upload failed due to a XHR Transport error. Code: " + k.status) }; k.onload = function () {
        var p; if (200 > k.status || 300 <= k.status) f("HTTP Error: " + k.status); else if ((p = JSON.parse(k.responseText)) && "string" === typeof p.location) {
          var x = a.basePath; p = p.location; x = x ? x.replace(/\/$/, "") + "/" + p.replace(/^\//,
            "") : p; e(x)
        } else f("Invalid JSON: " + k.responseText)
      }; var r = new w.FormData; r.append("file", d.blob(), d.filename()); k.send(r)
    }, c = function (d, e) { return new ea(function (f, g) { try { e(d, f, g, fa) } catch (k) { g(k.message) } }) }; a = ha.extend({ credentials: !1, handler: b }, a); return { upload: function (d) { return a.url || a.handler !== b ? c(d, a.handler) : ea.reject("Upload url missing from the settings.") } }
  } var cb = tinymce.util.Tools.resolve("tinymce.PluginManager"), fa = function () { }, J = function (a) { return function () { return a } }, db = function (a) { return a },
    eb = function (a) { return function () { throw Error(a); } }, L = J(!1), O = J(!0), aa = function () { return ia }, ia = function () {
      var a = function (d) { return d.isNone() }, b = function (d) { return d() }, c = function (d) { return d }; a = {
        fold: function (d, e) { return d() }, is: L, isSome: L, isNone: O, getOr: c, getOrThunk: b, getOrDie: function (d) { throw Error(d || "error: getOrDie called on none."); }, getOrNull: J(null), getOrUndefined: J(void 0), or: c, orThunk: b, map: aa, each: fa, bind: aa, exists: L, forall: O, filter: aa, equals: a, equals_: a, toArray: function () { return [] },
        toString: J("none()")
      }; Object.freeze && Object.freeze(a); return a
    }(), ja = function (a) {
      var b = J(a), c = function () { return e }, d = function (f) { return f(a) }, e = {
        fold: function (f, g) { return g(a) }, is: function (f) { return a === f }, isSome: O, isNone: L, getOr: b, getOrThunk: b, getOrDie: b, getOrNull: b, getOrUndefined: b, or: c, orThunk: c, map: function (f) { return ja(f(a)) }, each: function (f) { f(a) }, bind: d, exists: d, forall: d, filter: function (f) { return f(a) ? e : ia }, toArray: function () { return [a] }, toString: function () { return "some(" + a + ")" }, equals: function (f) { return f.is(a) },
        equals_: function (f, g) { return f.fold(L, function (k) { return g(a, k) }) }
      }; return e
    }, C = { some: ja, none: aa, from: function (a) { return null === a || void 0 === a ? ia : ja(a) } }, P = function (a) { return function (b) { if (null === b) b = "null"; else { var c = typeof b; b = "object" === c && (Array.prototype.isPrototypeOf(b) || b.constructor && "Array" === b.constructor.name) ? "array" : "object" === c && (String.prototype.isPrototypeOf(b) || b.constructor && "String" === b.constructor.name) ? "string" : c } return b === a } }, D = P("string"), ra = P("object"), fb = P("array"), sa = P("boolean"),
    gb = P("function"), hb = P("number"), ib = Array.prototype.push, ba = function (a) { for (var b = [], c = 0, d = a.length; c < d; ++c) { if (!fb(a[c])) throw Error("Arr.flatten item " + c + " was not an array, input: " + a); ib.apply(b, a[c]) } return b }, jb = function (a) { return 0 === a.length ? C.none() : C.some(a[0]) }; gb(Array.from); var kb = function (a, b) { for (var c = 0; c < a.length; c++) { var d = b(a[c], c); if (d.isSome()) return d } return C.none() }, Q = function () {
      Q = Object.assign || function (a) {
        for (var b, c = 1, d = arguments.length; c < d; c++) {
          b = arguments[c]; for (var e in b) Object.prototype.hasOwnProperty.call(b,
            e) && (a[e] = b[e])
        } return a
      }; return Q.apply(this, arguments)
    }, ta = {}, ua = { exports: ta }; (function (a, b, c, d) {
      (function (e) { "object" === typeof b && "undefined" !== typeof c ? c.exports = e() : "function" === typeof a && a.amd ? a([], e) : ("undefined" !== typeof window ? window : "undefined" !== typeof global ? global : "undefined" !== typeof self ? self : this).EphoxContactWrapper = e() })(function () {
        return function () {
          function e(f, g, k) {
            function r(n, z) {
              if (!g[n]) {
                if (!f[n]) {
                  var E = "function" == typeof d && d; if (!z && E) return E(n, !0); if (p) return p(n, !0); z = Error("Cannot find module '" +
                    n + "'"); throw z.code = "MODULE_NOT_FOUND", z;
                } z = g[n] = { exports: {} }; f[n][0].call(z.exports, function (v) { return r(f[n][1][v] || v) }, z, z.exports, e, f, g, k)
              } return g[n].exports
            } for (var p = "function" == typeof d && d, x = 0; x < k.length; x++)r(k[x]); return r
          } return e
        }()({
          1: [function (e, f, g) {
            function k() { throw Error("setTimeout has not been defined"); } function r() { throw Error("clearTimeout has not been defined"); } function p(m) {
              if (q === setTimeout) return setTimeout(m, 0); if ((q === k || !q) && setTimeout) return q = setTimeout, setTimeout(m,
                0); try { return q(m, 0) } catch (t) { try { return q.call(null, m, 0) } catch (F) { return q.call(this, m, 0) } }
            } function x(m) { if (u === clearTimeout) return clearTimeout(m); if ((u === r || !u) && clearTimeout) return u = clearTimeout, clearTimeout(m); try { return u(m) } catch (t) { try { return u.call(null, m) } catch (F) { return u.call(this, m) } } } function n() { K && h && (K = !1, h.length ? B = h.concat(B) : l = -1, B.length && z()) } function z() { if (!K) { var m = p(n); K = !0; for (var t = B.length; t;) { h = B; for (B = []; ++l < t;)h && h[l].run(); l = -1; t = B.length } h = null; K = !1; x(m) } } function E(m,
              t) { this.fun = m; this.array = t } function v() { } e = f.exports = {}; try { var q = "function" === typeof setTimeout ? setTimeout : k } catch (m) { q = k } try { var u = "function" === typeof clearTimeout ? clearTimeout : r } catch (m) { u = r } var B = [], K = !1, h, l = -1; e.nextTick = function (m) { var t = Array(arguments.length - 1); if (1 < arguments.length) for (var F = 1; F < arguments.length; F++)t[F - 1] = arguments[F]; B.push(new E(m, t)); 1 !== B.length || K || p(z) }; E.prototype.run = function () { this.fun.apply(null, this.array) }; e.title = "browser"; e.browser = !0; e.env = {}; e.argv = []; e.version =
                ""; e.versions = {}; e.on = v; e.addListener = v; e.once = v; e.off = v; e.removeListener = v; e.removeAllListeners = v; e.emit = v; e.prependListener = v; e.prependOnceListener = v; e.listeners = function (m) { return [] }; e.binding = function (m) { throw Error("process.binding is not supported"); }; e.cwd = function () { return "/" }; e.chdir = function (m) { throw Error("process.chdir is not supported"); }; e.umask = function () { return 0 }
          }, {}], 2: [function (e, f, g) {
            (function (k) {
              (function (r) {
                function p() { } function x(h, l) { return function () { h.apply(l, arguments) } }
                function n(h) { if ("object" !== typeof this) throw new TypeError("Promises must be constructed via new"); if ("function" !== typeof h) throw new TypeError("not a function"); this._state = 0; this._handled = !1; this._value = void 0; this._deferreds = []; B(h, this) } function z(h, l) {
                  for (; 3 === h._state;)h = h._value; 0 === h._state ? h._deferreds.push(l) : (h._handled = !0, n._immediateFn(function () {
                    var m = 1 === h._state ? l.onFulfilled : l.onRejected; if (null === m) (1 === h._state ? E : v)(l.promise, h._value); else {
                      try { var t = m(h._value) } catch (F) {
                        v(l.promise,
                          F); return
                      } E(l.promise, t)
                    }
                  }))
                } function E(h, l) { try { if (l === h) throw new TypeError("A promise cannot be resolved with itself."); if (l && ("object" === typeof l || "function" === typeof l)) { var m = l.then; if (l instanceof n) { h._state = 3; h._value = l; q(h); return } if ("function" === typeof m) { B(x(m, l), h); return } } h._state = 1; h._value = l; q(h) } catch (t) { v(h, t) } } function v(h, l) { h._state = 2; h._value = l; q(h) } function q(h) {
                  2 === h._state && 0 === h._deferreds.length && n._immediateFn(function () { h._handled || n._unhandledRejectionFn(h._value) });
                  for (var l = 0, m = h._deferreds.length; l < m; l++)z(h, h._deferreds[l]); h._deferreds = null
                } function u(h, l, m) { this.onFulfilled = "function" === typeof h ? h : null; this.onRejected = "function" === typeof l ? l : null; this.promise = m } function B(h, l) { var m = !1; try { h(function (t) { m || (m = !0, E(l, t)) }, function (t) { m || (m = !0, v(l, t)) }) } catch (t) { m || (m = !0, v(l, t)) } } var K = setTimeout; n.prototype["catch"] = function (h) { return this.then(null, h) }; n.prototype.then = function (h, l) { var m = new this.constructor(p); z(this, new u(h, l, m)); return m }; n.all = function (h) {
                  var l =
                    Array.prototype.slice.call(h); return new n(function (m, t) { function F(va, R) { try { if (R && ("object" === typeof R || "function" === typeof R)) { var wa = R.then; if ("function" === typeof wa) { wa.call(R, function (ka) { F(va, ka) }, t); return } } l[va] = R; 0 === --lb && m(l) } catch (ka) { t(ka) } } if (0 === l.length) return m([]); for (var lb = l.length, ca = 0; ca < l.length; ca++)F(ca, l[ca]) })
                }; n.resolve = function (h) { return h && "object" === typeof h && h.constructor === n ? h : new n(function (l) { l(h) }) }; n.reject = function (h) { return new n(function (l, m) { m(h) }) }; n.race =
                  function (h) { return new n(function (l, m) { for (var t = 0, F = h.length; t < F; t++)h[t].then(l, m) }) }; n._immediateFn = "function" === typeof k ? function (h) { k(h) } : function (h) { K(h, 0) }; n._unhandledRejectionFn = function (h) { "undefined" !== typeof console && console && console.warn("Possible Unhandled Promise Rejection:", h) }; n._setImmediateFn = function (h) { n._immediateFn = h }; n._setUnhandledRejectionFn = function (h) { n._unhandledRejectionFn = h }; "undefined" !== typeof f && f.exports ? f.exports = n : r.Promise || (r.Promise = n)
              })(this)
            }).call(this, e("timers").setImmediate)
          },
          { timers: 3 }], 3: [function (e, f, g) {
            (function (k, r) {
              function p(q, u) { this._id = q; this._clearFn = u } var x = e("process/browser.js").nextTick, n = Function.prototype.apply, z = Array.prototype.slice, E = {}, v = 0; g.setTimeout = function () { return new p(n.call(setTimeout, window, arguments), clearTimeout) }; g.setInterval = function () { return new p(n.call(setInterval, window, arguments), clearInterval) }; g.clearTimeout = g.clearInterval = function (q) { q.close() }; p.prototype.unref = p.prototype.ref = function () { }; p.prototype.close = function () {
                this._clearFn.call(window,
                  this._id)
              }; g.enroll = function (q, u) { clearTimeout(q._idleTimeoutId); q._idleTimeout = u }; g.unenroll = function (q) { clearTimeout(q._idleTimeoutId); q._idleTimeout = -1 }; g._unrefActive = g.active = function (q) { clearTimeout(q._idleTimeoutId); var u = q._idleTimeout; 0 <= u && (q._idleTimeoutId = setTimeout(function () { q._onTimeout && q._onTimeout() }, u)) }; g.setImmediate = "function" === typeof k ? k : function (q) {
                var u = v++, B = 2 > arguments.length ? !1 : z.call(arguments, 1); E[u] = !0; x(function () { E[u] && (B ? q.apply(null, B) : q.call(null), g.clearImmediate(u)) });
                return u
              }; g.clearImmediate = "function" === typeof r ? r : function (q) { delete E[q] }
            }).call(this, e("timers").setImmediate, e("timers").clearImmediate)
          }, { "process/browser.js": 1, timers: 3 }], 4: [function (e, f, g) { e = e("promise-polyfill"); g = "undefined" !== typeof window ? window : Function("return this;")(); f.exports = { boltExport: g.Promise || e } }, { "promise-polyfill": 2 }]
        }, {}, [4])(4)
      })
    })(void 0, ta, ua, void 0); var xa = ua.exports.boltExport, la = function (a) {
      var b = C.none(), c = [], d = function (g) { e() ? f(g) : c.push(g) }, e = function () { return b.isSome() },
      f = function (g) { b.each(function (k) { w.setTimeout(function () { g(k) }, 0) }) }; a(function (g) { b = C.some(g); g = c; for (var k = f, r = 0, p = g.length; r < p; r++)k(g[r], r); c = [] }); return { get: d, map: function (g) { return la(function (k) { d(function (r) { k(g(r)) }) }) }, isReady: e }
    }, mb = { nu: la, pure: function (a) { return la(function (b) { b(a) }) } }, nb = function (a) { w.setTimeout(function () { throw a; }, 0) }, S = function (a) {
      var b = function (c) { a().then(c, nb) }; return {
        map: function (c) { return S(function () { return a().then(c) }) }, bind: function (c) { return S(function () { return a().then(function (d) { return c(d).toPromise() }) }) },
        anonBind: function (c) { return S(function () { return a().then(function () { return c.toPromise() }) }) }, toLazy: function () { return mb.nu(b) }, toCached: function () { var c = null; return S(function () { null === c && (c = a()); return c }) }, toPromise: a, get: b
      }
    }, N = { nu: function (a) { return S(function () { return new xa(a) }) }, pure: function (a) { return S(function () { return xa.resolve(a) }) } }, T = function (a) {
      return {
        is: function (b) { return a === b }, isValue: O, isError: L, getOr: J(a), getOrThunk: J(a), getOrDie: J(a), or: function (b) { return T(a) }, orThunk: function (b) { return T(a) },
        fold: function (b, c) { return c(a) }, map: function (b) { return T(b(a)) }, mapError: function (b) { return T(a) }, each: function (b) { b(a) }, bind: function (b) { return b(a) }, exists: function (b) { return b(a) }, forall: function (b) { return b(a) }, toOption: function () { return C.some(a) }
      }
    }, W = function (a) {
      return {
        is: L, isValue: L, isError: O, getOr: db, getOrThunk: function (b) { return b() }, getOrDie: function () { return eb(String(a))() }, or: function (b) { return b }, orThunk: function (b) { return b() }, fold: function (b, c) { return b(a) }, map: function (b) { return W(a) },
        mapError: function (b) { return W(b(a)) }, each: fa, bind: function (b) { return W(a) }, exists: L, forall: O, toOption: C.none
      }
    }, M = { value: T, error: W, fromOption: function (a, b) { return a.fold(function () { return W(b) }, T) } }, H = function (a) {
      return Q(Q({}, a), {
        toCached: function () { return H(a.toCached()) }, bindFuture: function (b) { return H(a.bind(function (c) { return c.fold(function (d) { return N.pure(M.error(d)) }, function (d) { return b(d) }) })) }, bindResult: function (b) { return H(a.map(function (c) { return c.bind(b) })) }, mapResult: function (b) { return H(a.map(function (c) { return c.map(b) })) },
        mapError: function (b) { return H(a.map(function (c) { return c.mapError(b) })) }, foldResult: function (b, c) { return a.map(function (d) { return d.fold(b, c) }) }, withTimeout: function (b, c) { return H(N.nu(function (d) { var e = !1, f = w.setTimeout(function () { e = !0; d(M.error(c())) }, b); a.get(function (g) { e || (w.clearTimeout(f), d(g)) }) })) }
      })
    }, ya = function (a) { return H(N.nu(a)) }, za = function (a) { return H(N.pure(M.value(a))) }, ob = {
      nu: ya, wrap: H, pure: za, value: za, error: function (a) { return H(N.pure(M.error(a))) }, fromResult: function (a) { return H(N.pure(a)) },
      fromFuture: function (a) { return H(a.map(M.value)) }, fromPromise: function (a) { return ya(function (b) { a.then(function (c) { b(M.value(c)) }, function (c) { b(M.error(c)) }) }) }
    }, pb = Object.prototype.hasOwnProperty, X = function (a) { return function () { for (var b = Array(arguments.length), c = 0; c < b.length; c++)b[c] = arguments[c]; if (0 === b.length) throw Error("Can't merge zero objects"); c = {}; for (var d = 0; d < b.length; d++) { var e = b[d], f; for (f in e) pb.call(e, f) && (c[f] = a(c[f], e[f])) } return c } }(function (a, b) { return ra(a) && ra(b) ? X(a, b) : b });
  "undefined" !== typeof w.window || Function("return this;")(); var Aa = function (a, b, c) { if (D(c) || sa(c) || hb(c)) a.setAttribute(b, c + ""); else throw w.console.error("Invalid call to Attr.set. Key ", b, ":: Value ", c, ":: Element ", a), Error("Attribute value was not simple"); }, Y = function (a) { if (null === a || void 0 === a) throw Error("Node cannot be null or undefined"); return { dom: J(a) } }, Ba = {
    fromHtml: function (a, b) {
      b = (b || w.document).createElement("div"); b.innerHTML = a; if (!b.hasChildNodes() || 1 < b.childNodes.length) throw w.console.error("HTML does not have a single root node",
        a), Error("HTML must have a single root node"); return Y(b.childNodes[0])
    }, fromTag: function (a, b) { a = (b || w.document).createElement(a); return Y(a) }, fromText: function (a, b) { a = (b || w.document).createTextNode(a); return Y(a) }, fromDom: Y, fromPoint: function (a, b, c) { a = a.dom(); return C.from(a.elementFromPoint(b, c)).map(Y) }
  }, qb = tinymce.util.Tools.resolve("tinymce.dom.DOMUtils"), ea = tinymce.util.Tools.resolve("tinymce.util.Promise"), rb = tinymce.util.Tools.resolve("tinymce.util.XHR"), Ca = function (a) {
    return a.getParam("images_upload_url",
      "", "string")
  }, Da = function (a) { return a.getParam("images_upload_handler", void 0, "function") }, A = {
    hasDimensions: function (a) { return a.getParam("image_dimensions", !0, "boolean") }, hasUploadTab: function (a) { return a.getParam("image_uploadtab", !0, "boolean") }, hasAdvTab: function (a) { return a.getParam("image_advtab", !1, "boolean") }, getPrependUrl: function (a) { return a.getParam("image_prepend_url", "", "string") }, getClassList: function (a) { return a.getParam("image_class_list") }, hasDescription: function (a) {
      return a.getParam("image_description",
        !0, "boolean")
    }, hasImageTitle: function (a) { return a.getParam("image_title", !1, "boolean") }, hasImageCaption: function (a) { return a.getParam("image_caption", !1, "boolean") }, getImageList: function (a) { return a.getParam("image_list", !1) }, hasUploadUrl: function (a) { return !!Ca(a) }, hasUploadHandler: function (a) { return !!Da(a) }, getUploadUrl: Ca, getUploadHandler: Da, getUploadBasePath: function (a) { return a.getParam("images_upload_base_path", void 0, "string") }, getUploadCredentials: function (a) {
      return a.getParam("images_upload_credentials",
        !1, "boolean")
    }, showAccessibilityOptions: function (a) { return a.getParam("a11y_advanced_options", !1, "boolean") }, isAutomaticUploadsEnabled: function (a) { return a.getParam("automatic_uploads", !0, "boolean") }
  }, Ea = function (a, b) { return Math.max(parseInt(a, 10), parseInt(b, 10)) }, y = {
    getImageSize: function (a, b) {
      var c = w.document.createElement("img"); c.onload = function () { var e = Ea(c.width, c.clientWidth), f = Ea(c.height, c.clientHeight); e = M.value({ width: e, height: f }); c.parentNode && c.parentNode.removeChild(c); b(e) }; c.onerror =
        function () { var e = M.error("Failed to get image dimensions for: " + a); c.parentNode && c.parentNode.removeChild(c); b(e) }; var d = c.style; d.visibility = "hidden"; d.position = "fixed"; d.bottom = d.left = "0px"; d.width = d.height = "auto"; w.document.body.appendChild(c); c.src = a
    }, removePixelSuffix: function (a) { a && (a = a.replace(/px$/, "")); return a }, addPixelSuffix: function (a) { 0 < a.length && /^[0-9]+$/.test(a) && (a += "px"); return a }, mergeMargins: function (a) {
      if (a.margin) {
        var b = String(a.margin).split(" "); switch (b.length) {
          case 1: a["margin-top"] =
            a["margin-top"] || b[0]; a["margin-right"] = a["margin-right"] || b[0]; a["margin-bottom"] = a["margin-bottom"] || b[0]; a["margin-left"] = a["margin-left"] || b[0]; break; case 2: a["margin-top"] = a["margin-top"] || b[0]; a["margin-right"] = a["margin-right"] || b[1]; a["margin-bottom"] = a["margin-bottom"] || b[0]; a["margin-left"] = a["margin-left"] || b[1]; break; case 3: a["margin-top"] = a["margin-top"] || b[0]; a["margin-right"] = a["margin-right"] || b[1]; a["margin-bottom"] = a["margin-bottom"] || b[2]; a["margin-left"] = a["margin-left"] || b[1];
            break; case 4: a["margin-top"] = a["margin-top"] || b[0], a["margin-right"] = a["margin-right"] || b[1], a["margin-bottom"] = a["margin-bottom"] || b[2], a["margin-left"] = a["margin-left"] || b[3]
        }delete a.margin
      } return a
    }, createImageList: function (a, b) { a = A.getImageList(a); "string" === typeof a ? rb.send({ url: a, success: function (c) { b(JSON.parse(c)) } }) : "function" === typeof a ? a(b) : b(a) }, waitLoadImage: function (a, b, c) {
      var d = function () { c.onload = c.onerror = null; a.selection && (a.selection.select(c), a.nodeChanged()) }; c.onload = function () {
        b.width ||
        b.height || !A.hasDimensions(a) || a.dom.setAttribs(c, { width: String(c.clientWidth), height: String(c.clientHeight) }); d()
      }; c.onerror = d
    }, blobToDataUri: function (a) { return new ea(function (b, c) { var d = new w.FileReader; d.onload = function () { b(d.result) }; d.onerror = function () { c(d.error.message) }; d.readAsDataURL(a) }) }, isPlaceholderImage: function (a) { return "IMG" === a.nodeName && (a.hasAttribute("data-mce-object") || a.hasAttribute("data-mce-placeholder")) }
  }, G = qb.DOM, Fa = function (a) {
    return a.style.marginLeft && a.style.marginRight &&
      a.style.marginLeft === a.style.marginRight ? y.removePixelSuffix(a.style.marginLeft) : ""
  }, Ga = function (a) { return a.style.marginTop && a.style.marginBottom && a.style.marginTop === a.style.marginBottom ? y.removePixelSuffix(a.style.marginTop) : "" }, U = function (a, b) { return a.hasAttribute(b) ? a.getAttribute(b) : "" }, Ha = function (a, b) { return a.style[b] ? a.style[b] : "" }, ma = function (a, b, c) { a.setAttribute(b, c) }, Ia = function (a, b) {
    var c = a.getAttribute("style"); b = b(null !== c ? c : ""); 0 < b.length ? (a.setAttribute("style", b), a.setAttribute("data-mce-style",
      b)) : a.removeAttribute("style")
  }, Ja = function (a, b) { return function (c, d, e) { c.style[d] ? (c.style[d] = y.addPixelSuffix(e), Ia(c, b)) : c.setAttribute(d, e) } }, Ka = function (a, b) { return a.style[b] ? y.removePixelSuffix(a.style[b]) : U(a, b) }, La = function (a, b) { b = y.addPixelSuffix(b); a.style.marginLeft = b; a.style.marginRight = b }, Ma = function (a, b) { b = y.addPixelSuffix(b); a.style.marginTop = b; a.style.marginBottom = b }, Na = function (a, b) { b = y.addPixelSuffix(b); a.style.borderWidth = b }, Oa = function (a, b) { a.style.borderStyle = b }, Pa = function (a) {
    return 0 ===
      G.getAttrib(a, "alt").length && "presentation" === G.getAttrib(a, "role")
  }, sb = function (a, b, c) { var d = w.document.createElement("img"); Qa(a, Q(Q({}, b), { caption: !1 }), d, c); Ra(d, b.alt, b.isDecorative, c); return b.caption ? (a = G.create("figure", { class: "image" }), a.appendChild(d), a.appendChild(G.create("figcaption", { contentEditable: "true" }, "Caption")), a.contentEditable = "false", a) : d }, Sa = function (a, b) {
    var c = U(b, "src"); var d = Pa(b) ? "" : U(b, "alt"); return {
      src: c, alt: d, title: U(b, "title"), width: Ka(b, "width"), height: Ka(b, "height"),
      class: U(b, "class"), style: a(U(b, "style")), caption: null !== b.parentNode && "FIGURE" === b.parentNode.nodeName, hspace: Fa(b), vspace: Ga(b), border: b.style.borderWidth ? y.removePixelSuffix(b.style.borderWidth) : "", borderStyle: Ha(b, "borderStyle"), isDecorative: Pa(b)
    }
  }, I = function (a, b, c, d, e) { c[d] !== b[d] && e(a, d, c[d]) }, Ra = function (a, b, c, d) {
    c ? (G.setAttrib(a, "role", "presentation"), c = Ba.fromDom(a), Aa(c.dom(), "alt", "")) : (d.hasAccessibilityOptions ? G.setAttrib(a, "alt", b) : (c = Ba.fromDom(a), Aa(c.dom(), "alt", b)), "presentation" ===
      G.getAttrib(a, "role") && G.setAttrib(a, "role", ""))
  }, Z = function (a, b) { return function (c, d, e) { a(c, e); Ia(c, b) } }, Qa = function (a, b, c, d) {
    var e = Sa(a, c); I(c, e, b, "caption", function (f, g, k) { null !== f.parentNode && "FIGURE" === f.parentNode.nodeName ? (g = f.parentNode, G.insertAfter(f, g), G.remove(g)) : (g = G.create("figure", { class: "image" }), G.insertAfter(g, f), g.appendChild(f), g.appendChild(G.create("figcaption", { contentEditable: "true" }, "Caption")), g.contentEditable = "false") }); I(c, e, b, "src", ma); I(c, e, b, "title", ma); I(c, e, b, "width",
      Ja("width", a)); I(c, e, b, "height", Ja("height", a)); I(c, e, b, "class", ma); I(c, e, b, "style", Z(function (f, g) { f.setAttribute("style", g) }, a)); I(c, e, b, "hspace", Z(La, a)); I(c, e, b, "vspace", Z(Ma, a)); I(c, e, b, "border", Z(Na, a)); I(c, e, b, "borderStyle", Z(Oa, a)); b.alt === e.alt && b.isDecorative === e.isDecorative || Ra(c, b.alt, b.isDecorative, d)
  }, da = function (a, b) { b = a.dom.styles.parse(b); b = y.mergeMargins(b); b = a.dom.styles.parse(a.dom.styles.serialize(b)); return a.dom.styles.serialize(b) }, na = function (a) {
    var b = a.selection.getNode(),
    c = a.dom.getParent(b, "figure.image"); return c ? a.dom.select("img", c)[0] : b && ("IMG" !== b.nodeName || y.isPlaceholderImage(b)) ? null : b
  }, Ta = function (a, b) { var c = a.dom, d = c.getParent(b.parentNode, function (e) { return !!a.schema.getTextBlockElements()[e.nodeName] }, a.getBody()); return d ? c.split(d, b) : b }, tb = function (a) { var b = na(a); return b ? Sa(function (c) { return da(a, c) }, b) : { src: "", alt: "", title: "", width: "", height: "", class: "", style: "", caption: !1, hspace: "", vspace: "", border: "", borderStyle: "", isDecorative: !1 } }, ub = function (a,
    b, c) { b = sb(function (d) { return da(a, d) }, b, c); a.dom.setAttrib(b, "data-mce-id", "__mcenew"); a.focus(); a.selection.setContent(b.outerHTML); b = a.dom.select('*[data-mce-id="__mcenew"]')[0]; a.dom.setAttrib(b, "data-mce-id", null); "FIGURE" === b.nodeName ? (b = Ta(a, b), a.selection.select(b)) : a.selection.select(b) }, vb = function (a, b, c) {
      var d = na(a); Qa(function (e) { return da(a, e) }, b, d, c); a.dom.setAttrib(d, "src", d.getAttribute("src")); "FIGURE" === d.parentNode.nodeName ? (Ta(a, d.parentNode), a.selection.select(d.parentNode)) : (a.selection.select(d),
        y.waitLoadImage(a, b, d))
    }, ha = tinymce.util.Tools.resolve("tinymce.util.Tools"), Ua = function (a) { return D(a.value) ? a.value : "" }, Va = function (a, b) { var c = []; ha.each(a, function (d) { var e = D(d.text) ? d.text : D(d.title) ? d.title : ""; void 0 !== d.menu ? (d = Va(d.menu, b), c.push({ text: e, items: d })) : (d = b(d), c.push({ text: e, value: d })) }); return c }, Wa = function (a) { void 0 === a && (a = Ua); return function (b) { return b ? C.from(b).map(function (c) { return Va(c, a) }) : C.none() } }, Xa = function (a, b) {
      return kb(a, function (c) {
        return Object.prototype.hasOwnProperty.call(c,
          "items") ? Xa(c.items, b) : c.value === b ? C.some(c) : C.none()
      })
    }, V = { sanitizer: Wa, sanitize: function (a) { return Wa(Ua)(a) }, findEntry: function (a, b) { return a.bind(function (c) { return Xa(c, b) }) } }, wb = {
      makeTab: function (a) {
        return {
          title: "Advanced", name: "advanced", items: [{ type: "input", label: "Style", name: "style" }, {
            type: "grid", columns: 2, items: [{ type: "input", label: "Vertical space", name: "vspace", inputMode: "numeric" }, { type: "input", label: "Horizontal space", name: "hspace", inputMode: "numeric" }, {
              type: "input", label: "Border width",
              name: "border", inputMode: "numeric"
            }, { type: "selectbox", name: "borderstyle", label: "Border style", items: [{ text: "Select...", value: "" }, { text: "Solid", value: "solid" }, { text: "Dotted", value: "dotted" }, { text: "Dashed", value: "dashed" }, { text: "Double", value: "double" }, { text: "Groove", value: "groove" }, { text: "Ridge", value: "ridge" }, { text: "Inset", value: "inset" }, { text: "Outset", value: "outset" }, { text: "None", value: "none" }, { text: "Hidden", value: "hidden" }] }]
          }]
        }
      }
    }, xb = function (a) {
      var b = V.sanitizer(function (l) {
        return a.convertURL(l.value ||
          l.url, "src")
      }), c = N.nu(function (l) { y.createImageList(a, function (m) { l(b(m).map(function (t) { return ba([[{ text: "None", value: "" }], t]) })) }) }), d = V.sanitize(A.getClassList(a)), e = A.hasAdvTab(a), f = A.hasUploadTab(a), g = A.hasUploadUrl(a), k = A.hasUploadHandler(a), r = tb(a), p = A.hasDescription(a), x = A.hasImageTitle(a), n = A.hasDimensions(a), z = A.hasImageCaption(a), E = A.showAccessibilityOptions(a), v = A.getUploadUrl(a), q = A.getUploadBasePath(a), u = A.getUploadCredentials(a), B = A.getUploadHandler(a), K = A.isAutomaticUploadsEnabled(a),
      h = C.some(A.getPrependUrl(a)).filter(function (l) { return D(l) && 0 < l.length }); return c.map(function (l) { return { image: r, imageList: l, classList: d, hasAdvTab: e, hasUploadTab: f, hasUploadUrl: g, hasUploadHandler: k, hasDescription: p, hasImageTitle: x, hasDimensions: n, hasImageCaption: z, url: v, basePath: q, credentials: u, handler: B, prependURL: h, hasAccessibilityOptions: E, automaticUploads: K } })
    }, Ya = function (a) {
      var b = a.imageList.map(function (r) { return { name: "images", type: "selectbox", label: "Image list", items: r } }), c = {
        name: "alt", type: "input",
        label: "Alternative description", disabled: a.hasAccessibilityOptions && a.image.isDecorative
      }, d = { name: "title", type: "input", label: "Image title" }, e = { name: "dimensions", type: "sizeinput" }, f = { type: "label", label: "Accessibility", items: [{ name: "isDecorative", type: "checkbox", label: "Image is decorative" }] }, g = a.classList.map(function (r) { return { name: "classes", type: "selectbox", label: "Class", items: r } }), k = { type: "label", label: "Caption", items: [{ type: "checkbox", name: "caption", label: "Show caption" }] }; return ba([[{
        name: "src",
        type: "urlinput", filetype: "image", label: "Source"
      }], b.toArray(), a.hasAccessibilityOptions && a.hasDescription ? [f] : [], a.hasDescription ? [c] : [], a.hasImageTitle ? [d] : [], a.hasDimensions ? [e] : [], [{ type: "grid", columns: 2, items: ba([g.toArray(), a.hasImageCaption ? [k] : []]) }]])
    }, Za = { makeTab: function (a) { return { title: "Upload", name: "upload", items: [{ type: "dropzone", name: "fileinput" }] } }, makeItems: Ya }, yb = { makeTab: function (a) { return { title: "General", name: "general", items: Ya(a) } } }, oa = function (a) {
      return {
        src: { value: a.src, meta: {} },
        images: a.src, alt: a.alt, title: a.title, dimensions: { width: a.width, height: a.height }, classes: a.class, caption: a.caption, style: a.style, vspace: a.vspace, border: a.border, hspace: a.hspace, borderstyle: a.borderStyle, fileinput: [], isDecorative: a.isDecorative
      }
    }, $a = function (a) { return { src: a.src.value, alt: a.alt, title: a.title, width: a.dimensions.width, height: a.dimensions.height, class: a.classes, style: a.style, caption: a.caption, hspace: a.hspace, vspace: a.vspace, border: a.border, borderStyle: a.borderstyle, isDecorative: a.isDecorative } },
    zb = function (a, b) { return /^(?:[a-zA-Z]+:)?\/\//.test(b) ? C.none() : a.prependURL.bind(function (c) { return b.substring(0, c.length) !== c ? C.some(c + b) : C.none() }) }, Ab = function (a, b) { var c = b.getData(); zb(a, c.src.value).each(function (d) { b.setData({ src: { value: d, meta: c.src.meta } }) }) }, Bb = function (a, b, c) {
      a.hasDescription && D(c.alt) && (b.alt = c.alt); a.hasAccessibilityOptions && (b.isDecorative = c.isDecorative || !1); a.hasImageTitle && D(c.title) && (b.title = c.title); a.hasDimensions && (D(c.width) && (b.dimensions.width = c.width), D(c.height) &&
        (b.dimensions.height = c.height)); D(c.class) && V.findEntry(a.classList, c.class).each(function (d) { b.classes = d.value }); a.hasImageCaption && sa(c.caption) && (b.caption = c.caption); a.hasAdvTab && (D(c.style) && (b.style = c.style), D(c.vspace) && (b.vspace = c.vspace), D(c.border) && (b.border = c.border), D(c.hspace) && (b.hspace = c.hspace), D(c.borderstyle) && (b.borderstyle = c.borderstyle))
    }, Cb = function (a, b, c, d) {
      var e = d.getData(), f = e.src.value; e = e.src.meta || {}; e.width || e.height || !b.hasDimensions || a.imageSize(f).get(function (g) {
        g.each(function (k) {
          c.open &&
          d.setData({ dimensions: k })
        })
      })
    }, Db = function (a, b, c) { var d = c.getData(); a = V.findEntry(a.imageList, d.src.value); b.prevImage = a; c.setData({ images: a.map(function (e) { return e.value }).getOr("") }) }, pa = function (a, b, c, d) { Ab(b, d); var e = d.getData(), f = e.src.meta; void 0 !== f && (e = X({}, e), Bb(b, e, f), d.setData(e)); Cb(a, b, c, d); Db(b, c, d) }, Eb = function (a, b, c, d) {
      var e = d.getData(), f = V.findEntry(b.imageList, e.images); f.each(function (g) {
        "" === e.alt || c.prevImage.map(function (k) { return k.text === e.alt }).getOr(!1) ? "" === g.value ? d.setData({
          src: g,
          alt: c.prevAlt
        }) : d.setData({ src: g, alt: g.text }) : d.setData({ src: g })
      }); c.prevImage = f; pa(a, b, c, d)
    }, Fb = function (a, b, c, d) {
      var e = d.getData(); d.block("Uploading image"); jb(e.fileinput).fold(function () { d.unblock() }, function (f) {
        var g = w.URL.createObjectURL(f), k = bb({ url: b.url, basePath: b.basePath, credentials: b.credentials, handler: b.handler }), r = function (p) { d.setData({ src: { value: p, meta: {} } }); d.showTab("general"); pa(a, b, c, d) }; y.blobToDataUri(f).then(function (p) {
          p = a.createBlobCache(f, g, p); b.automaticUploads ? k.upload(p).then(function (x) {
            r(x);
            d.unblock(); w.URL.revokeObjectURL(g)
          }).catch(function (x) { d.unblock(); w.URL.revokeObjectURL(g); a.alertErr(d, x) }) : (a.addToBlobCache(p), r(p.blobUri()), d.unblock())
        })
      })
    }, Gb = function (a, b, c) {
      return function (d, e) {
        if ("src" === e.name) pa(a, b, c, d); else if ("images" === e.name) Eb(a, b, c, d); else if ("alt" === e.name) c.prevAlt = d.getData().alt; else if ("style" === e.name) {
          var f = d.getData(); e = a.parseStyle; var g = a.serializeStyle, k = y.mergeMargins(e(f.style)); f = X({}, f); f.vspace = k["margin-top"] && k["margin-bottom"] && k["margin-top"] ===
            k["margin-bottom"] ? y.removePixelSuffix(String(k["margin-top"])) : ""; f.hspace = k["margin-right"] && k["margin-left"] && k["margin-right"] === k["margin-left"] ? y.removePixelSuffix(String(k["margin-right"])) : ""; f.border = k["border-width"] ? y.removePixelSuffix(String(k["border-width"])) : ""; f.borderstyle = k["border-style"] ? String(k["border-style"]) : ""; f.style = g(e(g(k))); d.setData(f)
        } else "vspace" === e.name || "hspace" === e.name || "border" === e.name || "borderstyle" === e.name ? (g = X(oa(b.image), d.getData()), e = a.normalizeCss,
          g = $a(g), k = w.document.createElement("img"), k.setAttribute("style", g.style), (Fa(k) || "" !== g.hspace) && La(k, g.hspace), (Ga(k) || "" !== g.vspace) && Ma(k, g.vspace), (k.style.borderWidth && y.removePixelSuffix(k.style.borderWidth) || "" !== g.border) && Na(k, g.border), (Ha(k, "borderStyle") || "" !== g.borderStyle) && Oa(k, g.borderStyle), e = e(k.getAttribute("style")), d.setData({ style: e })) : "fileinput" === e.name ? Fb(a, b, c, d) : "isDecorative" === e.name && (d.getData().isDecorative ? d.disable("alt") : d.enable("alt"))
      }
    }, Hb = function (a) {
      return function () {
        a.open =
        !1
      }
    }, Ib = function (a) {
      return function (b) {
        var c = { prevImage: V.findEntry(b.imageList, b.image.src), prevAlt: b.image.alt, open: !0 }; var d = b.hasAdvTab || b.hasUploadUrl || b.hasUploadHandler ? { type: "tabpanel", tabs: ba([[Za.makeTab(b)], b.hasAdvTab ? [wb.makeTab(b)] : [], b.hasUploadTab && (b.hasUploadUrl || b.hasUploadHandler) ? [yb.makeTab(b)] : []]) } : { type: "panel", items: Za.makeItems(b) }; return {
          title: "Insert/Edit Image", size: "normal", body: d, buttons: [{ type: "cancel", name: "cancel", text: "Cancel" }, {
            type: "submit", name: "save", text: "Save",
            primary: !0
          }], initialData: oa(b.image), onSubmit: a.onSubmit(b), onChange: Gb(a, b, c), onClose: Hb(c)
        }
      }
    }, Jb = function (a) { return function (b) { return function (c) { var d = X(oa(b.image), c.getData()); a.undoManager.transact(function () { var e = $a(d), f = na(a); f ? e.src ? vb(a, e, b) : f && (e = a.dom.is(f.parentNode, "figure.image") ? f.parentNode : f, a.dom.remove(e), a.focus(), a.nodeChanged(), a.dom.isEmpty(a.getBody()) && (a.setContent(""), a.selection.setCursorLocation())) : e.src && ub(a, e, b) }); a.editorUpload.uploadImagesAuto(); c.close() } } },
    Kb = function (a) { return function (b) { return ob.nu(function (c) { y.getImageSize(a.documentBaseURI.toAbsolute(b), function (d) { d = d.map(function (e) { return { width: String(e.width), height: String(e.height) } }); c(d) }) }) } }, Lb = function (a) { return function (b, c, d) { return a.editorUpload.blobCache.create({ blob: b, blobUri: c, name: b.name ? b.name.replace(/\.[^\.]+$/, "") : null, base64: d.split(",")[1] }) } }, Mb = function (a) { return function (b) { a.editorUpload.blobCache.add(b) } }, Nb = function (a) {
      return function (b, c) {
        a.windowManager.alert(c,
          b.close)
      }
    }, Ob = function (a) { return function (b) { return da(a, b) } }, Pb = function (a) { return function (b) { return a.dom.parseStyle(b) } }, Qb = function (a) { return function (b, c) { return a.dom.serializeStyle(b, c) } }, qa = function (a) { var b = { onSubmit: Jb(a), imageSize: Kb(a), addToBlobCache: Mb(a), createBlobCache: Lb(a), alertErr: Nb(a), normalizeCss: Ob(a), parseStyle: Pb(a), serializeStyle: Qb(a) }; return { open: function () { return xb(a).map(Ib(b)).get(function (c) { a.windowManager.open(c) }) } } }, Rb = {
      register: function (a) {
        a.addCommand("mceImage",
          qa(a).open)
      }
    }, Sb = function (a) { return (a = a.attr("class")) && /\bimage\b/.test(a) }, ab = function (a) { return function (b) { for (var c = b.length, d = function (f) { f.attr("contenteditable", a ? "true" : null) }; c--;) { var e = b[c]; Sb(e) && (e.attr("contenteditable", a ? "false" : null), ha.each(e.getAll("figcaption"), d)) } } }, Tb = { setup: function (a) { a.on("PreInit", function () { a.parser.addNodeFilter("figure", ab(!0)); a.serializer.addNodeFilter("figure", ab(!1)) }) } }, Ub = {
      register: function (a) {
        a.ui.registry.addToggleButton("image", {
          icon: "image",
          tooltip: "Insert/edit image", onAction: qa(a).open, onSetup: function (b) { return a.selection.selectorChangedWithUnbind("img:not([data-mce-object],[data-mce-placeholder]),figure.image", b.setActive).unbind }
        }); a.ui.registry.addMenuItem("image", { icon: "image", text: "Image...", onAction: qa(a).open }); a.ui.registry.addContextMenu("image", { update: function (b) { return "FIGURE" === b.nodeName || "IMG" === b.nodeName && !y.isPlaceholderImage(b) ? ["image"] : [] } })
      }
    }; (function () {
      cb.add("image", function (a) {
        Tb.setup(a); Ub.register(a);
        Rb.register(a)
      })
    })()
})(window);