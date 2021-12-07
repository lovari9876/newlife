!(function (e, t) {
    "function" == typeof define && define.amd ? define(t) : "object" == typeof module && module.exports ? (module.exports = t()) : (e.EvEmitter = t());
})("undefined" != typeof window ? window : this, function () {
    "use strict";
    function e() {}
    var t = e.prototype;
    return (
        (t.on = function (e, t) {
            if (e && t) {
                var n = (this._events = this._events || {}),
                    i = (n[e] = n[e] || []);
                return i.indexOf(t) == -1 && i.push(t), this;
            }
        }),
        (t.once = function (e, t) {
            if (e && t) {
                this.on(e, t);
                var n = (this._onceEvents = this._onceEvents || {}),
                    i = (n[e] = n[e] || {});
                return (i[t] = !0), this;
            }
        }),
        (t.off = function (e, t) {
            var n = this._events && this._events[e];
            if (n && n.length) {
                var i = n.indexOf(t);
                return i != -1 && n.splice(i, 1), this;
            }
        }),
        (t.emitEvent = function (e, t) {
            var n = this._events && this._events[e];
            if (n && n.length) {
                (n = n.slice(0)), (t = t || []);
                for (var i = this._onceEvents && this._onceEvents[e], s = 0; s < n.length; s++) {
                    var o = n[s],
                        f = i && i[o];
                    f && (this.off(e, o), delete i[o]), o.apply(this, t);
                }
                return this;
            }
        }),
        (t.allOff = function () {
            delete this._events, delete this._onceEvents;
        }),
        e
    );
});
!(function (t, e) {
    "function" == typeof define && define.amd ? define(e) : "object" == typeof module && module.exports ? (module.exports = e()) : (t.getSize = e());
})(window, function () {
    "use strict";
    function t(t) {
        var e = parseFloat(t),
            i = t.indexOf("%") == -1 && !isNaN(e);
        return i && e;
    }
    function e() {}
    function i() {
        for (var t = { width: 0, height: 0, innerWidth: 0, innerHeight: 0, outerWidth: 0, outerHeight: 0 }, e = 0; e < g; e++) {
            var i = a[e];
            t[i] = 0;
        }
        return t;
    }
    function o(t) {
        var e = getComputedStyle(t);
        return e || h("Style returned " + e + ". Are you running this code in a hidden iframe on Firefox? See https://bit.ly/getsizebug1"), e;
    }
    function r() {
        if (!p) {
            p = !0;
            var e = document.createElement("div");
            (e.style.width = "200px"), (e.style.padding = "1px 2px 3px 4px"), (e.style.borderStyle = "solid"), (e.style.borderWidth = "1px 2px 3px 4px"), (e.style.boxSizing = "border-box");
            var i = document.body || document.documentElement;
            i.appendChild(e);
            var r = o(e);
            (n = 200 == Math.round(t(r.width))), (d.isBoxSizeOuter = n), i.removeChild(e);
        }
    }
    function d(e) {
        if ((r(), "string" == typeof e && (e = document.querySelector(e)), e && "object" == typeof e && e.nodeType)) {
            var d = o(e);
            if ("none" == d.display) return i();
            var h = {};
            (h.width = e.offsetWidth), (h.height = e.offsetHeight);
            for (var p = (h.isBorderBox = "border-box" == d.boxSizing), u = 0; u < g; u++) {
                var f = a[u],
                    m = d[f],
                    s = parseFloat(m);
                h[f] = isNaN(s) ? 0 : s;
            }
            var l = h.paddingLeft + h.paddingRight,
                c = h.paddingTop + h.paddingBottom,
                b = h.marginLeft + h.marginRight,
                x = h.marginTop + h.marginBottom,
                y = h.borderLeftWidth + h.borderRightWidth,
                v = h.borderTopWidth + h.borderBottomWidth,
                W = p && n,
                w = t(d.width);
            w !== !1 && (h.width = w + (W ? 0 : l + y));
            var B = t(d.height);
            return B !== !1 && (h.height = B + (W ? 0 : c + v)), (h.innerWidth = h.width - (l + y)), (h.innerHeight = h.height - (c + v)), (h.outerWidth = h.width + b), (h.outerHeight = h.height + x), h;
        }
    }
    var n,
        h =
            "undefined" == typeof console
                ? e
                : function (t) {
                      console.error(t);
                  },
        a = ["paddingLeft", "paddingRight", "paddingTop", "paddingBottom", "marginLeft", "marginRight", "marginTop", "marginBottom", "borderLeftWidth", "borderRightWidth", "borderTopWidth", "borderBottomWidth"],
        g = a.length,
        p = !1;
    return d;
});
!(function (e, t) {
    "use strict";
    "function" == typeof define && define.amd ? define(t) : "object" == typeof module && module.exports ? (module.exports = t()) : (e.matchesSelector = t());
})(window, function () {
    "use strict";
    var e = (function () {
        var e = window.Element.prototype;
        if (e.matches) return "matches";
        if (e.matchesSelector) return "matchesSelector";
        for (var t = ["webkit", "moz", "ms", "o"], o = 0; o < t.length; o++) {
            var r = t[o],
                n = r + "MatchesSelector";
            if (e[n]) return n;
        }
    })();
    return function (t, o) {
        return t[e](o);
    };
});
!(function (e, t) {
    "function" == typeof define && define.amd
        ? define(["desandro-matches-selector/matches-selector"], function (r) {
              return t(e, r);
          })
        : "object" == typeof module && module.exports
        ? (module.exports = t(e, require("desandro-matches-selector")))
        : (e.fizzyUIUtils = t(e, e.matchesSelector));
})(window, function (e, t) {
    "use strict";
    var r = {};
    (r.extend = function (e, t) {
        for (var r in t) e[r] = t[r];
        return e;
    }),
        (r.modulo = function (e, t) {
            return ((e % t) + t) % t;
        });
    var n = Array.prototype.slice;
    (r.makeArray = function (e) {
        if (Array.isArray(e)) return e;
        if (null === e || void 0 === e) return [];
        var t = "object" == typeof e && "number" == typeof e.length;
        return t ? n.call(e) : [e];
    }),
        (r.removeFrom = function (e, t) {
            var r = e.indexOf(t);
            r != -1 && e.splice(r, 1);
        }),
        (r.getParent = function (e, r) {
            for (; e.parentNode && e != document.body; ) if (((e = e.parentNode), t(e, r))) return e;
        }),
        (r.getQueryElement = function (e) {
            return "string" == typeof e ? document.querySelector(e) : e;
        }),
        (r.handleEvent = function (e) {
            var t = "on" + e.type;
            this[t] && this[t](e);
        }),
        (r.filterFindElements = function (e, n) {
            e = r.makeArray(e);
            var o = [];
            return (
                e.forEach(function (e) {
                    if (e instanceof HTMLElement) {
                        if (!n) return void o.push(e);
                        t(e, n) && o.push(e);
                        for (var r = e.querySelectorAll(n), u = 0; u < r.length; u++) o.push(r[u]);
                    }
                }),
                o
            );
        }),
        (r.debounceMethod = function (e, t, r) {
            r = r || 100;
            var n = e.prototype[t],
                o = t + "Timeout";
            e.prototype[t] = function () {
                var e = this[o];
                clearTimeout(e);
                var t = arguments,
                    u = this;
                this[o] = setTimeout(function () {
                    n.apply(u, t), delete u[o];
                }, r);
            };
        }),
        (r.docReady = function (e) {
            var t = document.readyState;
            "complete" == t || "interactive" == t ? setTimeout(e) : document.addEventListener("DOMContentLoaded", e);
        }),
        (r.toDashed = function (e) {
            return e
                .replace(/(.)([A-Z])/g, function (e, t, r) {
                    return t + "-" + r;
                })
                .toLowerCase();
        });
    var o = e.console;
    return (
        (r.htmlInit = function (t, n) {
            r.docReady(function () {
                var u = r.toDashed(n),
                    a = "data-" + u,
                    i = document.querySelectorAll("[" + a + "]"),
                    c = document.querySelectorAll(".js-" + u),
                    d = r.makeArray(i).concat(r.makeArray(c)),
                    f = a + "-options",
                    s = e.jQuery;
                d.forEach(function (e) {
                    var r,
                        u = e.getAttribute(a) || e.getAttribute(f);
                    try {
                        r = u && JSON.parse(u);
                    } catch (i) {
                        return void (o && o.error("Error parsing " + a + " on " + e.className + ": " + i));
                    }
                    var c = new t(e, r);
                    s && s.data(e, n, c);
                });
            });
        }),
        r
    );
});
!(function (t, i) {
    "function" == typeof define && define.amd
        ? define(["ev-emitter/ev-emitter", "get-size/get-size"], i)
        : "object" == typeof module && module.exports
        ? (module.exports = i(require("ev-emitter"), require("get-size")))
        : ((t.Outlayer = {}), (t.Outlayer.Item = i(t.EvEmitter, t.getSize)));
})(window, function (t, i) {
    "use strict";
    function n(t) {
        for (var i in t) return !1;
        return (i = null), !0;
    }
    function o(t, i) {
        t && ((this.element = t), (this.layout = i), (this.position = { x: 0, y: 0 }), this._create());
    }
    function e(t) {
        return t.replace(/([A-Z])/g, function (t) {
            return "-" + t.toLowerCase();
        });
    }
    var s = document.documentElement.style,
        r = "string" == typeof s.transition ? "transition" : "WebkitTransition",
        a = "string" == typeof s.transform ? "transform" : "WebkitTransform",
        h = { WebkitTransition: "webkitTransitionEnd", transition: "transitionend" }[r],
        l = { transform: a, transition: r, transitionDuration: r + "Duration", transitionProperty: r + "Property", transitionDelay: r + "Delay" },
        u = (o.prototype = Object.create(t.prototype));
    (u.constructor = o),
        (u._create = function () {
            (this._transn = { ingProperties: {}, clean: {}, onEnd: {} }), this.css({ position: "absolute" });
        }),
        (u.handleEvent = function (t) {
            var i = "on" + t.type;
            this[i] && this[i](t);
        }),
        (u.getSize = function () {
            this.size = i(this.element);
        }),
        (u.css = function (t) {
            var i = this.element.style;
            for (var n in t) {
                var o = l[n] || n;
                i[o] = t[n];
            }
        }),
        (u.getPosition = function () {
            var t = getComputedStyle(this.element),
                i = this.layout._getOption("originLeft"),
                n = this.layout._getOption("originTop"),
                o = t[i ? "left" : "right"],
                e = t[n ? "top" : "bottom"],
                s = parseFloat(o),
                r = parseFloat(e),
                a = this.layout.size;
            o.indexOf("%") != -1 && (s = (s / 100) * a.width),
                e.indexOf("%") != -1 && (r = (r / 100) * a.height),
                (s = isNaN(s) ? 0 : s),
                (r = isNaN(r) ? 0 : r),
                (s -= i ? a.paddingLeft : a.paddingRight),
                (r -= n ? a.paddingTop : a.paddingBottom),
                (this.position.x = s),
                (this.position.y = r);
        }),
        (u.layoutPosition = function () {
            var t = this.layout.size,
                i = {},
                n = this.layout._getOption("originLeft"),
                o = this.layout._getOption("originTop"),
                e = n ? "paddingLeft" : "paddingRight",
                s = n ? "left" : "right",
                r = n ? "right" : "left",
                a = this.position.x + t[e];
            (i[s] = this.getXValue(a)), (i[r] = "");
            var h = o ? "paddingTop" : "paddingBottom",
                l = o ? "top" : "bottom",
                u = o ? "bottom" : "top",
                d = this.position.y + t[h];
            (i[l] = this.getYValue(d)), (i[u] = ""), this.css(i), this.emitEvent("layout", [this]);
        }),
        (u.getXValue = function (t) {
            var i = this.layout._getOption("horizontal");
            return this.layout.options.percentPosition && !i ? (t / this.layout.size.width) * 100 + "%" : t + "px";
        }),
        (u.getYValue = function (t) {
            var i = this.layout._getOption("horizontal");
            return this.layout.options.percentPosition && i ? (t / this.layout.size.height) * 100 + "%" : t + "px";
        }),
        (u._transitionTo = function (t, i) {
            this.getPosition();
            var n = this.position.x,
                o = this.position.y,
                e = t == this.position.x && i == this.position.y;
            if ((this.setPosition(t, i), e && !this.isTransitioning)) return void this.layoutPosition();
            var s = t - n,
                r = i - o,
                a = {};
            (a.transform = this.getTranslate(s, r)), this.transition({ to: a, onTransitionEnd: { transform: this.layoutPosition }, isCleaning: !0 });
        }),
        (u.getTranslate = function (t, i) {
            var n = this.layout._getOption("originLeft"),
                o = this.layout._getOption("originTop");
            return (t = n ? t : -t), (i = o ? i : -i), "translate3d(" + t + "px, " + i + "px, 0)";
        }),
        (u.goTo = function (t, i) {
            this.setPosition(t, i), this.layoutPosition();
        }),
        (u.moveTo = u._transitionTo),
        (u.setPosition = function (t, i) {
            (this.position.x = parseFloat(t)), (this.position.y = parseFloat(i));
        }),
        (u._nonTransition = function (t) {
            this.css(t.to), t.isCleaning && this._removeStyles(t.to);
            for (var i in t.onTransitionEnd) t.onTransitionEnd[i].call(this);
        }),
        (u.transition = function (t) {
            if (!parseFloat(this.layout.options.transitionDuration)) return void this._nonTransition(t);
            var i = this._transn;
            for (var n in t.onTransitionEnd) i.onEnd[n] = t.onTransitionEnd[n];
            for (n in t.to) (i.ingProperties[n] = !0), t.isCleaning && (i.clean[n] = !0);
            if (t.from) {
                this.css(t.from);
                var o = this.element.offsetHeight;
                o = null;
            }
            this.enableTransition(t.to), this.css(t.to), (this.isTransitioning = !0);
        });
    var d = "opacity," + e(a);
    (u.enableTransition = function () {
        if (!this.isTransitioning) {
            var t = this.layout.options.transitionDuration;
            (t = "number" == typeof t ? t + "ms" : t), this.css({ transitionProperty: d, transitionDuration: t, transitionDelay: this.staggerDelay || 0 }), this.element.addEventListener(h, this, !1);
        }
    }),
        (u.onwebkitTransitionEnd = function (t) {
            this.ontransitionend(t);
        }),
        (u.onotransitionend = function (t) {
            this.ontransitionend(t);
        });
    var p = { "-webkit-transform": "transform" };
    (u.ontransitionend = function (t) {
        if (t.target === this.element) {
            var i = this._transn,
                o = p[t.propertyName] || t.propertyName;
            if ((delete i.ingProperties[o], n(i.ingProperties) && this.disableTransition(), o in i.clean && ((this.element.style[t.propertyName] = ""), delete i.clean[o]), o in i.onEnd)) {
                var e = i.onEnd[o];
                e.call(this), delete i.onEnd[o];
            }
            this.emitEvent("transitionEnd", [this]);
        }
    }),
        (u.disableTransition = function () {
            this.removeTransitionStyles(), this.element.removeEventListener(h, this, !1), (this.isTransitioning = !1);
        }),
        (u._removeStyles = function (t) {
            var i = {};
            for (var n in t) i[n] = "";
            this.css(i);
        });
    var f = { transitionProperty: "", transitionDuration: "", transitionDelay: "" };
    return (
        (u.removeTransitionStyles = function () {
            this.css(f);
        }),
        (u.stagger = function (t) {
            (t = isNaN(t) ? 0 : t), (this.staggerDelay = t + "ms");
        }),
        (u.removeElem = function () {
            this.element.parentNode.removeChild(this.element), this.css({ display: "" }), this.emitEvent("remove", [this]);
        }),
        (u.remove = function () {
            return r && parseFloat(this.layout.options.transitionDuration)
                ? (this.once("transitionEnd", function () {
                      this.removeElem();
                  }),
                  void this.hide())
                : void this.removeElem();
        }),
        (u.reveal = function () {
            delete this.isHidden, this.css({ display: "" });
            var t = this.layout.options,
                i = {},
                n = this.getHideRevealTransitionEndProperty("visibleStyle");
            (i[n] = this.onRevealTransitionEnd), this.transition({ from: t.hiddenStyle, to: t.visibleStyle, isCleaning: !0, onTransitionEnd: i });
        }),
        (u.onRevealTransitionEnd = function () {
            this.isHidden || this.emitEvent("reveal");
        }),
        (u.getHideRevealTransitionEndProperty = function (t) {
            var i = this.layout.options[t];
            if (i.opacity) return "opacity";
            for (var n in i) return n;
        }),
        (u.hide = function () {
            (this.isHidden = !0), this.css({ display: "" });
            var t = this.layout.options,
                i = {},
                n = this.getHideRevealTransitionEndProperty("hiddenStyle");
            (i[n] = this.onHideTransitionEnd), this.transition({ from: t.visibleStyle, to: t.hiddenStyle, isCleaning: !0, onTransitionEnd: i });
        }),
        (u.onHideTransitionEnd = function () {
            this.isHidden && (this.css({ display: "none" }), this.emitEvent("hide"));
        }),
        (u.destroy = function () {
            this.css({ position: "", left: "", right: "", top: "", bottom: "", transition: "", transform: "" });
        }),
        o
    );
});
!(function (t, e) {
    "use strict";
    "function" == typeof define && define.amd
        ? define(["ev-emitter/ev-emitter", "get-size/get-size", "fizzy-ui-utils/utils", "./item"], function (i, n, s, o) {
              return e(t, i, n, s, o);
          })
        : "object" == typeof module && module.exports
        ? (module.exports = e(t, require("ev-emitter"), require("get-size"), require("fizzy-ui-utils"), require("./item")))
        : (t.Outlayer = e(t, t.EvEmitter, t.getSize, t.fizzyUIUtils, t.Outlayer.Item));
})(window, function (t, e, i, n, s) {
    "use strict";
    function o(t, e) {
        var i = n.getQueryElement(t);
        if (!i) return void (h && h.error("Bad element for " + this.constructor.namespace + ": " + (i || t)));
        (this.element = i), u && (this.$element = u(this.element)), (this.options = n.extend({}, this.constructor.defaults)), this.option(e);
        var s = ++c;
        (this.element.outlayerGUID = s), (f[s] = this), this._create();
        var o = this._getOption("initLayout");
        o && this.layout();
    }
    function r(t) {
        function e() {
            t.apply(this, arguments);
        }
        return (e.prototype = Object.create(t.prototype)), (e.prototype.constructor = e), e;
    }
    function a(t) {
        if ("number" == typeof t) return t;
        var e = t.match(/(^\d*\.?\d*)(\w*)/),
            i = e && e[1],
            n = e && e[2];
        if (!i.length) return 0;
        i = parseFloat(i);
        var s = d[n] || 1;
        return i * s;
    }
    var h = t.console,
        u = t.jQuery,
        m = function () {},
        c = 0,
        f = {};
    (o.namespace = "outlayer"),
        (o.Item = s),
        (o.defaults = {
            containerStyle: { position: "relative" },
            initLayout: !0,
            originLeft: !0,
            originTop: !0,
            resize: !0,
            resizeContainer: !0,
            transitionDuration: "0.4s",
            hiddenStyle: { opacity: 0, transform: "scale(0.001)" },
            visibleStyle: { opacity: 1, transform: "scale(1)" },
        });
    var l = o.prototype;
    n.extend(l, e.prototype),
        (l.option = function (t) {
            n.extend(this.options, t);
        }),
        (l._getOption = function (t) {
            var e = this.constructor.compatOptions[t];
            return e && void 0 !== this.options[e] ? this.options[e] : this.options[t];
        }),
        (o.compatOptions = { initLayout: "isInitLayout", horizontal: "isHorizontal", layoutInstant: "isLayoutInstant", originLeft: "isOriginLeft", originTop: "isOriginTop", resize: "isResizeBound", resizeContainer: "isResizingContainer" }),
        (l._create = function () {
            this.reloadItems(), (this.stamps = []), this.stamp(this.options.stamp), n.extend(this.element.style, this.options.containerStyle);
            var t = this._getOption("resize");
            t && this.bindResize();
        }),
        (l.reloadItems = function () {
            this.items = this._itemize(this.element.children);
        }),
        (l._itemize = function (t) {
            for (var e = this._filterFindItemElements(t), i = this.constructor.Item, n = [], s = 0; s < e.length; s++) {
                var o = e[s],
                    r = new i(o, this);
                n.push(r);
            }
            return n;
        }),
        (l._filterFindItemElements = function (t) {
            return n.filterFindElements(t, this.options.itemSelector);
        }),
        (l.getItemElements = function () {
            return this.items.map(function (t) {
                return t.element;
            });
        }),
        (l.layout = function () {
            this._resetLayout(), this._manageStamps();
            var t = this._getOption("layoutInstant"),
                e = void 0 !== t ? t : !this._isLayoutInited;
            this.layoutItems(this.items, e), (this._isLayoutInited = !0);
        }),
        (l._init = l.layout),
        (l._resetLayout = function () {
            this.getSize();
        }),
        (l.getSize = function () {
            this.size = i(this.element);
        }),
        (l._getMeasurement = function (t, e) {
            var n,
                s = this.options[t];
            s ? ("string" == typeof s ? (n = this.element.querySelector(s)) : s instanceof HTMLElement && (n = s), (this[t] = n ? i(n)[e] : s)) : (this[t] = 0);
        }),
        (l.layoutItems = function (t, e) {
            (t = this._getItemsForLayout(t)), this._layoutItems(t, e), this._postLayout();
        }),
        (l._getItemsForLayout = function (t) {
            return t.filter(function (t) {
                return !t.isIgnored;
            });
        }),
        (l._layoutItems = function (t, e) {
            if ((this._emitCompleteOnItems("layout", t), t && t.length)) {
                var i = [];
                t.forEach(function (t) {
                    var n = this._getItemLayoutPosition(t);
                    (n.item = t), (n.isInstant = e || t.isLayoutInstant), i.push(n);
                }, this),
                    this._processLayoutQueue(i);
            }
        }),
        (l._getItemLayoutPosition = function () {
            return { x: 0, y: 0 };
        }),
        (l._processLayoutQueue = function (t) {
            this.updateStagger(),
                t.forEach(function (t, e) {
                    this._positionItem(t.item, t.x, t.y, t.isInstant, e);
                }, this);
        }),
        (l.updateStagger = function () {
            var t = this.options.stagger;
            return null === t || void 0 === t ? void (this.stagger = 0) : ((this.stagger = a(t)), this.stagger);
        }),
        (l._positionItem = function (t, e, i, n, s) {
            n ? t.goTo(e, i) : (t.stagger(s * this.stagger), t.moveTo(e, i));
        }),
        (l._postLayout = function () {
            this.resizeContainer();
        }),
        (l.resizeContainer = function () {
            var t = this._getOption("resizeContainer");
            if (t) {
                var e = this._getContainerSize();
                e && (this._setContainerMeasure(e.width, !0), this._setContainerMeasure(e.height, !1));
            }
        }),
        (l._getContainerSize = m),
        (l._setContainerMeasure = function (t, e) {
            if (void 0 !== t) {
                var i = this.size;
                i.isBorderBox && (t += e ? i.paddingLeft + i.paddingRight + i.borderLeftWidth + i.borderRightWidth : i.paddingBottom + i.paddingTop + i.borderTopWidth + i.borderBottomWidth),
                    (t = Math.max(t, 0)),
                    (this.element.style[e ? "width" : "height"] = t + "px");
            }
        }),
        (l._emitCompleteOnItems = function (t, e) {
            function i() {
                s.dispatchEvent(t + "Complete", null, [e]);
            }
            function n() {
                r++, r == o && i();
            }
            var s = this,
                o = e.length;
            if (!e || !o) return void i();
            var r = 0;
            e.forEach(function (e) {
                e.once(t, n);
            });
        }),
        (l.dispatchEvent = function (t, e, i) {
            var n = e ? [e].concat(i) : i;
            if ((this.emitEvent(t, n), u))
                if (((this.$element = this.$element || u(this.element)), e)) {
                    var s = u.Event(e);
                    (s.type = t), this.$element.trigger(s, i);
                } else this.$element.trigger(t, i);
        }),
        (l.ignore = function (t) {
            var e = this.getItem(t);
            e && (e.isIgnored = !0);
        }),
        (l.unignore = function (t) {
            var e = this.getItem(t);
            e && delete e.isIgnored;
        }),
        (l.stamp = function (t) {
            (t = this._find(t)), t && ((this.stamps = this.stamps.concat(t)), t.forEach(this.ignore, this));
        }),
        (l.unstamp = function (t) {
            (t = this._find(t)),
                t &&
                    t.forEach(function (t) {
                        n.removeFrom(this.stamps, t), this.unignore(t);
                    }, this);
        }),
        (l._find = function (t) {
            if (t) return "string" == typeof t && (t = this.element.querySelectorAll(t)), (t = n.makeArray(t));
        }),
        (l._manageStamps = function () {
            this.stamps && this.stamps.length && (this._getBoundingRect(), this.stamps.forEach(this._manageStamp, this));
        }),
        (l._getBoundingRect = function () {
            var t = this.element.getBoundingClientRect(),
                e = this.size;
            this._boundingRect = {
                left: t.left + e.paddingLeft + e.borderLeftWidth,
                top: t.top + e.paddingTop + e.borderTopWidth,
                right: t.right - (e.paddingRight + e.borderRightWidth),
                bottom: t.bottom - (e.paddingBottom + e.borderBottomWidth),
            };
        }),
        (l._manageStamp = m),
        (l._getElementOffset = function (t) {
            var e = t.getBoundingClientRect(),
                n = this._boundingRect,
                s = i(t),
                o = { left: e.left - n.left - s.marginLeft, top: e.top - n.top - s.marginTop, right: n.right - e.right - s.marginRight, bottom: n.bottom - e.bottom - s.marginBottom };
            return o;
        }),
        (l.handleEvent = n.handleEvent),
        (l.bindResize = function () {
            t.addEventListener("resize", this), (this.isResizeBound = !0);
        }),
        (l.unbindResize = function () {
            t.removeEventListener("resize", this), (this.isResizeBound = !1);
        }),
        (l.onresize = function () {
            this.resize();
        }),
        n.debounceMethod(o, "onresize", 100),
        (l.resize = function () {
            this.isResizeBound && this.needsResizeLayout() && this.layout();
        }),
        (l.needsResizeLayout = function () {
            var t = i(this.element),
                e = this.size && t;
            return e && t.innerWidth !== this.size.innerWidth;
        }),
        (l.addItems = function (t) {
            var e = this._itemize(t);
            return e.length && (this.items = this.items.concat(e)), e;
        }),
        (l.appended = function (t) {
            var e = this.addItems(t);
            e.length && (this.layoutItems(e, !0), this.reveal(e));
        }),
        (l.prepended = function (t) {
            var e = this._itemize(t);
            if (e.length) {
                var i = this.items.slice(0);
                (this.items = e.concat(i)), this._resetLayout(), this._manageStamps(), this.layoutItems(e, !0), this.reveal(e), this.layoutItems(i);
            }
        }),
        (l.reveal = function (t) {
            if ((this._emitCompleteOnItems("reveal", t), t && t.length)) {
                var e = this.updateStagger();
                t.forEach(function (t, i) {
                    t.stagger(i * e), t.reveal();
                });
            }
        }),
        (l.hide = function (t) {
            if ((this._emitCompleteOnItems("hide", t), t && t.length)) {
                var e = this.updateStagger();
                t.forEach(function (t, i) {
                    t.stagger(i * e), t.hide();
                });
            }
        }),
        (l.revealItemElements = function (t) {
            var e = this.getItems(t);
            this.reveal(e);
        }),
        (l.hideItemElements = function (t) {
            var e = this.getItems(t);
            this.hide(e);
        }),
        (l.getItem = function (t) {
            for (var e = 0; e < this.items.length; e++) {
                var i = this.items[e];
                if (i.element == t) return i;
            }
        }),
        (l.getItems = function (t) {
            t = n.makeArray(t);
            var e = [];
            return (
                t.forEach(function (t) {
                    var i = this.getItem(t);
                    i && e.push(i);
                }, this),
                e
            );
        }),
        (l.remove = function (t) {
            var e = this.getItems(t);
            this._emitCompleteOnItems("remove", e),
                e &&
                    e.length &&
                    e.forEach(function (t) {
                        t.remove(), n.removeFrom(this.items, t);
                    }, this);
        }),
        (l.destroy = function () {
            var t = this.element.style;
            (t.height = ""),
                (t.position = ""),
                (t.width = ""),
                this.items.forEach(function (t) {
                    t.destroy();
                }),
                this.unbindResize();
            var e = this.element.outlayerGUID;
            delete f[e], delete this.element.outlayerGUID, u && u.removeData(this.element, this.constructor.namespace);
        }),
        (o.data = function (t) {
            t = n.getQueryElement(t);
            var e = t && t.outlayerGUID;
            return e && f[e];
        }),
        (o.create = function (t, e) {
            var i = r(o);
            return (
                (i.defaults = n.extend({}, o.defaults)),
                n.extend(i.defaults, e),
                (i.compatOptions = n.extend({}, o.compatOptions)),
                (i.namespace = t),
                (i.data = o.data),
                (i.Item = r(s)),
                n.htmlInit(i, t),
                u && u.bridget && u.bridget(t, i),
                i
            );
        });
    var d = { ms: 1, s: 1e3 };
    return (o.Item = s), o;
});
!(function (t, i) {
    "function" == typeof define && define.amd
        ? define(["outlayer/outlayer", "get-size/get-size"], i)
        : "object" == typeof module && module.exports
        ? (module.exports = i(require("outlayer"), require("get-size")))
        : (t.Masonry = i(t.Outlayer, t.getSize));
})(window, function (t, i) {
    "use strict";
    var o = t.create("masonry");
    o.compatOptions.fitWidth = "isFitWidth";
    var e = o.prototype;
    return (
        (e._resetLayout = function () {
            this.getSize(), this._getMeasurement("columnWidth", "outerWidth"), this._getMeasurement("gutter", "outerWidth"), this.measureColumns(), (this.colYs = []);
            for (var t = 0; t < this.cols; t++) this.colYs.push(0);
            (this.maxY = 0), (this.horizontalColIndex = 0);
        }),
        (e.measureColumns = function () {
            if ((this.getContainerWidth(), !this.columnWidth)) {
                var t = this.items[0],
                    o = t && t.element;
                this.columnWidth = (o && i(o).outerWidth) || this.containerWidth;
            }
            var e = (this.columnWidth += this.gutter),
                h = this.containerWidth + this.gutter,
                n = h / e,
                s = e - (h % e),
                r = s && s < 1 ? "round" : "floor";
            (n = Math[r](n)), (this.cols = Math.max(n, 1));
        }),
        (e.getContainerWidth = function () {
            var t = this._getOption("fitWidth"),
                o = t ? this.element.parentNode : this.element,
                e = i(o);
            this.containerWidth = e && e.innerWidth;
        }),
        (e._getItemLayoutPosition = function (t) {
            t.getSize();
            var i = t.size.outerWidth % this.columnWidth,
                o = i && i < 1 ? "round" : "ceil",
                e = Math[o](t.size.outerWidth / this.columnWidth);
            e = Math.min(e, this.cols);
            for (var h = this.options.horizontalOrder ? "_getHorizontalColPosition" : "_getTopColPosition", n = this[h](e, t), s = { x: this.columnWidth * n.col, y: n.y }, r = n.y + t.size.outerHeight, a = e + n.col, u = n.col; u < a; u++)
                this.colYs[u] = r;
            return s;
        }),
        (e._getTopColPosition = function (t) {
            var i = this._getTopColGroup(t),
                o = Math.min.apply(Math, i);
            return { col: i.indexOf(o), y: o };
        }),
        (e._getTopColGroup = function (t) {
            if (t < 2) return this.colYs;
            for (var i = [], o = this.cols + 1 - t, e = 0; e < o; e++) i[e] = this._getColGroupY(e, t);
            return i;
        }),
        (e._getColGroupY = function (t, i) {
            if (i < 2) return this.colYs[t];
            var o = this.colYs.slice(t, t + i);
            return Math.max.apply(Math, o);
        }),
        (e._getHorizontalColPosition = function (t, i) {
            var o = this.horizontalColIndex % this.cols,
                e = t > 1 && o + t > this.cols;
            o = e ? 0 : o;
            var h = i.size.outerWidth && i.size.outerHeight;
            return (this.horizontalColIndex = h ? o + t : this.horizontalColIndex), { col: o, y: this._getColGroupY(o, t) };
        }),
        (e._manageStamp = function (t) {
            var o = i(t),
                e = this._getElementOffset(t),
                h = this._getOption("originLeft"),
                n = h ? e.left : e.right,
                s = n + o.outerWidth,
                r = Math.floor(n / this.columnWidth);
            r = Math.max(0, r);
            var a = Math.floor(s / this.columnWidth);
            (a -= s % this.columnWidth ? 0 : 1), (a = Math.min(this.cols - 1, a));
            for (var u = this._getOption("originTop"), l = (u ? e.top : e.bottom) + o.outerHeight, c = r; c <= a; c++) this.colYs[c] = Math.max(l, this.colYs[c]);
        }),
        (e._getContainerSize = function () {
            this.maxY = Math.max.apply(Math, this.colYs);
            var t = { height: this.maxY };
            return this._getOption("fitWidth") && (t.width = this._getContainerFitWidth()), t;
        }),
        (e._getContainerFitWidth = function () {
            for (var t = 0, i = this.cols; --i && 0 === this.colYs[i]; ) t++;
            return (this.cols - t) * this.columnWidth - this.gutter;
        }),
        (e.needsResizeLayout = function () {
            var t = this.containerWidth;
            return this.getContainerWidth(), t != this.containerWidth;
        }),
        o
    );
});
!(function (t, e) {
    "use strict";
    "function" == typeof define && define.amd
        ? define(["ev-emitter/ev-emitter"], function (i) {
              return e(t, i);
          })
        : "object" == typeof module && module.exports
        ? (module.exports = e(t, require("ev-emitter")))
        : (t.imagesLoaded = e(t, t.EvEmitter));
})("undefined" != typeof window ? window : this, function (t, e) {
    "use strict";
    function i(t, e) {
        for (var i in e) t[i] = e[i];
        return t;
    }
    function o(t) {
        if (Array.isArray(t)) return t;
        var e = "object" == typeof t && "number" == typeof t.length;
        return e ? d.call(t) : [t];
    }
    function r(t, e, n) {
        if (!(this instanceof r)) return new r(t, e, n);
        var s = t;
        return (
            "string" == typeof t && (s = document.querySelectorAll(t)),
            s
                ? ((this.elements = o(s)),
                  (this.options = i({}, this.options)),
                  "function" == typeof e ? (n = e) : i(this.options, e),
                  n && this.on("always", n),
                  this.getImages(),
                  h && (this.jqDeferred = new h.Deferred()),
                  void setTimeout(this.check.bind(this)))
                : void a.error("Bad element for imagesLoaded " + (s || t))
        );
    }
    function n(t) {
        this.img = t;
    }
    function s(t, e) {
        (this.url = t), (this.element = e), (this.img = new Image());
    }
    var h = t.jQuery,
        a = t.console,
        d = Array.prototype.slice;
    (r.prototype = Object.create(e.prototype)),
        (r.prototype.options = {}),
        (r.prototype.getImages = function () {
            (this.images = []), this.elements.forEach(this.addElementImages, this);
        }),
        (r.prototype.addElementImages = function (t) {
            "IMG" == t.nodeName && this.addImage(t), this.options.background === !0 && this.addElementBackgroundImages(t);
            var e = t.nodeType;
            if (e && m[e]) {
                for (var i = t.querySelectorAll("img"), o = 0; o < i.length; o++) {
                    var r = i[o];
                    this.addImage(r);
                }
                if ("string" == typeof this.options.background) {
                    var n = t.querySelectorAll(this.options.background);
                    for (o = 0; o < n.length; o++) {
                        var s = n[o];
                        this.addElementBackgroundImages(s);
                    }
                }
            }
        });
    var m = { 1: !0, 9: !0, 11: !0 };
    return (
        (r.prototype.addElementBackgroundImages = function (t) {
            var e = getComputedStyle(t);
            if (e)
                for (var i = /url\((['"])?(.*?)\1\)/gi, o = i.exec(e.backgroundImage); null !== o; ) {
                    var r = o && o[2];
                    r && this.addBackground(r, t), (o = i.exec(e.backgroundImage));
                }
        }),
        (r.prototype.addImage = function (t) {
            var e = new n(t);
            this.images.push(e);
        }),
        (r.prototype.addBackground = function (t, e) {
            var i = new s(t, e);
            this.images.push(i);
        }),
        (r.prototype.check = function () {
            function t(t, i, o) {
                setTimeout(function () {
                    e.progress(t, i, o);
                });
            }
            var e = this;
            return (
                (this.progressedCount = 0),
                (this.hasAnyBroken = !1),
                this.images.length
                    ? void this.images.forEach(function (e) {
                          e.once("progress", t), e.check();
                      })
                    : void this.complete()
            );
        }),
        (r.prototype.progress = function (t, e, i) {
            this.progressedCount++,
                (this.hasAnyBroken = this.hasAnyBroken || !t.isLoaded),
                this.emitEvent("progress", [this, t, e]),
                this.jqDeferred && this.jqDeferred.notify && this.jqDeferred.notify(this, t),
                this.progressedCount == this.images.length && this.complete(),
                this.options.debug && a && a.log("progress: " + i, t, e);
        }),
        (r.prototype.complete = function () {
            var t = this.hasAnyBroken ? "fail" : "done";
            if (((this.isComplete = !0), this.emitEvent(t, [this]), this.emitEvent("always", [this]), this.jqDeferred)) {
                var e = this.hasAnyBroken ? "reject" : "resolve";
                this.jqDeferred[e](this);
            }
        }),
        (n.prototype = Object.create(e.prototype)),
        (n.prototype.check = function () {
            var t = this.getIsImageComplete();
            return t
                ? void this.confirm(0 !== this.img.naturalWidth, "naturalWidth")
                : ((this.proxyImage = new Image()),
                  this.proxyImage.addEventListener("load", this),
                  this.proxyImage.addEventListener("error", this),
                  this.img.addEventListener("load", this),
                  this.img.addEventListener("error", this),
                  void (this.proxyImage.src = this.img.src));
        }),
        (n.prototype.getIsImageComplete = function () {
            return this.img.complete && this.img.naturalWidth;
        }),
        (n.prototype.confirm = function (t, e) {
            (this.isLoaded = t), this.emitEvent("progress", [this, this.img, e]);
        }),
        (n.prototype.handleEvent = function (t) {
            var e = "on" + t.type;
            this[e] && this[e](t);
        }),
        (n.prototype.onload = function () {
            this.confirm(!0, "onload"), this.unbindEvents();
        }),
        (n.prototype.onerror = function () {
            this.confirm(!1, "onerror"), this.unbindEvents();
        }),
        (n.prototype.unbindEvents = function () {
            this.proxyImage.removeEventListener("load", this), this.proxyImage.removeEventListener("error", this), this.img.removeEventListener("load", this), this.img.removeEventListener("error", this);
        }),
        (s.prototype = Object.create(n.prototype)),
        (s.prototype.check = function () {
            this.img.addEventListener("load", this), this.img.addEventListener("error", this), (this.img.src = this.url);
            var t = this.getIsImageComplete();
            t && (this.confirm(0 !== this.img.naturalWidth, "naturalWidth"), this.unbindEvents());
        }),
        (s.prototype.unbindEvents = function () {
            this.img.removeEventListener("load", this), this.img.removeEventListener("error", this);
        }),
        (s.prototype.confirm = function (t, e) {
            (this.isLoaded = t), this.emitEvent("progress", [this, this.element, e]);
        }),
        (r.makeJQueryPlugin = function (e) {
            (e = e || t.jQuery),
                e &&
                    ((h = e),
                    (h.fn.imagesLoaded = function (t, e) {
                        var i = new r(this, t, e);
                        return i.jqDeferred.promise(h(this));
                    }));
        }),
        r.makeJQueryPlugin(),
        r
    );
});
!(function () {
    (window.FizzyDocs = {}),
        (window.filterBind = function (n, t, i, e) {
            n.addEventListener(t, function (n) {
                matchesSelector(n.target, i) && e(n);
            });
        });
})();
FizzyDocs["commercial-license-agreement"] = function (e) {
    "use strict";
    function t(e) {
        var t = o.querySelector(".is-selected");
        t && t.classList.remove("is-selected"), e.classList.add("is-selected");
        var i = e.getAttribute("data-license-option"),
            n = r[i];
        l.forEach(function (e) {
            e.element.textContent = n[e.property];
        });
    }
    var r = {
            developer: { title: "Developer", "for-official": "one (1) Licensed Developer", "for-plain": "one individual Developer" },
            team: { title: "Team", "for-official": "up to eight (8) Licensed Developer(s)", "for-plain": "up to 8 Developers" },
            organization: { title: "Organization", "for-official": "an unlimited number of Licensed Developer(s)", "for-plain": "an unlimited number of Developers" },
        },
        o = e.querySelector(".button-group"),
        i = e.querySelector("h2"),
        n = i.cloneNode(!0);
    (n.style.borderTop = "none"),
        (n.style.marginTop = 0),
        (n.id = ""),
        (n.innerHTML = n.innerHTML.replace("Commercial License", 'Commercial <span data-license-property="title"></span> License')),
        (i.textContent = ""),
        o.parentNode.insertBefore(n, o.nextSibling);
    for (var l = [], a = e.querySelectorAll("[data-license-property]"), c = 0, s = a.length; c < s; c++) {
        var p = a[c],
            u = { property: p.getAttribute("data-license-property"), element: p };
        l.push(u);
    }
    t(o.querySelector(".button--developer")),
        filterBind(o, "click", ".button", function (e) {
            t(e.target);
        });
};
!(function () {
    var t = 0;
    FizzyDocs["gh-button"] = function (n) {
        function e(t) {
            return t.toString().replace(/(\d)(?=(\d{3})+$)/g, "$1,");
        }
        var a = n.href.split("/"),
            r = a[3],
            c = a[4],
            o = n.querySelector(".gh-button__stat__text");
        t++;
        var u = "ghButtonCallback" + t;
        window[u] = function (t) {
            var n = e(t.data.stargazers_count);
            o.textContent = n;
        };
        var i = document.createElement("script");
        (i.src = "https://api.github.com/repos/" + r + "/" + c + "?callback=" + u), document.head.appendChild(i);
    };
})();
FizzyDocs["shirt-promo"] = function (e) {
    var t = new Date(2017, 9, 6),
        o = Math.round((t - new Date()) / 864e5),
        r = e.querySelector(".shirt-promo__title");
    r.textContent += ". Only on sale for " + o + " more days.";
};
!(function (t) {
    "use strict";
    function e() {
        var t = new Date(),
            e = t.getMinutes();
        e = e < 10 ? "0" + e : e;
        var n = t.getSeconds();
        return (n = n < 10 ? "0" + n : n), [t.getHours(), e, n].join(":");
    }
    function n() {
        c ? ((o.style[c] = "opacity 1.0s"), (o.style.opacity = "0")) : (o.style.display = "none");
    }
    var i = (t.MasonryDocs = {});
    t.filterBindEvent = function (t, e, n, i) {
        t.addEventListener(e, function (t) {
            matchesSelector(t.target, n) && i.call(t.target, t);
        });
    };
    var o;
    document.addEventListener("DOMContentLoaded", function () {
        o = document.querySelector("#notification");
        for (var t = document.querySelectorAll("[data-js]"), e = 0; e < t.length; e++) {
            var n = t[e],
                r = n.getAttribute("data-js"),
                a = i[r] || FizzyDocs[r];
            a && a(n);
        }
    }),
        (i.getItemElement = function () {
            var t = document.createElement("div"),
                e = Math.random(),
                n = Math.random(),
                i = e > 0.8 ? "grid-item--width3" : e > 0.6 ? "grid-item--width2" : "",
                o = n > 0.8 ? "grid-item--height3" : n > 0.5 ? "grid-item--height2" : "";
            return (t.className = "grid-item " + i + " " + o), t;
        });
    var r,
        a = document.documentElement,
        c = "string" == typeof a.style.transition ? "transition" : "WebkitTransition",
        s = c ? 1e3 : 1500;
    i.notify = function (t) {
        (o.textContent = t + " at " + e()), (o.style[c] = "none"), (o.style.display = "block"), (o.style.opacity = "1"), clearTimeout(r), (r = setTimeout(n, s));
    };
})(window);
MasonryDocs["animate-item-size"] = function (e) {
    "use strict";
    var t = e.querySelector(".grid"),
        i = new Masonry(t, { columnWidth: 60 });
    filterBindEvent(t, "click", ".animate-item-size-item__content", function (e) {
        e.target.parentNode.classList.toggle("is-expanded"), i.layout();
    });
};
MasonryDocs["animate-item-size-responsive"] = function (t) {
    "use strict";
    function e(t) {
        var e = getSize(t);
        (t.style[o] = "none"), (t.style.width = e.width + "px"), (t.style.height = e.height + "px");
    }
    function i(t) {
        var e = function () {
            (t.style.width = ""), (t.style.height = ""), t.removeEventListener(r, e, !1);
        };
        t.addEventListener(r, e, !1);
    }
    function n(t, e) {
        var i = getSize(e);
        (t.style.width = i.width + "px"), (t.style.height = i.height + "px");
    }
    var s = document.documentElement,
        o = "string" == typeof s.style.transition ? "transition" : "WebkitTransition",
        r = { WebkitTransition: "webkitTransitionEnd", transition: "transitionend" }[o],
        a = t.querySelector(".grid"),
        d = new Masonry(a, { itemSelector: ".animate-item-size-item", columnWidth: ".grid-sizer", percentPosition: !0 });
    filterBindEvent(a, "click", ".animate-item-size-item__content", function () {
        var t = this;
        e(t);
        var s = t.parentNode;
        s.classList.toggle("is-expanded");
        t.offsetWidth;
        (t.style[o] = ""), i(t), n(t, s), d.layout();
    });
};
MasonryDocs["appended-demo"] = function (e) {
    "use strict";
    var n = e.querySelector(".grid"),
        t = new Masonry(n, { columnWidth: 80 }),
        d = e.querySelector(".append-button");
    d.addEventListener("click", function () {
        var e = [MasonryDocs.getItemElement(), MasonryDocs.getItemElement(), MasonryDocs.getItemElement()],
            d = document.createDocumentFragment();
        d.appendChild(e[0]), d.appendChild(e[1]), d.appendChild(e[2]), n.appendChild(d), t.appended(e);
    });
};
MasonryDocs["destroy-demo"] = function (e) {
    "use strict";
    var o = e.querySelector(".grid"),
        t = { columnWidth: 80 },
        n = new Masonry(o, t),
        r = !0,
        c = e.querySelector(".toggle-button");
    c.addEventListener("click", function () {
        r ? n.destroy() : (n = new Masonry(o, t)), (r = !r);
    });
};
MasonryDocs["imagesloaded-callback"] = function (e) {
    "use strict";
    imagesLoaded(e, function () {
        new Masonry(e, { itemSelector: ".grid-image-item", columnWidth: ".grid-sizer", percentPosition: !0 });
    });
};
MasonryDocs["imagesloaded-progress"] = function (e) {
    "use strict";
    var o = new Masonry(e, { itemSelector: ".grid-image-item", columnWidth: ".grid-sizer", percentPosition: !0 }),
        i = imagesLoaded(e);
    i.on("progress", function () {
        o.layout();
    });
};
MasonryDocs["layout-complete-demo"] = function (t) {
    "use strict";
    var o = t.querySelector(".grid"),
        e = new Masonry(o, { columnWidth: 80 });
    e.on("layoutComplete", function (t) {
        MasonryDocs.notify("Masonry layout completed on " + t.length + " items");
    }),
        filterBindEvent(o, "click", ".grid-item", function (t) {
            t.target.classList.toggle("grid-item--gigante"), e.layout();
        });
};
MasonryDocs["layout-demo"] = function (t) {
    "use strict";
    var i = t.querySelector(".grid"),
        e = new Masonry(i, { columnWidth: 80 });
    filterBindEvent(i, "click", ".grid-item", function (t) {
        t.target.classList.toggle("grid-item--gigante"), e.layout();
    });
};
MasonryDocs["prepended-demo"] = function (e) {
    "use strict";
    var n = e.querySelector(".grid"),
        t = new Masonry(n, { columnWidth: 80 }),
        r = e.querySelector(".prepend-button");
    r.addEventListener("click", function () {
        var e = [MasonryDocs.getItemElement(), MasonryDocs.getItemElement(), MasonryDocs.getItemElement()],
            r = document.createDocumentFragment();
        r.appendChild(e[0]), r.appendChild(e[1]), r.appendChild(e[2]), n.insertBefore(r, n.firstChild), t.prepended(e);
    });
};
MasonryDocs["remove-complete-demo"] = function (e) {
    "use strict";
    var o = e.querySelector(".grid"),
        t = new Masonry(o, { columnWidth: 80 });
    t.on("removeComplete", function (e) {
        MasonryDocs.notify("Removed " + e.length + " items");
    }),
        filterBindEvent(o, "click", ".grid-item", function (e) {
            t.remove(e.target), t.layout();
        });
};
MasonryDocs["remove-demo"] = function (e) {
    "use strict";
    var r = e.querySelector(".grid"),
        t = new Masonry(r, { columnWidth: 80 });
    filterBindEvent(r, "click", ".grid-item", function (e) {
        t.remove(e.target), t.layout();
    });
};
MasonryDocs.stagger = function (t) {
    "use strict";
    var e = t.querySelector(".grid"),
        i = new Masonry(e, { columnWidth: 80, stagger: 30 });
    filterBindEvent(e, "click", ".grid-item", function (t) {
        t.target.classList.toggle("grid-item--gigante"), i.layout();
    });
};
MasonryDocs["stamp-methods-demo"] = function (t) {
    "use strict";
    var e = t.querySelector(".grid"),
        o = new Masonry(e, { itemSelector: ".grid-item", columnWidth: 80 }),
        r = e.querySelector(".stamp"),
        n = !1,
        s = t.querySelector(".stamp-button");
    s.addEventListener("click", function () {
        n ? o.unstamp(r) : o.stamp(r), o.layout(), (n = !n);
    });
};
MasonryDocs.hero = function (e) {
    "use strict";
    function t(e) {
        var t = document.createElement("div");
        t.className = "hero-grid__item";
        var i = document.createElement("a");
        (i.className = "hero__example-link"), (i.href = e.url);
        var r = document.createElement("img");
        (r.className = "hero__example-link__img"), (r.src = e.image);
        var m = document.createElement("p");
        return (m.className = "hero__example-link__title"), (m.textContent = e.title), i.appendChild(r), i.appendChild(m), t.appendChild(i), t;
    }
    for (
        var i = e.querySelector(".hero-grid"),
            r = new Masonry(i, { itemSelector: ".hero-grid__item", columnWidth: ".hero-grid__grid-sizer", percentPosition: !0 }),
            m = [
                { title: "Erik Johansson", url: "http://erikjohanssonphoto.com/work/imagecats/personal/", image: "https://i.imgur.com/6Lo8oun.jpg" },
                { title: "Beyoncé | I Am", url: "http://iam.beyonce.com/", image: "https://i.imgur.com/HDSAMFl.jpg" },
                { title: "Webster Hall Timeline", url: "http://www.websterhall.com/timeline/", image: "https://i.imgur.com/VWfCPYx.jpg" },
                { title: "Halcyon theme", url: "http://halcyon-theme.tumblr.com/", image: "https://i.imgur.com/A1RSOhg.jpg" },
                { title: "RESIZE.THATSH.IT", url: "http://resize.thatsh.it/", image: "https://i.imgur.com/00xWxLG.png" },
                { title: "Tumblr Staff: Archive", url: "http://staff.tumblr.com/archive", image: "https://i.imgur.com/igjvRa3.jpg" },
                { title: "Kristian Hammerstad", url: "http://www.kristianhammerstad.com/", image: "https://i.imgur.com/Zwd7Sch.jpg" },
                { title: "Loading Effects for Grid Items | Demo 2", url: "http://tympanus.net/Development/GridLoadingEffects/index2.html", image: "https://i.imgur.com/iFBSB1t.jpg" },
            ],
            a = [],
            o = document.createDocumentFragment(),
            n = 0,
            l = m.length;
        n < l;
        n++
    ) {
        var c = t(m[n]);
        a.push(c), o.appendChild(c);
    }
    imagesLoaded(o).on("progress", function (e, t) {
        var m = t.img.parentNode.parentNode;
        i.appendChild(m), r.appended(m);
    });
};