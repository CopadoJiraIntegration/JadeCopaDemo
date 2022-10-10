/*! jQuery UI - v1.11.4 - 2015-08-04
* http://jqueryui.com
* Includes: core.css, draggable.css, resizable.css, selectable.css, sortable.css, button.css, dialog.css, progressbar.css, spinner.css, tooltip.css, theme.css
* To view and modify this theme, visit http://jqueryui.com/themeroller/?ffDefault=Lucida%20Grande%2CLucida%20Sans%2CArial%2Csans-serif&fwDefault=bold&fsDefault=1.1em&cornerRadius=5px&bgColorHeader=5c9ccc&bgTextureHeader=gloss_wave&bgImgOpacityHeader=55&borderColorHeader=4297d7&fcHeader=ffffff&iconColorHeader=d8e7f3&bgColorContent=fcfdfd&bgTextureContent=inset_hard&bgImgOpacityContent=100&borderColorContent=a6c9e2&fcContent=222222&iconColorContent=469bdd&bgColorDefault=dfeffc&bgTextureDefault=glass&bgImgOpacityDefault=85&borderColorDefault=c5dbec&fcDefault=2e6e9e&iconColorDefault=6da8d5&bgColorHover=d0e5f5&bgTextureHover=glass&bgImgOpacityHover=75&borderColorHover=79b7e7&fcHover=1d5987&iconColorHover=217bc0&bgColorActive=f5f8f9&bgTextureActive=inset_hard&bgImgOpacityActive=100&borderColorActive=79b7e7&fcActive=e17009&iconColorActive=f9bd01&bgColorHighlight=fbec88&bgTextureHighlight=flat&bgImgOpacityHighlight=55&borderColorHighlight=fad42e&fcHighlight=363636&iconColorHighlight=2e83ff&bgColorError=fef1ec&bgTextureError=glass&bgImgOpacityError=95&borderColorError=cd0a0a&fcError=cd0a0a&iconColorError=cd0a0a&bgColorOverlay=aaaaaa&bgTextureOverlay=flat&bgImgOpacityOverlay=0&opacityOverlay=30&bgColorShadow=aaaaaa&bgTextureShadow=flat&bgImgOpacityShadow=0&opacityShadow=30&thicknessShadow=8px&offsetTopShadow=-8px&offsetLeftShadow=-8px&cornerRadiusShadow=8px
* Copyright 2015 jQuery Foundation and other contributors; Licensed MIT */

/* Layout helpers
----------------------------------*/
.jqueryuidialog .ui-helper-hidden {
	display: none;
}
.jqueryuidialog .ui-helper-hidden-accessible {
	border: 0;
	clip: rect(0 0 0 0);
	height: 1px;
	margin: -1px;
	overflow: hidden;
	padding: 0;
	position: absolute;
	width: 1px;
}
.jqueryuidialog .ui-helper-reset {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0;
	line-height: 1.3;
	text-decoration: none;
	font-size: 100%;
	list-style: none;
}
.jqueryuidialog .ui-helper-clearfix:before,
.jqueryuidialog .ui-helper-clearfix:after {
	content: "";
	display: table;
	border-collapse: collapse;
}
.jqueryuidialog .ui-helper-clearfix:after {
	clear: both;
}
.jqueryuidialog .ui-helper-clearfix {
	min-height: 0; /* support: IE7 */
}
.jqueryuidialog .ui-helper-zfix {
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	position: absolute;
	opacity: 0;
	filter:Alpha(Opacity=0); /* support: IE8 */
}

.jqueryuidialog .ui-front {
	z-index: 100;
}


/* Interaction Cues
----------------------------------*/
.jqueryuidialog .ui-state-disabled {
	cursor: default !important;
}


/* Icons
----------------------------------*/

/* states and images */
.jqueryuidialog .ui-icon {
	display: block;
	text-indent: -99999px;
	overflow: hidden;
	background-repeat: no-repeat;
}


/* Misc visuals
----------------------------------*/

