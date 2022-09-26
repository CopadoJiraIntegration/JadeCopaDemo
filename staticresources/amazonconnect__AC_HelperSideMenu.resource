/**
 * BootSideMenu v 2.0
 * Author: Andrea Lombardo
 * http://www.lombardoandrea.com
 * https://github.com/AndreaLombardo/BootSideMenu
 * */
(function ($) {
    $.fn.BootSideMenu = function (userOptions) {
        let initialCode;
        let newCode;
        let $menu;
        let prevStatus;
        let bodyProperties = {};

        let hoverStatus;

        let $DOMBody = $('body', document);

        let defaults = {
            side: 'right',
            duration: 500,
            icons: {
                left: 'glyphicon glyphicon-chevron-left',
                right: 'glyphicon glyphicon-chevron-right',
                down: 'glyphicon glyphicon-chevron-down',
            },
            theme: 'default',
            width: '15%',
            onTogglerClick: function () {
                //code to be executed when the toggler arrow was clicked
            },
            onBeforeOpen: function () {
                //code to be executed before menu open
            },
            onBeforeClose: function () {
                //code to be executed before menu close
            },
            onOpen: function () {
                //code to be executed after menu open
            },
            onClose: function () {
                //code to be executed after menu close
            },
            onStartup: function () {
                //code to be executed when the plugin is called
            },
        };

        let options = $.extend({}, defaults, userOptions);

        bodyProperties['originalMarginLeft'] = $DOMBody.css('margin-left');
        bodyProperties['originalMarginRight'] = $DOMBody.css('margin-right');
        bodyProperties['width'] = $DOMBody.width();

        initialCode = this.html();

        newCode = '<div>' + initialCode + '</div>';
        newCode += '<div class="toggler" data-whois="toggler">';
        newCode += '<span class="icon">&nbsp;</span>';
        newCode += '</div>';

        this.empty();
        this.html(newCode);

        $menu = $(this);

        $menu.addClass('container');
        $menu.addClass('bootsidemenu');
        $menu.addClass(options.theme);
        $menu.css('width', options.width);

        if (options.side === 'left') {
            $menu.addClass('bootsidemenu-left');
        } else if (options.side === 'right') {
            $menu.addClass('bootsidemenu-right');
        }

        $menu.id = $menu.attr('id');
        $menu.cookieName = 'bsm2-' + $menu.id;
        $menu.toggler = $menu.find('[data-whois="toggler"]');

        prevStatus = null;

        switch (prevStatus) {
            case 'opened':
                startOpened();
                break;
            case 'closed':
                startClosed();
                break;
            default:
                startClosed();
                break;
        }

        if (options.onStartup !== undefined && isFunction(options.onStartup)) {
            options.onStartup($menu);
        }

        $('[data-toggle="collapse"]', $menu).each(function () {
            let $icon = $('<span/>');
            $icon.addClass('icon');
            $icon.addClass(options.icons.right);

            $(this).prepend($icon);
        });

        $menu.off('click', '.toggler[data-whois="toggler"]', toggle);
        $menu.on('click', '.toggler[data-whois="toggler"]', toggle);

        $menu.off('click', '.list-group-item');
        $menu.on('click', '.list-group-item', function () {
            $menu.find('.list-group-item').each(function () {
                $(this).removeClass('active');
            });
            $(this).addClass('active');
            $('.icon', $(this))
                .toggleClass(options.icons.right)
                .toggleClass(options.icons.down);
        });

        $menu.off('mouseenter mouseleave');
        $menu.hover(menuOnHoverIn, menuOnHoverOut);

        function menuOnHoverOut() {
            hoverStatus = false;
        }

        function menuOnHoverIn() {
            hoverStatus = true;
        }

        function toggle() {
            if (
                options.onTogglerClick !== undefined &&
                isFunction(options.onTogglerClick)
            ) {
                options.onTogglerClick($menu);
            }

            if ($menu.status === 'opened') {
                closeMenu(true);
            } else {
                openMenu(true);
            }
        }

        function switchArrow(side) {
            let $icon = $menu.toggler.find('.icon');

            $icon.removeClass();

            if (side === 'left') {
                $icon.addClass(options.icons.right);
            } else if (side === 'right') {
                $icon.addClass(options.icons.left);
            }

            $icon.addClass('icon');
        }

        function startClosed() {
            if (options.side === 'left') {
                $menu.status = 'closed';
                $menu.hide().animate(
                    {
                        left: -($menu.width() + 2),
                    },
                    1,
                    function () {
                        $menu.show();
                        switchArrow('left');
                    }
                );
            } else if (options.side === 'right') {
                $menu.status = 'closed';
                $menu.hide().animate(
                    {
                        right: -($menu.width() + 2),
                    },
                    1,
                    function () {
                        $menu.show();
                        switchArrow('right');
                    }
                );
            }
        }

        function startOpened() {
            if (options.side === 'left') {
                $menu.status = 'closed';
                $menu.hide().animate(
                    {
                        left: -($menu.width() + 3),
                    },
                    1,
                    function () {
                        $menu.show();
                        switchArrow('left');
                    }
                );
            } else if (options.side === 'right') {
                $menu.status = 'closed';
                $menu.hide().animate(
                    {
                        right: -($menu.width() + 3),
                    },
                    1,
                    function () {
                        $menu.show();
                        switchArrow('right');
                    }
                );
            }
        }

        function closeMenu(execFunctions) {
            if (execFunctions) {
                if (
                    options.onBeforeClose !== undefined &&
                    isFunction(options.onBeforeClose)
                ) {
                    options.onBeforeClose($menu);
                }
            }
            if (options.side === 'left') {
                $menu.animate(
                    {
                        left: -($menu.width() + 3),
                    },
                    {
                        duration: options.duration,
                        done: function () {
                            switchArrow('left');
                            $menu.status = 'closed';

                            if (execFunctions) {
                                if (
                                    options.onClose !== undefined &&
                                    isFunction(options.onClose)
                                ) {
                                    options.onClose($menu);
                                }
                            }
                        },
                    }
                );
            } else if (options.side === 'right') {
                $menu.animate(
                    {
                        right: -($menu.width() + 3),
                    },
                    {
                        duration: options.duration,
                        done: function () {
                            switchArrow('right');
                            $menu.status = 'closed';

                            if (execFunctions) {
                                if (
                                    options.onClose !== undefined &&
                                    isFunction(options.onClose)
                                ) {
                                    options.onClose($menu);
                                }
                            }
                        },
                    }
                );
            }
        }

        function openMenu(execFunctions) {
            if (execFunctions) {
                if (
                    options.onBeforeOpen !== undefined &&
                    isFunction(options.onBeforeOpen)
                ) {
                    options.onBeforeOpen($menu);
                }
            }

            if (options.side === 'left') {
                $menu.animate(
                    {
                        left: -1,
                    },
                    {
                        duration: options.duration,
                        done: function () {
                            switchArrow('right');
                            $menu.status = 'opened';

                            if (execFunctions) {
                                if (
                                    options.onOpen !== undefined &&
                                    isFunction(options.onOpen)
                                ) {
                                    options.onOpen($menu);
                                }
                            }
                        },
                    }
                );
            } else if (options.side === 'right') {
                $menu.animate(
                    {
                        right: -1,
                    },
                    {
                        duration: options.duration,
                        done: function () {
                            switchArrow('left');
                            $menu.status = 'opened';

                            if (execFunctions) {
                                if (
                                    options.onOpen !== undefined &&
                                    isFunction(options.onOpen)
                                ) {
                                    options.onOpen($menu);
                                }
                            }
                        },
                    }
                );
            }
        }

        function isFunction(functionToCheck) {
            let getType = {};
            return (
                functionToCheck &&
                getType.toString.call(functionToCheck) === '[object Function]'
            );
        }

        function onResize() {
            if ($menu.status === 'closed') {
                startClosed();
            }
            if ($menu.status === 'opened') {
                startOpened();
            }
        }

        let resizeStart;
        let resizeEnd;
        let wait = 250;
        window.addEventListener(
            'resize',
            function () {
                resizeStart = new Date().getMilliseconds();
                resizeEnd = resizeStart + wait;
                setTimeout(function () {
                    let now = new Date().getMilliseconds();
                    if (now > resizeEnd) {
                        onResize();
                    }
                }, wait);
            },
            false
        );

        $.fn.BootSideMenu.open = function () {
            openMenu();
        };

        $.fn.BootSideMenu.close = function () {
            closeMenu();
        };

        $.fn.BootSideMenu.toggle = function () {
            toggle();
        };

        return this;
    };
})(jQuery);
