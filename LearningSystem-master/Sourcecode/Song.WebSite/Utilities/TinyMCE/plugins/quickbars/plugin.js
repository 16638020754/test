(function (m) {
  function F(a, b, c, d, f) { return a(c, d) ? p.some(c) : x(f) && f(c) ? p.none() : b(c, d, f) } var T = tinymce.util.Tools.resolve("tinymce.PluginManager"), G = 0, U = function (a) { var b = (new Date).getTime(), c = Math.floor(1E9 * Math.random()); G++; return a + "_" + c + G + String(b) }, V = function (a, b) { var c, d; var f = '<table data-mce-id="mce" style="width: 100%"><tbody>'; for (d = 0; d < b; d++) { f += "<tr>"; for (c = 0; c < a; c++)f += "<td><br></td>"; f += "</tr>" } return f + "</tbody></table>" }, W = function (a, b, c) {
    a.undoManager.transact(function () {
      a.insertContent(V(b,
        c)); var d = a.dom.select("*[data-mce-id]")[0]; d.removeAttribute("data-mce-id"); d = a.dom.select("td,th", d); a.selection.setCursorLocation(d[0], 0)
    })
  }, H = { insertTable: function (a, b, c) { a.plugins.table ? a.plugins.table.insertTable(b, c) : W(a, b, c) }, insertBlob: function (a, b, c) { var d = a.editorUpload.blobCache; b = d.create(U("mceu"), c, b); d.add(b); a.insertContent(a.dom.createHTML("img", { src: b.blobUri() })) } }, I = tinymce.util.Tools.resolve("tinymce.util.Promise"), X = {
    blobToBase64: function (a) {
      return new I(function (b) {
        var c = new m.FileReader;
        c.onloadend = function () { b(c.result.split(",")[1]) }; c.readAsDataURL(a)
      })
    }
  }, Y = tinymce.util.Tools.resolve("tinymce.Env"), Z = tinymce.util.Tools.resolve("tinymce.util.Delay"), aa = {
    pickFile: function (a) {
      return new I(function (b) {
        var c = m.document.createElement("input"); c.type = "file"; c.style.position = "fixed"; c.style.left = "0"; c.style.top = "0"; c.style.opacity = "0.001"; m.document.body.appendChild(c); c.addEventListener("change", function (f) { b(Array.prototype.slice.call(f.target.files)) }); var d = function (f) {
          var g = function () {
            b([]);
            c.parentNode.removeChild(c)
          }; Y.os.isAndroid() && "remove" !== f.type ? Z.setEditorTimeout(a, g, 0) : g(); a.off("focusin remove", d)
        }; a.on("focusin remove", d); c.click()
      })
    }
  }, ba = {
    setupButtons: function (a) {
      
      a.ui.registry.addButton("quickimage", {
        icon: "image", tooltip: "Insert image", onAction: function () { aa.pickFile(a).then(function (b) { if (0 < b.length) { var c = b[0]; X.blobToBase64(c).then(function (d) { H.insertBlob(a, d, c) }) } }) }
      });
      a.ui.registry.addButton("quicktable", {
        icon: "table", tooltip: "Insert table", onAction: function () {
          H.insertTable(a, 2, 2)
        }
      });

    }
  }, ca = function () { }, e = function (a) { return function () { return a } }, r = e(!1), y = e(!0), v = function () { return z }, z = function () {
    var a = function (d) { return d.isNone() }, b = function (d) { return d() }, c = function (d) { return d }; a = {
      fold: function (d, f) { return d() }, is: r, isSome: r, isNone: y, getOr: c, getOrThunk: b, getOrDie: function (d) { throw Error(d || "error: getOrDie called on none."); }, getOrNull: e(null), getOrUndefined: e(void 0), or: c, orThunk: b, map: v, each: ca, bind: v, exists: r, forall: y, filter: v, equals: a, equals_: a, toArray: function () { return [] },
      toString: e("none()")
    }; Object.freeze && Object.freeze(a); return a
  }(), A = function (a) {
    var b = e(a), c = function () { return f }, d = function (g) { return g(a) }, f = {
      fold: function (g, k) { return k(a) }, is: function (g) { return a === g }, isSome: y, isNone: r, getOr: b, getOrThunk: b, getOrDie: b, getOrNull: b, getOrUndefined: b, or: c, orThunk: c, map: function (g) { return A(g(a)) }, each: function (g) { g(a) }, bind: d, exists: d, forall: d, filter: function (g) { return g(a) ? f : z }, toArray: function () { return [a] }, toString: function () { return "some(" + a + ")" }, equals: function (g) { return g.is(a) },
      equals_: function (g, k) { return g.fold(r, function (B) { return k(a, B) }) }
    }; return f
  }, p = { some: A, none: v, from: function (a) { return null === a || void 0 === a ? z : A(a) } }, t = function (a) { if (null === a || void 0 === a) throw Error("Node cannot be null or undefined"); return { dom: e(a) } }, J = {
    fromHtml: function (a, b) { b = (b || m.document).createElement("div"); b.innerHTML = a; if (!b.hasChildNodes() || 1 < b.childNodes.length) throw m.console.error("HTML does not have a single root node", a), Error("HTML must have a single root node"); return t(b.childNodes[0]) },
    fromTag: function (a, b) { a = (b || m.document).createElement(a); return t(a) }, fromText: function (a, b) { a = (b || m.document).createTextNode(a); return t(a) }, fromDom: t, fromPoint: function (a, b, c) { a = a.dom(); return p.from(a.elementFromPoint(b, c)).map(t) }
  }, da = m.Node.ELEMENT_NODE; "undefined" !== typeof m.window || Function("return this;")(); var h = function (a) {
    return function (b) {
      if (null === b) b = "null"; else {
        var c = typeof b; b = "object" === c && (Array.prototype.isPrototypeOf(b) || b.constructor && "Array" === b.constructor.name) ? "array" : "object" ===
          c && (String.prototype.isPrototypeOf(b) || b.constructor && "String" === b.constructor.name) ? "string" : c
      } return b === a
    }
  }, ea = h("string"), fa = h("object"), ha = h("array"), ia = h("boolean"), ja = h("undefined"), x = h("function"), ka = function (a, b) { for (var c = 0, d = a.length; c < d; c++) { var f = a[c]; if (b(f, c)) return p.some(f) } return p.none() }; x(Array.from); var K = function (a) { var b = a; return { get: function () { return b }, set: function (c) { b = c }, clone: function () { return K(b) } } }, L = function () { return C(0, 0) }, C = function (a, b) { return { major: a, minor: b } },
    w = { nu: C, detect: function (a, b) { b = String(b).toLowerCase(); if (0 === a.length) a = L(); else { a: { for (var c = 0; c < a.length; c++) { var d = a[c]; if (d.test(b)) { a = d; break a } } a = void 0 } a = a ? C(Number(b.replace(a, "$1")), Number(b.replace(a, "$2"))) : { major: 0, minor: 0 } } return a }, unknown: L }, q = function (a, b) { return function () { return b === a } }, M = function (a) { var b = a.current; return { current: b, version: a.version, isEdge: q("Edge", b), isChrome: q("Chrome", b), isIE: q("IE", b), isOpera: q("Opera", b), isFirefox: q("Firefox", b), isSafari: q("Safari", b) } }, la =
      function () { return M({ current: void 0, version: w.unknown() }) }; e("Edge"); e("Chrome"); e("IE"); e("Opera"); e("Firefox"); e("Safari"); var n = function (a, b) { return function () { return b === a } }, N = function (a) { var b = a.current; return { current: b, version: a.version, isWindows: n("Windows", b), isiOS: n("iOS", b), isAndroid: n("Android", b), isOSX: n("OSX", b), isLinux: n("Linux", b), isSolaris: n("Solaris", b), isFreeBSD: n("FreeBSD", b), isChromeOS: n("ChromeOS", b) } }, ma = function () { return N({ current: void 0, version: w.unknown() }) }; e("Windows");
  e("iOS"); e("Android"); e("Linux"); e("OSX"); e("Solaris"); e("FreeBSD"); e("ChromeOS"); var O = function (a, b) { var c = String(b).toLowerCase(); return ka(a, function (d) { return d.search(c) }) }, P = { detectBrowser: function (a, b) { return O(a, b).map(function (c) { var d = w.detect(c.versionRegexes, b); return { current: c.name, version: d } }) }, detectOs: function (a, b) { return O(a, b).map(function (c) { var d = w.detect(c.versionRegexes, b); return { current: c.name, version: d } }) } }, l = function (a, b) { return -1 !== a.indexOf(b) }, u = /.*?version\/ ?([0-9]+)\.([0-9]+).*/;
  h = function (a) { return function (b) { return l(b, a) } }; u = [{ name: "Edge", versionRegexes: [/.*?edge\/ ?([0-9]+)\.([0-9]+)$/], search: function (a) { return l(a, "edge/") && l(a, "chrome") && l(a, "safari") && l(a, "applewebkit") } }, { name: "Chrome", versionRegexes: [/.*?chrome\/([0-9]+)\.([0-9]+).*/, u], search: function (a) { return l(a, "chrome") && !l(a, "chromeframe") } }, { name: "IE", versionRegexes: [/.*?msie ?([0-9]+)\.([0-9]+).*/, /.*?rv:([0-9]+)\.([0-9]+).*/], search: function (a) { return l(a, "msie") || l(a, "trident") } }, {
    name: "Opera", versionRegexes: [u,
      /.*?opera\/([0-9]+)\.([0-9]+).*/], search: h("opera")
  }, { name: "Firefox", versionRegexes: [/.*?firefox\/ ?([0-9]+)\.([0-9]+).*/], search: h("firefox") }, { name: "Safari", versionRegexes: [u, /.*?cpu os ([0-9]+)_([0-9]+).*/], search: function (a) { return (l(a, "safari") || l(a, "mobile/")) && l(a, "applewebkit") } }]; h = [{ name: "Windows", search: h("win"), versionRegexes: [/.*?windows nt ?([0-9]+)\.([0-9]+).*/] }, {
    name: "iOS", search: function (a) { return l(a, "iphone") || l(a, "ipad") }, versionRegexes: [/.*?version\/ ?([0-9]+)\.([0-9]+).*/, /.*cpu os ([0-9]+)_([0-9]+).*/,
      /.*cpu iphone os ([0-9]+)_([0-9]+).*/]
  }, { name: "Android", search: h("android"), versionRegexes: [/.*?android ?([0-9]+)\.([0-9]+).*/] }, { name: "OSX", search: h("mac os x"), versionRegexes: [/.*?mac os x ?([0-9]+)_([0-9]+).*/] }, { name: "Linux", search: h("linux"), versionRegexes: [] }, { name: "Solaris", search: h("sunos"), versionRegexes: [] }, { name: "FreeBSD", search: h("freebsd"), versionRegexes: [] }, { name: "ChromeOS", search: h("cros"), versionRegexes: [/.*?chrome\/([0-9]+)\.([0-9]+).*/] }]; var Q = { browsers: e(u), oses: e(h) }, R = function (a,
    b) { a = a.dom(); if (a.nodeType !== da) return !1; if (void 0 !== a.matches) return a.matches(b); if (void 0 !== a.msMatchesSelector) return a.msMatchesSelector(b); if (void 0 !== a.webkitMatchesSelector) return a.webkitMatchesSelector(b); if (void 0 !== a.mozMatchesSelector) return a.mozMatchesSelector(b); throw Error("Browser lacks native selectors"); }; K(function (a, b) {
      var c = Q.browsers(), d = Q.oses(); c = P.detectBrowser(c, a).fold(la, M); d = P.detectOs(d, a).fold(ma, N); var f = d.isiOS() && !0 === /ipad/i.test(a), g = d.isiOS() && !f, k = d.isiOS() ||
        d.isAndroid(), B = k || b("(pointer:coarse)"); b = f || !g && k && b("(min-device-width:768px)"); k = g || k && !b; a = c.isSafari() && d.isiOS() && !1 === /safari/i.test(a); var na = !k && !b && !a; a = { isiPad: e(f), isiPhone: e(g), isTablet: e(b), isPhone: e(k), isTouch: e(B), isAndroid: d.isAndroid, isiOS: d.isiOS, isWebView: e(a), isDesktop: e(na) }; return { browser: c, os: d, deviceType: a }
    }(m.navigator.userAgent, function (a) { return m.window.matchMedia(a).matches })).get().browser.isIE(); var S = function (a, b, c) {
      a = a.dom(); for (c = x(c) ? c : e(!1); a.parentNode;) {
        a = a.parentNode;
        var d = J.fromDom(a); if (b(d)) return p.some(d); if (c(d)) break
      } return p.none()
    }, oa = function (a, b, c) { return F(function (d, f) { return f(d) }, S, a, b, c) }, pa = function (a, b, c) { return S(a, function (d) { return R(d, b) }, c) }, D = { getToolbarItemsOr: function (a) { return function (b, c, d) { if (!a(d)) throw Error("Default value doesn't match requested type."); b = b.getParam(c, d); if (ha(b) || fa(b)) throw Error("expected a string but found: " + b); d = ja(b) ? d : ia(b) ? !1 === b ? "" : d : b; return d } }(ea) }, E = {
      getTextSelectionToolbarItems: function (a) {
        return D.getToolbarItemsOr(a,
          "quickbars_selection_toolbar", "bold italic | quicklink h2 h3 blockquote")
      }, getInsertToolbarItems: function (a) { return D.getToolbarItemsOr(a, "quickbars_insert_toolbar", "quickimage quicktable") }, getImageToolbarItems: function (a) { return D.getToolbarItemsOr(a, "quickbars_image_toolbar", "alignleft aligncenter alignright") }
    }, qa = {
      addToEditor: function (a) {
        var b = E.getInsertToolbarItems(a); 0 < b.trim().length && a.ui.registry.addContextToolbar("quickblock", {
          predicate: function (c) {
            var d = J.fromDom(c), f = a.schema.getTextBlockElements(),
              g = function (k) { return k.dom() === a.getBody() }; return F(R, pa, d, "table", g).fold(function () { return oa(d, function (k) { return k.dom().nodeName.toLowerCase() in f && a.dom.isEmpty(k.dom()) }, g).isSome() }, function () { return !1 })
          }, items: b, position: "line", scope: "editor"
        })
      }
    }, ra = {
      addToEditor: function (a) {
        var b = function (d) { return "IMG" === d.nodeName || "FIGURE" === d.nodeName && /image/i.test(d.className) }, c = E.getImageToolbarItems(a); 0 < c.trim().length && a.ui.registry.addContextToolbar("imageselection", { predicate: b, items: c, position: "node" });
        c = E.getTextSelectionToolbarItems(a); 0 < c.trim().length && a.ui.registry.addContextToolbar("textselection", { predicate: function (d) { return !b(d) && !a.selection.isCollapsed() && "false" !== a.dom.getContentEditableParent(d) }, items: c, position: "selection", scope: "editor" })
      }
    }; (function () { T.add("quickbars", function (a) { ba.setupButtons(a); qa.addToEditor(a); ra.addToEditor(a) }) })()
})(window);