/* Overlays */
.jqueryuidialog .ui-widget-overlay {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
.jqueryuidialog .ui-draggable-handle {
	-ms-touch-action: none;
	touch-action: none;
}
.jqueryuidialog .ui-resizable {
	position: relative;
}
.jqueryuidialog .ui-resizable-handle {
	position: absolute;
	font-size: 0.1px;
	display: block;
	-ms-touch-action: none;
	touch-action: none;
}
.jqueryuidialog .ui-resizable-disabled .ui-resizable-handle,
.jqueryuidialog .ui-resizable-autohide .ui-resizable-handle {
	display: none;
}
.jqueryuidialog .ui-resizable-n {
	cursor: n-resize;
	height: 7px;
	width: 100%;
	top: -5px;
	left: 0;
}
.jqueryuidialog .ui-resizable-s {
	cursor: s-resize;
	height: 7px;
	width: 100%;
	bottom: -5px;
	left: 0;
}
.jqueryuidialog .ui-resizable-e {
	cursor: e-resize;
	width: 7px;
	right: -5px;
	top: 0;
	height: 100%;
}
.jqueryuidialog .ui-resizable-w {
	cursor: w-resize;
	width: 7px;
	left: -5px;
	top: 0;
	height: 100%;
}
.jqueryuidialog .ui-resizable-se {
	cursor: se-resize;
	width: 12px;
	height: 12px;
	right: 1px;
	bottom: 1px;
}
.jqueryuidialog .ui-resizable-sw {
	cursor: sw-resize;
	width: 9px;
	height: 9px;
	left: -5px;
	bottom: -5px;
}
.jqueryuidialog .ui-resizable-nw {
	cursor: nw-resize;
	width: 9px;
	height: 9px;
	left: -5px;
	top: -5px;
}
.jqueryuidialog .ui-resizable-ne {
	cursor: ne-resize;
	width: 9px;
	height: 9px;
	right: -5px;
	top: -5px;
}
.jqueryuidialog .ui-selectable {
	-ms-touch-action: none;
	touch-action: none;
}
.jqueryuidialog .ui-selectable-helper {
	position: absolute;
	z-index: 100;
	border: 1px dotted black;
}
.jqueryuidialog .ui-sortable-handle {
	-ms-touch-action: none;
	touch-action: none;
}
.jqueryuidialog .ui-button {
	display: inline-block;
	position: relative;
	padding: 0;
	line-height: normal;
	margin-right: .1em;
	cursor: pointer;
	vertical-align: middle;
	text-align: center;
	overflow: visible; /* removes extra width in IE */
}
.jqueryuidialog .ui-button,
.jqueryuidialog .ui-button:link,
.jqueryuidialog .ui-button:visited,
.jqueryuidialog .ui-button:hover,
.jqueryuidialog .ui-button:active {
	text-decoration: none;
}
/* to make room for the icon, a width needs to be set here */
.jqueryuidialog .ui-button-icon-only {
	width: 2.2em;
}
/* button elements seem to need a little more width */
button.jqueryuidialog .ui-button-icon-only {
	width: 2.4em;
}
.jqueryuidialog .ui-button-icons-only {
	width: 3.4em;
}
button.jqueryuidialog .ui-button-icons-only {
	width: 3.7em;
}

/* button text element */
.jqueryuidialog .ui-button .ui-button-text {
	display: block;
	line-height: normal;
}
.jqueryuidialog .ui-button-text-only .ui-button-text {
	padding: .4em 1em;
}
.jqueryuidialog .ui-button-icon-only .ui-button-text,
.jqueryuidialog .ui-button-icons-only .ui-button-text {
	padding: .4em;
	text-indent: -9999999px;
}
.jqueryuidialog .ui-button-text-icon-primary .ui-button-text,
.jqueryuidialog .ui-button-text-icons .ui-button-text {
	padding: .4em 1em .4em 2.1em;
}
.jqueryuidialog .ui-button-text-icon-secondary .ui-button-text,
.jqueryuidialog .ui-button-text-icons .ui-button-text {
	padding: .4em 2.1em .4em 1em;
}
.jqueryuidialog .ui-button-text-icons .ui-button-text {
	padding-left: 2.1em;
	padding-right: 2.1em;
}
/* no icon support for input elements, provide padding by default */
input.jqueryuidialog .ui-button {
	padding: .4em 1em;
}

/* button icon element(s) */
.jqueryuidialog .ui-button-icon-only .ui-icon,
.jqueryuidialog .ui-button-text-icon-primary .ui-icon,
.jqueryuidialog .ui-button-text-icon-secondary .ui-icon,
.jqueryuidialog .ui-button-text-icons .ui-icon,
.jqueryuidialog .ui-button-icons-only .ui-icon {
	position: absolute;
	top: 50%;
	margin-top: -8px;
}
.jqueryuidialog .ui-button-icon-only .ui-icon {
	left: 50%;
	margin-left: -8px;
}
.jqueryuidialog .ui-button-text-icon-primary .ui-button-icon-primary,
.jqueryuidialog .ui-button-text-icons .ui-button-icon-primary,
.jqueryuidialog .ui-button-icons-only .ui-button-icon-primary {
	left: .5em;
}
.jqueryuidialog .ui-button-text-icon-secondary .ui-button-icon-secondary,
.jqueryuidialog .ui-button-text-icons .ui-button-icon-secondary,
.jqueryuidialog .ui-button-icons-only .ui-button-icon-secondary {
	right: .5em;
}

/* button sets */
.jqueryuidialog .ui-buttonset {
	margin-right: 7px;
}
.jqueryuidialog .ui-buttonset .ui-button {
	margin-left: 0;
	margin-right: -.3em;
}

/* workarounds */
/* reset extra padding in Firefox, see h5bp.com/l */
input.jqueryuidialog .ui-button::-moz-focus-inner,
button.jqueryuidialog .ui-button::-moz-focus-inner {
	border: 0;
	padding: 0;
}
.jqueryuidialog .ui-dialog {
	overflow: hidden;
	position: absolute;
	top: 0;
	left: 0;
	padding: .2em;
	outline: 0;
}
.jqueryuidialog .ui-dialog .ui-dialog-titlebar {
	padding: .4em 1em;
	position: relative;
}
.jqueryuidialog .ui-dialog .ui-dialog-title {
	float: left;
	margin: .1em 0;
	white-space: nowrap;
	width: 90%;
	overflow: hidden;
	text-overflow: ellipsis;
}
.jqueryuidialog .ui-dialog .ui-dialog-titlebar-close {
	position: absolute;
	right: .3em;
	top: 50%;
	width: 20px;
	margin: -10px 0 0 0;
	padding: 1px;
	height: 20px;
}
.jqueryuidialog .ui-dialog .ui-dialog-content {
	position: relative;
	border: 0;
	padding: .5em 1em;
	background: none;
	overflow: auto;
}
.jqueryuidialog .ui-dialog .ui-dialog-buttonpane {
	text-align: left;
	border-width: 1px 0 0 0;
	background-image: none;
	margin-top: .5em;
	padding: .3em 1em .5em .4em;
}
.jqueryuidialog .ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset {
	float: right;
}
.jqueryuidialog .ui-dialog .ui-dialog-buttonpane button {
	margin: .5em .4em .5em 0;
	cursor: pointer;
}
.jqueryuidialog .ui-dialog .ui-resizable-se {
	width: 12px;
	height: 12px;
	right: -5px;
	bottom: -5px;
	background-position: 16px 16px;
}
.jqueryuidialog .ui-draggable .ui-dialog-titlebar {
	cursor: move;
}
.jqueryuidialog .ui-progressbar {
	height: 2em;
	text-align: left;
	overflow: hidden;
}
.jqueryuidialog .ui-progressbar .ui-progressbar-value {
	margin: -1px;
	height: 100%;
}
.jqueryuidialog .ui-progressbar .ui-progressbar-overlay {
	background: url("data:image/gif;base64,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");
	height: 100%;
	filter: alpha(opacity=25); /* support: IE8 */
	opacity: 0.25;
}
.jqueryuidialog .ui-progressbar-indeterminate .ui-progressbar-value {
	background-image: none;
}
.jqueryuidialog .ui-spinner {
	position: relative;
	display: inline-block;
	overflow: hidden;
	padding: 0;
	vertical-align: middle;
}
.jqueryuidialog .ui-spinner-input {
	border: none;
	background: none;
	color: inherit;
	padding: 0;
	margin: .2em 0;
	vertical-align: middle;
	margin-left: .4em;
	margin-right: 22px;
}
.jqueryuidialog .ui-spinner-button {
	width: 16px;
	height: 50%;
	font-size: .5em;
	padding: 0;
	margin: 0;
	text-align: center;
	position: absolute;
	cursor: default;
	display: block;
	overflow: hidden;
	right: 0;
}
/* more specificity required here to override default borders */
.jqueryuidialog .ui-spinner a.ui-spinner-button {
	border-top: none;
	border-bottom: none;
	border-right: none;
}
/* vertically center icon */
.jqueryuidialog .ui-spinner .ui-icon {
	position: absolute;
	margin-top: -8px;
	top: 50%;
	left: 0;
}
.jqueryuidialog .ui-spinner-up {
	top: 0;
}
.jqueryuidialog .ui-spinner-down {
	bottom: 0;
}

/* TR overrides */
.jqueryuidialog .ui-spinner .ui-icon-triangle-1-s {
	/* need to fix icons sprite */
	background-position: -65px -16px;
}
.jqueryuidialog .ui-tooltip {
	padding: 8px;
	position: absolute;
	z-index: 9999;
	max-width: 300px;
	-webkit-box-shadow: 0 0 5px #aaa;
	box-shadow: 0 0 5px #aaa;
}
body .jqueryuidialog .ui-tooltip {
	border-width: 2px;
}

/* Component containers
----------------------------------*/
.jqueryuidialog .ui-widget {
	font-family: Lucida Grande,Lucida Sans,Arial,sans-serif;
	font-size: 1.1em;
}
.jqueryuidialog .ui-widget .ui-widget {
	font-size: 1em;
}
.jqueryuidialog .ui-widget input,
.jqueryuidialog .ui-widget select,
.jqueryuidialog .ui-widget textarea,
.jqueryuidialog .ui-widget button {
	font-family: Lucida Grande,Lucida Sans,Arial,sans-serif;
	font-size: 1em;
}
.jqueryuidialog .ui-widget-content {
	border: 1px solid #a6c9e2;
	background: #fcfdfd url("images/ui-bg_inset-hard_100_fcfdfd_1x100.png") 50% bottom repeat-x;
	color: #222222;
}
.jqueryuidialog .ui-widget-content a {
	color: #222222;
}
.jqueryuidialog .ui-widget-header {
	border: 1px solid #4297d7;
	background: #5c9ccc url("images/ui-bg_gloss-wave_55_5c9ccc_500x100.png") 50% 50% repeat-x;
	color: #ffffff;
	font-weight: bold;
}
.jqueryuidialog .ui-widget-header a {
	color: #ffffff;
}

/* Interaction states
----------------------------------*/
.jqueryuidialog .ui-state-default,
.jqueryuidialog .ui-widget-content .ui-state-default,
.jqueryuidialog .ui-widget-header .ui-state-default {
	border: 1px solid #c5dbec;
	background: #dfeffc url("images/ui-bg_glass_85_dfeffc_1x400.png") 50% 50% repeat-x;
	font-weight: bold;
	color: #2e6e9e;
}
.jqueryuidialog .ui-state-default a,
.jqueryuidialog .ui-state-default a:link,
.jqueryuidialog .ui-state-default a:visited {
	color: #2e6e9e;
	text-decoration: none;
}
.jqueryuidialog .ui-state-hover,
.jqueryuidialog .ui-widget-content .ui-state-hover,
.jqueryuidialog .ui-widget-header .ui-state-hover,
.jqueryuidialog .ui-state-focus,
.jqueryuidialog .ui-widget-content .ui-state-focus,
.jqueryuidialog .ui-widget-header .ui-state-focus {
	border: 1px solid #79b7e7;
	background: #d0e5f5 url("images/ui-bg_glass_75_d0e5f5_1x400.png") 50% 50% repeat-x;
	font-weight: bold;
	color: #1d5987;
}
.jqueryuidialog .ui-state-hover a,
.jqueryuidialog .ui-state-hover a:hover,
.jqueryuidialog .ui-state-hover a:link,
.jqueryuidialog .ui-state-hover a:visited,
.jqueryuidialog .ui-state-focus a,
.jqueryuidialog .ui-state-focus a:hover,
.jqueryuidialog .ui-state-focus a:link,
.jqueryuidialog .ui-state-focus a:visited {
	color: #1d5987;
	text-decoration: none;
}
.jqueryuidialog .ui-state-active,
.jqueryuidialog .ui-widget-content .ui-state-active,
.jqueryuidialog .ui-widget-header .ui-state-active {
	border: 1px solid #79b7e7;
	background: #f5f8f9 url("images/ui-bg_inset-hard_100_f5f8f9_1x100.png") 50% 50% repeat-x;
	font-weight: bold;
	color: #e17009;
}
.jqueryuidialog .ui-state-active a,
.jqueryuidialog .ui-state-active a:link,
.jqueryuidialog .ui-state-active a:visited {
	color: #e17009;
	text-decoration: none;
}

/* Interaction Cues
----------------------------------*/
.jqueryuidialog .ui-state-highlight,
.jqueryuidialog .ui-widget-content .ui-state-highlight,
.jqueryuidialog .ui-widget-header .ui-state-highlight {
	border: 1px solid #fad42e;
	background: #fbec88 url("images/ui-bg_flat_55_fbec88_40x100.png") 50% 50% repeat-x;
	color: #363636;
}
.jqueryuidialog .ui-state-highlight a,
.jqueryuidialog .ui-widget-content .ui-state-highlight a,
.jqueryuidialog .ui-widget-header .ui-state-highlight a {
	color: #363636;
}
.jqueryuidialog .ui-state-error,
.jqueryuidialog .ui-widget-content .ui-state-error,
.jqueryuidialog .ui-widget-header .ui-state-error {
	border: 1px solid #cd0a0a;
	background: #fef1ec url("images/ui-bg_glass_95_fef1ec_1x400.png") 50% 50% repeat-x;
	color: #cd0a0a;
}
.jqueryuidialog .ui-state-error a,
.jqueryuidialog .ui-widget-content .ui-state-error a,
.jqueryuidialog .ui-widget-header .ui-state-error a {
	color: #cd0a0a;
}
.jqueryuidialog .ui-state-error-text,
.jqueryuidialog .ui-widget-content .ui-state-error-text,
.jqueryuidialog .ui-widget-header .ui-state-error-text {
	color: #cd0a0a;
}
.jqueryuidialog .ui-priority-primary,
.jqueryuidialog .ui-widget-content .ui-priority-primary,
.jqueryuidialog .ui-widget-header .ui-priority-primary {
	font-weight: bold;
}
.jqueryuidialog .ui-priority-secondary,
.jqueryuidialog .ui-widget-content .ui-priority-secondary,
.jqueryuidialog .ui-widget-header .ui-priority-secondary {
	opacity: .7;
	filter:Alpha(Opacity=70); /* support: IE8 */
	font-weight: normal;
}
.jqueryuidialog .ui-state-disabled,
.jqueryuidialog .ui-widget-content .ui-state-disabled,
.jqueryuidialog .ui-widget-header .ui-state-disabled {
	opacity: .35;
	filter:Alpha(Opacity=35); /* support: IE8 */
	background-image: none;
}
.jqueryuidialog .ui-state-disabled .ui-icon {
	filter:Alpha(Opacity=35); /* support: IE8 - See #6059 */
}

/* Icons
----------------------------------*/

/* states and images */
.jqueryuidialog .ui-icon {
	width: 16px;
	height: 16px;
}
.jqueryuidialog .ui-icon,
.jqueryuidialog .ui-widget-content .ui-icon {
	background-image: url("images/ui-icons_469bdd_256x240.png");
}
.jqueryuidialog .ui-widget-header .ui-icon {
	background-image: url("images/ui-icons_d8e7f3_256x240.png");
}
.jqueryuidialog .ui-state-default .ui-icon {
	background-image: url("images/ui-icons_6da8d5_256x240.png");
}
.jqueryuidialog .ui-state-hover .ui-icon,
.jqueryuidialog .ui-state-focus .ui-icon {
	background-image: url("images/ui-icons_217bc0_256x240.png");
}
.jqueryuidialog .ui-state-active .ui-icon {
	background-image: url("images/ui-icons_f9bd01_256x240.png");
}
.jqueryuidialog .ui-state-highlight .ui-icon {
	background-image: url("images/ui-icons_2e83ff_256x240.png");
}
.jqueryuidialog .ui-state-error .ui-icon,
.jqueryuidialog .ui-state-error-text .ui-icon {
	background-image: url("images/ui-icons_cd0a0a_256x240.png");
}

/* positioning */
.jqueryuidialog .ui-icon-blank { background-position: 16px 16px; }
.jqueryuidialog .ui-icon-carat-1-n { background-position: 0 0; }
.jqueryuidialog .ui-icon-carat-1-ne { background-position: -16px 0; }
.jqueryuidialog .ui-icon-carat-1-e { background-position: -32px 0; }
.jqueryuidialog .ui-icon-carat-1-se { background-position: -48px 0; }
.jqueryuidialog .ui-icon-carat-1-s { background-position: -64px 0; }
.jqueryuidialog .ui-icon-carat-1-sw { background-position: -80px 0; }
.jqueryuidialog .ui-icon-carat-1-w { background-position: -96px 0; }
.jqueryuidialog .ui-icon-carat-1-nw { background-position: -112px 0; }
.jqueryuidialog .ui-icon-carat-2-n-s { background-position: -128px 0; }
.jqueryuidialog .ui-icon-carat-2-e-w { background-position: -144px 0; }
.jqueryuidialog .ui-icon-triangle-1-n { background-position: 0 -16px; }
.jqueryuidialog .ui-icon-triangle-1-ne { background-position: -16px -16px; }
.jqueryuidialog .ui-icon-triangle-1-e { background-position: -32px -16px; }
.jqueryuidialog .ui-icon-triangle-1-se { background-position: -48px -16px; }
.jqueryuidialog .ui-icon-triangle-1-s { background-position: -64px -16px; }
.jqueryuidialog .ui-icon-triangle-1-sw { background-position: -80px -16px; }
.jqueryuidialog .ui-icon-triangle-1-w { background-position: -96px -16px; }
.jqueryuidialog .ui-icon-triangle-1-nw { background-position: -112px -16px; }
.jqueryuidialog .ui-icon-triangle-2-n-s { background-position: -128px -16px; }
.jqueryuidialog .ui-icon-triangle-2-e-w { background-position: -144px -16px; }
.jqueryuidialog .ui-icon-arrow-1-n { background-position: 0 -32px; }
.jqueryuidialog .ui-icon-arrow-1-ne { background-position: -16px -32px; }
.jqueryuidialog .ui-icon-arrow-1-e { background-position: -32px -32px; }
.jqueryuidialog .ui-icon-arrow-1-se { background-position: -48px -32px; }
.jqueryuidialog .ui-icon-arrow-1-s { background-position: -64px -32px; }
.jqueryuidialog .ui-icon-arrow-1-sw { background-position: -80px -32px; }
.jqueryuidialog .ui-icon-arrow-1-w { background-position: -96px -32px; }
.jqueryuidialog .ui-icon-arrow-1-nw { background-position: -112px -32px; }
.jqueryuidialog .ui-icon-arrow-2-n-s { background-position: -128px -32px; }
.jqueryuidialog .ui-icon-arrow-2-ne-sw { background-position: -144px -32px; }
.jqueryuidialog .ui-icon-arrow-2-e-w { background-position: -160px -32px; }
.jqueryuidialog .ui-icon-arrow-2-se-nw { background-position: -176px -32px; }
.jqueryuidialog .ui-icon-arrowstop-1-n { background-position: -192px -32px; }
.jqueryuidialog .ui-icon-arrowstop-1-e { background-position: -208px -32px; }
.jqueryuidialog .ui-icon-arrowstop-1-s { background-position: -224px -32px; }
.jqueryuidialog .ui-icon-arrowstop-1-w { background-position: -240px -32px; }
.jqueryuidialog .ui-icon-arrowthick-1-n { background-position: 0 -48px; }
.jqueryuidialog .ui-icon-arrowthick-1-ne { background-position: -16px -48px; }
.jqueryuidialog .ui-icon-arrowthick-1-e { background-position: -32px -48px; }
.jqueryuidialog .ui-icon-arrowthick-1-se { background-position: -48px -48px; }
.jqueryuidialog .ui-icon-arrowthick-1-s { background-position: -64px -48px; }
.jqueryuidialog .ui-icon-arrowthick-1-sw { background-position: -80px -48px; }
.jqueryuidialog .ui-icon-arrowthick-1-w { background-position: -96px -48px; }
.jqueryuidialog .ui-icon-arrowthick-1-nw { background-position: -112px -48px; }
.jqueryuidialog .ui-icon-arrowthick-2-n-s { background-position: -128px -48px; }
.jqueryuidialog .ui-icon-arrowthick-2-ne-sw { background-position: -144px -48px; }
.jqueryuidialog .ui-icon-arrowthick-2-e-w { background-position: -160px -48px; }
.jqueryuidialog .ui-icon-arrowthick-2-se-nw { background-position: -176px -48px; }
.jqueryuidialog .ui-icon-arrowthickstop-1-n { background-position: -192px -48px; }
.jqueryuidialog .ui-icon-arrowthickstop-1-e { background-position: -208px -48px; }
.jqueryuidialog .ui-icon-arrowthickstop-1-s { background-position: -224px -48px; }
.jqueryuidialog .ui-icon-arrowthickstop-1-w { background-position: -240px -48px; }
.jqueryuidialog .ui-icon-arrowreturnthick-1-w { background-position: 0 -64px; }
.jqueryuidialog .ui-icon-arrowreturnthick-1-n { background-position: -16px -64px; }
.jqueryuidialog .ui-icon-arrowreturnthick-1-e { background-position: -32px -64px; }
.jqueryuidialog .ui-icon-arrowreturnthick-1-s { background-position: -48px -64px; }
.jqueryuidialog .ui-icon-arrowreturn-1-w { background-position: -64px -64px; }
.jqueryuidialog .ui-icon-arrowreturn-1-n { background-position: -80px -64px; }
.jqueryuidialog .ui-icon-arrowreturn-1-e { background-position: -96px -64px; }
.jqueryuidialog .ui-icon-arrowreturn-1-s { background-position: -112px -64px; }
.jqueryuidialog .ui-icon-arrowrefresh-1-w { background-position: -128px -64px; }
.jqueryuidialog .ui-icon-arrowrefresh-1-n { background-position: -144px -64px; }
.jqueryuidialog .ui-icon-arrowrefresh-1-e { background-position: -160px -64px; }
.jqueryuidialog .ui-icon-arrowrefresh-1-s { background-position: -176px -64px; }
.jqueryuidialog .ui-icon-arrow-4 { background-position: 0 -80px; }
.jqueryuidialog .ui-icon-arrow-4-diag { background-position: -16px -80px; }
.jqueryuidialog .ui-icon-extlink { background-position: -32px -80px; }
.jqueryuidialog .ui-icon-newwin { background-position: -48px -80px; }
.jqueryuidialog .ui-icon-refresh { background-position: -64px -80px; }
.jqueryuidialog .ui-icon-shuffle { background-position: -80px -80px; }
.jqueryuidialog .ui-icon-transfer-e-w { background-position: -96px -80px; }
.jqueryuidialog .ui-icon-transferthick-e-w { background-position: -112px -80px; }
.jqueryuidialog .ui-icon-folder-collapsed { background-position: 0 -96px; }
.jqueryuidialog .ui-icon-folder-open { background-position: -16px -96px; }
.jqueryuidialog .ui-icon-document { background-position: -32px -96px; }
.jqueryuidialog .ui-icon-document-b { background-position: -48px -96px; }
.jqueryuidialog .ui-icon-note { background-position: -64px -96px; }
.jqueryuidialog .ui-icon-mail-closed { background-position: -80px -96px; }
.jqueryuidialog .ui-icon-mail-open { background-position: -96px -96px; }
.jqueryuidialog .ui-icon-suitcase { background-position: -112px -96px; }
.jqueryuidialog .ui-icon-comment { background-position: -128px -96px; }
.jqueryuidialog .ui-icon-person { background-position: -144px -96px; }
.jqueryuidialog .ui-icon-print { background-position: -160px -96px; }
.jqueryuidialog .ui-icon-trash { background-position: -176px -96px; }
.jqueryuidialog .ui-icon-locked { background-position: -192px -96px; }
.jqueryuidialog .ui-icon-unlocked { background-position: -208px -96px; }
.jqueryuidialog .ui-icon-bookmark { background-position: -224px -96px; }
.jqueryuidialog .ui-icon-tag { background-position: -240px -96px; }
.jqueryuidialog .ui-icon-home { background-position: 0 -112px; }
.jqueryuidialog .ui-icon-flag { background-position: -16px -112px; }
.jqueryuidialog .ui-icon-calendar { background-position: -32px -112px; }
.jqueryuidialog .ui-icon-cart { background-position: -48px -112px; }
.jqueryuidialog .ui-icon-pencil { background-position: -64px -112px; }
.jqueryuidialog .ui-icon-clock { background-position: -80px -112px; }
.jqueryuidialog .ui-icon-disk { background-position: -96px -112px; }
.jqueryuidialog .ui-icon-calculator { background-position: -112px -112px; }
.jqueryuidialog .ui-icon-zoomin { background-position: -128px -112px; }
.jqueryuidialog .ui-icon-zoomout { background-position: -144px -112px; }
.jqueryuidialog .ui-icon-search { background-position: -160px -112px; }
.jqueryuidialog .ui-icon-wrench { background-position: -176px -112px; }
.jqueryuidialog .ui-icon-gear { background-position: -192px -112px; }
.jqueryuidialog .ui-icon-heart { background-position: -208px -112px; }
.jqueryuidialog .ui-icon-star { background-position: -224px -112px; }
.jqueryuidialog .ui-icon-link { background-position: -240px -112px; }
.jqueryuidialog .ui-icon-cancel { background-position: 0 -128px; }
.jqueryuidialog .ui-icon-plus { background-position: -16px -128px; }
.jqueryuidialog .ui-icon-plusthick { background-position: -32px -128px; }
.jqueryuidialog .ui-icon-minus { background-position: -48px -128px; }
.jqueryuidialog .ui-icon-minusthick { background-position: -64px -128px; }
.jqueryuidialog .ui-icon-close { background-position: -80px -128px; }
.jqueryuidialog .ui-icon-closethick { background-position: -96px -128px; }
.jqueryuidialog .ui-icon-key { background-position: -112px -128px; }
.jqueryuidialog .ui-icon-lightbulb { background-position: -128px -128px; }
.jqueryuidialog .ui-icon-scissors { background-position: -144px -128px; }
.jqueryuidialog .ui-icon-clipboard { background-position: -160px -128px; }
.jqueryuidialog .ui-icon-copy { background-position: -176px -128px; }
.jqueryuidialog .ui-icon-contact { background-position: -192px -128px; }
.jqueryuidialog .ui-icon-image { background-position: -208px -128px; }
.jqueryuidialog .ui-icon-video { background-position: -224px -128px; }
.jqueryuidialog .ui-icon-script { background-position: -240px -128px; }
.jqueryuidialog .ui-icon-alert { background-position: 0 -144px; }
.jqueryuidialog .ui-icon-info { background-position: -16px -144px; }
.jqueryuidialog .ui-icon-notice { background-position: -32px -144px; }
.jqueryuidialog .ui-icon-help { background-position: -48px -144px; }
.jqueryuidialog .ui-icon-check { background-position: -64px -144px; }
.jqueryuidialog .ui-icon-bullet { background-position: -80px -144px; }
.jqueryuidialog .ui-icon-radio-on { background-position: -96px -144px; }
.jqueryuidialog .ui-icon-radio-off { background-position: -112px -144px; }
.jqueryuidialog .ui-icon-pin-w { background-position: -128px -144px; }
.jqueryuidialog .ui-icon-pin-s { background-position: -144px -144px; }
.jqueryuidialog .ui-icon-play { background-position: 0 -160px; }
.jqueryuidialog .ui-icon-pause { background-position: -16px -160px; }
.jqueryuidialog .ui-icon-seek-next { background-position: -32px -160px; }
.jqueryuidialog .ui-icon-seek-prev { background-position: -48px -160px; }
.jqueryuidialog .ui-icon-seek-end { background-position: -64px -160px; }
.jqueryuidialog .ui-icon-seek-start { background-position: -80px -160px; }
/* ui-icon-seek-first is deprecated, use ui-icon-seek-start instead */
.jqueryuidialog .ui-icon-seek-first { background-position: -80px -160px; }
.jqueryuidialog .ui-icon-stop { background-position: -96px -160px; }
.jqueryuidialog .ui-icon-eject { background-position: -112px -160px; }
.jqueryuidialog .ui-icon-volume-off { background-position: -128px -160px; }
.jqueryuidialog .ui-icon-volume-on { background-position: -144px -160px; }
.jqueryuidialog .ui-icon-power { background-position: 0 -176px; }
.jqueryuidialog .ui-icon-signal-diag { background-position: -16px -176px; }
.jqueryuidialog .ui-icon-signal { background-position: -32px -176px; }
.jqueryuidialog .ui-icon-battery-0 { background-position: -48px -176px; }
.jqueryuidialog .ui-icon-battery-1 { background-position: -64px -176px; }
.jqueryuidialog .ui-icon-battery-2 { background-position: -80px -176px; }
.jqueryuidialog .ui-icon-battery-3 { background-position: -96px -176px; }
.jqueryuidialog .ui-icon-circle-plus { background-position: 0 -192px; }
.jqueryuidialog .ui-icon-circle-minus { background-position: -16px -192px; }
.jqueryuidialog .ui-icon-circle-close { background-position: -32px -192px; }
.jqueryuidialog .ui-icon-circle-triangle-e { background-position: -48px -192px; }
.jqueryuidialog .ui-icon-circle-triangle-s { background-position: -64px -192px; }
.jqueryuidialog .ui-icon-circle-triangle-w { background-position: -80px -192px; }
.jqueryuidialog .ui-icon-circle-triangle-n { background-position: -96px -192px; }
.jqueryuidialog .ui-icon-circle-arrow-e { background-position: -112px -192px; }
.jqueryuidialog .ui-icon-circle-arrow-s { background-position: -128px -192px; }
.jqueryuidialog .ui-icon-circle-arrow-w { background-position: -144px -192px; }
.jqueryuidialog .ui-icon-circle-arrow-n { background-position: -160px -192px; }
.jqueryuidialog .ui-icon-circle-zoomin { background-position: -176px -192px; }
.jqueryuidialog .ui-icon-circle-zoomout { background-position: -192px -192px; }
.jqueryuidialog .ui-icon-circle-check { background-position: -208px -192px; }
.jqueryuidialog .ui-icon-circlesmall-plus { background-position: 0 -208px; }
.jqueryuidialog .ui-icon-circlesmall-minus { background-position: -16px -208px; }
.jqueryuidialog .ui-icon-circlesmall-close { background-position: -32px -208px; }
.jqueryuidialog .ui-icon-squaresmall-plus { background-position: -48px -208px; }
.jqueryuidialog .ui-icon-squaresmall-minus { background-position: -64px -208px; }
.jqueryuidialog .ui-icon-squaresmall-close { background-position: -80px -208px; }
.jqueryuidialog .ui-icon-grip-dotted-vertical { background-position: 0 -224px; }
.jqueryuidialog .ui-icon-grip-dotted-horizontal { background-position: -16px -224px; }
.jqueryuidialog .ui-icon-grip-solid-vertical { background-position: -32px -224px; }
.jqueryuidialog .ui-icon-grip-solid-horizontal { background-position: -48px -224px; }
.jqueryuidialog .ui-icon-gripsmall-diagonal-se { background-position: -64px -224px; }
.jqueryuidialog .ui-icon-grip-diagonal-se { background-position: -80px -224px; }


/* Misc visuals
----------------------------------*/

/* Corner radius */
.jqueryuidialog .ui-corner-all,
.jqueryuidialog .ui-corner-top,
.jqueryuidialog .ui-corner-left,
.jqueryuidialog .ui-corner-tl {
	border-top-left-radius: 5px;
}
.jqueryuidialog .ui-corner-all,
.jqueryuidialog .ui-corner-top,
.jqueryuidialog .ui-corner-right,
.jqueryuidialog .ui-corner-tr {
	border-top-right-radius: 5px;
}
.jqueryuidialog .ui-corner-all,
.jqueryuidialog .ui-corner-bottom,
.jqueryuidialog .ui-corner-left,
.jqueryuidialog .ui-corner-bl {
	border-bottom-left-radius: 5px;
}
.jqueryuidialog .ui-corner-all,
.jqueryuidialog .ui-corner-bottom,
.jqueryuidialog .ui-corner-right,
.jqueryuidialog .ui-corner-br {
	border-bottom-right-radius: 5px;
}

/* Overlays */
.jqueryuidialog .ui-widget-overlay {
	background: #aaaaaa url("images/ui-bg_flat_0_aaaaaa_40x100.png") 50% 50% repeat-x;
	opacity: .3;
	filter: Alpha(Opacity=30); /* support: IE8 */
}
.jqueryuidialog .ui-widget-shadow {
	margin: -8px 0 0 -8px;
	padding: 8px;
	background: #aaaaaa url("images/ui-bg_flat_0_aaaaaa_40x100.png") 50% 50% repeat-x;
	opacity: .3;
	filter: Alpha(Opacity=30); /* support: IE8 */
	border-radius: 8px;
}
