@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Light.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Light.woff") format("woff");
  font-style: normal;
  font-weight: 300;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Regular.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Regular.woff") format("woff");
  font-style: normal;
  font-weight: 400;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Italic.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Italic.woff") format("woff");
  font-style: italic;
  font-weight: 400;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Bold.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Bold.woff") format("woff");
  font-style: normal;
  font-weight: 700;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-BoldItalic.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-BoldItalic.woff") format("woff");
  font-style: italic;
  font-weight: 700;
}
/*
Rotates an element

$r - the rotate function paramter, e.g. 90deg
 */
.sb h1,
.sb h2,
.sb h3,
.sb h4,
.sb h5,
.sb h6 {
  color: #16325c;
  font-weight: 300;
  font-family: inherit;
  display: inline-block;
  margin: 0;
  padding: 0;
}
.sb h1 {
  font-size: 24px;
}
.sb h2 {
  font-size: 18px;
}
.sb h3 {
  font-size: 16px;
}
.sb h4 {
  font-size: 12px;
}
.sb h5 {
  font-size: 10px;
}
.sb h6 {
  font-size: 9px;
}
.sb a,
.sb a:visited,
.sb a:hover,
.sb a:active {
  text-decoration: none;
  color: #0070d2;
  cursor: pointer;
}
.sb a:hover {
  color: #16325c;
}
/*
Button

A standard, standalone button

*/
.sbBtn,
.btn.sbBtn {
  padding: 8px 12px;
  background: #ffffff;
  color: #0070d2;
  cursor: pointer;
  border: 1px solid #d8dde6;
  border-radius: 4px;
  font-weight: 400;
  font-size: 14px;
  margin: 0;
  vertical-align: middle;
  text-align: center;
  height: 36px;
}
.sbBtn:focus {
  outline-offset: -2px;
  outline-width: 2px;
}
.sbBtn:hover {
  background: #f4f6f9;
}
.sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  border: 1px solid #0070d2;
  color: #ffffff;
}
.sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
.sbBtn.sbEnabled {
  background-color: #0070d2;
  border-color: #0070d2;
  color: #ffffff;
}
.sbBtn.sbEnabled:hover {
  background-color: #005fb2;
}
.sbButtons,
.sbPageButtons {
  text-align: center;
  background: #f4f6f9;
  padding: 7px 0 7px;
  display: inline-block;
}
.sbButtons > .sbBtn,
.sbButtons > div > .sbBtn,
.sbPageButtons > .sbBtn,
.sbPageButtons > div > .sbBtn {
  border-top: 1px solid #d8dde6;
  border-bottom: 1px solid #d8dde6;
  border-right: 1px solid #d8dde6;
  border-left: 0;
  border-radius: 0;
  float: left;
}
.sbButtons > .sbBtn.sbPrimaryAction,
.sbButtons > div > .sbBtn.sbPrimaryAction,
.sbPageButtons > .sbBtn.sbPrimaryAction,
.sbPageButtons > div > .sbBtn.sbPrimaryAction {
  border: 1px solid #0070d2;
}
.sbButtons > .sbBtn:first-of-type,
.sbButtons > div > .sbBtn:first-of-type,
.sbPageButtons > .sbBtn:first-of-type,
.sbPageButtons > div > .sbBtn:first-of-type {
  border-left: 1px solid #d8dde6;
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.sbButtons > .sbBtn:first-of-type.sbPrimaryAction,
.sbButtons > div > .sbBtn:first-of-type.sbPrimaryAction,
.sbPageButtons > .sbBtn:first-of-type.sbPrimaryAction,
.sbPageButtons > div > .sbBtn:first-of-type.sbPrimaryAction {
  border-left: #0070d2;
}
.sbButtons > .sbBtn:last-of-type,
.sbButtons > div > .sbBtn:last-of-type,
.sbPageButtons > .sbBtn:last-of-type,
.sbPageButtons > div > .sbBtn:last-of-type {
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
.sbButtons > .center,
.sbPageButtons > .center {
  display: inline-block;
}
.sbPageButtons {
  width: 100%;
  border-top: 1px solid #d0d0d0;
}
.sbPageButtons.bottom {
  width: auto;
  position: fixed;
  bottom: 0px;
  left: 10px;
  right: 10px;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
  display: none;
}
.sbPageButtons.inline {
  background: #f4f6f9;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
  margin-top: 80px;
}
.sbPageTitle > .sbPageButtons {
  border: 0;
  display: inline-block;
  width: auto;
  float: right;
}
.sbTools {
  display: inline-block;
}
.sbTools > .sbTool {
  border-left: 0;
  border-radius: 0;
  float: left;
}
.sbTools > .sbTool > .sb-icon-triangle-down {
  margin-left: -5px;
}
.sbTools > .sbTool:not(.ng-hide):not(.sbBtnClear):first-of-type {
  border-left: 1px solid #d8dde6;
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.sbTools > .sbTool:not(.ng-hide):last-of-type {
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
.sbTool {
  display: inline-block;
  border: 1px solid #d8dde6;
  border-radius: 4px;
  padding: 5px 7px;
  color: #0070d2;
  position: relative;
  cursor: pointer;
  /* the down triangle in a tool */
}
.sbTool > .sb-icon-down-dir {
  position: relative;
}
.sbTool.active {
  background: #0070d2;
  color: #ffffff;
}
.sbTool:hover {
  background: #f4f6f9;
  color: #0070d2;
}
.sbTool:focus {
  outline-offset: -2px;
  outline-width: 2px;
}
.sbTool > menu {
  position: absolute;
  right: -1px;
  top: 16px;
  font-weight: normal;
  background-color: #ffffff;
  padding: 8px 14px;
  white-space: nowrap;
  border-radius: 4px;
  border-top-right-radius: 0;
  border: 1px solid #d8dde6;
  display: none;
  z-index: 4;
  text-align: left;
}
.sbTool > menu.dt {
  top: 20px;
  max-height: 300px;
  overflow: auto;
}
.sbTool > menu > header {
  text-transform: uppercase;
  color: #777;
  margin-bottom: 4px;
}
.sbTool > menu *[class^=sb-icon] {
  margin-right: 6px;
  vertical-align: middle;
  color: #777;
}
.sbTool.open > menu {
  display: block;
}
.sbTool > menu ul {
  list-style: none;
  padding: 0;
  margin: 0;
}
.sbTool > menu ul > li {
  padding: 3px 3px 3px 0px;
}
.sbTool > menu ul > li > a {
  display: block;
}
.sbTool > menu ul > li .sb-icon-ok {
  display: none;
}
.sbTool > menu ul > li.selected .sb-icon-ok {
  display: inline-block;
  float: right;
  margin-right: 0;
}
.sbTool > menu.multi > header:last-of-type {
  margin-top: 16px;
}
.sbTool > menu.multi > ul:last-of-type li {
  min-width: 130px;
}
.sb menu a {
  color: #0070d2;
}
.sb menu a:hover {
  color: #0070d2;
}
/*
Modal dialog mask

The layer behind the dialog that masks the entire page.
*/
.sbModalMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
/*
Modal Dialog

A dialog with modality that takes up the entire page.
 */
.sbModalDialog {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
}
.sbModalDialog > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
.sbModalDialog > header > i {
  color: #16325c;
  font-size: 20px;
}
.sbModalDialog > header > * {
  vertical-align: middle;
}
.sbModalDialog > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
.sbModalDialog > header > h3 {
  color: #16325c;
}
.sbModalDialog > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
.sbModalDialog > header > .sf-icon-close:hover {
  cursor: pointer;
}
.sbModalDialog > header > .sf-icon-close:before {
  color: #fff;
}
.sbModalDialog .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
.sbModalDialog .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
.sbModalDialog .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
.sbModalDialog .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
.sbModalDialog .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
.sbModalDialog .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
.sbModalDialog .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
}
.sbModalDialog .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
.sbModalDialog .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
.sbModalDialog .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
.sbModalDialog .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#DescriptionEditorDialog {
  min-height: 429px;
}
.ui-tooltip {
  padding: 8px;
  position: absolute;
  z-index: 9999;
  max-width: 300px;
  background: #ffffff;
  border: 1px solid #d0d0d0;
  box-shadow: 0 0 2px #D8DDE6;
}
.ui-tooltip > .ui-tooltip-content {
  font-size: 12px;
}
.ui-tooltip > .arrow {
  width: 70px;
  height: 16px;
  overflow: hidden;
  position: absolute;
  left: 50%;
  margin-left: -35px;
  bottom: -16px;
}
.ui-tooltip > .arrow.top {
  top: -16px;
  bottom: auto;
}
.ui-tooltip > .arrow.top:after {
  bottom: -20px;
  top: auto;
}
.ui-tooltip > .arrow.left {
  left: 28%;
}
.ui-tooltip > .arrow:after {
  background: #ffffff;
  border: #d0d0d0;
  content: "";
  position: absolute;
  left: 20px;
  top: -20px;
  width: 25px;
  height: 25px;
  box-shadow: 6px 5px 9px -9px black;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
.ui-helper-hidden-accessible {
  border: 0;
  clip: rect(0 0 0 0);
  height: 1px;
  margin: -1px;
  overflow: hidden;
  padding: 0;
  position: absolute;
  width: 1px;
}
#sbCustomActionContainer {
  margin: 18px;
  top: 0px;
  height: 95%;
}
#sbCustomActionContainer > .sf-icon-cancel-circled {
  font-size: 35px;
  position: absolute;
  top: -9px;
  right: -4px;
  width: 20px;
  height: 20px;
  background-color: #A8B7C7;
}
#sbCustomActionContainer > .sf-icon-cancel-circled:hover {
  cursor: pointer;
}
#sbCustomActionContainer > .sf-icon-cancel-circled:before {
  color: #fff;
  position: relative;
  right: 15px;
  top: -10px;
}
#easyXDM_SBQQ_provider {
  width: 100%;
  height: 100%;
}
#sbPricebookModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 640px;
}
#sbPricebookModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbPricebookModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbPricebookModal > header > * {
  vertical-align: middle;
}
#sbPricebookModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbPricebookModal > header > h3 {
  color: #16325c;
}
#sbPricebookModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbPricebookModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbPricebookModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbPricebookModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbPricebookModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbPricebookModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbPricebookModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbPricebookModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbPricebookModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbPricebookModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
}
#sbPricebookModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbPricebookModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbPricebookModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbPricebookModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbPricebookModal > .sbModalContentContainer {
  padding: 20px;
  text-align: center;
}
#sbPricebookModal > .sbModalContentContainer > select {
  height: 34px;
  font-size: 16px;
  width: 100%;
  margin: 14px 0;
}
.sbPageTitle {
  padding: 24px 24px 16px;
  color: #54698d;
  background: #f4f6f9;
  border-bottom: 1px solid #d0d0d0;
  font-size: 10px;
  transition: padding 0.25s ease-in;
}
.sbPageTitle h1,
.sbPageTitle h2 {
  white-space: nowrap;
  transition: all 0.25s ease-in;
}
.sbPageTitle h2 {
  font-size: 12px;
  color: #54698d;
  display: block;
  font-weight: 400;
  padding-bottom: 4px;
}
.sbPageTitle > .sbPageTitleTable {
  display: table;
  width: 100%;
  -webkit-transition-delay: 0s, 0s, 0s;
  -webkit-transition-duration: 0.25s, 0.25s, 0.25s;
  -webkit-transition-property: -webkit-transform, opacity, left;
  -webkit-transition-timing-function: ease-in, ease-in, ease;
  -webkit-user-drag: none;
}
.sbPageTitle > .sbPageTitleTable.sbResultsSection > .sbPageTitleLeft {
  width: 100%;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft,
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight {
  display: table-cell;
  vertical-align: top;
  transition: all 0.25s ease-in;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft {
  display: inline-flex;
  width: 30%;
  vertical-align: top;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft .sbTitles {
  vertical-align: top;
  display: inline-block;
  transition: all 0.25s ease-in;
  -webkit-transition-delay: 0s, 0s, 0s;
  -webkit-transition-duration: 0.25s, 0.25s, 0.25s;
  -webkit-transition-property: -webkit-transform, opacity, left;
  -webkit-transition-timing-function: ease-in, ease-in, ease;
  -webkit-user-drag: none;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon] {
  font-size: 50px;
  height: 50px;
  width: 50px;
  border-radius: 4px;
  margin-right: 12px;
  text-align: center;
  display: inline-block;
  transition: all 0.25s ease-in;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon].resize {
  font-size: 30px;
  padding: 13px 10px 0 10px;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon]:before {
  color: #fff;
  margin: 0;
  position: relative;
  top: -7px;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft .resetHeight[class^=sf-icon]:before {
  top: 0px;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft > span {
  width: 200px;
}
@media screen and (-ms-high-contrast: none), (-ms-high-contrast: active) {
  .sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft > span {
    width: auto;
  }
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight {
  width: 100%;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight > .sbTools,
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight > .sbButtons {
  float: right;
}
.sbPageTitle .sbResults {
  margin: 7px 0 0 62px;
  font-size: 12px;
  transition: all 0.25s ease-in;
}
.sbPageTitle .sbResults.sbWarning {
  margin-top: 2px;
  color: #cc7824;
}
.sbPageTitle .sbResults.sbWarning [class=sf-icon-warning] {
  font-size: 16px;
  width: 13px;
  height: 20px;
}
.sbPageTitle .sbResults.sbWarning [class=sf-icon-warning]:before {
  color: #cc7824;
  margin: 0 6px 0 0;
  position: relative;
  top: 2px;
}
.sbPageTitle.squeezed {
  padding: 20px 15px 7px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon] {
  font-size: 36px;
  height: 36px;
  width: 36px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon].resize {
  font-size: 23px;
  padding-top: 8px;
  padding-left: 7px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon]:before {
  top: -5px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft .sbTitles {
  transform: translate3d(0px, -12px, 0px);
  -webkit-transform: matrix(1, 0, 0, 1, 0, -8);
}
.sbPageTitle.squeezed > .sbPageTitleTable .sbButtons {
  padding: 0;
}
.sbPageTitle.squeezed > .sbPageTitleTable.sbResultsSection {
  opacity: 0;
  display: none;
  transform: translate3d(0px, -17px, 0px);
  -webkit-transform: matrix(1, 0, 0, 1, 0, -17);
}
.sbHeaderFixed .sbPageTitle {
  position: fixed;
  top: 114px;
  left: 10px;
  right: 10px;
  z-index: 5;
  visibility: hidden;
}
#sidebarCell:not(.sidebarCollapsed) + #bodyCell .sbHeaderFixed .sbPageTitle {
  left: 230px;
}
#mainContent {
  margin-left: 1px;
}
.sbPageBlock {
  font-size: 10px;
}
.sbPageBlockSection {
  margin: 15px;
  background: #f4f6f9;
  border: 1px solid #d0d0d0;
  border-radius: 4px;
  padding: 14px;
  font-size: 10px;
}
.sbPageBlockSection > header {
  margin-bottom: 10px;
}
.sbLoadingMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 10001;
}
.sbLoading {
  position: fixed;
  top: 37%;
  left: 50%;
  margin-left: -74px;
}
.sbSearchResults .sbTable {
  font-size: 10px;
}
.sbSearchResults .sbTable > thead > tr > th:first-of-type,
.sbSearchResults .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
.sbSearchResults .sbTable > tbody > tr > td {
  vertical-align: middle;
}
.sbSearchResults .sbTools {
  float: right;
}
.sb input[type=text],
.sb input:not([type]) {
  height: 25px;
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  font-size: 10px;
}
.sb input[type=text].hasDatepicker,
.sb input:not([type]).hasDatepicker {
  min-width: 95px;
  width: 85%;
}
.sb input[type=text].hasDatepicker.invalidDate,
.sb input:not([type]).hasDatepicker.invalidDate {
  border-color: #c00;
}
.sb select:not([multiple]) {
  font-size: 10px;
  -webkit-appearance: none;
  -moz-appearance: none;
  min-width: 100px;
  padding: 0 14px;
  margin: 0;
  height: 25px;
  background-image: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2ZXJzaW9uPSIxLjEiIGlkPSJMYXllcl8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDI3LjYgMjEiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDI3LjYgMjEiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KICA8Zz4NCiAgICA8ZGVmcz4NCiAgICAgIDxwYXRoIGlkPSJTVkdJRF8xXyIgZD0iTTUuNiA1aDE2LjRjMC40IDAgMC44IDAuNiAwLjQgMWwtOCA5LjhjLTAuMyAwLjMtMC45IDAuMy0xLjIgMGwtOC05LjhDNC44IDUuNiA1LjEgNSA1LjYgNXoiLz4NCiAgICA8L2RlZnM+DQogICAgPGNsaXBQYXRoIGlkPSJTVkdJRF8yXyI+DQogICAgICA8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8xXyIgb3ZlcmZsb3c9InZpc2libGUiLz4NCiAgICA8L2NsaXBQYXRoPg0KICAgIDxyZWN0IHg9IjAiIHk9IjAiIGNsaXAtcGF0aD0idXJsKCNTVkdJRF8yXykiIGZpbGw9IiM1NTY5OEQiIHdpZHRoPSIyNy42IiBoZWlnaHQ9IjIxIi8+DQogIDwvZz4NCjwvc3ZnPg0K');
  background-color: #ffffff;
  background-position: 95% 50%;
  background-repeat: no-repeat;
  background-size: 14px 14px;
  border: 1px solid #D8DDE6;
  border-radius: 3px;
}
.sb select:not([multiple])::-ms-expand {
  display: none;
}
.sb input[type=checkbox] {
  width: 22px;
  height: 22px;
  margin: 0;
  border: 0;
}
.sb input,
.sb button,
.sb select,
.sb textarea {
  font-family: inherit;
}
/*
Dualing List box

A control with two list boxes and arrows to move items left/right and up/down between those two.
 */
.sbDualListBox {
  font-size: 12px;
  color: inherit;
  border-collapse: collapse;
  border-spacing: 0px;
}
.sbDualListBox > thead > tr > th {
  font-weight: normal;
  text-align: center;
}
.sbDualListBox > thead > tr > th > [class^=sb-icon] {
  font-size: 14px;
  color: #888;
}
.sbDualListBox > tbody > tr > td:nth-child(2),
.sbDualListBox > tbody > tr > td:nth-child(4) {
  text-align: center;
  vertical-align: middle;
}
.sbDualListBox a {
  color: inherit;
  padding: 2px;
  margin: 0 8px;
  border: 1px solid #d8dde6;
  border-bottom: 0px;
  display: block;
}
.sbDualListBox a:hover {
  background: #0069d9;
  color: #fff;
  border-color: #0069d9;
}
.sbDualListBox a .sf-icon-right,
.sbDualListBox a .sf-icon-left {
  padding: 2px;
}
.sbDualListBox a [class^=sb-icon] {
  font-size: 15px;
}
.sbDualListBox a [class^=sb-icon-to-end]:before {
  -webkit-transform: rotate(-90deg);
  -moz-transform: rotate(-90deg);
  -ms-transform: rotate(-90deg);
  transform: rotate(-90deg);
  font-size: 8.5px;
}
.sbDualListBox a:nth-child(4) [class^=sb-icon-to-end]:before {
  -webkit-transform: rotate(90deg);
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
  font-size: 8.5px;
}
.sbDualListBox a:first-of-type {
  border-top-right-radius: 3px;
  border-top-left-radius: 3px;
}
.sbDualListBox a:last-of-type {
  border-bottom: 1px solid #d8dde6;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.sbDualListBox select {
  font-size: inherit;
  height: 350px;
  width: 180px;
  padding: 8px;
}
.sbDualListBox select > option {
  padding: 4px;
}
.sbDualListBox select > option.required {
  color: #af2626;
  font-weight: bold;
  -webkit-font-smoothing: subpixel-antialiased;
}
#ui-datepicker-div {
  display: none;
}
.ui-datepicker {
  background-color: #F4F6F9;
  border-left: 1px solid #d0d0d0;
  border-right: 1px solid #d0d0d0;
  border-radius: 3px;
  box-shadow: 0 2px 6px #aaa;
  padding: 7px 5px 6px;
  overflow: hidden;
  text-align: center;
  white-space: nowrap;
  width: auto;
  z-index: 4;
}
.ui-datepicker .ui-datepicker-header {
  padding: 0 0 3px;
}
.ui-datepicker .ui-datepicker-title {
  display: inline-block;
}
.ui-datepicker .ui-datepicker-month {
  float: left;
}
.ui-datepicker .ui-datepicker-year {
  float: right;
}
.ui-datepicker .ui-datepicker-prev,
.ui-datepicker .ui-datepicker-next {
  margin-top: 4px;
  display: inline-block;
  width: 19px;
  height: 16px;
  margin: 2px 4px 0 0;
  background-repeat: no-repeat;
  line-height: 400%;
  float: left;
}
.ui-datepicker .ui-datepicker-prev {
  background-image: url('/img/func_icons/cal/leftArrow.gif');
}
.ui-datepicker .ui-datepicker-next {
  background-image: url('/img/func_icons/cal/rightArrow.gif');
}
.ui-datepicker .ui-datepicker-calendar {
  padding: 0 5px;
  margin-left: auto;
  margin-right: auto;
}
.ui-datepicker .ui-datepicker-calendar > thead > tr > th {
  text-align: center;
  font-weight: normal;
  font-size: .9em;
  width: 14%;
}
.ui-datepicker .ui-datepicker-calendar td {
  padding: 2px;
}
.ui-datepicker .ui-datepicker-calendar a {
  width: auto;
  border-bottom: none;
  text-decoration: none;
  font-size: .95em;
}
.ui-datepicker .ui-datepicker-calendar > tbody > tr > td:hover {
  background-color: #e0f0fb;
  font-weight: bold;
}
.ui-datepicker .ui-datepicker-other-month a {
  color: #999;
}
.ui-datepicker .ui-datepicker-today {
  background-color: #1797c0;
  color: #fff;
  font-weight: bold;
  text-decoration: none;
}
.ui-datepicker .ui-datepicker-today:hover {
  background-color: #e0f0fb;
  color: #333;
}
.ui-datepicker .ui-datepicker-current-day {
  background-color: #c6e1ff;
  border: 1px solid #9cf;
  font-weight: bold;
  text-decoration: none;
}
.ui-datepicker .ui-datepicker-current-day > a {
  color: #333;
}
.ui-datepicker .ui-datepicker-buttonpane {
  padding: 1px;
  clear: both;
}
.ui-datepicker .ui-datepicker-buttonpane > button {
  background: transparent;
  border: none !important;
  color: #015ba7;
  cursor: pointer;
  font-weight: normal;
  padding: 0;
  margin: 0;
}
.ui-datepicker .ui-datepicker-buttonpane > button:hover {
  text-decoration: underline;
}
.ui-datepicker .ui-datepicker-close {
  display: none;
}
table > tbody > tr > td {
  color: #16325C;
}
.sbTable {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  background-color: #ffffff;
}
.sbTable td {
  height: 49px;
}
.sbTable > tbody > tr > td.center,
.sbTable > tbody > tr > td.sbActions,
.sbTable > thead > tr > th.sbActions,
.sbTable > thead > tr > th.center,
.sbTable > tfoot > tr > td.center {
  text-align: center;
}
.sbTable > thead > tr > th.right,
.sbTable > tbody > tr > td.right,
.sbTable > tfoot > tr > td.right {
  text-align: right;
}
.sbTable a {
  color: inherit;
}
.sbTable tbody .sbActions i {
  color: #0070d2;
}
.sbTable tbody .sbActions i:hover {
  color: #16325c;
  cursor: pointer;
}
.sbTable input,
.sbTable select {
  font-size: inherit;
}
.sbTable > thead > tr > th {
  border-bottom: 1px solid #D8DDE6;
  padding: 8px 6px 6px;
  font-size: 12px;
  font-weight: normal;
  text-transform: uppercase;
  color: #16325C;
  text-align: left;
  white-space: nowrap;
}
.sbTable > thead > tr > th > *[class^="sb-icon"] {
  margin-left: 4px;
  font-size: 10px;
}
.sbTable > tbody > tr > td {
  border-bottom: 1px solid #D8DDE6;
  padding: 8px 6px 6px;
  color: #16325C;
  font-size: 12px;
}
.sbTable > tbody > tr > td i {
  color: #888;
}
.sbTable > tbody > tr:hover {
  background: #F4F6F9;
}
.sbTable > tfoot > tr > td {
  padding: 8px 6px 6px;
  color: #16325C;
  font-size: 12px;
}
/*
Side Panels

Panel that slides out from the right side of the screen
*/
.sbPanel {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
}
.sbPanel.open {
  right: 0px;
  display: block;
}
.sbPanel > a {
  text-align: right;
  font-size: 12px;
}
.sbPanel > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbPanel > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbPanel fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 12px;
}
.sbPanel fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbPanel fieldset input,
.sbPanel fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbPanel .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbPanel .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
@font-face {
  font-family: 'sf-icons';
  src: url('../font/sf-icons.eot?13067676');
  src: url('../font/sf-icons.eot?13067676#iefix') format('embedded-opentype'), url('../font/sf-icons.svg?13067676#sf-icons') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'sf-icons';
  src: url('data:application/octet-stream;base64,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') format('woff'), url('data:application/octet-stream;base64,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AADoQAAA6EAAAABBAADoQQAA6EEAAABCAADoQgAA6EIAAABDAADoQwAA6EMAAABEAADoRAAA6EQAAABFAADoRQAA6EUAAABGAADoRgAA6EYAAABHAADoRwAA6EcAAABIAADoSAAA6EgAAABJAADoSQAA6EkAAABKAADoSgAA6EoAAABLAADoSwAA6EsAAABMAADoTAAA6EwAAABNAADoTQAA6E0AAABOAADoTgAA6E4AAABPAADoTwAA6E8AAABQAADoUAAA6FAAAABRAADoUQAA6FEAAABSAADoUgAA6FIAAABTAADoUwAA6FMAAABUAADoVAAA6FQAAABVAADoVQAA6FUAAABWAADoVgAA6FYAAABXAADoVwAA6FcAAABYAADoWAAA6FgAAABZAADoWQAA6FkAAABaAADoWgAA6FoAAABbAADoWwAA6FsAAABcAADoXAAA6FwAAABdAADoXQAA6F0AAABeAADoXgAA6F4AAABfAADoXwAA6F8AAABgAADoYAAA6GAAAABhAADoYQAA6GEAAABiAADoYgAA6GIAAABjAADoYwAA6GMAAABkAADoZAAA6GQAAABlAADoZQAA6GUAAABmAADoZgAA6GYAAABnAADoZwAA6GcAAABoAADoaAAA6GgAAABpAADoaQAA6GkAAABqAADoagAA6GoAAABrAADoawAA6GsAAABsAADobAAA6GwAAABtAADobQAA6G0AAABuAADobgAA6G4AAABvAADobwAA6G8AAABwAADocAAA6HAAAABxAADocQAA6HEAAAByAADocgAA6HIAAABzAADocwAA6HMAAAB0AADodAAA6HQAAAB1AADodQAA6HUAAAB2AADodgAA6HYAAAB3AADodwAA6HcAAAB4AADoeAAA6HgAAAB5AADoeQAA6HkAAAB6AADoegAA6HoAAAB7AADoewAA6HsAAAB8AADofAAA6HwAAAB9AADofQAA6H0AAAB+AADofgAA6H4AAAB/AADofwAA6H8AAACAAADogAAA6IAAAACBAADogQAA6IEAAACCAADoggAA6IIAAACDAADogwAA6IMAAACEAADohAAA6IQAAACFAADohQAA6IUAAACGAADohgAA6IYAAACHAAMAAAAAA8IB0gAMABkAJgAKtyAaEw0GAAMtKxMyHgEUDgEiLgE0PgEhMh4BFA4BIi4BND4BITIeARQOASIuATQ+AZofNR8fNT41Hx81AXkfNR8fNT41Hx81AXkgNR8fNT81Hx81AdEfNT41Hx81PjUfHzU+NR8fNT41Hx81PjUfHzU+NR8AAAABAAD/twObAwUALwAGsycPAS0rASEyNj0BNCYjISImNRE0JisBIgYVERQGIyEiBh0BFBYzITIWFREUFjsBMjY1ETQ2AkEBPQwREQz+wwkKEgs6CxIKCf7DDBERDAE9CQoSCzoLEgoBJBILOgsSCgkBPQwREQz+wwkKEgs6CxIKCf7DDBERDAE9CQoAAAEAAP/5A1cCwQAvAAazHg4BLSsBNzY0LwEmIg8BBiIvASYiDwEGFB8BFhQPAQYUHwEWMj8BNjIfARYyPwE2NC8BJjQCVPoJCSYJFwn8BRAF/AkXCSgJCfwFBf4JCSgJFwn8BRAG+wkXCSgJCfoFAWr8CBcJKAkJ/AUF/gkJKAkXCfsGEAX+CRcJKAkJ/AYG/AkJKAkXCfwFEAAAAAUAAAAAAwwCigAnADcARwBXAGcAD0AMYlpSSkI6MiofAAUtKwEhIgYdASMiBhQWOwEVIyIGFBY7ARUjIgYUFjsBFRQWMyEyNjURNCYBFAYrASImPQE0NjsBMhYVFxQGKwEiJj0BNDY7ATIWFRcUBisBIiY9ATQ2OwEyFhUXFAYrASImPQE0NjsBMhYVAs3+iBkkFBAYGBAUFBAYGBAUFBAYGBAUJRgBeBkmJf7HBQUoBAYGBCgFBVAFBRQEBgYEFAUFZAUFKAQGBgQoBQVQBQUUBAYGBBQFBQKKIxcWFyEYZBchGGQXIRgSFycpGQHgGB7+ZgQGBgTcBQUFBdwEBgYE3AUFBQXcBAYGBNwFBQUF3AQGBgTcBQUFBQAAAgAA/5ADKwMvADEAQQAItTw0IQACLSslIyImPQE0Njc2NzY3Ni4BJyYGBwYHDgErASImNz4BNz4BFx4BFxYXFg4BBw4BHQEUBhcUBisBIiY9ATQ2OwEyFhUCImALEEc6JBoiBgUnRysfOxgmBgIPDGANEQEGMCcuc0BOhigpAwMxXj4NEBMTEQxgCxISC2AMEXcQCx09ZBQNGyovK00wAQEWFSMyCQwSDTZhJystAQNRQkRPQnlcFwUVDB0MEcoLEhILYQsREQsAAAAABAAA/5ADmwMsACcANwBHAFcADUAKUkpCOjIqHwAELSsBISIGHQEjIgYUFjsBFSMiBhQWOwEVIyIGFBY7ARUUFjMhMjY1ETQmAxQGIyEiJj0BNDYzITIWFTcUBiMhIiY9ATQ2MyEyFhU3FAYjISImPQE0NjMhMhYVA079vx8uORkhIRk5ORkhIRk5ORkhIRk5Lh8CQSAtLaYLCf7zCAsLCAENCQsmCwj+pgkLCwkBWggLJwsJ/lkICwsIAacJCwMsLSA6ITIgmiEyIZkhMiE6Hy4tIAMCIC39cgkKCgkmCQoKCXQJCwsJJgkKCgmaCQoKCXMJCwsJAAADAAAAAAObArgADwAfAC8ACrcnIBcQBwADLSsBISImPQE0NjMhMhYdARQGAyEiJj0BNDYzITIWHQEUBgMhIiY9ATQ2MyEyFh0BFAYDfvzsDBERDAMUDBERDPzsDBERDAMUDBERDPzsDBERDAMUDBERAkURDDkMEREMOQwR/uESCzoKERILOgoR/t4RDDkMEREMOQwRAAAAAAIAAP+QA8IDLQAfAEQACLUzIRcAAi0rJSMiBh0BFAYjISImPQE0JisBIgYVERQWMyEyNjURNCYBJiIHAQYUHwEWMj8BNjIWFREUFjsBMjY1ETQ2HwEWMj8BNjQnA6U6CxIRDP2GDBESCzoLES0fAwIgLRL+VwgYCP78CAgpCBgIbAURDBALOgsUFgpsCRcJKAgI/hILwAwREQzACxISC/78IC0uHwEECxICJggI/vwIGAgoCQlrBgsI/mgLEhMKAZYNCQlrCQkoCRcIAAMAAP+QA8IDLAAUACkAPwAKtzkvHxUKAAMtKwEiBwYHBhQXFhcWMjc2NzY0JyYnJgMiJyYnJjQ3Njc2MhcWFxYUBwYHBgMmPQE0JisBIgYdARQfARYyPwE2NCcB9H1raT0/Pz1pa/psaD4/Pz5obH1dUU4vLy8vTlG6UU4vLy8vTlEcBxILOgsSCI4JFwkoCQkDLD8+aGz6bGg+Pz8+aGz6bGg+P/zYLy9OUbpRTi8vLy9OUbpRTi8vAVYIDbkLEhIL6QkMjgkJKAkXCQAAAAADAAD/8gPoAssAKABPAHsACrdxXUc1HQkDLSsBJjU0NzY3JicmIyIHDgEVFBcWFRQHBgcGBwYHHgE7ATI2NzY3Njc+ASUmJyY1NDc2NTQmJyYjIgcGBxYXFhUUBwYWFxYXHgE7ATI2NTYnJgUmJyY1NDc+ATU0JicmIgcOARUUFhcWFRQHBgcGBwYHFBYzITI2NSYnJicmATIpGhksEBsdJCkfHSArHAkNIT0gKQECJR5ABw4EFSkcLg0GAiohDAocKx8dHyokHRwRLBkaKQcHDGQkBA4HQB4lAScg/tUkDgwhFxkiICNaIyAiGRchCw4lSCAvAS4hAZAhLgEWEyUZATg9TUE3NCIbDxEVE0QoQiUeGBEMEQ4bHSUrISoIByYfFhgGGjEPDwwSHBonQChEExURDxsiNDdBTT0MGQYwQwcIKiErJR1xEBEOEh0fFjsiLEoVFxcVSiwiOxYjGRQMERAfGSQvIzIyIyAaFxYOAAIAAP+3A8IDBQAXACcACLUjGA8HAi0rASEiJi8BLgErASIGFREUFjMhMjY1ETQmJyEiBh8BFjMhMhcWNjU0JgN1/ksUJAtDCyQVgyAsLCADAiAtLSD+MAUFAx4GDAGnIhkGDC0CRRURdBIULSD9TCAtLSAB9CAtmgkFNAsMAwgHIC0AAAQAAP/KA5sC8gAPAB8ALwA/AA1ACjcwJyAXEAcABC0rASEiBh0BFBYzITI2PQE0JgchIgYdARQWMyEyNj0BNCYDISIGHQEUFjMhMjY9ATQmJyEiBh0BFBYzITI2PQE0JgN+/OwMEREMAxQMEREM/YYMEREMAnoMEREM/YYMEREMAnoMEREM/OwMEREMAxQMEREC8hILOgsREQs6CxLnEQw5DBERDDkMEf4zEgs6CxISCzoLEuYRCzoMEREMOgsRAAcAAAAAAyACigAPAB8ALwA/AE8AXwBvABNAEGdgV1BGQDYwJiAXEAcABy0rNzMyNjURNCYrASIGFREUFgEjIgYVERQWOwEyNjURNCYBMjY1ETQmKwEiBhURFBY7ATI2NRE0JisBIgYVERQWMyMyNjURNCYrASIGFREUFjMFISIGHQEUFjMhMjY9ATQmAyEiBh0BFBYzITI2PQE0JtwyCAwMCDIIDAwCODIIDAwIMggMDP7+CAwMCDwIDAwItAgMDAgUCAwMCPAIDAwIFAgMDAgBmv3QCAwMCAIwCAwMCP3QCAwMCAIwCAwMvgwIATYIDAwI/soIDAFeDAj+yggMDAgBNggM/qIMCAE2CAwMCP7KCAwMCAE2CAwMCP7KCAwMCAE2CAwMCP7KCAw8DAgUCAwMCBQIDAIIDAgUCAwMCBQIDAAAAAMAAAAAAyECdwAcACwAVgAKt08zJx8SAAMtKwEiBwYHBhUUFxYPAQYWPwE2FxYzMjc2NzY0JicmAxQGKwEiJj0BNDY7ATIWFTcOAR0BFAYrASImPQE0PgE3Ni4CBwYHDgErASImNzY3PgEXHgIXFgYB9FJGQygpJgUDHAQSDFgJCEhWUkZDKClSQ0Y0DAgUCAwMCBQIDAgDBQwIFAgMGyoHEAUiLhQNAwIKBxUJDAEIGhEtGR81IAECLQJ2JiVAQUxIQQgIWQwRBB8DBSomJUBBmIElJv4+CAwMCBQIDAwIawEFBBAIDQ0IEBYlDwsVLh8BEg0PBwkPCSYZERIBASA1HydAAAAAAAP//v+3A+sDCQAOABcAJwAKtyIaEw8JAwMtKyUBLgEGBwEGHgEzITI+ASUiJjQ2MhYUBjcUBisBIiY9ATQ2OwEyFhUD3f5HCyUlC/5IDQYgFwNwGCEG/gkZISEyISEhCwhNCQsLCU0ICyECxxMODhP9ORYyIiIyRiEyICEwIq0JCgoJ+ggLCwgAAAAAAgAA/5ADwgMtAB0AKgAItSQeDwMCLSslFRQGIyEiJj0BNDc2PwE2FxYzMjY3Nh8BFhcWFxYBMh4BFA4BIi4BND4BA8I3Jv0eJTdQOXQMEA1MWStVJg0PDE0uQCAn/jI+aj09anxqPT1qFyolODcmKktALTMGBQcyGhgHBQYhGyQnLwLgRHWKdUREdYp1RAAAAQAA/+wC2wLMAAwABrMLBAEtKyURND4BFwEWFAcBBiYBDQ4UCQGXDAz+aQ4dCgKoCg4BB/6zCB8J/q8KDgAAAAIAAP+QA8IDMAAjAC8ACLUqJBsKAi0rJSMiJj0BNCcmJyYHBgcOAR0BFAYrASIGHQEUFjMhMjY9ATQmBSMiBhceATI2NzYmA3UKGygsLElLV1FFQk0nHAofLRELA2ILEi3+vbwJDAIHQFRACAEM1ygc3VZJRygpAwQtK49T1RwmLiAdCxARDB0fLdMPCCg1NicJDgABAAD/kAPEAywAIgAGsxwEAS0rASMRFAYrASImNREjERQGKwEiJjURIyImJyY3ATYyFwEWBwYDrmAKCcAJC+YLCcAIC2AGCwEECAG7BRIEAboIBAMBS/5ZCQsLCQFH/rkJCwsJAacGBQwKAboGBv5GCA4LAAQAAP+QA8IDLAAVACwAQwBaAA1AClZLPzQhFgsABC0rASEyNi8BNzY0LwEmBg8BJyYGFREUFgchIgYfAQcGFB8BFjI/ARceATY1ETQmFxEUFj8BFxYyPwE2Ji8BNz4BJiMhIgYnETQmDwEnJiIPAQYUHwEHDgEWMyEyNgI5ASgPBgterQgIRwgUCa1iCxkUgP7YDwYLXq0HB0cIFAmvYgYRDBViGQtgrwgWB0cGAQetXggCCgn+1woSTRoLYK8HFghHBwevXggECgoBJgoXAYUZC2CvCBYHRwYBB61eDAcO/tcKEk0aC2CvBxYIRwcHr14IBAoKASYKFx/+2A8GC16tBwdHCBQJrWIHEgwVgAEoDwYLXq0ICEcHFQmvYgYQDBQAAAADAAD/pAPAAxoALAA5AF0ACrdTQTMtJQ0DLSslNDY3Njc2NzY3PgEuAQ4BBwYXFhcWFxYHBgcGBzYHBgcGBwYeATMhMjYnLgEBIg4BFB4BMj4BNC4BFxQGKwEVFAYrASImPQEjIiY9ATQ2OwE1NDY7ATIWHQEzMhYVAaUYFA4UBhwUCyQNLWaAYRQYDQ0yGQwOCgYRDRUHK0onOQsHGTomAUcLCwckJwE0Pms+Pmt8az4+azcMCTgMCSYJCTsJCQkJOwkJJgkMOAkMiyZUIxkXCB0WEDWLdUIDSDtEREkvGBogHBEPCwsEFSEeLTskRSsWCCpoAR0+anxqPz5rfGo++ggLOggLCgk6CgknCQo6CQoLCDoLCAAACQAA/7cDmwMFAA8AHwAvAD8ATwBfAG8AfwCPABdAFIeAd3BnYFdQR0A3MCcgFxAHAAktKxMjIgYdARQWOwEyNj0BNCYDIyIGHQEUFjsBMjY9ATQmAyMiBh0BFBY7ATI2PQE0JgEjIgYdARQWOwEyNj0BNCYDIyIGHQEUFjsBMjY9ATQmAyMiBh0BFBY7ATI2PQE0JgEjIgYdARQWOwEyNj0BNCYDIyIGHQEUFjsBMjY9ATQmAyMiBh0BFBY7ATI2PQE0JvpzGSEhGXMZISEZcxkhIRlzGSEhGXMZISEZcxkhIQEbdBghIRh0GCEhGHQYISEYdBghIRh0GCEhGHQYISEBG3MZISEZcxkhIRlzGSEhGXMZISEZcxkhIRlzGSEhAwUhGXMZISEZcxkh/ZkhGXMZISEZcxkhATMhGHQYISEYdBghATQhGXMZISEZcxkh/ZkhGXMZISEZcxkhATMhGHQYISEYdBghATQhGXMZISEZcxkh/ZkhGXMZISEZcxkhATMhGHQYISEYdBghAAAAAAUAAP+QA5sDLAARACEAMQBBAFEAD0AMTEQ8NCwkHBQKAAUtKwEhIgYdASEyFhURMzI2NRE0JgM0JiMhIgYVERQWMyEyNjUBFAYrASImPQE0NjsBMhYVExQGIyEiJj0BNDYzITIWFTcUBiMhIiY9ATQ2MyEyFhUDTv4MHy4BziAtJiAtLZMtIP4MIC0uHwH0IC3+pgsJmQkLCwmZCQuaCwn+zQkLCwkBMwkLTAoJ/oAJCwsJAYAJCgMsLSAnLSD95i0gAkEgLf7yIC0tIP2/Hy4uHwG7CQoKCSYJCgoJ/qYICwsIJwgLCwhzCQoKCSYJCwsJAAADAAD/3QPCAt8ADwAjACwACrcoJBYQCgIDLSsBNCYjISIGFREUFjMhMjY1JyEiJjcTNjIfAR4BPwE2Mh8BFgYDIiY0NjIWFAYDwi0g/P4fLS0fAwIgLcj90hERCakGFQZmBRYFUwYVBpgIDUIgLS1ALS0CkiAtLSD9mCAtLh9NHg8BJgoKrwkCCXcJCfIOGQFaLUAtLUAtAAMAAP+QA8IDLAACADIAVwAKt0s5CgMCAQMtKzc1FQEhIgYVERQWOwEyNj0BNCYrASImNRE0NjMhMhYVERQGKwEiBh0BFBY7ATI2NRE0JgM3NjQvASYiDwEGFB8BFjI/ATYyFhURFBY7ATI2NRE0Nh8BFjKaAtv8/h8tLR/nCQoKCaMMEREMAnoMEREMowkKCgnnIC0txCkICPMIGAjwCQkoCBgIWQURDBALOgsUFgpZCBqxDBgChy0g/UsgLQsJTQgLEQwB4AwREQz+IAwRCwhNCQsuHwK1IC39jSgJFwjzCAjxCBcJKAkJWAYLCP6nCxISCwFZDQkJWgcAAAMAAP+SA6UDKgAMAFgAZQAKt19ZRyEGAAMtKwEiDgEUHgEyPgE0LgEBJzY0Jzc+AS8BLgEjIg8BJi8BLgErASIGDwEGBycmIyIGDwEGFh8BBhQXBw4BHwEeATMyPwEWHwEeATsBMjY/ATY3FxYzMjY/ATYmBSIuATQ+ATIeARQOAQH2JT4kJD5KPiQkPgFvRwUFRxIJDB8IHhEGD1kyPxAEIxg+GCMEEDo5WBAGER4IHwwIE0cFBUcSCQwfCB4RDQlYMj8QBSIYPhckBBBEM1MOCREeCB0NCP5aOmE5OWF0YTk5YQHjJD5KPSQkPUo+JP8APBpOGjwPLhQ2DhADIS0UWxYaGhZZEi8gBBAONhQvDjwjPCM8Dy4UNg4QAyEtFF0XHR8XXRcwIQQRDjIPLUs5YHRhOTlhdGA5AAADAAD/jwPCAywAIwBEAFEACrdLRT8uFgQDLSsBIzU0JisBIgYdASMiBh0BFBY7ARUUFjsBMjY9ATMyNj0BNCYBJzY3NjU0JyYnJiIHBgcGFBcWFxYzMjc2NxcWMj8BPgElIi4BND4BMh4BFA4BAlRzCwhNCQtzCAsLCHMLCU0IC3MJCgoBXd0kExQ1M1da0FpXMzQ1M1dZaD48ODHdCRcJKAkB/eVJe0lJe5J7SUl7AeVzCQoKCXMLCUwJC3MJCgoJcwsJTAkL/gjbMjg7PmhaVzM1NTNXWtBaVzM1FBMk3QgIKAkZvEl7kntJSXuSe0kAAAAACAAAAAADDAKKAA8ALwA/AE8AXwBvAH8AjwAVQBKKgnpyamJaUkpCOjInEAcACC0rATMyNj0BNCYrASIGHQEUFiUjIgYdARQGKwEiJj0BNCYrASIGFREUFjMhMjY1ETQmARQGKwEiJj0BNDY7ATIWFTUUBisBIiY9ATQ2OwEyFhU1FAYrASImPQE0NjsBMhYVBRQGKwEiJj0BNDY7ATIWFTUUBisBIiY9ATQ2OwEyFhU1FAYrASImPQE0NjsBMhYVAYbcCAwjGYwZIwwBUhQEBi8h3CEvBQUUGSMjGQG4GSMj/p0MCBQIDAwIFAgMDAgUCAwMCBQIDAwIFAgMDAgUCAwBGAwIyAgMDAjICAwMCMgIDAwIyAgMDAjICAwMCMgIDAISDAgoGSMjGSgIDEYFBSghLy8hKAUFIxn+UhkjIxkBrhkj/lIIDAwIFAgMDAhQCAwMCBQIDAwIUAgMDAgUCAwMCNwIDAwIFAgMDAhQCAwMCBQIDAwIUAgMDAgUCAwMCAAAAAEAAP+jAz0DGAAlAAazFwUBLSs3BhQXARYyNwE2NC8BJiIPAQYiJjURNCYrASIGFREUBiIvASYiB7kMDAEgDB8LASIMDDUMHwtbBxQPFw9NEBcPFAdbCx8L/gseC/7lCwsBGwseCzQLC1kHDgsCBw8XGA79+QsOB1kLCwAEAAD/nAOlAy0AMQA6AEMAVwANQApRRT87NjIYBQQtKyUmBwEuAQ8BDgEXExYUDwEmBw4BBwYWFxY3PgE3NiYnNzYyHwEOARceARcWNz4BJy4BBSImNDYyFhQGISImNDYyFg4BAxYyPwE2Jic3ByYvASYGDwEGFBcDDy0u/lcEEQYPGQcTywYGbSoxNUwHBzUwMzkzTgsHDBJRCB4IURIMBwpONDkzMDUHDU79thkhITIhIQHbGSEhMiEBIqkGEwaaEAIQAgICDg0GEAWpBgb2CxECNAYDBQwTPhr+8gcUB5EQCgtQNThgGBoKCEkzI0EZbAsLbBxAITNJCAoaGGA4N0/XITIhITIhITIhITIhAdIHB8oVNBUCAgQLCgQCBuEHFAgABQAA/5ADwgMsACMAOgBKAFoAagAPQAxlXVVNRT0zKxYEBS0rJSM1NCYrASIGHQEjIgYdARQWOwEVFBY7ATI2PQEzMjY9ATQmJTQ2OwERNCYjISIGFREUFjMhNTQ2OwEBFAYrASImPQE0NjsBMhYVExQGIyEiJj0BNDYzITIWFTcUBiMhIiY9ATQ2MyEyFhUDpVcRDDkMEVcLEhILVxEMOQwRVwsSEv7eEQwwLSD95R8tLR8BqBELV/6mCwh0CAsLCHQIC+cLCf6mCAsLCAFaCQtMCgn+WQgLCwgBpwkKd1cLEhILVxEMOQwRVwsSEgtXEQw5DBGkCxIBpyAtLSD95SAtMAwRAbsJCwsJJgkKCgn+pgkKCgkmCQsLCXQJCwsJJgkKCgkAAAACAAD/twPIAwUAFQAmAAi1HhYUDgItKwE0JiMhIicmLwMmJyYrASIGHQEhFyEiDgEXEx4BMyEyNjcTNiYDTi0g/uYQEQ0MCjAICgwRFEkgLQK0OPzcEx4NBG4GIBQCShUhBG4FJQIyIC0KBwsKOgoLBwotIK1NFSIS/mwTFxcTAZQcLQAFAAD/twPCAwUADwAfAC8APwBPAA9ADEdANzAnIBcQBwAFLSsBISIGFREUFjMhMjY1ETQmISMiBh0BFBY7ATI2PQE0JgcjIgYdARQWOwEyNj0BNCYHIyIGHQEUFjsBMjY9ATQmByMiBh0BFBY7ATI2PQE0JgOl/fkMEREMAgcLEhL9Z9QLEREL1AsSEgvUCxERC9QLEhIL1AsREQvUCxISC9QLEREL1AsSEgMFEQz87AwREQwDFAwREQxgCxISC2AMEecRC2ELERELYQsR5hILYAwREQxgCxLnEgtgDBERDGALEgAEAAD/jwPCAywACQATADQAQQANQAo7NS8eEQoHAAQtKwEzMjY9ATQmKwExIyIGHQEUFjsBASc2NzY1NCcmJyYiBwYHBhQXFhcWMzI3NjcXFjI/AT4BJSIuATQ+ATIeARQOAQFt5wkKCgnncwgLCwhzAk3dJBMUNTNXWtBaVzM0NTNXWWg+PDgx3QkXCSgJAf3lSXtJSXuSe0lJewFxCwlMCQsLCUwJC/563TI4Oz5oWlczNTUzV1rQWlczNRQTJN0ICCgJGbxJe5J7SUl7kntJAAAAAAQAAAAAAw0CeAASACIAMgA7AA1ACjczLSUdFQkCBC0rASMmBwEGFB8BFjI3AT4BJzU0JgMHBiIvASY0PwE2Mh8BFhQ3BwYiLwEmND8BNjIfARYUNyImNDYyFhQGAtDbExH+9BER1BEyEgEPCAgBI/EOBhAGiAYGDgYQBogGSg4GEAaIBgYOBhAGiAYyFR0dKh0dAnYBEf7zETIS1BERARAIFgrSGSP+SA4GBogGEAYOBgaIBhBKDgYGiAYQBg4GBogGEKQdKh0dKh0AAAgAAAAAAyACigAWACYANgBGAFYAZgB2AIYAFUASgXlxaWFZUUlBOTEpHRcPAAgtKwEhIgYdARQWMyEyFhURFBYzMjY1ETQmBSIGFREUFjMhMjY1ETQmIwcUBisBIiY9ATQ2OwEyFhUXFAYrASImPQE0NjsBMhYVBxQGKwEiJj0BNDY7ATIWFRcUBisBIiY9ATQ2OwEyFhUHFAYrASImPQE0NjsBMhYVFxQGKwEiJj0BNDY7ATIWFQLk/sAZIwYEASIZIwYEHSkj/hsZIyMZAUAZIyMZ8AwIFAgMDAgUCAzcDAiMCAwMCIwIDNwMCBQIDAwIFAgM3AwIjAgMDAiMCAzcDAgUCAwMCBQIDNwMCIwIDAwIjAgMAoojGQoEBiMZ/soEBikdAUoZI4wjGf6sGSMjGQFUGSOMCAwMCBQIDAwIFAgMDAgUCAwMCHgIDAwIFAgMDAgUCAwMCBQIDAwIeAgMDAgUCAwMCBQIDAwIFAgMDAgAAAcAAP9qA2sDUgANABEAFQAZAB0ALgA3ABNAEDUvJx8cGhgWFBIQDgYABy0rEyIGFREUFjMhMjY1EQkBIRUhFSEVIRUhFSEVMxUjARUjJyYnJicmNxcWFxYXFjMDFRQXFhcWOwFQIS8vIQLLIS/+2f5aAVH+rwFR/q8BUf6vwMACzcgQEhAVDA8BAgMIChIWH1wHChMXJMgDUi8h/LghLy8hAlsBPf24ISohKiEqIQILDwQHCg0SFx0OEQ0UCw4BP+QREhgOEgAABgAA/90DwgLfAA8AHwAvAD8ATwBfABFADldQR0A3MCcgFxAHAAYtKwEjIgYdARQWOwEyNj0BNCYpASIGHQEUFjMhMjY9ATQmASEyNj0BNCYjISIGHQEUFgcjIgYdARQWOwEyNj0BNCYpASIGHQEUFjMhMjY9ATQmByEiBh0BFBYzITI2PQE0JgEX1AsREQvUCxISAoP9+QwREQwCBwsSEv3uAUYMEREM/roMERF71AsREQvUCxISAoP9+QwREQwCBwsSEsz+ugwREQwBRgwREQLfEgv6DBERDPoLEhILOgsSEgs6CxL+zBEMOgsREQs6DBGaEQz6CxISC/oMEREMOQwREQw5DBHAEgs6CxISCzoLEgAAAgAA/5ADdQMsABcAJQAItSAaDwcCLSsBIyImPQE0JiMhIgYVERQWMyEyNjURNCY3JyYiBh0BFBY7ATI2NANW1yYrEg3+wSU4OCUCSCY3EgzMBhQOJxqkCA0B5Ssl2A0SNyb9HiU4OCUB2Q0SdcwGDQmjGicOFAAAAQAA/5ADwgMsACsABrMfEAEtKwEuAQ8BBiIvASY0PwE2JicmIyIGBwYXFhcBDgEWFx4BMjY3ARYXFjc+ATU0A7YDEAicCBkJbggIngYECCgqUYYiJAoHDP6YFQ4OFRApKCkQAWYbLlJIRlQCZwkDBpwICG4JGQicBhAFDFRGSFIsHf6aFTg3FBARERABZgwHCiQihlErAAABAAD/pAMoAxkAJQAGsxcFAS0rATY0JwEmIgcBBhQfARYyPwE2MhYVERQWOwEyNjURNDYyHwEWMjcDHAwM/uAMHwv+3wsLNgwfC1sHFA8XD00PGA8UB1oMHwsBvgwdCwEbCwv+5QsdDDQLC1kHDgv9+Q8XGQ0CBwsOB1kLCwAAAAEAAP+HA8sDMwBHAAazOS8BLSslFjY/AT4BFhQPAQ4BJi8BLgE2NwE+ARYfAR4BBg8BDgEXFhceATY/AT4BJicjLgEGBwEOARYfAR4BNj8BPgEuAgYPAQYUFwFTCBcJwAsfGAzsGkVGGgIaEREaAaIZRkUaAhoSEhoCCAIGEgkDFRILCTAiIjAEMIKCMP5fMCIiMAMxgIEw7x4UFz1SUB29CAiQCAEHwQoBFyIM6RoRERoCGkZFGgGhGhISGgIaRUYZAggSCR8kDAYRDAowgoIwMCIiMP5gMIKBMQQwIiIw7R5SUTsTFx+8CRkIAAAAAAMAAP+QA5sDLAAfAC8AQgAKtz8zJyAXBAMtKwEjNTQmIgYdASE1NCYiBh0BIyIGHQEUFjMhMjY9ATQmFyEiBhURFBYzITI2NRE0JgEVFAYiJj0BBwYiJjQ/ATYyFhUDTmAiLyL+8iEwImAgLREMAxQMES0Q/OwMES4fArQgLRH+pBgeFx0IFxEKSwsiGALLJxgiIhgnJxgiIhgnLR8xCxERCzEgLPoRC/4oHy4tIAHYCxH+WQMMFxgOwR8IEhYKSwwXEAADAAD/kAPCAywAFAAdAD8ACrc0IBkVCgADLSsBIgcGBwYUFxYXFjI3Njc2NCcmJyYHMhYUBiImNDYTFAYrASImPQE0NjI2PQE0JiImPQE0NjsBMhYdARQWMhYVAfR+a2k8Pz88aWv8bGg9Pz89aGx+GSEhMiEheQoJmgcMCxALChAMCwh0BwwKEAwDLD89aGz8bGg9Pz89aGz8bGg9P+khMiAhMCL+bAgJCQgnBw4JCE0IDQkIJwcODQiaCAkNCAADAAAAAAPoApQAFAApADkACrc0LCQYCwIDLSsBJyYGBwMGFBcTHgE/AT4BLwE3NiYFAy4BDwEOAR8BBwYWHwEWNjcTNjQBJyYGBwMGFh8BFjY3EzYmATotChYI3wYG4QcXCiwLAgm0tgYDAp7hBxgJLAsCCbe3BwIJLAoWCOEG/ng6CxcCjwMNCzoMFgOOAwwCZyUHAgn+5wcVCP7pCQMIJQcZCOHhCRfwARcJBAkkCBgJ4eEIGQclBwMIARkKEwEaDgMNC/3eDBQDDgIMDAIiDBQAAAUAAP+QA5sDLAAPAC8APwBPAF8AD0AMWlJKQjoyJxAHAAUtKwEhMjY9ATQmKwEiBh0BFBYlIyIGHQEUBiMhIiY9ATQmKwEiBhURFBYzITI2NRE0JgMUBiMhIiY9ATQ2MyEyFhU1FAYjISImPQE0NjMhMhYVNRQGIyEiJj0BNDYzITIWFQFRAUcLES0g5iAtEQIJMAsSLSD+gCAtEgswHy4uHwK0IC0tkwsI/lkJCwsJAacICwsI/lkJCwsJAacICwsI/lkJCwsJAacICwJrEgtXIC0tIFcLEnQSC1cgLS0gVwsSLSD9Sx8uLSACtSAt/V8JCwsJJgkKCglzCAsLCCcICwsIcwgLCwgnCAsLCAAAAgAA/48DwgMtACMARwAItUIvFgUCLSsBNjQvASYiDwEGFB8BFjI/ATYWFREUFjsBMjY1ETQ2HwEWMjcBJyYiDwEGJjURNCYrASIGFREUBi8BJiIPAQYUHwEWMj8BNiYCEQgI2wkXCd0ICCkIFwlFCRgRDDkMERgJRQkXCQHPKAkXCUUJGBEMOQwRGAlFCRcIKQgI3QkXCd0IAQIeCRcJ3QgI3QkXCSgJCUUJCQ3+aAsSEwoBmA0JCUUJCf6oJgkJRQkJDQGcCxITCv5oDQkJRQkJKgkXCd0ICN0JGQAAAAAIAAD/agNrA1IADQAeACcAOABAAE4AVgBvABVAEmljUU9IQTs5MiwlHxcPBgAILSsTIgYVERQWMyEyNjURCQEVIycmJyYnJjcXFhcWFxYzAxUUFxYXFjsBASMVFAYiJj0BNDY7ATIWFAYnIxUzMjY0JhcjIiY9ATQ2OwEyFhQGJyMVMzI+ASYzIxUzMhYUBisBFRQGIiY9ATQ2OwEyFRYGUCEvLyECyyEv/tkBJ8gPEw8VCw8BAgMIChIVH10HChMXJMj9fjQGCgcKBzobICAdMjIRFRWSLwcKCgcvKzY1LCkpIScBJ9xaWQQFBQRZBwoHCwdgCgEGA1IvIfy4IS8vIQJbAT3+wQ8EBwoNEhcdDhENFAsOAT/kERMXDhL+QUAFBgcEoAcKITAgXUgUIBSoCweZBwo2UDaokio/KT0GCQZLBQYHBKAHCgsEBQAAAAAFAAAAAAMMAooADwAvAD8ATwBfAA9ADFpSSkI6MicQBwAFLSsBMzI2PQE0JisBIgYdARQWJSMiBh0BFAYrASImPQE0JisBIgYVERQWMyEyNjURNCYBFAYrASImPQE0NjsBMhYVFxQGKwEiJj0BNDY7ATIWFRcUBisBIiY9ATQ2OwEyFhUBhtwIDCMZjBkjDAFSFAQGLyHcIS8FBRQZIyMZAbgZIyP+xQwIFAgMDAgUCAxkDAgUCAwMCBQIDGQMCBQIDAwIFAgMAhIMCCgZIyMZKAgMRgUFKCEvLyEoBQUjGf5SGSMjGQGuGSP+ZggMDAhkCAwMCGQIDAwIvggMDAi+CAwMCJYIDAwIAAAABgAAAAADFgJ/ABQAJAA0AEQAVABkABFADlxVTEU8NSwlHBUPAgYtKwEnJiIPAScmIg8BBhQfARYyPwE2NAUhIiY9ATQ2MyEyFh0BFAYHISImPQE0NjMhMhYdARQGISMiJj0BNDY7ATIWHQEUBgcjIiY9ATQ2OwEyFh0BFAYpASImPQE0NjMhMhYdARQGAdIVBAwFhDUEDAUVBARKCRgJmQQBLP78CAwMCAEECAwMCP7ACAwMCAFACAwM/kAoCAwMCCgIDAwIKAgMDAgoCAwMAbD+wAgMDAgBQAgMDAJlFQUFhDUFBRUEDAVKCQmZBA2LDAgoCAwMCCgIDLQMCCgIDAwIKAgMDAgoCAwMCCgIDLQMCCgIDAwIKAgMDAgoCAwMCCgIDAAAAAACAAAAAAMgApAALAA8AAi1NC0kEAItKwEjIiY1Njc2NzY3Njc2JicmDgEVFBceARcWFxQGKwEiBh0BFBYzITI2PQE0JgchIgYdARQWMyEyNj0BNCYC5G4ZIwIHBgoOAggBAzQsJkQpBwQYBQgCIxluGSMMCAIwCAwjGP4eCAsjGQGRGSILATYjGR4XEBMWBhATLUgKCB08JRYSCSgQGB8ZIyMZKAgMDAgoGSO0CwgBGSMjGQEICwAAAQAA/5ADwgMuAC0ABrMnEQEtKyUiBgclNjUnJR4BMzI+ATQuASIOAR0BBSYjIg4BFB4BMzI3BRUUHgEyPgE0LgEDEyVBF/7nAgIBGRdDJS9QLi5QXlAv/t41Pi9QLi5QL0EwASMuT2BPLi5Q6x0ZjAoVH4waHi5QXlAvLlAwC5IoLlBeUC4qkA0wUC4uUGBPLgAAAAIAAP+QA8IDLAAsAFoACLVROiEOAi0rASYnJjU0Njc+ATU0JicmIyIHBgcUFx4BFRQGBwYUFxYXFicWOwEyNj0BNCcmBSYnJjU0Nz4BNTQmJyYiBw4BFRQWFxYVFAcGBwYHBgcGHQEUFjMhMjY9ATQnJgMoJQ4LFA8YGiUiJC9BKicGCjc+KicDAwkVOxkKBekhLi8i/rUtEQ0oHR8rKStzKygsHh0pDRIuOyEuGBwtIQIVITA2KAGlDhINEw8eDBQ6IitIFRYoJjsKByN1STdfIwMJAwYKHQwELx4MLiMa7hMTDxYhJBlEKDNVGBoaGFUzKEQZIyIWDxURGBIZGyAmGSAtLh8bNiofAAABAAAAAALbAqUALQAGsxoDAS0rATU0JiMhIgYdARQWMzIWBwMOASsBIgYdARQWMyEyNj0BNCYjIiY3Ez4BOwEyNgLbFxD+8xAWFhAZHwZFBB0RLhAXFxABDRAWFhAZHwZFBB0RIRYeAmYZEBYWECcQFicX/q4TGBYQJxAWFhAnEBYnFwFSExgeAAAAAAUAAP+QA4gDLAAZACMAMwBDAFMAD0AMTkY+NiskIhwRBAUtKwEjNTQmKwEiBh0BIyIGHQEUFjMhMjY9ATQmJTQ2OwEyFh0BIwUhIgYVERQWMyEyNjURNCYBFAYrASImNRE0NjsBMhYVExQGKwEiJjURNDY7ATIWFQNr8C0gdB8u8AsSEgsC7gsSEv5ECwlNCAt0AWT9rAsSOCgBzig4Ef6QCgkmCQsLCSYJCsELCSYJCgoJJgkLApJNIC0tIE0SCzoLEhILOgsSOQkLCwk5wREL/jwpODgpAcQLEf5ZCAsLCAEOCAsLCP7yCAsLCAEOCAsLCAABAAD/7wPCAs0AIwAGsxIKAS0rASEiJj8BNjQvASYiBwEGFBcBFjI/ATY0LwEmNjMhMjY9ATQmA6f9gQ0JCbgJCSoIGAj+rwgIAVEIGAgoCQm4CQkNAn8LEhABmBgIuQkXCCsICP6tCBgI/q8ICCkIGAi5ChgQCzoMEwAAAwAA/5ADwgMsABQAIQAuAAq3JiIfGgoAAy0rASIHBgcGFBcWFxYyNzY3NjQnJicmATQ3Njc2MzIWFwEuAQEiJicBHgEVFAcGBwYB9H1raT0/Pz1pa/psaD4/Pz5obP4pLy9OUV04ZSv+HR4hAVo4ZSsB4x4hLy9OUQMsPz5obPpsaD4/Pz5obPpsaD4//jJdUU4vLyEe/h0rZf7eIR4B4ytlOF1RTi8vAAAAAAIAAAAAA8ICywANACQACLUfEAcBAi0rARYyNwE2JyYjBSIOARcFNCYHAQYiJwEmIgYVJh0BFBYzITI2NQHfCBgIAbMHBQYV/KQLEgQIA5YbDP6sI18k/q4HEw0BLR8DAiAtAQ8ICAGUDQ0OAQ0TCZwPDQr+xiAeATwGDQsE3NwgLS4fAAMAAP/xAxUCuAAYACAAKAAKtyMhGxkLAwMtKwE0LgEjISIGFREUFjMhMj4BNTQnJic2NzYDIzUzMhYUBgMjNTMyFhQGAxU3XTb+whAWFhABPjZdNw8PGhoPD8re3hsqKhve3hsqKgHlOGI5FhD9hRAWOWI4KSYkHR4kJv67mi4+LgEhmi88LwAD//8AAAPuAqUAFgAjADAACrcqJB0XEAQDLSsBLgEnJiIHDgEHBhQXHgEXFjI3PgE3NgUiLgE0PgEyHgEUDgEDIg4BFB4BMj4BNC4BA+Qtl19i1mJfly0EBC2XX2LWYl+XLQn+BzpgOTlgdGE5OWE6JT4kJD5KPiQkPgFvXIwmKCgmjFwIEwdcjCYoKCaMXBHTOWB0YTk5YXRgOQFaJD5KPiQkPko+JAACAAD/kAPDAy0AJwBWAAi1TDAfFwItKwEjIgYdARQGIyEiJjURNDY7ATI2PQE0JisBIgYVERQWMyEyNjURNCYBIgcGBwYHBhY7ATI2Nz4BNzY7ATIWDwEGFB8BFjI3ATY0JwEmIg8BDgEfARYGIwOlOgsSEQz9hgwREQxNCxISC5EfLS0fAwIgLRL+3l5XVDY4CAISDToLEAIGUD5BSR8NCQlpCQkoCRcIAQYICP78CBgIKAkCCWsJCQ0BEREM0wwREQwBlAsREgs6CxItIP3lIC0uHwEXDBEBNDQyVVdjDBMPCkd5IyQYCGwIGAgpCAgBBAgYCAEECAgoCRcJbAgYAAAAAAMAAAAAAyACigAUAC0APAAKtzYvIRUKAAMtKwEiBwYHBhQXFhcWMjc2NzY0JyYnJgcyHgEVFAcjIgYHDgEiJicuASsBJjU0PgETFj4BNzY3NiYHBgcOARYB9FFGRCgpKShERqJGRCgpKShERlE7ZjsCWQcLAgY+Uj4GAQsIWQI7ZiQSKBMNDQcICB8dHSATCwKKKShERqJGRCgpKShERqJGRCgpUDtmOwoUCQgnNjYnBwoUCjtmO/7aCg0jMCwoKgQeHSMmIycABQAAAAADIAKKACQAMgBAAEoAVAAPQAxRTkNBPDYsJRwFBS0rASM2JicmIyIGBwYHJicuASMiBw4BFyMiBh0BFBYzITI2PQE0JiEiJy4CNzYzMhYXFhU3BgcGIzU0Nz4BMhcWBhcjETMyNj0BNCYFFRQWOwERIyIGAuRXEwQXGyUTJg4FBQQGDiUUJBsXBBNYGSMMCAIwCAwj/tkREhUXAgoIDBAXBgaADBQTEQYGGRoICgKD0qwYIgz+BCMZqtIIDAH0HkUYGxEPBQgIBRAQGxhFHiMZKAgMDAgoGSMGBxkhCggaFhMRFQ0HBgYRExYaCAsg2/7yIhjACAwUvhkjAQ4MAAADAAAAAAMgAooAFAAhADUACrcvJRsVCgADLSsBIgcGBwYUFxYXFjI3Njc2NCcmJyYDIi4BND4BMh4BFA4BJzU0JisBIgYdARQfARYyPwE2NCcB9FFGRCgpKShERqJGRCgpKShERlFBbkFBboJuQUFuIwwIFAgMCWAGEAYOBgYCiikoREaiRkQoKSkoREaiRkQoKf3kQW6CbkFBboJuQfyACAwMCIwNCGAGBg4GEAYAAAUAAAAAAu4CigANACUASQBZAGkAD0AMZFxUTDssHRUIAgUtKwEnJiIGHQEUFjsBMjY0ByMiJj0BNCYrASIGFREUFjMhMjY1ETQmJT8BMjU3NjIfARYzFx4BDwEGFRcWBi8BJg8BBiY/ATQvASY2ARQGIyEiJj0BNDYzITIWFTcUBiMhIiY9ATQ2MyEyFhUC6oQEDAgYEGoGCBSMGSMMCMgZIyMZAXwZIwz+XjECARYCBQEWAgExAgICJAEIAQUCLAICLAIFAQgBJAEDATgMCP78CAwMCAEECAwoDAj+1AgMDAgBLAgMAgKEBAgGahAYCAxQIxmMCAwjGf4gGSMjGQEsCAxeBwEBLQICLQIHAQUBIwEDMQIDARcCAhcBAwIxAwEjAgT+swgMDAgUCAwMCGQIDAwIFAgMDAgAAAAIAAD/kAPCAywADwAfAC8APwBPAF8AbwB/ABVAEndwZ2BXUElBOTEpIRkRCwMILSsBNTQmKwEiBh0BFBY7ATI2FyYiDwEGFB8BFjI/ATY0JwEWMj8BNjQvASYiDwEGFBclJiIPAQYUHwEWMj8BNjQnASYiDwEGFB8BFjI/ATY0JyUjIgYdARQWOwEyNj0BNCYlIyIGHQEUFjsBMjY9ATQmASMiBh0BFBY7ATI2PQE0JgE0EgvUCxERC9QLEiQIGAiWCQkoCRcJlggIAQ8IGAiWCQkoCRcJlggI/oQJFwkoCQmWCBgIKQgIATkIGAgrCAiWCRcJKAkJ/sM6CxISCzoLEhIBidQLEhIL1AsSEv5hOgsSEgs6CxISAUE6CxISCzoLEhJLCAiWCRcJKAkJlggYCAEPCAiWCRcJKAkJlAgYCLwJCSgJFwmWCAgpCBgI/skICCkIGAiWCQkoCRcJSRIL1AsSEgvUCxL6Egs6CxISCzoLEgGUEgvUCxISC9QLEgADAAD/3QPCAt8ADAArADgACrcyLCMTBgADLSsBIg4BFB4BMj4BNC4BJSMiLwEuASsBIgYPAQ4BKwEiBhURFBYzITI2NRE0JgEiLgE0PgEyHgEUDgEB9CpHKSpGVEcpKUcBV2QoGiwKLBu8Gi0MLAojFGMfLS0fAwIgLS3+Xz5rPj5rfGs+PmsB0SlHUkcqKUdURil0IkQYHBwYRBASLSD+MiAtLh8BziAt/gw+a3xqPj5qfGs+AAAACAAA/5ADmwMsAA8AHwAvAD8ATwBfAG8AjwAVQBKHdGpiWlJKQjoyKiIaEgcACC0rASEiBhURFBYzITI2NRE0JgEUBisBIiY9ATQ2OwEyFhU1FAYrASImPQE0NjsBMhYVExQGKwEiJj0BNDY7ATIWFTUUBisBIiY9ATQ2OwEyFhUTFAYrASImPQE0NjsBMhYVNRQGKwEiJj0BNDY7ATIWFRMjNTQmIgYdASE1NCYiBh0BIyIGHQEUFjMhMjY9ATQmA3787AwRLh8CtCAtEf3jCglNCAsLCE0JCgoJTQgLCwhNCQrBCwhNCQsLCU0ICwsITQkLCwlNCAvACwhNCQoKCU0ICwsITQkKCglNCAtgYCIvIv7yITAiYCAtEQwDFAwRLQHREQv+KB8uLSAB2AsR/lkICwsITQkLCwl0CQsLCU0ICwsI/vIICwsITQkLCwl0CQsLCU0ICwsI/vIICwsITQkLCwl0CQsLCU0ICwsIAZMnGCIiGCcnGCIiGCctHzELERELMSAsAAADAAD/twPCAwUADwAfAC8ACrcnIBcQBwADLSsTIyIGFREUFjsBMjY1ETQmKQEiBhURFBYzITI2NRE0JichIgYdARQWMyEyNj0BNCbdmgsRLCBqDBERArz9vwwREQwCESAtEjv8/iAsEQsDYgsSLQILEQz+FiAtEQwCGgwREQz95gwRLSAB6gwR+i0gQwsSEgtDIC0ABAAA/8oDmwLyAA8AHwAvAD8ADUAKOjIqIhoSCgIELSsBNCYjISIGHQEUFjMhMjY1FTQmIyEiBh0BFBYzITI2NRE0JiMhIgYdARQWMyEyNjURNCYjISIGHQEUFjMhMjY1A5sRDPzsDBERDAMUDBERDPzsDBERDAMUDBERDPzsDBERDAMUDBERDPzsDBERDAMUDBEC1QsSEgs6CxERC60MEREMOQwREQz+bAsSEgs6CxISCwEhCxERCzoMEREMAAAABAAA/8oDmwLyAA8AHwAvAD8ADUAKOjIqIhoSCgIELSsBNCYjISIGHQEUFjMhMjY1BzQmIyEiBh0BFBYzITI2NQM0JiMhIgYdARQWMyEyNjUTNCYjISIGHQEUFjMhMjY1A5sRDPzsDBERDAMUDBFzEgv90gsSEgsCLgsSJxEM/iAMEREMAeAMEZoRDPzsDBERDAMUDBEC1QsSEgs6CxERC60MEREMOQwREQz+bAsSEgs6CxISCwEhCxERCzoMEREMAAAAAAMAAP+PA8IDLAAPAB8AMQAKtywiHRUKAgMtKzcXFjI3ATY0LwEmIgcBBhQBBhQfARYyPwE2NC8BJiIHAQYWPwE2PwE2NC8BJiIPAQYHt6sGDwYBqwUFqQYQBf5TBgIFBQWqBRAFMRcXWxc/F/1FAhUO0goHBAQGrQUQBAQGBNCrBgYBrAYQBaoFBf5TBg4CDwUQBaoFBTAWPRdbFxf8ng4WAzIDBwQEEAWtBgQEBgsABQAA/5ADwgMsAA8AEwAjADMAQwAPQAw7NCskGxQSEAcABS0rBSEiJjURNDYzITIWFREUBiUhESEBISImPQE0NjMhMhYdARQGASMiJj0BNDY7ATIWHQEUBiEjIiY9ATQ2OwEyFh0BFAYDm/yyEBYWEANOEBcX/MgDAvz+Anv+DAgLCwgB9AkKCv52cwgLCwhzCQsLAXjnCAsLCOcJCgpwFxADThAXFxD8shAXTQMC/vILCXMJCgoJcwkL/oALCOcICwsI5wgLCwjnCAsLCOcICwAAAAACAAD/kAOuAywADwA8AAi1MxwKAgItKxM0JisBIgYVERQWOwEyNjUBBgcGJyYnLgEnJicmBwYHDgEVERQWNzY3NhcWFxYXFhcWFxY3Njc+ATURNCatEQw5DBERDDkMEQLlNy4pJR4hE0wWJCQrMThCCAsRCEI3MCskJBMpJRUhICUrLzoHCBMDDwsSEgv8ngsSEgsDER0LCQUEDwouChEHCQUGFwIQCf5ACgsEFgQECQgRChkWCg4DBAwNIAQOBwG/CgsAAwAA/48DiAMtABcALwA/AAq3PjYiGgoCAy0rJQUGIiclJjQ/ATYyHwEWMj8BNjIfARYUJwUGIiclJjQ/ATYyHwEWMj8BNjIfARYULQEmNDclNjIXBRYUBwUGIgN5/pYOIw7+mAsLVQQLBNsgSx/cBAsEVQsL/pYOIw7+mAsLVQQLBNsgSiDcBAsEVQv+T/6XDAwBaQ8jDgFpDAz+lw4jZs4ICM4GFwYwAwN9EhJ9AwMwBhfhzgkJzgUYBTADA30REX0DAzAFGBTOBRcGzggIzgYXBc4HAAAABAAAAAADIAIwAA8AMABAAFAADUAKS0M7MyEQBwAELSsBISIGFREUFjMhMjY1ETQmASMiJjU2NzY3Njc2NTQnJjQ2MhYVFAcGFRQXFhcWFxYGNxQGKwEiJj0BNDY7ATIWFTUUBisBIiY9ATQ2OwEyFhUC5P4gGSMjGQHgGSMj/umsDhQBFA4eEAYEDhUiOiIVDgQGEEABAhTcDAhaCAwMCFoIDAwIlggMDAiWCAwCMCMZ/t4ZIyMZASIZI/6sGRAUEQwOBwgFCQ4MEz0oKB4gEgwOCQUIBhslDxpGCAwMCB4IDAwIUAgMDAgeCAwMCAAAAwAAAAADGwJ2ACUALgA3AAq3NTEsKBcMAy0rASEyNj8BNiYjIScuASsBIg4BFjsBEx4BMyEyPgEmIyEiJic1JjYHFBYyNjQmIgYXFBYyNjQmIgYBqAEnBwsBNgMMCv44CAMQCjAMEwISDRxeAxAKAVwMEwISDf7OChACBRIeHSodHSod8B0qHR0qHQFeCAe+Cg8cCgwQGRP+wgoMEBkTDAkBDhjmFR0dKh0dFRUdHSodHQAAAgAAAAADIgJMAAsAIAAItRoOBgECLSsBFjI3ATYmIwUiBhcFNCYPAQYiLwEmBhURFBYzITI2NSIB5wYPBgEbBQcO/dAMDAgCUxIH3BY/F90HEiMZAeAZIwEBLAUFAQYJEQERCW8KCAfMFRXMBwgK/vwZIyMZAAAAAgAA/5ADwgMsABQALAAItScXCgACLSsBIgcGBwYUFxYXFjI3Njc2NCcmJyYTAQYiLwEmND8BNjIfARYyPwE2Mh8BFhQB9H5raTw/Pzxpa/xsaD0/Pz1obIT+2gkZCaEJCSoJGQhVBhEG1wkZCCsKAyw/PWhs/GxoPT8/PWhs/GxoPT/+pf7WCAikCBoIKgkJVgYG3wkJKgkZAAAAAQAA/7UDnQMFAEcABrMXAAEtKwEjIgYdARQGJyYnLgEHBgcOAQcGFhceATMyNjc+AS8BLgEHDgEnJicuAjc2Nz4BMzIWFxYXFgYrASIGHQEUFjMhMjY1ES4BA345DBENCgkLSMFoSjxYYQICOzc6llRJhzcKAQkoCBYJNIdGJCU2RhYPCRYohEw6aigMCwQPDocLEhALAWAKDwIRAwURDIYOCAgMB0k5FA8pObJlTpU4PUAyLgkZCSgIAQcsHxEJFiFmez8kJUZMLCgLEAsMEgs8CxAPCgFeDBEAAAQAAP/KA5sC8gAPAB8ALwA/AA1ACjoyKiIaEgoCBC0rATQmIyEiBh0BFBYzITI2NQc0JiMhIgYdARQWMyEyNjURNCYjISIGHQEUFjMhMjY1EzQmIyEiBh0BFBYzITI2NQObEQz87AwREQwDFAwRmhEM/YYMEREMAnoMEREM/YYMEREMAnoMEZoRDPzsDBERDAMUDBEC1QsSEgs6CxERC60MEREMOQwREQz+bAsSEgs6CxISCwEhCxERCzoMEREMAAEAAAAAA2ICRQAMAAazBwABLSsTITIeAQcBBiInASY2oAKoCg4BB/6zCB8J/q8KDgJFDhQI/mgMDAGYDR0AAAACAAD/iAOrAy0AHgAtAAi1LSgUCAItKwEFBi4BNRE0JgcOAQcGFx4BFxYXFjc+ATc2NTQnLgEFJT4BJyYnJicmBhURFBYDa/52DRsSFw1glSQmCwpnUVJhXlhUgyQmBgIb/p0BexEJC0JgY3IUIBUBkNkHBhUOAdgOEgQahl1gaGCkMzUKCh0cd1FTXCMiDgxfyggnEFs8PhIEGxT+Tg0MAAAAAAQAAP+zA8IDBQAdACYALwA4AA1ACjQwKyciHg0ABC0rASIHBgcGFRQXFg8BBhY/ATYXFjM2NzY3NiYnJicmASImNDYyFhQGMyImNDYyFhQGMyImNDYyFhQGAfR+a2g9PjgKBjwEEQymDRRvgXxraDw/AT8+aGv+nB8uLj8tLccfLi4/LS3HHy4uPy0tAwU5OF9ic2ZmDxKjDBADPwYKPQE6OF9i6GNgNzr+DC4/LS1ALS4/LS0/Li4/LS0/LgAAAAMAAP+QA8IDLAAUACkAOwAKtzIqHxUKAAMtKwEiBwYHBhQXFhcWMjc2NzY0JyYnJgMiJyYnJjQ3Njc2MhcWFxYUBwYHBhMhIgYHBhceATMhMjY3NicuAQH0fWtpPT8/PWlr+mxoPj8/PmhsfV1RTi8vLy9OUbpRTi8vLy9OUWv+cAsQAgMDARELAZALEAIDAwIQAyw/Pmhs+mxoPj8/Pmhs+mxoPj/82C8vTlG6UU4vLy8vTlG6UU4vLwGUDwofIwsODwogIgoPAAAAAAEAAP/wAtsC0AAMAAazCwQBLSsBERQOAScBJjQ3ATYWAtsOFAj+aAwMAZgNHQKy/VgKDgEHAU0JHwgBUQoOAAADAAD/jgPCAzQANwBuAJIACreMdWo+MicDLSslIicmJyYGDwEOASYnLgE2PwE2NzYWFxYXFhceAT8BNi8BJicmJy4BBgcGDwEOARYXHgE2PwE2JgE+ASYnLgEGDwEGFhcWFxY2PwE+ARYXHgEGDwEGBwYnJicmJy4BDwEOAR8BFhcWFxYXFjY3NjcXNzY0LwEmIg8BJyYiDwEGFB8BBwYUHwEWMj8BFxYyPwE2NCcBzhESDhcFCwMHGEBCGRwVERp/GCIUKRMZEggJBRMHMAoIDAcEDRwmUFElGRt7LCIaKix6ey4qCAoBMC0fIy8td3UsJgkIDCgfBgsDBxhAQhkcFREafxUlKiYYEwgHBRMHLgYBBQsGBhIWIi0nUiUeFtVZBgY2Bg8GVlMGDwY2BgZTUQYGNgYPBlFWBg8GNgYGkgYCCAECAwgYEwsWGUVGGX8YCQUDCAkUCg0JAgcwDA0OBwYNFBcPDRQLG3ssdnYtLyMeLioIFgEQLnt6LCoaIiwmCRYCAwoBAgMHGBMLFhlFRhl+FgsMEggUCA4IAgcuBQ4GDQgGEQ8WCQgNFBAW5lgGDwY2BgZbUwYGNgUQBlJRBg8GNgYGUVcFBTYGDwYAAAUAAP+QA8IDLAAPAB8ALwBHAF8AD0AMV08/NycgFxAHAAUtKwEhIgYdARQWMyEyNj0BNCYHISIGHQEUFjMhMjY9ATQmAyEiBh0BFBYzITI2PQE0JgchIiY9ATQmKwEiBh0BFBYzITI2PQE0JgMhIiY9ATQmKwEiBh0BFBYzITI2PQE0JgOl/J4LERELA2ILEhIL/V8MEREMAqELEhIL/V8MEREMAqELEhIL/RIMERILOgsREQsDYgsSEgv9EgwREgs6CxERCwNiCxISAywSC2AMEREMYAsS5xILOgsSEgs6CxL+fxEMOQwREQw5DBHAEQyGDBERDPoLEhILOgsSAYERC4cLEhIL+gsSEgs6CxIAAgAAAAAC7gKKABcAJQAItSAaDwcCLSsBIyImPQE0JisBIgYVERQWMyEyNjURNCY3JyYiBh0BFBY7ATI2NALajBkjDAjIGSMjGQF8GSMMCIQEDAgYEGoGCAGuIxmMCAwjGf4gGSMjGQEsCAxUhAQIBmoQGAgMAAAABQAAAAADFgKKABcAJwA3AEcAVwAPQAxSSkI6MiofGA8ABS0rASEiBh0BFBYzITIWFREUFjsBMjY1ETQmByEiBhURFBYzITI2NRE0JgU0NjsBMhYdARQGKwEiJjUXFAYrASImPQE0NjsBMhYVNxQGKwEiJj0BNDY7ATIWFQLa/sAZIwYEASIZIwYEChkjI6X+wBkjIxkBQBkjI/67DAjICAwMCMgIDPAMCMgIDAwIyAgMKAwI8AgMDAjwCAwCiiMZCgQGIxn+ygQGIxkBVBkjjCMZ/qwZIyMZAVQZI2QIDAwIFAgMDAjwCAwMCBQIDAwIZAgMDAgUCAwMCAAACQAA/5ADwgMsAA8AHwAvAD8ATwBfAG8AhwCfABdAFJePf3dnYFdQR0A3MCcgFxAHAAktKwEhIgYdARQWMyEyNj0BNCYFIyIGHQEUFjsBMjY9ATQmISMiBh0BFBY7ATI2PQE0JiEjIgYdARQWOwEyNj0BNCYBIyIGHQEUFjsBMjY9ATQmISMiBh0BFBY7ATI2PQE0JiEjIgYdARQWOwEyNj0BNCYHISImPQE0JisBIgYdARQWMyEyNj0BNCYDISImPQE0JisBIgYdARQWMyEyNj0BNCYDpfyeCxERCwNiCxIS/dqGDBERDIYMEREBAocLEhILhwsREQEChwsSEguHCxIS/dqGDBERDIYMEREBAocLEhILhwsREQEChwsSEguHCxISC/0SDBESCzoLERELA2ILEhIL/RIMERILOgsREQsDYgsSEgMsEgtgDBERDGALEucSCzoLEhILOgsSEgs6CxISCzoLEhILOgsSEgs6CxL+fxEMOQwREQw5DBERDDkMEREMOQwREQw5DBERDDkMEcARDIYMEREM+gsSEgs6CxIBgRELhwsSEgv6CxISCzoLEgAAAAQAAP+QA8kDLAAPACcAPwBPAA1ACkpCNSkjFgoCBC0rJTQmIyEiBh0BFBYzITI2NQMjIgYfARYyPwE2JisBNDY3NjM1IgcOAQUmIg8BBhY7ARQOASMVMjc2NzY1MzI2JxM0JiMhIgYdARQWMyEyNjUBgRIL/t8LERELASELEuVeDwsImgYPBpoICw5bNysuL1VHRVECiAYPBpoICw5dMVg5VUhGKCpeDwsIAhIL/t8LEhILASELEoELEhIL1AsSEgsB/hMIoAQEoAkSL1kcHHQpKY00BASgCBM5VzB0KSlFSFUTCAHjCxISC9QLEhILAAIAAP+3A5sDBQAPADoACLUwFwcAAi0rEyMiBhURFBY7ATI2NRE0JgUjIiY9ATQmKwEiBh0BFAYHBiMiBhURFBYzFhcWFxYXFjMyNzY3Nj0BNCbKYAwREQwwIC0SAnlzHy4tIDALEiwkJi0MEQ8MKykWLysbKi5XMUMiKC0BvhEM/kYLEi4fAYoMERMuH8AgLREMczNdHB4RDP6ADBECCgUODQYICg4lK0/wIC0AAAAAAgAA/5ADwgMsAB8AQwAItTIhFwACLSslIyIGHQEUBiMhIiY9ATQmKwEiBhURFBYzITI2NRE0JgUWMjcBNjQvASYiDwEGJjURLgErASIGFREUBi8BJiIPAQYUFwOlOgsSEQz9hgwREgs6CxEtHwMCIC0S/jEIGAgBBAgIKQgXCWwIGAEUCjoLEhgIbAkXCCkICP4SC8AMEREMwAsSEgv+/CAtLh8BBAsSfwkJAQQIFwkoCQlrCQkNAZoLEhIL/mgNCQlrCQkqCRcIAAAAAQAAAAADwwKkABcABrMWDgEtKyUBJjQ/ATYyHwEWMjcBNjIfARYUBwEGIgFv/sMICCoJGQnuBhEGAdMJGQkqCAj94AkZIQE/CRkIKwgI8QUFAdcJCSoIGgj92goAAAAAAQAA/7UC7wMFABcABrMWBgEtKwUBJjQ3ATYyHwEWFAcBBhQXARYUDwEGIgKS/nAJCQGQCBoIKgkJ/sMICAE6CAgrBxdDAYoJGQgBiwgIKwgaCP7KCBkJ/soIGggqBwAABAAA/5ADwgMsABUALABCAFgADUAKVEo+NCIWCwAELSsBISIGHwEHBhQfARYyPwEXFjY1ETQmASEyNiYvATc2NC8BJiIPAScmBhURFBYlETQmDwEnJiIPAQYUHwEHBhYzITI2AREUFj8BFxYyPwE2NC8BNzYmIyEiBgOr/tUOBwxerQcHRwgUCa9eCxYO/I8BKQkKAgherQgIRwcVCa1gDRcSA4kWC16tBxUJRwcHr14MBw4BKAkN/GUZC2CvCBYHRwgIrV4LBg/+2AoUAywWC16tBxUJRwcHr14MBw4BKAkN/GQMEgdgrwgWB0cICK1eCwYP/tgKFRcBKw4HDF6tCAhHBxUJr14LFg4Dcf7YDwYLXq0HB0cIFAmtYA0YEwAAAgAA/4YDywMxADsAcQAItWg/NSICLSslLwEmJyYGDwEOASYnLgE2PwE2NzYXFhcWFx4BPwE2JyYnJhcmJyYnJgYHBg8BDgEXFhcWFxY2PwE2NCYBJicmBg8BBhYXFhcWPwE+ARYXHgEGDwEGBwYnJicmJy4BDwEOARcWFxYXHgE2NzY/ATY3NiYCCygPEQkFDgQJHElLHCAYEx2SGycvLSASCgkGFgc2CwkFCGFTHREmNS1eKCMYjTInDw8wMkdEjDQwBgwBWjRFQ4YxLAoKDSkoDgkKG0pKHCAZEx6SGicwLRwWCgkGFgc1BgEFCBMSHClcXSkjGZI1ERIoMAYEBAMCAwQKHBYOGRtOUB6SGQ4LEQ8SCg8KAgg2DBEHCWxdGwkZCggNFhQYjTKHQkUzNxQUIzQxBBANArQwDw8oMioKGwIDDAMJCRwWDRkbT1AekhoMDBIMFAsOCwIJNgUQCA0RFBEaEQ4VFBmSNEdFiwABAAD/2wN1At4ALwAGsyYMAS0rASYnJicmPwE2NC8BJiIHAQYUFwEWMj8BNjQvASY2NxYXFhcWFxQWOwEyNicuAScmAXECAwUCAgVrCQkoCRcI/vwJCQEECBcJKAkJaQkICmpaWDY4BhILOg0OAgeIcHUB9gMDBwYJBWsJFwkqCQn+/AgXCf78CAgpCBgIbAgWAwQ2NVhbawsQEg2K5UNFAAAAAA0AAP+QA5sDLAAPAB8ALwA/AE8AXwBvAH8AjwCfAK8AvwDPAB9AHMfAt7CnoJeQh4B3cGdgV1BHQDcwJyAXEAcADS0rASEiBh0BFBYzITI2PQE0JgUjIgYdARQWOwEyNj0BNCYhIyIGHQEUFjsBMjY9ATQmISMiBh0BFBY7ATI2PQE0JgUjIgYdARQWOwEyNj0BNCYhIyIGHQEUFjsBMjY9ATQmISMiBh0BFBY7ATI2PQE0JgUjIgYdARQWOwEyNj0BNCYhIyIGHQEUFjsBMjY9ATQmISMiBh0BFBY7ATI2PQE0JgUjIgYdARQWOwEyNj0BNCYhIyIGHQEUFjsBMjY9ATQmISMiBh0BFBY7ATI2PQE0JgN+/OwMEREMAxQMERH9ja0MEREMrQsSEgEprQwREQytCxERASitCxISC60MERH9ja0MEREMrQsSEgEprQwREQytCxERASitCxISC60MERH9ja0MEREMrQsSEgEprQwREQytCxERASitCxISC60MERH9ja0MEREMrQsSEgEprQwREQytCxERASitCxISC60MEREDLBILYAwREQxgCxLnEgs6CxISCzoLEhILOgsSEgs6CxISCzoLEhILOgsSwBILOgsSEgs6CxISCzoLEhILOgsSEgs6CxISCzoLEsERDDkMEREMOQwREQw5DBERDDkMEREMOQwREQw5DBHAEgs6CxISCzoLEhILOgsSEgs6CxISCzoLEhILOgsSAAAAAQAAAAADNAJPADAABrMVAAEtKyUiJyYnAwcOASsBIiY9ATQ2OwE3PgEeARcTNz4BHgEfATMyFh0BFAYrASImLwEHDgEB6gcHDAROQQMPCVoIDAwIRlwEEBQPAk9oBBASDgQ0WggMDAhuCQ8EIXAEDoIEBhABOJUJCgwIFAgM1AkKAgwK/sTnCQoCCwh4DAgUCAwKCE33CAoAAAAACAAAAAADDAKKAA8AHwAvAD8ATwBfAG8AjwAVQBKHdGpiWlJKQjoyKiIaEgcACC0rASEiBhURFBYzITI2NRE0JgEUBisBIiY9ATQ2OwEyFhU1FAYrASImPQE0NjsBMhYVFxQGKwEiJj0BNDY7ATIWFTUUBisBIiY9ATQ2OwEyFhUXFAYrASImPQE0NjsBMhYVNRQGKwEiJj0BNDY7ATIWFRMjNTQmIgYdASM1NCYiBh0BIyIGHQEUFjMhMjY9ATQmAvj9+AgMIxkBuBkjDP6QDAgoCAwMCCgIDAwIKAgMDAgoCAyMDAgoCAwMCCgIDAwIKAgMDAgoCAyMDAgoCAwMCCgIDAwIKAgMDAgoCAwoMhchGLQXIRgyGSMMCAIICAwjAa4MCP7UGSMjGQEsCAz+6AgMDAgoCAwMCGQIDAwIKAgMDAi0CAwMCCgIDAwIZAgMDAgoCAwMCLQIDAwIKAgMDAhkCAwMCCgIDAwIAQQUERcXERQUERcXERQjGRQIDAwIFBkjAAYAAP+3A5sDBQAPAB8ALwA/AE8AXwARQA5XUEdANzAnIBcQBwAGLSsBIyIGFREUFjsBMjY1ETQmISMiBhURFBY7ATI2NRE0JiEjIgYVERQWOwEyNjURNCYBIyIGFREUFjsBMjY1ETQmISMiBhURFBY7ATI2NRE0JiEjIgYVERQWOwEyNjURNCYBF60MEREMrQsSEgEprQwREQytCxERASitCxISC60MERH9ja0MEREMrQsSEgEprQwREQytCxERASitCxISC60MEREDBREM/rkLERELAUcMEREM/rkLERELAUcMEREM/rkLERELAUcMEf4zEgv+uQwREQwBRwsSEgv+uQwREQwBRwsSEgv+uQwREQwBRwsSAAAGAAAAAAPCAqUADwAfAC8APwBPAF8AEUAOWlJKQjoyKiIaEgoCBi0rExQGKwEiJj0BNDY7ATIWFSE0JiMhIgYdARQWMyEyNjUFNCYrASIGHQEUFjsBMjY1JTQmIyEiBh0BFBYzITI2NQU0JisBIgYdARQWOwEyNjUlNCYjISIGHQEUFjMhMjY1mhILOgsREQs6CxIDKBIL/V8MEREMAqELEvzYEgs6CxERCzoLEgLbEgv9rAwREQwCVAsS/SUSCzoLERELOgsSAygSC/1fDBERDAKhCxICTgsREQs6DBERDAwREQw6CxERC9MLEhILOgsSEgs6CxISCzoLEhIL0wsSEgs6CxISCzoLEhILOgsSEgsAAAAGAAAAAAPCAqUADwAfAC8APwBPAF8AEUAOWlJKQjoyKiIaEgoCBi0rEzQmKwEiBh0BFBY7ATI2NSU0JiMhIgYdARQWMyEyNjUFNCYrASIGHQEUFjsBMjY1JTQmIyEiBh0BFBYzITI2NQU0JisBIgYdARQWOwEyNjUlNCYjISIGHQEUFjMhMjY1mhILOgsREQs6CxIDKBIL/V8MEREMAqELEvzYEgs6CxERCzoLEgLbEgv9rAwREQwCVAsS/SUSCzoLERELOgsSAygSC/1fDBERDAKhCxICiAwREQw6CxERCzoMEREMOgsREQvTCxISCzoLEhILOgsSEgs6CxISC9MLEhILOgsSEgs6CxISCzoLEhILAAABAAD/oAPCAxsAKwAGsyoRAS0rARMeATMhMhYGDwEOARcTFg4BLwEmIg8BBi4BNxM2Ji8BLgE2MyEyNxM+ARYCD1gDDwkBIQ4QAgvqCAUDXAQNGAvpBxMI6wsZDQVYAwUH6wsCEQ0BIRYFWgQXFwMD/vMICRUbCK0GEgn+6w0WBgiqBQWqCAYWDQEVCRIGrQgbFREBDw0JCwAAAAABAAD/tgLvAwUAFwAGsxYGAS0rCQEWFAcBBiIvASY0NwE2NCcBJjQ/ATYyAVgBjgkJ/nIIGQkqCQkBOQkJ/skJCSoIGAL9/nYIGgj+dgkJKggaCAE2CBoIATYIGggqCAABAAAAAAObAlkAFwAGswoCAS0rCQEGIicBJjQ/ATYyFwEWMjcBNjIfARYUA5P+dggaCP52CQkqCRkIATYIGggBNggaCCoIAfz+cgkJAY4IGggqCQn+xwkJATcJCSoIGAAEAAD/tgPVArgAJAA0AEQAVAANQApPRz83LyceCgQtKyUmIg8BBiY9ATQmKwEiBh0BFAYiLwEmIg8BBhQfARYyPwE2NCcBNCYjISIGHQEUFjMhMjY1FTQmIyEiBh0BFBYzITI2NRU0JiMhIgYdARQWMyEyNjUB1QgYCEUJGBEMOgsRDBAFRQkXCSoJCd0JFwnfCAgB1RIL/TgLERELAsgLEhIL/fkMEREMAgcLEhIL/rkLEhILAUcLEu8ICEYICQ3+CxERC/4JCgVGCAgrCBgI3QkJ3wgYCAHVDBERDDkMEREMrQsREQs6CxISC60LEhILOgsSEgsAAAEAAP+RA8IDKwBJAAazNREBLSsBJyYGHQEjIiY9ATMyPgEvASYiDwEGFjsBFRQGKwE1NCYPAQYUHwEWNj0BMzIWHQEjIgYfARYyPwE2JisBNTQ2OwEVFB4BPwE2NAO8oAgTwAkKcQkNAQWuBRAFrggMDm0KCcATCKAEBKAIE8AJCnEODAmtBRAGrQgLD20KCcAKDQSgBgFsrQgLD28KCcAKDQSgBQWgCBPACQpxDgwIrgUQBa4IDA5tCgnAEwigBASgCBPACQpxCQ0BBq0HEAAFAAD/twPoAwUADwAfAC8APwBVAA9ADFBBOjIqIhoSCgIFLSsBNCYjISIGHQEUFjMhMjY1AzQmKwEiBh0BFBY7ATI2NRM0JiMhIgYdARQWMyEyNjUBNCYrASIGFREUFjsBMjY1ASYGHQEjIgYdARQWOwEVFBY/ATY0JwPoEQz+uQsSEgsBRwwRTREM+gsSEgv6DBFNEQz+uQsSEgsBRwwR/jMSCzoLEhILOgsS/poJEn0LEhILfRMInwUFAnULEhILOgsSEgv+bAwREQw5DBERDAEgDBERDDoLERELAZQMEREM/OwMEREMAlgICw5wEQw6CxFyDgwJrQYPBgACAAD/twN1ArgADwA0AAi1NBgHAAItKyUhIgYdARQWMyEyNj0BNCYlJicuATURNDY7ATIWFREUHgEXFj4BNRE0NjsBMhYVERQHBgcGA1j9OAsSEgsCyAsSEv6ERzw5RBYQJxAWJkIoLUssFhAnEBYnJkBCKhELOgwREQw6CxFNBCcmfUcBBhAWFhD++ClHLQIDKEksAQ0QFhYQ/vNMQD4jJAAAAAUAAAAAAzQCYgAZADEAOgBDAEwAD0AMSEQ/OzYyKhoXBwUtKwEmNzY1NC4BIyIGBx4CFRQHNjc2HwEWNicBIg4BFRQXFg8BBhY/ATYXFjMyPgE0LgEHIiY0NjIWFAYzIiY0NjIWFAYzIiY0NjIWFAYDFwIEGztlPCZHHT5jORUeGwcFQAgNAv5lPGU7HAMBFQMNCUAIBDU/PGU7O2W0EBgYIRcXZxAYGCEXF2cQGBghFxcBHQgEMTY5YDkZFg1Nbj83LwgQBAMXAw0JASM5YDk3MAcFQwkNAxcCAx85YHJgOfoYIRcXIRgYIRcXIRgYIRcXIRgAAAAABgAAAAADAgKUABIAKgA6AEoAWgBoABFADmNdVU1FPTUtIhoHAQYtKyURIgYVERQWMyEyNjUjIicmJyYBIyImPQE0JisBIgYVERQWMyEyNj0BNCYlNDY7ATIWHQEUBisBIiY1FxQGKwEiJj0BNDY7ATIWFTcUBisBIiY9ATQ2OwEyFhU3JyYiBh0BFBY7ATI2NAEiGSMjGQEsGSPwKxEeDhABzGQZIwwIoBkjIxkBLBkjDP64DAg8CAwMCDwIDNwMCLQIDAwItAgMKAwI3AgMDAjcCAxMXAQMCBgQQgYI3AFAIxn+hBkjIxkECBgcATwjGWQIDCMZ/oQZIyMZ8AgMKAgMDAgUCAwMCPAIDAwIFAgMDAhkCAwMCBQIDAwIpFwECAZCEBgIDAABAAD/tQOfAwUAQQAGsxgAAS0rEzMyFh0BFBY3Njc+ARcWFx4BFxYGBw4BBy4BPQE0Njc+ATc2NzYuAScmJyYGBwYHBhY7ATIWHQEUBiMhIiY1ETQ2ajoLEQ0KCQtIwWhJPldhAgI6NzSGSg8UDwxFdSUWCQ8WRzcpIE2SNgwLBA8OhwsQDgv+ngoPEQMFEQyGDggIDAdJORQPKTmyZU6VODdABgISDTkMDwIGST4lJD97ZiEXCBMoNgsQCwwSCzwLEA8KAV4MEQAAAAAGAAD/twPCAwUADwAfAC8APwBUAHgAEUAOZlVMRDcwJyAXEAsDBi0rARUUBiMhIiY9ATQ2MyEyFgEhMjY9ATQmIyEiBh0BFBYFISIGHQEUFjMhMjY9ATQmByEiBh0BFBYzITI2PQE0JgEzFRQWOwEyNjURNCYrASIGHQEUFhMjIgYdARQWOwEVIyIGHQEUFjsBMjY9ATQmKwE1MzI2PQE0JgPCEgv9+QwREQwCBwsS/dwBWgsSEgv+pgwREQIT/fkMEREMAgcLEhK4/qYMEREMAVoLEhL9QDASCxQLERYQVwsREa+kCxERC31zEBYWEKMMEREMfXQQFhYC1ToLERELOgsSEv7eEgs6CxISCzoLEq0RDDkMEREMOQwRwBILOgsSEgs6CxICZ/AMEREMARcQFhEMEwsS/oASCxMMEU0XEJoQFhEMEwsSTRYQmhAXAAAEAAD/kAN1AzAAIAAiADIARgANQApANS0lIiEYAAQtKxMzMj0BND4BFx4CFTUUOwEyPQE0JyYnJgcGBw4BBx4BJxUFNCYjISIGFREUFjMhMjY1JRYGKwEiJj8BLgE+Ah4BFRQGB9RNEzhfNzJRLxRNEywsSUtXUERBTgICCw0CtS0g/ZgfLi4fAmggLf7YAgwKjAoLAiIWFgooOzUgFRMB5RECNlszBAM4WjMGERECVklHKCkDBCwqi1EICREIoyAtLSD+kh8uLh9ACRAOC3MPMTgoCxYtHRcoDAAAAQAA/7cDwwMFABcABrMLAAEtKwEhIg4BFwEWFREUFjsBMjY1ETQ3ATYuAQOh/KoOEgEIAXUREww6CxAVAXkIARIDBRIaCv5MFB7+6wwREQwBFRsXAbQKGhIAAAABAAAAAAOcAlcAFwAGswoCAS0rNwE2MhcBFhQPAQYiJwEmIgcBBiIvASY0VQGKCBoIAYoJCSoIGgj+yggaCP7KCBkJKgfAAY4JCf5yCBkJKgkJATsJCf7HCQkqCRcAAAACAAD/kAPCAywAFABEAAi1MxsKAAItKwEiBwYHBhQXFhcWMjc2NzY0JyYnJgMXFhQPAQYiLwEmIg8BBiIvASY0PwE2NC8BJjQ/ATYyHwEWMj8BNjIfARYUDwEGFAH0fmtpPD8/PGlr/GxoPT8/PWhsIJYGBjYFEAWWBhAFlgYQBTYGBpYGBpgGBjYFEAaYBRAGlgUQBTYGBpYEAyw/PWhs/GxoPT8/PWhs/GxoPT/+I5YGEAU2BgaWBgaWBgY2BRAGlgUQBpgFEAU2BgaYBQWWBgY1BhAFlgYQAAAAAQAA/+8DwQLNACMABrMSCgEtKxMhMhYPAQYUHwEWMjcBNjQnASYiDwEGFB8BFgYjISIGHQEUFkECfw0JCbgJCSoJFwgBUQkJ/q8IFwkoCQm4CQkN/YELEQ8BJBgIuQgYCCsICAFTCBgIAVEICCkIFwm5ChgQCzoMEwAAAAIAAP+QA8IDLAAjAEoACLVCOhIAAi0rASEiBh0BFBY7ATIWBwEGFB8BFjI3ATYWHQEUFjsBMjY1ETQmAwcGHQEUBiMhIiY1ETQ2OwEyNj8BNiYjISIGFREUFjMhMjY1ETQmA6n+kAwSEgyYDgoK/rkJCSgJFwkBRgkWFAs4CxIO+kESEQv+bAwREQzdDBUHQggJDf6DHy0tHwIbIC0YAywOCzoMFRYJ/roJFwkoCQkBRwgJDZgLFRQMAW4NDv48RBAY2wwREQwBlAsRCQlBCRgtIP3lIC0uHwF9DQkAAAAABQAA/7cD6AMFABUAJQA1AEUAVQAPQAxQSEA4MCggGAsEBS0rASM1NCYPAQYUHwEWNj0BMzI2PQE0JiU0JiMhIgYdARQWMyEyNjUDNCYrASIGHQEUFjsBMjY1EzQmIyEiBh0BFBYzITI2NQE0JisBIgYVERQWOwEyNjUBO3sTCJ8EBJ8JEnsMExMCoREM/rkLEhILAUcMEU0RDPoLEhIL+gwRTREM/rkLEhILAUcMEf4zEgs6CxISCzoLEgGrcQ8LCK0GEAWtCQwObhELOgwRygsSEgs6CxISC/5sDBERDDkMEREMASAMEREMOgsREQsBlAwREQz87AwREQwAAwAA/5ADdQMwAAEALABAAAq3Oi8kFwEAAy0rExUFITU0PgE3Nh4BFx4BOwEyNicuAScmBwYHDgEHFSIGFREUFjMhMjY1ETQmAxYGKwEiJj8BLgE+Ah4BFRQGB8ACaP4ML1IyLlE7DAIKB08IDAEPXEJETFBEQU4CHy4uHwJoIC0t+wIMCowLCwMiFxUMKDs1IBUTAfYIVlozWDgDAyJBKgYKDwhJcx8fAwQsKoxQXi0g/pIfLi4fAW4gLf6FCRAPCnMQMTcoCxYtHRcoDAAAAAIAAAAAAzQCgAAPAEgACLU+IwcAAi0rJSEiBh0BFBYzITI2PQE0JhMiBhUUFhcOAScuASc0Nz4BNTQmIgYVFBYXFhUOAQcGJic+ATU0JiIGFBYzFx4BMyEyNj8BMjY0JgLH/loHDCMZAVQZIwspGSMLCg03Iig5AgIRFSMyIxURAgI5KCI4DAoLIzIjIxkcAQsHAaoHCgIcGSMjoAsIARkjIxkBCAsBmiMZDRkIHiMBAjkoEQgHHhMZIyMZEh8HCBEoOQICJB4IGQ0ZIyMyI9YHCQkH1iMyIwAAAAABAAAAAAMZAnoAHAAGsxIAAS0rASIHBgcGFRQXFg8BBhY/ATYXFjMyNzY3Ni4BJyYB7FJGQygpJgUDHAQSDFgJCEhWUkZDKCkBUURGAnkmJUBBTEhBCAhZDBEEHwMFKiYlQEGYgSUmAAEAAAAAA2YCRQAMAAazBwABLSslISIuATcBNjIXARYGA0j9WAoOAQcBTQkfCAFRCg53DhQJAZcMDP5pDh0AAAACAAD/jwPCAzMAHQAqAAi1JyEYCQItKwUBNjc2Jy4DBw4BBwYeAhcWNzY3ARYyPwE+AQE0PgEyHgEUDgEiLgEDuv7+KBETCgtbjaVOS3EcHBBWiVFIRUI4AQAJFwkoCQH82ENyhnJDQ3KGckMVAQA4QkVIUolVEBwcckpOpoxcCwoSESj/AAgIKAkZAd5DckNDcoZyQ0JyAAIAAP9/A9EDOwAUAEQACLU3Hw0DAi0rASYnJgcOAQcGFx4BFxY3PgE3NicmAxQGKwEiBh0BFAYrASImPQE0JisBIiY9ATQ2OwEyNj0BNDY7ATIWHQEUFjsBMhYVAztZeXV1ebEfHx8fsXl1dXixIB8fH2sLCNQHDAwHTQkLCgnTCQsNB9MJCg0HTQcMCgnUBwwCpVgfHx8fsXl1dXmyIB4eILJ5dXV5/uwJCwsI0wcNCwnTCQoLCU0HDAoJ1AcMCwjUCQoMBwAAAQAA/5IDwgMsAHMABrNSGAEtKwEjNzY0LwEmIg8BIzU3NjQvASYiDwE1NCYrASIGHQEnJiIPAQYUHwEVIycmIg8BBhQfASMiBh0BFBY7AQcGFB8BFjI/ATMVBwYUHwEWMj8BFRQWOwEyNj0BFxYyPwE2NC8BNTMXFjI/ATY0LwEzMjY9ATQmA6WLVQgIIQcSBpRtlAcHIQcSBlQSCzoLElQHEgYhBweUbZQHEgYhBwdViwsREQuLVQcHHwgRBpRvlAcHHwgTBlQQCzoLFFQIEQYfCAiSbZQIEgUfCAhTiwsSEgGYVAgRBiEHB5RtlAgSBSEICFWLCxISC4tVCAghBxIGlG2UBwchBxIGVBILOgsSVAcSBh8HB5RrlAcTBR8HB1WLDBUWC4tVBwcfBxIGkG2UBwcfCBEGVhILOgsSAAACAAD/2gPFAt0AHQA7AAi1Kx4bCQItKyUmNzY1NCcmJyYjIgcGBx4BFxYVFAc2NzYfARY2JwEiBwYHBhUUFxYPAQYWPwE2FxYzMjc2NzY0JyYnJgOXAwUpLStKTVg+OjctYqIuMBsbIw4JdQkLAv2rWE1JKy0oBwUqAwsJdQ4JTltZTEorLS0rSkz+DQpITFNIRikqFhUmC2tSVWBJPwkSBQMvAgsJAbwqKUZIU05GDQp1CQwDLwMFLSopRkilSEUpKgAAAwAAAAADEQJ2AAUAGQBPAAq3RhoPBgIAAy0rAQYVIzQ3JSMiBh0BFB8BFjI/ATY0LwE1NCYnIgcOAQ8BIyIGHwEWMj8BNiYrATU+AjMyFhcWBw4CBwYmJyYPAQYWFx4BNz4CNzYnLgEBGQE8AQEmHgYJBFQFDAQVBQVGCRVJPz1NBQEtCggGSwUOBEsGCAosBT1hOEBqGx0HBTlXLzVhIwwKGAMCBSlrPEd7TAUGJSOFAXIHDQ0HeAkGgwUGVAQEFQUMBEdxBgmMIyJ3SAoRB1sFBVsIEAo3XDVDODlBL1Y5BAUlJg4NHQQGBSsuAQFGdkdQRkRSAAAFAAD/kAPCAy0ADQAdADUATQBlAA9ADF5SRjouIhwUBwEFLSsBJiIHAQYUFjI3ATY0Jz8BNjQvASYiDwEGFB8BFjIlHgEXFjI3PgE3NjQnLgEnJiIHDgEHBhQBLgEnJiIHDgEHBhQXHgEXFjI3PgE3NjQDHgEXFjI3PgE3NjQnLgEnJiIHDgEHBhQCHgUQBv41ESIvEQHLBgZRPggIKQgYCD4FBTYGD/4pN1IRAxEDEVE4CAg3UhEDEQMRUTgHAvkxRxECEAMQRzEHBzFHEAMQAhFHMQjhJjQMAQ0BCzUmBgYlNgsBDQEMNSUGAb4GBv40ES4iEQHLBhAFNj4IGAgpCAg+Bg8GNgW6EVE4CAg3UhEDEQMRUTgICDdSEQMR/pIQRzEICDFHEAMQAxBHMQcHMUcQAxIBqgw0JgYGJTUMAQ0BCzYlBgYmNQsBDQAAAAAFAAD/pgPcAwAAIwAzAEAATQCYAA9ADJVwRUE4NC8nHAUFLSsBIxU2LgEiDgEXNSEVNi4BIg4BFzUjFAYjETIWFSE0NjMRIiYDIgYVITQmIxEyNjUhFBYzJTQmIzUUFjI2NRUiBgU0JiM1FBYyNjUVIgYBNSImNSYnNiYnNxY2NxYXMjY0JicmJyY1NDY3NDY3NTI2NTMUFjMVMhYVFhcGFhcHJgYHIiciBwYUFhceARQGBxQGBxUiBhUjNCYDzl4CCxgbGAsC/cICCxgbGAsCXgcGBQgDtAgFBgdDBQj88wgFBQgDDQgF/RwUDhQbFA4TApoTDhQbFA4U/o4FByIlAQQECgYLASglGBwbHzAYGywnBgQFCBsIBQUHGx0CBQUJBQsBIh8ZDAodJDEqLSoGBAUIGwgCuQ8OGQ8PGQ4PDw4ZDw8ZDg8GCf0JCAUFCAL3Cf1QCAUFCAIJCAUFCHsOFVUOExMOVRUODhVVDhMTDlUV/ZwbCAUPAwUIAiYDBgYBERIfFgsQFRklIzIKBQcBHAgFBQgXCAUKAgUJAiQCBQYNCQgaFQ0RMEk2CQUHASAIBQUIAAAAAAL//f+xA18DCwAkADEACLUuKBsJAi0rJTQvATc2NC8BJiIPAScmIg8BBhQfAQcGFB8BFjI/ARcWMj8BNjcUDgEiLgI+ATIeAQKBCmVlCgozCh4KZWULHgoyCwtlZQsLMgoeC2VlCh4KMwrYcsboyG4Gerz0un7gDgtlZQsdCzILC2VlCwsyCx0LZWULHQsyCwtlZQsLMguNdcR0dMTqxHR0xAAAAQAAAAEAAHLcXBlfDzz1AAsD6AAAAADS676fAAAAANLrvp///f9qA+4DUgAAAAgAAgAAAAAAAAABAAADUv9qAFoD6P/9//oD7gABAAAAAAAAAAAAAAAAAAAAiAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPo//4D6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAADawAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAANrAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPo//8D6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAAPoAAAD6AAAA+gAAANZ//0AAAAAAEQAigDYAWYBzAJIApQC+gNiBBoEXAS8BV4F4gYoBnAGkAbaBxQHpggyCPoJdAnACj4K3AtWDBgMVgzoDXwNvg4wDpoPAA+6EB4QqBDkETARcBHoEkoSqhMUE5wUDBS0FToVzhYqFnQW+hdAF7oX+BhOGJAY1BkoGaoaDhqQGugbhhxGHKIdZh2wHhAech7KHzQfliACIHog1CEQIV4hzCIsIkwiniL+I2QjhCRsJPQlMCWuJognACdYJ74n7igeKK4pZim4KtArHivgLGws9i2ALc4t/i4uLqovEi+QL+IwXjDyMVgyADJuMpwyzDM6M3gz6DRmNM41PDVwNZA13DZANuA3Qje+OGY5QjmUAAAAAQAAAIgA0AANAAAAAAACAAAAEABzAAAAMAtwAAAAAAAAABIA3gABAAAAAAAAADUAAAABAAAAAAABAAgANQABAAAAAAACAAcAPQABAAAAAAADAAgARAABAAAAAAAEAAgATAABAAAAAAAFAAsAVAABAAAAAAAGAAgAXwABAAAAAAAKACsAZwABAAAAAAALABMAkgADAAEECQAAAGoApQADAAEECQABABABDwADAAEECQACAA4BHwADAAEECQADABABLQADAAEECQAEABABPQADAAEECQAFABYBTQADAAEECQAGABABYwADAAEECQAKAFYBcwADAAEECQALACYByUNvcHlyaWdodCAoQykgMjAxNiBieSBvcmlnaW5hbCBhdXRob3JzIEAgZm9udGVsbG8uY29tc2YtaWNvbnNSZWd1bGFyc2YtaWNvbnNzZi1pY29uc1ZlcnNpb24gMS4wc2YtaWNvbnNHZW5lcmF0ZWQgYnkgc3ZnMnR0ZiBmcm9tIEZvbnRlbGxvIHByb2plY3QuaHR0cDovL2ZvbnRlbGxvLmNvbQBDAG8AcAB5AHIAaQBnAGgAdAAgACgAQwApACAAMgAwADEANgAgAGIAeQAgAG8AcgBpAGcAaQBuAGEAbAAgAGEAdQB0AGgAbwByAHMAIABAACAAZgBvAG4AdABlAGwAbABvAC4AYwBvAG0AcwBmAC0AaQBjAG8AbgBzAFIAZQBnAHUAbABhAHIAcwBmAC0AaQBjAG8AbgBzAHMAZgAtAGkAYwBvAG4AcwBWAGUAcgBzAGkAbwBuACAAMQAuADAAcwBmAC0AaQBjAG8AbgBzAEcAZQBuAGUAcgBhAHQAZQBkACAAYgB5ACAAcwB2AGcAMgB0AHQAZgAgAGYAcgBvAG0AIABGAG8AbgB0AGUAbABsAG8AIABwAHIAbwBqAGUAYwB0AC4AaAB0AHQAcAA6AC8ALwBmAG8AbgB0AGUAbABsAG8ALgBjAG8AbQAAAAACAAAAAAAAAAoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIgBAgEDAQQBBQEGAQcBCAEJAQoBCwEMAQ0BDgEPARABEQESARMBFAEVARYBFwEYARkBGgEbARwBHQEeAR8BIAEhASIBIwEkASUBJgEnASgBKQEqASsBLAEtAS4BLwEwATEBMgEzATQBNQE2ATcBOAE5AToBOwE8AT0BPgE/AUABQQFCAUMBRAFFAUYBRwFIAUkBSgFLAUwBTQFOAU8BUAFRAVIBUwFUAVUBVgFXAVgBWQFaAVsBXAFdAV4BXwFgAWEBYgFjAWQBZQFmAWcBaAFpAWoBawFsAW0BbgFvAXABcQFyAXMBdAF1AXYBdwF4AXkBegF7AXwBfQF+AX8BgAGBAYIBgwGEAYUBhgGHAYgBiQAFM2RvdHMDYWRkBWNsb3NlCXByaWNlYm9vawRoZWxwCG5vdGVib29rBHJvd3MGdXBsb2FkBWNsb2NrBmdyb3VwcwtvcGVuX2ZvbGRlchByaWdodF9hbGlnbl90ZXh0B3Byb2R1Y3QNcXVlc3Rpb25fZmVlZAd3YXJuaW5nBHVzZXIFcmlnaHQMbm90aWZpY2F0aW9uBGhvbWUIY29udHJhY3QHYWRkdXNlcgRhcHBzBGNvcHkFaW1hZ2UEb3BlbghzZXR0aW5ncwZ6b29taW4GcmVjb3JkCWFycm93ZG93bgNjdXQPaW5zZXJ0X3RlbXBsYXRlDW9wZW5lZF9mb2xkZXIJc2lkZV9saXN0B3pvb21vdXQGcXVvdGVzDHJlbGF0ZWRfbGlzdARnZG9jB3NuaXBwZXQEcGFnZQtjdXN0b21fYXBwcwdhcnJvd3VwBmF0dGFjaAdkYXl2aWV3BGluZm8QaW5zZXJ0X3RhZ19maWVsZAVwYXN0ZQRzb3J0A3BkZgZyZXBvcnQEdGFzawhhcHByb3ZhbAtzb2NpYWxzaGFyZQZwZW9wbGUGaXRhbGljBmRlbGV0ZQRiYWNrA2JhbgVlbWFpbARib2xkB3ByZXZpZXcFc2hhcmUJZGFzaGJvYXJkBnRoYW5rcwV0b2RheQpjb250cmFjdC0xB3NwaW5uZXIFcGhvdG8FZXZlbnQHYnVpbGRlcgxqdXN0aWZ5X3RleHQRY2VudGVyX2FsaWduX3RleHQEZWRpdAZsYXlvdXQIcHJpb3JpdHkQc3RhbmRhcmRfb2JqZWN0cwdjb250YWN0CGN1c3RvbTkzB2VtYWlsLTEHc3VjY2VzcwdyZWZyZXNoD2xlZnRfYWxpZ25fdGV4dARkb3duBWNoYXJ0BGNoYXQFZXJyb3IEbGVmdAtyZW1vdmVfbGluawdzdW1tYXJ5CGRvY3VtZW50BmRyYWZ0cw1zdW1tYXJ5ZGV0YWlsB3JlcGxhY2UEbGlrZQhkb3dubG9hZAVjaGVjawtjaGV2cm9ubGVmdAZleHBhbmQEbGluawVyZXBseQV0YWJsZQRmZWVkB2V2ZW50LTEOdGlsZV9jYXJkX2xpc3QUcmljaHRleHRidWxsZXRlZGxpc3QEbGlzdAhmYXZvcml0ZQxjaGV2cm9ucmlnaHQLY2hldnJvbmRvd24GZmlsdGVyBG1vdmUOcmljaHRleHRpbmRlbnQJdW5kZXJsaW5lCGZlZWRiYWNrBGZpbGUEdW5kbxRyaWNodGV4dG51bWJlcmVkbGlzdARsb2NrCmZpbHRlcmxpc3QJY2hldnJvbnVwBWNs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sgEAQSstsE0ssgEBQSstsE4ssgAAQistsE8ssgABQistsFAssgEAQistsFEssgEBQistsFIssgAAPistsFMssgABPistsFQssgEAPistsFUssgEBPistsFYssgAAQCstsFcssgABQCstsFgssgEAQCstsFkssgEBQCstsFossgAAQystsFsssgABQystsFwssgEAQystsF0ssgEBQystsF4ssgAAPystsF8ssgABPystsGAssgEAPystsGEssgEBPystsGIssDcrLrErARQrLbBjLLA3K7A7Ky2wZCywNyuwPCstsGUssAAWsDcrsD0rLbBmLLA4Ky6xKwEUKy2wZyywOCuwOystsGgssDgrsDwrLbBpLLA4K7A9Ky2waiywOSsusSsBFCstsGsssDkrsDsrLbBsLLA5K7A8Ky2wbSywOSuwPSstsG4ssDorLrErARQrLbBvLLA6K7A7Ky2wcCywOiuwPCstsHEssDorsD0rLbByLLMJBAIDRVghGyMhWUIrsAhlsAMkUHiwARUwLQBLuADIUlixAQGOWbABuQgACABjcLEABUKxAAAqsQAFQrEACCqxAAVCsQAIKrEABUK5AAAACSqxAAVCuQAAAAkqsQMARLEkAYhRWLBAiFixA2REsSYBiFFYugiAAAEEQIhjVFixAwBEWVlZWbEADCq4Af+FsASNsQIARAA=') format('truetype');
}
/* Chrome hack: SVG is rendered more smooth in Windozze. 100% magic, uncomment if you need it. */
/* Note, that will break hinting! In other OS-es font will be not as sharp as it could be */
/*
@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: 'sf-icons';
    src: url('../font/sf-icons.svg?13067676#sf-icons') format('svg');
  }
}
*/
[class^="sf-icon-"]:before,
[class*=" sf-icon-"]:before {
  font-family: "sf-icons";
  font-style: normal;
  font-weight: normal;
  speak: none;
  display: inline-block;
  text-decoration: inherit;
  width: 1em;
  margin-right: .2em;
  text-align: center;
  /* opacity: .8; */
  /* For safety - reset parent styles, that can break glyph codes*/
  font-variant: normal;
  text-transform: none;
  /* fix buttons height, for twitter bootstrap */
  line-height: 1em;
  /* Animation center compensation - margins should be symmetric */
  /* remove if not needed */
  margin-left: .2em;
  /* you can be more comfortable with increased icons size */
  /* font-size: 120%; */
  /* Uncomment for 3D effect */
  /* text-shadow: 1px 1px 1px rgba(127, 127, 127, 0.3); */
}
.sf-icon-3dots:before {
  content: '\e800';
}
/* '' */
.sf-icon-add:before {
  content: '\e801';
}
/* '' */
.sf-icon-close:before {
  content: '\e802';
}
/* '' */
.sf-icon-pricebook:before {
  content: '\e803';
}
/* '' */
.sf-icon-help:before {
  content: '\e804';
}
/* '' */
.sf-icon-notebook:before {
  content: '\e805';
}
/* '' */
.sf-icon-rows:before {
  content: '\e806';
}
/* '' */
.sf-icon-upload:before {
  content: '\e807';
}
/* '' */
.sf-icon-clock:before {
  content: '\e808';
}
/* '' */
.sf-icon-groups:before {
  content: '\e809';
}
/* '' */
.sf-icon-open_folder:before {
  content: '\e80a';
}
/* '' */
.sf-icon-right_align_text:before {
  content: '\e80b';
}
/* '' */
.sf-icon-product:before {
  content: '\e80c';
}
/* '' */
.sf-icon-question_feed:before {
  content: '\e80d';
}
/* '' */
.sf-icon-warning:before {
  content: '\e80e';
}
/* '' */
.sf-icon-user:before {
  content: '\e80f';
}
/* '' */
.sf-icon-right:before {
  content: '\e810';
}
/* '' */
.sf-icon-notification:before {
  content: '\e811';
}
/* '' */
.sf-icon-home:before {
  content: '\e812';
}
/* '' */
.sf-icon-contract:before {
  content: '\e813';
}
/* '' */
.sf-icon-adduser:before {
  content: '\e814';
}
/* '' */
.sf-icon-apps:before {
  content: '\e815';
}
/* '' */
.sf-icon-copy:before {
  content: '\e816';
}
/* '' */
.sf-icon-image:before {
  content: '\e817';
}
/* '' */
.sf-icon-open:before {
  content: '\e818';
}
/* '' */
.sf-icon-settings:before {
  content: '\e819';
}
/* '' */
.sf-icon-zoomin:before {
  content: '\e81a';
}
/* '' */
.sf-icon-record:before {
  content: '\e81b';
}
/* '' */
.sf-icon-arrowdown:before {
  content: '\e81c';
}
/* '' */
.sf-icon-cut:before {
  content: '\e81d';
}
/* '' */
.sf-icon-insert_template:before {
  content: '\e81e';
}
/* '' */
.sf-icon-opened_folder:before {
  content: '\e81f';
}
/* '' */
.sf-icon-side_list:before {
  content: '\e820';
}
/* '' */
.sf-icon-zoomout:before {
  content: '\e821';
}
/* '' */
.sf-icon-quotes:before {
  content: '\e822';
}
/* '' */
.sf-icon-related_list:before {
  content: '\e823';
}
/* '' */
.sf-icon-gdoc:before {
  content: '\e824';
}
/* '' */
.sf-icon-snippet:before {
  content: '\e825';
}
/* '' */
.sf-icon-page:before {
  content: '\e826';
}
/* '' */
.sf-icon-custom_apps:before {
  content: '\e827';
}
/* '' */
.sf-icon-arrowup:before {
  content: '\e828';
}
/* '' */
.sf-icon-attach:before {
  content: '\e829';
}
/* '' */
.sf-icon-dayview:before {
  content: '\e82a';
}
/* '' */
.sf-icon-info:before {
  content: '\e82b';
}
/* '' */
.sf-icon-insert_tag_field:before {
  content: '\e82c';
}
/* '' */
.sf-icon-paste:before {
  content: '\e82d';
}
/* '' */
.sf-icon-sort:before {
  content: '\e82e';
}
/* '' */
.sf-icon-pdf:before {
  content: '\e82f';
}
/* '' */
.sf-icon-report:before {
  content: '\e830';
}
/* '' */
.sf-icon-task:before {
  content: '\e831';
}
/* '' */
.sf-icon-approval:before {
  content: '\e832';
}
/* '' */
.sf-icon-socialshare:before {
  content: '\e833';
}
/* '' */
.sf-icon-people:before {
  content: '\e834';
}
/* '' */
.sf-icon-italic:before {
  content: '\e835';
}
/* '' */
.sf-icon-delete:before {
  content: '\e836';
}
/* '' */
.sf-icon-back:before {
  content: '\e837';
}
/* '' */
.sf-icon-ban:before {
  content: '\e838';
}
/* '' */
.sf-icon-email:before {
  content: '\e839';
}
/* '' */
.sf-icon-bold:before {
  content: '\e83a';
}
/* '' */
.sf-icon-preview:before {
  content: '\e83b';
}
/* '' */
.sf-icon-share:before {
  content: '\e83c';
}
/* '' */
.sf-icon-dashboard:before {
  content: '\e83d';
}
/* '' */
.sf-icon-thanks:before {
  content: '\e83e';
}
/* '' */
.sf-icon-today:before {
  content: '\e83f';
}
/* '' */
.sf-icon-contract-1:before {
  content: '\e840';
}
/* '' */
.sf-icon-spinner:before {
  content: '\e841';
}
/* '' */
.sf-icon-photo:before {
  content: '\e842';
}
/* '' */
.sf-icon-event:before {
  content: '\e843';
}
/* '' */
.sf-icon-builder:before {
  content: '\e844';
}
/* '' */
.sf-icon-justify_text:before {
  content: '\e845';
}
/* '' */
.sf-icon-center_align_text:before {
  content: '\e846';
}
/* '' */
.sf-icon-edit:before {
  content: '\e847';
}
/* '' */
.sf-icon-layout:before {
  content: '\e848';
}
/* '' */
.sf-icon-priority:before {
  content: '\e849';
}
/* '' */
.sf-icon-standard_objects:before {
  content: '\e84a';
}
/* '' */
.sf-icon-contact:before {
  content: '\e84b';
}
/* '' */
.sf-icon-custom93:before {
  content: '\e84c';
}
/* '' */
.sf-icon-email-1:before {
  content: '\e84d';
}
/* '' */
.sf-icon-success:before {
  content: '\e84e';
}
/* '' */
.sf-icon-refresh:before {
  content: '\e84f';
}
/* '' */
.sf-icon-left_align_text:before {
  content: '\e850';
}
/* '' */
.sf-icon-down:before {
  content: '\e851';
}
/* '' */
.sf-icon-chart:before {
  content: '\e852';
}
/* '' */
.sf-icon-chat:before {
  content: '\e853';
}
/* '' */
.sf-icon-error:before {
  content: '\e854';
}
/* '' */
.sf-icon-left:before {
  content: '\e855';
}
/* '' */
.sf-icon-remove_link:before {
  content: '\e856';
}
/* '' */
.sf-icon-summary:before {
  content: '\e857';
}
/* '' */
.sf-icon-document:before {
  content: '\e858';
}
/* '' */
.sf-icon-drafts:before {
  content: '\e859';
}
/* '' */
.sf-icon-summarydetail:before {
  content: '\e85a';
}
/* '' */
.sf-icon-replace:before {
  content: '\e85b';
}
/* '' */
.sf-icon-like:before {
  content: '\e85c';
}
/* '' */
.sf-icon-download:before {
  content: '\e85d';
}
/* '' */
.sf-icon-check:before {
  content: '\e85e';
}
/* '' */
.sf-icon-chevronleft:before {
  content: '\e85f';
}
/* '' */
.sf-icon-expand:before {
  content: '\e860';
}
/* '' */
.sf-icon-link:before {
  content: '\e861';
}
/* '' */
.sf-icon-reply:before {
  content: '\e862';
}
/* '' */
.sf-icon-table:before {
  content: '\e863';
}
/* '' */
.sf-icon-feed:before {
  content: '\e864';
}
/* '' */
.sf-icon-event-1:before {
  content: '\e865';
}
/* '' */
.sf-icon-tile_card_list:before {
  content: '\e866';
}
/* '' */
.sf-icon-richtextbulletedlist:before {
  content: '\e867';
}
/* '' */
.sf-icon-list:before {
  content: '\e868';
}
/* '' */
.sf-icon-favorite:before {
  content: '\e869';
}
/* '' */
.sf-icon-chevronright:before {
  content: '\e86a';
}
/* '' */
.sf-icon-chevrondown:before {
  content: '\e86b';
}
/* '' */
.sf-icon-filter:before {
  content: '\e86c';
}
/* '' */
.sf-icon-move:before {
  content: '\e86d';
}
/* '' */
.sf-icon-richtextindent:before {
  content: '\e86e';
}
/* '' */
.sf-icon-underline:before {
  content: '\e86f';
}
/* '' */
.sf-icon-feedback:before {
  content: '\e870';
}
/* '' */
.sf-icon-file:before {
  content: '\e871';
}
/* '' */
.sf-icon-undo:before {
  content: '\e872';
}
/* '' */
.sf-icon-richtextnumberedlist:before {
  content: '\e873';
}
/* '' */
.sf-icon-lock:before {
  content: '\e874';
}
/* '' */
.sf-icon-filterlist:before {
  content: '\e875';
}
/* '' */
.sf-icon-chevronup:before {
  content: '\e876';
}
/* '' */
.sf-icon-clear:before {
  content: '\e877';
}
/* '' */
.sf-icon-forward:before {
  content: '\e878';
}
/* '' */
.sf-icon-new_window:before {
  content: '\e879';
}
/* '' */
.sf-icon-richtextoutdent:before {
  content: '\e87a';
}
/* '' */
.sf-icon-unlock:before {
  content: '\e87b';
}
/* '' */
.sf-icon-opportunity:before {
  content: '\e87c';
}
/* '' */
.sf-icon-post:before {
  content: '\e87d';
}
/* '' */
.sf-icon-up:before {
  content: '\e87e';
}
/* '' */
.sf-icon-search:before {
  content: '\e87f';
}
/* '' */
.sf-icon-new:before {
  content: '\e880';
}
/* '' */
.sf-icon-frozen:before {
  content: '\e881';
}
/* '' */
.sf-icon-comments:before {
  content: '\e882';
}
/* '' */
.sf-icon-recent:before {
  content: '\e883';
}
/* '' */
.sf-icon-magicwand:before {
  content: '\e884';
}
/* '' */
.sf-icon-discountscheduleicons-02:before {
  content: '\e885';
}
/* '' */
.sf-icon-cancel-circled:before {
  content: '\e886';
}
/* '' */
/* The following is copied from icons/css/sb-embedded.css as less-plugin-clean-css could handle a @import */
@font-face {
  font-family: 'sb';
  src: url('../font/sb.eot?49340248');
  src: url('../font/sb.eot?49340248#iefix') format('embedded-opentype'), url('../font/sb.svg?49340248#sb') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'sb';
  src: url('data:application/octet-stream;base64,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') format('woff'), url('data:application/octet-stream;base64,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') format('truetype');
}
/* Chrome hack: SVG is rendered more smooth in Windozze. 100% magic, uncomment if you need it. */
/* Note, that will break hinting! In other OS-es font will be not as sharp as it could be */
/*
@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: 'sb';
    src: url('../font/sb.svg?49340248#sb') format('svg');
  }
}
*/
[class^="sb-icon-"]:before,
[class*=" sb-icon-"]:before {
  font-family: "sb";
  font-style: normal;
  font-weight: normal;
  speak: none;
  display: inline-block;
  text-decoration: inherit;
  width: 1em;
  margin-right: .2em;
  text-align: center;
  /* opacity: .8; */
  /* For safety - reset parent styles, that can break glyph codes*/
  font-variant: normal;
  text-transform: none;
  /* fix buttons height, for twitter bootstrap */
  line-height: 1em;
  /* Animation center compensation - margins should be symmetric */
  /* remove if not needed */
  margin-left: .2em;
  /* you can be more comfortable with increased icons size */
  /* font-size: 120%; */
  /* Uncomment for 3D effect */
  /* text-shadow: 1px 1px 1px rgba(127, 127, 127, 0.3); */
}
.sb-icon-filter:before {
  content: '\e800';
}
/* '' */
.sb-icon-th-large:before {
  content: '\e801';
}
/* '' */
.sb-icon-th:before {
  content: '\e802';
}
/* '' */
.sb-icon-th-list:before {
  content: '\e803';
}
/* '' */
.sb-icon-pencil:before {
  content: '\e804';
}
/* '' */
.sb-icon-cancel:before {
  content: '\e805';
}
/* '' */
.sb-icon-plus:before {
  content: '\e806';
}
/* '' */
.sb-icon-cog:before {
  content: '\e807';
}
/* '' */
.sb-icon-align-justify:before {
  content: '\e808';
}
/* '' */
.sb-icon-ok:before {
  content: '\e809';
}
/* '' */
.sb-icon-lock:before {
  content: '\e80a';
}
/* '' */
.sb-icon-exchange:before {
  content: '\e80b';
}
/* '' */
.sb-icon-down:before {
  content: '\e80c';
}
/* '' */
.sb-icon-up:before {
  content: '\e80d';
}
/* '' */
.sb-icon-help-circled:before {
  content: '\e80e';
}
/* '' */
.sb-icon-info-circled:before {
  content: '\e80f';
}
/* '' */
.sb-icon-sort-name-up:before {
  content: '\e810';
}
/* '' */
.sb-icon-sort-name-down:before {
  content: '\e811';
}
/* '' */
.sb-icon-down-dir:before {
  content: '\e812';
}
/* '' */
.sb-icon-up-dir:before {
  content: '\e813';
}
/* '' */
.sb-icon-compass:before {
  content: '\e814';
}
/* '' */
.sb-icon-right-dir:before {
  content: '\e815';
}
/* '' */
.sb-icon-left-dir:before {
  content: '\e816';
}
/* '' */
.sb-icon-docs:before {
  content: '\e817';
}
/* '' */
.sb-icon-circle-empty:before {
  content: '\e818';
}
/* '' */
.sb-icon-dot-circled:before {
  content: '\e819';
}
/* '' */
.sb-icon-to-end:before {
  content: '\e81a';
}
/* '' */
.sb-icon-to-start:before {
  content: '\e81b';
}
/* '' */
.sb-icon-fast-forward:before {
  content: '\e81c';
}
/* '' */
.sb-icon-fast-backward:before {
  content: '\e81d';
}
/* '' */
.sb-icon-cw:before {
  content: '\e81e';
}
/* '' */
.sb-icon-level-down:before {
  content: '\e81f';
}
/* '' */
.sb-icon-attention:before {
  content: '\e820';
}
/* '' */
.sb-icon-attention-circled:before {
  content: '\e821';
}
/* '' */
.sb-icon-search:before {
  content: '\e822';
}
/* '' */
.sb-icon-ccw:before {
  content: '\e823';
}
/* '' */
.sb-icon-star:before {
  content: '\e824';
}
/* '' */
.sb-icon-star-empty:before {
  content: '\e825';
}
/* '' */
/* end of import from sb-embedded.css */
.sb *[class^="sb-icon-"]:before,
.sb *[class*=" sb-icon-"]:before {
  font-family: 'sb';
  color: inherit;
  /* Better Font Rendering =========== */
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.sb-icon-exchange:before {
  -webkit-transform: rotate(90deg);
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
}
.sb-icon-loading {
  width: 148px;
  text-align: center;
}
.sb-icon-loading > div {
  width: 36px;
  height: 18px;
  margin: 2px;
  background-color: #A71B21;
  border-radius: 10%;
  display: inline-block;
  -webkit-animation: bouncedelay 1.4s infinite ease-in-out;
  animation: bouncedelay 1.4s infinite ease-in-out;
  /* Prevent first frame from flickering when animation starts */
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}
.sb-icon-loading .sb-icon-bounce1 {
  -webkit-animation-delay: -0.32s;
  animation-delay: -0.32s;
}
.sb-icon-loading .sb-icon-bounce2 {
  -webkit-animation-delay: -0.16s;
  animation-delay: -0.16s;
}
.sbPageTitle .sf-icon-custom93 {
  background-color: #904D4C;
}
.sbPageTitle .sf-icon-product {
  background-color: #B781D3;
}
.sbPageTitle .sf-icon-settings {
  background-color: #EDB566;
}
.sbPageTitle .sf-icon-download {
  background-color: #54698D;
}
.sbPageTitle .sf-icon-contract-1 {
  background-color: #6EC06E;
}
.sbPageTitle .sf-icon-approval {
  background-color: #00C6B7;
}
.sbPageTitle .sf-icon-post {
  background-color: #65CAE4;
}
.sbPageTitle .sf-icon-gdoc {
  background-color: #54698D;
}
.sbPageTitle .sf-icon-recent {
  background-color: #6CA1E9;
}
.sbPageTitle .sf-icon-copy {
  background-color: #6CA0E9;
}
.sbPageTitle .sf-icon-favorite {
  background-color: #FF7B84;
}
.sbPageTitle .sf-icon-refresh.resize {
  background-color: #6CA0E9;
}
.sbPageTitle .sf-icon-replace {
  background-color: #54698D;
}
@-webkit-keyframes bouncedelay {
  0%,
  80%,
  100% {
    -webkit-transform: scale(0);
  }
  40% {
    -webkit-transform: scale(1);
  }
}
@keyframes bouncedelay {
  0%,
  80%,
  100% {
    transform: scale(0);
    -webkit-transform: scale(0);
  }
  40% {
    transform: scale(1);
    -webkit-transform: scale(1);
  }
}
#bodyCell {
  position: relative;
  overflow: hidden;
  padding: 0px;
  display: inline-block;
  width: 100%;
  min-height: 500px;
}
#bodyDiv_setup > .outer {
  background-color: #ffffff !important;
}
#bodyDiv_setup > .outer .oLeft {
  background-color: #f4f6f9 !important;
}
#sidebarCell.sidebarCollapsed {
  padding-left: 0;
}
#sidebarCell.sidebarCollapsed + #bodyCell {
  margin-left: -1px;
}
#MoreTabs_Tab > #MoreTabs_List {
  z-index: 10;
}
table td {
  font-family: inherit;
}
.sb ul li,
.sb ol li {
  margin: 0;
  padding: 0;
}
.sb .message {
  border-radius: 3px;
  margin: 15px 15px 0 24px;
  padding: 12px;
  font-size: 12px;
  color: #16325C;
  display: inline-block;
  background: none;
}
.sb .message .msgIcon {
  background: none;
  width: 0;
  height: 0;
}
.sb .message .messageText {
  margin: 0 0 0 30px;
}
.sb .message .messageText > span,
.sb .message .messageText h4,
.sb .message .messageText > div {
  display: inline-block;
  vertical-align: top;
  line-height: 20px;
}
.sb .message .messageText h4 {
  margin-left: 10px;
  margin-right: 6px;
}
.sb .message .messageText > div:not(:first-of-type) {
  display: block;
}
.sb .message .messageText:before {
  font-family: "sb";
  font-style: normal;
  font-weight: normal;
  font-size: 20px;
  speak: none;
  display: inline-block;
  text-decoration: inherit;
  width: 1em;
  margin-left: -30px;
  text-align: center;
  font-variant: normal;
  text-transform: none;
  line-height: 1em;
}
.sb .message.errorM2 .messageText,
.sb .message.errorM3 .messageText,
.sb .message.errorM4 .messageText,
.sb .message.errorM5 .messageText,
.sb .message.errorM6 .messageText {
  color: #cc0000;
}
.sb .message.errorM2 .messageText:before,
.sb .message.errorM3 .messageText:before,
.sb .message.errorM4 .messageText:before,
.sb .message.errorM5 .messageText:before,
.sb .message.errorM6 .messageText:before {
  content: '\e821';
}
.sb .message.warningM2 .messageText,
.sb .message.warningM3 .messageText,
.sb .message.warningM4 .messageText,
.sb .message.warningM5 .messageText,
.sb .message.warningM6 .messageText {
  color: #d98633;
}
.sb .message.warningM2 .messageText:before,
.sb .message.warningM3 .messageText:before,
.sb .message.warningM4 .messageText:before,
.sb .message.warningM5 .messageText:before,
.sb .message.warningM6 .messageText:before {
  content: '\e820';
}
.sb .message.infoM2 .messageText,
.sb .message.infoM3 .messageText,
.sb .message.infoM4 .messageText,
.sb .message.infoM5 .messageText,
.sb .message.infoM6 .messageText {
  color: #0000cc;
}
.sb .message.infoM2 .messageText:before,
.sb .message.infoM3 .messageText:before,
.sb .message.infoM4 .messageText:before,
.sb .message.infoM5 .messageText:before,
.sb .message.infoM6 .messageText:before {
  content: '\e80f';
}
.sb,
.ui-tooltip {
  font-size: 10px;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif !important;
}
.sb * {
  box-sizing: border-box;
}
.sb *.hidden {
  display: none;
}
.sbClear,
.sbPageBlockSection:after {
  content: "";
  display: table;
  clear: both;
}
.sbLink {
  color: #0070D2;
}
#sbCpqSettings {
  padding: 15px;
}
#sbCpqSettings .bPageBlock {
  border: 0 !important;
  background: none !important;
}
#sbCpqSettings .sbTabs {
  font-family: inherit;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line {
  border-bottom: 1px solid #d0d0d0;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tabhdr-cell-active {
  border-bottom: 4px solid #166bbf;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tabhdr-side-border {
  display: none;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tabhdr-side-cell {
  border: 0;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tab-active,
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tab-inactive {
  background: none !important;
  font-size: 12px !important;
  padding: 0 16px 6px 16px;
}
#sbCpqSettings .sbTabs .rich-tab-header,
#sbCpqSettings .sbTabs .rich-tabpanel-content {
  font-family: inherit !important;
  font-size: inherit !important;
}
#sbCpqSettings .sbTabs .rich-tabpanel-content {
  background: none !important;
  border: 0 !important;
}
#sbCpqSettings .sbTabs .labelCol,
#sbCpqSettings .sbTabs .dataCol {
  padding-top: 8px;
  padding-bottom: 8px;
  vertical-align: middle;
}
#sbCpqSettings .sbTabs .labelCol,
#sbCpqSettings .sbTabs .data2Col {
  font-size: 12px;
  font-weight: normal;
}
#sbCpqSettings .sbTabs input:not([type=submit]):not([type=checkbox]),
#sbCpqSettings .sbTabs select {
  font-size: 12px;
  width: 220px !important;
}
#sbCpqSettings .sbTabs .sbBtn {
  font-size: inherit;
}
.themePage .sbHeaderBgColor {
  color: #f4f6f9;
}
.themePage .sbHeaderSecondaryBgColor {
  color: #f4f6f9;
}
.themePage .sbHeaderBorderColor {
  color: #d0d0d0;
}
.themePage .sbHeaderFontColor {
  color: #16325c;
}
.themePage .sbHeaderSupportFontColor {
  color: #54698d;
}
.themePage .sbBgColor {
  color: #ffffff;
}
.themePage .sbDetailBgColor {
  color: #f4f6f9;
}
.themePage .sbFontColor {
  color: #16325C;
}
.themePage .sbSecondaryFontColor {
  color: #696969;
}
.themePage .sbBorderColor {
  color: #D8DDE6;
}
.themePage .sbTableHeaderFontColor {
  color: #54698d;
}
.themePage .sbTableRowHoverColor {
  color: #F4F6F9;
}
.themePage .sbGroupBtnBgColor {
  color: #ffffff;
}
.themePage .sbGroupBtnBorderColor {
  color: #d8dde6;
}
.themePage .sbGroupBtnFontColor {
  color: #0070d2;
}
.themePage .sbGroupBtnHoverBgColor {
  color: #f4f6f9;
}
.themePage .sbGroupBtnHoverFontColor {
  color: #0070d2;
}
.themePage .sbGroupBtnDisabledFontColor {
  color: #bebebe;
}
.themePage .sbPrimaryBtnBgColor {
  color: #0070d2;
}
.themePage .sbPrimaryBtnFontColor {
  color: #ffffff;
}
.themePage .sbPrimaryBtnHoverBgColor {
  color: #005fb2;
}
.themePage .sbAccentIconColor {
  color: #0070d2;
}
.themePage .sbAccentIconHoverColor {
  color: #16325c;
}
.themePage .sbAccentIconDisabledColor {
  color: #888888;
}
.themePage .sbIconColor {
  color: #888;
}
.themePage .sbTabSelectedColor {
  color: #166bbf;
}
.themePage {
  color: #16325C;
  background-color: #ffffff;
}
.themePage .sbTitles h2 {
  color: #54698d;
}
.themePage .sbBtn {
  background: #ffffff;
  color: #0070d2;
  border-color: #d8dde6;
}
.themePage .sbBtn:hover {
  background: #f4f6f9;
  color: #0070d2;
}
.themePage .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  border-color: #0070d2;
  color: #ffffff;
}
.themePage .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
.themePage .normal.sf-icon-copy:before {
  color: #888;
}
.themePage .accent.sf-icon-copy:before {
  color: #0070d2;
}
.themePage .accent.sf-icon-copy:hover::before {
  color: #16325c;
}
.themePage .disabled.sf-icon-copy:before {
  color: #888888;
}
.themePage .sf-icon-copy {
  font-size: 24px;
  padding-right: 40px;
}
.themePage .sbTable > tbody > tr > td {
  font-size: 10px;
}
.themePage .demoItems {
  border: 1px solid #000000;
  padding: 0px;
  margin-left: 60px;
  margin-right: 60px;
  padding-top: 20px;
  padding-bottom: 20px;
  padding-left: 20px;
  padding-right: 20px;
  margin-top: 40px;
  border-color: #D8DDE6 !important;
}
.themePage .bottomPadding {
  padding-bottom: 40px;
}
.themePage .themeHeader {
  padding-top: 40px;
  padding-left: 60px;
  padding-bottom: 10px;
  border-bottom-style: solid !important;
  border-bottom-width: 1px !important;
  border-bottom-color: #D8DDE6 !important;
}
.themePage .themeHeader h3 {
  color: #16325C !important;
}
.themePage .colorPickWrapper {
  width: 300px;
  display: inline-block;
  margin-left: 55px;
  margin-right: 55px;
  margin-top: 40px;
}
.themePage .colorPickWrapper span {
  position: relative;
  top: 11px;
}
.themePage .backgroundHide {
  display: none;
}
.themePage .sp-replacer.sp-light.full-spectrum {
  float: right;
  margin-right: 10px;
}
.themePage .content {
  font-size: 14px;
}
.themePage .sbButtons {
  margin-left: 10px;
}
.themePage .sp-replacer {
  border-color: #d8dde6 !important;
  padding: 0 !important;
  background-color: inherit !important;
  border-radius: 5px;
}
.themePage .sp-dd {
  line-height: 40px !important;
  height: 40px!important;
}
.themePage .sp-preview {
  margin-right: 0px !important;
  width: 40px !important;
  height: 40px !important;
  border-width: 0px !important;
}
.themePage .sp-container {
  background-color: #ffffff !important;
  border: 1px solid #d8dde6 !important;
  border-radius: 5px!important;
}
#sbTranslate .sbDescription {
  width: 90%;
}
#sbTranslate .sbLongTextArea {
  width: 90%;
  border: 1px solid #D8DDE6;
}
#sbTranslate .sbPageBlockSection {
  background: none;
  border: none;
}
#sbTranslate .sbPageBlockSection select {
  min-width: 200px;
  font-size: 12px;
}
#sbTranslate .sbPageBlockSection > span {
  font-size: 12px;
  padding: 0 20px 0 40px;
}
#sbTranslate .sbFieldsTable {
  margin-top: 0;
  padding-top: 0;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td {
  height: 49px;
  vertical-align: middle;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td:nth-child(1),
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td:nth-child(2) {
  width: 20%;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td:nth-child(3) {
  width: 60%;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td > input,
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td textarea {
  width: 100%;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td > textarea {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  min-height: 35px;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td:nth-child(1) {
  width: 15%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td:nth-child(2) {
  width: 30%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td:nth-child(3) {
  width: 55%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td > input,
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td textarea {
  width: 100%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td > textarea {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  min-height: 35px;
}
#sbTranslate .sbTable .sbButtons {
  background: none;
}
#sbTranslate .sbTable .sbButtons .sbBtn {
  width: 35px;
  height: 40px;
}
#sbTranslate .cke_textarea_inline {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  min-height: 70px;
}
#sbAssetSearch .sbTable {
  font-size: 10px;
}
#sbAssetSearch .sbTable > thead > tr > th:first-of-type,
#sbAssetSearch .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbAssetSearch .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbAssetSearch .sbTools {
  float: right;
}
#sbAssetSearch .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbAssetSearch .sbPageTitle .sbTools {
  margin-right: 10px;
  padding: 7px 0;
}
#sbAssetSearch .sbPageTitle .sbTools > .sbTool {
  padding: 8px;
}
#sbAssetSearch .sbPageBlockSection {
  background: none;
  border: none;
}
#sbAssetSearch .sbPageBlockSection header {
  margin-bottom: 10px;
}
#sbAssetSearch table.sbTable {
  margin-bottom: 50px;
}
#sbAssetSearch .paginationControlsWrapper {
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
}
#sbAssetSearch .paginationControls {
  padding: 4px;
  text-align: center;
  vertical-align: middle;
  margin-left: auto;
  margin-right: auto;
  width: 250px;
  background-color: #ffffff;
  -webkit-border-top-left-radius: 4px;
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topleft: 4px;
  -moz-border-radius-topright: 4px;
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  -webkit-box-shadow: 3px 0px 5px 0px #aaaaaa;
  -moz-box-shadow: 3px 0px 5px 0px #aaaaaa;
  box-shadow: 3px 0px 5px 0px #aaaaaa;
}
#sbAssetSearch .paginationControls span {
  vertical-align: middle;
}
#sbAssetSearch .paginationControls input {
  height: auto;
  width: 30px;
  margin: 0 5px;
  font-size: 10px;
  padding: 2px;
  text-align: center;
}
#sbAssetSearch .paginationControls [class^=sb-icon] {
  font-size: 20px;
  margin-right: -5px;
  vertical-align: middle;
}
#sbAssetSearch .paginationControls [class^=sb-icon].disabled {
  color: #888888;
}
#sbAssetSearch .paginationControls [class^=sb-icon]:not(.disabled) {
  cursor: pointer;
}
#sbAssetSearch .paginationControls .sb-icon-left-dir,
#sbAssetSearch .paginationControls .sb-icon-right-dir {
  font-size: 20px;
}
.sbAssetFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
  top: 113px;
}
.sbAssetFilter.open {
  right: 0px;
  display: block;
}
.sbAssetFilter > a {
  text-align: right;
  font-size: 12px;
}
.sbAssetFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbAssetFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbAssetFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 12px;
}
.sbAssetFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbAssetFilter fieldset input,
.sbAssetFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbAssetFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbAssetFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
.sbAssetFilter input {
  display: inline;
}
.sbAssetFilter div > a {
  text-align: right;
  display: flex;
  font-size: 12px;
}
#sbSelectContract .sbTable {
  font-size: 10px;
}
#sbSelectContract .sbTable > thead > tr > th:first-of-type,
#sbSelectContract .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbSelectContract .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbSelectContract .sbTools {
  float: right;
}
#sbSelectContract .sbPageBlockSection {
  background: #ffffff;
  border: none;
}
#sbAmendContract .sbTable {
  font-size: 10px;
}
#sbAmendContract .sbTable > thead > tr > th:first-of-type,
#sbAmendContract .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbAmendContract .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbAmendContract .sbTools {
  float: right;
}
#sbAmendContract .sbPageBlockSection {
  background: #ffffff;
  border: none;
}
#sbAmendContract .sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon]:before {
  top: 0px;
}
#sbAmendContract .sbLoadingMask {
  visibility: hidden;
}
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbAmendContract .sbPageTitleRight {
    display: block;
    text-align: center;
  }
  #sbAmendContract .sbPageTitleRight .sbButtons {
    float: none;
  }
}
/*
Document Generation Preview page

Previews a document in the browser with chosen template, additional docs, etc.
*/
#sbDocGenPreview .sbPageBlockSection {
  display: inline-block;
  padding: 0;
  background: none;
  border: none;
  margin-right: 44px;
}
#sbDocGenPreview .sbPageBlockSection:last-of-type {
  margin-right: inherit;
}
#sbDocGenPreview .sbDualListBox select {
  width: 320px;
}
/*
Document Generation options

Choices for document generation such as template, output format, etc.
*/
#sbDocGenOptions {
  margin: 0 0 0 40px;
}
#sbDocGenOptions label {
  font-size: 12px;
}
#sbDocGenOptions > tbody > tr > td {
  vertical-align: middle;
  padding-bottom: 8px;
}
#sbDocGenOptions > tbody > tr > td:first-of-type {
  text-align: right;
}
#sbDocGenOptions > tbody > tr > td:first-of-type > [class^=sb-icon] {
  font-size: 15px;
  color: #888;
}
#sbDocGenOptions input,
#sbDocGenOptions select {
  width: 220px;
}
#sbDocGenOptions .sbDualListBox select {
  width: 320px;
}
#sbImportLines #sbImportOptions {
  margin: 0 0 0 40px;
}
#sbImportLines #sbImportOptions fieldset {
  border: 0;
  padding: 5px;
}
#sbImportLines #sbImportOptions fieldset > label {
  margin-right: 10px;
  font-size: 12px;
  display: inline-block;
  width: 175px;
  text-align: right;
}
#sbImportLines #sbImportOptions fieldset > input,
#sbImportLines #sbImportOptions fieldset select {
  width: 200px;
}
#sbImportLines .sbPageBlockSection {
  background: none;
  border: none;
}
#sbImportLines .sbPageBlockSection header {
  margin-bottom: 10px;
}
#sbLineEditor .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbLineEditor .sbPageTitle .sbTools {
  margin-left: 16px;
  padding: 7px 0;
  transition: all 0.25s ease-in;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool {
  font-size: inherit;
  padding: 8px 12px;
  font-size: 14px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool.icon {
  padding: 8px 7px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool.sf-icon-down {
  padding-top: 8px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool .sf-icon-refresh:before {
  font-size: 1.1em;
  margin-top: 0.3em;
  margin-bottom: 0.3em;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool > menu .separator {
  border-bottom: 1px solid #D8DDE6;
  margin-bottom: 6px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool > [class^=sb-icon] {
  font-size: 14px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool.end {
  border-bottom-right-radius: 3px;
  border-top-right-radius: 3px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbToolSeparator + .sbTool {
  border-left: 1px solid #d8dde6;
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbToolSeparator {
  display: inline-block;
  height: 1px;
  width: 10px;
  float: left;
}
#sbLineEditor .sbQuoteFields {
  margin: 15px 15px;
}
#sbLineEditor .sbQuoteFields header {
  margin-bottom: 10px;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td {
  padding: 5px 0;
  vertical-align: middle;
  font-size: 12px;
  white-space: nowrap;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td input,
#sbLineEditor .sbQuoteFields table > tbody > tr > td select {
  font-size: inherit;
  width: 140px;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td [class^=sb-icon] {
  font-size: 12px;
  color: #888;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td [class=sb-icon-search] {
  color: #0070d2;
  margin-left: 3px;
  vertical-align: middle;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td [class=sb-icon-search]:hover {
  color: #16325c;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td.sbLabel {
  text-align: right;
  vertical-align: middle;
  padding-right: 12px;
  width: 15%;
}
#sbLineEditor .sbTable input,
#sbLineEditor .sbTable select {
  font-size: inherit;
}
#sbLineEditor .sbTable input.sbSmall,
#sbLineEditor .sbTable select.sbSmall {
  max-width: 80px;
}
#sbLineEditor .sbTable input:disabled,
#sbLineEditor .sbTable select:disabled {
  background-color: #f4f6f9;
}
#sbLineEditor .sbTable input.hasDatepicker,
#sbLineEditor .sbTable select.hasDatepicker {
  min-width: 95px;
  width: 85%;
}
#sbLineEditor .sbTable > thead > tr > th:first-of-type,
#sbLineEditor .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
}
#sbLineEditor .sbTable > thead > tr > th:last-of-type,
#sbLineEditor .sbTable > tbody > tr > td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbTable select {
  min-width: 20px;
  margin-left: 4px;
}
#sbLineEditor .sbTable > tbody > tr > td {
  vertical-align: middle;
  /*[class^=sb-icon] {
        font-size: @sbFontSize * 1.2;
        color: @sbIconColor;
      }*/
}
#sbLineEditor .sbTable > tbody > tr > td.right input {
  text-align: right;
}
#sbLineEditor .sbTable > tbody > tr > td a > span[class^=sb-icon] {
  font-size: 10px;
  color: #888;
}
#sbLineEditor .sbTable > tbody > tr > td a > span[class^=sb-icon]:hover {
  color: #16325c;
}
#sbLineEditor .sbTable > tbody > tr > td .sf-icon-edit {
  visibility: hidden;
}
#sbLineEditor .sbTable > tbody > tr > td .sf-icon-edit.sbMDQicon {
  margin-right: -11em;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions {
  text-align: left;
  white-space: nowrap;
  width: 1%;
  padding-left: 15px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbDeleteCheckbox {
  width: 1%;
}
#sbLineEditor .sbTable > tbody > tr > td.sbTargetCustomerAmountEditable > [class^=sf-icon] {
  position: absolute;
}
#sbLineEditor .sbTable > tbody > tr > td.sbTargetCustomerAmountSegmentEditable > [class^=sf-icon] {
  position: absolute;
}
#sbLineEditor .sbTable > tbody > tr > td:hover .sf-icon-edit {
  visibility: visible;
}
#sbLineEditor .sbTable > tfoot > tr.sbTotalRow td {
  vertical-align: middle;
  white-space: nowrap;
}
#sbLineEditor .sbTable > tfoot > tr.sbTotalRow td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbTable .sbBundleOption {
  color: #696969;
}
#sbLineEditor .sbTable .sbIndent2 {
  padding-left: 25px;
}
#sbLineEditor .sbTable .sbIndent3 {
  padding-left: 50px;
}
#sbLineEditor .sbTable .sbIndent4 {
  padding-left: 75px;
}
#sbLineEditor .sbTable .sbIndent5 {
  padding-left: 100px;
}
#sbLineEditor .sbTable .sbIndent6 {
  padding-left: 125px;
}
#sbLineEditor .sbTable .sbIndent7 {
  padding-left: 150px;
}
#sbLineEditor .sbTable .sbIndent8 {
  padding-left: 175px;
}
#sbLineEditor .sbTable .sbIndent9 {
  padding-left: 200px;
}
#sbLineEditor .sbTable .sbIndent10 {
  padding-left: 225px;
}
#sbLineEditor .sbTable .sbDescriptionField span {
  vertical-align: middle;
}
#sbLineEditor .sbTable .sbDescriptionField .sb-icon-pencil {
  visibility: hidden;
}
#sbLineEditor .sbTable .sbDescriptionField:hover .sb-icon-pencil {
  visibility: visible;
}
#sbLineEditor .sbQuoteTotal {
  display: block;
  float: right;
  margin: 12px 22px 26px 0;
}
#sbLineEditor .sbQuoteTotal > span {
  margin-left: 10px;
}
#sbLineEditor .sbGroups,
#sbLineEditor .sbDimensionTabs {
  font-size: 12px;
  text-align: center;
  margin: 18px 15px;
  text-transform: uppercase;
  border-bottom: 1px solid #d0d0d0;
}
#sbLineEditor .sbGroups > a,
#sbLineEditor .sbDimensionTabs > a {
  cursor: move;
  color: inherit;
  padding: 6px 16px 6px;
  display: inline-block;
}
#sbLineEditor .sbGroups > a > .sf-icon-edit,
#sbLineEditor .sbDimensionTabs > a > .sf-icon-edit {
  color: #0070d2;
  visibility: hidden;
  cursor: pointer;
  position: absolute;
  right: -6px;
  top: 6px;
}
#sbLineEditor .sbGroups > a > .sf-icon-edit:hover,
#sbLineEditor .sbDimensionTabs > a > .sf-icon-edit:hover {
  color: #16325c;
}
#sbLineEditor .sbGroups > a > .sf-icon-edit.visible,
#sbLineEditor .sbDimensionTabs > a > .sf-icon-edit.visible {
  visibility: visible;
}
#sbLineEditor .sbGroups > a.selected,
#sbLineEditor .sbDimensionTabs > a.selected {
  border-bottom: 2px solid #166bbf;
}
#sbLineEditor .sbGroups > a:hover,
#sbLineEditor .sbDimensionTabs > a:hover {
  border-bottom: 2px solid #166bbf;
}
#sbLineEditor .sbGroups > a:hover > .sf-icon-edit,
#sbLineEditor .sbDimensionTabs > a:hover > .sf-icon-edit {
  visibility: visible;
}
#sbLineEditor .sbGroup > header {
  display: none;
}
#sbLineEditor .sbGroup.sbGrouped {
  background: #ffffff;
  margin: 15px 15px;
  border: 1px solid #d0d0d0;
  border-radius: 4px;
}
#sbLineEditor .sbGroup.sbGrouped > header {
  background-color: #f4f6f9;
  display: block;
  margin: 15px 15px;
  margin: 0;
  border: 0;
  padding: 10px 15px 5px;
  border-bottom: 1px solid #d0d0d0;
}
#sbLineEditor .sbGroup.sbGrouped > header.sbHiddenHeader {
  display: none;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td {
  width: 50%;
  margin: 10px;
  vertical-align: middle;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td:first-of-type {
  border-right: 1px solid #d0d0d0;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td:first-of-type > table > tbody > tr > td {
  vertical-align: middle;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td:first-of-type > table > tbody > tr:first-of-type > td:last-of-type {
  text-align: right;
  padding-right: 10px;
  min-width: 205px;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td .sbFavorite {
  width: 5%;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td .sbFavorite > i {
  font-size: 2em;
  display: inline-block;
  vertical-align: super;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td .sbFavorite > i:hover {
  cursor: pointer;
}
#sbLineEditor .sbGroup.sbGrouped > header .sf-icon-edit {
  visibility: hidden;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupHeader {
  display: inline-block;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupHeader > input {
  font-size: 12px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupHeader:hover .sf-icon-edit {
  visibility: visible;
}
#sbLineEditor .sbGroup.sbGrouped > header h2 {
  vertical-align: middle;
}
#sbLineEditor .sbGroup.sbGrouped > header h2:not(.sbGroupDragHandle) {
  cursor: pointer;
}
#sbLineEditor .sbGroup.sbGrouped > header h2 > [class=sb-icon-pencil] {
  visibility: hidden;
}
#sbLineEditor .sbGroup.sbGrouped > header h2:hover > [class=sb-icon-pencil] {
  visibility: visible;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupName {
  display: none;
  margin-right: 15px;
  height: 25px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions {
  display: inline-block;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions menu {
  max-height: 125px;
  overflow-y: auto;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools {
  vertical-align: middle;
  margin-left: 5px;
  font-size: 12px;
  background: #fff;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool {
  height: 30px;
  padding-top: 7px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool:last-of-type {
  padding: 0;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool:last-of-type [class^=sb-icon] {
  font-size: 1.6em;
  top: 1px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool:last-of-type .sbIconWrapper {
  padding-bottom: 7px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool .sf-icon-down {
  display: inline-block;
  padding-top: 6px;
  width: 2em;
  text-align: center;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool > .sbModalMask {
  z-index: 4;
  background-color: rgba(0, 0, 0, 0);
  cursor: default;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription {
  margin-top: 10px;
  font-size: 12px;
  color: #888;
  cursor: pointer;
  display: table;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription > div,
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription > div > p {
  display: inline;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription:hover {
  color: inherit;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription:hover [class=sf-icon-edit] {
  visibility: visible;
  padding-left: 5px;
}
#sbLineEditor .sbGroup.sbGrouped .sbTable {
  margin-top: 10px;
}
#sbLineEditor .sbGroup .sbGroupFields {
  padding: 0 10px;
  font-size: 12px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr .sbLabel {
  text-align: right;
  padding-right: 5px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td {
  padding-bottom: 10px;
  vertical-align: middle;
  color: #16325C;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td .sbFieldRow {
  padding-bottom: 10px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td label {
  margin-right: 4px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td input:not([type=checkbox]) {
  height: 2em;
  width: 100px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td input[type=checkbox] {
  vertical-align: middle;
}
#sbLineEditor .sbGroup .sbGroupTotal {
  text-align: right;
  margin: 15px 22px 20px 0;
}
#sbLineEditor .sbEmptyGroupMsg,
#sbLineEditor .sbEmptyQuoteMsg,
#sbLineEditor .emptyMSTableMessage,
#sbLineEditor .emptyStandardTableMessage {
  font-size: 12px;
  padding: 15px;
}
#sbLineEditor .emptyMSTableMessage {
  clear: both;
}
#sbLineEditor .emptyMSTableMessage,
#sbLineEditor .emptyStandardTableMessage {
  padding: 15px 0 0 30px;
}
#sbLineEditor #sbPricebookMask,
#sbLineEditor #sbSegmentsMask,
#sbLineEditor #sbFavoritesMask,
#sbLineEditor #sbAlertMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
#sbLineEditor #sbPricebookMask.close,
#sbLineEditor #sbSegmentsMask.close,
#sbLineEditor #sbFavoritesMask.close,
#sbLineEditor #sbAlertMask.close {
  display: none;
}
#sbLineEditor #sbSegmentsModal,
#sbLineEditor #sbProductRuleAlert {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 600px;
}
#sbLineEditor #sbSegmentsModal > header,
#sbLineEditor #sbProductRuleAlert > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbLineEditor #sbSegmentsModal > header > i,
#sbLineEditor #sbProductRuleAlert > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbLineEditor #sbSegmentsModal > header > *,
#sbLineEditor #sbProductRuleAlert > header > * {
  vertical-align: middle;
}
#sbLineEditor #sbSegmentsModal > header > h2,
#sbLineEditor #sbProductRuleAlert > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbLineEditor #sbSegmentsModal > header > h3,
#sbLineEditor #sbProductRuleAlert > header > h3 {
  color: #16325c;
}
#sbLineEditor #sbSegmentsModal > header > .sf-icon-close,
#sbLineEditor #sbProductRuleAlert > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbLineEditor #sbSegmentsModal > header > .sf-icon-close:hover,
#sbLineEditor #sbProductRuleAlert > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbLineEditor #sbSegmentsModal > header > .sf-icon-close:before,
#sbLineEditor #sbProductRuleAlert > header > .sf-icon-close:before {
  color: #fff;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer i[class^=sf-icon],
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer i[class^=sf-icon]:hover,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer .sbTable,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer .sbTable td,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer ul,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter,
#sbLineEditor #sbProductRuleAlert .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons > .sbBtn,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbLineEditor #sbSegmentsModal.amendment,
#sbLineEditor #sbProductRuleAlert.amendment {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalContentContainer,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalContentContainer i[class^=sf-icon],
#sbLineEditor #sbProductRuleAlert.amendment .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #888;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalContentContainer i[class^=sf-icon]:hover,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalContentContainer i[class^=sf-icon]:hover {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment #sbCustomSegments > tbody > tr:first-of-type > td,
#sbLineEditor #sbProductRuleAlert.amendment #sbCustomSegments > tbody > tr:first-of-type > td {
  padding-top: 14px;
}
#sbLineEditor #sbSegmentsModal.amendment #sbCustomSegments > tbody > tr > td,
#sbLineEditor #sbProductRuleAlert.amendment #sbCustomSegments > tbody > tr > td {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn {
  background-color: #ffffff;
  color: #0070d2;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn:hover,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn:hover {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn:focus,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn:focus {
  outline: none;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  cursor: pointer;
  background-color: #005fb2;
}
#sbLineEditor #sbSegmentsModal.close,
#sbLineEditor #sbProductRuleAlert.close {
  display: none;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors {
  text-align: left;
  padding: 5px 15px 0;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div {
  font-size: 12px;
  color: #c00;
  padding-bottom: 5px;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div > span,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div > span,
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div > div,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div > div {
  display: inline;
  vertical-align: middle;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div > [class^=sb-icon],
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div > [class^=sb-icon] {
  color: #c00;
  font-size: 20px;
  padding: 0 10px 0 0;
}
#sbLineEditor #sbSegmentsModal .message,
#sbLineEditor #sbProductRuleAlert .message {
  display: block;
  text-align: left;
  border: none;
  margin: 0 0 0 7px;
}
#sbLineEditor #sbSegmentsModal .sbCustomSegmentsContainer,
#sbLineEditor #sbProductRuleAlert .sbCustomSegmentsContainer {
  height: 441px;
  overflow: auto;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments {
  margin-top: 0;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > thead > tr > th,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > thead > tr > th {
  padding-bottom: 0;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > tbody > tr > td,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > tbody > tr > td {
  text-align: initial;
  height: 30px;
  cursor: move;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > tbody > tr > td > [class^=sb-icon],
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > tbody > tr > td > [class^=sb-icon] {
  color: #0070d2;
  cursor: pointer;
  padding: 0 5px 0 0;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > tbody > tr > td .sf-icon-close,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > tbody > tr > td .sf-icon-close {
  color: #4d4d4d;
}
#sbLineEditor #sbFavoritesModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 600px;
}
#sbLineEditor #sbFavoritesModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbLineEditor #sbFavoritesModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbLineEditor #sbFavoritesModal > header > * {
  vertical-align: middle;
}
#sbLineEditor #sbFavoritesModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbLineEditor #sbFavoritesModal > header > h3 {
  color: #16325c;
}
#sbLineEditor #sbFavoritesModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbLineEditor #sbFavoritesModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbLineEditor #sbFavoritesModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbLineEditor #sbFavoritesModal.amendment {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #888;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalContentContainer i[class^=sf-icon]:hover {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment #sbCustomSegments > tbody > tr:first-of-type > td {
  padding-top: 14px;
}
#sbLineEditor #sbFavoritesModal.amendment #sbCustomSegments > tbody > tr > td {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn {
  background-color: #ffffff;
  color: #0070d2;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn:hover {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn:focus {
  outline: none;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  cursor: pointer;
  background-color: #005fb2;
}
#sbLineEditor #sbFavoritesModal.close {
  display: none;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors {
  text-align: left;
  padding: 5px 15px 0;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div {
  font-size: 12px;
  color: #c00;
  padding-bottom: 5px;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > span,
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > div {
  display: inline;
  vertical-align: middle;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > [class^=sb-icon] {
  color: #c00;
  font-size: 20px;
  padding: 0 10px 0 0;
}
#sbLineEditor #sbFavoritesModal .message {
  display: block;
  text-align: left;
  border: none;
  margin: 0 0 0 7px;
}
#sbLineEditor #sbFavoritesModal .sbCustomSegmentsContainer {
  height: 441px;
  overflow: auto;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments {
  margin-top: 0;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > thead > tr > th {
  padding-bottom: 0;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > tbody > tr > td {
  text-align: initial;
  height: 30px;
  cursor: move;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > tbody > tr > td > [class^=sb-icon] {
  color: #0070d2;
  cursor: pointer;
  padding: 0 5px 0 0;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > tbody > tr > td .sf-icon-close {
  color: #4d4d4d;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable > tbody > tr:hover {
  background: #ffffff;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable > tbody > tr > td {
  padding-top: 20px;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable > tbody > tr > td #sbFavoriteName {
  width: 300px;
}
#sbLineEditor #sbProductRuleAlert {
  min-height: auto;
}
#sbLineEditor #sbProductRuleAlert li {
  font-size: 14px;
}
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > thead > tr > th:first-of-type,
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
}
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > thead > tr > th:last-of-type,
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > tbody > tr > td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbMultiSegment .sbTable {
  margin-top: 10px;
}
#sbLineEditor .sbMultiSegment .sbTable .sbLineNumber > span {
  display: inline-block;
  vertical-align: middle;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpandCollapse > [class^="sb-icon-"] {
  font-size: 1.5em;
  color: #0070d2;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpandCollapse > :nth-of-type(2) {
  font-size: 1.3em;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpand {
  white-space: nowrap;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpand i {
  cursor: pointer;
  font-size: 14px;
  color: #0070d2;
  position: relative;
  top: 2px;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > tr.expanded > td {
  border-bottom: 0;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > .sbDetail > td {
  height: 30px;
  background-color: #f4f6f9;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > .sbDetail:not(.lastDetailRow) > td {
  border-bottom: 0;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > .sbDetail > td:nth-child(2) {
  text-align: right;
  padding-right: 40px;
}
#sbLineEditor .sbMultiSegment .sbTable > tfoot > tr > td:first-of-type {
  text-align: right;
}
#sbLineEditor .sbMultiSegment .sbTable > tfoot > tr > td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbStandard {
  padding-top: 40px;
}
#sbLineEditor .sbStandard.sbEmptyTable {
  padding-top: 0;
}
#sbLineEditor .sbStandard > h2 {
  padding-left: 15px;
}
#sbLineEditor .sbMultiSegment {
  padding-top: 15px;
}
#sbLineEditor .sbMultiSegment.sbEmptyTable {
  padding-top: 0;
}
#sbLineEditor .sbMultiSegment .sbSegmentedTableHeader {
  overflow: auto;
}
#sbLineEditor .sbMultiSegment .sbSegmentedTableHeader > h2 {
  padding-left: 15px;
  float: left;
}
#sbLineEditor .sbMultiSegment .sbDimensionHeader {
  margin: 0px 15px;
  clear: both;
}
#sbLineEditor .sbMultiSegment .sbDimensionHeader > h2,
#sbLineEditor .sbMultiSegment .sbDimensionHeader i {
  float: left;
}
#sbLineEditor .sbMultiSegment .sbDimensionHeader i {
  font-size: 12px;
  color: #0070d2;
  padding: 5px 0 0 5px;
  cursor: pointer;
}
#sbLineEditor .sbTooltip > .sbTooltipContent {
  display: none;
}
#sbLineEditor .sbMDQRight {
  float: right;
}
#sbLineEditor .sbMDQRight > .sbTooltip {
  width: 1%;
}
#sbLineEditor .sbGroupDragHandle {
  cursor: move;
}
#sbLineEditor .sbDraggedLine,
#sbLineEditor .sbDraggedDimension,
#sbLineEditor .sbDraggedSegment,
#sbLineEditor .sbDraggedGroup {
  color: #0070D2;
  font-size: 12px;
}
#sbLineEditor .sbDropRowHover {
  background: #F4F6F9;
}
#sbLineEditor .sbEmptyTableHover {
  padding-bottom: 22px;
}
#sbLineEditor .sbEmptyTableHover,
#sbLineEditor .sbEmptyGroupHover {
  border: 2px solid #0070d2;
  border-radius: 4px;
}
#sbLineEditor .sbGroup.sbGrouped.sbDropGroupHover {
  border: 3px solid #0070d2;
  border-radius: 4px;
}
#sbLineEditor a.sbDropDimensionHover {
  color: #fff;
  cursor: move;
  border-radius: 4px;
  background-color: #ffffff;
}
#sbLineEditor .sbPages {
  text-align: center;
  padding: 0;
  background: #fff;
}
#sbLineEditor .sbPages .sbBtn {
  float: none;
  display: inline-block;
}
#sbLineEditor .sbPages .sbDisplayedPage {
  color: #0070D2;
}
#sbLineEditor .sbDropPageHover {
  color: #fff;
  background-color: #0070d2;
}
#sbLineEditor th > .multiSegmentArrow {
  font-size: 1.2em !important;
}
#sbLineEditor th > .multiSegmentArrow:hover {
  cursor: pointer;
}
#sbLineEditor #sbHiddenContainer {
  display: none;
}
#sbLineEditor #sbTargetCustomerAmountWidget {
  width: 0px;
  float: right;
}
#sbLineEditor #sbTargetCustomerAmountWidget > .tcaModal {
  position: absolute;
  border-top: lightgray solid 1px;
  border-bottom: lightgray solid 1px;
  box-shadow: lightgray 0px 0px 10px 3px;
  padding: 16.5px;
  top: -1px;
  right: -45px;
  background-color: white;
  width: 332px;
  text-align: left;
}
#sbLineEditor #sbTargetCustomerAmountWidget > .tcaModal > #sbTCAErrorMessage {
  display: none;
  text-align: center;
  margin-top: 16px;
  color: #c00;
}
#sbLineEditor #sbTargetCustomerAmountWidget > .sbBtn.tcaBtn {
  position: absolute;
  top: 0px;
  right: -45px;
  margin: 8px;
  padding: 5px;
  height: initial;
}
#sbLineEditor #sbTargetCustomerAmountWidget > .sbBtn.tcaBtn > .sf-icon-close {
  top: -2px;
  font-size: 15px;
}
#sbLineEditor #sbTargetCustomerAmountWidget > #tcaInput {
  position: relative;
  float: right;
  width: 115px;
}
#sbLineEditor td.sbTargetCustomerAmountEditable > span {
  cursor: pointer;
}
#sbLineEditor td.sbTargetCustomerAmountSegmentEditable > span {
  cursor: pointer;
}
#sbLineEditor td.sbTargetCustomerAmountSegmentEditable > #sbTargetCustomerAmountWidget {
  height: 8px;
}
#sbLineEditor #sbTiersModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 80%;
}
#sbLineEditor #sbTiersModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbLineEditor #sbTiersModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbLineEditor #sbTiersModal > header > * {
  vertical-align: middle;
}
#sbLineEditor #sbTiersModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbLineEditor #sbTiersModal > header > h3 {
  color: #16325c;
}
#sbLineEditor #sbTiersModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbLineEditor #sbTiersModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbLineEditor #sbTiersModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbLineEditor #sbTiersModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer {
  padding: 15px;
  text-align: center;
  min-height: 100px;
  max-height: 400px;
  overflow: auto;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer input {
  text-align: left;
}
#sbLineEditor #sbTiersModal .dataCell {
  text-align: left;
}
#sbLineEditor #sbTiersModal #discountUnitSelect {
  margin-left: 10px;
  padding-left: 15px;
}
#sbLineEditor #sbTiersModal #discountScheduleName {
  padding-left: 30px;
}
#sbLineEditor #sbTiersModal #discountScheduleName input {
  min-width: 300px;
  margin-left: 10px;
  text-align: left;
  padding-left: 10px;
}
#sbLineEditor #sbTiersModal .sf-icon-error {
  color: #c00 !important;
}
#sbLineEditor #sbTiersModal #deleteAllCheckbox {
  text-align: center;
}
#sbLineEditor #sbTiersModal #discountUnitSelect {
  padding-right: 20px;
}
#sbLineEditor #sbTiersModal #errorMessage {
  text-align: left;
}
#sbLineEditor #sbTiersModal .hideInputBorders input {
  border: none;
  background: #fff;
}
#sbLineEditor #sbTiersModal .discountScheduleRow {
  text-align: left;
}
#sbLineEditor #sbTiersModal .discountScheduleHeader {
  text-align: left;
}
#sbLineEditor #sbTiersModal .addBottomBorder {
  border-bottom: 1px solid #d8dde6;
  text-align: center;
}
#sbLineEditor #sbTiersModal .discountScheduleLoader {
  margin-left: auto;
  margin-right: auto;
  margin-top: 20px;
}
.removeBoxShadow {
  box-shadow: none;
}
.addBoxShadow {
  box-shadow: 0px 0px 0px 15px #D1D4D8;
}
.sbLineEditorTooltip {
  padding: 12px;
}
.sbLineEditorTooltip table td {
  padding: 3px 2px;
}
.sbLineEditorTooltip table td:nth-child(2) {
  text-align: right;
}
.sbBtnTooltip {
  padding: 3px;
  background-color: #ffffff;
  color: #16325C;
  -webkit-box-shadow: 1px 1px 11px #D1D4D8;
  -moz-box-shadow: 1px 1px 11px #D1D4D8;
  box-shadow: 1px 1px 11px #D1D4D8;
}
#sbNewRelatedContent #sbNewRelatedContentOptions {
  margin: 0;
}
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset {
  border: 0;
  padding: 5px;
}
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset > label {
  margin-right: 10px;
  font-size: 12px;
  display: inline-block;
  width: 175px;
  text-align: right;
}
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset > input,
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset select {
  width: 200px;
}
#sbNewRelatedContent .sbPageBlockSection {
  background: none;
  border: none;
}
#sbProductConfigurator .sbConfigProductName {
  margin: 15px 0 0 15px;
  display: block;
}
#sbProductConfigurator .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbProductConfigurator .sbPageTitle .sbButtons {
  float: right;
}
#sbProductConfigurator .sbPageTitle .sbTools {
  margin-right: 10px;
  padding: 7px 0;
  font-size: 10px;
  float: right;
  transition: all 0.25s ease-in;
}
#sbProductConfigurator .sbPageTitle .sbTools > .sbTool {
  padding: 8px;
}
#sbProductConfigurator .sbPageTitle .sbToolSeparator {
  border-right: #d0d0d0;
  display: inline-block;
  height: 1px;
  width: 10px;
  float: left;
}
#sbProductConfigurator .sbPageTitle .sbBtn:disabled {
  color: #888888;
  cursor: default;
}
#sbProductConfigurator .sbPageTitle .sbBtn.sbAddOption {
  margin: 16px;
}
#sbProductConfigurator .sbAddOptionContainer .sbAddOption {
  border: 0;
  margin: 4px 0 4px 0;
}
#sbProductConfigurator .sbAddOptionContainer .sbAddOption:hover {
  background: none;
  color: #16325c;
  cursor: pointer;
}
#sbProductConfigurator header {
  padding: 15px 15px;
}
#sbProductConfigurator header.sbSection {
  border-bottom: 1px solid #d0d0d0;
  background: #f4f6f9;
}
#sbProductConfigurator header.sbFooter {
  margin: 0;
  border-top: #d0d0d0;
  background: #f4f6f9;
}
#sbProductConfigurator header.optionLookupMode {
  border: none;
  background: none;
}
#sbProductConfigurator header .sbTitleContainer {
  display: inline-block;
  padding-right: 50px;
  vertical-align: top;
}
#sbProductConfigurator header .sbTitleContainer > .sbFeatureInstructions {
  padding: 10px 0 0 0;
  font-size: 12px;
}
#sbProductConfigurator header .sbFeatureAdditionalInstructions {
  display: inline;
  float: right;
  font-size: 12px;
  padding-top: 3px;
}
#sbProductConfigurator .featureContent {
  font-size: 10px;
}
#sbProductConfigurator .sbTopConfigurationAttributes,
#sbProductConfigurator .sbBottomConfigurationAttributes {
  font-size: 12px;
  padding-top: 10px;
}
#sbProductConfigurator .sbTopConfigurationAttributes.sbPageBlockSection,
#sbProductConfigurator .sbBottomConfigurationAttributes.sbPageBlockSection {
  border: 0 ;
}
#sbProductConfigurator .sbTopConfigurationAttributes.sbPageBlockSection.sbBottom,
#sbProductConfigurator .sbBottomConfigurationAttributes.sbPageBlockSection.sbBottom {
  border-top: 1px solid #d0d0d0;
  padding-top: 30px;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbConfigAttributeColumn,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbConfigAttributeColumn {
  vertical-align: top;
}
#sbProductConfigurator .sbTopConfigurationAttributes label,
#sbProductConfigurator .sbBottomConfigurationAttributes label {
  padding: 5px;
}
#sbProductConfigurator .sbTopConfigurationAttributes td,
#sbProductConfigurator .sbBottomConfigurationAttributes td {
  vertical-align: middle;
}
#sbProductConfigurator .sbTopConfigurationAttributes input,
#sbProductConfigurator .sbBottomConfigurationAttributes input {
  margin-right: 30px;
}
#sbProductConfigurator .sbTopConfigurationAttributes input.hasDatepicker,
#sbProductConfigurator .sbBottomConfigurationAttributes input.hasDatepicker {
  width: 45%;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbLabelCol,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbLabelCol {
  padding-right: 10px;
  text-align: right;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbDataCol,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbDataCol {
  padding: 6px 0;
  text-align: left;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbDataCol > div > div,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbDataCol > div > div {
  padding-left: 5px;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbDataCol > div > .requiredConfigurationAttribute,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbDataCol > div > .requiredConfigurationAttribute {
  border-left: #c00 solid;
  padding-left: 2px;
}
#sbProductConfigurator .requiresConfiguration {
  border-left: #c00 solid;
}
#sbProductConfigurator .center {
  width: 100%;
  text-align: center;
  display: inline-block;
}
#sbProductConfigurator .sbSelectionColumn {
  width: 1%;
  cursor: pointer;
  white-space: nowrap;
  text-align: left;
}
#sbProductConfigurator .sbOptionsFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
  top: 91px;
}
#sbProductConfigurator .sbOptionsFilter.open {
  right: 0px;
  display: block;
}
#sbProductConfigurator .sbOptionsFilter > a {
  text-align: right;
  font-size: 12px;
}
#sbProductConfigurator .sbOptionsFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
#sbProductConfigurator .sbOptionsFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
#sbProductConfigurator .sbOptionsFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 12px;
}
#sbProductConfigurator .sbOptionsFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
#sbProductConfigurator .sbOptionsFilter fieldset input,
#sbProductConfigurator .sbOptionsFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
#sbProductConfigurator .sbOptionsFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
#sbProductConfigurator .sbOptionsFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
#sbProductConfigurator .sbOptionsFilter input {
  display: inline;
}
#sbProductConfigurator .sbOptionsFilter div > a {
  font-size: 12px;
}
#sbProductConfigurator .sbAddOptionsFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
  top: 91px;
}
#sbProductConfigurator .sbAddOptionsFilter.open {
  right: 0px;
  display: block;
}
#sbProductConfigurator .sbAddOptionsFilter > a {
  text-align: right;
  font-size: 12px;
}
#sbProductConfigurator .sbAddOptionsFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
#sbProductConfigurator .sbAddOptionsFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
#sbProductConfigurator .sbAddOptionsFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 12px;
}
#sbProductConfigurator .sbAddOptionsFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
#sbProductConfigurator .sbAddOptionsFilter fieldset input,
#sbProductConfigurator .sbAddOptionsFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
#sbProductConfigurator .sbAddOptionsFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
#sbProductConfigurator .sbAddOptionsFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
#sbProductConfigurator .sbAddOptionsFilter input {
  display: inline;
}
#sbProductConfigurator .sbAddOptionsFilter div > a {
  font-size: 12px;
}
#sbProductConfigurator .sbResults {
  margin: 14px 0 -8px 0;
  font-size: 12px;
}
#sbProductConfigurator .sbPageBlockSection {
  background: #ffffff;
  padding: 0;
}
#sbProductConfigurator .sbGroups {
  font-size: 14px;
  text-align: center;
  margin: 18px 15px;
  text-transform: uppercase;
  border-bottom: 1px solid #d0d0d0;
}
#sbProductConfigurator .sbGroups > a,
#sbProductConfigurator .sbGroups span {
  color: inherit;
  padding: 6px 16px;
  display: inline-block;
}
#sbProductConfigurator .sbGroups > a.selected,
#sbProductConfigurator .sbGroups span.selected {
  border-bottom: 2px solid #166bbf;
}
#sbProductConfigurator .sbGroups > a:hover,
#sbProductConfigurator .sbGroups span:hover {
  border-bottom: 2px solid #166bbf;
}
#sbProductConfigurator .sbTable {
  margin-top: 5px;
}
#sbProductConfigurator .sbTable > thead > tr > th:nth-child(2),
#sbProductConfigurator .sbTable > tbody > tr > td:nth-child(2) {
  width: 60px;
}
#sbProductConfigurator .sbTable > thead > tr > th {
  padding-right: 12px;
  padding-left: 12px;
}
#sbProductConfigurator .sbTable > tbody > tr > td {
  height: 49px;
  vertical-align: middle;
  padding: 0 12px;
}
#sbProductConfigurator .sbTable > tbody > tr > td [class^=sb-icon] {
  font-size: 12px;
  color: #888;
}
#sbProductConfigurator .sbTable > tbody > tr > td.right {
  text-align: right;
}
#sbProductConfigurator .sbTable > tbody > tr > td.sbQuantityCell {
  width: 75px;
  text-align: center;
}
#sbProductConfigurator .sbTable > tbody > tr > td.sbQuantityCell input {
  width: 100px;
  text-align: center;
}
#sbProductConfigurator .sbTable .sbCurrencyCell {
  text-align: right;
}
#sbProductConfigurator .sbTable > tbody tr:last-child > td {
  border-bottom: none;
}
#sbProductConfigurator .wizardConfigurator > table > tbody > tr:hover {
  background: #fff;
}
#sbProductConfigurator .sbLoadMore {
  position: absolute;
  height: 65px;
  top: 94%;
  width: 100%;
  text-align: center;
  font-size: 15px;
  padding-top: 15px;
  background: #ffffff;
  display: none;
}
#sbProductConfigurator .sbLoadMore.sbShowLoading {
  display: inline-block;
}
#sbProductConfigurator .sf-icon-warning {
  color: #5876a3;
  font-size: 20px;
}
#sbProductSearch .sbTable {
  font-size: 10px;
}
#sbProductSearch .sbTable > thead > tr > th:first-of-type,
#sbProductSearch .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbProductSearch .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbProductSearch .sbTools {
  float: right;
}
#sbProductSearch .sbPageBlockSection {
  background: none;
  margin: 0;
  padding: 0;
}
#sbProductSearch .sbPageTitle .sbTools {
  margin-right: 10px;
}
#sbProductSearch .sbPageTitle .sbTools > .sbTool {
  background: #ffffff;
  padding: 7px;
}
#sbProductSearch .sbTable > thead > tr > th:first-of-type,
#sbProductSearch .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
  text-align: left;
}
#sbProductSearch .sbTable .sbSelectionHeader {
  width: 1%;
}
#sbProductSearch .sbTable tbody.close > .sbGroupRow {
  display: none;
}
#sbProductSearch .sbTable tbody .sbGroupName {
  text-align: left;
  font-size: 12px;
  font-weight: bold;
}
#sbProductSearch .sbTable tbody .sbGroupNameRow {
  background-color: #f4f6f9;
  cursor: pointer;
}
#sbProductSearch .sbTable tbody .sbGroupNameRow i {
  font-size: 15px;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td {
  border-bottom: none;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages {
  font-size: 0.9em;
  margin-top: 10px;
  text-align: center;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons {
  vertical-align: middle;
  background-color: #ffffff;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn {
  padding-top: 6px;
  color: #0070d2;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn.sb-icon-left-dir,
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn.sb-icon-right-dir {
  font-size: 1.7em;
  padding-top: 3px;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn.disabled {
  background-color: #ffffff;
  color: #bebebe;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages .sbPageSelector {
  padding: 0 10px;
  display: inline-block;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages .sbPageSelector > input {
  width: 45px;
  text-align: center;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages:hover {
  background-color: #F4F6F9;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages:hover > td .sbPages > .sbButtons {
  background-color: #F4F6F9;
}
.sbProductFilter,
#sbGuidedModal.sbGuided {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
}
.sbProductFilter.open,
#sbGuidedModal.sbGuided.open {
  right: 0px;
  display: block;
}
.sbProductFilter > a,
#sbGuidedModal.sbGuided > a {
  text-align: right;
  font-size: 12px;
}
.sbProductFilter > header,
#sbGuidedModal.sbGuided > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbProductFilter > header > .sf-icon-close,
#sbGuidedModal.sbGuided > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbProductFilter fieldset,
#sbGuidedModal.sbGuided fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 12px;
}
.sbProductFilter fieldset > label,
#sbGuidedModal.sbGuided fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbProductFilter fieldset input,
#sbGuidedModal.sbGuided fieldset input,
.sbProductFilter fieldset select,
#sbGuidedModal.sbGuided fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbProductFilter .sbButtons,
#sbGuidedModal.sbGuided .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbProductFilter .sbButtons .clearFieldsLink,
#sbGuidedModal.sbGuided .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
.sbProductFilter div > a,
#sbGuidedModal.sbGuided div > a {
  text-align: right;
  display: flex;
  font-size: 12px;
}
.sbProductFilter fieldset > span > input[type=checkbox],
#sbGuidedModal.sbGuided fieldset > span > input[type=checkbox] {
  display: none;
}
.sbProductFilter label > span > input[type=checkbox],
#sbGuidedModal.sbGuided label > span > input[type=checkbox] {
  vertical-align: middle;
}
.sbProducts {
  transition: .02s;
}
#sbGuidedMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
#sbGuidedMask.close {
  display: none;
}
#sbGuidedModal.sbGuidedModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 480px;
}
#sbGuidedModal.sbGuidedModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbGuidedModal.sbGuidedModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbGuidedModal.sbGuidedModal > header > * {
  vertical-align: middle;
}
#sbGuidedModal.sbGuidedModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbGuidedModal.sbGuidedModal > header > h3 {
  color: #16325c;
}
#sbGuidedModal.sbGuidedModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbGuidedModal.sbGuidedModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbGuidedModal.sbGuidedModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbGuidedModal.sbGuidedModal.close {
  display: none;
}
#sbGuidedModal.sbGuidedModal > .sbFieldCon {
  text-align: left;
  overflow: auto;
}
#sbGuidedModal.sbGuidedModal fieldset {
  padding: 10px;
  border: 0;
  font-size: 1.4em;
}
#sbGuidedModal.sbGuidedModal fieldset > label {
  font-size: 10px;
  display: inline-block;
  padding: 0 0 5px 7px;
  vertical-align: middle;
}
#sbGuidedModal.sbGuidedModal fieldset > span {
  display: block;
}
#sbGuidedModal.sbGuidedModal fieldset > span > input[type=checkbox] {
  display: none;
}
#sbGuidedModal.sbGuidedModal fieldset input,
#sbGuidedModal.sbGuidedModal fieldset select {
  font-size: inherit !important;
  margin-left: 6px;
  vertical-align: middle;
  min-width: 100px;
}
#sbGuidedModal.sbGuidedModal fieldset > *[class^=sb-icon] {
  color: #888;
}
div.chatterFollow {
  white-space: nowrap;
}
.chatterFollow a {
  text-decoration: none;
  color: #000000;
  cursor: pointer;
}
.chatterFollow .followIcon {
  background-image: url(/img/feeds/follow_sprite.png);
  background-repeat: no-repeat;
  background-position: 0 0;
  width: auto;
  height: 20px;
  margin-top: 7px;
  margin-left: 3px;
}
.chatterFollow .checkIcon {
  background-image: url(/img/feeds/follow_sprite.png);
  background-repeat: no-repeat;
  background-position: 0 -27px;
  width: auto;
  height: 20px;
  margin-top: 7px;
  margin-left: 3px;
}
.chatterFollow .unfollowIcon {
  background-image: url(/img/feeds/follow_sprite.png);
  background-repeat: no-repeat;
  background-position: 0 -54px;
  width: auto;
  height: 20px;
  margin-top: 7px;
  margin-left: 3px;
}
.chatterFollow .hion {
  background-position: 0 -75px;
}
#sbSubscriptionSearch .sbTable {
  font-size: 10px;
}
#sbSubscriptionSearch .sbTable > thead > tr > th:first-of-type,
#sbSubscriptionSearch .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbSubscriptionSearch .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbSubscriptionSearch .sbTools {
  float: right;
}
#sbSubscriptionSearch .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbSubscriptionSearch .sbPageTitle .sbTools {
  margin-right: 10px;
  padding: 7px 0;
}
#sbSubscriptionSearch .sbPageTitle .sbTools > .sbTool {
  padding: 8px;
}
.sbSubscriptionFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
}
.sbSubscriptionFilter.open {
  right: 0px;
  display: block;
}
.sbSubscriptionFilter > a {
  text-align: right;
  font-size: 12px;
}
.sbSubscriptionFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbSubscriptionFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbSubscriptionFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 12px;
}
.sbSubscriptionFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbSubscriptionFilter fieldset input,
.sbSubscriptionFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbSubscriptionFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbSubscriptionFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
.sbSubscriptionFilter input {
  display: inline;
}
.sbSubscriptionFilter div > a {
  text-align: right;
  display: flex;
  font-size: 12px;
}
#sbCloneRelated,
#sbRefreshPrices,
#sbPreviewApprovals,
#sbSubmitOpportunity,
#sbRecallApprovals,
#sbListApprovals {
  background: #fff;
  color: #16325C;
  text-align: center;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
}
#sbCloneRelated .sbPageTitle,
#sbRefreshPrices .sbPageTitle,
#sbPreviewApprovals .sbPageTitle,
#sbSubmitOpportunity .sbPageTitle,
#sbRecallApprovals .sbPageTitle,
#sbListApprovals .sbPageTitle {
  text-align: left;
}
#sbCloneRelated .sbPageTitle h1,
#sbRefreshPrices .sbPageTitle h1,
#sbPreviewApprovals .sbPageTitle h1,
#sbSubmitOpportunity .sbPageTitle h1,
#sbRecallApprovals .sbPageTitle h1,
#sbListApprovals .sbPageTitle h1 {
  font-size: 20px;
  font-weight: 300;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
  color: #16325C;
}
#sbCloneRelated .sbPageTitle h2,
#sbRefreshPrices .sbPageTitle h2,
#sbPreviewApprovals .sbPageTitle h2,
#sbSubmitOpportunity .sbPageTitle h2,
#sbRecallApprovals .sbPageTitle h2,
#sbListApprovals .sbPageTitle h2 {
  font-size: 12px;
  color: #16325C;
}
#sbCloneRelated .sbPageTitle .sf-icon-copy:before,
#sbRefreshPrices .sbPageTitle .sf-icon-copy:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-copy:before,
#sbSubmitOpportunity .sbPageTitle .sf-icon-copy:before,
#sbRecallApprovals .sbPageTitle .sf-icon-copy:before,
#sbListApprovals .sbPageTitle .sf-icon-copy:before,
#sbCloneRelated .sbPageTitle .sf-icon-refresh:before,
#sbRefreshPrices .sbPageTitle .sf-icon-refresh:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-refresh:before,
#sbSubmitOpportunity .sbPageTitle .sf-icon-refresh:before,
#sbRecallApprovals .sbPageTitle .sf-icon-refresh:before,
#sbListApprovals .sbPageTitle .sf-icon-refresh:before,
#sbCloneRelated .sbPageTitle .sf-icon-approval:before,
#sbRefreshPrices .sbPageTitle .sf-icon-approval:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-approval:before,
#sbSubmitOpportunity .sbPageTitle .sf-icon-approval:before,
#sbRecallApprovals .sbPageTitle .sf-icon-approval:before,
#sbListApprovals .sbPageTitle .sf-icon-approval:before {
  margin-top: 10px;
  position: inherit;
}
#sbCloneRelated .sbPageTitle .sf-icon-post:before,
#sbRefreshPrices .sbPageTitle .sf-icon-post:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-post:before,
#sbSubmitOpportunity .sbPageTitle .sf-icon-post:before,
#sbRecallApprovals .sbPageTitle .sf-icon-post:before,
#sbListApprovals .sbPageTitle .sf-icon-post:before {
  position: inherit;
}
#sbCloneRelated .sbPageTitle .sf-icon-approval:before,
#sbRefreshPrices .sbPageTitle .sf-icon-approval:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-approval:before,
#sbSubmitOpportunity .sbPageTitle .sf-icon-approval:before,
#sbRecallApprovals .sbPageTitle .sf-icon-approval:before,
#sbListApprovals .sbPageTitle .sf-icon-approval:before {
  margin-top: 0px;
}
#sbCloneRelated .sbPageTitle .resize,
#sbRefreshPrices .sbPageTitle .resize,
#sbPreviewApprovals .sbPageTitle .resize,
#sbSubmitOpportunity .sbPageTitle .resize,
#sbRecallApprovals .sbPageTitle .resize,
#sbListApprovals .sbPageTitle .resize {
  padding: 2px 10px;
}
#sbCloneRelated .message,
#sbRefreshPrices .message,
#sbPreviewApprovals .message,
#sbSubmitOpportunity .message,
#sbRecallApprovals .message,
#sbListApprovals .message {
  padding: 10px;
  margin: 18px 24px;
}
#sbCloneRelated .message .messageText,
#sbRefreshPrices .message .messageText,
#sbPreviewApprovals .message .messageText,
#sbSubmitOpportunity .message .messageText,
#sbRecallApprovals .message .messageText,
#sbListApprovals .message .messageText {
  font-size: 14px;
}
#sbCloneRelated .message .messageText h4,
#sbRefreshPrices .message .messageText h4,
#sbPreviewApprovals .message .messageText h4,
#sbSubmitOpportunity .message .messageText h4,
#sbRecallApprovals .message .messageText h4,
#sbListApprovals .message .messageText h4 {
  padding: 0 4px;
  display: inline-block;
  font-size: 10px;
  font-weight: 300;
}
#sbCloneRelated .sbBtns,
#sbRefreshPrices .sbBtns,
#sbPreviewApprovals .sbBtns,
#sbSubmitOpportunity .sbBtns,
#sbRecallApprovals .sbBtns,
#sbListApprovals .sbBtns {
  font-size: 9px;
  border-radius: 0;
  vertical-align: top;
  float: right;
}
#sbCloneRelated .sbBtns .sbBtn,
#sbRefreshPrices .sbBtns .sbBtn,
#sbPreviewApprovals .sbBtns .sbBtn,
#sbSubmitOpportunity .sbBtns .sbBtn,
#sbRecallApprovals .sbBtns .sbBtn,
#sbListApprovals .sbBtns .sbBtn {
  border-radius: 0;
}
#sbCloneRelated .sbBtns .sbBtn:first-of-type,
#sbRefreshPrices .sbBtns .sbBtn:first-of-type,
#sbPreviewApprovals .sbBtns .sbBtn:first-of-type,
#sbSubmitOpportunity .sbBtns .sbBtn:first-of-type,
#sbRecallApprovals .sbBtns .sbBtn:first-of-type,
#sbListApprovals .sbBtns .sbBtn:first-of-type {
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
#sbCloneRelated .sbBtns .sbBtn:last-of-type,
#sbRefreshPrices .sbBtns .sbBtn:last-of-type,
#sbPreviewApprovals .sbBtns .sbBtn:last-of-type,
#sbSubmitOpportunity .sbBtns .sbBtn:last-of-type,
#sbRecallApprovals .sbBtns .sbBtn:last-of-type,
#sbListApprovals .sbBtns .sbBtn:last-of-type {
  border-left: 0;
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
#sbCloneRelated .sbGroup,
#sbRefreshPrices .sbGroup,
#sbPreviewApprovals .sbGroup,
#sbSubmitOpportunity .sbGroup,
#sbRecallApprovals .sbGroup,
#sbListApprovals .sbGroup {
  margin: 15px 15px;
  border: 1px solid #d0d0d0;
  border-radius: 3px;
}
#sbCloneRelated .sbGroup > header,
#sbRefreshPrices .sbGroup > header,
#sbPreviewApprovals .sbGroup > header,
#sbSubmitOpportunity .sbGroup > header,
#sbRecallApprovals .sbGroup > header,
#sbListApprovals .sbGroup > header {
  margin: 0;
  border: 0;
  padding: 10px 15px 5px;
  border-bottom: 1px solid #d0d0d0;
}
#sbCloneRelated .sbGroup .sbPageBlockSection,
#sbRefreshPrices .sbGroup .sbPageBlockSection,
#sbPreviewApprovals .sbGroup .sbPageBlockSection,
#sbSubmitOpportunity .sbGroup .sbPageBlockSection,
#sbRecallApprovals .sbGroup .sbPageBlockSection,
#sbListApprovals .sbGroup .sbPageBlockSection {
  padding-bottom: 6px;
  text-align: left;
}
#sbCloneRelated .sbGroup .sbPageBlockSection > h3,
#sbRefreshPrices .sbGroup .sbPageBlockSection > h3,
#sbPreviewApprovals .sbGroup .sbPageBlockSection > h3,
#sbSubmitOpportunity .sbGroup .sbPageBlockSection > h3,
#sbRecallApprovals .sbGroup .sbPageBlockSection > h3,
#sbListApprovals .sbGroup .sbPageBlockSection > h3 {
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
  font-weight: 300;
}
#sbCloneRelated .toggleButton,
#sbRefreshPrices .toggleButton,
#sbPreviewApprovals .toggleButton,
#sbSubmitOpportunity .toggleButton,
#sbRecallApprovals .toggleButton,
#sbListApprovals .toggleButton {
  float: right;
}
#sbCloneRelated .tableContainer,
#sbRefreshPrices .tableContainer,
#sbPreviewApprovals .tableContainer,
#sbSubmitOpportunity .tableContainer,
#sbRecallApprovals .tableContainer,
#sbListApprovals .tableContainer {
  display: none;
}
#sbCloneRelated .sbTable .rfHead,
#sbRefreshPrices .sbTable .rfHead,
#sbPreviewApprovals .sbTable .rfHead,
#sbSubmitOpportunity .sbTable .rfHead,
#sbRecallApprovals .sbTable .rfHead,
#sbListApprovals .sbTable .rfHead {
  background: #F4F6F9;
}
#sbCloneRelated .sbTable > thead > tr > th:first-of-type,
#sbRefreshPrices .sbTable > thead > tr > th:first-of-type,
#sbPreviewApprovals .sbTable > thead > tr > th:first-of-type,
#sbSubmitOpportunity .sbTable > thead > tr > th:first-of-type,
#sbRecallApprovals .sbTable > thead > tr > th:first-of-type,
#sbListApprovals .sbTable > thead > tr > th:first-of-type,
#sbCloneRelated .sbTable > tbody > tr > td:first-of-type,
#sbRefreshPrices .sbTable > tbody > tr > td:first-of-type,
#sbPreviewApprovals .sbTable > tbody > tr > td:first-of-type,
#sbSubmitOpportunity .sbTable > tbody > tr > td:first-of-type,
#sbRecallApprovals .sbTable > tbody > tr > td:first-of-type,
#sbListApprovals .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
}
#sbCloneRelated .sbTable > thead > tr > th:last-of-type,
#sbRefreshPrices .sbTable > thead > tr > th:last-of-type,
#sbPreviewApprovals .sbTable > thead > tr > th:last-of-type,
#sbSubmitOpportunity .sbTable > thead > tr > th:last-of-type,
#sbRecallApprovals .sbTable > thead > tr > th:last-of-type,
#sbListApprovals .sbTable > thead > tr > th:last-of-type,
#sbCloneRelated .sbTable > tbody > tr > td:last-of-type,
#sbRefreshPrices .sbTable > tbody > tr > td:last-of-type,
#sbPreviewApprovals .sbTable > tbody > tr > td:last-of-type,
#sbSubmitOpportunity .sbTable > tbody > tr > td:last-of-type,
#sbRecallApprovals .sbTable > tbody > tr > td:last-of-type,
#sbListApprovals .sbTable > tbody > tr > td:last-of-type {
  padding-right: 15px;
}
#sbCloneRelated .sbTable > tbody > tr:last-of-type > td,
#sbRefreshPrices .sbTable > tbody > tr:last-of-type > td,
#sbPreviewApprovals .sbTable > tbody > tr:last-of-type > td,
#sbSubmitOpportunity .sbTable > tbody > tr:last-of-type > td,
#sbRecallApprovals .sbTable > tbody > tr:last-of-type > td,
#sbListApprovals .sbTable > tbody > tr:last-of-type > td {
  border-bottom: none;
}
#sbCloneRelated .sbTable > thead > tr > th,
#sbRefreshPrices .sbTable > thead > tr > th,
#sbPreviewApprovals .sbTable > thead > tr > th,
#sbSubmitOpportunity .sbTable > thead > tr > th,
#sbRecallApprovals .sbTable > thead > tr > th,
#sbListApprovals .sbTable > thead > tr > th {
  height: 24.5px;
}
#sbCloneRelated .sbTable > tbody > tr > td,
#sbRefreshPrices .sbTable > tbody > tr > td,
#sbPreviewApprovals .sbTable > tbody > tr > td,
#sbSubmitOpportunity .sbTable > tbody > tr > td,
#sbRecallApprovals .sbTable > tbody > tr > td,
#sbListApprovals .sbTable > tbody > tr > td {
  padding: 4.9px 9.8px;
  height: 24.5px;
  vertical-align: middle;
  text-align: left;
}
#sbCloneRelated .sbTable > tfoot > tr > td,
#sbRefreshPrices .sbTable > tfoot > tr > td,
#sbPreviewApprovals .sbTable > tfoot > tr > td,
#sbSubmitOpportunity .sbTable > tfoot > tr > td,
#sbRecallApprovals .sbTable > tfoot > tr > td,
#sbListApprovals .sbTable > tfoot > tr > td {
  text-align: left;
  padding-top: 4.9px;
  padding-bottom: 4.9px;
  padding-left: 15px;
  height: 19.6px;
}
#sbCloneRelated .sbTable tbody > tr:hover,
#sbRefreshPrices .sbTable tbody > tr:hover,
#sbPreviewApprovals .sbTable tbody > tr:hover,
#sbSubmitOpportunity .sbTable tbody > tr:hover,
#sbRecallApprovals .sbTable tbody > tr:hover,
#sbListApprovals .sbTable tbody > tr:hover {
  background: none;
}
#sbFavoritesManager .sbPageTitle .sbTools {
  margin-right: 10px;
}
#sbFavoritesManager .sbPageTitle .sbTools > .sbTool {
  background: #ffffff;
  padding: 7px;
}
#sbFavoritesManager .topMsg {
  text-align: center;
  display: block;
  padding: 32px;
}
#sbFavoritesManager .botMsg {
  text-align: center;
  display: block;
}
#sbFavoritesManager .sbTable > thead > tr > th:first-of-type,
#sbFavoritesManager .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
  text-align: left;
}
#sbFavoritesManager .sbTable .sbSelectionHeader {
  width: 1%;
}
#sbFavoritesManager .sbTable .sbFavoriteHeader {
  width: 160px;
}
#sbFavoritesManager .sbTable .sbDescription {
  width: 50%;
}
#sbFavoritesManager .sbTable tbody tr td {
  vertical-align: middle;
}
#sbFavoritesManager .sbTable tbody tr td i {
  color: #0070D2;
}
#sbFavoritesManager .sbTable tbody tr td i:hover {
  color: #16325C;
  cursor: pointer;
}
#sbFavoritesManager #sbFavoritesManagerMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
#sbFavoritesManager #sbFavoritesManagerMask.close {
  display: none;
}
#sbFavoritesManager #sbFavoritesManagerModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  min-height: 160px;
  max-width: 400px;
}
#sbFavoritesManager #sbFavoritesManagerModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > * {
  vertical-align: middle;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > h3 {
  color: #16325c;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer ul {
  -webkit-padding-end: 0px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer .sbTable .sbActions {
  width: 1%;
  text-align: left;
  white-space: nowrap;
}
#sbFavoritesManager .form-control {
  display: block;
  width: 100%;
  height: 34px;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
}
#sbFavoritesManager .sbValidationErrors {
  font-size: 12px;
  padding: 5px 15px;
  display: block;
  text-align: left;
  color: #c00;
}
#sbFavoritesManager .invalid {
  border-color: #c00;
}
#sbFavoritesManager .dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  font-size: 14px;
  text-align: left;
  list-style: none;
  background-color: #fff;
  border: 1px solid rgba(0, 0, 0, 0.15);
  border-radius: 4px;
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  background-clip: padding-box;
}
#sbFavoritesManager .dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.42857143;
  color: #333;
  white-space: nowrap;
}
#sbFavoritesManager .dropdown-menu > li > a:hover,
#sbFavoritesManager .dropdown-menu > li > a:focus {
  color: #262626;
  text-decoration: none;
  background-color: #f5f5f5;
}
#sbFavoritesManager .dropdown-menu > .active > a,
#sbFavoritesManager .dropdown-menu > .active > a:hover,
#sbFavoritesManager .dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  background-color: #337ab7;
  outline: 0;
}
#sbBlockPrice {
  background: #fff;
  color: #16325C;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
  padding-top: 10px;
  padding-bottom: 10px;
}
#sbBlockPrice #sbPriceBookGroup {
  display: inline-block;
}
#sbBlockPrice #sbClonePriceBookGroup {
  display: inline-block;
  padding-left: 100px;
}
#sbBlockPrice .sbPriceBookText {
  padding: 10px;
}
#sbBlockPrice .sbCloneFromPriceBook {
  margin-left: 15px;
  padding-bottom: 4px;
}
#sbBlockPrice .sbPriceBookSelect {
  padding-bottom: 2px;
}

/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImZvbnRzLmxlc3MiLCJ0eXBvZ3JhcGh5Lmxlc3MiLCJidXR0b25zLmxlc3MiLCJzZmRjLmxlc3MiLCJkaWFsb2dzLmxlc3MiLCJsYXlvdXQubGVzcyIsImZvcm1zLmxlc3MiLCJtaXhpbnMubGVzcyIsImRhdGVQaWNrZXIubGVzcyIsInRhYmxlcy5sZXNzIiwiZHJvcGRvd25zLmxlc3MiLCJpY29ucy5sZXNzIiwiYmFzZS5sZXNzIiwidmFyaWFibGVzLmxlc3MiLCIuLi8uLi9hZG1pbi9zZXR0aW5ncy9hcHBTZXR0aW5ncy5sZXNzIiwiLi4vLi4vYWRtaW4vc2V0dGluZ3MvdGhlbWVTZXR0aW5ncy5sZXNzIiwiLi4vLi4vYWRtaW4vdHJhbnNsYXRlLmxlc3MiLCIuLi8uLi9hc3NldHMvYXNzZXRMb29rdXAubGVzcyIsIi4uLy4uL2NvbnRyYWN0cy9zZWxlY3RDb250cmFjdC5sZXNzIiwiLi4vLi4vY29udHJhY3RzL2FtZW5kQ29udHJhY3QubGVzcyIsIi4uLy4uL2RvY2dlbi9wcmV2aWV3Lmxlc3MiLCIuLi8uLi9xdW90ZXMvaW1wb3J0TGluZXMubGVzcyIsIi4uLy4uL3F1b3Rlcy9saW5lRWRpdG9yLmxlc3MiLCIuLi8uLi9xdW90ZXMvbmV3UmVsYXRlZENvbnRlbnQubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RDb25maWd1cmF0b3IubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RMb29rdXAubGVzcyIsIi4uLy4uL3N1YnNjcmlwdGlvbnMvc3Vic2NyaXB0aW9uTG9va3VwLmxlc3MiLCIuLi8uLi9jbG9uZS9jbG9uZS5sZXNzIiwiLi4vLi4vZmF2b3JpdGVzL2Zhdm9yaXRlc01hbmFnZXIubGVzcyIsIi4uLy4uL2Jsb2NrUHJpY2UvYmxvY2tQcmljZS5sZXNzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBO0VBQ0UsYUFBYSxpQkFBYjtFQUNBLFNBQVMsMkdBQTJHLE9BQU8sY0FDbEgsMEdBQTBHLE9BQU8sT0FEMUg7RUFFQSxrQkFB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QkFBQTtFQUNBLGNBQUE7RUFDQSxlQUFBO0VBQ0EsZUFBQTtFQUNBLGdCQUFBO0VBQ0EsZ0JBQUE7RUFDQSxzQkFBQTtFQUNBLHFDQUFBO0VBQ0Esa0JBQUE7RUFDQSwyQ0FBQTtFQUNBLDRCQUFBOztBQXBJSixtQkF1SUUsZUFBZSxLQUFLO0VBQ2xCLGNBQUE7RUFDQSxpQkFBQTtFQUNBLFdBQUE7RUFDQSxtQkFBQTtFQUNBLHVCQUFBO0VBQ0EsV0FBQTtFQUNBLG1CQUFBOztBQTlJSixtQkFnSkUsZUFBZSxLQUFLLElBQUc7QUFoSnpCLG1CQWlKRSxlQUFlLEtBQUssSUFBRztFQUNyQixjQUFBO0VBQ0EscUJBQUE7RUFDQSx5QkFBQTs7QUFwSkosbUJBdUpFLGVBQWUsVUFBVTtBQXZKM0IsbUJBd0pFLGVBQWUsVUFBVSxJQUFHO0FBeEo5QixtQkF5SkUsZUFBZSxVQUFVLElBQUc7RUFDMUIsV0FBQTtFQUNBLHFCQUFBO0VBQ0EseUJBQUE7RUFDQSxVQUFBOztBQzdKSjtFQUVDLGdCQUFBO0VBQ0EsY0FBQTtFQUNBLGFoQlFRLG1CQUFtQiw4QmdCUjNCO0VBQ0EsaUJBQUE7RUFDRyxvQkFBQTs7QUFOSixhQVFDO0VBQ08scUJBQUE7O0FBVFIsYUFZSTtFQUNJLHFCQUFBO0VBQ0EsbUJBQUE7O0FBZFIsYUFpQkk7RUFDSSxhQUFBOztBQWxCUixhQXFCQztFQUNJLGlCQUFBO0VBQ0EsbUJBQUE7O0FBdkJMLGFBMEJDO0VBQ0ksbUJBQUEiLCJzb3VyY2VzQ29udGVudCI6WyJAZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6IFwiU2FsZXNmb3JjZSBTYW5zXCI7XG4gIHNyYzogdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1MaWdodC53b2ZmMlwiKSBmb3JtYXQoXCJ3b2ZmMlwiKSxcbiAgICAgICB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUxpZ2h0LndvZmZcIikgZm9ybWF0KFwid29mZlwiKTtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXdlaWdodDogMzAwO1xufVxuQGZvbnQtZmFjZSB7XG4gIGZvbnQtZmFtaWx5OiBcIlNhbGVzZm9yY2UgU2Fuc1wiO1xuICBzcmM6IHVybChcImh0dHBzOi8vd3d3Mi5zZmRjc3RhdGljLmNvbS9zeXN0ZW0vc2hhcmVkL2NvbW1vbi9hc3NldHMvZm9udHMvU2FsZXNmb3JjZVNhbnMvU2FsZXNmb3JjZVNhbnMtUmVndWxhci53b2ZmMlwiKSBmb3JtYXQoXCJ3b2ZmMlwiKSxcbiAgICAgICB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLVJlZ3VsYXIud29mZlwiKSBmb3JtYXQoXCJ3b2ZmXCIpO1xuICBmb250LXN0eWxlOiBub3JtYWw7XG4gIGZvbnQtd2VpZ2h0OiA0MDA7XG59XG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6IFwiU2FsZXNmb3JjZSBTYW5zXCI7XG4gIHNyYzogdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1JdGFsaWMud29mZjJcIikgZm9ybWF0KFwid29mZjJcIiksXG4gICAgICAgdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1JdGFsaWMud29mZlwiKSBmb3JtYXQoXCJ3b2ZmXCIpO1xuICBmb250LXN0eWxlOiBpdGFsaWM7XG4gIGZvbnQtd2VpZ2h0OiA0MDA7XG59XG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6IFwiU2FsZXNmb3JjZSBTYW5zXCI7XG4gIHNyYzogdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1Cb2xkLndvZmYyXCIpIGZvcm1hdChcIndvZmYyXCIpLFxuICAgICAgIHVybChcImh0dHBzOi8vd3d3Mi5zZmRjc3RhdGljLmNvbS9zeXN0ZW0vc2hhcmVkL2NvbW1vbi9hc3NldHMvZm9udHMvU2FsZXNmb3JjZVNhbnMvU2FsZXNmb3JjZVNhbnMtQm9sZC53b2ZmXCIpIGZvcm1hdChcIndvZmZcIik7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgZm9udC13ZWlnaHQ6IDcwMDtcbn1cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogXCJTYWxlc2ZvcmNlIFNhbnNcIjtcbiAgc3JjOiB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUJvbGRJdGFsaWMud29mZjJcIikgZm9ybWF0KFwid29mZjJcIiksXG4gICAgICAgdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1Cb2xkSXRhbGljLndvZmZcIikgZm9ybWF0KFwid29mZlwiKTtcbiAgZm9udC1zdHlsZTogaXRhbGljO1xuICBmb250LXdlaWdodDogNzAwO1xufVxuIiwiLnNiIHtcbiAgaDEsaDIsaDMsaDQsaDUsaDYge1xuICAgIGNvbG9yOiBAc2JIZWFkZXJGb250Q29sb3I7XG4gICAgZm9udC13ZWlnaHQ6IDMwMDtcbiAgICBmb250LWZhbWlseTogaW5oZXJpdDtcbiAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgbWFyZ2luOiAwO1xuICAgIHBhZGRpbmc6IDA7XG4gIH1cblxuICBoMSB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDIuNDtcbiAgfVxuXG4gIGgyIHtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS44O1xuICB9XG5cbiAgaDMge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjY7XG4gIH1cbiAgaDQge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG4gIH1cblxuICBoNSB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgfVxuXG4gIGg2IHtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMC45O1xuICB9XG5cbiAgLy8gSHlwZXJsaW5rcyAtIHRoZSBkZWZhdWx0IHN0eWxlXG4gIGEsIGE6dmlzaXRlZCwgYTpob3ZlciwgYTphY3RpdmUge1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgfVxuXG4gIC8vIEh5cGVybGlua3MgLSBjb2xvciBjaGFuZ2Ugd2hlbiBob3ZlcmVkXG4gIGE6aG92ZXIge1xuICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgfVxufVxuIiwiQHNiQnRuQm9yZGVyUmFkaXVzOiA0cHg7XG5Ac2JCdG5QYWRkaW5nOiA4cHggMTJweDtcblxuLypcbkJ1dHRvblxuXG5BIHN0YW5kYXJkLCBzdGFuZGFsb25lIGJ1dHRvblxuXG4qL1xuLnNiQnRuIHtcbiAgcGFkZGluZzogQHNiQnRuUGFkZGluZztcbiAgYmFja2dyb3VuZDogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICBjb2xvcjogQHNiR3JvdXBCdG5Gb250Q29sb3I7XG4gIGN1cnNvcjogcG9pbnRlcjtcbiAgYm9yZGVyOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgYm9yZGVyLXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICBmb250LXdlaWdodDogNDAwO1xuICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS40O1xuICBtYXJnaW46IDA7XG4gIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgaGVpZ2h0OiAzNnB4O1xuXG4gICY6Zm9jdXMge1xuICAgIG91dGxpbmUtb2Zmc2V0OiAtMnB4O1xuICAgIG91dGxpbmUtd2lkdGg6IDJweDtcbiAgfVxuXG4gICY6aG92ZXIge1xuICAgIGJhY2tncm91bmQ6IEBzYkdyb3VwQnRuSG92ZXJCZ0NvbG9yO1xuICB9XG5cbiAgJi5zYlByaW1hcnlBY3Rpb24ge1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgIGNvbG9yOiBAc2JQcmltYXJ5QnRuRm9udENvbG9yO1xuICAgICY6aG92ZXIge1xuICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkhvdmVyQmdDb2xvcjtcbiAgICB9XG4gIH1cblxuICAmLnNiRW5hYmxlZCB7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgYm9yZGVyLWNvbG9yOiBAc2JQcmltYXJ5QnRuQmdDb2xvcjtcbiAgICBjb2xvcjogQHNiUHJpbWFyeUJ0bkZvbnRDb2xvcjtcbiAgICAmOmhvdmVyIHtcbiAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlByaW1hcnlCdG5Ib3ZlckJnQ29sb3I7XG4gICAgfVxuICB9XG59XG5cbi8vIEEgY29udGFpbmVyL3JvdyBvZiBidXR0b25zLCBhIGxhIGEgYnV0dG9uIFwiYmFyXCJcbi5zYkJ1dHRvbnMge1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIGJhY2tncm91bmQ6IEBzYkhlYWRlckJnQ29sb3I7XG4gIHBhZGRpbmc6IDdweCAwIDdweDtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xufVxuXG4vLyBCdXR0b25zIHdpdGhpbiBhIGJ1dHRvbiBjb250YWluZXJcbi5zYkJ1dHRvbnMgPiAuc2JCdG4sIC5zYkJ1dHRvbnMgPiBkaXYgPiAuc2JCdG4sXG4uc2JQYWdlQnV0dG9ucyA+IC5zYkJ0biwgLnNiUGFnZUJ1dHRvbnMgPiBkaXYgPiAuc2JCdG4ge1xuICBib3JkZXItdG9wOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gIGJvcmRlci1yaWdodDogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gIGJvcmRlci1sZWZ0OiAwO1xuICBib3JkZXItcmFkaXVzOiAwO1xuICBmbG9hdDogbGVmdDsgLy8gdGhpcyByZW1vdmVzIHdoaXRlc3BhY2UgaW4gYmV0d2VlbiBidXR0b25zXG5cbiAgJi5zYlByaW1hcnlBY3Rpb24ge1xuICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICB9XG5cbiAgLy8gRmlyc3QgYnV0dG9uIHdpdGhpbiBhIGJ1dHRvbiBjb250YWluZXJcbiAgJjpmaXJzdC1vZi10eXBlIHtcbiAgICBib3JkZXItbGVmdDogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgYm9yZGVyLXRvcC1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICAmLnNiUHJpbWFyeUFjdGlvbiB7XG4gICAgICBib3JkZXItbGVmdDogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgfVxuICB9XG5cbiAgLy8gTGFzdCBidXR0b24gd2l0aGluIGEgYnV0dG9uIGNvbnRhaW5lclxuICAmOmxhc3Qtb2YtdHlwZSB7XG4gICAgYm9yZGVyLXRvcC1yaWdodC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICBib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICB9XG59XG5cbi8vIFRoZSBjZW50ZXJlZCBjb250YWluZXIgd2l0aGluIGEgQnV0dG9uIGNvbnRhaW5lclxuLnNiQnV0dG9ucyA+IC5jZW50ZXIsXG4uc2JQYWdlQnV0dG9ucyA+IC5jZW50ZXIge1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG59XG5cbi8vIFBhZ2UgYnV0dG9ucyB0YWtlIHVwIHRoZSB3aG9sZSB3aWR0aFxuLnNiUGFnZUJ1dHRvbnM6ZXh0ZW5kKCAuc2JCdXR0b25zICkge1xuICB3aWR0aDogMTAwJTtcbiAgYm9yZGVyLXRvcDogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuXG4gICYuYm90dG9tIHtcbiAgICB3aWR0aDogYXV0bztcbiAgICBwb3NpdGlvbjogZml4ZWQ7XG4gICAgYm90dG9tOiAwcHg7XG4gICAgbGVmdDogMTBweDtcbiAgICByaWdodDogMTBweDtcbiAgICBib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICBkaXNwbGF5OiBub25lOyAvLyBpbmRpdmlkdWFsIHBhZ2VzIHNob3VsZCAoZHluYW1pY2FsbHkpIHNob3cgaWYgbmVlZGVkXG4gIH1cblxuICAmLmlubGluZSB7XG4gICAgYmFja2dyb3VuZDogQHNiSGVhZGVyQmdDb2xvcjtcbiAgICBib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICBtYXJnaW4tdG9wOiA4MHB4O1xuICB9XG59XG5cbi5zYlBhZ2VUaXRsZSA+IC5zYlBhZ2VCdXR0b25zIHtcbiAgYm9yZGVyOiAwO1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIHdpZHRoOiBhdXRvO1xuICBmbG9hdDogcmlnaHQ7XG59XG5cbi8vIEEgY29udGFpbmVyL3JvdyBvZiB0b29sc1xuLnNiVG9vbHMge1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG59XG5cbi8vIEEgc2luZ2xlIHRvb2wgaW5zaWRlIHRoZSBjb250YWluZXIgb2YgdG9vbHNcbi5zYlRvb2xzID4gLnNiVG9vbCB7XG4gIGJvcmRlci1sZWZ0OiAwO1xuICBib3JkZXItcmFkaXVzOiAwO1xuICBmbG9hdDogbGVmdDtcblxuICA+IC5zYi1pY29uLXRyaWFuZ2xlLWRvd24ge1xuICAgIG1hcmdpbi1sZWZ0OiAtNXB4O1xuICB9XG5cbiAgJjpub3QoLm5nLWhpZGUpOm5vdCguc2JCdG5DbGVhcik6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgYm9yZGVyLWxlZnQ6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgIGJvcmRlci10b3AtbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICBib3JkZXItYm90dG9tLWxlZnQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIH1cblxuICAmOm5vdCgubmctaGlkZSk6bGFzdC1vZi10eXBlIHtcbiAgICBib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIH1cbn1cblxuLy8gQSBzaW5nbGUgdG9vbC9idXR0b24gaW4gYSB0b29sYmFyXG4uc2JUb29sIHtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICBib3JkZXI6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICBib3JkZXItcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIHBhZGRpbmc6IDVweCA3cHg7XG4gIGNvbG9yOiBAc2JHcm91cEJ0bkZvbnRDb2xvcjtcbiAgcG9zaXRpb246IHJlbGF0aXZlO1xuICBjdXJzb3I6IHBvaW50ZXI7XG5cbiAgLyogdGhlIGRvd24gdHJpYW5nbGUgaW4gYSB0b29sICovXG4gID4gLnNiLWljb24tZG93bi1kaXIge1xuICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgfVxuXG4gIC8vIHRoZSBcImFjdGl2ZVwiIHN0YXRlIG9mIGEgdG9vbCwgaS5lLiBpdCB3YXMgY2xpY2tlZCBhbmQgbm93IFwiYWN0aXZlXCJcbiAgJi5hY3RpdmUge1xuICAgIGJhY2tncm91bmQ6IEBzYkdyb3VwQnRuRm9udENvbG9yO1xuICAgIGNvbG9yOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gIH1cblxuICAmOmhvdmVyIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JHcm91cEJ0bkhvdmVyQmdDb2xvcjtcbiAgICBjb2xvcjogQHNiR3JvdXBCdG5Ib3ZlckZvbnRDb2xvcjtcbiAgfVxuXG4gICY6Zm9jdXMge1xuICAgIG91dGxpbmUtb2Zmc2V0OiAtMnB4O1xuICAgIG91dGxpbmUtd2lkdGg6IDJweDtcbiAgfVxufVxuXG4vLyBhIHRvb2wgd2l0aCBhIHBvcHVwIG1lbnVcbi5zYlRvb2wgPiBtZW51IHtcbiAgcG9zaXRpb246IGFic29sdXRlO1xuICByaWdodDogLTFweDtcbiAgdG9wOiAxNnB4O1xuICBmb250LXdlaWdodDogbm9ybWFsO1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gIHBhZGRpbmc6IDhweCAxNHB4O1xuICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICBib3JkZXItcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiAwO1xuICBib3JkZXI6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICBkaXNwbGF5OiBub25lO1xuICB6LWluZGV4OiA0OyAgLy8gdW5kZXIgZml4ZWQgcGFnZSBoZWFkZXJcbiAgdGV4dC1hbGlnbjogbGVmdDtcblxuICAmLmR0IHtcbiAgICB0b3A6IDIwcHg7XG4gICAgbWF4LWhlaWdodDogMzAwcHg7XG4gICAgb3ZlcmZsb3c6IGF1dG87XG4gIH1cblxuICAvLyBhIGhlYWRlciByb3cvdGl0bGUgb2YgdGhlIG1lbnVcbiAgJiA+IGhlYWRlciB7XG4gICAgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtcbiAgICBjb2xvcjogIzc3NztcbiAgICBtYXJnaW4tYm90dG9tOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIH1cblxuICAvLyBhIGljb24gaW4gdGhlIG1lbnVcbiAgKltjbGFzc149c2ItaWNvbl0ge1xuICAgIG1hcmdpbi1yaWdodDogNnB4O1xuICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgY29sb3I6ICM3Nzc7XG4gIH1cbn1cblxuLy8gdGhlIFwib3BlblwiIHN0YXRlIG9mIHRoZSBtZW51IG9mIGEgdG9vbFxuLnNiVG9vbC5vcGVuID4gbWVudSB7XG4gIGRpc3BsYXk6IGJsb2NrO1xufVxuXG4vLyB0aGUgbGlzdCBvZiBpdGVtcyBpbiB0aGUgdG9vbCdzIG1lbnVcbi5zYlRvb2wgPiBtZW51IHVsIHtcbiAgbGlzdC1zdHlsZTogbm9uZTtcbiAgcGFkZGluZzogMDtcbiAgbWFyZ2luOiAwO1xuXG4gIC8vIGEgaXRlbSBpbiB0aGUgbGlzdCBvZiB0aGUgdG9vbCdzIG1lbnVcbiAgJiA+IGxpIHtcbiAgICBwYWRkaW5nOiAzcHggM3B4IDNweCAwcHg7XG5cbiAgICAmID4gYSB7XG4gICAgICBkaXNwbGF5OiBibG9jaztcbiAgICB9XG5cbiAgICAvLyB0aGUgY2hlY2ttYXJrIG9mIGVhY2ggaXRlbVxuICAgIC5zYi1pY29uLW9rIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuXG4gICAgLy8gdGhlIGNoZWNrbWFyayBvZiB0aGUgc2VsZWN0ZWQgaXRlbVxuICAgICYuc2VsZWN0ZWQgLnNiLWljb24tb2sge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgZmxvYXQ6IHJpZ2h0O1xuICAgICAgbWFyZ2luLXJpZ2h0OiAwO1xuICAgIH1cbiAgfVxufVxuXG4vLyBhIHRvb2wgbWVudSB3aXRoIG11bHRpcGxlIGhlYWRlciBzZWN0aW9uc1xuLnNiVG9vbCA+IG1lbnUubXVsdGkgPiBoZWFkZXI6bGFzdC1vZi10eXBlIHtcbiAgbWFyZ2luLXRvcDogMTZweDtcbn1cbi8vIGEgdG9vbCBtZW51IHdpdGggbXVsdGlwbGUgbGlzdHMgIChyZXZpc2l0IHRoaXMhKVxuLnNiVG9vbCA+IG1lbnUubXVsdGkgPiB1bDpsYXN0LW9mLXR5cGUgbGkge1xuICBtaW4td2lkdGg6IDEzMHB4O1xufVxuXG4vLyBhIG1lbnUgbGluayBhY2Nlc3NlZCBmcm9tIHRoZSBhcnJvd1xuLnNiIG1lbnUgYXtcbiAgY29sb3I6QHNiR3JvdXBCdG5Gb250Q29sb3I7XG4gICY6aG92ZXIge1xuICAgIGNvbG9yOiBAc2JHcm91cEJ0bkhvdmVyRm9udENvbG9yO1xuICB9XG59XG4iLCIvLyBBbGwgc2FsZXNmb3JjZSBzdHlsZS9lbGVtZW50IG92ZXJyaWRlc1xuXG4jYm9keUNlbGwge1xuICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gIG92ZXJmbG93OiBoaWRkZW47XG4gIHBhZGRpbmc6IDBweDtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICB3aWR0aDogMTAwJTtcbiAgbWluLWhlaWdodDogNTAwcHg7XG59XG5cbi8vIGZvciBcInNldHVwXCIgcGFnZXMsIGUuZy4gRWRpdFNldHRpbmdzXG4jYm9keURpdl9zZXR1cCA+IC5vdXRlciB7XG4gIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3IgIWltcG9ydGFudDtcbiAgLm9MZWZ0IHtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JIZWFkZXJCZ0NvbG9yICFpbXBvcnRhbnQ7XG4gIH1cbn1cblxuI3NpZGViYXJDZWxsLnNpZGViYXJDb2xsYXBzZWQge1xuICBwYWRkaW5nLWxlZnQ6IDA7XG5cbiAgKyAjYm9keUNlbGwge1xuICAgIG1hcmdpbi1sZWZ0OiAtMXB4O1xuICB9XG59XG5cbiNNb3JlVGFic19UYWIgPiAjTW9yZVRhYnNfTGlzdCB7XG4gIHotaW5kZXg6IDEwOyAgLy8gbXVzdCBiZSBsYXJnZXIgdGhhbiBmaXhlZCBwYWdlIGhlYWRlciAodGFiIG92ZXJmbG93IGRyb3Bkb3duKVxufVxuXG50YWJsZSB0ZCB7XG4gIGZvbnQtZmFtaWx5OiBpbmhlcml0O1xufVxuXG4uc2IgdWwgbGksXG4uc2Igb2wgbGkge1xuICBtYXJnaW46IDA7XG4gIHBhZGRpbmc6IDA7XG59XG5cbi8vIEJ1dHRvbnMgLSBtb3JlIHNwZWNpZmljaXR5IG5lZWVkZWQgYXMgLmJ0biB0YWtlcyBwcmVjZWRlbmNlXG4uYnRuLnNiQnRuOmV4dGVuZCguc2JCdG4pIHt9XG5cbi8vIEFwZXggUGFnZU1lc3NhZ2VzIDxhcGV4OnBhZ2VNZXNzYWdlcz5cbi5zYiAubWVzc2FnZSB7XG4gIGJvcmRlci1yYWRpdXM6IDNweDtcbiAgbWFyZ2luOiBAc2JQYWdlSGVhZGVyTGVmdCBAc2JQYWdlSGVhZGVyTGVmdCAwIEBzYlBhZ2VIZWFkZXJMZWZ0KjEuNjtcbiAgcGFkZGluZzogMTJweDtcbiAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgYmFja2dyb3VuZDogbm9uZTtcblxuICAubXNnSWNvbiB7XG4gICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICB3aWR0aDogMDtcbiAgICBoZWlnaHQ6IDA7XG4gIH1cblxuICAubWVzc2FnZVRleHQge1xuICAgIG1hcmdpbjogMCAwIDAgMzBweDtcblxuICAgID4gc3BhbiwgaDQsID4gZGl2IHtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgIHZlcnRpY2FsLWFsaWduOiB0b3A7XG4gICAgICBsaW5lLWhlaWdodDogQHNiRm9udFNpemUgKiAyLjA7XG4gICAgfVxuXG4gICAgaDQge1xuICAgICAgbWFyZ2luLWxlZnQ6IDEwcHg7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDZweDtcbiAgICB9XG5cbiAgICA+IGRpdjpub3QoOmZpcnN0LW9mLXR5cGUpIHtcbiAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIH1cblxuICAgICY6YmVmb3JlIHtcbiAgICAgIGZvbnQtZmFtaWx5OiBcInNiXCI7XG4gICAgICBmb250LXN0eWxlOiBub3JtYWw7XG4gICAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDIuMDtcbiAgICAgIHNwZWFrOiBub25lO1xuXG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICB0ZXh0LWRlY29yYXRpb246IGluaGVyaXQ7XG4gICAgICB3aWR0aDogMWVtO1xuICAgICAgbWFyZ2luLWxlZnQ6IC0zMHB4O1xuICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgICAgZm9udC12YXJpYW50OiBub3JtYWw7XG4gICAgICB0ZXh0LXRyYW5zZm9ybTogbm9uZTtcbiAgICAgIGxpbmUtaGVpZ2h0OiAxZW07XG4gICAgfVxuICB9XG5cbiAgJi5lcnJvck0yLFxuICAmLmVycm9yTTMsXG4gICYuZXJyb3JNNCxcbiAgJi5lcnJvck01LFxuICAmLmVycm9yTTYge1xuICAgIC5tZXNzYWdlVGV4dCB7XG4gICAgICBjb2xvcjogI2NjMDAwMDtcbiAgICAgICY6YmVmb3JlIHtcbiAgICAgICAgY29udGVudDogJ1xcZTgyMSc7ICAvL3NiLWljb24tYXR0ZW50aW9uLWNpcmNsZWRcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAmLndhcm5pbmdNMixcbiAgJi53YXJuaW5nTTMsXG4gICYud2FybmluZ000LFxuICAmLndhcm5pbmdNNSxcbiAgJi53YXJuaW5nTTYge1xuICAgIC5tZXNzYWdlVGV4dCB7XG4gICAgICBjb2xvcjogI2Q5ODYzMztcbiAgICAgICY6YmVmb3JlIHtcbiAgICAgICAgY29udGVudDogJ1xcZTgyMCc7ICAvL3NiLWljb24tYXR0ZW50aW9uXG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgJi5pbmZvTTIsXG4gICYuaW5mb00zLFxuICAmLmluZm9NNCxcbiAgJi5pbmZvTTUsXG4gICYuaW5mb002IHtcbiAgICAubWVzc2FnZVRleHQge1xuICAgICAgY29sb3I6ICMwMDAwY2M7XG4gICAgICAmOmJlZm9yZSB7XG4gICAgICAgIGNvbnRlbnQ6ICdcXGU4MGYnOyAgLy9zYi1pY29uLWluZm8tY2lyY2xlZFxuICAgICAgfVxuICAgIH1cbiAgfVxufVxuIiwiLypcbk1vZGFsIGRpYWxvZyBtYXNrXG5cblRoZSBsYXllciBiZWhpbmQgdGhlIGRpYWxvZyB0aGF0IG1hc2tzIHRoZSBlbnRpcmUgcGFnZS5cbiovXG4uc2JNb2RhbE1hc2sge1xuICBwb3NpdGlvbjogZml4ZWQ7XG4gIHRvcDogMDtcbiAgbGVmdDogMDtcbiAgcmlnaHQ6IDA7XG4gIGJvdHRvbTogMDtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiTWFza0NvbG9yO1xuICBvcGFjaXR5OiAwLjg7XG4gIHotaW5kZXg6IDEwMDA7XG59XG5cbi8qXG5Nb2RhbCBEaWFsb2dcblxuQSBkaWFsb2cgd2l0aCBtb2RhbGl0eSB0aGF0IHRha2VzIHVwIHRoZSBlbnRpcmUgcGFnZS5cbiAqL1xuLnNiTW9kYWxEaWFsb2cge1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JCZ0NvbG9yO1xuICAvLyBib3JkZXI6IDFweCBzb2xpZCAjMDAwO1xuICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIHRvcDogMTYwcHg7XG4gIHBvc2l0aW9uOiBmaXhlZDtcbiAgbGVmdDogMDtcbiAgcmlnaHQ6IDA7XG4gIG1hcmdpbjogMCBhdXRvO1xuICAvLyBtYXgtd2lkdGg6IDYwMHB4O1xuICBtaW4taGVpZ2h0OiAyMDBweDtcbiAgei1pbmRleDogMTAwMTtcbiAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuXG4gID4gaGVhZGVyIHtcbiAgICBib3JkZXItYm90dG9tOiAycHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG4gICAgcGFkZGluZzogMjRweCAxNnB4O1xuICAgIC8vIG1hcmdpbi1ib3R0b206IDEwcHg7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgICAvLyBsaW5lLWhlaWdodDogQHNiRm9udFNpemUgKiAyZW07XG4gICAgY29sb3I6IEBzYkhlYWRlckZvbnRDb2xvcjtcblxuICAgID4gaSB7XG4gICAgICBjb2xvcjogQHNiSGVhZGVyRm9udENvbG9yO1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDI7XG4gICAgfVxuXG4gICAgPiAqIHtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgfVxuXG4gICAgPiBoMiB7XG4gICAgICAvLyBmb250LXdlaWdodDogYm9sZDtcbiAgICAgIG1hcmdpbjogMCAwIDAgNnB4O1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDIuNDtcbiAgICAgIGNvbG9yOiBAc2JIZWFkZXJGb250Q29sb3I7XG4gICAgfVxuXG4gICAgPiBoMyB7XG4gICAgICBjb2xvcjogQHNiSGVhZGVyRm9udENvbG9yO1xuICAgIH1cblxuICAgID4gLnNmLWljb24tY2xvc2Uge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDM7XG4gICAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgICB0b3A6IC01MHB4O1xuICAgICAgcmlnaHQ6IDBweDtcbiAgICAgICY6aG92ZXIge1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICB9XG4gICAgfVxuICAgID4gLnNmLWljb24tY2xvc2U6YmVmb3JlIHtcbiAgICAgIGNvbG9yOiAjZmZmO1xuICAgIH1cbiAgfVxuXG4gIC5zYk1vZGFsQ29udGVudENvbnRhaW5lciB7XG4gICAgb3ZlcmZsb3c6IGF1dG87XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICBpW2NsYXNzXj1zZi1pY29uXSB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Db2xvcjtcblxuICAgICAgJjpob3ZlciB7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgfVxuICAgIH1cblxuICAgIC5zYlRhYmxlIHtcbiAgICAgIG1hcmdpbi1ib3R0b206IDhweDtcblxuICAgICAgdGQge1xuICAgICAgICBib3JkZXItYm90dG9tOiAwO1xuICAgICAgfVxuICAgIH1cblxuICAgIHVsIHtcbiAgICAgIC13ZWJraXQtcGFkZGluZy1lbmQ6IDQwcHg7XG4gICAgfVxuICB9XG5cbiAgLnNiTW9kYWxGb290ZXIge1xuICAgIHdpZHRoOiAxMDAlO1xuICAgIGJvcmRlci10b3A6IDJweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbiAgICBwYWRkaW5nOiAxMnB4IDE2cHg7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiSGVhZGVyQmdDb2xvcjtcbiAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICBib3JkZXItYm90dG9tLWxlZnQtcmFkaXVzOiA0cHg7XG4gICAgYm9yZGVyLWJvdHRvbS1yaWdodC1yYWRpdXM6IDRweDtcbiAgICBkaXNwbGF5OiBpbmxpbmUtdGFibGU7XG5cbiAgICA+IC5zYkJ1dHRvbnMge1xuICAgICAgZmxvYXQ6IHJpZ2h0O1xuICAgICAgcGFkZGluZzogMCAwIDAgMTZweDtcbiAgICAgID4gLnNiQnRuIHtcbiAgICAgICAgcGFkZGluZzogOHB4IDE2cHg7XG5cbiAgICAgICAgJi5zYlByaW1hcnlBY3Rpb24ge1xuICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgICAgICAgIGNvbG9yOiBAc2JQcmltYXJ5QnRuRm9udENvbG9yO1xuICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkhvdmVyQmdDb2xvcjtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgfVxufVxuXG4jRGVzY3JpcHRpb25FZGl0b3JEaWFsb2cge1xuICAgbWluLWhlaWdodDogNDI5cHg7XG59XG5cblxuLy8gSlEgVUkgdG9vbHRpcHNcbi51aS10b29sdGlwOmV4dGVuZCguc2IpIHtcbiAgcGFkZGluZzogOHB4O1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIHotaW5kZXg6IDk5OTk7XG4gIG1heC13aWR0aDogMzAwcHg7XG4gIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gIGJvcmRlcjogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICBib3gtc2hhZG93OiAwIDAgMnB4IEBzYkJvcmRlckNvbG9yO1xuXG4gID4gLnVpLXRvb2x0aXAtY29udGVudCB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gIH1cblxuICA+IC5hcnJvdyB7XG4gICAgd2lkdGg6IDcwcHg7XG4gICAgaGVpZ2h0OiAxNnB4O1xuICAgIG92ZXJmbG93OiBoaWRkZW47XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIGxlZnQ6IDUwJTtcbiAgICBtYXJnaW4tbGVmdDogLTM1cHg7XG4gICAgYm90dG9tOiAtMTZweDtcbiAgfVxuICA+IC5hcnJvdy50b3Age1xuICAgIHRvcDogLTE2cHg7XG4gICAgYm90dG9tOiBhdXRvO1xuXG4gICAgJjphZnRlciB7XG4gICAgICBib3R0b206IC0yMHB4O1xuICAgICAgdG9wOiBhdXRvO1xuICAgIH1cbiAgfVxuICA+IC5hcnJvdy5sZWZ0IHtcbiAgICBsZWZ0OiAyOCU7XG4gIH1cbiAgPiAuYXJyb3c6YWZ0ZXIge1xuICAgIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gICAgYm9yZGVyOiBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcbiAgICBjb250ZW50OiBcIlwiO1xuICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICBsZWZ0OiAyMHB4O1xuICAgIHRvcDogLTIwcHg7XG4gICAgd2lkdGg6IDI1cHg7XG4gICAgaGVpZ2h0OiAyNXB4O1xuICAgIGJveC1zaGFkb3c6IDZweCA1cHggOXB4IC05cHggYmxhY2s7XG4gICAgLXdlYmtpdC10cmFuc2Zvcm06IHJvdGF0ZSg0NWRlZyk7XG4gICAgLW1zLXRyYW5zZm9ybTogcm90YXRlKDQ1ZGVnKTtcbiAgICB0cmFuc2Zvcm06IHJvdGF0ZSg0NWRlZyk7XG4gIH1cbn1cblxuLy8gSlEgVUkgYTExeSBzdHlsZXMgKG5lZWRlZCBmb3IgdG9vbGlwcylcbi51aS1oZWxwZXItaGlkZGVuLWFjY2Vzc2libGUge1xuICBib3JkZXI6IDA7XG4gIGNsaXA6IHJlY3QoMCAwIDAgMCk7XG4gIGhlaWdodDogMXB4O1xuICBtYXJnaW46IC0xcHg7XG4gIG92ZXJmbG93OiBoaWRkZW47XG4gIHBhZGRpbmc6IDA7XG4gIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgd2lkdGg6IDFweDtcbn1cblxuI3NiQ3VzdG9tQWN0aW9uQ29udGFpbmVyIHtcbiAgbWFyZ2luOiAxOHB4O1xuICB0b3A6IDBweDtcbiAgaGVpZ2h0OiA5NSU7XG4gIC8vIG1pbi1oZWlnaHQ6IDBweDtcbiAgPiAuc2YtaWNvbi1jYW5jZWwtY2lyY2xlZCB7XG4gICAgZm9udC1zaXplOiAzNXB4O1xuICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICB0b3A6IC05cHg7XG4gICAgcmlnaHQ6IC00cHg7XG4gICAgd2lkdGg6IDIwcHg7XG4gICAgaGVpZ2h0OiAyMHB4O1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYk1hc2tDb2xvcjtcbiAgICAmOmhvdmVyIHtcbiAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICB9XG4gIH1cbiAgPiAuc2YtaWNvbi1jYW5jZWwtY2lyY2xlZDpiZWZvcmUge1xuICAgIGNvbG9yOiAjZmZmO1xuICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICByaWdodDogMTVweDtcbiAgICB0b3A6IC0xMHB4O1xuICB9XG5cbn1cblxuI2Vhc3lYRE1fU0JRUV9wcm92aWRlciB7XG4gIHdpZHRoOiAxMDAlO1xuICBoZWlnaHQ6IDEwMCU7XG59XG5cbiNzYlByaWNlYm9va01vZGFsIHtcbiAgLnNiTW9kYWxEaWFsb2c7XG4gIG1heC13aWR0aDogNjQwcHg7XG5cbiAgPiAuc2JNb2RhbENvbnRlbnRDb250YWluZXIge1xuICAgIHBhZGRpbmc6IDIwcHg7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuXG4gICAgPiBzZWxlY3Qge1xuICAgICAgaGVpZ2h0OiAzNHB4O1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNjtcbiAgICAgIHdpZHRoOiAxMDAlO1xuICAgICAgbWFyZ2luOiAxNHB4IDA7XG4gICAgfVxuICB9XG59XG4iLCIvLyBUaGUgcGFnZSB0aXRsZSBhdCB0b3AgbGVmdCBvZiBwYWdlIChpY29uLCBwYWdlIG5hbWUsIG9iamVjdCBpbnN0YW5jZSBuYW1lLCBldGMgKVxuLnNiUGFnZVRpdGxlIHtcbiAgLy8gcGFkZGluZzogOXB4IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICBwYWRkaW5nOiAyNHB4IDI0cHggMTZweDtcbiAgY29sb3I6IEBzYkhlYWRlclN1cHBvcnRGb250Q29sb3I7XG4gIGJhY2tncm91bmQ6IEBzYkhlYWRlckJnQ29sb3I7XG4gIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcbiAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgdHJhbnNpdGlvbjogcGFkZGluZyAuMjVzIGVhc2UtaW47XG5cbiAgaDEsIGgyIHtcbiAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICAgIHRyYW5zaXRpb246IGFsbCAuMjVzIGVhc2UtaW47XG4gIH1cblxuICAvLyB0aGUgc2Vjb25kYXJ5IHBhZ2UgdGl0bGUsIG9iamVjdCBpbnN0YW5jZSBuYW1lLCBldGMgKG9wdGlvbmFsKVxuICBoMiB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7ICAvLyBub3QgYSBub3JtYWwgaDIgc2l6ZVxuICAgIGNvbG9yOiBAc2JIZWFkZXJTdXBwb3J0Rm9udENvbG9yO1xuICAgIC8vIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgZm9udC13ZWlnaHQ6IDQwMDtcbiAgICBwYWRkaW5nLWJvdHRvbTogNHB4O1xuICB9XG5cbiAgPiAuc2JQYWdlVGl0bGVUYWJsZSB7XG4gICAgZGlzcGxheTogdGFibGU7XG4gICAgd2lkdGg6IDEwMCU7XG4gICAgLXdlYmtpdC10cmFuc2l0aW9uLWRlbGF5OiAwcywgMHMsIDBzO1xuICAgIC13ZWJraXQtdHJhbnNpdGlvbi1kdXJhdGlvbjogMC4yNXMsIDAuMjVzLCAwLjI1cztcbiAgICAtd2Via2l0LXRyYW5zaXRpb24tcHJvcGVydHk6IC13ZWJraXQtdHJhbnNmb3JtLCBvcGFjaXR5LCBsZWZ0O1xuICAgIC13ZWJraXQtdHJhbnNpdGlvbi10aW1pbmctZnVuY3Rpb246IGVhc2UtaW4sIGVhc2UtaW4sIGVhc2U7XG4gICAgLXdlYmtpdC11c2VyLWRyYWc6IG5vbmU7XG5cbiAgICAmLnNiUmVzdWx0c1NlY3Rpb24ge1xuICAgICAgPiAuc2JQYWdlVGl0bGVMZWZ0IHtcbiAgICAgICAgd2lkdGg6IDEwMCU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgPiAuc2JQYWdlVGl0bGVMZWZ0LFxuICAgID4gLnNiUGFnZVRpdGxlUmlnaHQge1xuICAgICAgZGlzcGxheTogdGFibGUtY2VsbDtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiB0b3A7XG4gICAgICB0cmFuc2l0aW9uOiBhbGwgLjI1cyBlYXNlLWluO1xuICAgIH1cblxuICAgID4gLnNiUGFnZVRpdGxlTGVmdCB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtZmxleDtcbiAgICAgIHdpZHRoOiAzMCU7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogdG9wO1xuXG5cbiAgICAgIC5zYlRpdGxlcyB7XG4gICAgICAgIHZlcnRpY2FsLWFsaWduOiB0b3A7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgdHJhbnNpdGlvbjogYWxsIC4yNXMgZWFzZS1pbjtcbiAgICAgICAgLXdlYmtpdC10cmFuc2l0aW9uLWRlbGF5OiAwcywgMHMsIDBzO1xuICAgICAgICAtd2Via2l0LXRyYW5zaXRpb24tZHVyYXRpb246IDAuMjVzLCAwLjI1cywgMC4yNXM7XG4gICAgICAgIC13ZWJraXQtdHJhbnNpdGlvbi1wcm9wZXJ0eTogLXdlYmtpdC10cmFuc2Zvcm0sIG9wYWNpdHksIGxlZnQ7XG4gICAgICAgIC13ZWJraXQtdHJhbnNpdGlvbi10aW1pbmctZnVuY3Rpb246IGVhc2UtaW4sIGVhc2UtaW4sIGVhc2U7XG4gICAgICAgIC13ZWJraXQtdXNlci1kcmFnOiBub25lO1xuICAgICAgfVxuICAgICAgW2NsYXNzXj1zZi1pY29uXSB7Ly90aGVzZSBuZWVkIHRvIGJlIHZhcmlhYmxlc1xuICAgICAgICBmb250LXNpemU6IDUwcHg7XG4gICAgICAgIGhlaWdodDogNTBweDtcbiAgICAgICAgd2lkdGg6IDUwcHg7XG4gICAgICAgIGJvcmRlci1yYWRpdXM6IDRweDtcbiAgICAgICAgbWFyZ2luLXJpZ2h0OiAxMnB4O1xuICAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgdHJhbnNpdGlvbjogYWxsIC4yNXMgZWFzZS1pbjtcblxuICAgICAgICAmLnJlc2l6ZSB7XG4gICAgICAgICAgZm9udC1zaXplOiAzMHB4O1xuICAgICAgICAgIHBhZGRpbmc6IDEzcHggMTBweCAwIDEwcHg7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgW2NsYXNzXj1zZi1pY29uXTpiZWZvcmUgey8vdGhlc2UgbmVlZCB0byBiZSB2YXJpYWJsZXNcbiAgICAgICAgY29sb3I6ICNmZmY7XG4gICAgICAgIG1hcmdpbjogMDtcbiAgICAgICAgcG9zaXRpb246IHJlbGF0aXZlO1xuICAgICAgICB0b3A6IC03cHg7XG4gICAgICB9XG5cbiAgICAgIC5yZXNldEhlaWdodFtjbGFzc149c2YtaWNvbl06YmVmb3JlIHtcbiAgICAgICAgdG9wOiAwcHg7XG4gICAgICB9XG5cblxuXG4gICAgICA+IHNwYW4ge1xuXHRcdFx0XHQvL1RoaXMgaXMgdG8gZml4IHRoZSBoZWFkZXIgaXNzdWUgaW4gU2FmYXJpXG4gICAgICAgIHdpZHRoOiAyMDBweDtcblxuXHRcdFx0XHQvLyBCdXQgaW4gSUUxMSsgaXQgYnJlYWtzLCBzbyByZXNldCBpdCBiYWNrIHdpdGggYSBoYWNreSB3YXkgdG8gdGFyZ2V0IElFIG9ubHlcblx0XHRcdFx0QG1lZGlhIHNjcmVlbiBhbmQgKC1tcy1oaWdoLWNvbnRyYXN0OiBub25lKSwgKC1tcy1oaWdoLWNvbnRyYXN0OiBhY3RpdmUpIHtcblx0XHRcdFx0XHR3aWR0aDogYXV0bztcblx0XHRcdFx0fVxuICAgICAgfVxuICAgIH1cblxuICAgID4gLnNiUGFnZVRpdGxlUmlnaHQge1xuICAgICAgd2lkdGg6IDEwMCU7XG4gICAgICA+IC5zYlRvb2xzLFxuICAgICAgPiAuc2JCdXR0b25zIHtcbiAgICAgICAgZmxvYXQ6IHJpZ2h0O1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIHRoZSBcIlggUHJvZHVjdHMgRm91bmRcIiBsYWJlbFxuICAuc2JSZXN1bHRzIHtcbiAgICBtYXJnaW46IDdweCAwIDAgNjJweDtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB0cmFuc2l0aW9uOiBhbGwgLjI1cyBlYXNlLWluO1xuXG4gICAgJi5zYldhcm5pbmcge1xuICAgICAgbWFyZ2luLXRvcDogMnB4O1xuICAgICAgY29sb3I6ICNjYzc4MjQ7XG4gICAgICBbY2xhc3M9c2YtaWNvbi13YXJuaW5nXSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjY7XG4gICAgICAgIHdpZHRoOiAxM3B4O1xuICAgICAgICBoZWlnaHQ6IDIwcHg7XG4gICAgICAgIC8vIHRvcDogLTE1cHg7XG4gICAgICAgICY6YmVmb3JlIHtcbiAgICAgICAgICBjb2xvcjogI2NjNzgyNDtcbiAgICAgICAgICBtYXJnaW46IDAgNnB4IDAgMDtcbiAgICAgICAgICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gICAgICAgICAgdG9wOiAycHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAmLnNxdWVlemVkIHtcbiAgICBwYWRkaW5nOiAyMHB4IDE1cHggN3B4O1xuXG4gICAgPiAuc2JQYWdlVGl0bGVUYWJsZSB7XG4gICAgICA+IC5zYlBhZ2VUaXRsZUxlZnQge1xuICAgICAgICAvLyBwYWRkaW5nOiA3cHggMDtcblxuICAgICAgICBbY2xhc3NePXNmLWljb25dIHtcbiAgICAgICAgICBmb250LXNpemU6IDM2cHg7XG4gICAgICAgICAgaGVpZ2h0OiAzNnB4O1xuICAgICAgICAgIHdpZHRoOiAzNnB4O1xuICAgICAgICAgICYucmVzaXplIHtcbiAgICAgICAgICAgIGZvbnQtc2l6ZTogMjNweDtcbiAgICAgICAgICAgIHBhZGRpbmctdG9wOiA4cHg7XG4gICAgICAgICAgICBwYWRkaW5nLWxlZnQ6IDdweDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgICAgW2NsYXNzXj1zZi1pY29uXTpiZWZvcmUge1xuICAgICAgICAgIHRvcDogLTVweDtcbiAgICAgICAgfVxuICAgICAgICAuc2JUaXRsZXMge1xuICAgICAgICAgIHRyYW5zZm9ybTogdHJhbnNsYXRlM2QoMHB4LCAtMTJweCwgMHB4KTtcbiAgICAgICAgICAtd2Via2l0LXRyYW5zZm9ybTogbWF0cml4KDEsIDAsIDAsIDEsIDAsIC04KTtcbiAgICAgICAgfVxuICAgICAgICBoMiB7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgLnNiQnV0dG9ucyB7XG4gICAgICAgIHBhZGRpbmc6IDA7XG4gICAgICB9XG5cbiAgICAgICYuc2JSZXN1bHRzU2VjdGlvbiB7XG4gICAgICAgIG9wYWNpdHk6IDA7XG4gICAgICAgIGRpc3BsYXk6IG5vbmU7IC8vVGVtcG9yYXJ5IHVudGlsIHRoZXJlIGlzIGFub3RoZXIgd2F5IHRvIGtlZXAgdGhpcyBmcm9tIHRha2luZyB1cCBzcGFjZVxuICAgICAgICB0cmFuc2Zvcm06IHRyYW5zbGF0ZTNkKDBweCwgLTE3cHgsIDBweCk7XG4gICAgICAgIC13ZWJraXQtdHJhbnNmb3JtOiBtYXRyaXgoMSwgMCwgMCwgMSwgMCwgLTE3KTtcbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cblxuLy8gRml4IHRoZSBwYWdlIHRpdGxlIHRvIHRvcCBvZiB2aWV3cG9ydCB3aGVuIG5lZWRlZFxuLnNiSGVhZGVyRml4ZWQgLnNiUGFnZVRpdGxlIHtcbiAgcG9zaXRpb246IGZpeGVkO1xuICB0b3A6IDExNHB4OyAvLyBoZWlnaHQgb2YgU0YgQXBwIGhlYWRlci4gIE9ubHkgc2V0IGhlcmUgZm9yIGluaXRpYWwgcmVuZGVyaW5nXG4gIGxlZnQ6IDEwcHg7ICAvLyBzaXplIG9mIFNGIEFsb2hhIGd1dHRlcnNcbiAgcmlnaHQ6IDEwcHg7XG4gIHotaW5kZXg6IDU7XG4gIHZpc2liaWxpdHk6IGhpZGRlbjsgLy8gZm9yIGxvYWRpbmcuIHdlJ2xsIGR5bmFtaWNhbGx5IHNob3cgd2hlbiBwYWdlIGlzIFwicmVhZHlcIlxufVxuXG4jc2lkZWJhckNlbGw6bm90KC5zaWRlYmFyQ29sbGFwc2VkKSArICNib2R5Q2VsbCAuc2JIZWFkZXJGaXhlZCAuc2JQYWdlVGl0bGUge1xuICBsZWZ0OiAyMzBweDsgIC8vIGZvciBpbml0aWFsIHBvc2l0aW9uIHdoaWxlIFwibG9hZGluZ1wiIGlzIHNob3duXG59XG5cbiNtYWluQ29udGVudCB7XG4gIG1hcmdpbi1sZWZ0OiAxcHg7XG59XG5cbi8vIFRoZSBwYWdlIGJsb2NrIGFmdGVyIHRoZSBwYWdlIHRpdGxlLCBpLmUuIHRoZSBtYWluIGNvbnRlbnRzIG9mIHRoZSBwYWdlXG4uc2JQYWdlQmxvY2sge1xuICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xufVxuXG4vLyBBIHNlY3Rpb24gd2l0aGluIGEgcGFnZSBibG9ja1xuLnNiUGFnZUJsb2NrU2VjdGlvbiB7XG4gIG1hcmdpbjogQHNiUGFnZUhlYWRlckxlZnQ7XG4gIGJhY2tncm91bmQ6IEBzYkhlYWRlckJnQ29sb3I7XG4gIGJvcmRlcjogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIHBhZGRpbmc6IDE0cHg7XG4gIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG5cbiAgPiBoZWFkZXIge1xuICAgIG1hcmdpbi1ib3R0b206IDEwcHg7XG4gIH1cblxuICAmOmFmdGVyOmV4dGVuZCggLnNiQ2xlYXIgKSB7fVxufVxuXG4vLyBUaGUgTG9hZGluZyBsYXllciBtb2RhbCBtYXNrXG4uc2JMb2FkaW5nTWFzayB7XG4gIHBvc2l0aW9uOiBmaXhlZDtcbiAgdG9wOiAwO1xuICBsZWZ0OiAwO1xuICByaWdodDogMDtcbiAgYm90dG9tOiAwO1xuICBiYWNrZ3JvdW5kLWNvbG9yOiAjQThCN0M3O1xuICBvcGFjaXR5OiAwLjg7XG4gIHotaW5kZXg6IDEwMDAxO1xufVxuXG4vLyBUaGUgTG9hZGluZyBzcGlubmVyIGljb25cbi5zYkxvYWRpbmcge1xuICBwb3NpdGlvbjogZml4ZWQ7XG4gIHRvcDogMzclO1xuICBsZWZ0OiA1MCU7XG4gIG1hcmdpbi1sZWZ0OiAtNzRweDtcbn1cblxuLy8gTG9va3VwIFNlYXJjaCBSZXN1bHRzXG4uc2JTZWFyY2hSZXN1bHRzIHtcblxuICAvLyB0aGUgbGlzdCBvZiBwcm9kdWN0c1xuICAuc2JUYWJsZSB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcblxuICAgIC8vIGZpcnN0IGNvbHVtbiBvZiBsaXN0IGlzIGNoZWNrYm94L3NlbGVjdG9yIGNvbHVtblxuICAgID4gdGhlYWQgPiB0ciA+IHRoOmZpcnN0LW9mLXR5cGUsXG4gICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgfVxuXG4gICAgPiB0Ym9keSA+IHRyID4gdGQge1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICB9XG4gIH1cblxuICAvLyB0b29sYmFyIGluIHVwcGVyIHJpZ2h0IG9mIHBhZ2UgKEZpbHRlciwgZXRjKVxuICAuc2JUb29scyB7XG4gICAgZmxvYXQ6IHJpZ2h0O1xuICB9XG59XG4iLCJAc2JUZXh0Ym94SGVpZ2h0OiBAc2JGb250U2l6ZSAqIDIuNTtcbkBzYlRleHRib3hCb3JkZXI6IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbkBzYlRleHRib3hSYWRpdXM6IDNweDtcbkBzYlNlbGVjdEhlaWdodDogQHNiRm9udFNpemUgKiAyLjU7XG5Ac2JTZWxlY3RCb3JkZXI6IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbkBzYlNlbGVjdFJhZGl1czogM3B4O1xuQHNiU2VsZWN0QmdDb2xvcjogQHNiUGFnZUJnQ29sb3I7XG5Ac2JDaGVja2JveFNpemU6IDIycHg7XG5cbi5zYiB7XG4gIC8vIFRleHQgYm94ZXMgLSBkZWZhdWx0IHN0eWxlc1xuICBpbnB1dFt0eXBlPXRleHRdLCBpbnB1dDpub3QoW3R5cGVdKSB7XG4gICAgaGVpZ2h0OiBAc2JUZXh0Ym94SGVpZ2h0O1xuICAgIGJvcmRlcjogQHNiVGV4dGJveEJvcmRlcjtcbiAgICBib3JkZXItcmFkaXVzOiBAc2JUZXh0Ym94UmFkaXVzO1xuICAgIHBhZGRpbmc6IDAgNXB4O1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG5cbiAgICAmLmhhc0RhdGVwaWNrZXIge1xuICAgICAgbWluLXdpZHRoOiA5NXB4O1xuICAgICAgd2lkdGg6IDg1JTtcbiAgICAgICAmLmludmFsaWREYXRlIHtcbiAgICAgICAgYm9yZGVyLWNvbG9yOiAjYzAwO1xuICAgICAgIH1cbiAgICB9XG5cbiAgfVxuXG5cbiAgLy8gU2VsZWN0IHB1bGxkb3ducyAtIGRlZmF1bHQgc3R5bGVzXG4gIHNlbGVjdDpub3QoW211bHRpcGxlXSkge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gICAgLXdlYmtpdC1hcHBlYXJhbmNlOiBub25lO1xuICAgIC1tb3otYXBwZWFyYW5jZTogbm9uZTtcbiAgICBtaW4td2lkdGg6IDEwMHB4O1xuICAgIHBhZGRpbmc6IDAgMTRweDtcbiAgICBtYXJnaW46IDA7XG4gICAgaGVpZ2h0OiBAc2JTZWxlY3RIZWlnaHQ7XG4gICAgYmFja2dyb3VuZC1pbWFnZTogdXJsKCdkYXRhOmltYWdlL3N2Zyt4bWw7YmFzZTY0LFBITjJaeUI0Yld4dWN6MGlhSFIwY0RvdkwzZDNkeTUzTXk1dmNtY3ZNakF3TUM5emRtY2lJSGh0Ykc1ek9uaHNhVzVyUFNKb2RIUndPaTh2ZDNkM0xuY3pMbTl5Wnk4eE9UazVMM2hzYVc1cklpQjJaWEp6YVc5dVBTSXhMakVpSUdsa1BTSk1ZWGxsY2w4eElpQjRQU0l3Y0hnaUlIazlJakJ3ZUNJZ2RtbGxkMEp2ZUQwaU1DQXdJREkzTGpZZ01qRWlJR1Z1WVdKc1pTMWlZV05yWjNKdmRXNWtQU0p1WlhjZ01DQXdJREkzTGpZZ01qRWlJSGh0YkRwemNHRmpaVDBpY0hKbGMyVnlkbVVpUGcwS0lDQThaejROQ2lBZ0lDQThaR1ZtY3o0TkNpQWdJQ0FnSUR4d1lYUm9JR2xrUFNKVFZrZEpSRjh4WHlJZ1pEMGlUVFV1TmlBMWFERTJMalJqTUM0MElEQWdNQzQ0SURBdU5pQXdMalFnTVd3dE9DQTVMamhqTFRBdU15QXdMak10TUM0NUlEQXVNeTB4TGpJZ01Hd3RPQzA1TGpoRE5DNDRJRFV1TmlBMUxqRWdOU0ExTGpZZ05Yb2lMejROQ2lBZ0lDQThMMlJsWm5NK0RRb2dJQ0FnUEdOc2FYQlFZWFJvSUdsa1BTSlRWa2RKUkY4eVh5SStEUW9nSUNBZ0lDQThkWE5sSUhoc2FXNXJPbWh5WldZOUlpTlRWa2RKUkY4eFh5SWdiM1psY21ac2IzYzlJblpwYzJsaWJHVWlMejROQ2lBZ0lDQThMMk5zYVhCUVlYUm9QZzBLSUNBZ0lEeHlaV04wSUhnOUlqQWlJSGs5SWpBaUlHTnNhWEF0Y0dGMGFEMGlkWEpzS0NOVFZrZEpSRjh5WHlraUlHWnBiR3c5SWlNMU5UWTVPRVFpSUhkcFpIUm9QU0l5Tnk0MklpQm9aV2xuYUhROUlqSXhJaTgrRFFvZ0lEd3ZaejROQ2p3dmMzWm5QZzBLJyk7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiQmdDb2xvcjtcbiAgICBiYWNrZ3JvdW5kLXBvc2l0aW9uOiA5NSUgNTAlO1xuICAgIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gICAgYmFja2dyb3VuZC1zaXplOiAxNHB4IDE0cHg7XG4gICAgYm9yZGVyOiBAc2JTZWxlY3RCb3JkZXI7XG4gICAgYm9yZGVyLXJhZGl1czogM3B4O1xuXG5cdFx0Jjo6LW1zLWV4cGFuZCB7XG5cdFx0XHRkaXNwbGF5OiBub25lOyAvLyByZW1vdmVzIGFycm93IGZvciBJRVxuXHRcdH1cbiAgfVxuXG4gIC8vIENoZWNrYm94IC0gZGVmYXVsdCBzdHlsZXNcbiAgaW5wdXRbdHlwZT1jaGVja2JveF0ge1xuICAgIHdpZHRoOiBAc2JDaGVja2JveFNpemU7XG4gICAgaGVpZ2h0OiBAc2JDaGVja2JveFNpemU7XG4gICAgbWFyZ2luOiAwO1xuICAgIGJvcmRlcjogMDtcbiAgfVxuXG4gIGlucHV0LCBidXR0b24sIHNlbGVjdCwgdGV4dGFyZWEge1xuICAgIGZvbnQtZmFtaWx5OiBpbmhlcml0O1xuICB9XG59XG5cbi8qXG5EdWFsaW5nIExpc3QgYm94XG5cbkEgY29udHJvbCB3aXRoIHR3byBsaXN0IGJveGVzIGFuZCBhcnJvd3MgdG8gbW92ZSBpdGVtcyBsZWZ0L3JpZ2h0IGFuZCB1cC9kb3duIGJldHdlZW4gdGhvc2UgdHdvLlxuICovXG4uc2JEdWFsTGlzdEJveCB7XG4gIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICBjb2xvcjogaW5oZXJpdDtcbiAgYm9yZGVyLWNvbGxhcHNlOiBjb2xsYXBzZTtcbiAgYm9yZGVyLXNwYWNpbmc6IDBweDtcblxuICA+IHRoZWFkID4gdHIgPiB0aCB7XG4gICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG5cbiAgICA+IFtjbGFzc149c2ItaWNvbl0ge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcbiAgICAgIGNvbG9yOiBAc2JJY29uQ29sb3I7XG4gICAgfVxuICB9XG5cbiAgPiB0Ym9keSA+IHRyID4gdGQ6bnRoLWNoaWxkKDIpLFxuICA+IHRib2R5ID4gdHIgPiB0ZDpudGgtY2hpbGQoNCkge1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICB9XG5cbiAgYSB7XG4gICAgY29sb3I6IGluaGVyaXQ7XG4gICAgcGFkZGluZzogMnB4O1xuICAgIG1hcmdpbjogMCA4cHg7XG4gICAgYm9yZGVyOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICBib3JkZXItYm90dG9tOiAwcHg7XG4gICAgZGlzcGxheTogYmxvY2s7XG5cbiAgICAmOmhvdmVyIHtcbiAgICAgIGJhY2tncm91bmQ6ICMwMDY5ZDk7XG4gICAgICBjb2xvcjogI2ZmZjtcbiAgICAgIGJvcmRlci1jb2xvcjogIzAwNjlkOTtcbiAgICB9XG5cbiAgICAuc2YtaWNvbi1yaWdodCwgLnNmLWljb24tbGVmdCB7XG4gICAgICBwYWRkaW5nOiAycHg7XG4gICAgfVxuXG4gICAgW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS41O1xuICAgIH1cblxuICAgIFtjbGFzc149c2ItaWNvbi10by1lbmRdOmJlZm9yZSB7XG4gICAgICAucm90YXRlKC05MGRlZyk7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogLjg1O1xuICAgIH1cblxuICAgICY6bnRoLWNoaWxkKDQpIFtjbGFzc149c2ItaWNvbi10by1lbmRdOmJlZm9yZSB7XG4gICAgICAucm90YXRlKDkwZGVnKTtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAuODU7XG4gICAgfVxuXG4gICAgJjpmaXJzdC1vZi10eXBlIHtcbiAgICAgIGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiAzcHg7XG4gICAgICBib3JkZXItdG9wLWxlZnQtcmFkaXVzOiAzcHg7XG4gICAgfVxuXG4gICAgJjpsYXN0LW9mLXR5cGUge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgICBib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogM3B4O1xuICAgICAgYm9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogM3B4O1xuICAgIH1cbiAgfVxuXG4gIHNlbGVjdCB7XG4gICAgZm9udC1zaXplOiBpbmhlcml0O1xuICAgIGhlaWdodDogMzUwcHg7XG4gICAgd2lkdGg6IDE4MHB4O1xuICAgIHBhZGRpbmc6IDhweDtcblxuICAgID4gb3B0aW9uIHtcbiAgICAgIHBhZGRpbmc6IDRweDtcblxuICAgICAgJi5yZXF1aXJlZCB7XG4gICAgICAgIGNvbG9yOiAjYWYyNjI2O1xuICAgICAgICBmb250LXdlaWdodDogYm9sZDtcbiAgICAgICAgLXdlYmtpdC1mb250LXNtb290aGluZzogc3VicGl4ZWwtYW50aWFsaWFzZWQ7XG4gICAgICB9XG4gICAgfVxuICB9XG59XG4iLCIvKlxuUm90YXRlcyBhbiBlbGVtZW50XG5cbiRyIC0gdGhlIHJvdGF0ZSBmdW5jdGlvbiBwYXJhbXRlciwgZS5nLiA5MGRlZ1xuICovXG4ucm90YXRlKEByKSB7XG4gIC13ZWJraXQtdHJhbnNmb3JtOiByb3RhdGUoQHIpO1xuICAtbW96LXRyYW5zZm9ybTogcm90YXRlKEByKTtcbiAgLW1zLXRyYW5zZm9ybTogcm90YXRlKEByKTtcbiAgdHJhbnNmb3JtOiByb3RhdGUoQHIpO1xufVxuIiwiI3VpLWRhdGVwaWNrZXItZGl2IHtcbiAgZGlzcGxheTogbm9uZTtcbn1cblxuLnVpLWRhdGVwaWNrZXIge1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JDb250ZW50QmdDb2xvcjs7XG4gIGJvcmRlci1sZWZ0OiBAc2JDb250ZW50Qm9yZGVyO1xuICBib3JkZXItcmlnaHQ6IEBzYkNvbnRlbnRCb3JkZXI7XG4gIGJvcmRlci1yYWRpdXM6IDNweDtcbiAgYm94LXNoYWRvdzogMCAycHggNnB4ICNhYWE7XG4gIHBhZGRpbmc6IDdweCA1cHggNnB4O1xuICBvdmVyZmxvdzogaGlkZGVuO1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gIHdpZHRoOiBhdXRvO1xuICB6LWluZGV4OiA0OyAvLyB1bmRlciBmaXhlZCBwYWdlIGhlYWRlclxuXG4gIC51aS1kYXRlcGlja2VyLWhlYWRlciB7XG4gICAgcGFkZGluZzogMCAwIDNweDtcbiAgfVxuXG4gIC51aS1kYXRlcGlja2VyLXRpdGxlIHtcbiAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1tb250aCB7XG4gICAgZmxvYXQ6IGxlZnQ7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci15ZWFyIHtcbiAgICBmbG9hdDogcmlnaHQ7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1wcmV2LCAudWktZGF0ZXBpY2tlci1uZXh0IHtcbiAgICBtYXJnaW4tdG9wOiA0cHg7XG4gICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgIHdpZHRoOiAxOXB4O1xuICAgIGhlaWdodDogMTZweDtcbiAgICBtYXJnaW46IDJweCA0cHggMCAwO1xuICAgIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gICAgbGluZS1oZWlnaHQ6IDQwMCU7XG4gICAgZmxvYXQ6IGxlZnQ7XG4gIH1cblxuICAvLyBOZWVkIHRvIHJlcGxhY2UgaWNvblxuICAudWktZGF0ZXBpY2tlci1wcmV2IHtcbiAgICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJy9pbWcvZnVuY19pY29ucy9jYWwvbGVmdEFycm93LmdpZicpO1xuICB9XG5cbiAgLy8gTmVlZCB0byByZXBsYWNlIGljb25cbiAgLnVpLWRhdGVwaWNrZXItbmV4dCB7XG4gICAgYmFja2dyb3VuZC1pbWFnZTogdXJsKCcvaW1nL2Z1bmNfaWNvbnMvY2FsL3JpZ2h0QXJyb3cuZ2lmJyk7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1jYWxlbmRhciB7XG4gICAgcGFkZGluZzogMCA1cHg7XG4gICAgbWFyZ2luLWxlZnQ6IGF1dG87XG4gICAgbWFyZ2luLXJpZ2h0OiBhdXRvO1xuXG4gICAgPiB0aGVhZCA+IHRyID4gdGgge1xuICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgICAgIGZvbnQtc2l6ZTogLjllbTtcbiAgICAgIHdpZHRoOiAxNCU7XG4gICAgfVxuXG4gICAgdGQge1xuICAgICAgcGFkZGluZzogMnB4O1xuICAgIH1cblxuICAgIGEge1xuICAgICAgd2lkdGg6IGF1dG87XG4gICAgICBib3JkZXItYm90dG9tOiBub25lO1xuICAgICAgdGV4dC1kZWNvcmF0aW9uOiBub25lO1xuICAgICAgZm9udC1zaXplOiAuOTVlbTtcbiAgICB9XG5cbiAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAmOmhvdmVyIHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogI2UwZjBmYjtcbiAgICAgICAgZm9udC13ZWlnaHQ6IGJvbGQ7XG4gICAgICAgIC8vIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1vdGhlci1tb250aCBhIHtcbiAgICBjb2xvcjogIzk5OTtcbiAgfVxuXG4gIC51aS1kYXRlcGlja2VyLXRvZGF5IHtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjMTc5N2MwO1xuICAgIGNvbG9yOiAjZmZmO1xuICAgIGZvbnQtd2VpZ2h0OiBib2xkO1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcblxuICAgICY6aG92ZXIge1xuICAgICAgYmFja2dyb3VuZC1jb2xvcjogI2UwZjBmYjs7XG4gICAgICBjb2xvcjogIzMzMztcbiAgICB9XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1jdXJyZW50LWRheSB7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogI2M2ZTFmZjtcbiAgICBib3JkZXI6IDFweCBzb2xpZCAjOWNmO1xuICAgIGZvbnQtd2VpZ2h0OiBib2xkO1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcblxuICAgID4gYSB7XG4gICAgICBjb2xvcjogIzMzMztcbiAgICB9XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1idXR0b25wYW5lIHtcbiAgICBwYWRkaW5nOiAxcHg7XG4gICAgY2xlYXI6IGJvdGg7XG5cbiAgICA+IGJ1dHRvbiB7XG4gICAgICBiYWNrZ3JvdW5kOiB0cmFuc3BhcmVudDtcbiAgICAgIGJvcmRlcjogbm9uZSAhaW1wb3J0YW50O1xuICAgICAgY29sb3I6ICMwMTViYTc7XG4gICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgICAgcGFkZGluZzogMDtcbiAgICAgIG1hcmdpbjogMDtcblxuICAgICAgJjpob3ZlciB7XG4gICAgICAgIHRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC51aS1kYXRlcGlja2VyLWNsb3NlLCAge1xuICAgIGRpc3BsYXk6IG5vbmU7XG4gIH1cbn1cbiIsIi8vIERlZmF1bHQgcGFkZGluZyBmb3IgYWxsIGNlbGxzIChoZWFkZXIsIGJvZHksIGZvb3RlcilcbkBzYlRhYmxlQ2VsbFBhZGRpbmc6IDhweCA2cHggNnB4O1xuXG4vLyBEZWZhdWx0IGhlaWdodCBmb3IgYWxsIHRhYmxlIGNlbGxzIChoZWFkZXIsIGJvZHksIGZvb3RlcilcbkBzYlRhYmxlQ2VsbEhlaWdodDogNDlweDtcblxuLy8gQmFja2dyb3VuZCBjb2xvciB3aGVuIGhvdmVyaW5nIG9uIGNvbnRlbnQgdGFibGUgYm9keSByb3dzXG5Ac2JUYWJsZVJvd0hvdmVyQ29sb3I6IEBzYkNvbnRlbnRCZ0NvbG9yO1xuXG4vLyBPdmVycmlkZSB0aGUgc3RhbmRhcmQgU0YgZm9udCBjb2xvciBvZiBibGFjay5cbnRhYmxlID4gdGJvZHkgPiB0ciA+IHRkIHtcbiAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbn1cblxuLy8gYSB0YWJsZSB0aGF0IGRpc3BsYXlzIGEgbGlzdCBvZiBlbnRpdGllcy9yb3dzL2V0YywgYSBsYSBhIFwibGlzdCBwYWdlXCJcbi5zYlRhYmxlIHtcbiAgYm9yZGVyLWNvbGxhcHNlOiBjb2xsYXBzZTtcbiAgYm9yZGVyLXNwYWNpbmc6IDA7XG4gIHdpZHRoOiAxMDAlO1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JCZ0NvbG9yO1xuXG4gIC8vIHRoIHtcbiAgLy8gICAvLyBoZWlnaHQ6IEBzYlRhYmxlQ2VsbEhlaWdodDtcbiAgLy8gfVxuXG4gIHRkIHtcbiAgICBoZWlnaHQ6IEBzYlRhYmxlQ2VsbEhlaWdodDtcbiAgfVxuXG4gIC8vIGNlbnRlciBhbGlnbmVkIGNlbGxzXG4gID4gdGJvZHkgPiB0ciA+IHRkLmNlbnRlcixcbiAgPiB0Ym9keSA+IHRyID4gdGQuc2JBY3Rpb25zLFxuICA+IHRoZWFkID4gdHIgPiB0aC5zYkFjdGlvbnMsXG4gID4gdGhlYWQgPiB0ciA+IHRoLmNlbnRlcixcbiAgPiB0Zm9vdCA+IHRyID4gdGQuY2VudGVyIHtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIH1cblxuICAvLyByaWdodCBhbGlnbmVkIGNlbGxzXG4gID4gdGhlYWQgPiB0ciA+IHRoLnJpZ2h0LFxuICA+IHRib2R5ID4gdHIgPiB0ZC5yaWdodCxcbiAgPiB0Zm9vdCA+IHRyID4gdGQucmlnaHQge1xuICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICB9XG5cbiAgYSB7XG4gICAgY29sb3I6IGluaGVyaXQ7XG4gIH1cblxuICB0Ym9keSB7XG4gICAgLnNiQWN0aW9ucyB7XG4gICAgICBpICB7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgICAgICY6aG92ZXIge1xuICAgICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICBpbnB1dCwgc2VsZWN0IHtcbiAgICBmb250LXNpemU6IGluaGVyaXQ7XG4gIH1cbn1cblxuLy8gdGhlIHRhYmxlIGhlYWRlciBjb250YWluZXJcbi5zYlRhYmxlID4gdGhlYWQge1xuICAvLyBhIHN0YW5kYXJkIHRhYmxlIGhlYWRlciBjZWxsXG4gID4gdHIgPiB0aCB7XG4gICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuICAgIHBhZGRpbmc6IEBzYlRhYmxlQ2VsbFBhZGRpbmc7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgICB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuICAgIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICB9XG5cbiAgPiB0ciA+IHRoID4gKltjbGFzc149XCJzYi1pY29uXCJdIHtcbiAgICBtYXJnaW4tbGVmdDogNHB4O1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gIH1cbn1cblxuLy8gdGhlIHRhYmxlIGJvZHkgY29udGFpbmVyXG4uc2JUYWJsZSA+IHRib2R5IHtcbiAgLy8gYSBzdGFuZGFyZCB0YWJsZSBib2R5IGNlbGxcbiAgPiB0ciA+IHRkIHtcbiAgICBib3JkZXItYm90dG9tOiAxcHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG4gICAgcGFkZGluZzogQHNiVGFibGVDZWxsUGFkZGluZztcbiAgICBjb2xvcjogQHNiRm9udENvbG9yO1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIGkge1xuICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICB9XG4gIH1cblxuICA+IHRyOmhvdmVyIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JUYWJsZVJvd0hvdmVyQ29sb3I7XG4gIH1cbn1cblxuLy8gdGFibGUgZm9vdGVyIGNlbGxzXG4uc2JUYWJsZSA+IHRmb290ID4gdHIgPiB0ZCB7XG4gIHBhZGRpbmc6IEBzYlRhYmxlQ2VsbFBhZGRpbmc7XG4gIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xufVxuIiwiLypcblNpZGUgUGFuZWxzIFxuXG5QYW5lbCB0aGF0IHNsaWRlcyBvdXQgZnJvbSB0aGUgcmlnaHQgc2lkZSBvZiB0aGUgc2NyZWVuXG4qL1xuLnNiUGFuZWwge1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIHRvcDogMTA3cHg7XG4gIG1heC13aWR0aDogNTAwcHg7XG4gIGJvdHRvbTogMDtcbiAgYmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgYm9yZGVyLWxlZnQ6IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbiAgYm94LXNoYWRvdzogLTNweCAwcHggMjBweCAtNXB4ICNhYWE7XG4gIG92ZXJmbG93OiBhdXRvO1xuICBkaXNwbGF5OiBub25lO1xuICBwYWRkaW5nLXRvcDogMTBweDtcblxuICAmLm9wZW4ge1xuXHQgIHJpZ2h0OiAwcHg7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cblxuICA+IGEge1xuICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICB9XG5cbiAgPiBoZWFkZXIge1xuICAgIHBhZGRpbmc6IDAgMjBweDtcbiAgICBsaW5lLWhlaWdodDogNGVtO1xuXG4gICAgPiAuc2YtaWNvbi1jbG9zZSB7XG4gICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICBsaW5lLWhlaWdodDogNGVtO1xuICAgIH1cbiAgfVxuXG4gIGZpZWxkc2V0IHtcbiAgICBib3JkZXI6IDA7XG4gICAgcGFkZGluZzogMTRweCAxOHB4O1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXG4gICAgPiBsYWJlbCB7XG4gICAgICBtYXJnaW46IDAgM3B4IDNweCAwO1xuICAgICAgbWF4LXdpZHRoOiAxMjBweDtcbiAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIH1cblxuICAgIGlucHV0LCBzZWxlY3Qge1xuICAgICAgZGlzcGxheTogaW5saW5lO1xuICAgICAgZm9udC1zaXplOiBpbmhlcml0ICFpbXBvcnRhbnQ7XG4gICAgICBtaW4td2lkdGg6IDEzOHB4O1xuICAgIH1cbiAgfVxuXG4gIC5zYkJ1dHRvbnMge1xuICAgIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gICAgcGFkZGluZzogMTBweCAwIDAgMThweDtcblxuICAgIC5jbGVhckZpZWxkc0xpbmsge1xuICAgICAgcGFkZGluZzogMTBweDtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICB9XG4gIH1cbn0iLCIvLyBAaW1wb3J0IFwiaWNvbnMvc2FsZXNmb3JjZS9jc3Mvc2YtaWNvbnMtZW1iZWRkZWQuY3NzXCI7XG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6ICdzZi1pY29ucyc7XG4gIHNyYzogdXJsKCcuLi9mb250L3NmLWljb25zLmVvdD8xMzA2NzY3NicpO1xuICBzcmM6IHVybCgnLi4vZm9udC9zZi1pY29ucy5lb3Q/MTMwNjc2NzYjaWVmaXgnKSBmb3JtYXQoJ2VtYmVkZGVkLW9wZW50eXBlJyksXG4gICAgICAgdXJsKCcuLi9mb250L3NmLWljb25zLnN2Zz8xMzA2NzY3NiNzZi1pY29ucycpIGZvcm1hdCgnc3ZnJyk7XG4gIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbn1cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogJ3NmLWljb25zJztcbiAgc3JjOiB1cmwoJ2RhdGE6YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFtO2Jhc2U2NCxkMDlHUmdBQkFBQUFBRXNJQUE4QUFBQUFsYlFBQVFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQkhVMVZDQUFBQldBQUFBRE1BQUFCQ3NQNno3VTlUTHpJQUFBR01BQUFBUXdBQUFGWStJRW42WTIxaGNBQUFBZEFBQUFMQ0FBQUl4UHdySTM5amRuUWdBQUFFbEFBQUFBb0FBQUFLQUFBQUFHWndaMjBBQUFTZ0FBQUZsQUFBQzNDSWtKQlpaMkZ6Y0FBQUNqUUFBQUFJQUFBQUNBQUFBQkJuYkhsbUFBQUtQQUFBT1g4QUFITW9tWWUvOG1obFlXUUFBRU84QUFBQU13QUFBRFlJNGNEZmFHaGxZUUFBUS9BQUFBQWdBQUFBSkFlYUE5Vm9iWFI0QUFCRUVBQUFBQ1FBQUFJZ0Vibi8rbXh2WTJFQUFFUTBBQUFCRWdBQUFSS3AvNDdJYldGNGNBQUFSVWdBQUFBZ0FBQUFJQUU1REZKdVlXMWxBQUJGYUFBQUFZTUFBQUxOdjFxaTNuQnZjM1FBQUVic0FBQURzd0FBQmE4dE80eUJjSEpsY0FBQVNxQUFBQUJsQUFBQWU5MXJBNFY0bkdOZ1pHQmc0R0tRWTlCaFlIUng4d2xoNEdCZ1lZQUFrQXhqVG1aNklsQU15Z1BLc1lCcERpQm1nNGdDQUlvakEwOEFlSnhqWUdSK3lqaUJnWldCZ2FtS2FROERBME1QaEdaOHdHREl5QVFVWldCbFpzQUtBdEpjVXhnY1hqQzhhR01PK3AvRkVNVWN4REFOS013SWtnTUFFMllNbUFCNG5PM1dDWmZOQlJ6RzhlOXdEWlVpRldVcGxVakxFRUlrN2FTRlFzdFVzbVVyV3lKbEMyWGU2dk11OVAxZno4dG96dm5jTS9lZU84dVo4M3VlWjRBNXdHeTlwaEhNT3N5RW56RXg3YXNUNDlkbjgvRDQ5ZEhFMVBnOW8rSDEzTHQvMzBlR1I1K1B4byt6Zk8vSTd6akpYT2J4a0YvM0NQTjVsTWRZd0VJZVp4RlA4Q1JQc1pnbFBNMHpMR1VaeTFuQnN6ekhTcDduQlY1a0ZTK3htalc4ekZwZTRWVi8vdXRNc1k3MXZNRUdOcktKTjluTUZyYnlGdHZZenR2czRCMTI4aTd2OFQ0ZjhDRWY4VEc3Mk0wbjdPRlRQdU56dm1BdisvaVNyOWpQQVE3eU5kL3dMZDh4emZmOHdJOGM0aWNPYzRTakhPTTRQM09DazV6aU5HZjRoVjg1eXpuT2M0R0wvTVlsZnVjeVYvaURxL3pKWDF6ak9qZTR5UzMrNWpaM3VNcy8vTXM5WnZ4elRQTC94L3poWWZKNG44ME1GL1BBK0liS3V5RTEzR0pxdUtyVWNLY3A3NHVVbDBiS215UGw5WkVhN2pmbFJaSWFmcnVVVjByS2V5WGw1Wkx5aGtsNXphUzhhMUplT0Nsdm5aUlhUOHI3SjJVU1NKa0pVcWFEbERraFpXSkltUjFTcG9pVWVTSmxza2laTVZLbWpaUzVJMlVDU1psRlVxYVNsUGtrWlZKSm1WbFNwcGVVT1NabG9ra05uWk15NWFUTU95bVRUOG9PSUdVYmtMSVhTTmtRcE93S1VyWUdLZnVEbEUxQ3lrNGhaYnVRc21kSTJUaWs3QjVTdGhBcCs0aVV6VVRLamlKbFc1R3l0MGpaWUtUc01sSzJHaW43alpSTlI4ck9JMlg3a2JJSFNkbUlwT3hHVXJZa0tmdVNsTTFKeWc0bFpadVNzbGRKMmJDazdGcFN0aTRwKzVlVVRVektUaVpsTzVPeXAwbloyS1RzYmxLMk9DbjduSlROVHNxT0oyWGJrN0wzU2JrQXBOd0NVcTRDS2ZlQmxFdEJ5czBnNVhxUWNrZEl1U2lrM0JaU3Jnd3A5NGFVeTBQS0RTTGxHcEZ5bDBpNVVLVGNLbEt1RmluM2k1UkxSc3BOSStXNmtYTG5TTGw0cE53K1VxNGdLZmVRbE10SXlvMGs1VnFTY2pkSnVhQ2szRkpTcmlvcDk5WC9QeDVnNWo4d2hveE9BQUFBQUFBQUFBQUFBQUFBQUFCNG5LMVdhWE1UUnhDZDFXSExOajZDRHhJMmdWbkdjb3gyVnBqTENCREc3RW9XNEJ6eWxleENqbDFMZHU2TFQvd0cvWnBla1ZTUmIveTB2QjRkMkdBblZWUW9TdjJtOSsxTTkrdWVYcFBRa3NSZVdJK2szSHdwcHJZMmFXVG5TVWczYkZxTzRrUFoyUXNwVTB6K0xvaUNhTFhVdnUwNEpDSVNnYXAxaFNXQzJQZkkwaVRqUTQ4eVdyWWx2V3BTYnVsSmQ5a2FEK3F0K3ZiVDBGR08zUWtsTlp1aFErdVJMYW5DcUJKRk11MlJrall0dzlWZlNWcmg1eXZNZk5VTUpZTG9KSkxHbTJFTWorUm40NHhXR2EzR2RoeEZrVTJXRzBXS1JETThpQ0tQc2xwaW4xd3hRVUQ1b0JsU1h2azBvbnlFSDVFVmU1VFRDbkhKZHByZjl5VS82UjNPdnlUaWVvdXlKUWYrUUhaa0IzdW5LL2tpMHRvSzQ2YWRiRWVoaXZCMGZTZkVJNXVUNnAvc1VWN1RhT0IyUmFZbnpRaVd5bGVRV1BrSlpmWVB5V3JoZk1xWFBCclZrb09jQ0ZvdmMySmY4ZzYwSGtkTWlXc215SUx1ams2SW9PNlhuS0hZWS9xNCtPTzlYU3dYSVFUSU9KYjFqa3E0RUVZcFliT2FKRzBFT1lpU3NrV1YxSHBIVEp6eU9pM2lMV0cvVHUzb1MyZTBTYWc3TVo2dGg0NnRuS2prZURTcDAweW1UdTJrNXRHVUJsRktPaE04NXRjQmxCL1JKSysyc1pyRXlxTnBiRE5qSkpGUW9JVnphU3FJWlNlV05BWFJQSnJSbTd0aG1tdlhva1dhUEZEUFBYcFBiMjZGbXpzOXArM0FQMnY4WjNVcXBvTzlNSjJlRHNoS2ZKcDJ1VW5SdW41NmhuOG04VVBXQWlxUkxUYkRsTVZEdG40SDVlVmpTNDdDYXdOczk1N3pLK2g5OWtUSXBJSDRHL0FlTDlVcEJVeUZtRlZRQzkyMDFyVXN5OVJxVm90VVpPcTdJVTByWDlacEFrMDVEbjFqWDhZNC9xK1pHVXRNQ2QvdnhPblpFWmVldWZZbHlEU0gzR1pkaitaMWFyRmRnTTVzeitrMHkvWjluZWJZZnFEVFBOdnpPaDFoYSt0MGxPMkhPaTJ3L1Vpblkyd3ZhRUdUN2pzRWNoR0JYTUFHRW9Hd2RSQUkyMHNJaEsxQ0lHd1hFUWpiSWdKaHU0UkEySDZNUU5ndUl4QzJsN1dzbW40cWFSdzdFOHNBUllnRG96bnV5R1Z1S2xkVHlhVVNyb3RHcHpia0tYS3JwS0o0VnYwckEvM2lrVGVzZ2JWQXVrVFcvSXBKcm54VWxlT1BybWg1MDhTNUFvNVZmM3R6WEo4VEQyVy9XUGhUOEwvYW1xcWtWNng1WkhJVmVTUFFrK05FMXlZVmo2N3A4cm1xUjlmL2k0b09hNEYrQTZVUUMwVlpsZzIrbVpEd1VhZlRVQTFjNVJBekd6TVAxL1c2WmMzUDRmeWJHQ0VMNkg3OE54UWFDOXlEVGxsSldlMWdyOVhYajJXNXR3ZmxzQ2RZa21LK3pPdGI0WXVNekVyN1JXWXBlejd5ZWNBVk1DcVZZYXNOWEszZ3pYc1M4NURwVGZKTUVMY1ZaWU9ramNlWklMR0JZeDR3Yjc2VElDUk1YYldCMmltY3NJRzhZTXdwMk8rRVExUnZsT1Z3ZTZGOUhvMlVmMnRYN01nWkZVMFErRzMyUnRqcnMxRHlXNnlCaENlLzFOZEFWU0ZOeGJpcGdFc2o1WVpxOEdGY3JkdEdNazZncjZqWURjdXlpZzhmUjl4M1NvNWxJUGxJRWF0SFJ6K3R2VUtkMUxuOXlpaHUzenY5Q0lKQmFXTCs5cjZaNHFDVWQ3V1NaVlp0QTFPM0dwVlQxNXJEeGFzTzNjMmo3bnZIMlNkeTFqVGRkRS9jOUw2bVZiZURnN2xaRU8zYkhKU2xUQzZvNjhNT0c2akx6YVhRNm1WY2t0NTJEekFzTUtEZm9SVWIvMWYzY2ZnOFY2b0tvK05Jdloyb0g2UFBZZ3p5RHpoL1IvVUY2T2N4VExtR2xPZDdseE9mYnR6RDJUSmR4VjJzbitMZndLeTE1bWJwR25CRDB3MlloNnhhSGJyS0RYeW5Cam85MHR5TzlCRHdzZTRLOFFCZ0U4Qmk4SW51V3NiektZRHhmTVljSCtCejVqQm9Nb2ZCRm5NWWJETm5EV0NIT1F4Mm1jTmdqemtNdm1ET09zQ1h6R0VRTW9kQnhCd0dUNWdUQUR4bERvT3ZtTVBnYStZdytJWTU5d0crWlE2RG1Ea01FdVl3Mk5kMGF5aHppeGQwRjZodFVCWG93UFFURnZld09OUlVHYksvNDRWaGYyOFFzMzh3aUtrL2FybzlwUDdFQzBQOTJTQ20vbUlRVTMvVmRHZEkvWTBYaHZxN1FVejl3eUNtUHRNdnhuS1p3VjlHdmt1RkE4b3VOcC96OThUN0I4SWFRTFlBQVFBQi8vOEFEM2ljelgwSm5CekZkWGRYOVhSMzlURTkwM1Axek83T3ZYUHNNYlBuek93aDdhNnVYVjByYVhXZ0F5UVdERmdnR1FPU09Fd3dZRHZnQUxhSmpER1dpWTFqOEMySWJURGdFRWRnSnliWUlRNDJNVEVDbTU4TitQcHNndmtsTWRFMjM2dnFubU5IdXhLRUwvbDlXbTExVlhWMWRYZDExWHYvZDlSYmp1ZmdILzhZZW9yVHVBaVg1WlFIRXkxK3Q4anhoUzUvZnd3RmRKUXFvc0V4bEZ5MGNDUmVpc2RMWXpSQlZ6WG1FL1F3enZMLzdGUXVrc0FqSUk1NzQwSCtrN3pBOVhEaTEzTWVWT2lDMjVTWG9zRnNPcG5LbG96QmJCZEtpVUVqSUVKWmpLSkFhQ0RaSDRKeWFCVDFsK0Y4R1M5RFN6WEQwS3h2eTRwUEhWRjlpbXg5bTFhZ3BkVUsxTzZjT0VWTCsxbit5Ry9IajdKbmllbjBXU3Jsd1I2VVRYbVFtSEtPZ1RnS0JaeGovemdxOXp0SDJtNFFiMzFkbHJPeUtaOFF2TUlKT09abHlBcVdEQmxXS2Y2WFhmbTZnQzQ2UVpyTy81Zm9oYXhkS1lvbmFoZkJPQW5zZTJuNEppN0hWYmdwYmp2M1RzNHpvWjI3YS9QYTVTUDluWEZPb0FOSEJ5aWRFdW5ZQkp1UGJPRG9nR1ZSUUlReHpjSVlsMkVNUTBIekxaYnhQMW9makxRSHZPR3dOOUNZWnNMb3lrZzJZMzFYRVBJdVVYVGxCV0dUSUFSb05pQUk1eTFZaTI5S215RXpHVDdQK2ZXWnVZNEkrbGs0WmwxQVd4d1g0Ti94VStZNERzTjN1NVh2NG51NFBtNFpSeDVZTXBqa2NLRXJrN2FmdWNKK2lpaVhGU1ZSMGhGOWw4b1lndjltRE1ITlF6cUNXcGhaNGtrdm1wcFZ2Vk1qN1MwcFVjaE5kY1ZIdzFrUmU3Ulp0NEhFM2x6eHdNU0dHL0lkUE4rM1o4enQ5ZnNOYlZiMStkUlp6YmpDcTBhWG5oZHd0M2IyZEUzM0loUUtwdnRsemVjdW41UHJLaUIrWnZuS2pjdXZPc3NVZ2xwVU01NmdGNTJqR29aS1A3R0x2Y3NuK2U3YWQzWlBLTlZ2N0hyejM1aG42NFc5Q2xzdmxkT1UrUTF6ZnhzdkRrZVN5Y2h3WTFxTTQyV0pRdUZ6cW16OWdhZ3FRVzVaemFyRStweXNxakxhUmRRY25Obkp6bnhlVnZudVFtSWsyWjg0a3V4UGZnSitSK0xGUW9MSGljTGNaYktpd01LQTVDQzlrdVdPME9RQUxjTFVadlA3ay9naHpzUEZZZjBwRCtZU3BsZWk5QWcxUENmOVN2enB5dTg5OFZ1NnFQa0FUUmZKNDFXR05reExrRmd2QURGUURKWll6OWZyNlNQWmMrc3h2Z0JQdFJMbTFrRFNkT1lXcFVYVk1helNxUG9TeTZha0JoSXhqMTVWNlVXT3Z3ZElrS0hOM2FEUmU2dEdJVTZIeW1kdEoyRmluU0NrQTQ3N0JVUHp3c2xBU05sUEtRTWhsazg5Umgvd0dKMDMxb2xFb1JoSEx0V0hzNFJlRkNaQVBQYUo4SVgycWo2L2dtNTNRNUVSRWtMSG1MMUxOeGZnT3JoeEdPUGhubmhRWVdPY2dxVWhCdWhxNktlclpUQ1h6V1g1RkUwSGFibWZuZ25RTm56dGZlSDlhNitDWHJ0bTM0Vkx4OGVYWHJqdjlmMTd4OGJIeC9idXYyYjN6SVllK0xkaDVwdlZUSnZFeUM3NXNFM2srRzdhcm5ZQnk1eDRadDRWTElQT0lPNkg2ZXYrU3RZK2JGTkZObDNnZlY3bGY0bS94K1c1amR6VjhENlg3cDRxUldYNlB0a1NmVzU0L0hRS0ZuY1EzaXpJSGg5K1lvaCtDVVlWeGxBR210Q21wVUc3clNpRjdLWndNTzJXcFhJdUs5ak54aEJyWjNjWmF1alQrZkpaT21Db3Y2TWwwdTF0amJaM3hLT0pyamJablZ5YTZFQTRFNXVRZEZld282M29GbkZuVWxQYXV1TFJlR2Q3dE0zb2pyUjBTSkoyWHJ0TGx5WmlHWlJMV0UrMzYxclNqS1FTNlYzcFJDcGlKbFU5c3pyUmc0cEpkR3V5aUVMK1RBUU5MWjFlVmhsTXRYcU1vSDlsZm5rbUZqWTBRMitOWnJxU25VVEt4a05oc2FYUDQ5RjhiUzI1aWZ4S2Y5RHd0S1lHSzh1bWwyb1JzWGVGUkRxVFhabm9wVjVEOTBYam9kRlU5OXFnYVFiWGRxZEdRK2tJckJKdlBOTGVrKzd2VHlkYWdFcXl0ZkFnekIrQk00RTZrUWZTWVkrRTdmVUp6NFdhMTBBT1NCVk1FQ2lhSVRxKy9DRnJYYUJkWGFHMkI5K2Y2TzVtZEtHUXNIb0ZnWStKR3ZwOEtpSnFCYndxYUJ6MEJRcUp1ZlgwTEhvdFVUZ2lDNE9xeGhNcFViRHA0eE5BSjE1MTZNUTRwWStWWHB0WTFPaWovUkIwb2twTlpiNnBuR3MrUDQ5NDBLVnBhUGc5emZsR1F2SXFXN3NHbmRjdk45Q1VBVGJUV2ZJU25LVFYwSXlUMk1STkFCK3ZQdjlHN216dTNaeC93dnZPMmUyYkppZkt2Vm4yTGxLaHF6SmdEMlIxWUNuWmJ5QWtXVFQvOUdoVGVTRGRWQlpPTXhiSCs0bW1FWnJnb1ZyV3NtaHVDVTN1cDBtQUpxL1VjdWpJM0Evb0VmZlN0Q0gvTFRoWHBpWHJDYUtoUGZiUnJyUCtzdkhjWXZrbHpoMGd3YVNlNTZxOElvbXY0TnE0YnU0TVdQY2JCM0p4WDUyTzBlVU9DQzBFcE1rTURkZ0VqZEt6SnZaZXNibStVd2VJb0Z6RWRZUlFaZ0FCbXlFUnZiWjVja1crSXl2d2JTNmZ0a01tcTg5Z0ZadFhUQTdXSDR6d0FqdTJka3BlSVZVTXVIbXNTRUZaUTZURktFVGlwUVRDQlh4NU5qT3hiUDNxWllUczFBeFhuQmM2YWNVZDEyZXkxbGh0VFBjaHdlVWxiamZ4aGpJZU5RajAzZWYyU0xKSHprWU1IMEtBcjNNVGJBamVzR0E5L29hWE9aMnRTT1hCVkl2ZkkvTXdEaGxZanlKd29CaUNqd3RVTHBVZEJDNFVFQ3ROUThBL1owMnBtWXhxclhhTENaTy9KSndVTFJrWWYzOHltVlRKTk9YTjAwUk40dS82ZGQwL054enFUNlg2SjRIQkozdFRSeW4zZnAxeS92bDhNc3AxQW0xb2ozbDR5aWVETlI1WktUdWZBNzRHa0FYS1VGQ2pQTUUvVnNuT3hUS1ZUY01ITmE5Ny9jNnViVm0zUjVzdVRpUnlWdi9ZUlV1WFh2UW5OREU3TTBPVmJPZTZpY0tBS0VqOUxXRkpFSk90N2JrZS9MT1ZoMjQ2dEpJbE5wYi9MWDRXZngva0cvSHJxZ3V3Zk1hQXU1Z0EzbUZjc3NpdEIyVDBjWmpmRitwUkJYOUJBUkJvZlozRVplcytSVzk0bjE0dURhdVVQTkRaM3FyVU1TVWw4MnltT1BObjNqSVNZSmtDNjZEdkNUUlBhYzEzZDY5WnQzMW0xZkxwWEpzU0x4Z3FmNjdxSzFoLzg0aXNZV2xpNndSQjJvL3piYytkc1dZS3dDU1FzSTlzZWJvdFcweEVWYStoUmVPRkgzcElIbGlRckxOM3VwWC9EdkR2Rkx4VEczMG5sRGJzTDFveUduSXBlTHdLd0E1NFdXRFk5ODRxOGpGWmZVbVZqeEYxVmxTUmk2Qy9Gbnd1OUUzaTR0RTZheWVEY2xQV3crejRlVkhRRlBSTlViUW1pYTQ2ZUpSaWhpQ3N0UlhjTGtwdnoxZzNQcGdNcVRhOTdTLzNPRktTNktFWW01SWFpWkYrcVFxQVlEUVlKVExoRkpRWVpnQ1dBUXVNQ25saURrN1JTeDNwQ29hVmpTVWVSbm1QcU80NVNzZ1VDY2hIejFVamdldXNaMWlWSk5HcSs4NFZEUzE0YmtTZHZZK0VwQ2tSU1VmM0VBeEMzWThWMzNRTDFFb2hNaVZKOSswaExrVkJXY1ZFZnpxdnJTYnBpemFOejd2VDBYTWxueGE4cnY1QXNMTGg3bDR0NE9DUXUvbGpmQXVNMERDM0c5YmhsbVVEaFl5YnJzT3ErQUh2V2tRd3gwU1R6WHdHR3NvMmVHQnJ0SndySXBUU1VRQW16aGdhTENJbWl3U3J5elZkWGJNbGUrRkcwUUNzWG5SUE9LQUh4TGFBMnU0dVhIRGRPWUd3MjkwZjBYUkZOTnhCcVd0dGJsaVZJaU5aTktXcVVuc09GdG0rc2JGOWYwS1RpaVlQYVlEQzVWRlpaa2xXMW9aazdlYnMxblRFSk5HUXQzVHpvZVg4NnRHVks5ZjBoRnNTYllaSFZWM0JaS3d3MnI2cUswUTY5NkxvR0t6SGNlanVvakVnQWlORVZlUVJSYzdKeW9pc3FHU0VVZ1c1SnR2UDUzWFhjaC9oekluQWpkZGRjUW5sZVZNVFZmNHRGN3I4TnJCbXpJenhxTk9VMGY5dys5Y1BVREZvc1FTMUhnd25rK0hGRXRSNnlxdDVvVjZZKzBROUQvT2gxZ2NhL0gvVGhyTjFDSTVzYVhCSkppdlBVQjNDK3BWTEJydmIyd0pLWFlmQU5Dd08rdUNaSnFhTzdKcTFCLzdUU3BhV0ZpK2lKeE9GTENDNmp3TGkwNWpNQXNqT0FySHlFNVRxUUhJRTVNaC9aQlJvUUZiWHd4cStqaFd1a3hVcVZPWUFFTDVVU0ZCWjFIcVZBa01xclVJbmYxMFRLNjNQVVZhVW84a0J1N0lxVjc3eEhQOFkvaW5Nd1RTc1QrWEJmSHZJcTJDS0ZacGVES0JndHVLbitwd1ljdlE2SWw5bG5QeGpoY1FKSzE2d1piVEg1NTR5RFBtTFlsQzhRQWdKVytCNEIzRXZoK2VhS0JUd1lmWjhkOUNYbkk1NWdKWW85OGxZdmtLV1g5VWphQmR0TWxGb2tNVXcxdzlTdnZMZ3VtR0Z4d2llcTFJS29tUWQwam5pRmxXRmxSM1ZWNDNsVkNFZlgxZFRMUzV6SHNIUDJtL3dNaDJmejliUjdHZHArV1Y0NnU5MEVQSUhFQ0ZmQVJrTERqdnJzdWRPMHZKVkxZeHZoQmRibHlnd1VHQm82R2RNbVpiUURBWVZpbkg4QUVqNkg2S3k1aDhJK1RkYnU3V0R5cUtmcDBnWTdRUlpkSmRrZjVQRC9EMThKL0RtSGR6NThPNW43NXhLaWpaK2F5Q0JLQWVTSlJCT0tseWs0ZDFxVWdhOHBrU2xOWm9KeGVHZFRlQVo5TE1Od0p1SGFJYStOd3hDaGVFTnltMEVHMlRZZ0FQOWUyYXN2WDFzTFUzUXU2Y0VZY29uYTNFU00wVFB6djV4cnlzZEhndW5YZDZSNFIxZTBZaVJ1RWI4RFkzYzhnNW9KS1RDWTJhN3k3dHlZSXN1UTZPb20xaTdSczRaSGo3bklFM1F6NkgvcGUzdFMrRW1iM0JMV2phMExQRVVBMlhkeXljTGdUTkRMUzJobmI2ZWhNdXJsd005K3BJMC9OUlA3emFqY1hPMzJadDBHWHEvcDdCdWVKWjFlWEIyMkI2N2o3QjVrK1pXd3ZxRmViTnF2Qmh5MGJGTGw2cUNlWTJJQmF0emFNQWhmN2t5bFhWelRJaXRTdndNSVRPdVRKRml3empoclFmWWx6M0FWaFg3Nm5SdG9kM1B0ZnNEcFlIdHUzNndhL3ZBSUdSMjdoMWJNdFQzSEpQcTBkeUxhNjVlcyticXd6UkJMN0xGQ05ldWw5V0dyRVdlN1I4YUhkc0wxNWVxSFpVQy92Ym5DTW5Ma1VlY3F5R2hkSXZVZEorZUppNFNuUERkOUw3M1hIYVJvd2JOQVE4aE1CQUR0VlhEaHFHcXJISEkxc25LbWlhS1ZqcE5XWGlMN2RFTng0bVdqdHdTU1d0b2M4QWw5aVNQSjNzRUlSQkpweVBvSVVpdHY2aUxFUXNsS0t5UngybCtrUVQ3TkpLbnZlV0pOaWtJK1dSUFR6SXZDT21JdFpuZDQ5NUkydHBjNjNEVEFybmpwenpyNk9rL3l5L2x3MXdHc0tjcEFQYXN3T3dCc2xKQmRSWDVQSDA5VTVoTEQyc2FTbWh4RmFVMHJRVEhNNldBeC9STWUwMVBRRHBUamF1V0dsT3RGMVVWdFVKbVVGVjNTcnFLSlk4WjF1ZitxT3JTVHRYR29IY0N2U2dBenhvQkRNcDBvak9yeGtmTC9XRUJNR2dtS3dGaDhBQzhNdjFVTlorVktOQ0NpVTIxdk9Wc3JrSnB1VzVyZTZFS2tKWlFKZXRKTzZNajNnYWx1WXFVdFpFc3ZCenZLUlN0N1M2Z0NoSEovejFSZkZkblgybTlKSlY2QjRZSE5xaVM1cHNoTVRMajB5Umx3K0R3UUc5SmNtK1krNFl0UEtGbjJSR2x2aWo2eFNOZTdNVVk2MjdSSzN4UkZQOWROZkNnQ05LaWY2ekZlbFVLU0gvdVZkUk5wYUhaY0l0QzFneWtsMFgycStyK3Rvbmt3QnFpdElSbmh5b2JmMHo3clA1SFQwblNFOEhCSU1ZdVZYRmg4UVVwUUJ6ZWJ0T0ZFVzR0NFBTTEtHOC9mL2UyNlZWTEI3cENMb0VLTDZjbkVCazZaNDFHenNnUTUxdG0rdmRzWjJxUTdaVHcxN05VdTlvTFBPUkZ5b2JRRnd4MU8wQUFjcENTRjBoZVZoMHVqbmJaRUtDcVYxYXVhT3JIeWQ2dCt0RG5HYmQ5TVZIbzFReUFBMVhkc3ZXNUdnaW9LNXdkdWU1Qi9uSEFwRUV1QzNKZExCVFFjUlVMNUxJOVBGQkdlNGlTWmpKRlo1UU56d0VZWlBrTkFGNWU4aHB1VGVrbGltWUUxaVFLK1A2aEU4ZjlNYmZyWWpFUndHdURTZGZGUWdiM0p3cUtwQ29qaWlvcGhjVFI2V0RLWiszM202WWYzZFpXWU4vSzFxUFZjVEY4cXpvT2RuQllJNDFLTnVGUzZTMlcrWHZtL3NnNHZnVEROL2ZPSDFHTjFZL29TSjR5eHd2ekZlaFZBOGZMaG0yeGdPUWxWc0ZPdlZ6UHNqVnI4eW1aODNPRGdEVmh6WTZXZW1LR1l1dnBhalM2ci9ha2I0MDVvWGN4SFBPeXpaenc5SnZuU1pjeUZtVHpvZmM4OStiNWtJdnhJVGUra3ZPQkJON1BqVExkSTBoNjBhQ002VHVsczFXbGZ3V2VOa2QxbmhJamc0TU9uZ3hVbXN0VlFvUi84S3pmc0Y0empCOFovVDdrSVFTbC8wMFh2ZUlIUmRFK3JKMVg2ZzlHbzUzUktMNGNHZFlmNElvZkdRYnlrcER5RkZENjFib0lMYnlpZlZnN3IzUTN2YW96V3VXcFZBOFpnblZRNWlhNU03Z0x1TXU1R3loUHZmNnFTeTg4WitmTW1tWERmUjFSMDhONGFwUHgxUkVPaFBtek5DMmR4blQ0ZHMvalgxakhJbW5SaFZJMGpYYWtyVmJHNFNabytrcWRZeDdYeUMwMGV3dkx2dWxhZkZNNm9yaEVZSnhQdU1TT0tGb2JTZDhDaGErd2UyeUZ3Z0w4K2NvM1djZFIzZThiRi9INytNMmNHeVN3SUJmaG9seVJxMURkYjZrbkYyOXJDWWNDUHE4dVV0MnZ2M0ZnWlpRTTFuOEdnbWtVVE9lWXJhRmlxeE1HK0NCYkxLTm9FK1g5K0h2Skh1dGZyVjFveHJxditudnNHUDdIeDcwK2IxRHpJTXdUeFJlS255VXBmclA5Y1g1elQvTEVRK3k2TTlIU3VZZVNuZXdIcXg2WHBMaDlabFEzM0FGVlIrTy9NSHhoM2NkeFlvTk1WWmZyalFtOVVaWVg2WHFZVDRNNm1oUmxEWVorVnQ5TXM1cmJOK3Z5a1ZralZQajlqZVR0ZDJpU1NTYmZoUFRxaGR0OG41M1VXRVA4VTUvNk9pMjk3aWpzV1dKOW4ybnNtZTcraUhQdWRVZTd6NUpqOWJaVmZlRWhvSGNtSUNUeVFLTEZ0bzNZaXB2NWdpWXNsQXFRdU5xN0R2Sm4vRGpiNVhOYmoyYUdoako0ZGJiaTA3NHZCdlJjeTkzRWpWN3N5anpqOWpIZEtKeEYvK3IySGZxKzZKWS8yNUxUQTV5akU2UjB0Z3R3V2R4TGRZSVVDOVhJREROcmlVenZCQmdvWkNzbWtRMk9Tb1A4TjNndnVaTkU1SXNKK1pUb0l2bk9tUnRTN1lxa1dYY0VkVDNvN2NoM2VORUZyY1hOcXllMzRuZkt2SGduSVJmTEVYSW5RQmx0NitUcXpkMVI2MGh3cUJMd0dnWTBCQ2pVbnJwaHBzdCtycnY1UEIrcDQwVm1KenlGWFpRNVVsVDROazJ6ZmdaQTBmcXBxcGJyZ05FVEJzQzRpd0xKYjJsUmloWXBhb3hxRG1LYys2UEhqTGpoeTlxSTBiNy9qZnozK0FGdUN1NC8zRVAxdjZFeVpTSVVJZXEyTEZtbVpKckppeUpEajNSMFdKdHNMczMwNTdwOWx0VVZzWTBLMFJZUWJJK3A4YkQyMjVaVmt5MjR4VEJhMEY5R0psZEIxdWRyd1FTTFBwa1ArbFM1TjVYcWRmVys3MzI5MXRrMHkvZGRkMzN2NzJNQmMrbm1UZEcvSWVSV2dxUkhGV1NtdEYvUlBuQUxkSUUrdy9xQWppT1krT1I0dXlZYWdEYWdEOXFETmR2N3Z1djdYRFQ3ZjJLYlowYjladndSK0JoVlc2aXQyNkVyY2puSWhlTURzQkJyY2lGRE5NNHhQWDhabVUxemsyb2Q2YXdGVm1VektxckRtVTMxcEt4WGs3MnAyVVRCUmdNRkwwVUdJUFRmRHpYVzNlR1lHU1dtb2F4VFUySDh2Vnc0bFFybjdMUVE3NlBMcUMvUi9icWhXbm5xRW9DZVVRMXJKNjhCeW44MFRud2haWjFtZXVmWnA2UE1QajJZaUp6Q1BpMVJ4a2tacUwvT0pleFhxbk1NK3FKVUJIdnR2ZnN1WERJK3Z1VENmU2YyNzZXRzZyMzczMnREOWFzVStZaWtxVjVWOFdvQVF5VU5qbnczYlZCcnlUSy9zczBlMW40aXl5UW42VEtaSm02V2M1TWpSSFlUeHk3MVMzd2JzNjhQMCtmdmJnK3JUTmRFblU5NGVBRS8xUzFSbFFZSUpnSnZTeTFVVXc3ekxFUkI1cURUc2xyT29wR0NFaUkvRlFIbW0wcTNpdVg3dnlIeStGTXZTR0dabGg1OFVNSnlON1I0UWJTdUhGRk4vQkhlRFJRcnhIOFlCT1ozWnVDazliSVVKTmF2Wko1a3BBaDU0UVhaZkFXWnNrdHVKMkg1aFJkSVJNcElQRUVSeFk5YWRMaDI3bmt0d090WTAzQ0tLcmZyT3NPNjdBMVl0UzV2QzNXSHJXWjVlekhuaUdiZmxOSnB5bWdHVGFsR0lmRVNURFFzOTZvK2dPSFhKUW8rdFpmcUFPbjhLM3hVSlk0ZDQvTVVEaTZjeC90QWNLRGlBb2dRQit0WnF0T2lrNUpwcjg2dUNRc0g2dnJFV3M2bTh4OWhkcTQwVUJieXdQS2VrSUFaYld2U3Y1MmtmcXM0Rm81NU1uTFRSVmxzRVBJc1FOYm5xUGVIS2ErU3c0elZoQ0ZueXVpZnFPZkR2RHBvUlo1ajdSR08yZGZaaUJkT3ltN0hCK1FPTnl0YVg4amExZWhPV20zdHRhczdxNWRGSEYxTERhUEV1QnczeEUxd0d3QWJ2cHZpd2d2Zk1iTng5YkxSNGY3dVROejBpQlFYTnVHVVJYRUpTanRVeFY2V0FUR1hEZ0tHQk9xVFBxa1c2TzhBUFlZY0UwaXRRVEFrTnVBYmxIdmM0L2NFVlFmUEJPTzdiVHd6OTk1QlVaRVVhYVExa1lqMjl4dkI0T0VlU1ZHa25xNXlxYnVqSTVsRHVlTzdkcm9Fd2JVVFdxblNySUxFK1JqSWV2Ums2T00zZForMWJFSVFKZGRka3BMc1RleGVIVWdFdnFCS241Q1U4cWJ5Rnc1M2puY3NGV1Z4bmROQ2RRbmNQTCs5VTZ5ZnQ2bXZPcDIvM3VuMVQzOVhCNnJuTFpoOU14cW1DMmpiODJySnQycko3WTRPU1dSakVjTFhBbjFzQjVsd0piZVZPNC9peHJPMnJWKzFwTlNkYVF0NnNNaUlaYXJCSG1pN0dBbE5YbDVTVXptWm5rZjBSYW1wM0lIbXQwZFBCVjJhOElFU0pFR1hhNjBjbGovaFF0M1dDZWFFNEdKT0NNZFlmb0k2UVV6a2FYNStndjZxb1FVK1B5aEFiNEpBZTEwclEyZnVtK3R0NzIrK2R0Rkt4NWJPWkxOYnVXNXVDZENZd1VLNzE4R1NwYW81a2VJNjV0ZkVYQmhQTmtJM1kyWDhpNHNqYVN5SmlvNEo0Z2U3c3lzN0pGZFlJRGdkZ1JPMnowWTZiTVdJQ2wvenp5TXBGWlhUa1pqcDlZZEVyNyt3V2lIUkpabVFUODU3dzNGbkdyQUpjYjhLcklOT0FLTFdzV2lSSzFCZlhvTmlMb0NlbVhJcGw2RzZlYWJVVDFHanVRQ1lsQ242UWJvWGdqV0ZQKy9QTERPdGx6RkdFWE5GcG1kVHNiaHB6NlllNi9uU0dNdjNMT3RGNmVMRzJZMlEvMDAwY29zU2pOL1NFbU50aXB0NjFjTjVtaTEyM3VydXBhMmhXWU1kdnh2R2NoZU01Y3hJa3VsN21EOVh1ZXJReFJ5LzZGZ0N0WEZnUnE0cWhwemUrYXR4b0hOWlBwL1IxWUFuM0pKSnRmY3M2OHlKU21Xc004ZnpjbkEwb2dpL1NoWUJTRDFRTU56NWFMeXJvK3RBVjc0N0Z1MXcrNHFqeVdLNHJaREV3V1J2T1kvdTBYMXV2eWVtQlVaU1hhdURvWHgyVkpIU2g5WlV6azd6Z01LVnFPYnFpV25GZE12di9INVBLTmtlV1prZjJCWnVhUWx2RzhpdmpLUlRJVS9RQ1BzaXJZbHNoTnFoV3N1ZGNmWjlZRUNleGZldzc5UENVMHhlcW90ZlFIQWxuam0vekpzNWFXb1ZHMk1XRmZ5czZiWCs0QTJGdkpHNHVNb1ZOWXBlMC9RaWQwTk5NaFRERjBSb1JjNGJ5cG5XdmY0d3l6cGx0TmtmanRWdGtSK0U3eElCVGpyQXJlQzJVTHE0WVhLczNOV2Vhak9vdnZKa2cwYjFtVExWZFowV21zRnIxUW1pcnFpY1YrYjN2VkpJSEl3WFg2R1NHLzRkMVVtdVpJYU5nK2k4dWErb3ZxRThlakkvWkZpM09zcERnQUtQT29BQXl2andOQVVOMDNYSmI1ZzJHbjRVZ08yU2pxR2hEdlFkQ215WjJsSm40T1BWZXA2dGo5K0QzUHlQOE1iaTEzMEtzbjNuSE45eEpoaVpkVi95Y3MxTjYvTnoxd09yZmdoWU5YVU12WThRTkdQN2VVS1ZHMStyK3J6b2pqQjVHTkJBRnlIV1VhY1I5UjU5V0FsN0FRMzZ1WG5ZT3NrVkFadG1VL0dXeGJFMVltNmZNQ1ZNUkIwVHNqbEVGd2R0dUpDcnA5VkJmVFYzRDUzZlpVVmpTYlFMTXVqbnNTU3RYTWpIMCtwbnJxSEptQlh0T3Q5NlBobERQKzg2ZjRqVjFlbmZZL2g3Z0VIYVljM0d2UktpYTViWkdtQ3hDbFF2S3d4U1pWdUtTcFJpTUZ1ZEhDWDBVM2h0OUhWSkVJTW43bFo5THNMZjNxcFpYMG1mM1c3ZEsvbmR5TGJmTWdYYmJXNjNqdHgrK1U2UFc3SCtQaEZEUzBTMzZqcCtuQzRZTmw3L3hnZnhRMXlZUzNCNUdLOTBzaldpOHN4dVhFUU44andsQ3pCaU1GcDh1c1JBUyswWXJPd3VXNC9SeVkvR3lyc3JIazlMaThmenhQUFB0M1oydHJJVXZUaDA3bkRJTy9lbjN0RHd1VU1kMmZab3JEMXIvZldSNGxnUkpZLzBMT25oK0RmZWdMSDRIYXpaRU15YVhuaU96dmFvNldWeUhYVnBUekZiaDgwRytwbTlZNTZsazIrMHAvSy9LSHo4N0hQLzVkeXpQMTV3dVdwWjJaSkdab2NkRytOSW8ySDByRnV5K1h6MmxyT0lYNnBtalIvV2paRm9sOU1TRW9mT2ZodHdjUTdRSW5sZ2ZXL2N4RFVWa09qczVTZzNHTFRuTDl1VVRVa1owV1d2UVZlcnA2Wk50VlVIdHJBVUV0TU5udE9HTmsyWDRwOVhUZk0rNi9rOTI3ZVdod2oydVVkVUx4WTNqUzFiRTRmMWM2SHRCWTNFbXA4MHBwN1JiZ1JkL0pEcGdtNVRtUisyejdZbkZPUEkxQXcwT05pL2JmczdOTDlIbWJvcTNSNG0rK0ZTQU4wQUVjSTBJUlNTUXgxWDgwdWtPdFVBVU5nbDhLM0tQY2xUeXE5c1RWSDFqRTZYR0RWdUE2TVpRLzRRSFFIZzhjekhMSVJlbTVsY21lL295SytjL010cVptYjBnbEc4VTFLeE9MWjVURVFxMllsSEwyajM1ZjF1dDBSSVBCcE4rRlY4MDd4TFdHWVRYS2NFUUd3dGwzT1NFbENnYVAxRWNhZDd1L09kcmxnMG5VM25ITXhLMzZPZDZ3Zjh2eFp3R3REbW1RMHJsaTBwQTBvVEdHMnVhWllrK3VUTXpkcHNJdFBKVks2SWJTb1NDbGFnYVpxeDBYNHpKSnBwdzBHOUFqTkJHWEFwL3NWMnY4dHN6Zml6T29CelVjOEUybHRObDM5SERaOVkvMnI0Z2laV2lPWTFSZkU2TGVBM1JESFNRaFQ4L3FlK0VrNXBsaXNkK2RKVFJFT3Z4VmFGV3cyUFFJamc5YmFHVjhYcWlFV1VJa21GdElUOFJ0QXRpYUxoRDdVUU5mR3M5V29xREdndThLMUlHdW5hL0crWjVFcndMWHN5cmFmMGxXOVlkYm5TUWg3eUMzekVaUmN2VzNieCsyaVNaakJibnJVMTlRdDl1YmxmT0UwaE9YRWRVMWk3eWF4dEVIRGtEUHc3ZUY0M2wrSFdjRHU1QytrM08rK3NyZXRIdTZOQmdnVWJWOWVWamc1QVBta3Bac1pSZjRtWlRFTURRRlpnRFFiaGV3RkRvckxyT0dLc0NaM0cvSWQvL1FHWFJzTGVpMFFTb0dJSGVaeUJ4RCtCckxXbkQ2TVFGdUFYOVdHTTJ4RkJBdTdHOEYrQWJEdmkwWkJHNmpnOEQ0VWZzVUkzaUNINEF5NGlYdVFORTIwVENEUlVxckVTckdzNHVVZENxSUJ4QVV0SVFHbkU5MkVlbVJpYmlNZDlQRXBqbC9YMW1qTCt2RWJiTnFueHhtWS9OWkI1YlI4MVpncEpSZ3lWSnpab2F2VEFNZWRMS3JrNkQyZjFacWI1ZkZNNTA2VDNiaTQzNjlIUllOMUUxdzVrNkhaN1M4VHRRSlU4ODRyV0IyeGR3TzBPelJxR0kwQ0UyKzFhNjl0VkVPTkRmK2JZL1FBT25WT3ZYVmJMcnF0ZFJmdWk3Tk1wM2diRlIybzNwSmpEK2dmNzZEekdHbC9WcHVoN3ZRNmIwRzMxNmdZZkxZM3I0b1pncmZWM3AvMG4rd1BCdU5ROWdQU1Q5aHVnZWRiQjF6cW5Pam9udDA1MWRFeWg3ZWZsVzdxVjd0WkhXZ3BhdDVJT3ZLUEtMQXJXMlhXZlNQVFBIVk9icHpvN3ByWk9kaHhNclF5M3RZVlhlcW11cVo4eGd5Y1RCVXRqL281akYwSDcycno1NUVuemh2bWwzSGl3NnBYU21XcnhTVlViMmx2eE8vRy8zZk9uVWZ6YWV4MGNEZTdjenhVS2c2bS9qMUxQUFZwM0FxL25qalUxWXJuWkJUVEU2Si9uSzN4cm5SeXM5V2tENURkVGlUNjZzRkxaeHJhTjl2U0d2V1ArcGkwVEhRdnNVV2tja3VlT3FFWjM0aUpxRkhwazdtK1p0Y2dBVERGNndrcDBPNDdiV0RVMEswVGZFYmV3ZlNFdndac20wSzgxNC9WQ1lnV2QweXNTaFlYM3FkaHpRV0cyNGdhNWl6NUxzS2xzbktiTWYzTFJyVzJMNVBIVDl0cURVVHRhTTJOWisyc21MNVIwakYyR3hpMnl6K1lVenk4MVAxOVQyWC9LNXovZ1UrZWVZaEpaVWZYbGJKOUMyNy93eUgvL0ZScDg1ZWc3OU1HODZFNUZnOHozazNvVVZCcmtyZ1p5N0ZUUnpTTU5WRng2OE11aVIwUmZGb1F2MGsyNlcwUXNDTUtYQksvUVo1cG5tdVBtM0NvYzFKOVNKSmRMUENwNElYWDk0TXVpaUw0Q2piOGswUFk2OWdnczN4dGFDbGVZSno2bGgvaCtIaTd3Q2tkRnVFQnQ4T0h4Y0g1SEtnWWVQanJZMWQ0YThObTZRaUU1M3hNMGt6U1N6UnNrVVpQcXExazF4bi95eE5lb1VNSnZBUEg5eE9NOFBtSGhxeTJOTGJMWFlEbGJsOXMrRmJEMDBKVXYweXoxdExqRXRDL3d3c1htTkkrdFYxWDVnTE9EMDdvTzJyQ0dqVWw5WDhpOTdKMm9MbXVnVFFFVzNlVnYycllFQXl6bUtJNnM3YXlncHlpNnNoWEo5SWM1MGRPRmNMUnVnOFV2Vm9vZG1WalN2ejdVM3Q3Vk43U2NxQVpaWHVudGFtLzNkMlNDeVVTbXEyZEVJbjdlUStmSGlVL1JsRGVpcWl5NFBFcFJNU1JaRUUzc2xhMEpSWFdGWEM2WkdFb2twT2k4UzNNblhMcUUvbFpSblhuMFFaQnRUTFlTbEFmSHlxa1dObzh5QW9pZ21aby9SM1UvZUNDM1NIMEJaUWNybVhLL0tZUUNJS09tK0t1czIvVzBidDJocXR0Y3F1dlp4THI0Y1RodVU5V20rclVKdTk3YWFIMWMwOUNGbnJTT0x0UTA2K042K29JbkNYbFNOTVZlbnIvRzU3dUc1M3RGODRVblpmbEpJU3pRT3NPZ2RVSTQ4S1JnaW5aYjRVbXA1cytTd0wzd2JYb0I1MitpYTN6ZGl0R0JaSDB2M1R4KzFhQ0FwREl2OVZ5aE9nRmJ4dzhnc1hsM1VUTkR3cjl3ME5yUHFOTDVWMS9SQThDcVkxN1JwUWRUSTZtZzdoSzlFd2dIam10a0Y0Vm11MnJLWTBod0wyQzk1OW5WcVVqYStrckVHekEwWFNLQ3JHditwZmw4TE9IVGRGa2dZbXZHMHpKSkw0clZuQmhqTnRDek1YMHJ2aHdRTXZXN1VCNHM5WFhuVFkyM1RWalUvcEpPTWlrTVVBZk1TNyt6ZTRwRklzaVZzbVVwRUtJbWk1Um9WalBvQ3lnbnFhak1hNG8xUkhpdjBxdjVRZkJzMndOWmRCYkxXMDhxWGl6NFlyYm56U3YyQWUwaDByY1VUNXVpZVNOKzZ6RjIwR1NraDEreUhYdUM5cUdxQzBuaDlaektKV0Q5dE9oaVhSZENWU0VpMVlRNDl2NzYxMHFobHltNWFoVWtmZTRIZEV2ZUZwOTBQRFJ1UGlmNTdPRkhxRnNRa0NnYnlKRGZyUkRwKzhIZzl5V2lXQ2ZvQ00vVG13YTRicmh2emxUb3Z1Y0ZaUjgvbXVmVVZKdnNDeGxkUDJEOVJJN0luNkZtcHdqWkpocmlqK0hZcFN4a2NMWHVzZjZGa0x0SkMrbVU1VE5FOGFmc0lzZTIvd0QvRjhEdnFXM2Y1RkJkejhCb0NLTWYxQUdVNnBmTGpnTTVWTkdUbUZFUkpwSENoRzNVZFphTUl1TGZDelRGcmNqcTZrZjNybDJ5NHh5TVJ5c2p0MjlkYzJORlFYS2VoT1RCR3lmYk0rWEprRWNPNVQrd2Z1U2l2S2E2UFBxTnFzK3JvbG5GZ3czcU1YZURUb2dtclJrT2VEcUd2M2IraG84TkxaM29MOEpiNXdtU3V1T0dIRXBlY1BWNGUyWnlmWGRlOWFxYVQxMmllajBLMmtOM25MOWR2dHVNRTA3TmQ0OHN0c1gxdjgxMm1ZNlpQeGV2WXZ2dUpQcHQvRFJzaUtPcks5L1Z0TlVPcjlJRHhOb0xKTzBPZDlTWmR4L2t2d3kwTnNZVllONFY4Z0ZDNTUwZ0ZobnRaMS9XaWR2QTlFUkFpSXBJeUl3aDIvRElsZ0MvejdyYzNlb3ozYk1mYTgrcXlqdG5OcCt6WjhmVzk3ZG5SZHhxL1FXNjJwRFY1YlB2dUN5UUNLSmIveFhvbDQ2ZTBYMnVsaHQyeis2ZHZYdWdwQ2pSdGl0bXRweVZUdW5hMlUrUW5QZk1KV00rVjJ2QTJ1RFdxakVhdnM3d1pwVEx3amNhb3Q5b3NMY3JsNHE1R2QxY1lCTnExV2FUQXpIRmNma2JPQ2xERjh6ZXBXTkRpcmpFWldpZmN3ZmVmZjJmN051N1pCeU5qKzNkWjkwWkx4YkhDNFh2emp2d3d2RFEyZWNldU9BQ2orK3ptcGNmRjVXbGFBUnFmdm1PMmNxSXBkRW1Fd1dhamhmdGxPT2E0Z0NNVW5tcjh5M0hBZkFubVZlUjR4M0x0cSs5dVJnQSs2eExWQy9tZVdTbzZGYVd3OTQzSFFqZ05vOFNUNnU2UjBta0ZBL24wSUpYOExQNEIvVjluc2lnS2hqS2FGRTVoSjl0bUYvNGEzTTc2T3hEMDNLY29CbTYwWk9PeFlkaExBYUJIMXpNSFlheHVPWFFSV1A5T2NyYjJXc3pVWk5TRmJhZnBHeGpFYlpCcUljYWtYTFVUNGkxY1p5SHlsbm1QMVJFYkhNS2JXMTdIWm5NeWNpR09mUzBvOHUwT1NlZEhXWnREMDk5SjJSdEEyVlZjL0NrNGROTlFlV2w4TVR5U0Z2UWFMazJuQXAwK0NNK0lndCtxVmNCdXVOeXQyVTN6V1FpclZkM3AxbzZ1OTl6ZGJHVEtLaTNFRS8zRks0NDFKMlZpWmFQaTQxZEJET2QyYkNmU05CRFVVU0NLb3ErVUtxUTI1eUpoWjdlS1lwbDRDUm5iSUdrTElwYlp1enl6QmwyK2JDSUNUVy9oLzFxS0xKcU1uSnRXQlo0SWdjVXQ0eWxYczJ0UzZJN1lIcmNBUlVlNS9MTEN6M3BHRHhPQ0htTFY3K251N01sQlk4VHdyd0NYVWpWTHQ0YkFwSklBa1FuV0NvS3V1Z21vdUVKeWNRZDhJWmUybUhmOXN3dDhCaUNWOXc4WTVkbnRnc0NmU3h1SG9hbTlIUEt0cmR2M3poZW1lZGIvVlppQkVnTmZpeE43UmF1dndlQXBtR0xpeURZbk0ySTZtZE95dnVjc0IrMWhrMFZmUGM4MStxYVgrSzFEUzZJd0d3YUhSZlI5WVo2STNOVXJEb200cHBlY0VHL3hHWWR5bnkvUlB5VEp1VWRxYW4xMEwwbjZkKzIxblJ6TmIrSEVMdHZOWklOZkFjbmtrM1kwL1FkR3IxbDJQZG9mQ2loTHJvd1cxNnpmME16N01RL2FYUVNWdUQ1N3FFVmpwdXc5ZGYxalRPdjFMTjVKNnJCSzAxZXdJN2piNk1YY0YxNStNcUNDa1Y1RVgzaWpkeW42YjdYajMvazJpdE8ydmZhUENlRkpwMWZzLzkvYzdsWlIzaTY5bTlyVHMvOWhNMDZtaURNNXR1TmFrUDJUVFQ0YjgvK2haTEdGYkZRY3ZwVlVvMjc5QS9zbStYWUZ3T2V2blo1cVNNZFlyZ3IwNHlqMGl5NENYUGE2bUpCcGdaSzFBUWlNTm9Od3d3OEtCMWtQTFFFSURUWGpNUFE5VDdxNFFwdkMrako5K0llajBxT0FBRTdRbFQ5ekVwWHNXZmIxS29aL0VHblpuZmZqdUZ0cXlmem5iUVpaaGZhc010M2ZWVnRxeUxMVCs1eXVlNlNmVDA3MjlvT2RuUjhhQkJLeEQrOHZSY0txMVp2OHhQMDgxcHJaeCtNdlRkN0JPaENyeWxSZk4rc0x4UFM4NllETmVFNGE5UGhYSFowRGRya0NmYTFlaE1GSDc3cUFOWDU5YXErN3Zac1FUTThXbGRIcUtlcnRiTzR2VzlGS2w5QTN3TDRPS242aW5GMGsyYjRpL0ZqVkp0MllHQjNXd3hPWEFlQVV4RjB0MGdVUGRPMThSVWE5YVZSSG9seksrQjUrOTljSENaaDN2NjBMTVg0emE1MzVtSmhtUG9jQ3g5MXhOdFB3aWlnUUxzdzJXOTczUzBTaHVsYVdZWnJtR3FjR1JlUHNOTjc3U2hNblRRS2srT0h3WDhiM3cyMFVmeDZpTWFaeXpTSVR4VkhmS0tRR2IzYitqWUIrU2NpL3c1a0pmUkR5SFFTTXZjek9aSkU0MVJ5SXVUZlFJNzdNZlVOYUNGelAxR3FtT2dCL0hzV3B3ZjZGNkYvd1laRDFYNnBud0dOWVpmQ2g2MUw0SWx2dFlVc2VpODBRa2lYWks1QU4wSDM2R1lvd0RuckNSS1JJWUZXRXRjVUUySTV0NE91bGExcnh3WlQxWmdRODZNL2hHenRBWHlTYkE5cVFEbnNTMldhZ2orSTdOdWhoa2dSZzh4WmxxNGUvc3ZXMDdxazFjSS83RkZEK29tUG9BNVp3YVFhbGVIb3JOdjA4WDhXb3FFYmdqSUw2YURCdXN6TDdoUG5WNE0vRUhKMGp5cDZyR2VVQU4rOVVNdnpOSi9VM0RSb29pNTJjeWY2QTcwNWYrbjhLQkd6N3JEZm5xczM4Ti9qK3dCYlh3cHpkZTk0S1VYbktnT01UWGl5RGljcExqUnRHVWFxdXFQYjZMRk00NG14SzIxQXVTaWVkRG9yVit5K3Mxak5ld3haMEYxeTI1cDFiWW13UDNxNE5kZFRTUGdVV1F4SlpWVVd5RGxib2thMlZOaVRUNGMvMUovemVIcjdwMWJlTXRncmFtalg0S29WTi9SMUs0cTdJNi9MU3V2YXRXMkppRDkydUNYWFcyZ0xzUjVLZ0JhSjM5ZldjZGJ1am5Ua2NNbnc1WHRGbDR2SHZFdHBDK21SMWcyYllvY2p1bXA0ZklvSHZsRlpNeVI1Lys1V09hSVFkeWdBZDd4eCthcUJTaUNRSHV4emVkMzQvbDZQSjkvZnFiUmlYdU5sdVMza2pyUnVoQzVhTk0ybkJWUmR4VEtnUHVJMkFrYUxvUWNEa2NPRFU2dHVadlA5V2Y0UWZwN0ZiY3hxeVBidnlpM3FXVk94aVpkTjVwalNFVjJLZVFGandRbVZacDJvTCtNTFphSmN0R3RIZVVnRTZ1RFdzZlRCU3c2aGYrZDVTWlNodVNuVGRVTWpPZFlpdHBFUTd5cVhkcHk1VC9YNjNEZTl1R0lWWFpQdVJXeEZkQmZ6cDduN3VML2wvb21MVDdSOTk5aURmL1g1dXo1KzY4bXhNZHh2SHlQOC85WitYcXl0dVE4eDNjSlJhbmZzY0xJQUdmSzBncWtkL2hjYXZBWE1jZXpVcHg4OURTSTU5ZFUxSGpHSU4zSzlNS2VESEhMa1VkNEpUMldEM2NvWWlpSFR6dzV4cXRXcVl1UWVxdTlDdjVZa3piVmhHZStSbVNwMThpeVhOK0RCRy9lNnZEN2ROY2pxTHBZOXJ1UWxMdjE5THRHTGhqNG1Ld3pGL2dnb3FxWlkzM2taamlxNWt0VXBaUG8vaU5LOEgvOS93dTdaak8vZjZ2bWEzVE85c04wVC8rZmNmMUxSaGZvK2E5YXRDN25oM3ZLbUsvUDlaako4UC96Mk16Y1ZBaDJqZTZuUFFsVXNzbjVaYTM1ZUxYZi9tNnhEcm9CaG1rYkFUdE1SMng4N2ttWjc4RTZPcmJQd0hyeEdRSmM4VGZrdHR6ZmY5cUlUQVBROXpKRHdGRk1zTHBpbjhmU3NoNWxWY0lwQnFnWHpWUi96eC9BOXplTlNuNU1LOVRGdnRwMG5tL0M1TU4vRm85U00vMDkzL2tnOUtpQ2ZieFQ4VHp4VFA0T2ZoVE5mWVdlMnFyNjV6R0xYNEEwMUJhc1RSOUJRZjdnQTZWaW9qbnNMWS9JMjMvbC9kMHcrV0J1S2tmL0dvRkRNY0JkZzJGYTJiN0tUK3FvNzlwNlE2RVNTMEpFakloUVIzWWpGTmd6Q2Vlb01IY0tlSFVCVlVWTDNZdlhYUk9EUGNybkQ2cThrUC9tTkduRUxPM2hCK28yS0RUZEtob1JkTHRQa2Vlc1BSQTYya3FPaVQ3Wis0dzZKNUV1QzhDVWlodHdvS1B2RW82UTFhQ0NQVzFhcitQMGI4L0c3N01nRFBUYU9wejVFVEY1QU85Q0hBWDljQnZBY2NBZ2FodncvTUQ5aFBHZGRUb0g3NWJaa2dNclZwSk00dk9XVGVDZnJYOEdzZjZhZVozMmFEVElJLzlGNk4xUWVhT2dHbmJBdWcxdCsyQkVkdmd2NUNyczFrdysrd1QrTkg2cnQ4Z0Q1WU9QVWVLVW5GMU5ZdkE0bWpEWEtsYW1lWnFlbzB6bElOSmZSMDRDOTJONG9tQW1hVjFobFF6TzZHK3FuSU5VOERYTm5pRTRSL0RqVE50UjNBZ1A1WVBJemtJL2ZFekpKWkxkRjIxbXlJa3hTNlNkTW5wTmw1bFg4ZEkyRkgzV21KRkN3cGpuMTV6Q251cmcxTUs0bE5xY0F0a2R0WlJ2ZC8rQzhKWXU3SVRJL011ZWRXUUNPRU9OVWRhMENpN3hCZDBmUUFlRWZBV0grbUt4Y0NrS2xjSy9nRmU0bG12NHVSVDVtaS8zMk9WMlRqd3BlbUU2cWg1NVMzSzY3UkxTZkZ0L3RGQVdoMXBRczFndmNRVHdxZVowNEZiOXM0REhicUE1djA3SXF6UkJPdGtmeFRUVGdKTDFIcytFLzJ4U054STZNL0V0Rys5bG4wWXpwK3U3cjZjYjZ4aGlyMWhIWmR3M05YK01ubnhZRWZLajJYYXo5dGMrR0VqVktnVzZyZThmZ0hVVFZMMkVuTHFNalNCWEp0bjdrRUl0SFBVajM0SVNaZmlUVEJNRXpWUFNxYlM0d0F0UXdOZFpZd1VJbTc0Q3BSNTFiNk5TelBqQzFaSGdsMnc2UlhaNHZyT3UyZDBaa0o1WjMxaW5adEN1WHZXWUtpZFJMdy9yUGpxa0M1dk5ydXUyTkZ0WWYxaytNcGR0ck90WkJmQzRYY1NManJLZmZaL1ZLR2htbnM4V1U2UGZKVWhNWjljOFZwUmdPQmlRNyttWTVSMjNjVFhGU21aT2R0TGg1aWpleHEzWDAvQ1hacWVqWU80YURzVlpKbUNCdWJKMi81UHpSTmg0RmViYzhRVnlsY1NpT25uKy9OeHhPbXVZNzV4MVFsTGo2eXNPenc1R1FlL3BpSUFqRTYrSk51QTZsb2JMU0t3a3JaRGZjaG84UHoxNDJPL3c2dlNZWmJreTVHai9EK0RiT3gzVTYwVzcyVW43MkRoYnRwbFJJdFFDdHBBRS9HM0JubWxsekZ0Sjd6OXRROGlaVnpQUDE1RlRSVE1GZUpQMUtseEhUdmVqNzUxRXdlRmUxVnJNZWNrTG9MbUhoSnU1MzRGN2VDYndFeWZxem1HWjl1VWlPbzRsMHhQb0F2ZFpGd20xb1NUcHlIbE8wczZwWDRLcFRxcC92UHN0RnhPVk1DMi9ieVQ4TjYzY1owS013czhYYU1vTHRTOE9VQldhSVdjdUxpTDVieGZZN3Q5MXdhZzc1b1VZUC9vdGdlam9XOGpWajI4L0JlS1F5ZU1OYVQ4Q2pyVHFVQ2NtZTBGU2xJekY5dU93WXhyMjZhbjFLOFN4c0Y2OU1pTmpuSHRZOFdGd3psbWtmdi9xQ3BFbjgrZkpKVm5IT3didU5NWE8yY2xmU2IzN0J0dlVyYmJ5cjhoVHZCdWU3SWpmSG1HaU9nWHhTVEltQjRQeEl5dlJrUFNobHNFbUVCU0x0dUxIemp6VnlsYm5qYUJjalBwK2pyb1QrQm5iekVLdlMyT201aVY2ZkdsQ05rSGM3MEtUNzdxYUU2Wm9EZEpHejZIelhISVFzZnJxS2Yzelc4M1Y2ZDNSQllSSy84eFhXdWVrTkdab2ZxT0oxUHRVUFZOUDBIbkZxcGtPUU5hczZ2RU44TDVkZ3NXd21LWStlS0JVeUtWaGpMalpSbGxKdldoT0lSaWtBcjd1MEllcXRGRU81b05BVTFTTEQzQ215NHdDVHhyQzlrKzVIMC82aHN5djlNejJCYVQ4TGdydHA1YklOR0t0dS9BQ05rTWgyYis5TkZLeG5RTmk4UlZGeEtoUlM4cU9sUk5DUFhqUncrY3dCRnorMGEwQ0VFWFNDNDNaMzNqeERaSU44bGtVT1AwdzdtSkJoaWgzdzlBM2wxVkFoYXVhMTZ0OFUrYmFEbjFUTzNtZWwwOWkvRGFJTFFKd2k0ajl6NGt1NkR4RjB5UEFENGZVRzBWVUUrWGpCMTZKWTZ3TXg2emRzT0lPdEpycGZhYW5MNVhmaTdYWHM1RVRhWmZwVUo4QUZ3Mm5iMEUwVUxkMWtJekNtUFdWNjFFN3AyRHpRTm1xanAwN1piUEs3WVg5dm9IVnh2eHZldEcvYThBZEtCcXQvaUtUWkY0ZmlqSVg4Y1JLM00wdXFjTHRvLzVaRkVXcnVzTTJyZDhEdjdZSmQ2VnJRUlNkZHY4YnVpTGFuMTlIS093VG9VaXpaUFR1NDl2ZjhvNDM3My96SmhYYjVzSEx0Nzcwc3c5YzYyOS9vOXAwWkdLMzdiTTBjM2Y0MmQ3MXFlRkI3bUR4cys3YWpMUlNwemRoYSsvcjJ0NFp4VFFPL0lBOHNIL0Z4dUs1U28xU3VIcnVwSEtyaEY0UEZjR3Jld21TN2lqVkZOZmlpZGF2bTgybDM2SXBpUFd3N3Y2TkpPUlJRZ2ZucnJ5L3pHUTRVZVU0TFNzc3B6SHcvZFVQSHJZbENtTy9XNFRtRElkbjZwdTFXajZhZ3dSMXFNS0NoaTkyNnRXU2xOL3hzZFkrU0xDK1R3N1U5U3RlNDVlcCtTaHVyQmJrTVYrSldPVmh0OWNSUWJ6NFJWbXY3S1JzQnA4UDYzaWFDRzcwYUlKZkw5V25aZDdYbTkrUFB2RlhvaHI1OHFVY0Z5Y2dySEpVMS9XS0dncDU0Qy9ETjhXZWh0QXh4M2R3RXB6dzQwdE51SXViL0hSU1NKUmJhUFlhY1ArZkE5TDAyR1FzMmZjR1RLZGd4dk5mU2VqYjNGMmRHTmF4SUc0bUdQR2N0WDdtZUViSXEvU3I4RjZWZnFzcW56S0RtMEs5L0oyZnNHdGd4eFBPcFpaMmk0aUZyRHNUamxIN2RzbWxQbFhLaGk0SDAvYWtNVE82QXQ2OVNKMStPejk4Z3ZnNTQzV3FZcTJQcEJiRW5EYjBRQ0prNkRXaVljN1luMjFXaElQV1N5dWFjcWdEYnlEUEFYQnlwMnlMK3JyVkwwbXhidHRvQnY0cTdrc29QWTJ3RTAvM3BvSUh4Y0Q0MXBDa3FsTktSTnFSSzZFdVNndHNBZjl4VjMrK05qcVFqN2dpSnBSRTBONGdVODlNVHZyaEVETnBYZTR6QTZUUjA4UytTTEV2L0FobXVSajhqK0QxY0c2VUJqRFl2RnJPZktlWi91M0RzZlRTemNoSmZ0V2cwZmVjK0Z6VDZvY0g0Z1NSdkUydVJYOTNrQ25SRlF6eDRyaDduWThDSlo1OUxobVZNN1dqTTE0bG5ibWowandOVWFEQWxGcHl1dnZjRWJzTi8wN0x5aGw5UnovelFQUnZXWGRyVzVqM2p6MlpXcjFvK2hEZzdJTjJKWjFaY2RzTmxLMWdTUk56UThsV3JOLy9aTm05YjIyVnJOM3p1bHJOVXhXZmszK0JZRkRyMC9BcW40ZkxMMkhOZHkvOHpQK3J3aDByY3pUdjcyZXV1Y1F6R1ZmL2VRWE1vaVNxSUxUZUd5TEgzUm8vdXZPclFvYXUrR29kL1g0WGNsVjlOUUc2ZlNuNGthWm8wTGF1Sy9FTlpkVXMvbEJXM05DMXBpZ3duOEQwN3F1MnYrbG9pRmt0OGplYXMzOHFxU240b3VWVzRSRkhsYW12b1MxWTB5ZVlGaHhrOVBnRGZaM09ZK1hEV2JJUHBVaTFiMjJ0Vk14SFNHQ05PdG9iR2FzYkdnV0F0V3d0dFdUTWpsZ1pxMlNwcXUrZm1iWVFrSlo5NDI3dHVreVNhMmNvSXoxYklKU1dKMXJMTXRwc3AyYmw1bXlURmlTSGU5dTdiYU1ZdmJtWHhrYmRDVlp5UXcrKzZqZmdFeUd5NW1Xbzc3NkRWZGg5UW5TUmtHNjFXVDNIRE9EVGVkNXZrRitMMGhzQVA3QnZDbVZ2ZmRadDk1ek1hNG8zOWhQODcvQnpNejFHWUIxMnhWam8vTTlscUJFVVcwb0JPaG5reTMySi9IWVBCaVkvelFrZWhhKzMwanJHUlN1SGN2eXoydHJhbWRmbVFyT0s1TCsrWVh0TlZ5RXRDSjYvS2gzUjV3NWs3MTYvdEtrRHI5WlpiV2IxK3krckpqczVRTUt2dTI3eHRkczI0N0JQNEhxeks2SkhPanNuVld6Wk11cFZEc3NiMzhFS0JWdHl6ZWxWSFo5VWYyOENYQS9lS2NCdUJiaysyZUVUTS9CREZZSHF3NGxqMzZ6c3phQUFHNm1YaGFWS1VqR0htMFN2cG1KSzlMRE9VeGxCbEROdU9pUkcwQktGc1RKUmRXd1hORlJTRVNUbTRabnpwdElBS0NoSFhDYnByblVpVWJtSHBPVU1URjdWR0pXRjRlMC9wbkxTbWhIa3NkT3hiTW5YMWVrSE1wUDhVWFNhNTNkS1ZzdmgrUWR6cWdvNDAxOVNsb254TE9uWEZhc1dRemhTRU00bFhxWnhWV2pFMHZLem5qR0dYa01ucTdxaExGTHJnS1NZdm45bzB1WEp6M1VldHdMbmg2NVc0YWU1OHlxdjNiSjRjS2FiYUFoSmljanV6V2pxb2FMd3B2bENtdnQxN01OZXdEWHlSTGVHRC9DTHRjUXpRbWxVeVVqMEcrcDRvem96Wkpzd3g1azFuZFZRMkd6ejh6QXdSVXN0SytJOTlVd2IyOHQ2cFBrbnFtNElNTnFiNnlBdlpRUTI1a1ZyS2ltS21yRUpXSzJWRTlDMVJ0QWFOWW9yMkQ2Qnd6TjZKT0ViZDlvUnZ6dS9aeVZxSG9XZENXTS8xbS9qUWw3UkIybldKM2FXY0VjVnNDZTVTeFQ2ZjQ0L0RkS0o3WmlaZ1BPK2c0L214UzFZdEd4cnN5VG43bFlObEZuekVMQ1ZydVRTZ09vTXAvOHNEUmlyTEEvZWtkZ0FENEVBU21DWkZSaVhxNlY4Q29DQTBGbEFKc0dBMlIrTUZoNmcxdVovOWZSazdwQWo4TDBHckFlZ2dDSDJIVEppTEVnalRLWmk1OEVIaHN3Q3VnUDhVZktTQkFqMjVCNnZoMWpBc3NzZWN6QjVKRkFoL1B4RkVhWVZBVHZ5QkNGQjBFMkd1TGFBSFdnTzZIeC94czB6QStyQWdwVExJNVZKRUZlVXo0YmJXZUcrNHRUc251Z1RTQ3BkSnJWRXNDTEtnb2xROG9pblI5cjdPUXFkOUVqL3MwU01lVDBUM1ZJK2lQQ2ZUVytIL2tPYzJzUXdyWHEwSHQrbCt2NzZOQmdSMGNuTjNRdThlSHBwa2VWRkVoaThlQXRrcGtrbjNLNEtFMnVobEpoRVVMTWk0SFF1aVd5WXRRYmZSdTZZc3cra0VQYzE4ZXQ2WWUrT3IvTm04eXJWemZVRERpbm1iaGczTzh4SloyQmUyd3Znc1ppd1hYNitjZjc2aURDZ3hPS294cFY5VjRhajJLekU0UXVXQThzeGxmLy9MeHk4VzMvUElhOTk4Nzg5MGVqYXFWbHRCZG43NVE0ZStjL0RnZDM1TkUrNy9BdHZia3ZNQWVKeGpZR1JnWUFEaW9qc3hrdkg4Tmw4WnVKbGZBRVVZTHIzZU54OUcvLy83UDR2NUhYTVFrTXZCd0FRU0JRQ1VEZzlFQUhpY1kyQmtZR0FPK3AvRkVNWDg0di9mLzcrWTN6RUFSVkJBQndEQWV3aDBlSnhqZnNIQXdFdzIvditQZkwxNGNEYU4xRUxjL0o4bWJoNk9PUEwvWHdEWkpJRkhBQUFBQUFCRUFJb0EyQUZtQWN3Q1NBS1VBdm9EWWdRYUJGd0V2QVZlQmVJR0tBWndCcEFHMmdjVUI2WUlNZ2o2Q1hRSndBbytDdHdMVmd3WURGWU02QTE4RGI0T01BNmFEd0FQdWhBZUVLZ1E1QkV3RVhBUjZCSktFcW9URkJPY0ZBd1V0QlU2RmM0V0toWjBGdm9YUUJlNkYvZ1lUaGlRR05RWktCbXFHZzRha0Jyb0c0WWNSaHlpSFdZZHNCNFFIbklleWg4MEg1WWdBaUI2SU5RaEVDRmVJY3dpTENKTUlwNGkvaU5rSTRRa2JDVDBKVEFscmlhSUp3QW5XQ2UrSis0b0hpaXVLV1lwdUNyUUt4NHI0Q3hzTFBZdGdDM09MZjR1TGk2cUx4SXZrQy9pTUY0dzhqRllNZ0F5YmpLY01zd3pPak40TStnMFpqVE9OVHcxY0RXUU5kdzJRRGJnTjBJM3ZqaG1PVUk1bEFBQUFBRUFBQUNJQU5BQURRQUFBQUFBQWdBQUFCQUFjd0FBQURBTGNBQUFBQUI0bkhXUXpVckRRQlNGejlnZnRRVVZCYmZPU2lyUzlBZDBJUlFLbFhham15TGRTaHJ6VjlKTW1aa1craHErZ3cvalMvZ3NucVpUa1lvSmsvbnV1ZWZldVJrQTUvaUN3UGE1NDlxeXdCR2pMUi9nRUQzSEplcVBqc3ZrSjhjVjFQSGl1RXI5MVhFTnQ0Z2QxM0dCZDNZUTVXTkdNM3c0RmpnVHA0NFBjQ0t1SEplb054Mlh5VDNIRlZ5S1o4ZFY2b0hqR2liQ09LN2pXbndPMUdLdDB6aXhzakc0a2QxMjUxNU8xMUpSU25NL2svN1NKa29iMlplUnltMllaY29MMU54RXpUUlF1Um1IOFRMejlTN2M3Wk5RbTFUbHN1TzFkOUlvekVQdDIvQnQwOTJzNHE2MWtZeTBtc3VoNnlzWFdzM0N3SHFKdFl1SFZ1djNlUmhBWVlFMU5GSmVWUUlMaVFiVkcrNWR0TkhCUFdsS2g2Uno2MHFSdzBkR3hjZVNGVW1STVl6N1hCR2puR3BJUjBiMkVQQTdaejVDazdWQmtUY1kweEd6UG1NWC9TZTdIMC9vM3JqU0lwYWN5K04wKzY0UlhYbmg5SXNKM241bU4xanh0QzVWeTVyTmxMcVlTbUs0TjYva2ZXeHlNeW9CZGErNEZVdjFBUzIrLy96Zk40S3pna2NBZUp4dFUxZDdHemNRMUVoWFNGSE5pWk00dmZjb3NhdzBwem05OTk0WkVOampRYndESUFCSGlrcnZ6ci9PZ2hMeitTSDNBUElPdXpPenM3c3JxeXNuei9ySy96K1hzWW8xWk1oUm9FUVBmYXhqZ0Exc1lndmIyTUVaWElXcmNSYlg0RnBjaDNPNEhqZmdSdHlFbTNFTGJzVnR1QjEzNEU3Y2hidHhEKzdGZmJnZkQrQkJQSVJkUEl4SGNCNTd1SUI5UElySDhEaWV3Sk80aUtmd05KN0JzM2dPbC9BOFhzQ0xlQWt2NHhXOGl0ZndPdDdBbTNnTGIrTWR2SXYzOEQ0K3dJZjRDQi9qRTN5S3ovQTV2c0NYK0FwZjR4dDhpeUcrZzhBSUVncUVDbVBVMERqQUJBMWFHRmc0SE1JaklLTERGRE1jWVk1amZJOGY4Q04rd3MvNEJiL2lOL3lPUC9Bbi9zTGZ1SXgvVnZKOVpXTllFMHJsc3JHQitzNXJTU05ySjFsTmplc1pHMC9ldkoyRm9uT05GWXRJT1NuRzNuWXVES3dqTTZ4c284anZlRDJ1NDFBMGVteUdrWTVpNmJ4Vm5ZeWJoeDJGcUMwSEVxbHlKcnpSWnB4MWdYeSt5TmxnSGwxcEtWSlFWdHVXZXRLYTZJV01KV3RMZ1psd0xtVFN1bm11V3pHbUxCSDNBc1hJVUtFNHRyYlZwdkFrclZkOTRWbXZzak96SnJ1NHJRM25SMWJVdWtaRTJreVpwRTVGOTROV05HeDBpR1hDc0Ywc0RqdXVPbXg0U3RGcWNaZU5sWlZsTU5vNWlwbGovb0hzUXJUdE1Na3FGM3lkSzBTTVF0YWxFdk9wcGxtbVRXVjNsdXhpUEt3ME5TcDNJa1RLZ3ZWeHphbUtKVHYrbTBVUkpqMEc4M1lxbWtHd1Vvc20xTUpUNGNpNmhnb2QyVmhaS0dxSTAwZENUdFpHd3VUVUN0MWtJNjZGM2FaRW15L1Mra3FFZW1TRlYwV3NoWm1FUEZyV3RiNzBkWGV2REU0Ynd5MXd0WTAycHltWldJNDZuVnpaT09EcWREVmZ0UEdNNUJ2eVZ6UTJJNlZqMFlnNTI5WGprYkZleC9sT2lNSW9KaHphMFFISkdNckV4VlM5RTZzdTdwY0xzWW01azVKQ0tEMVZua0s5M1ZCMTVkeGtxWFc1NURKaXhtZk1pZjMxV1lvYWVHcnRORFhNVEJpbWJZV2Y5N2czWGNzYUMrVkZGY1BtNlhkRmtlbVloTnN1S1d2MGhIb0orV1NJYTVLVEFaOVRiMDFDTHVqSXNmNHNJZWNwWjU1SE1Xb29XOHpzd3AzZHZhMm9HeHJLVkdRYWk3TzhMWFZTUE9xYTFCYTFtSlYwOUNveFRhN1F4aW5GWXM2WGZFbEZVZW1HWGMxU09WdExIRzBVOC9RNy92RXNoSHFKUFBVNjQyaksrTHY5ajlOMDdZajhrcE5YY3YwRU1iMzNUNGs2eDl0S3dwZVY5YngyYXQzUWJEalRTY0QyRW9kN21FaUx6aVFRWHVnMGo1M2hqbWJPaHJqS2N4MFlRdFpybkZ4VTNoN3o0a25iSnNkRDJyaWttRmRTeXhuN2QwN3BJRzNIVnl4QmRRMXBub0t3ZS83Q2xoUkdVck1ydFdkSmFtWGxYNTZHMENFQWVKeGo4TjdCY0NJb1lpTWpZMS9rQnNhZEhBd2NETWtGR3hsWW5UWXlNR2hCYUE0VWVpY0RBd01uTW91WndXV2pDbU5IWU1RR2g0NklqY3dwTGh2VlFMeGRIQTBNakN3T0hja2hFU0Fsa1VDd2tZRkhhd2ZqLzlZTkxMMGJtUmhjQUFmVElyZ0FBQUE9JykgZm9ybWF0KCd3b2ZmJyksXG4gICAgICAgdXJsKCdkYXRhOmFwcGxpY2F0aW9uL29jdGV0LXN0cmVhbTtiYXNlNjQsQUFFQUFBQVBBSUFBQXdCd1IxTlZRckQrcyswQUFBRDhBQUFBUWs5VEx6SStJRW42QUFBQlFBQUFBRlpqYldGdy9Dc2pmd0FBQVpnQUFBakVZM1owSUFBQUFBQUFBSW04QUFBQUNtWndaMjJJa0pCWkFBQ0p5QUFBQzNCbllYTndBQUFBRUFBQWliUUFBQUFJWjJ4NVpwbUh2L0lBQUFwY0FBQnpLR2hsWVdRSTRjRGZBQUI5aEFBQUFEWm9hR1ZoQjVvRDFRQUFmYndBQUFBa2FHMTBlQkc1Ly9vQUFIM2dBQUFDSUd4dlkyR3AvNDdJQUFDQUFBQUFBUkp0WVhod0FUa01VZ0FBZ1JRQUFBQWdibUZ0WmI5YW90NEFBSUUwQUFBQ3pYQnZjM1F0TzR5QkFBQ0VCQUFBQmE5d2NtVnczV3NEaFFBQWxUZ0FBQUI3QUFFQUFBQUtBQjRBTEFBQlJFWk1WQUFJQUFRQUFBQUFBQUFBQVFBQUFBRnNhV2RoQUFnQUFBQUJBQUFBQVFBRUFBUUFBQUFCQUFnQUFRQUdBQUFBQVFBQUFBQUFBUVBsQVpBQUJRQUFBbm9DdkFBQUFJd0NlZ0s4QUFBQjRBQXhBUUlBQUFJQUJRTUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBVUdaRlpBQkE2QURvaGdOUy8yb0FXZ05TQUpZQUFBQUJBQUFBQUFBQUFBQUFCUUFBQUFNQUFBQXNBQUFBQkFBQUFtQUFBUUFBQUFBQldnQURBQUVBQUFBc0FBTUFDZ0FBQW1BQUJBRXVBQUFBQkFBRUFBRUFBT2lHLy84QUFPZ0EvLzhBQUFBQkFBUUFBQUFCQUFJQUF3QUVBQVVBQmdBSEFBZ0FDUUFLQUFzQURBQU5BQTRBRHdBUUFCRUFFZ0FUQUJRQUZRQVdBQmNBR0FBWkFCb0FHd0FjQUIwQUhnQWZBQ0FBSVFBaUFDTUFKQUFsQUNZQUp3QW9BQ2tBS2dBckFDd0FMUUF1QUM4QU1BQXhBRElBTXdBMEFEVUFOZ0EzQURnQU9RQTZBRHNBUEFBOUFENEFQd0JBQUVFQVFnQkRBRVFBUlFCR0FFY0FTQUJKQUVvQVN3Qk1BRTBBVGdCUEFGQUFVUUJTQUZNQVZBQlZBRllBVndCWUFGa0FXZ0JiQUZ3QVhRQmVBRjhBWUFCaEFHSUFZd0JrQUdVQVpnQm5BR2dBYVFCcUFHc0FiQUJ0QUc0QWJ3QndBSEVBY2dCekFIUUFkUUIyQUhjQWVBQjVBSG9BZXdCOEFIMEFmZ0IvQUlBQWdRQ0NBSU1BaEFDRkFJWUFod0FBQVFZQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBREFBQUFBQUdaQUFBQUFBQUFBQ0hBQURvQUFBQTZBQUFBQUFCQUFEb0FRQUE2QUVBQUFBQ0FBRG9BZ0FBNkFJQUFBQURBQURvQXdBQTZBTUFBQUFFQUFEb0JBQUE2QVFBQUFBRkFBRG9CUUFBNkFVQUFBQUdBQURvQmdBQTZBWUFBQUFIQUFEb0J3QUE2QWNBQUFBSUFBRG9DQUFBNkFnQUFBQUpBQURvQ1FBQTZBa0FBQUFLQUFEb0NnQUE2QW9BQUFBTEFBRG9Dd0FBNkFzQUFBQU1BQURvREFBQTZBd0FBQUFOQUFEb0RRQUE2QTBBQUFBT0FBRG9EZ0FBNkE0QUFBQVBBQURvRHdBQTZBOEFBQUFRQUFEb0VBQUE2QkFBQUFBUkFBRG9FUUFBNkJFQUFBQVNBQURvRWdBQTZCSUFBQUFUQUFEb0V3QUE2Qk1BQUFBVUFBRG9GQUFBNkJRQUFBQVZBQURvRlFBQTZCVUFBQUFXQUFEb0ZnQUE2QllBQUFBWEFBRG9Gd0FBNkJjQUFBQVlBQURvR0FBQTZCZ0FBQUFaQUFEb0dRQUE2QmtBQUFBYUFBRG9HZ0FBNkJvQUFBQWJBQURvR3dBQTZCc0FBQUFjQUFEb0hBQUE2QndBQUFBZEFBRG9IUUFBNkIwQUFBQWVBQURvSGdBQTZCNEFBQUFmQUFEb0h3QUE2QjhBQUFBZ0FBRG9JQUFBNkNBQUFBQWhBQURvSVFBQTZDRUFBQUFpQUFEb0lnQUE2Q0lBQUFBakFBRG9Jd0FBNkNNQUFBQWtBQURvSkFBQTZDUUFBQUFsQUFEb0pRQUE2Q1VBQUFBbUFBRG9KZ0FBNkNZQUFBQW5BQURvSndBQTZDY0FBQUFvQUFEb0tBQUE2Q2dBQUFBcEFBRG9LUUFBNkNrQUFBQXFBQURvS2dBQTZDb0FBQUFyQUFEb0t3QUE2Q3NBQUFBc0FBRG9MQUFBNkN3QUFBQXRBQURvTFFBQTZDMEFBQUF1QUFEb0xnQUE2QzRBQUFBdkFBRG9Md0FBNkM4QUFBQXdBQURvTUFBQTZEQUFBQUF4QUFEb01RQUE2REVBQUFBeUFBRG9NZ0FBNkRJQUFBQXpBQURvTXdBQTZETUFBQUEwQUFEb05BQUE2RFFBQUFBMUFBRG9OUUFBNkRVQUFBQTJBQURvTmdBQTZEWUFBQUEzQUFEb053QUE2RGNBQUFBNEFBRG9PQUFBNkRnQUFBQTVBQURvT1FBQTZEa0FBQUE2QUFEb09nQUE2RG9BQUFBN0FBRG9Pd0FBNkRzQUFBQThBQURvUEFBQTZEd0FBQUE5QUFEb1BRQUE2RDBBQUFBK0FBRG9QZ0FBNkQ0QUFBQS9BQURvUHdBQTZEOEFBQUJBQUFEb1FBQUE2RUFBQUFCQkFBRG9RUUFBNkVFQUFBQkNBQURvUWdBQTZFSUFBQUJEQUFEb1F3QUE2RU1BQUFCRUFBRG9SQUFBNkVRQUFBQkZBQURvUlFBQTZFVUFBQUJHQUFEb1JnQUE2RVlBQUFCSEFBRG9Sd0FBNkVjQUFBQklBQURvU0FBQTZFZ0FBQUJKQUFEb1NRQUE2RWtBQUFCS0FBRG9TZ0FBNkVvQUFBQkxBQURvU3dBQTZFc0FBQUJNQUFEb1RBQUE2RXdBQUFCTkFBRG9UUUFBNkUwQUFBQk9BQURvVGdBQTZFNEFBQUJQQUFEb1R3QUE2RThBQUFCUUFBRG9VQUFBNkZBQUFBQlJBQURvVVFBQTZGRUFBQUJTQUFEb1VnQUE2RklBQUFCVEFBRG9Vd0FBNkZNQUFBQlVBQURvVkFBQTZGUUFBQUJWQUFEb1ZRQUE2RlVBQUFCV0FBRG9WZ0FBNkZZQUFBQlhBQURvVndBQTZGY0FBQUJZQUFEb1dBQUE2RmdBQUFCWkFBRG9XUUFBNkZrQUFBQmFBQURvV2dBQTZGb0FBQUJiQUFEb1d3QUE2RnNBQUFCY0FBRG9YQUFBNkZ3QUFBQmRBQURvWFFBQTZGMEFBQUJlQUFEb1hnQUE2RjRBQUFCZkFBRG9Yd0FBNkY4QUFBQmdBQURvWUFBQTZHQUFBQUJoQUFEb1lRQUE2R0VBQUFCaUFBRG9ZZ0FBNkdJQUFBQmpBQURvWXdBQTZHTUFBQUJrQUFEb1pBQUE2R1FBQUFCbEFBRG9aUUFBNkdVQUFBQm1BQURvWmdBQTZHWUFBQUJuQUFEb1p3QUE2R2NBQUFCb0FBRG9hQUFBNkdnQUFBQnBBQURvYVFBQTZHa0FBQUJxQUFEb2FnQUE2R29BQUFCckFBRG9hd0FBNkdzQUFBQnNBQURvYkFBQTZHd0FBQUJ0QUFEb2JRQUE2RzBBQUFCdUFBRG9iZ0FBNkc0QUFBQnZBQURvYndBQTZHOEFBQUJ3QUFEb2NBQUE2SEFBQUFCeEFBRG9jUUFBNkhFQUFBQnlBQURvY2dBQTZISUFBQUJ6QUFEb2N3QUE2SE1BQUFCMEFBRG9kQUFBNkhRQUFBQjFBQURvZFFBQTZIVUFBQUIyQUFEb2RnQUE2SFlBQUFCM0FBRG9kd0FBNkhjQUFBQjRBQURvZUFBQTZIZ0FBQUI1QUFEb2VRQUE2SGtBQUFCNkFBRG9lZ0FBNkhvQUFBQjdBQURvZXdBQTZIc0FBQUI4QUFEb2ZBQUE2SHdBQUFCOUFBRG9mUUFBNkgwQUFBQitBQURvZmdBQTZINEFBQUIvQUFEb2Z3QUE2SDhBQUFDQUFBRG9nQUFBNklBQUFBQ0JBQURvZ1FBQTZJRUFBQUNDQUFEb2dnQUE2SUlBQUFDREFBRG9nd0FBNklNQUFBQ0VBQURvaEFBQTZJUUFBQUNGQUFEb2hRQUE2SVVBQUFDR0FBRG9oZ0FBNklZQUFBQ0hBQU1BQUFBQUE4SUIwZ0FNQUJrQUpnQUt0eUFhRXcwR0FBTXRLeE15SGdFVURnRWlMZ0UwUGdFaE1oNEJGQTRCSWk0Qk5ENEJJVEllQVJRT0FTSXVBVFErQVpvZk5SOGZOVDQxSHg4MUFYa2ZOUjhmTlQ0MUh4ODFBWGtnTlI4Zk5UODFIeDgxQWRFZk5UNDFIeDgxUGpVZkh6VStOUjhmTlQ0MUh4ODFQalVmSHpVK05SOEFBQUFCQUFEL3R3T2JBd1VBTHdBR3N5Y1BBUzByQVNFeU5qMEJOQ1lqSVNJbU5SRTBKaXNCSWdZVkVSUUdJeUVpQmgwQkZCWXpJVElXRlJFVUZqc0JNalkxRVRRMkFrRUJQUXdSRVF6K3d3a0tFZ3M2Q3hJS0NmN0REQkVSREFFOUNRb1NDem9MRWdvQkpCSUxPZ3NTQ2drQlBRd1JFUXord3drS0VnczZDeElLQ2Y3RERCRVJEQUU5Q1FvQUFBRUFBUC81QTFjQ3dRQXZBQWF6SGc0QkxTc0JOelkwTHdFbUlnOEJCaUl2QVNZaUR3RUdGQjhCRmhRUEFRWVVId0VXTWo4Qk5qSWZBUll5UHdFMk5DOEJKalFDVlBvSkNTWUpGd244QlJBRi9Ba1hDU2dKQ2Z3RkJmNEpDU2dKRnduOEJSQUcrd2tYQ1NnSkNmb0ZBV3I4Q0JjSktBa0ovQVVGL2drSktBa1hDZnNHRUFYK0NSY0pLQWtKL0FZRy9Ba0pLQWtYQ2Z3RkVBQUFBQVVBQUFBQUF3d0NpZ0FuQURjQVJ3QlhBR2NBRDBBTVlscFNTa0k2TWlvZkFBVXRLd0VoSWdZZEFTTWlCaFFXT3dFVkl5SUdGQlk3QVJVaklnWVVGanNCRlJRV015RXlOalVSTkNZQkZBWXJBU0ltUFFFME5qc0JNaFlWRnhRR0t3RWlKajBCTkRZN0FUSVdGUmNVQmlzQklpWTlBVFEyT3dFeUZoVVhGQVlyQVNJbVBRRTBOanNCTWhZVkFzMytpQmtrRkJBWUdCQVVGQkFZR0JBVUZCQVlHQkFVSlJnQmVCa21KZjdIQlFVb0JBWUdCQ2dGQlZBRkJSUUVCZ1lFRkFVRlpBVUZLQVFHQmdRb0JRVlFCUVVVQkFZR0JCUUZCUUtLSXhjV0Z5RVlaQmNoR0dRWElSZ1NGeWNwR1FIZ0dCNytaZ1FHQmdUY0JRVUZCZHdFQmdZRTNBVUZCUVhjQkFZR0JOd0ZCUVVGM0FRR0JnVGNCUVVGQlFBQUFnQUEvNUFES3dNdkFERUFRUUFJdFR3MElRQUNMU3NsSXlJbVBRRTBOamMyTnpZM05pNEJKeVlHQndZSERnRXJBU0ltTno0Qk56NEJGeDRCRnhZWEZnNEJCdzRCSFFFVUJoY1VCaXNCSWlZOUFUUTJPd0V5RmhVQ0ltQUxFRWM2SkJvaUJnVW5SeXNmT3hnbUJnSVBER0FORVFFR01DY3VjMEJPaGlncEF3TXhYajRORUJNVEVReGdDeElTQzJBTUVYY1FDeDA5WkJRTkd5b3ZLMDB3QVFFV0ZTTXlDUXdTRFRaaEp5c3RBUU5SUWtSUFFubGNGd1VWREIwTUVjb0xFaElMWVFzUkVRc0FBQUFBQkFBQS81QURtd01zQUNjQU53QkhBRmNBRFVBS1VrcENPaklxSHdBRUxTc0JJU0lHSFFFaklnWVVGanNCRlNNaUJoUVdPd0VWSXlJR0ZCWTdBUlVVRmpNaE1qWTFFVFFtQXhRR0l5RWlKajBCTkRZeklUSVdGVGNVQmlNaElpWTlBVFEyTXlFeUZoVTNGQVlqSVNJbVBRRTBOak1oTWhZVkEwNzl2eDh1T1JraElSazVPUmtoSVJrNU9Sa2hJUms1TGg4Q1FTQXRMYVlMQ2Y3ekNBc0xDQUVOQ1FzbUN3aitwZ2tMQ3drQldnZ0xKd3NKL2xrSUN3c0lBYWNKQ3dNc0xTQTZJVElnbWlFeUlaa2hNaUU2SHk0dElBTUNJQzM5Y2drS0Nna21DUW9LQ1hRSkN3c0pKZ2tLQ2dtYUNRb0tDWE1KQ3dzSkFBQURBQUFBQUFPYkFyZ0FEd0FmQUM4QUNyY25JQmNRQndBRExTc0JJU0ltUFFFME5qTWhNaFlkQVJRR0F5RWlKajBCTkRZeklUSVdIUUVVQmdNaElpWTlBVFEyTXlFeUZoMEJGQVlEZnZ6c0RCRVJEQU1VREJFUkRQenNEQkVSREFNVURCRVJEUHpzREJFUkRBTVVEQkVSQWtVUkREa01FUkVNT1F3Ui91RVNDem9LRVJJTE9nb1IvdDRSRERrTUVSRU1PUXdSQUFBQUFBSUFBUCtRQThJRExRQWZBRVFBQ0xVeklSY0FBaTBySlNNaUJoMEJGQVlqSVNJbVBRRTBKaXNCSWdZVkVSUVdNeUV5TmpVUk5DWUJKaUlIQVFZVUh3RVdNajhCTmpJV0ZSRVVGanNCTWpZMUVUUTJId0VXTWo4Qk5qUW5BNlU2Q3hJUkRQMkdEQkVTQ3pvTEVTMGZBd0lnTFJMK1Z3Z1lDUDc4Q0FncENCZ0liQVVSREJBTE9nc1VGZ3BzQ1JjSktBZ0kvaElMd0F3UkVRekFDeElTQy83OElDMHVId0VFQ3hJQ0pnZ0kvdndJR0Fnb0NRbHJCZ3NJL21nTEVoTUtBWllOQ1FsckNRa29DUmNJQUFNQUFQK1FBOElETEFBVUFDa0FQd0FLdHprdkh4VUtBQU10S3dFaUJ3WUhCaFFYRmhjV01qYzJOelkwSnlZbkpnTWlKeVluSmpRM05qYzJNaGNXRnhZVUJ3WUhCZ01tUFFFMEppc0JJZ1lkQVJRZkFSWXlQd0UyTkNjQjlIMXJhVDAvUHoxcGEvcHNhRDQvUHo1b2JIMWRVVTR2THk4dlRsRzZVVTR2THk4dlRsRWNCeElMT2dzU0NJNEpGd2tvQ1FrRExEOCthR3o2YkdnK1B6OCthR3o2YkdnK1AvellMeTlPVWJwUlRpOHZMeTlPVWJwUlRpOHZBVllJRGJrTEVoSUw2UWtNamdrSktBa1hDUUFBQUFBREFBRC84Z1BvQXNzQUtBQlBBSHNBQ3JkeFhVYzFIUWtETFNzQkpqVTBOelkzSmljbUl5SUhEZ0VWRkJjV0ZSUUhCZ2NHQndZSEhnRTdBVEkyTnpZM05qYytBU1VtSnlZMU5EYzJOVFFtSnlZaklnY0dCeFlYRmhVVUJ3WVdGeFlYSGdFN0FUSTJOVFluSmdVbUp5WTFORGMrQVRVMEppY21JZ2NPQVJVVUZoY1dGUlFIQmdjR0J3WUhGQll6SVRJMk5TWW5KaWNtQVRJcEdoa3NFQnNkSkNrZkhTQXJIQWtOSVQwZ0tRRUNKUjVBQnc0RUZTa2NMZzBHQWlvaERBb2NLeDhkSHlva0hSd1JMQmthS1FjSERHUWtCQTRIUUI0bEFTY2cvdFVrRGd3aEZ4a2lJQ05hSXlBaUdSY2hDdzRsU0NBdkFTNGhBWkFoTGdFV0V5VVpBVGc5VFVFM05DSWJEeEVWRTBRb1FpVWVHQkVNRVE0YkhTVXJJU29JQnlZZkZoZ0dHakVQRHd3U0hCb25RQ2hFRXhVUkR4c2lORGRCVFQwTUdRWXdRd2NJS2lFckpSMXhFQkVPRWgwZkZqc2lMRW9WRnhjVlNpd2lPeFlqR1JRTUVSQWZHU1F2SXpJeUl5QWFGeFlPQUFJQUFQKzNBOElEQlFBWEFDY0FDTFVqR0E4SEFpMHJBU0VpSmk4QkxnRXJBU0lHRlJFVUZqTWhNalkxRVRRbUp5RWlCaDhCRmpNaE1oY1dOalUwSmdOMS9rc1VKQXREQ3lRVmd5QXNMQ0FEQWlBdExTRCtNQVVGQXg0R0RBR25JaGtHREMwQ1JSVVJkQklVTFNEOVRDQXRMU0FCOUNBdG1na0ZOQXNNQXdnSElDMEFBQVFBQVAvS0E1c0M4Z0FQQUI4QUx3QS9BQTFBQ2pjd0p5QVhFQWNBQkMwckFTRWlCaDBCRkJZeklUSTJQUUUwSmdjaElnWWRBUlFXTXlFeU5qMEJOQ1lESVNJR0hRRVVGak1oTWpZOUFUUW1KeUVpQmgwQkZCWXpJVEkyUFFFMEpnTisvT3dNRVJFTUF4UU1FUkVNL1lZTUVSRU1Bbm9NRVJFTS9ZWU1FUkVNQW5vTUVSRU0vT3dNRVJFTUF4UU1FUkVDOGhJTE9nc1JFUXM2Q3hMbkVRdzVEQkVSRERrTUVmNHpFZ3M2Q3hJU0N6b0xFdVlSQ3pvTUVSRU1PZ3NSQUFjQUFBQUFBeUFDaWdBUEFCOEFMd0EvQUU4QVh3QnZBQk5BRUdkZ1YxQkdRRFl3SmlBWEVBY0FCeTByTnpNeU5qVVJOQ1lyQVNJR0ZSRVVGZ0VqSWdZVkVSUVdPd0V5TmpVUk5DWUJNalkxRVRRbUt3RWlCaFVSRkJZN0FUSTJOUkUwSmlzQklnWVZFUlFXTXlNeU5qVVJOQ1lyQVNJR0ZSRVVGak1GSVNJR0hRRVVGak1oTWpZOUFUUW1BeUVpQmgwQkZCWXpJVEkyUFFFMEp0d3lDQXdNQ0RJSURBd0NPRElJREF3SU1nZ01EUDcrQ0F3TUNEd0lEQXdJdEFnTURBZ1VDQXdNQ1BBSURBd0lGQWdNREFnQm12M1FDQXdNQ0FJd0NBd01DUDNRQ0F3TUNBSXdDQXdNdmd3SUFUWUlEQXdJL3NvSURBRmVEQWoreWdnTURBZ0JOZ2dNL3FJTUNBRTJDQXdNQ1A3S0NBd01DQUUyQ0F3TUNQN0tDQXdNQ0FFMkNBd01DUDdLQ0F3OERBZ1VDQXdNQ0JRSURBSUlEQWdVQ0F3TUNCUUlEQUFBQUFNQUFBQUFBeUVDZHdBY0FDd0FWZ0FLdDA4ekp4OFNBQU10S3dFaUJ3WUhCaFVVRnhZUEFRWVdQd0UyRnhZek1qYzJOelkwSmljbUF4UUdLd0VpSmowQk5EWTdBVElXRlRjT0FSMEJGQVlyQVNJbVBRRTBQZ0UzTmk0Q0J3WUhEZ0VyQVNJbU56WTNQZ0VYSGdJWEZnWUI5RkpHUXlncEpnVURIQVFTREZnSkNFaFdVa1pES0NsU1EwWTBEQWdVQ0F3TUNCUUlEQWdEQlF3SUZBZ01HeW9IRUFVaUxoUU5Bd0lLQnhVSkRBRUlHaEV0R1I4MUlBRUNMUUoySmlWQVFVeElRUWdJV1F3UkJCOERCU29tSlVCQm1JRWxKdjQrQ0F3TUNCUUlEQXdJYXdFRkJCQUlEUTBJRUJZbER3c1ZMaDhCRWcwUEJ3a1BDU1laRVJJQkFTQTFIeWRBQUFBQUFBUC8vdiszQStzRENRQU9BQmNBSndBS3R5SWFFdzhKQXdNdEt5VUJMZ0VHQndFR0hnRXpJVEkrQVNVaUpqUTJNaFlVQmpjVUJpc0JJaVk5QVRRMk93RXlGaFVEM2Y1SEN5VWxDLzVJRFFZZ0Z3TndHQ0VHL2drWklTRXlJU0VoQ3doTkNRc0xDVTBJQ3lFQ3h4TU9EaFA5T1JZeUlpSXlSaUV5SUNFd0lxMEpDZ29KK2dnTEN3Z0FBQUFBQWdBQS81QUR3Z010QUIwQUtnQUl0U1FlRHdNQ0xTc2xGUlFHSXlFaUpqMEJORGMyUHdFMkZ4WXpNalkzTmg4QkZoY1dGeFlCTWg0QkZBNEJJaTRCTkQ0QkE4STNKdjBlSlRkUU9YUU1FQTFNV1N0VkpnMFBERTB1UUNBbi9qSSthajA5YW54cVBUMXFGeW9sT0RjbUtrdEFMVE1HQlFjeUdoZ0hCUVloR3lRbkx3TGdSSFdLZFVSRWRZcDFSQUFBQVFBQS8rd0Myd0xNQUF3QUJyTUxCQUV0S3lVUk5ENEJGd0VXRkFjQkJpWUJEUTRVQ1FHWERBeithUTRkQ2dLb0NnNEJCLzZ6Q0I4Si9xOEtEZ0FBQUFJQUFQK1FBOElETUFBakFDOEFDTFVxSkJzS0FpMHJKU01pSmowQk5DY21KeVlIQmdjT0FSMEJGQVlyQVNJR0hRRVVGak1oTWpZOUFUUW1CU01pQmhjZUFUSTJOelltQTNVS0d5Z3NMRWxMVjFGRlFrMG5IQW9mTFJFTEEySUxFaTMrdmJ3SkRBSUhRRlJBQ0FFTTF5Z2MzVlpKUnlncEF3UXRLNDlUMVJ3bUxpQWRDeEFSREIwZkxkTVBDQ2cxTmljSkRnQUJBQUQva0FQRUF5d0FJZ0FHc3h3RUFTMHJBU01SRkFZckFTSW1OUkVqRVJRR0t3RWlKalVSSXlJbUp5WTNBVFl5RndFV0J3WURybUFLQ2NBSkMrWUxDY0FJQzJBR0N3RUVDQUc3QlJJRUFib0lCQU1CUy81WkNRc0xDUUZIL3JrSkN3c0pBYWNHQlF3S0Fib0dCdjVHQ0E0TEFBUUFBUCtRQThJRExBQVZBQ3dBUXdCYUFBMUFDbFpMUHpRaEZnc0FCQzByQVNFeU5pOEJOelkwTHdFbUJnOEJKeVlHRlJFVUZnY2hJZ1lmQVFjR0ZCOEJGakkvQVJjZUFUWTFFVFFtRnhFVUZqOEJGeFl5UHdFMkppOEJOejRCSmlNaElnWW5FVFFtRHdFbkppSVBBUVlVSHdFSERnRVdNeUV5TmdJNUFTZ1BCZ3RlclFnSVJ3Z1VDYTFpQ3hrVWdQN1lEd1lMWHEwSEIwY0lGQW12WWdZUkRCVmlHUXRncndnV0IwY0dBUWV0WGdnQ0Nnbisxd29TVFJvTFlLOEhGZ2hIQndldlhnZ0VDZ29CSmdvWEFZVVpDMkN2Q0JZSFJ3WUJCNjFlREFjTy90Y0tFazBhQzJDdkJ4WUlSd2NIcjE0SUJBb0tBU1lLRngvKzJBOEdDMTZ0QndkSENCUUpyV0lIRWd3VmdBRW9Ed1lMWHEwSUNFY0hGUW12WWdZUURCUUFBQUFEQUFEL3BBUEFBeG9BTEFBNUFGMEFDcmRUUVRNdEpRMERMU3NsTkRZM05qYzJOelkzUGdFdUFRNEJCd1lYRmhjV0Z4WUhCZ2NHQnpZSEJnY0dCd1llQVRNaE1qWW5MZ0VCSWc0QkZCNEJNajRCTkM0QkZ4UUdLd0VWRkFZckFTSW1QUUVqSWlZOUFUUTJPd0UxTkRZN0FUSVdIUUV6TWhZVkFhVVlGQTRVQmh3VUN5UU5MV2FBWVJRWURRMHlHUXdPQ2dZUkRSVUhLMG9uT1FzSEdUb21BVWNMQ3dja0p3RTBQbXMrUG10OGF6NCthemNNQ1RnTUNTWUpDVHNKQ1FrSk93a0pKZ2tNT0FrTWl5WlVJeGtYQ0IwV0VEV0xkVUlEU0R0RVJFa3ZHQm9nSEJFUEN3c0VGU0VlTFRza1JTc1dDQ3BvQVIwK2FueHFQejVyZkdvKytnZ0xPZ2dMQ2drNkNna25DUW82Q1FvTENEb0xDQUFBQ1FBQS83Y0Rtd01GQUE4QUh3QXZBRDhBVHdCZkFHOEFmd0NQQUJkQUZJZUFkM0JuWUZkUVIwQTNNQ2NnRnhBSEFBa3RLeE1qSWdZZEFSUVdPd0V5TmowQk5DWURJeUlHSFFFVUZqc0JNalk5QVRRbUF5TWlCaDBCRkJZN0FUSTJQUUUwSmdFaklnWWRBUlFXT3dFeU5qMEJOQ1lESXlJR0hRRVVGanNCTWpZOUFUUW1BeU1pQmgwQkZCWTdBVEkyUFFFMEpnRWpJZ1lkQVJRV093RXlOajBCTkNZREl5SUdIUUVVRmpzQk1qWTlBVFFtQXlNaUJoMEJGQlk3QVRJMlBRRTBKdnB6R1NFaEdYTVpJU0VaY3hraElSbHpHU0VoR1hNWklTRVpjeGtoSVFFYmRCZ2hJUmgwR0NFaEdIUVlJU0VZZEJnaElSaDBHQ0VoR0hRWUlTRUJHM01aSVNFWmN4a2hJUmx6R1NFaEdYTVpJU0VaY3hraElSbHpHU0VoQXdVaEdYTVpJU0VaY3hraC9aa2hHWE1aSVNFWmN4a2hBVE1oR0hRWUlTRVlkQmdoQVRRaEdYTVpJU0VaY3hraC9aa2hHWE1aSVNFWmN4a2hBVE1oR0hRWUlTRVlkQmdoQVRRaEdYTVpJU0VaY3hraC9aa2hHWE1aSVNFWmN4a2hBVE1oR0hRWUlTRVlkQmdoQUFBQUFBVUFBUCtRQTVzRExBQVJBQ0VBTVFCQkFGRUFEMEFNVEVROE5Dd2tIQlFLQUFVdEt3RWhJZ1lkQVNFeUZoVVJNekkyTlJFMEpnTTBKaU1oSWdZVkVSUVdNeUV5TmpVQkZBWXJBU0ltUFFFME5qc0JNaFlWRXhRR0l5RWlKajBCTkRZeklUSVdGVGNVQmlNaElpWTlBVFEyTXlFeUZoVURUdjRNSHk0QnppQXRKaUF0TFpNdElQNE1JQzB1SHdIMElDMytwZ3NKbVFrTEN3bVpDUXVhQ3duK3pRa0xDd2tCTXdrTFRBb0ovb0FKQ3dzSkFZQUpDZ01zTFNBbkxTRDk1aTBnQWtFZ0xmN3lJQzB0SVAyL0h5NHVId0c3Q1FvS0NTWUpDZ29KL3FZSUN3c0lKd2dMQ3doekNRb0tDU1lKQ3dzSkFBQURBQUQvM1FQQ0F0OEFEd0FqQUN3QUNyY29KQllRQ2dJRExTc0JOQ1lqSVNJR0ZSRVVGak1oTWpZMUp5RWlKamNUTmpJZkFSNEJQd0UyTWg4QkZnWURJaVkwTmpJV0ZBWUR3aTBnL1A0ZkxTMGZBd0lnTGNqOTBoRVJDYWtHRlFabUJSWUZVd1lWQnBnSURVSWdMUzFBTFMwQ2tpQXRMU0Q5bUNBdExoOU5IZzhCSmdvS3J3a0NDWGNKQ2ZJT0dRRmFMVUF0TFVBdEFBTUFBUCtRQThJRExBQUNBRElBVndBS3QwczVDZ01DQVFNdEt6YzFGUUVoSWdZVkVSUVdPd0V5TmowQk5DWXJBU0ltTlJFME5qTWhNaFlWRVJRR0t3RWlCaDBCRkJZN0FUSTJOUkUwSmdNM05qUXZBU1lpRHdFR0ZCOEJGakkvQVRZeUZoVVJGQlk3QVRJMk5SRTBOaDhCRmpLYUF0djgvaDh0TFIvbkNRb0tDYU1NRVJFTUFub01FUkVNb3drS0Nnbm5JQzB0eENrSUNQTUlHQWp3Q1Frb0NCZ0lXUVVSREJBTE9nc1VGZ3BaQ0JxeERCZ0NoeTBnL1VzZ0xRc0pUUWdMRVF3QjRBd1JFUXorSUF3UkN3aE5DUXN1SHdLMUlDMzlqU2dKRndqekNBanhDQmNKS0FrSldBWUxDUDZuQ3hJU0N3RlpEUWtKV2djQUFBTUFBUCtTQTZVREtnQU1BRmdBWlFBS3QxOVpSeUVHQUFNdEt3RWlEZ0VVSGdFeVBnRTBMZ0VCSnpZMEp6YytBUzhCTGdFaklnOEJKaThCTGdFckFTSUdEd0VHQnljbUl5SUdEd0VHRmg4QkJoUVhCdzRCSHdFZUFUTXlQd0VXSHdFZUFUc0JNalkvQVRZM0Z4WXpNalkvQVRZbUJTSXVBVFErQVRJZUFSUU9BUUgySlQ0a0pENUtQaVFrUGdGdlJ3VUZSeElKREI4SUhoRUdEMWt5UHhBRUl4ZytHQ01FRURvNVdCQUdFUjRJSHd3SUUwY0ZCVWNTQ1F3ZkNCNFJEUWxZTWo4UUJTSVlQaGNrQkJCRU0xTU9DUkVlQ0IwTkNQNWFPbUU1T1dGMFlUazVZUUhqSkQ1S1BTUWtQVW8rSlA4QVBCcE9HandQTGhRMkRoQURJUzBVV3hZYUdoWlpFaThnQkJBT05oUXZEandqUENNOER5NFVOZzRRQXlFdEZGMFhIUjhYWFJjd0lRUVJEaklQTFVzNVlIUmhPVGxoZEdBNUFBQURBQUQvandQQ0F5d0FJd0JFQUZFQUNyZExSVDh1RmdRRExTc0JJelUwSmlzQklnWWRBU01pQmgwQkZCWTdBUlVVRmpzQk1qWTlBVE15TmowQk5DWUJKelkzTmpVMEp5WW5KaUlIQmdjR0ZCY1dGeFl6TWpjMk54Y1dNajhCUGdFbElpNEJORDRCTWg0QkZBNEJBbFJ6Q3doTkNRdHpDQXNMQ0hNTENVMElDM01KQ2dvQlhkMGtFeFExTTFkYTBGcFhNelExTTFkWmFENDhPREhkQ1JjSktBa0IvZVZKZTBsSmU1SjdTVWw3QWVWekNRb0tDWE1MQ1V3SkMzTUpDZ29KY3dzSlRBa0wvZ2piTWpnN1BtaGFWek0xTlROWFd0QmFWek0xRkJNazNRZ0lLQWtadkVsN2tudEpTWHVTZTBrQUFBQUFDQUFBQUFBRERBS0tBQThBTHdBL0FFOEFYd0J2QUg4QWp3QVZRQktLZ25weWFtSmFVa3BDT2pJbkVBY0FDQzByQVRNeU5qMEJOQ1lyQVNJR0hRRVVGaVVqSWdZZEFSUUdLd0VpSmowQk5DWXJBU0lHRlJFVUZqTWhNalkxRVRRbUFSUUdLd0VpSmowQk5EWTdBVElXRlRVVUJpc0JJaVk5QVRRMk93RXlGaFUxRkFZckFTSW1QUUUwTmpzQk1oWVZCUlFHS3dFaUpqMEJORFk3QVRJV0ZUVVVCaXNCSWlZOUFUUTJPd0V5RmhVMUZBWXJBU0ltUFFFME5qc0JNaFlWQVliY0NBd2pHWXdaSXd3QlVoUUVCaThoM0NFdkJRVVVHU01qR1FHNEdTTWovcDBNQ0JRSURBd0lGQWdNREFnVUNBd01DQlFJREF3SUZBZ01EQWdVQ0F3QkdBd0l5QWdNREFqSUNBd01DTWdJREF3SXlBZ01EQWpJQ0F3TUNNZ0lEQUlTREFnb0dTTWpHU2dJREVZRkJTZ2hMeThoS0FVRkl4bitVaGtqSXhrQnJoa2ovbElJREF3SUZBZ01EQWhRQ0F3TUNCUUlEQXdJVUFnTURBZ1VDQXdNQ053SURBd0lGQWdNREFoUUNBd01DQlFJREF3SVVBZ01EQWdVQ0F3TUNBQUFBQUVBQVArakF6MERHQUFsQUFhekZ3VUJMU3MzQmhRWEFSWXlOd0UyTkM4QkppSVBBUVlpSmpVUk5DWXJBU0lHRlJFVUJpSXZBU1lpQjdrTURBRWdEQjhMQVNJTUREVU1Id3RiQnhRUEZ3OU5FQmNQRkFkYkN4OEwvZ3NlQy83bEN3c0JHd3NlQ3pRTEMxa0hEZ3NDQnc4WEdBNzkrUXNPQjFrTEN3QUVBQUQvbkFPbEF5MEFNUUE2QUVNQVZ3QU5RQXBSUlQ4N05qSVlCUVF0S3lVbUJ3RXVBUThCRGdFWEV4WVVEd0VtQnc0QkJ3WVdGeFkzUGdFM05pWW5Oell5SHdFT0FSY2VBUmNXTno0Qkp5NEJCU0ltTkRZeUZoUUdJU0ltTkRZeUZnNEJBeFl5UHdFMkppYzNCeVl2QVNZR0R3RUdGQmNERHkwdS9sY0VFUVlQR1FjVHl3WUdiU294TlV3SEJ6VXdNemt6VGdzSERCSlJDQjRJVVJJTUJ3cE9ORGt6TURVSERVNzl0aGtoSVRJaElRSGJHU0VoTWlFQklxa0dFd2FhRUFJUUFnSUNEZzBHRUFXcEJnYjJDeEVDTkFZREJRd1RQaHIrOGdjVUI1RVFDZ3RRTlRoZ0dCb0tDRWt6STBFWmJBc0xiQnhBSVROSkNBb2FHR0E0TjAvWElUSWhJVEloSVRJaElUSWhBZElIQjhvVk5CVUNBZ1FMQ2dRQ0J1RUhGQWdBQlFBQS81QUR3Z01zQUNNQU9nQktBRm9BYWdBUFFBeGxYVlZOUlQwekt4WUVCUzBySlNNMU5DWXJBU0lHSFFFaklnWWRBUlFXT3dFVkZCWTdBVEkyUFFFek1qWTlBVFFtSlRRMk93RVJOQ1lqSVNJR0ZSRVVGak1oTlRRMk93RUJGQVlyQVNJbVBRRTBOanNCTWhZVkV4UUdJeUVpSmowQk5EWXpJVElXRlRjVUJpTWhJaVk5QVRRMk15RXlGaFVEcFZjUkREa01FVmNMRWhJTFZ4RU1PUXdSVndzU0V2N2VFUXd3TFNEOTVSOHRMUjhCcUJFTFYvNm1Dd2gwQ0FzTENIUUlDK2NMQ2Y2bUNBc0xDQUZhQ1F0TUNnbitXUWdMQ3dnQnB3a0tkMWNMRWhJTFZ4RU1PUXdSVndzU0VndFhFUXc1REJHa0N4SUJweUF0TFNEOTVTQXRNQXdSQWJzSkN3c0pKZ2tLQ2duK3Bna0tDZ2ttQ1FzTENYUUpDd3NKSmdrS0Nna0FBQUFDQUFEL3R3UElBd1VBRlFBbUFBaTFIaFlVRGdJdEt3RTBKaU1oSWljbUx3TW1KeVlyQVNJR0hRRWhGeUVpRGdFWEV4NEJNeUV5TmpjVE5pWURUaTBnL3VZUUVRME1DakFJQ2d3UkZFa2dMUUswT1B6Y0V4NE5CRzRHSUJRQ1NoVWhCRzRGSlFJeUlDMEtCd3NLT2dvTEJ3b3RJSzFORlNJUy9td1RGeGNUQVpRY0xRQUZBQUQvdHdQQ0F3VUFEd0FmQUM4QVB3QlBBQTlBREVkQU56QW5JQmNRQndBRkxTc0JJU0lHRlJFVUZqTWhNalkxRVRRbUlTTWlCaDBCRkJZN0FUSTJQUUUwSmdjaklnWWRBUlFXT3dFeU5qMEJOQ1lISXlJR0hRRVVGanNCTWpZOUFUUW1CeU1pQmgwQkZCWTdBVEkyUFFFMEpnT2wvZmtNRVJFTUFnY0xFaEw5WjlRTEVSRUwxQXNTRWd2VUN4RVJDOVFMRWhJTDFBc1JFUXZVQ3hJU0M5UUxFUkVMMUFzU0VnTUZFUXo4N0F3UkVRd0RGQXdSRVF4Z0N4SVNDMkFNRWVjUkMyRUxFUkVMWVFzUjVoSUxZQXdSRVF4Z0N4TG5FZ3RnREJFUkRHQUxFZ0FFQUFEL2p3UENBeXdBQ1FBVEFEUUFRUUFOUUFvN05TOGVFUW9IQUFRdEt3RXpNalk5QVRRbUt3RXhJeUlHSFFFVUZqc0JBU2MyTnpZMU5DY21KeVlpQndZSEJoUVhGaGNXTXpJM05qY1hGakkvQVQ0QkpTSXVBVFErQVRJZUFSUU9BUUZ0NXdrS0Nnbm5jd2dMQ3doekFrM2RKQk1VTlROWFd0QmFWek0wTlROWFdXZytQRGd4M1FrWENTZ0pBZjNsU1h0SlNYdVNlMGxKZXdGeEN3bE1DUXNMQ1V3SkMvNTYzVEk0T3o1b1dsY3pOVFV6VjFyUVdsY3pOUlFUSk4wSUNDZ0pHYnhKZTVKN1NVbDdrbnRKQUFBQUFBUUFBQUFBQXcwQ2VBQVNBQ0lBTWdBN0FBMUFDamN6TFNVZEZRa0NCQzByQVNNbUJ3RUdGQjhCRmpJM0FUNEJKelUwSmdNSEJpSXZBU1kwUHdFMk1oOEJGaFEzQndZaUx3RW1ORDhCTmpJZkFSWVVOeUltTkRZeUZoUUdBdERiRXhIKzlCRVIxQkV5RWdFUENBZ0JJL0VPQmhBR2lBWUdEZ1lRQm9nR1NnNEdFQWFJQmdZT0JoQUdpQVl5RlIwZEtoMGRBbllCRWY3ekVUSVMxQkVSQVJBSUZnclNHU1ArU0E0R0JvZ0dFQVlPQmdhSUJoQktEZ1lHaUFZUUJnNEdCb2dHRUtRZEtoMGRLaDBBQUFnQUFBQUFBeUFDaWdBV0FDWUFOZ0JHQUZZQVpnQjJBSVlBRlVBU2dYbHhhV0ZaVVVsQk9URXBIUmNQQUFndEt3RWhJZ1lkQVJRV015RXlGaFVSRkJZek1qWTFFVFFtQlNJR0ZSRVVGak1oTWpZMUVUUW1Jd2NVQmlzQklpWTlBVFEyT3dFeUZoVVhGQVlyQVNJbVBRRTBOanNCTWhZVkJ4UUdLd0VpSmowQk5EWTdBVElXRlJjVUJpc0JJaVk5QVRRMk93RXlGaFVIRkFZckFTSW1QUUUwTmpzQk1oWVZGeFFHS3dFaUpqMEJORFk3QVRJV0ZRTGsvc0FaSXdZRUFTSVpJd1lFSFNrai9oc1pJeU1aQVVBWkl5TVo4QXdJRkFnTURBZ1VDQXpjREFpTUNBd01DSXdJRE53TUNCUUlEQXdJRkFnTTNBd0lqQWdNREFpTUNBemNEQWdVQ0F3TUNCUUlETndNQ0l3SURBd0lqQWdNQW9vakdRb0VCaU1aL3NvRUJpa2RBVW9aSTR3akdmNnNHU01qR1FGVUdTT01DQXdNQ0JRSURBd0lGQWdNREFnVUNBd01DSGdJREF3SUZBZ01EQWdVQ0F3TUNCUUlEQXdJZUFnTURBZ1VDQXdNQ0JRSURBd0lGQWdNREFnQUFBY0FBUDlxQTJzRFVnQU5BQkVBRlFBWkFCMEFMZ0EzQUJOQUVEVXZKeDhjR2hnV0ZCSVFEZ1lBQnkwckV5SUdGUkVVRmpNaE1qWTFFUWtCSVJVaEZTRVZJUlVoRlNFVk14VWpBUlVqSnlZbkppY21OeGNXRnhZWEZqTURGUlFYRmhjV093RlFJUzh2SVFMTElTLysyZjVhQVZIK3J3RlIvcThCVWY2dndNQUN6Y2dRRWhBVkRBOEJBZ01JQ2hJV0gxd0hDaE1YSk1nRFVpOGgvTGdoTHk4aEFsc0JQZjI0SVNvaEtpRXFJUUlMRHdRSENnMFNGeDBPRVEwVUN3NEJQK1FSRWhnT0VnQUFCZ0FBLzkwRHdnTGZBQThBSHdBdkFEOEFUd0JmQUJGQURsZFFSMEEzTUNjZ0Z4QUhBQVl0S3dFaklnWWRBUlFXT3dFeU5qMEJOQ1lwQVNJR0hRRVVGak1oTWpZOUFUUW1BU0V5TmowQk5DWWpJU0lHSFFFVUZnY2pJZ1lkQVJRV093RXlOajBCTkNZcEFTSUdIUUVVRmpNaE1qWTlBVFFtQnlFaUJoMEJGQll6SVRJMlBRRTBKZ0VYMUFzUkVRdlVDeElTQW9QOStRd1JFUXdDQndzU0V2M3VBVVlNRVJFTS9yb01FUkY3MUFzUkVRdlVDeElTQW9QOStRd1JFUXdDQndzU0Vzeit1Z3dSRVF3QlJnd1JFUUxmRWd2NkRCRVJEUG9MRWhJTE9nc1NFZ3M2Q3hMK3pCRU1PZ3NSRVFzNkRCR2FFUXo2Q3hJU0Mvb01FUkVNT1F3UkVRdzVEQkhBRWdzNkN4SVNDem9MRWdBQUFnQUEvNUFEZFFNc0FCY0FKUUFJdFNBYUR3Y0NMU3NCSXlJbVBRRTBKaU1oSWdZVkVSUVdNeUV5TmpVUk5DWTNKeVlpQmgwQkZCWTdBVEkyTkFOVzF5WXJFZzMrd1NVNE9DVUNTQ1kzRWd6TUJoUU9KeHFrQ0EwQjVTc2wyQTBTTnliOUhpVTRPQ1VCMlEwU2Rjd0dEUW1qR2ljT0ZBQUFBUUFBLzVBRHdnTXNBQ3NBQnJNZkVBRXRLd0V1QVE4QkJpSXZBU1kwUHdFMkppY21JeUlHQndZWEZoY0JEZ0VXRng0Qk1qWTNBUllYRmpjK0FUVTBBN1lERUFpY0NCa0piZ2dJbmdZRUNDZ3FVWVlpSkFvSERQNllGUTRPRlJBcEtDa1FBV1liTGxKSVJsUUNad2tEQnB3SUNHNEpHUWljQmhBRkRGUkdTRklzSGY2YUZUZzNGQkFSRVJBQlpnd0hDaVFpaGxFckFBQUJBQUQvcEFNb0F4a0FKUUFHc3hjRkFTMHJBVFkwSndFbUlnY0JCaFFmQVJZeVB3RTJNaFlWRVJRV093RXlOalVSTkRZeUh3RVdNamNESEF3TS91QU1Id3YrM3dzTE5nd2ZDMXNIRkE4WEQwMFBHQThVQjFvTUh3c0J2Z3dkQ3dFYkN3dis1UXNkRERRTEMxa0hEZ3Y5K1E4WEdRMENCd3NPQjFrTEN3QUFBQUVBQVArSEE4c0RNd0JIQUFhek9TOEJMU3NsRmpZL0FUNEJGaFFQQVE0QkppOEJMZ0UyTndFK0FSWWZBUjRCQmc4QkRnRVhGaGNlQVRZL0FUNEJKaWNqTGdFR0J3RU9BUllmQVI0Qk5qOEJQZ0V1QWdZUEFRWVVGd0ZUQ0JjSndBc2ZHQXpzR2tWR0dnSWFFUkVhQWFJWlJrVWFBaG9TRWhvQ0NBSUdFZ2tERlJJTENUQWlJakFFTUlLQ01QNWZNQ0lpTUFNeGdJRXc3eDRVRnoxU1VCMjlDQWlRQ0FFSHdRb0JGeUlNNlJvUkVSb0NHa1pGR2dHaEdoSVNHZ0lhUlVZWkFnZ1NDUjhrREFZUkRBb3dnb0l3TUNJaU1QNWdNSUtCTVFRd0lpSXc3UjVTVVRzVEZ4KzhDUmtJQUFBQUFBTUFBUCtRQTVzRExBQWZBQzhBUWdBS3R6OHpKeUFYQkFNdEt3RWpOVFFtSWdZZEFTRTFOQ1lpQmgwQkl5SUdIUUVVRmpNaE1qWTlBVFFtRnlFaUJoVVJGQll6SVRJMk5SRTBKZ0VWRkFZaUpqMEJCd1lpSmpRL0FUWXlGaFVEVG1BaUx5TCs4aUV3SW1BZ0xSRU1BeFFNRVMwUS9Pd01FUzRmQXJRZ0xSSCtwQmdlRngwSUZ4RUtTd3NpR0FMTEp4Z2lJaGduSnhnaUloZ25MUjh4Q3hFUkN6RWdMUG9SQy80b0h5NHRJQUhZQ3hIK1dRTU1GeGdPd1I4SUVoWUtTd3dYRUFBREFBRC9rQVBDQXl3QUZBQWRBRDhBQ3JjMElCa1ZDZ0FETFNzQklnY0dCd1lVRnhZWEZqSTNOamMyTkNjbUp5WUhNaFlVQmlJbU5EWVRGQVlyQVNJbVBRRTBOakkyUFFFMEppSW1QUUUwTmpzQk1oWWRBUlFXTWhZVkFmUithMms4UHo4OGFXdjhiR2c5UHo4OWFHeCtHU0VoTWlFaGVRb0ptZ2NNQ3hBTENoQU1Dd2gwQnd3S0VBd0RMRDg5YUd6OGJHZzlQejg5YUd6OGJHZzlQK2toTWlBaE1DTCtiQWdKQ1FnbkJ3NEpDRTBJRFFrSUp3Y09EUWlhQ0FrTkNBQURBQUFBQUFQb0FwUUFGQUFwQURrQUNyYzBMQ1FZQ3dJRExTc0JKeVlHQndNR0ZCY1RIZ0UvQVQ0Qkx3RTNOaVlGQXk0QkR3RU9BUjhCQndZV0h3RVdOamNUTmpRQkp5WUdCd01HRmg4QkZqWTNFelltQVRvdENoWUkzd1lHNFFjWENpd0xBZ20wdGdZREFwN2hCeGdKTEFzQ0NiZTNCd0lKTEFvV0NPRUcvbmc2Q3hjQ2p3TU5Dem9NRmdPT0F3d0NaeVVIQWduKzV3Y1ZDUDdwQ1FNSUpRY1pDT0hoQ1Jmd0FSY0pCQWtrQ0JnSjRlRUlHUWNsQndNSUFSa0tFd0VhRGdNTkMvM2VEQlFERGdJTURBSWlEQlFBQUFVQUFQK1FBNXNETEFBUEFDOEFQd0JQQUY4QUQwQU1XbEpLUWpveUp4QUhBQVV0S3dFaE1qWTlBVFFtS3dFaUJoMEJGQllsSXlJR0hRRVVCaU1oSWlZOUFUUW1Ld0VpQmhVUkZCWXpJVEkyTlJFMEpnTVVCaU1oSWlZOUFUUTJNeUV5RmhVMUZBWWpJU0ltUFFFME5qTWhNaFlWTlJRR0l5RWlKajBCTkRZeklUSVdGUUZSQVVjTEVTMGc1aUF0RVFJSk1Bc1NMU0QrZ0NBdEVnc3dIeTR1SHdLMElDMHRrd3NJL2xrSkN3c0pBYWNJQ3dzSS9sa0pDd3NKQWFjSUN3c0kvbGtKQ3dzSkFhY0lDd0pyRWd0WElDMHRJRmNMRW5RU0MxY2dMUzBnVndzU0xTRDlTeDh1TFNBQ3RTQXQvVjhKQ3dzSkpna0tDZ2x6Q0FzTENDY0lDd3NJY3dnTEN3Z25DQXNMQ0FBQUFnQUEvNDhEd2dNdEFDTUFSd0FJdFVJdkZnVUNMU3NCTmpRdkFTWWlEd0VHRkI4QkZqSS9BVFlXRlJFVUZqc0JNalkxRVRRMkh3RVdNamNCSnlZaUR3RUdKalVSTkNZckFTSUdGUkVVQmk4QkppSVBBUVlVSHdFV01qOEJOaVlDRVFnSTJ3a1hDZDBJQ0NrSUZ3bEZDUmdSRERrTUVSZ0pSUWtYQ1FIUEtBa1hDVVVKR0JFTU9Rd1JHQWxGQ1JjSUtRZ0kzUWtYQ2QwSUFRSWVDUmNKM1FnSTNRa1hDU2dKQ1VVSkNRMythQXNTRXdvQm1BMEpDVVVKQ2Y2b0pna0pSUWtKRFFHY0N4SVRDdjVvRFFrSlJRa0pLZ2tYQ2QwSUNOMEpHUUFBQUFBSUFBRC9hZ05yQTFJQURRQWVBQ2NBT0FCQUFFNEFWZ0J2QUJWQUVtbGpVVTlJUVRzNU1pd2xIeGNQQmdBSUxTc1RJZ1lWRVJRV015RXlOalVSQ1FFVkl5Y21KeVluSmpjWEZoY1dGeFl6QXhVVUZ4WVhGanNCQVNNVkZBWWlKajBCTkRZN0FUSVdGQVluSXhVek1qWTBKaGNqSWlZOUFUUTJPd0V5RmhRR0p5TVZNekkrQVNZekl4VXpNaFlVQmlzQkZSUUdJaVk5QVRRMk93RXlGUllHVUNFdkx5RUN5eUV2L3RrQko4Z1BFdzhWQ3c4QkFnTUlDaElWSDEwSENoTVhKTWo5ZmpRR0NnY0tCem9iSUNBZE1qSVJGUldTTHdjS0NnY3ZLelkxTENrcElTY0JKOXhhV1FRRkJRUlpCd29IQ3dkZ0NnRUdBMUl2SWZ5NElTOHZJUUpiQVQzK3dROEVCd29ORWhjZERoRU5GQXNPQVQva0VSTVhEaEwrUVVBRkJnY0VvQWNLSVRBZ1hVZ1VJQlNvQ3dlWkJ3bzJVRGFva2lvL0tUMEdDUVpMQlFZSEJLQUhDZ3NFQlFBQUFBQUZBQUFBQUFNTUFvb0FEd0F2QUQ4QVR3QmZBQTlBREZwU1NrSTZNaWNRQndBRkxTc0JNekkyUFFFMEppc0JJZ1lkQVJRV0pTTWlCaDBCRkFZckFTSW1QUUUwSmlzQklnWVZFUlFXTXlFeU5qVVJOQ1lCRkFZckFTSW1QUUUwTmpzQk1oWVZGeFFHS3dFaUpqMEJORFk3QVRJV0ZSY1VCaXNCSWlZOUFUUTJPd0V5RmhVQmh0d0lEQ01aakJrakRBRlNGQVFHTHlIY0lTOEZCUlFaSXlNWkFiZ1pJeVAreFF3SUZBZ01EQWdVQ0F4a0RBZ1VDQXdNQ0JRSURHUU1DQlFJREF3SUZBZ01BaElNQ0NnWkl5TVpLQWdNUmdVRktDRXZMeUVvQlFVakdmNVNHU01qR1FHdUdTUCtaZ2dNREFoa0NBd01DR1FJREF3SXZnZ01EQWkrQ0F3TUNKWUlEQXdJQUFBQUJnQUFBQUFERmdKL0FCUUFKQUEwQUVRQVZBQmtBQkZBRGx4VlRFVThOU3dsSEJVUEFnWXRLd0VuSmlJUEFTY21JZzhCQmhRZkFSWXlQd0UyTkFVaElpWTlBVFEyTXlFeUZoMEJGQVlISVNJbVBRRTBOak1oTWhZZEFSUUdJU01pSmowQk5EWTdBVElXSFFFVUJnY2pJaVk5QVRRMk93RXlGaDBCRkFZcEFTSW1QUUUwTmpNaE1oWWRBUlFHQWRJVkJBd0ZoRFVFREFVVkJBUktDUmdKbVFRQkxQNzhDQXdNQ0FFRUNBd01DUDdBQ0F3TUNBRkFDQXdNL2tBb0NBd01DQ2dJREF3SUtBZ01EQWdvQ0F3TUFiRCt3QWdNREFnQlFBZ01EQUpsRlFVRmhEVUZCUlVFREFWS0NRbVpCQTJMREFnb0NBd01DQ2dJRExRTUNDZ0lEQXdJS0FnTURBZ29DQXdNQ0NnSURMUU1DQ2dJREF3SUtBZ01EQWdvQ0F3TUNDZ0lEQUFBQUFBQ0FBQUFBQU1nQXBBQUxBQThBQWkxTkMwa0VBSXRLd0VqSWlZMU5qYzJOelkzTmpjMkppY21EZ0VWRkJjZUFSY1dGeFFHS3dFaUJoMEJGQll6SVRJMlBRRTBKZ2NoSWdZZEFSUVdNeUV5TmowQk5DWUM1RzRaSXdJSEJnb09BZ2dCQXpRc0prUXBCd1FZQlFnQ0l4bHVHU01NQ0FJd0NBd2pHUDRlQ0FzakdRR1JHU0lMQVRZakdSNFhFQk1XQmhBVExVZ0tDQjA4SlJZU0NTZ1FHQjhaSXlNWktBZ01EQWdvR1NPMEN3Z0JHU01qR1FFSUN3QUFBUUFBLzVBRHdnTXVBQzBBQnJNbkVRRXRLeVVpQmdjbE5qVW5KUjRCTXpJK0FUUXVBU0lPQVIwQkJTWWpJZzRCRkI0Qk16STNCUlVVSGdFeVBnRTBMZ0VERXlWQkYvN25BZ0lCR1JkREpTOVFMaTVRWGxBdi90NDFQaTlRTGk1UUwwRXdBU011VDJCUExpNVE2eDBaakFvVkg0d2FIaTVRWGxBdkxsQXdDNUlvTGxCZVVDNHFrQTB3VUM0dVVHQlBMZ0FBQUFJQUFQK1FBOElETEFBc0FGb0FDTFZST2lFT0FpMHJBU1luSmpVME5qYytBVFUwSmljbUl5SUhCZ2NVRng0QkZSUUdCd1lVRnhZWEZpY1dPd0V5TmowQk5DY21CU1luSmpVME56NEJOVFFtSnlZaUJ3NEJGUlFXRnhZVkZBY0dCd1lIQmdjR0hRRVVGak1oTWpZOUFUUW5KZ01vSlE0TEZBOFlHaVVpSkM5QktpY0dDamMrS2ljREF3a1ZPeGtLQmVraExpOGkvclV0RVEwb0hSOHJLU3R6S3lnc0hoMHBEUkl1T3lFdUdCd3RJUUlWSVRBMktBR2xEaElORXc4ZURCUTZJaXRJRlJZb0pqc0tCeU4xU1RkZkl3TUpBd1lLSFF3RUx4NE1MaU1hN2hNVER4WWhKQmxFS0ROVkdCb2FHRlV6S0VRWkl5SVdEeFVSR0JJWkd5QW1HU0F0TGg4Yk5pb2ZBQUFCQUFBQUFBTGJBcVVBTFFBR3N4b0RBUzByQVRVMEppTWhJZ1lkQVJRV016SVdCd01PQVNzQklnWWRBUlFXTXlFeU5qMEJOQ1lqSWlZM0V6NEJPd0V5TmdMYkZ4RCs4eEFXRmhBWkh3WkZCQjBSTGhBWEZ4QUJEUkFXRmhBWkh3WkZCQjBSSVJZZUFtWVpFQllXRUNjUUZpY1gvcTRUR0JZUUp4QVdGaEFuRUJZbkZ3RlNFeGdlQUFBQUFBVUFBUCtRQTRnRExBQVpBQ01BTXdCREFGTUFEMEFNVGtZK05pc2tJaHdSQkFVdEt3RWpOVFFtS3dFaUJoMEJJeUlHSFFFVUZqTWhNalk5QVRRbUpUUTJPd0V5RmgwQkl3VWhJZ1lWRVJRV015RXlOalVSTkNZQkZBWXJBU0ltTlJFME5qc0JNaFlWRXhRR0t3RWlKalVSTkRZN0FUSVdGUU5yOEMwZ2RCOHU4QXNTRWdzQzdnc1NFdjVFQ3dsTkNBdDBBV1Q5ckFzU09DZ0J6aWc0RWY2UUNna21DUXNMQ1NZSkNzRUxDU1lKQ2dvSkpna0xBcEpOSUMwdElFMFNDem9MRWhJTE9nc1NPUWtMQ3drNXdSRUwvandwT0RncEFjUUxFZjVaQ0FzTENBRU9DQXNMQ1A3eUNBc0xDQUVPQ0FzTENBQUJBQUQvN3dQQ0FzMEFJd0FHc3hJS0FTMHJBU0VpSmo4Qk5qUXZBU1lpQndFR0ZCY0JGakkvQVRZMEx3RW1Oak1oTWpZOUFUUW1BNmY5Z1EwSkNiZ0pDU29JR0FqK3J3Z0lBVkVJR0Fnb0NRbTRDUWtOQW44TEVoQUJtQmdJdVFrWENDc0lDUDZ0Q0JnSS9xOElDQ2tJR0FpNUNoZ1FDem9NRXdBQUF3QUEvNUFEd2dNc0FCUUFJUUF1QUFxM0ppSWZHZ29BQXkwckFTSUhCZ2NHRkJjV0Z4WXlOelkzTmpRbkppY21BVFEzTmpjMk16SVdGd0V1QVFFaUppY0JIZ0VWRkFjR0J3WUI5SDFyYVQwL1B6MXBhL3BzYUQ0L1B6NW9iUDRwTHk5T1VWMDRaU3YrSFI0aEFWbzRaU3NCNHg0aEx5OU9VUU1zUHo1b2JQcHNhRDQvUHo1b2JQcHNhRDQvL2pKZFVVNHZMeUVlL2gwclpmN2VJUjRCNHl0bE9GMVJUaTh2QUFBQUFBSUFBQUFBQThJQ3l3QU5BQ1FBQ0xVZkVBY0JBaTByQVJZeU53RTJKeVlqQlNJT0FSY0ZOQ1lIQVFZaUp3RW1JZ1lWSmgwQkZCWXpJVEkyTlFIZkNCZ0lBYk1IQlFZVi9LUUxFZ1FJQTVZYkRQNnNJMThrL3E0SEV3MEJMUjhEQWlBdEFROElDQUdVRFEwT0FRMFRDWndQRFFyK3hpQWVBVHdHRFFzRTNOd2dMUzRmQUFNQUFQL3hBeFVDdUFBWUFDQUFLQUFLdHlNaEd4a0xBd010S3dFMExnRWpJU0lHRlJFVUZqTWhNajRCTlRRbkppYzJOellESXpVek1oWVVCZ01qTlRNeUZoUUdBeFUzWFRiK3doQVdGaEFCUGpaZE53OFBHaG9QRDhyZTNoc3FLaHZlM2hzcUtnSGxPR0k1RmhEOWhSQVdPV0k0S1NZa0hSNGtKdjY3bWk0K0xnRWhtaTg4THdBRC8vOEFBQVB1QXFVQUZnQWpBREFBQ3JjcUpCMFhFQVFETFNzQkxnRW5KaUlIRGdFSEJoUVhIZ0VYRmpJM1BnRTNOZ1VpTGdFMFBnRXlIZ0VVRGdFRElnNEJGQjRCTWo0Qk5DNEJBK1F0bDE5aTFtSmZseTBFQkMyWFgyTFdZbCtYTFFuK0J6cGdPVGxnZEdFNU9XRTZKVDRrSkQ1S1BpUWtQZ0Z2WEl3bUtDZ21qRndJRXdkY2pDWW9LQ2FNWEJIVE9XQjBZVGs1WVhSZ09RRmFKRDVLUGlRa1BrbytKQUFDQUFEL2tBUERBeTBBSndCV0FBaTFUREFmRndJdEt3RWpJZ1lkQVJRR0l5RWlKalVSTkRZN0FUSTJQUUUwSmlzQklnWVZFUlFXTXlFeU5qVVJOQ1lCSWdjR0J3WUhCaFk3QVRJMk56NEJOelk3QVRJV0R3RUdGQjhCRmpJM0FUWTBKd0VtSWc4QkRnRWZBUllHSXdPbE9nc1NFUXo5aGd3UkVReE5DeElTQzVFZkxTMGZBd0lnTFJMKzNsNVhWRFk0Q0FJU0RUb0xFQUlHVUQ1QlNSOE5DUWxwQ1Frb0NSY0lBUVlJQ1A3OENCZ0lLQWtDQ1dzSkNRMEJFUkVNMHd3UkVRd0JsQXNSRWdzNkN4SXRJUDNsSUMwdUh3RVhEQkVCTkRReVZWZGpEQk1QQ2tkNUl5UVlDR3dJR0FncENBZ0JCQWdZQ0FFRUNBZ29DUmNKYkFnWUFBQUFBQU1BQUFBQUF5QUNpZ0FVQUMwQVBBQUt0ell2SVJVS0FBTXRLd0VpQndZSEJoUVhGaGNXTWpjMk56WTBKeVluSmdjeUhnRVZGQWNqSWdZSERnRWlKaWN1QVNzQkpqVTBQZ0VURmo0Qk56WTNOaVlIQmdjT0FSWUI5RkZHUkNncEtTaEVScUpHUkNncEtTaEVSbEU3WmpzQ1dRY0xBZ1krVWo0R0FRc0lXUUk3WmlRU0tCTU5EUWNJQ0I4ZEhTQVRDd0tLS1NoRVJxSkdSQ2dwS1NoRVJxSkdSQ2dwVUR0bU93b1VDUWduTmpZbkJ3b1VDanRtTy83YUNnMGpNQ3dvS2dRZUhTTW1JeWNBQlFBQUFBQURJQUtLQUNRQU1nQkFBRW9BVkFBUFFBeFJUa05CUERZc0pSd0ZCUzByQVNNMkppY21JeUlHQndZSEppY3VBU01pQnc0QkZ5TWlCaDBCRkJZeklUSTJQUUUwSmlFaUp5NENOell6TWhZWEZoVTNCZ2NHSXpVME56NEJNaGNXQmhjakVUTXlOajBCTkNZRkZSUVdPd0VSSXlJR0F1UlhFd1FYR3lVVEpnNEZCUVFHRGlVVUpCc1hCQk5ZR1NNTUNBSXdDQXdqL3RrUkVoVVhBZ29JREJBWEJnYUFEQlFURVFZR0dSb0lDZ0tEMHF3WUlneitCQ01acXRJSURBSDBIa1VZR3hFUEJRZ0lCUkFRR3hoRkhpTVpLQWdNREFnb0dTTUdCeGtoQ2dnYUZoTVJGUTBIQmdZUkV4WWFDQXNnMi83eUloakFDQXdVdmhrakFRNE1BQUFEQUFBQUFBTWdBb29BRkFBaEFEVUFDcmN2SlJzVkNnQURMU3NCSWdjR0J3WVVGeFlYRmpJM05qYzJOQ2NtSnlZRElpNEJORDRCTWg0QkZBNEJKelUwSmlzQklnWWRBUlFmQVJZeVB3RTJOQ2NCOUZGR1JDZ3BLU2hFUnFKR1JDZ3BLU2hFUmxGQmJrRkJib0p1UVVGdUl3d0lGQWdNQ1dBR0VBWU9CZ1lDaWlrb1JFYWlSa1FvS1Nrb1JFYWlSa1FvS2Yza1FXNkNia0ZCYm9KdVFmeUFDQXdNQ0l3TkNHQUdCZzRHRUFZQUFBVUFBQUFBQXU0Q2lnQU5BQ1VBU1FCWkFHa0FEMEFNWkZ4VVREc3NIUlVJQWdVdEt3RW5KaUlHSFFFVUZqc0JNalkwQnlNaUpqMEJOQ1lyQVNJR0ZSRVVGak1oTWpZMUVUUW1KVDhCTWpVM05qSWZBUll6Rng0QkR3RUdGUmNXQmk4QkpnOEJCaVkvQVRRdkFTWTJBUlFHSXlFaUpqMEJORFl6SVRJV0ZUY1VCaU1oSWlZOUFUUTJNeUV5RmhVQzZvUUVEQWdZRUdvR0NCU01HU01NQ01nWkl5TVpBWHdaSXd6K1hqRUNBUllDQlFFV0FnRXhBZ0lDSkFFSUFRVUNMQUlDTEFJRkFRZ0JKQUVEQVRnTUNQNzhDQXdNQ0FFRUNBd29EQWorMUFnTURBZ0JMQWdNQWdLRUJBZ0dhaEFZQ0F4UUl4bU1DQXdqR2Y0Z0dTTWpHUUVzQ0F4ZUJ3RUJMUUlDTFFJSEFRVUJJd0VETVFJREFSY0NBaGNCQXdJeEF3RWpBZ1Qrc3dnTURBZ1VDQXdNQ0dRSURBd0lGQWdNREFnQUFBQUlBQUQva0FQQ0F5d0FEd0FmQUM4QVB3QlBBRjhBYndCL0FCVkFFbmR3WjJCWFVFbEJPVEVwSVJrUkN3TUlMU3NCTlRRbUt3RWlCaDBCRkJZN0FUSTJGeVlpRHdFR0ZCOEJGakkvQVRZMEp3RVdNajhCTmpRdkFTWWlEd0VHRkJjbEppSVBBUVlVSHdFV01qOEJOalFuQVNZaUR3RUdGQjhCRmpJL0FUWTBKeVVqSWdZZEFSUVdPd0V5TmowQk5DWWxJeUlHSFFFVUZqc0JNalk5QVRRbUFTTWlCaDBCRkJZN0FUSTJQUUUwSmdFMEVndlVDeEVSQzlRTEVpUUlHQWlXQ1Frb0NSY0psZ2dJQVE4SUdBaVdDUWtvQ1JjSmxnZ0kvb1FKRndrb0NRbVdDQmdJS1FnSUFUa0lHQWdyQ0FpV0NSY0pLQWtKL3NNNkN4SVNDem9MRWhJQmlkUUxFaElMMUFzU0V2NWhPZ3NTRWdzNkN4SVNBVUU2Q3hJU0N6b0xFaEpMQ0FpV0NSY0pLQWtKbGdnWUNBRVBDQWlXQ1JjSktBa0psQWdZQ0x3SkNTZ0pGd21XQ0FncENCZ0kvc2tJQ0NrSUdBaVdDUWtvQ1JjSlNSSUwxQXNTRWd2VUN4TDZFZ3M2Q3hJU0N6b0xFZ0dVRWd2VUN4SVNDOVFMRWdBREFBRC8zUVBDQXQ4QURBQXJBRGdBQ3JjeUxDTVRCZ0FETFNzQklnNEJGQjRCTWo0Qk5DNEJKU01pTHdFdUFTc0JJZ1lQQVE0Qkt3RWlCaFVSRkJZeklUSTJOUkUwSmdFaUxnRTBQZ0V5SGdFVURnRUI5Q3BIS1NwR1ZFY3BLVWNCVjJRb0dpd0tMQnU4R2kwTUxBb2pGR01mTFMwZkF3SWdMUzMrWHo1clBqNXJmR3MrUG1zQjBTbEhVa2NxS1VkVVJpbDBJa1FZSEJ3WVJCQVNMU0QrTWlBdExoOEJ6aUF0L2d3K2EzeHFQajVxZkdzK0FBQUFDQUFBLzVBRG13TXNBQThBSHdBdkFEOEFUd0JmQUc4QWp3QVZRQktIZEdwaVdsSktRam95S2lJYUVnY0FDQzByQVNFaUJoVVJGQll6SVRJMk5SRTBKZ0VVQmlzQklpWTlBVFEyT3dFeUZoVTFGQVlyQVNJbVBRRTBOanNCTWhZVkV4UUdLd0VpSmowQk5EWTdBVElXRlRVVUJpc0JJaVk5QVRRMk93RXlGaFVURkFZckFTSW1QUUUwTmpzQk1oWVZOUlFHS3dFaUpqMEJORFk3QVRJV0ZSTWpOVFFtSWdZZEFTRTFOQ1lpQmgwQkl5SUdIUUVVRmpNaE1qWTlBVFFtQTM3ODdBd1JMaDhDdENBdEVmM2pDZ2xOQ0FzTENFMEpDZ29KVFFnTEN3aE5DUXJCQ3doTkNRc0xDVTBJQ3dzSVRRa0xDd2xOQ0F2QUN3aE5DUW9LQ1UwSUN3c0lUUWtLQ2dsTkNBdGdZQ0l2SXY3eUlUQWlZQ0F0RVF3REZBd1JMUUhSRVF2K0tCOHVMU0FCMkFzUi9sa0lDd3NJVFFrTEN3bDBDUXNMQ1UwSUN3c0kvdklJQ3dzSVRRa0xDd2wwQ1FzTENVMElDd3NJL3ZJSUN3c0lUUWtMQ3dsMENRc0xDVTBJQ3dzSUFaTW5HQ0lpR0NjbkdDSWlHQ2N0SHpFTEVSRUxNU0FzQUFBREFBRC90d1BDQXdVQUR3QWZBQzhBQ3JjbklCY1FCd0FETFNzVEl5SUdGUkVVRmpzQk1qWTFFVFFtS1FFaUJoVVJGQll6SVRJMk5SRTBKaWNoSWdZZEFSUVdNeUV5TmowQk5DYmRtZ3NSTENCcURCRVJBcno5dnd3UkVRd0NFU0F0RWp2OC9pQXNFUXNEWWdzU0xRSUxFUXorRmlBdEVRd0NHZ3dSRVF6OTVnd1JMU0FCNmd3UitpMGdRd3NTRWd0RElDMEFCQUFBLzhvRG13THlBQThBSHdBdkFEOEFEVUFLT2pJcUlob1NDZ0lFTFNzQk5DWWpJU0lHSFFFVUZqTWhNalkxRlRRbUl5RWlCaDBCRkJZeklUSTJOUkUwSmlNaElnWWRBUlFXTXlFeU5qVVJOQ1lqSVNJR0hRRVVGak1oTWpZMUE1c1JEUHpzREJFUkRBTVVEQkVSRFB6c0RCRVJEQU1VREJFUkRQenNEQkVSREFNVURCRVJEUHpzREJFUkRBTVVEQkVDMVFzU0VnczZDeEVSQzYwTUVSRU1PUXdSRVF6K2JBc1NFZ3M2Q3hJU0N3RWhDeEVSQ3pvTUVSRU1BQUFBQkFBQS84b0Rtd0x5QUE4QUh3QXZBRDhBRFVBS09qSXFJaG9TQ2dJRUxTc0JOQ1lqSVNJR0hRRVVGak1oTWpZMUJ6UW1JeUVpQmgwQkZCWXpJVEkyTlFNMEppTWhJZ1lkQVJRV015RXlOalVUTkNZaklTSUdIUUVVRmpNaE1qWTFBNXNSRFB6c0RCRVJEQU1VREJGekVndjkwZ3NTRWdzQ0xnc1NKeEVNL2lBTUVSRU1BZUFNRVpvUkRQenNEQkVSREFNVURCRUMxUXNTRWdzNkN4RVJDNjBNRVJFTU9Rd1JFUXorYkFzU0VnczZDeElTQ3dFaEN4RVJDem9NRVJFTUFBQUFBQU1BQVArUEE4SURMQUFQQUI4QU1RQUt0eXdpSFJVS0FnTXRLemNYRmpJM0FUWTBMd0VtSWdjQkJoUUJCaFFmQVJZeVB3RTJOQzhCSmlJSEFRWVdQd0UyUHdFMk5DOEJKaUlQQVFZSHQ2c0dEd1lCcXdVRnFRWVFCZjVUQmdJRkJRV3FCUkFGTVJjWFd4Yy9GLzFGQWhVTzBnb0hCQVFHclFVUUJBUUdCTkNyQmdZQnJBWVFCYW9GQmY1VEJnNENEd1VRQmFvRkJUQVdQUmRiRnhmOG5nNFdBeklEQndRRUVBV3RCZ1FFQmdzQUJRQUEvNUFEd2dNc0FBOEFFd0FqQURNQVF3QVBRQXc3TkNza0d4UVNFQWNBQlMwckJTRWlKalVSTkRZeklUSVdGUkVVQmlVaEVTRUJJU0ltUFFFME5qTWhNaFlkQVJRR0FTTWlKajBCTkRZN0FUSVdIUUVVQmlFaklpWTlBVFEyT3dFeUZoMEJGQVlEbS95eUVCWVdFQU5PRUJjWC9NZ0RBdnorQW52K0RBZ0xDd2dCOUFrS0N2NTJjd2dMQ3doekNRc0xBWGpuQ0FzTENPY0pDZ3B3RnhBRFRoQVhGeEQ4c2hBWFRRTUMvdklMQ1hNSkNnb0pjd2tML29BTENPY0lDd3NJNXdnTEN3am5DQXNMQ09jSUN3QUFBQUFDQUFEL2tBT3VBeXdBRHdBOEFBaTFNeHdLQWdJdEt4TTBKaXNCSWdZVkVSUVdPd0V5TmpVQkJnY0dKeVluTGdFbkppY21Cd1lIRGdFVkVSUVdOelkzTmhjV0Z4WVhGaGNXRnhZM05qYytBVFVSTkNhdEVRdzVEQkVSRERrTUVRTGxOeTRwSlI0aEUwd1dKQ1FyTVRoQ0NBc1JDRUkzTUNza0pCTXBKUlVoSUNVckx6b0hDQk1ERHdzU0VndjhuZ3NTRWdzREVSMExDUVVFRHdvdUNoRUhDUVVHRndJUUNmNUFDZ3NFRmdRRUNRZ1JDaGtXQ2c0REJBd05JQVFPQndHL0Nnc0FBd0FBLzQ4RGlBTXRBQmNBTHdBL0FBcTNQallpR2dvQ0F5MHJKUVVHSWljbEpqUS9BVFl5SHdFV01qOEJOaklmQVJZVUp3VUdJaWNsSmpRL0FUWXlId0VXTWo4Qk5qSWZBUllVTFFFbU5EY2xOaklYQlJZVUJ3VUdJZ041L3BZT0l3NyttQXNMVlFRTEJOc2dTeC9jQkFzRVZRc0wvcFlPSXc3K21Bc0xWUVFMQk5zZ1NpRGNCQXNFVlF2K1QvNlhEQXdCYVE4akRnRnBEQXorbHc0alpzNElDTTRHRndZd0F3TjlFaEo5QXdNd0JoZmh6Z2tKemdVWUJUQURBMzBSRVgwREF6QUZHQlRPQlJjR3pnZ0l6Z1lYQmM0SEFBQUFCQUFBQUFBRElBSXdBQThBTUFCQUFGQUFEVUFLUzBNN015RVFCd0FFTFNzQklTSUdGUkVVRmpNaE1qWTFFVFFtQVNNaUpqVTJOelkzTmpjMk5UUW5KalEyTWhZVkZBY0dGUlFYRmhjV0Z4WUdOeFFHS3dFaUpqMEJORFk3QVRJV0ZUVVVCaXNCSWlZOUFUUTJPd0V5RmhVQzVQNGdHU01qR1FIZ0dTTWovdW1zRGhRQkZBNGVFQVlFRGhVaU9pSVZEZ1FHRUVBQkFoVGNEQWhhQ0F3TUNGb0lEQXdJbGdnTURBaVdDQXdDTUNNWi90NFpJeU1aQVNJWkkvNnNHUkFVRVF3T0J3Z0ZDUTRNRXowb0tCNGdFZ3dPQ1FVSUJoc2xEeHBHQ0F3TUNCNElEQXdJVUFnTURBZ2VDQXdNQ0FBQUF3QUFBQUFER3dKMkFDVUFMZ0EzQUFxM05URXNLQmNNQXkwckFTRXlOajhCTmlZaklTY3VBU3NCSWc0QkZqc0JFeDRCTXlFeVBnRW1JeUVpSmljMUpqWUhGQll5TmpRbUlnWVhGQll5TmpRbUlnWUJxQUVuQndzQk5nTU1DdjQ0Q0FNUUNqQU1Fd0lTRFJ4ZUF4QUtBVndNRXdJU0RmN09DaEFDQlJJZUhTb2RIU29kOEIwcUhSMHFIUUZlQ0FlK0NnOGNDZ3dRR1JQK3dnb01FQmtUREFrQkRoam1GUjBkS2gwZEZSVWRIU29kSFFBQUFnQUFBQUFESWdKTUFBc0FJQUFJdFJvT0JnRUNMU3NCRmpJM0FUWW1Jd1VpQmhjRk5DWVBBUVlpTHdFbUJoVVJGQll6SVRJMk5TSUI1d1lQQmdFYkJRY08vZEFNREFnQ1V4SUgzQlkvRjkwSEVpTVpBZUFaSXdFQkxBVUZBUVlKRVFFUkNXOEtDQWZNRlJYTUJ3Z0svdndaSXlNWkFBQUFBZ0FBLzVBRHdnTXNBQlFBTEFBSXRTY1hDZ0FDTFNzQklnY0dCd1lVRnhZWEZqSTNOamMyTkNjbUp5WVRBUVlpTHdFbU5EOEJOaklmQVJZeVB3RTJNaDhCRmhRQjlINXJhVHcvUHp4cGEveHNhRDAvUHoxb2JJVCsyZ2taQ2FFSkNTb0pHUWhWQmhFRzF3a1pDQ3NLQXl3L1BXaHMvR3hvUFQ4L1BXaHMvR3hvUFQvK3BmN1dDQWlrQ0JvSUtna0pWZ1lHM3drSktna1pBQUFBQVFBQS83VURuUU1GQUVjQUJyTVhBQUV0S3dFaklnWWRBUlFHSnlZbkxnRUhCZ2NPQVFjR0ZoY2VBVE15TmpjK0FTOEJMZ0VIRGdFbkppY3VBamMyTno0Qk16SVdGeFlYRmdZckFTSUdIUUVVRmpNaE1qWTFFUzRCQTM0NURCRU5DZ2tMU01Gb1NqeFlZUUlDT3pjNmxsUkpoemNLQVFrb0NCWUpOSWRHSkNVMlJoWVBDUllvaEV3NmFpZ01Dd1FQRG9jTEVoQUxBV0FLRHdJUkF3VVJESVlPQ0FnTUIwazVGQThwT2JKbFRwVTRQVUF5TGdrWkNTZ0lBUWNzSHhFSkZpRm1lejhrSlVaTUxDZ0xFQXNNRWdzOEN4QVBDZ0ZlREJFQUFBUUFBUC9LQTVzQzhnQVBBQjhBTHdBL0FBMUFDam95S2lJYUVnb0NCQzByQVRRbUl5RWlCaDBCRkJZeklUSTJOUWMwSmlNaElnWWRBUlFXTXlFeU5qVVJOQ1lqSVNJR0hRRVVGak1oTWpZMUV6UW1JeUVpQmgwQkZCWXpJVEkyTlFPYkVRejg3QXdSRVF3REZBd1JtaEVNL1lZTUVSRU1Bbm9NRVJFTS9ZWU1FUkVNQW5vTUVab1JEUHpzREJFUkRBTVVEQkVDMVFzU0VnczZDeEVSQzYwTUVSRU1PUXdSRVF6K2JBc1NFZ3M2Q3hJU0N3RWhDeEVSQ3pvTUVSRU1BQUVBQUFBQUEySUNSUUFNQUFhekJ3QUJMU3NUSVRJZUFRY0JCaUluQVNZMm9BS29DZzRCQi82ekNCOEovcThLRGdKRkRoUUkvbWdNREFHWURSMEFBQUFDQUFEL2lBT3JBeTBBSGdBdEFBaTFMU2dVQ0FJdEt3RUZCaTRCTlJFMEpnY09BUWNHRng0QkZ4WVhGamMrQVRjMk5UUW5MZ0VGSlQ0Qkp5WW5KaWNtQmhVUkZCWURhLzUyRFJzU0Z3MWdsU1FtQ3dwblVWSmhYbGhVZ3lRbUJnSWIvcDBCZXhFSkMwSmdZM0lVSUJVQmtOa0hCaFVPQWRnT0VnUWFobDFnYUdDa016VUtDaDBjZDFGVFhDTWlEZ3hmeWdnbkVGczhQaElFR3hUK1RnME1BQUFBQUFRQUFQK3pBOElEQlFBZEFDWUFMd0E0QUExQUNqUXdLeWNpSGcwQUJDMHJBU0lIQmdjR0ZSUVhGZzhCQmhZL0FUWVhGak0yTnpZM05pWW5KaWNtQVNJbU5EWXlGaFFHTXlJbU5EWXlGaFFHTXlJbU5EWXlGaFFHQWZSK2EyZzlQamdLQmp3RUVReW1EUlJ2Z1h4cmFEdy9BVDgrYUd2K25COHVMajh0TGNjZkxpNC9MUzNISHk0dVB5MHRBd1U1T0Y5aWMyWm1EeEtqREJBRFB3WUtQUUU2T0Y5aTZHTmdOenIrREM0L0xTMUFMUzQvTFMwL0xpNC9MUzAvTGdBQUFBTUFBUCtRQThJRExBQVVBQ2tBT3dBS3R6SXFIeFVLQUFNdEt3RWlCd1lIQmhRWEZoY1dNamMyTnpZMEp5WW5KZ01pSnlZbkpqUTNOamMyTWhjV0Z4WVVCd1lIQmhNaElnWUhCaGNlQVRNaE1qWTNOaWN1QVFIMGZXdHBQVDgvUFdscitteG9QajgvUG1oc2ZWMVJUaTh2THk5T1VicFJUaTh2THk5T1VXditjQXNRQWdNREFSRUxBWkFMRUFJREF3SVFBeXcvUG1ocytteG9QajgvUG1ocytteG9Qai84MkM4dlRsRzZVVTR2THk4dlRsRzZVVTR2THdHVUR3b2ZJd3NPRHdvZ0lnb1BBQUFBQUFFQUFQL3dBdHNDMEFBTUFBYXpDd1FCTFNzQkVSUU9BU2NCSmpRM0FUWVdBdHNPRkFqK2FBd01BWmdOSFFLeS9WZ0tEZ0VIQVUwSkh3Z0JVUW9PQUFBREFBRC9qZ1BDQXpRQU53QnVBSklBQ3JlTWRXbytNaWNETFNzbElpY21KeVlHRHdFT0FTWW5MZ0UyUHdFMk56WVdGeFlYRmhjZUFUOEJOaThCSmljbUp5NEJCZ2NHRHdFT0FSWVhIZ0UyUHdFMkpnRStBU1luTGdFR0R3RUdGaGNXRnhZMlB3RStBUllYSGdFR0R3RUdCd1luSmljbUp5NEJEd0VPQVI4QkZoY1dGeFlYRmpZM05qY1hOelkwTHdFbUlnOEJKeVlpRHdFR0ZCOEJCd1lVSHdFV01qOEJGeFl5UHdFMk5DY0J6aEVTRGhjRkN3TUhHRUJDR1J3VkVScC9HQ0lVS1JNWkVnZ0pCUk1ITUFvSURBY0VEUndtVUZFbEdSdDdMQ0lhS2l4NmV5NHFDQW9CTUMwZkl5OHRkM1VzSmdrSURDZ2ZCZ3NEQnhoQVFoa2NGUkVhZnhVbEtpWVlFd2dIQlJNSExnWUJCUXNHQmhJV0lpMG5VaVVlRnRWWkJnWTJCZzhHVmxNR0R3WTJCZ1pUVVFZR05nWVBCbEZXQmc4R05nWUdrZ1lDQ0FFQ0F3Z1lFd3NXR1VWR0dYOFlDUVVEQ0FrVUNnMEpBZ2N3REEwT0J3WU5GQmNQRFJRTEczc3Nkbll0THlNZUxpb0lGZ0VRTG50NkxDb2FJaXdtQ1JZQ0F3b0JBZ01IR0JNTEZobEZSaGwrRmdzTUVnZ1VDQTRJQWdjdUJRNEdEUWdHRVE4V0NRZ05GQkFXNWxnR0R3WTJCZ1piVXdZR05nVVFCbEpSQmc4R05nWUdVVmNGQlRZR0R3WUFBQVVBQVArUUE4SURMQUFQQUI4QUx3QkhBRjhBRDBBTVYwOC9OeWNnRnhBSEFBVXRLd0VoSWdZZEFSUVdNeUV5TmowQk5DWUhJU0lHSFFFVUZqTWhNalk5QVRRbUF5RWlCaDBCRkJZeklUSTJQUUUwSmdjaElpWTlBVFFtS3dFaUJoMEJGQll6SVRJMlBRRTBKZ01oSWlZOUFUUW1Ld0VpQmgwQkZCWXpJVEkyUFFFMEpnT2wvSjRMRVJFTEEySUxFaElML1Y4TUVSRU1BcUVMRWhJTC9WOE1FUkVNQXFFTEVoSUwvUklNRVJJTE9nc1JFUXNEWWdzU0VndjlFZ3dSRWdzNkN4RVJDd05pQ3hJU0F5d1NDMkFNRVJFTVlBc1M1eElMT2dzU0VnczZDeEwrZnhFTU9Rd1JFUXc1REJIQUVReUdEQkVSRFBvTEVoSUxPZ3NTQVlFUkM0Y0xFaElMK2dzU0VnczZDeElBQWdBQUFBQUM3Z0tLQUJjQUpRQUl0U0FhRHdjQ0xTc0JJeUltUFFFMEppc0JJZ1lWRVJRV015RXlOalVSTkNZM0p5WWlCaDBCRkJZN0FUSTJOQUxhakJrakRBaklHU01qR1FGOEdTTU1DSVFFREFnWUVHb0dDQUd1SXhtTUNBd2pHZjRnR1NNakdRRXNDQXhVaEFRSUJtb1FHQWdNQUFBQUJRQUFBQUFERmdLS0FCY0FKd0EzQUVjQVZ3QVBRQXhTU2tJNk1pb2ZHQThBQlMwckFTRWlCaDBCRkJZeklUSVdGUkVVRmpzQk1qWTFFVFFtQnlFaUJoVVJGQll6SVRJMk5SRTBKZ1UwTmpzQk1oWWRBUlFHS3dFaUpqVVhGQVlyQVNJbVBRRTBOanNCTWhZVk54UUdLd0VpSmowQk5EWTdBVElXRlFMYS9zQVpJd1lFQVNJWkl3WUVDaGtqSTZYK3dCa2pJeGtCUUJrakkvNjdEQWpJQ0F3TUNNZ0lEUEFNQ01nSURBd0l5QWdNS0F3SThBZ01EQWp3Q0F3Q2lpTVpDZ1FHSXhuK3lnUUdJeGtCVkJrampDTVovcXdaSXlNWkFWUVpJMlFJREF3SUZBZ01EQWp3Q0F3TUNCUUlEQXdJWkFnTURBZ1VDQXdNQ0FBQUNRQUEvNUFEd2dNc0FBOEFId0F2QUQ4QVR3QmZBRzhBaHdDZkFCZEFGSmVQZjNkbllGZFFSMEEzTUNjZ0Z4QUhBQWt0S3dFaElnWWRBUlFXTXlFeU5qMEJOQ1lGSXlJR0hRRVVGanNCTWpZOUFUUW1JU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZQkl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWUhJU0ltUFFFMEppc0JJZ1lkQVJRV015RXlOajBCTkNZRElTSW1QUUUwSmlzQklnWWRBUlFXTXlFeU5qMEJOQ1lEcGZ5ZUN4RVJDd05pQ3hJUy9kcUdEQkVSRElZTUVSRUJBb2NMRWhJTGh3c1JFUUVDaHdzU0VndUhDeElTL2RxR0RCRVJESVlNRVJFQkFvY0xFaElMaHdzUkVRRUNod3NTRWd1SEN4SVNDLzBTREJFU0N6b0xFUkVMQTJJTEVoSUwvUklNRVJJTE9nc1JFUXNEWWdzU0VnTXNFZ3RnREJFUkRHQUxFdWNTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hMK2Z4RU1PUXdSRVF3NURCRVJERGtNRVJFTU9Rd1JFUXc1REJFUkREa01FY0FSRElZTUVSRU0rZ3NTRWdzNkN4SUJnUkVMaHdzU0VndjZDeElTQ3pvTEVnQUFBQVFBQVArUUE4a0RMQUFQQUNjQVB3QlBBQTFBQ2twQ05Ta2pGZ29DQkMwckpUUW1JeUVpQmgwQkZCWXpJVEkyTlFNaklnWWZBUll5UHdFMkppc0JORFkzTmpNMUlnY09BUVVtSWc4QkJoWTdBUlFPQVNNVk1qYzJOelkxTXpJMkp4TTBKaU1oSWdZZEFSUVdNeUV5TmpVQmdSSUwvdDhMRVJFTEFTRUxFdVZlRHdzSW1nWVBCcG9JQ3c1Yk55c3VMMVZIUlZFQ2lBWVBCcG9JQ3c1ZE1WZzVWVWhHS0NwZUR3c0lBaElML3Q4TEVoSUxBU0VMRW9FTEVoSUwxQXNTRWdzQi9oTUlvQVFFb0FrU0wxa2NISFFwS1kwMEJBU2dDQk01VnpCMEtTbEZTRlVUQ0FIakN4SVNDOVFMRWhJTEFBSUFBUCszQTVzREJRQVBBRG9BQ0xVd0Z3Y0FBaTByRXlNaUJoVVJGQlk3QVRJMk5SRTBKZ1VqSWlZOUFUUW1Ld0VpQmgwQkZBWUhCaU1pQmhVUkZCWXpGaGNXRnhZWEZqTXlOelkzTmowQk5DYktZQXdSRVF3d0lDMFNBbmx6SHk0dElEQUxFaXdrSmkwTUVROE1LeWtXTHlzYktpNVhNVU1pS0MwQnZoRU0va1lMRWk0ZkFZb01FUk11SDhBZ0xSRU1jek5kSEI0UkRQNkFEQkVDQ2dVT0RRWUlDZzRsSzAvd0lDMEFBQUFBQWdBQS81QUR3Z01zQUI4QVF3QUl0VEloRndBQ0xTc2xJeUlHSFFFVUJpTWhJaVk5QVRRbUt3RWlCaFVSRkJZeklUSTJOUkUwSmdVV01qY0JOalF2QVNZaUR3RUdKalVSTGdFckFTSUdGUkVVQmk4QkppSVBBUVlVRndPbE9nc1NFUXo5aGd3UkVnczZDeEV0SHdNQ0lDMFMvakVJR0FnQkJBZ0lLUWdYQ1d3SUdBRVVDam9MRWhnSWJBa1hDQ2tJQ1A0U0M4QU1FUkVNd0FzU0VndisvQ0F0TGg4QkJBc1Nmd2tKQVFRSUZ3a29DUWxyQ1FrTkFab0xFaElML21nTkNRbHJDUWtxQ1JjSUFBQUFBUUFBQUFBRHd3S2tBQmNBQnJNV0RnRXRLeVVCSmpRL0FUWXlId0VXTWpjQk5qSWZBUllVQndFR0lnRnYvc01JQ0NvSkdRbnVCaEVHQWRNSkdRa3FDQWo5NEFrWklRRS9DUmtJS3dnSThRVUZBZGNKQ1NvSUdnajkyZ29BQUFBQUFRQUEvN1VDN3dNRkFCY0FCck1XQmdFdEt3VUJKalEzQVRZeUh3RVdGQWNCQmhRWEFSWVVEd0VHSWdLUy9uQUpDUUdRQ0JvSUtna0ovc01JQ0FFNkNBZ3JCeGREQVlvSkdRZ0Jpd2dJS3dnYUNQN0tDQmtKL3NvSUdnZ3FCd0FBQkFBQS81QUR3Z01zQUJVQUxBQkNBRmdBRFVBS1ZFbytOQ0lXQ3dBRUxTc0JJU0lHSHdFSEJoUWZBUll5UHdFWEZqWTFFVFFtQVNFeU5pWXZBVGMyTkM4QkppSVBBU2NtQmhVUkZCWWxFVFFtRHdFbkppSVBBUVlVSHdFSEJoWXpJVEkyQVJFVUZqOEJGeFl5UHdFMk5DOEJOelltSXlFaUJnT3IvdFVPQnd4ZXJRY0hSd2dVQ2E5ZUN4WU8vSThCS1FrS0FnaGVyUWdJUndjVkNhMWdEUmNTQTRrV0MxNnRCeFVKUndjSHIxNE1CdzRCS0FrTi9HVVpDMkN2Q0JZSFJ3Z0lyVjRMQmcvKzJBb1VBeXdXQzE2dEJ4VUpSd2NIcjE0TUJ3NEJLQWtOL0dRTUVnZGdyd2dXQjBjSUNLMWVDd1lQL3RnS0ZSY0JLdzRIREY2dENBaEhCeFVKcjE0TEZnNERjZjdZRHdZTFhxMEhCMGNJRkFtdFlBMFlFd0FBQWdBQS80WUR5d014QURzQWNRQUl0V2cvTlNJQ0xTc2xMd0VtSnlZR0R3RU9BU1luTGdFMlB3RTJOellYRmhjV0Z4NEJQd0UySnlZbkpoY21KeVluSmdZSEJnOEJEZ0VYRmhjV0Z4WTJQd0UyTkNZQkppY21CZzhCQmhZWEZoY1dQd0UrQVJZWEhnRUdEd0VHQndZbkppY21KeTRCRHdFT0FSY1dGeFlYSGdFMk56WS9BVFkzTmlZQ0N5Z1BFUWtGRGdRSkhFbExIQ0FZRXgyU0d5Y3ZMU0FTQ2drR0ZnYzJDd2tGQ0dGVEhSRW1OUzFlS0NNWWpUSW5Edzh3TWtkRWpEUXdCZ3dCV2pSRlE0WXhMQW9LRFNrb0Rna0tHMHBLSENBWkV4NlNHaWN3TFJ3V0Nna0dGZ2MxQmdFRkNCTVNIQ2xjWFNrakdaSTFFUklvTUFZRUJBTUNBd1FLSEJZT0dSdE9VQjZTR1E0TEVROFNDZzhLQWdnMkRCRUhDV3hkR3drWkNnZ05GaFFZalRLSFFrVXpOeFFVSXpReEJCQU5BclF3RHc4b01pb0tHd0lEREFNSkNSd1dEUmtiVDFBZWtob01EQklNRkFzT0N3SUpOZ1VRQ0EwUkZCRWFFUTRWRkJtU05FZEZpd0FCQUFELzJ3TjFBdDRBTHdBR3N5WU1BUzByQVNZbkppY21Qd0UyTkM4QkppSUhBUVlVRndFV01qOEJOalF2QVNZMk54WVhGaGNXRnhRV093RXlOaWN1QVNjbUFYRUNBd1VDQWdWckNRa29DUmNJL3Z3SkNRRUVDQmNKS0FrSmFRa0lDbXBhV0RZNEJoSUxPZzBPQWdlSWNIVUI5Z01EQndZSkJXc0pGd2txQ1FuKy9BZ1hDZjc4Q0FncENCZ0liQWdXQXdRMk5WaGJhd3NRRWcySzVVTkZBQUFBQUEwQUFQK1FBNXNETEFBUEFCOEFMd0EvQUU4QVh3QnZBSDhBandDZkFLOEF2d0RQQUI5QUhNZkF0N0Nub0plUWg0QjNjR2RnVjFCSFFEY3dKeUFYRUFjQURTMHJBU0VpQmgwQkZCWXpJVEkyUFFFMEpnVWpJZ1lkQVJRV093RXlOajBCTkNZaEl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKZ1VqSWdZZEFSUVdPd0V5TmowQk5DWWhJeUlHSFFFVUZqc0JNalk5QVRRbUlTTWlCaDBCRkJZN0FUSTJQUUUwSmdVaklnWWRBUlFXT3dFeU5qMEJOQ1loSXlJR0hRRVVGanNCTWpZOUFUUW1JU01pQmgwQkZCWTdBVEkyUFFFMEpnVWpJZ1lkQVJRV093RXlOajBCTkNZaEl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKZ04rL093TUVSRU1BeFFNRVJIOWphME1FUkVNclFzU0VnRXByUXdSRVF5dEN4RVJBU2l0Q3hJU0M2ME1FUkg5amEwTUVSRU1yUXNTRWdFcHJRd1JFUXl0Q3hFUkFTaXRDeElTQzYwTUVSSDlqYTBNRVJFTXJRc1NFZ0VwclF3UkVReXRDeEVSQVNpdEN4SVNDNjBNRVJIOWphME1FUkVNclFzU0VnRXByUXdSRVF5dEN4RVJBU2l0Q3hJU0M2ME1FUkVETEJJTFlBd1JFUXhnQ3hMbkVnczZDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWhJTE9nc1N3QklMT2dzU0VnczZDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDem9MRXNFUkREa01FUkVNT1F3UkVRdzVEQkVSRERrTUVSRU1PUXdSRVF3NURCSEFFZ3M2Q3hJU0N6b0xFaElMT2dzU0VnczZDeElTQ3pvTEVoSUxPZ3NTQUFBQUFRQUFBQUFETkFKUEFEQUFCck1WQUFFdEt5VWlKeVluQXdjT0FTc0JJaVk5QVRRMk93RTNQZ0VlQVJjVE56NEJIZ0VmQVRNeUZoMEJGQVlyQVNJbUx3RUhEZ0VCNmdjSERBUk9RUU1QQ1ZvSURBd0lSbHdFRUJRUEFrOW9CQkFTRGdRMFdnZ01EQWh1Q1E4RUlYQUVEb0lFQmhBQk9KVUpDZ3dJRkFnTTFBa0tBZ3dLL3NUbkNRb0NDd2g0REFnVUNBd0tDRTMzQ0FvQUFBQUFDQUFBQUFBRERBS0tBQThBSHdBdkFEOEFUd0JmQUc4QWp3QVZRQktIZEdwaVdsSktRam95S2lJYUVnY0FDQzByQVNFaUJoVVJGQll6SVRJMk5SRTBKZ0VVQmlzQklpWTlBVFEyT3dFeUZoVTFGQVlyQVNJbVBRRTBOanNCTWhZVkZ4UUdLd0VpSmowQk5EWTdBVElXRlRVVUJpc0JJaVk5QVRRMk93RXlGaFVYRkFZckFTSW1QUUUwTmpzQk1oWVZOUlFHS3dFaUpqMEJORFk3QVRJV0ZSTWpOVFFtSWdZZEFTTTFOQ1lpQmgwQkl5SUdIUUVVRmpNaE1qWTlBVFFtQXZqOStBZ01JeGtCdUJrakRQNlFEQWdvQ0F3TUNDZ0lEQXdJS0FnTURBZ29DQXlNREFnb0NBd01DQ2dJREF3SUtBZ01EQWdvQ0F5TURBZ29DQXdNQ0NnSURBd0lLQWdNREFnb0NBd29NaGNoR0xRWElSZ3lHU01NQ0FJSUNBd2pBYTRNQ1A3VUdTTWpHUUVzQ0F6KzZBZ01EQWdvQ0F3TUNHUUlEQXdJS0FnTURBaTBDQXdNQ0NnSURBd0laQWdNREFnb0NBd01DTFFJREF3SUtBZ01EQWhrQ0F3TUNDZ0lEQXdJQVFRVUVSY1hFUlFVRVJjWEVSUWpHUlFJREF3SUZCa2pBQVlBQVArM0E1c0RCUUFQQUI4QUx3QS9BRThBWHdBUlFBNVhVRWRBTnpBbklCY1FCd0FHTFNzQkl5SUdGUkVVRmpzQk1qWTFFVFFtSVNNaUJoVVJGQlk3QVRJMk5SRTBKaUVqSWdZVkVSUVdPd0V5TmpVUk5DWUJJeUlHRlJFVUZqc0JNalkxRVRRbUlTTWlCaFVSRkJZN0FUSTJOUkUwSmlFaklnWVZFUlFXT3dFeU5qVVJOQ1lCRjYwTUVSRU1yUXNTRWdFcHJRd1JFUXl0Q3hFUkFTaXRDeElTQzYwTUVSSDlqYTBNRVJFTXJRc1NFZ0VwclF3UkVReXRDeEVSQVNpdEN4SVNDNjBNRVJFREJSRU0vcmtMRVJFTEFVY01FUkVNL3JrTEVSRUxBVWNNRVJFTS9ya0xFUkVMQVVjTUVmNHpFZ3YrdVF3UkVRd0JSd3NTRWd2K3VRd1JFUXdCUndzU0Vndit1UXdSRVF3QlJ3c1NBQUFHQUFBQUFBUENBcVVBRHdBZkFDOEFQd0JQQUY4QUVVQU9XbEpLUWpveUtpSWFFZ29DQmkwckV4UUdLd0VpSmowQk5EWTdBVElXRlNFMEppTWhJZ1lkQVJRV015RXlOalVGTkNZckFTSUdIUUVVRmpzQk1qWTFKVFFtSXlFaUJoMEJGQll6SVRJMk5RVTBKaXNCSWdZZEFSUVdPd0V5TmpVbE5DWWpJU0lHSFFFVUZqTWhNalkxbWhJTE9nc1JFUXM2Q3hJREtCSUwvVjhNRVJFTUFxRUxFdnpZRWdzNkN4RVJDem9MRWdMYkVndjlyQXdSRVF3Q1ZBc1MvU1VTQ3pvTEVSRUxPZ3NTQXlnU0MvMWZEQkVSREFLaEN4SUNUZ3NSRVFzNkRCRVJEQXdSRVF3NkN4RVJDOU1MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFaElMMHdzU0VnczZDeElTQ3pvTEVoSUxPZ3NTRWdzQUFBQUdBQUFBQUFQQ0FxVUFEd0FmQUM4QVB3QlBBRjhBRVVBT1dsSktRam95S2lJYUVnb0NCaTByRXpRbUt3RWlCaDBCRkJZN0FUSTJOU1UwSmlNaElnWWRBUlFXTXlFeU5qVUZOQ1lyQVNJR0hRRVVGanNCTWpZMUpUUW1JeUVpQmgwQkZCWXpJVEkyTlFVMEppc0JJZ1lkQVJRV093RXlOalVsTkNZaklTSUdIUUVVRmpNaE1qWTFtaElMT2dzUkVRczZDeElES0JJTC9WOE1FUkVNQXFFTEV2ellFZ3M2Q3hFUkN6b0xFZ0xiRWd2OXJBd1JFUXdDVkFzUy9TVVNDem9MRVJFTE9nc1NBeWdTQy8xZkRCRVJEQUtoQ3hJQ2lBd1JFUXc2Q3hFUkN6b01FUkVNT2dzUkVRdlRDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDOU1MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFaElMQUFBQkFBRC9vQVBDQXhzQUt3QUdzeW9SQVMwckFSTWVBVE1oTWhZR0R3RU9BUmNURmc0Qkx3RW1JZzhCQmk0Qk54TTJKaThCTGdFMk15RXlOeE0rQVJZQ0QxZ0REd2tCSVE0UUFndnFDQVVEWEFRTkdBdnBCeE1JNndzWkRRVllBd1VINndzQ0VRMEJJUllGV2dRWEZ3TUQvdk1JQ1JVYkNLMEdFZ24rNncwV0JnaXFCUVdxQ0FZV0RRRVZDUklHclFnYkZSRUJEdzBKQ3dBQUFBQUJBQUQvdGdMdkF3VUFGd0FHc3hZR0FTMHJDUUVXRkFjQkJpSXZBU1kwTndFMk5DY0JKalEvQVRZeUFWZ0JqZ2tKL25JSUdRa3FDUWtCT1FrSi9za0pDU29JR0FMOS9uWUlHZ2orZGdrSktnZ2FDQUUyQ0JvSUFUWUlHZ2dxQ0FBQkFBQUFBQU9iQWxrQUZ3QUdzd29DQVMwckNRRUdJaWNCSmpRL0FUWXlGd0VXTWpjQk5qSWZBUllVQTVQK2RnZ2FDUDUyQ1FrcUNSa0lBVFlJR2dnQk5nZ2FDQ29JQWZ6K2Nna0pBWTRJR2dncUNRbit4d2tKQVRjSkNTb0lHQUFFQUFEL3RnUFZBcmdBSkFBMEFFUUFWQUFOUUFwUFJ6ODNMeWNlQ2dRdEt5VW1JZzhCQmlZOUFUUW1Ld0VpQmgwQkZBWWlMd0VtSWc4QkJoUWZBUll5UHdFMk5DY0JOQ1lqSVNJR0hRRVVGak1oTWpZMUZUUW1JeUVpQmgwQkZCWXpJVEkyTlJVMEppTWhJZ1lkQVJRV015RXlOalVCMVFnWUNFVUpHQkVNT2dzUkRCQUZSUWtYQ1NvSkNkMEpGd25mQ0FnQjFSSUwvVGdMRVJFTEFzZ0xFaElML2ZrTUVSRU1BZ2NMRWhJTC9ya0xFaElMQVVjTEV1OElDRVlJQ1EzK0N4RVJDLzRKQ2dWR0NBZ3JDQmdJM1FrSjN3Z1lDQUhWREJFUkREa01FUkVNclFzUkVRczZDeElTQzYwTEVoSUxPZ3NTRWdzQUFBRUFBUCtSQThJREt3QkpBQWF6TlJFQkxTc0JKeVlHSFFFaklpWTlBVE15UGdFdkFTWWlEd0VHRmpzQkZSUUdLd0UxTkNZUEFRWVVId0VXTmowQk16SVdIUUVqSWdZZkFSWXlQd0UySmlzQk5UUTJPd0VWRkI0QlB3RTJOQU84b0FnVHdBa0tjUWtOQVFXdUJSQUZyZ2dNRG0wS0NjQVRDS0FFQktBSUU4QUpDbkVPREFtdEJSQUdyUWdMRDIwS0NjQUtEUVNnQmdGc3JRZ0xEMjhLQ2NBS0RRU2dCUVdnQ0JQQUNRcHhEZ3dJcmdVUUJhNElEQTV0Q2duQUV3aWdCQVNnQ0JQQUNRcHhDUTBCQnEwSEVBQUZBQUQvdHdQb0F3VUFEd0FmQUM4QVB3QlZBQTlBREZCQk9qSXFJaG9TQ2dJRkxTc0JOQ1lqSVNJR0hRRVVGak1oTWpZMUF6UW1Ld0VpQmgwQkZCWTdBVEkyTlJNMEppTWhJZ1lkQVJRV015RXlOalVCTkNZckFTSUdGUkVVRmpzQk1qWTFBU1lHSFFFaklnWWRBUlFXT3dFVkZCWS9BVFkwSndQb0VReit1UXNTRWdzQlJ3d1JUUkVNK2dzU0VndjZEQkZORVF6K3VRc1NFZ3NCUnd3Ui9qTVNDem9MRWhJTE9nc1MvcG9KRW4wTEVoSUxmUk1JbndVRkFuVUxFaElMT2dzU0VnditiQXdSRVF3NURCRVJEQUVnREJFUkREb0xFUkVMQVpRTUVSRU0vT3dNRVJFTUFsZ0lDdzV3RVF3NkN4RnlEZ3dKclFZUEJnQUNBQUQvdHdOMUFyZ0FEd0EwQUFpMU5CZ0hBQUl0S3lVaElnWWRBUlFXTXlFeU5qMEJOQ1lsSmljdUFUVVJORFk3QVRJV0ZSRVVIZ0VYRmo0Qk5SRTBOanNCTWhZVkVSUUhCZ2NHQTFqOU9Bc1NFZ3NDeUFzU0V2NkVSenc1UkJZUUp4QVdKa0lvTFVzc0ZoQW5FQlluSmtCQ0toRUxPZ3dSRVF3NkN4Rk5CQ2NtZlVjQkJoQVdGaEQrK0NsSExRSURLRWtzQVEwUUZoWVEvdk5NUUQ0akpBQUFBQVVBQUFBQUF6UUNZZ0FaQURFQU9nQkRBRXdBRDBBTVNFUS9Pell5S2hvWEJ3VXRLd0VtTnpZMU5DNEJJeUlHQng0Q0ZSUUhOamMySHdFV05pY0JJZzRCRlJRWEZnOEJCaFkvQVRZWEZqTXlQZ0UwTGdFSElpWTBOaklXRkFZeklpWTBOaklXRkFZeklpWTBOaklXRkFZREZ3SUVHenRsUENaSEhUNWpPUlVlR3djRlFBZ05BdjVsUEdVN0hBTUJGUU1OQ1VBSUJEVS9QR1U3TzJXMEVCZ1lJUmNYWnhBWUdDRVhGMmNRR0JnaEZ4Y0JIUWdFTVRZNVlEa1pGZzFOYmo4M0x3Z1FCQU1YQXcwSkFTTTVZRGszTUFjRlF3a05BeGNDQXg4NVlISmdPZm9ZSVJjWElSZ1lJUmNYSVJnWUlSY1hJUmdBQUFBQUJnQUFBQUFEQWdLVUFCSUFLZ0E2QUVvQVdnQm9BQkZBRG1OZFZVMUZQVFV0SWhvSEFRWXRLeVVSSWdZVkVSUVdNeUV5TmpVaklpY21KeVlCSXlJbVBRRTBKaXNCSWdZVkVSUVdNeUV5TmowQk5DWWxORFk3QVRJV0hRRVVCaXNCSWlZMUZ4UUdLd0VpSmowQk5EWTdBVElXRlRjVUJpc0JJaVk5QVRRMk93RXlGaFUzSnlZaUJoMEJGQlk3QVRJMk5BRWlHU01qR1FFc0dTUHdLeEVlRGhBQnpHUVpJd3dJb0Jrakl4a0JMQmtqRFA2NERBZzhDQXdNQ0R3SUROd01DTFFJREF3SXRBZ01LQXdJM0FnTURBamNDQXhNWEFRTUNCZ1FRZ1lJM0FGQUl4bitoQmtqSXhrRUNCZ2NBVHdqR1dRSURDTVovb1FaSXlNWjhBZ01LQWdNREFnVUNBd01DUEFJREF3SUZBZ01EQWhrQ0F3TUNCUUlEQXdJcEZ3RUNBWkNFQmdJREFBQkFBRC90UU9mQXdVQVFRQUdzeGdBQVMwckV6TXlGaDBCRkJZM05qYytBUmNXRng0QkZ4WUdCdzRCQnk0QlBRRTBOamMrQVRjMk56WXVBU2NtSnlZR0J3WUhCaFk3QVRJV0hRRVVCaU1oSWlZMUVUUTJham9MRVEwS0NRdEl3V2hKUGxkaEFnSTZOelNHU2c4VUR3eEZkU1VXQ1E4V1J6Y3BJRTJTTmd3TEJBOE9od3NRRGd2K25nb1BFUU1GRVF5R0RnZ0lEQWRKT1JRUEtUbXlaVTZWT0RkQUJnSVNEVGtNRHdJR1NUNGxKRDk3WmlFWENCTW9OZ3NRQ3d3U0N6d0xFQThLQVY0TUVRQUFBQUFHQUFEL3R3UENBd1VBRHdBZkFDOEFQd0JVQUhnQUVVQU9abFZNUkRjd0p5QVhFQXNEQmkwckFSVVVCaU1oSWlZOUFUUTJNeUV5RmdFaE1qWTlBVFFtSXlFaUJoMEJGQllGSVNJR0hRRVVGak1oTWpZOUFUUW1CeUVpQmgwQkZCWXpJVEkyUFFFMEpnRXpGUlFXT3dFeU5qVVJOQ1lyQVNJR0hRRVVGaE1qSWdZZEFSUVdPd0VWSXlJR0hRRVVGanNCTWpZOUFUUW1Ld0UxTXpJMlBRRTBKZ1BDRWd2OStRd1JFUXdDQndzUy9kd0JXZ3NTRWd2K3Bnd1JFUUlUL2ZrTUVSRU1BZ2NMRWhLNC9xWU1FUkVNQVZvTEVoTDlRREFTQ3hRTEVSWVFWd3NSRWEra0N4RVJDMzF6RUJZV0VLTU1FUkVNZlhRUUZoWUMxVG9MRVJFTE9nc1NFdjdlRWdzNkN4SVNDem9MRXEwUkREa01FUkVNT1F3UndCSUxPZ3NTRWdzNkN4SUNaL0FNRVJFTUFSY1FGaEVNRXdzUy9vQVNDeE1NRVUwWEVKb1FGaEVNRXdzU1RSWVFtaEFYQUFBRUFBRC9rQU4xQXpBQUlBQWlBRElBUmdBTlFBcEFOUzBsSWlFWUFBUXRLeE16TWowQk5ENEJGeDRDRlRVVU93RXlQUUUwSnlZbkpnY0dCdzRCQng0Qkp4VUZOQ1lqSVNJR0ZSRVVGak1oTWpZMUpSWUdLd0VpSmo4QkxnRStBaDRCRlJRR0I5Uk5FemhmTnpKUkx4Uk5FeXdzU1V0WFVFUkJUZ0lDQ3cwQ3RTMGcvWmdmTGk0ZkFtZ2dMZjdZQWd3S2pBb0xBaUlXRmdvb096VWdGUk1CNVJFQ05sc3pCQU00V2pNR0VSRUNWa2xIS0NrREJDd3FpMUVJQ1JFSW95QXRMU0Qra2g4dUxoOUFDUkFPQzNNUE1UZ29DeFl0SFJjb0RBQUFBUUFBLzdjRHd3TUZBQmNBQnJNTEFBRXRLd0VoSWc0QkZ3RVdGUkVVRmpzQk1qWTFFVFEzQVRZdUFRT2gvS29PRWdFSUFYVVJFd3c2Q3hBVkFYa0lBUklEQlJJYUN2NU1GQjcrNnd3UkVRd0JGUnNYQWJRS0doSUFBQUFCQUFBQUFBT2NBbGNBRndBR3N3b0NBUzByTndFMk1oY0JGaFFQQVFZaUp3RW1JZ2NCQmlJdkFTWTBWUUdLQ0JvSUFZb0pDU29JR2dqK3lnZ2FDUDdLQ0JrSktnZkFBWTRKQ2Y1eUNCa0pLZ2tKQVRzSkNmN0hDUWtxQ1JjQUFBQUNBQUQva0FQQ0F5d0FGQUJFQUFpMU14c0tBQUl0S3dFaUJ3WUhCaFFYRmhjV01qYzJOelkwSnlZbkpnTVhGaFFQQVFZaUx3RW1JZzhCQmlJdkFTWTBQd0UyTkM4QkpqUS9BVFl5SHdFV01qOEJOaklmQVJZVUR3RUdGQUgwZm10cFBEOC9QR2xyL0d4b1BUOC9QV2hzSUpZR0JqWUZFQVdXQmhBRmxnWVFCVFlHQnBZR0JwZ0dCallGRUFhWUJSQUdsZ1VRQlRZR0JwWUVBeXcvUFdocy9HeG9QVDgvUFdocy9HeG9QVC8rSTVZR0VBVTJCZ2FXQmdhV0JnWTJCUkFHbGdVUUJwZ0ZFQVUyQmdhWUJRV1dCZ1kxQmhBRmxnWVFBQUFBQVFBQS8rOER3UUxOQUNNQUJyTVNDZ0V0S3hNaE1oWVBBUVlVSHdFV01qY0JOalFuQVNZaUR3RUdGQjhCRmdZaklTSUdIUUVVRmtFQ2Z3MEpDYmdKQ1NvSkZ3Z0JVUWtKL3E4SUZ3a29DUW00Q1FrTi9ZRUxFUThCSkJnSXVRZ1lDQ3NJQ0FGVENCZ0lBVkVJQ0NrSUZ3bTVDaGdRQ3pvTUV3QUFBQUlBQVArUUE4SURMQUFqQUVvQUNMVkNPaElBQWkwckFTRWlCaDBCRkJZN0FUSVdCd0VHRkI4QkZqSTNBVFlXSFFFVUZqc0JNalkxRVRRbUF3Y0dIUUVVQmlNaElpWTFFVFEyT3dFeU5qOEJOaVlqSVNJR0ZSRVVGak1oTWpZMUVUUW1BNm4ra0F3U0VneVlEZ29LL3JrSkNTZ0pGd2tCUmdrV0ZBczRDeElPK2tFU0VRditiQXdSRVF6ZERCVUhRZ2dKRGY2REh5MHRId0liSUMwWUF5d09Dem9NRlJZSi9yb0pGd2tvQ1FrQlJ3Z0pEWmdMRlJRTUFXNE5EdjQ4UkJBWTJ3d1JFUXdCbEFzUkNRbEJDUmd0SVAzbElDMHVId0Y5RFFrQUFBQUFCUUFBLzdjRDZBTUZBQlVBSlFBMUFFVUFWUUFQUUF4UVNFQTRNQ2dnR0FzRUJTMHJBU00xTkNZUEFRWVVId0VXTmowQk16STJQUUUwSmlVMEppTWhJZ1lkQVJRV015RXlOalVETkNZckFTSUdIUUVVRmpzQk1qWTFFelFtSXlFaUJoMEJGQll6SVRJMk5RRTBKaXNCSWdZVkVSUVdPd0V5TmpVQk8zc1RDSjhFQko4SkVuc01FeE1Db1JFTS9ya0xFaElMQVVjTUVVMFJEUG9MRWhJTCtnd1JUUkVNL3JrTEVoSUxBVWNNRWY0ekVnczZDeElTQ3pvTEVnR3JjUThMQ0swR0VBV3RDUXdPYmhFTE9nd1J5Z3NTRWdzNkN4SVNDLzVzREJFUkREa01FUkVNQVNBTUVSRU1PZ3NSRVFzQmxBd1JFUXo4N0F3UkVRd0FBd0FBLzVBRGRRTXdBQUVBTEFCQUFBcTNPaThrRndFQUF5MHJFeFVGSVRVMFBnRTNOaDRCRng0Qk93RXlOaWN1QVNjbUJ3WUhEZ0VIRlNJR0ZSRVVGak1oTWpZMUVUUW1BeFlHS3dFaUpqOEJMZ0UrQWg0QkZSUUdCOEFDYVA0TUwxSXlMbEU3REFJS0IwOElEQUVQWEVKRVRGQkVRVTRDSHk0dUh3Sm9JQzB0K3dJTUNvd0xDd01pRnhVTUtEczFJQlVUQWZZSVZsb3pXRGdEQXlKQktnWUtEd2hKY3g4ZkF3UXNLb3hRWGkwZy9wSWZMaTRmQVc0Z0xmNkZDUkFQQ25NUU1UY29DeFl0SFJjb0RBQUFBQUlBQUFBQUF6UUNnQUFQQUVnQUNMVStJd2NBQWkwckpTRWlCaDBCRkJZeklUSTJQUUUwSmhNaUJoVVVGaGNPQVNjdUFTYzBOejRCTlRRbUlnWVZGQllYRmhVT0FRY0dKaWMrQVRVMEppSUdGQll6Rng0Qk15RXlOajhCTWpZMEpnTEgvbG9IRENNWkFWUVpJd3NwR1NNTENnMDNJaWc1QWdJUkZTTXlJeFVSQWdJNUtDSTREQW9MSXpJakl4a2NBUXNIQWFvSENnSWNHU01qb0FzSUFSa2pJeGtCQ0FzQm1pTVpEUmtJSGlNQkFqa29FUWdISGhNWkl5TVpFaDhIQ0JFb09RSUNKQjRJR1EwWkl5TXlJOVlIQ1FrSDFpTXlJd0FBQUFBQkFBQUFBQU1aQW5vQUhBQUdzeElBQVMwckFTSUhCZ2NHRlJRWEZnOEJCaFkvQVRZWEZqTXlOelkzTmk0Qkp5WUI3RkpHUXlncEpnVURIQVFTREZnSkNFaFdVa1pES0NrQlVVUkdBbmttSlVCQlRFaEJDQWhaREJFRUh3TUZLaVlsUUVHWWdTVW1BQUVBQUFBQUEyWUNSUUFNQUFhekJ3QUJMU3NsSVNJdUFUY0JOaklYQVJZR0EwajlXQW9PQVFjQlRRa2ZDQUZSQ2c1M0RoUUpBWmNNRFA1cERoMEFBQUFDQUFEL2p3UENBek1BSFFBcUFBaTFKeUVZQ1FJdEt3VUJOamMySnk0REJ3NEJCd1llQWhjV056WTNBUll5UHdFK0FRRTBQZ0V5SGdFVURnRWlMZ0VEdXY3K0tCRVRDZ3RiamFWT1MzRWNIQkJXaVZGSVJVSTRBUUFKRndrb0NRSDgyRU55aG5KRFEzS0dja01WQVFBNFFrVklVb2xWRUJ3Y2NrcE9wb3hjQ3dvU0VTai9BQWdJS0FrWkFkNURja05EY29aeVEwSnlBQUlBQVA5L0E5RURPd0FVQUVRQUNMVTNIdzBEQWkwckFTWW5KZ2NPQVFjR0Z4NEJGeFkzUGdFM05pY21BeFFHS3dFaUJoMEJGQVlyQVNJbVBRRTBKaXNCSWlZOUFUUTJPd0V5TmowQk5EWTdBVElXSFFFVUZqc0JNaFlWQXp0WmVYVjFlYkVmSHg4ZnNYbDFkWGl4SUI4Zkgyc0xDTlFIREF3SFRRa0xDZ25UQ1FzTkI5TUpDZzBIVFFjTUNnblVCd3dDcFZnZkh4OGZzWGwxZFhteUlCNGVJTEo1ZFhWNS91d0pDd3NJMHdjTkN3blRDUW9MQ1UwSERBb0oxQWNNQ3dqVUNRb01Cd0FBQVFBQS81SUR3Z01zQUhNQUJyTlNHQUV0S3dFak56WTBMd0VtSWc4Qkl6VTNOalF2QVNZaUR3RTFOQ1lyQVNJR0hRRW5KaUlQQVFZVUh3RVZJeWNtSWc4QkJoUWZBU01pQmgwQkZCWTdBUWNHRkI4QkZqSS9BVE1WQndZVUh3RVdNajhCRlJRV093RXlOajBCRnhZeVB3RTJOQzhCTlRNWEZqSS9BVFkwTHdFek1qWTlBVFFtQTZXTFZRZ0lJUWNTQnBSdGxBY0hJUWNTQmxRU0N6b0xFbFFIRWdZaEJ3ZVViWlFIRWdZaEJ3ZFZpd3NSRVF1TFZRY0hId2dSQnBSdmxBY0hId2dUQmxRUUN6b0xGRlFJRVFZZkNBaVNiWlFJRWdVZkNBaFRpd3NTRWdHWVZBZ1JCaUVIQjVSdGxBZ1NCU0VJQ0ZXTEN4SVNDNHRWQ0FnaEJ4SUdsRzJVQndjaEJ4SUdWQklMT2dzU1ZBY1NCaDhIQjVScmxBY1RCUjhIQjFXTERCVVdDNHRWQndjZkJ4SUdrRzJVQndjZkNCRUdWaElMT2dzU0FBQUNBQUQvMmdQRkF0MEFIUUE3QUFpMUt4NGJDUUl0S3lVbU56WTFOQ2NtSnlZaklnY0dCeDRCRnhZVkZBYzJOellmQVJZMkp3RWlCd1lIQmhVVUZ4WVBBUVlXUHdFMkZ4WXpNamMyTnpZMEp5WW5KZ09YQXdVcExTdEtUVmcrT2pjdFlxSXVNQnNiSXc0SmRRa0xBdjJyV0UxSkt5MG9Cd1VxQXdzSmRRNEpUbHRaVEVvckxTMHJTa3orRFFwSVRGTklSaWtxRmhVbUMydFNWV0JKUHdrU0JRTXZBZ3NKQWJ3cUtVWklVMDVHRFFwMUNRd0RMd01GTFNvcFJraWxTRVVwS2dBQUF3QUFBQUFERVFKMkFBVUFHUUJQQUFxM1Job1BCZ0lBQXkwckFRWVZJelEzSlNNaUJoMEJGQjhCRmpJL0FUWTBMd0UxTkNZbklnY09BUThCSXlJR0h3RVdNajhCTmlZckFUVStBak15RmhjV0J3NENCd1ltSnlZUEFRWVdGeDRCTno0Q056WW5MZ0VCR1FFOEFRRW1IZ1lKQkZRRkRBUVZCUVZHQ1JWSlB6MU5CUUV0Q2dnR1N3VU9CRXNHQ0Fvc0JUMWhPRUJxR3gwSEJUbFhMelZoSXd3S0dBTUNCU2xyUEVkN1RBVUdKU09GQVhJSERRMEhlQWtHZ3dVR1ZBUUVGUVVNQkVkeEJnbU1JeUozU0FvUkIxc0ZCVnNJRUFvM1hEVkRPRGxCTDFZNUJBVWxKZzROSFFRR0JTc3VBUUZHZGtkUVJrUlNBQUFGQUFEL2tBUENBeTBBRFFBZEFEVUFUUUJsQUE5QURGNVNSam91SWh3VUJ3RUZMU3NCSmlJSEFRWVVGakkzQVRZMEp6OEJOalF2QVNZaUR3RUdGQjhCRmpJbEhnRVhGakkzUGdFM05qUW5MZ0VuSmlJSERnRUhCaFFCTGdFbkppSUhEZ0VIQmhRWEhnRVhGakkzUGdFM05qUURIZ0VYRmpJM1BnRTNOalFuTGdFbkppSUhEZ0VIQmhRQ0hnVVFCdjQxRVNJdkVRSExCZ1pSUGdnSUtRZ1lDRDRGQlRZR0QvNHBOMUlSQXhFREVWRTRDQWczVWhFREVRTVJVVGdIQXZreFJ4RUNFQU1RUnpFSEJ6RkhFQU1RQWhGSE1RamhKalFNQVEwQkN6VW1CZ1lsTmdzQkRRRU1OU1VHQWI0R0J2NDBFUzRpRVFITEJoQUZOajRJR0FncENBZytCZzhHTmdXNkVWRTRDQWczVWhFREVRTVJVVGdJQ0RkU0VRTVIvcElRUnpFSUNERkhFQU1RQXhCSE1RY0hNVWNRQXhJQnFndzBKZ1lHSlRVTUFRMEJDellsQmdZbU5Rc0JEUUFBQUFBRkFBRC9wZ1BjQXdBQUl3QXpBRUFBVFFDWUFBOUFESlZ3UlVFNE5DOG5IQVVGTFNzQkl4VTJMZ0VpRGdFWE5TRVZOaTRCSWc0QkZ6VWpGQVlqRVRJV0ZTRTBOak1SSWlZRElnWVZJVFFtSXhFeU5qVWhGQll6SlRRbUl6VVVGakkyTlJVaUJnVTBKaU0xRkJZeU5qVVZJZ1lCTlNJbU5TWW5OaVluTnhZMk54WVhNalkwSmljbUp5WTFORFkzTkRZM05USTJOVE1VRmpNVk1oWVZGaGNHRmhjSEpnWUhJaWNpQndZVUZoY2VBUlFHQnhRR0J4VWlCaFVqTkNZRHpsNENDeGdiR0FzQy9jSUNDeGdiR0FzQ1hnY0dCUWdEdEFnRkJnZERCUWo4OHdnRkJRZ0REUWdGL1J3VURoUWJGQTRUQXBvVERoUWJGQTRVL280RkJ5SWxBUVFFQ2dZTEFTZ2xHQndiSHpBWUd5d25CZ1FGQ0JzSUJRVUhHeDBDQlFVSkJRc0JJaDhaREFvZEpERXFMU29HQkFVSUd3Z0N1UThPR1E4UEdRNFBEdzRaRHc4WkRnOEdDZjBKQ0FVRkNBTDNDZjFRQ0FVRkNBSUpDQVVGQ0hzT0ZWVU9FeE1PVlJVT0RoVlZEaE1URGxVVi9ad2JDQVVQQXdVSUFpWURCZ1lCRVJJZkZnc1FGUmtsSXpJS0JRY0JIQWdGQlFnWENBVUtBZ1VKQWlRQ0JRWU5DUWdhRlEwUk1FazJDUVVIQVNBSUJRVUlBQUFBQUFMLy9mK3hBMThEQ3dBa0FERUFDTFV1S0JzSkFpMHJKVFF2QVRjMk5DOEJKaUlQQVNjbUlnOEJCaFFmQVFjR0ZCOEJGakkvQVJjV01qOEJOamNVRGdFaUxnSStBVEllQVFLQkNtVmxDZ296Q2g0S1pXVUxIZ295Q3d0bFpRc0xNZ29lQzJWbENoNEtNd3JZY3Nib3lHNEdlcnowdW43Z0RndGxaUXNkQ3pJTEMyVmxDd3N5Q3gwTFpXVUxIUXN5Q3d0bFpRc0xNZ3VOZGNSMGRNVHF4SFIweEFBQUFRQUFBQUVBQUhMY1hCbGZEenoxQUFzRDZBQUFBQURTNjc2ZkFBQUFBTkxydnAvLy9mOXFBKzREVWdBQUFBZ0FBZ0FBQUFBQUFBQUJBQUFEVXY5cUFGb0Q2UC85Ly9vRDdnQUJBQUFBQUFBQUFBQUFBQUFBQUFBQWlBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQby8vNEQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFEYXdBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQU5yQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQby8vOEQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBTlovLzBBQUFBQUFFUUFpZ0RZQVdZQnpBSklBcFFDK2dOaUJCb0VYQVM4QlY0RjRnWW9CbkFHa0FiYUJ4UUhwZ2d5Q1BvSmRBbkFDajRLM0F0V0RCZ01WZ3pvRFh3TnZnNHdEcG9QQUErNkVCNFFxQkRrRVRBUmNCSG9Fa29TcWhNVUU1d1VEQlMwRlRvVnpoWXFGblFXK2hkQUY3b1grQmhPR0pBWTFCa29HYW9hRGhxUUd1Z2JoaHhHSEtJZFpoMndIaEFlY2g3S0h6UWZsaUFDSUhvZzFDRVFJVjRoekNJc0lrd2luaUwrSTJRamhDUnNKUFFsTUNXdUpvZ25BQ2RZSjc0bjdpZ2VLSzRwWmltNEt0QXJIaXZnTEd3czlpMkFMYzR0L2k0dUxxb3ZFaStRTCtJd1hqRHlNVmd5QURKdU1wd3l6RE02TTNnejZEUm1OTTQxUERWd05aQTEzRFpBTnVBM1FqZStPR1k1UWptVUFBQUFBUUFBQUlnQTBBQU5BQUFBQUFBQ0FBQUFFQUJ6QUFBQU1BdHdBQUFBQUFBQUFCSUEzZ0FCQUFBQUFBQUFBRFVBQUFBQkFBQUFBQUFCQUFnQU5RQUJBQUFBQUFBQ0FBY0FQUUFCQUFBQUFBQURBQWdBUkFBQkFBQUFBQUFFQUFnQVRBQUJBQUFBQUFBRkFBc0FWQUFCQUFBQUFBQUdBQWdBWHdBQkFBQUFBQUFLQUNzQVp3QUJBQUFBQUFBTEFCTUFrZ0FEQUFFRUNRQUFBR29BcFFBREFBRUVDUUFCQUJBQkR3QURBQUVFQ1FBQ0FBNEJId0FEQUFFRUNRQURBQkFCTFFBREFBRUVDUUFFQUJBQlBRQURBQUVFQ1FBRkFCWUJUUUFEQUFFRUNRQUdBQkFCWXdBREFBRUVDUUFLQUZZQmN3QURBQUVFQ1FBTEFDWUJ5VU52Y0hseWFXZG9kQ0FvUXlrZ01qQXhOaUJpZVNCdmNtbG5hVzVoYkNCaGRYUm9iM0p6SUVBZ1ptOXVkR1ZzYkc4dVkyOXRjMll0YVdOdmJuTlNaV2QxYkdGeWMyWXRhV052Ym5OelppMXBZMjl1YzFabGNuTnBiMjRnTVM0d2MyWXRhV052Ym5OSFpXNWxjbUYwWldRZ1lua2djM1puTW5SMFppQm1jbTl0SUVadmJuUmxiR3h2SUhCeWIycGxZM1F1YUhSMGNEb3ZMMlp2Ym5SbGJHeHZMbU52YlFCREFHOEFjQUI1QUhJQWFRQm5BR2dBZEFBZ0FDZ0FRd0FwQUNBQU1nQXdBREVBTmdBZ0FHSUFlUUFnQUc4QWNnQnBBR2NBYVFCdUFHRUFiQUFnQUdFQWRRQjBBR2dBYndCeUFITUFJQUJBQUNBQVpnQnZBRzRBZEFCbEFHd0FiQUJ2QUM0QVl3QnZBRzBBY3dCbUFDMEFhUUJqQUc4QWJnQnpBRklBWlFCbkFIVUFiQUJoQUhJQWN3Qm1BQzBBYVFCakFHOEFiZ0J6QUhNQVpnQXRBR2tBWXdCdkFHNEFjd0JXQUdVQWNnQnpBR2tBYndCdUFDQUFNUUF1QURBQWN3Qm1BQzBBYVFCakFHOEFiZ0J6QUVjQVpRQnVBR1VBY2dCaEFIUUFaUUJrQUNBQVlnQjVBQ0FBY3dCMkFHY0FNZ0IwQUhRQVpnQWdBR1lBY2dCdkFHMEFJQUJHQUc4QWJnQjBBR1VBYkFCc0FHOEFJQUJ3QUhJQWJ3QnFBR1VBWXdCMEFDNEFhQUIwQUhRQWNBQTZBQzhBTHdCbUFHOEFiZ0IwQUdVQWJBQnNBRzhBTGdCakFHOEFiUUFBQUFBQ0FBQUFBQUFBQUFvQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBSWdCQWdFREFRUUJCUUVHQVFjQkNBRUpBUW9CQ3dFTUFRMEJEZ0VQQVJBQkVRRVNBUk1CRkFFVkFSWUJGd0VZQVJrQkdnRWJBUndCSFFFZUFSOEJJQUVoQVNJQkl3RWtBU1VCSmdFbkFTZ0JLUUVxQVNzQkxBRXRBUzRCTHdFd0FURUJNZ0V6QVRRQk5RRTJBVGNCT0FFNUFUb0JPd0U4QVQwQlBnRS9BVUFCUVFGQ0FVTUJSQUZGQVVZQlJ3RklBVWtCU2dGTEFVd0JUUUZPQVU4QlVBRlJBVklCVXdGVUFWVUJWZ0ZYQVZnQldRRmFBVnNCWEFGZEFWNEJYd0ZnQVdFQllnRmpBV1FCWlFGbUFXY0JhQUZwQVdvQmF3RnNBVzBCYmdGdkFYQUJjUUZ5QVhNQmRBRjFBWFlCZHdGNEFYa0JlZ0Y3QVh3QmZRRitBWDhCZ0FHQkFZSUJnd0dFQVlVQmhnR0hBWWdCaVFBRk0yUnZkSE1EWVdSa0JXTnNiM05sQ1hCeWFXTmxZbTl2YXdSb1pXeHdDRzV2ZEdWaWIyOXJCSEp2ZDNNR2RYQnNiMkZrQldOc2IyTnJCbWR5YjNWd2N3dHZjR1Z1WDJadmJHUmxjaEJ5YVdkb2RGOWhiR2xuYmw5MFpYaDBCM0J5YjJSMVkzUU5jWFZsYzNScGIyNWZabVZsWkFkM1lYSnVhVzVuQkhWelpYSUZjbWxuYUhRTWJtOTBhV1pwWTJGMGFXOXVCR2h2YldVSVkyOXVkSEpoWTNRSFlXUmtkWE5sY2dSaGNIQnpCR052Y0hrRmFXMWhaMlVFYjNCbGJnaHpaWFIwYVc1bmN3WjZiMjl0YVc0R2NtVmpiM0prQ1dGeWNtOTNaRzkzYmdOamRYUVBhVzV6WlhKMFgzUmxiWEJzWVhSbERXOXdaVzVsWkY5bWIyeGtaWElKYzJsa1pWOXNhWE4wQjNwdmIyMXZkWFFHY1hWdmRHVnpESEpsYkdGMFpXUmZiR2x6ZEFSblpHOWpCM051YVhCd1pYUUVjR0ZuWlF0amRYTjBiMjFmWVhCd2N3ZGhjbkp2ZDNWd0JtRjBkR0ZqYUFka1lYbDJhV1YzQkdsdVptOFFhVzV6WlhKMFgzUmhaMTltYVdWc1pBVndZWE4wWlFSemIzSjBBM0JrWmdaeVpYQnZjblFFZEdGemF3aGhjSEJ5YjNaaGJBdHpiMk5wWVd4emFHRnlaUVp3Wlc5d2JHVUdhWFJoYkdsakJtUmxiR1YwWlFSaVlXTnJBMkpoYmdWbGJXRnBiQVJpYjJ4a0IzQnlaWFpwWlhjRmMyaGhjbVVKWkdGemFHSnZZWEprQm5Sb1lXNXJjd1YwYjJSaGVRcGpiMjUwY21GamRDMHhCM053YVc1dVpYSUZjR2h2ZEc4RlpYWmxiblFIWW5WcGJHUmxjZ3hxZFhOMGFXWjVYM1JsZUhRUlkyVnVkR1Z5WDJGc2FXZHVYM1JsZUhRRVpXUnBkQVpzWVhsdmRYUUljSEpwYjNKcGRIa1FjM1JoYm1SaGNtUmZiMkpxWldOMGN3ZGpiMjUwWVdOMENHTjFjM1J2YlRrekIyVnRZV2xzTFRFSGMzVmpZMlZ6Y3dkeVpXWnlaWE5vRDJ4bFpuUmZZV3hwWjI1ZmRHVjRkQVJrYjNkdUJXTm9ZWEowQkdOb1lYUUZaWEp5YjNJRWJHVm1kQXR5WlcxdmRtVmZiR2x1YXdkemRXMXRZWEo1Q0dSdlkzVnRaVzUwQm1SeVlXWjBjdzF6ZFcxdFlYSjVaR1YwWVdsc0IzSmxjR3hoWTJVRWJHbHJaUWhrYjNkdWJHOWhaQVZqYUdWamF3dGphR1YyY205dWJHVm1kQVpsZUhCaGJtUUViR2x1YXdWeVpYQnNlUVYwWVdKc1pRUm1aV1ZrQjJWMlpXNTBMVEVPZEdsc1pWOWpZWEprWDJ4cGMzUVVjbWxqYUhSbGVIUmlkV3hzWlhSbFpHeHBjM1FFYkdsemRBaG1ZWFp2Y21sMFpReGphR1YyY205dWNtbG5hSFFMWTJobGRuSnZibVJ2ZDI0R1ptbHNkR1Z5QkcxdmRtVU9jbWxqYUhSbGVIUnBibVJsYm5RSmRXNWtaWEpzYVc1bENHWmxaV1JpWVdOckJHWnBiR1VFZFc1a2J4UnlhV05vZEdWNGRHNTFiV0psY21Wa2JHbHpkQVJzYjJOckNtWnBiSFJsY214cGMzUUpZMmhsZG5KdmJuVndCV05zWldGeUIyWnZjbmRoY21RS2JtVjNYM2RwYm1SdmR3OXlhV05vZEdWNGRHOTFkR1JsYm5RR2RXNXNiMk5yQzI5d2NHOXlkSFZ1YVhSNUJIQnZjM1FDZFhBR2MyVmhjbU5vQTI1bGR3Wm1jbTk2Wlc0SVkyOXRiV1Z1ZEhNR2NtVmpaVzUwQ1cxaFoybGpkMkZ1WkJoa2FYTmpiM1Z1ZEhOamFHVmtkV3hsYVdOdmJuTXRNRElPWTJGdVkyVnNMV05wY21Oc1pXUUFBQUFBQVFBQi8vOEFEd0FBQUFBQUFBQUFBQUFBQUxBQUxDQ3dBRlZZUlZrZ0lFdTRBQTVSUzdBR1UxcFlzRFFic0NoWllHWWdpbFZZc0FJbFlia0lBQWdBWTJNalloc2hJYkFBV2JBQVF5TkVzZ0FCQUVOZ1FpMndBU3l3SUdCbUxiQUNMQ0JrSUxEQVVMQUVKbHF5S0FFS1EwVmpSVkpiV0NFaklSdUtXQ0N3VUZCWUliQkFXUnNnc0RoUVdDR3dPRmxaSUxFQkNrTkZZMFZoWkxBb1VGZ2hzUUVLUTBWalJTQ3dNRkJZSWJBd1dSc2dzTUJRV0NCbUlJcUtZU0N3Q2xCWVlCc2dzQ0JRV0NHd0NtQWJJTEEyVUZnaHNEWmdHMkJaV1ZrYnNBRXJXVmtqc0FCUVdHVlpXUzJ3QXl3Z1JTQ3dCQ1ZoWkNDd0JVTlFXTEFGSTBLd0JpTkNHeUVoV2JBQllDMndCQ3dqSVNNaElHU3hCV0pDSUxBR0kwS3hBUXBEUldPeEFRcERzQUJnUldPd0F5b2hJTEFHUXlDS0lJcXdBU3V4TUFVbHNBUW1VVmhnVUJ0aFVsbFlJMWtoSUxCQVUxaXdBU3NiSWJCQVdTT3dBRkJZWlZrdHNBVXNzQWRESzdJQUFnQkRZRUl0c0FZc3NBY2pRaU1nc0FBalFtR3dBbUptc0FGanNBRmdzQVVxTGJBSExDQWdSU0N3QzBOanVBUUFZaUN3QUZCWXNFQmdXV2F3QVdOZ1JMQUJZQzJ3Q0N5eUJ3c0FRMFZDS2lHeUFBRUFRMkJDTGJBSkxMQUFReU5Fc2dBQkFFTmdRaTJ3Q2l3Z0lFVWdzQUVySTdBQVE3QUVKV0FnUllvallTQmtJTEFnVUZnaHNBQWJzREJRV0xBZ0c3QkFXVmtqc0FCUVdHVlpzQU1sSTJGRVJMQUJZQzJ3Q3l3Z0lFVWdzQUVySTdBQVE3QUVKV0FnUllvallTQmtzQ1JRV0xBQUc3QkFXU093QUZCWVpWbXdBeVVqWVVSRXNBRmdMYkFNTENDd0FDTkNzZ3NLQTBWWUlSc2pJVmtxSVMyd0RTeXhBZ0pGc0dSaFJDMndEaXl3QVdBZ0lMQU1RMHF3QUZCWUlMQU1JMEpac0ExRFNyQUFVbGdnc0EwalFsa3RzQThzSUxBUVltYXdBV01ndUFRQVk0b2pZYkFPUTJBZ2ltQWdzQTRqUWlNdHNCQXNTMVJZc1FSa1JGa2tzQTFsSTNndHNCRXNTMUZZUzFOWXNRUmtSRmtiSVZra3NCTmxJM2d0c0JJc3NRQVBRMVZZc1E4UFE3QUJZVUt3RHl0WnNBQkRzQUlsUXJFTUFpVkNzUTBDSlVLd0FSWWpJTEFESlZCWXNRRUFRMkN3QkNWQ2lvb2dpaU5oc0E0cUlTT3dBV0VnaWlOaHNBNHFJUnV4QVFCRFlMQUNKVUt3QWlWaHNBNHFJVm13REVOSHNBMURSMkN3QW1JZ3NBQlFXTEJBWUZsbXNBRmpJTEFMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTJDeEFBQVRJMFN3QVVPd0FENnlBUUVCUTJCQ0xiQVRMQUN4QUFKRlZGaXdEeU5DSUVXd0N5TkNzQW9qc0FCZ1FpQmdzQUZodFJBUUFRQU9BRUpDaW1DeEVnWXJzSElyR3lKWkxiQVVMTEVBRXlzdHNCVXNzUUVUS3kyd0ZpeXhBaE1yTGJBWExMRURFeXN0c0Jnc3NRUVRLeTJ3R1N5eEJSTXJMYkFhTExFR0V5c3RzQnNzc1FjVEt5MndIQ3l4Q0JNckxiQWRMTEVKRXlzdHNCNHNBTEFOSzdFQUFrVlVXTEFQSTBJZ1JiQUxJMEt3Q2lPd0FHQkNJR0N3QVdHMUVCQUJBQTRBUWtLS1lMRVNCaXV3Y2lzYklsa3RzQjhzc1FBZUt5MndJQ3l4QVI0ckxiQWhMTEVDSGlzdHNDSXNzUU1lS3kyd0l5eXhCQjRyTGJBa0xMRUZIaXN0c0NVc3NRWWVLeTJ3Sml5eEJ4NHJMYkFuTExFSUhpc3RzQ2dzc1FrZUt5MndLU3dnUExBQllDMndLaXdnWUxBUVlDQkRJN0FCWUVPd0FpVmhzQUZnc0NrcUlTMndLeXl3S2l1d0tpb3RzQ3dzSUNCSElDQ3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nSTJFNEl5Q0tWVmdnUnlBZ3NBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZQ05oT0JzaFdTMndMU3dBc1FBQ1JWUllzQUVXc0N3cXNBRVZNQnNpV1Myd0xpd0FzQTByc1FBQ1JWUllzQUVXc0N3cXNBRVZNQnNpV1Myd0x5d2dOYkFCWUMyd01Dd0FzQUZGWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqc0FFcnNBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpzQUVyc0FBV3RBQUFBQUFBUkQ0ak9MRXZBUlVxTGJBeExDQThJRWNnc0F0RFk3Z0VBR0lnc0FCUVdMQkFZRmxtc0FGallMQUFRMkU0TGJBeUxDNFhQQzJ3TXl3Z1BDQkhJTEFMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTJDd0FFTmhzQUZEWXpndHNEUXNzUUlBRmlVZ0xpQkhzQUFqUXJBQ0pVbUtpa2NqUnlOaElGaGlHeUZac0FFalFySXpBUUVWRkNvdHNEVXNzQUFXc0FRbHNBUWxSeU5ISTJHd0NVTXJaWW91SXlBZ1BJbzRMYkEyTExBQUZyQUVKYkFFSlNBdVJ5TkhJMkVnc0FRalFyQUpReXNnc0dCUVdDQ3dRRkZZc3dJZ0F5QWJzd0ltQXhwWlFrSWpJTEFJUXlDS0kwY2pSeU5oSTBaZ3NBUkRzQUppSUxBQVVGaXdRR0JaWnJBQlkyQWdzQUVySUlxS1lTQ3dBa05nWkNPd0EwTmhaRkJZc0FKRFlSdXdBME5nV2JBREpiQUNZaUN3QUZCWXNFQmdXV2F3QVdOaEl5QWdzQVFtSTBaaE9Cc2pzQWhEUnJBQ0piQUlRMGNqUnlOaFlDQ3dCRU93QW1JZ3NBQlFXTEJBWUZsbXNBRmpZQ01nc0FFckk3QUVRMkN3QVN1d0JTVmhzQVVsc0FKaUlMQUFVRml3UUdCWlpyQUJZN0FFSm1FZ3NBUWxZR1Fqc0FNbFlHUlFXQ0ViSXlGWkl5QWdzQVFtSTBaaE9Ga3RzRGNzc0FBV0lDQWdzQVVtSUM1SEkwY2pZU004T0Myd09DeXdBQllnc0FnalFpQWdJRVlqUjdBQkt5TmhPQzJ3T1N5d0FCYXdBeVd3QWlWSEkwY2pZYkFBVkZndUlEd2pJUnV3QWlXd0FpVkhJMGNqWVNDd0JTV3dCQ1ZISTBjalliQUdKYkFGSlVtd0FpVmh1UWdBQ0FCall5TWdXR0liSVZsanVBUUFZaUN3QUZCWXNFQmdXV2F3QVdOZ0l5NGpJQ0E4aWpnaklWa3RzRG9zc0FBV0lMQUlReUF1UnlOSEkyRWdZTEFnWUdhd0FtSWdzQUJRV0xCQVlGbG1zQUZqSXlBZ1BJbzRMYkE3TENNZ0xrYXdBaVZHVWxnZ1BGa3VzU3NCRkNzdHNEd3NJeUF1UnJBQ0pVWlFXQ0E4V1M2eEt3RVVLeTJ3UFN3aklDNUdzQUlsUmxKWUlEeFpJeUF1UnJBQ0pVWlFXQ0E4V1M2eEt3RVVLeTJ3UGl5d05Tc2pJQzVHc0FJbFJsSllJRHhaTHJFckFSUXJMYkEvTExBMks0b2dJRHl3QkNOQ2lqZ2pJQzVHc0FJbFJsSllJRHhaTHJFckFSUXJzQVJETHJBckt5MndRQ3l3QUJhd0JDV3dCQ1lnTGtjalJ5TmhzQWxES3lNZ1BDQXVJeml4S3dFVUt5MndRU3l4Q0FRbFFyQUFGckFFSmJBRUpTQXVSeU5ISTJFZ3NBUWpRckFKUXlzZ3NHQlFXQ0N3UUZGWXN3SWdBeUFic3dJbUF4cFpRa0lqSUVld0JFT3dBbUlnc0FCUVdMQkFZRmxtc0FGallDQ3dBU3NnaW9waElMQUNRMkJrSTdBRFEyRmtVRml3QWtOaEc3QURRMkJac0FNbHNBSmlJTEFBVUZpd1FHQlpackFCWTJHd0FpVkdZVGdqSUR3ak9Cc2hJQ0JHSTBld0FTc2pZVGdoV2JFckFSUXJMYkJDTExBMUt5NnhLd0VVS3kyd1F5eXdOaXNoSXlBZ1BMQUVJMElqT0xFckFSUXJzQVJETHJBckt5MndSQ3l3QUJVZ1I3QUFJMEt5QUFFQkZSUVRMckF4S2kyd1JTeXdBQlVnUjdBQUkwS3lBQUVCRlJRVExyQXhLaTJ3Uml5eEFBRVVFN0F5S2kyd1J5eXdOQ290c0Vnc3NBQVdSU01nTGlCR2lpTmhPTEVyQVJRckxiQkpMTEFJSTBLd1NDc3RzRW9zc2dBQVFTc3RzRXNzc2dBQlFTc3RzRXdzc2dFQVFTc3RzRTBzc2dFQlFTc3RzRTRzc2dBQVFpc3RzRThzc2dBQlFpc3RzRkFzc2dFQVFpc3RzRkVzc2dFQlFpc3RzRklzc2dBQVBpc3RzRk1zc2dBQlBpc3RzRlFzc2dFQVBpc3RzRlVzc2dFQlBpc3RzRllzc2dBQVFDc3RzRmNzc2dBQlFDc3RzRmdzc2dFQVFDc3RzRmtzc2dFQlFDc3RzRm9zc2dBQVF5c3RzRnNzc2dBQlF5c3RzRndzc2dFQVF5c3RzRjBzc2dFQlF5c3RzRjRzc2dBQVB5c3RzRjhzc2dBQlB5c3RzR0Fzc2dFQVB5c3RzR0Vzc2dFQlB5c3RzR0lzc0RjckxyRXJBUlFyTGJCakxMQTNLN0E3S3kyd1pDeXdOeXV3UENzdHNHVXNzQUFXc0RjcnNEMHJMYkJtTExBNEt5NnhLd0VVS3kyd1p5eXdPQ3V3T3lzdHNHZ3NzRGdyc0R3ckxiQnBMTEE0SzdBOUt5MndhaXl3T1NzdXNTc0JGQ3N0c0dzc3NEa3JzRHNyTGJCc0xMQTVLN0E4S3kyd2JTeXdPU3V3UFNzdHNHNHNzRG9yTHJFckFSUXJMYkJ2TExBNks3QTdLeTJ3Y0N5d09pdXdQQ3N0c0hFc3NEb3JzRDByTGJCeUxMTUpCQUlEUlZnaEd5TWhXVUlyc0FobHNBTWtVSGl3QVJVd0xRQkx1QURJVWxpeEFRR09XYkFCdVFnQUNBQmpjTEVBQlVLeEFBQXFzUUFGUXJFQUNDcXhBQVZDc1FBSUtyRUFCVUs1QUFBQUNTcXhBQVZDdVFBQUFBa3FzUU1BUkxFa0FZaFJXTEJBaUZpeEEyUkVzU1lCaUZGWXVnaUFBQUVFUUloalZGaXhBd0JFV1ZsWldiRUFEQ3E0QWYrRnNBU05zUUlBUkFBPScpIGZvcm1hdCgndHJ1ZXR5cGUnKTtcbn1cbi8qIENocm9tZSBoYWNrOiBTVkcgaXMgcmVuZGVyZWQgbW9yZSBzbW9vdGggaW4gV2luZG96emUuIDEwMCUgbWFnaWMsIHVuY29tbWVudCBpZiB5b3UgbmVlZCBpdC4gKi9cbi8qIE5vdGUsIHRoYXQgd2lsbCBicmVhayBoaW50aW5nISBJbiBvdGhlciBPUy1lcyBmb250IHdpbGwgYmUgbm90IGFzIHNoYXJwIGFzIGl0IGNvdWxkIGJlICovXG4vKlxuQG1lZGlhIHNjcmVlbiBhbmQgKC13ZWJraXQtbWluLWRldmljZS1waXhlbC1yYXRpbzowKSB7XG4gIEBmb250LWZhY2Uge1xuICAgIGZvbnQtZmFtaWx5OiAnc2YtaWNvbnMnO1xuICAgIHNyYzogdXJsKCcuLi9mb250L3NmLWljb25zLnN2Zz8xMzA2NzY3NiNzZi1pY29ucycpIGZvcm1hdCgnc3ZnJyk7XG4gIH1cbn1cbiovXG5cbiBbY2xhc3NePVwic2YtaWNvbi1cIl06YmVmb3JlLCBbY2xhc3MqPVwiIHNmLWljb24tXCJdOmJlZm9yZSB7XG4gIGZvbnQtZmFtaWx5OiBcInNmLWljb25zXCI7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgc3BlYWs6IG5vbmU7XG5cbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICB0ZXh0LWRlY29yYXRpb246IGluaGVyaXQ7XG4gIHdpZHRoOiAxZW07XG4gIG1hcmdpbi1yaWdodDogLjJlbTtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAvKiBvcGFjaXR5OiAuODsgKi9cblxuICAvKiBGb3Igc2FmZXR5IC0gcmVzZXQgcGFyZW50IHN0eWxlcywgdGhhdCBjYW4gYnJlYWsgZ2x5cGggY29kZXMqL1xuICBmb250LXZhcmlhbnQ6IG5vcm1hbDtcbiAgdGV4dC10cmFuc2Zvcm06IG5vbmU7XG5cbiAgLyogZml4IGJ1dHRvbnMgaGVpZ2h0LCBmb3IgdHdpdHRlciBib290c3RyYXAgKi9cbiAgbGluZS1oZWlnaHQ6IDFlbTtcblxuICAvKiBBbmltYXRpb24gY2VudGVyIGNvbXBlbnNhdGlvbiAtIG1hcmdpbnMgc2hvdWxkIGJlIHN5bW1ldHJpYyAqL1xuICAvKiByZW1vdmUgaWYgbm90IG5lZWRlZCAqL1xuICBtYXJnaW4tbGVmdDogLjJlbTtcblxuICAvKiB5b3UgY2FuIGJlIG1vcmUgY29tZm9ydGFibGUgd2l0aCBpbmNyZWFzZWQgaWNvbnMgc2l6ZSAqL1xuICAvKiBmb250LXNpemU6IDEyMCU7ICovXG5cbiAgLyogVW5jb21tZW50IGZvciAzRCBlZmZlY3QgKi9cbiAgLyogdGV4dC1zaGFkb3c6IDFweCAxcHggMXB4IHJnYmEoMTI3LCAxMjcsIDEyNywgMC4zKTsgKi9cbn1cbi5zZi1pY29uLTNkb3RzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDAnOyB9IC8qICfuoIAnICovXG4uc2YtaWNvbi1hZGQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMSc7IH0gLyogJ+6ggScgKi9cbi5zZi1pY29uLWNsb3NlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDInOyB9IC8qICfuoIInICovXG4uc2YtaWNvbi1wcmljZWJvb2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMyc7IH0gLyogJ+6ggycgKi9cbi5zZi1pY29uLWhlbHA6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNCc7IH0gLyogJ+6ghCcgKi9cbi5zZi1pY29uLW5vdGVib29rOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDUnOyB9IC8qICfuoIUnICovXG4uc2YtaWNvbi1yb3dzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDYnOyB9IC8qICfuoIYnICovXG4uc2YtaWNvbi11cGxvYWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNyc7IH0gLyogJ+6ghycgKi9cbi5zZi1pY29uLWNsb2NrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDgnOyB9IC8qICfuoIgnICovXG4uc2YtaWNvbi1ncm91cHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwOSc7IH0gLyogJ+6giScgKi9cbi5zZi1pY29uLW9wZW5fZm9sZGVyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGEnOyB9IC8qICfuoIonICovXG4uc2YtaWNvbi1yaWdodF9hbGlnbl90ZXh0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGInOyB9IC8qICfuoIsnICovXG4uc2YtaWNvbi1wcm9kdWN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGMnOyB9IC8qICfuoIwnICovXG4uc2YtaWNvbi1xdWVzdGlvbl9mZWVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGQnOyB9IC8qICfuoI0nICovXG4uc2YtaWNvbi13YXJuaW5nOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGUnOyB9IC8qICfuoI4nICovXG4uc2YtaWNvbi11c2VyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGYnOyB9IC8qICfuoI8nICovXG4uc2YtaWNvbi1yaWdodDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEwJzsgfSAvKiAn7qCQJyAqL1xuLnNmLWljb24tbm90aWZpY2F0aW9uOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTEnOyB9IC8qICfuoJEnICovXG4uc2YtaWNvbi1ob21lOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTInOyB9IC8qICfuoJInICovXG4uc2YtaWNvbi1jb250cmFjdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEzJzsgfSAvKiAn7qCTJyAqL1xuLnNmLWljb24tYWRkdXNlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE0JzsgfSAvKiAn7qCUJyAqL1xuLnNmLWljb24tYXBwczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE1JzsgfSAvKiAn7qCVJyAqL1xuLnNmLWljb24tY29weTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE2JzsgfSAvKiAn7qCWJyAqL1xuLnNmLWljb24taW1hZ2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNyc7IH0gLyogJ+6glycgKi9cbi5zZi1pY29uLW9wZW46YmVmb3JlIHsgY29udGVudDogJ1xcZTgxOCc7IH0gLyogJ+6gmCcgKi9cbi5zZi1pY29uLXNldHRpbmdzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTknOyB9IC8qICfuoJknICovXG4uc2YtaWNvbi16b29taW46YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYSc7IH0gLyogJ+6gmicgKi9cbi5zZi1pY29uLXJlY29yZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFiJzsgfSAvKiAn7qCbJyAqL1xuLnNmLWljb24tYXJyb3dkb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWMnOyB9IC8qICfuoJwnICovXG4uc2YtaWNvbi1jdXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZCc7IH0gLyogJ+6gnScgKi9cbi5zZi1pY29uLWluc2VydF90ZW1wbGF0ZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFlJzsgfSAvKiAn7qCeJyAqL1xuLnNmLWljb24tb3BlbmVkX2ZvbGRlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFmJzsgfSAvKiAn7qCfJyAqL1xuLnNmLWljb24tc2lkZV9saXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjAnOyB9IC8qICfuoKAnICovXG4uc2YtaWNvbi16b29tb3V0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjEnOyB9IC8qICfuoKEnICovXG4uc2YtaWNvbi1xdW90ZXM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMic7IH0gLyogJ+6goicgKi9cbi5zZi1pY29uLXJlbGF0ZWRfbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIzJzsgfSAvKiAn7qCjJyAqL1xuLnNmLWljb24tZ2RvYzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI0JzsgfSAvKiAn7qCkJyAqL1xuLnNmLWljb24tc25pcHBldDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI1JzsgfSAvKiAn7qClJyAqL1xuLnNmLWljb24tcGFnZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI2JzsgfSAvKiAn7qCmJyAqL1xuLnNmLWljb24tY3VzdG9tX2FwcHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNyc7IH0gLyogJ+6gpycgKi9cbi5zZi1pY29uLWFycm93dXA6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyOCc7IH0gLyogJ+6gqCcgKi9cbi5zZi1pY29uLWF0dGFjaDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI5JzsgfSAvKiAn7qCpJyAqL1xuLnNmLWljb24tZGF5dmlldzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJhJzsgfSAvKiAn7qCqJyAqL1xuLnNmLWljb24taW5mbzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJiJzsgfSAvKiAn7qCrJyAqL1xuLnNmLWljb24taW5zZXJ0X3RhZ19maWVsZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJjJzsgfSAvKiAn7qCsJyAqL1xuLnNmLWljb24tcGFzdGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyZCc7IH0gLyogJ+6grScgKi9cbi5zZi1pY29uLXNvcnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyZSc7IH0gLyogJ+6gricgKi9cbi5zZi1pY29uLXBkZjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJmJzsgfSAvKiAn7qCvJyAqL1xuLnNmLWljb24tcmVwb3J0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzAnOyB9IC8qICfuoLAnICovXG4uc2YtaWNvbi10YXNrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzEnOyB9IC8qICfuoLEnICovXG4uc2YtaWNvbi1hcHByb3ZhbDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODMyJzsgfSAvKiAn7qCyJyAqL1xuLnNmLWljb24tc29jaWFsc2hhcmU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzMyc7IH0gLyogJ+6gsycgKi9cbi5zZi1pY29uLXBlb3BsZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM0JzsgfSAvKiAn7qC0JyAqL1xuLnNmLWljb24taXRhbGljOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzUnOyB9IC8qICfuoLUnICovXG4uc2YtaWNvbi1kZWxldGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzNic7IH0gLyogJ+6gticgKi9cbi5zZi1pY29uLWJhY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzNyc7IH0gLyogJ+6gtycgKi9cbi5zZi1pY29uLWJhbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM4JzsgfSAvKiAn7qC4JyAqL1xuLnNmLWljb24tZW1haWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzOSc7IH0gLyogJ+6guScgKi9cbi5zZi1pY29uLWJvbGQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzYSc7IH0gLyogJ+6guicgKi9cbi5zZi1pY29uLXByZXZpZXc6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzYic7IH0gLyogJ+6guycgKi9cbi5zZi1pY29uLXNoYXJlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2MnOyB9IC8qICfuoLwnICovXG4uc2YtaWNvbi1kYXNoYm9hcmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzZCc7IH0gLyogJ+6gvScgKi9cbi5zZi1pY29uLXRoYW5rczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODNlJzsgfSAvKiAn7qC+JyAqL1xuLnNmLWljb24tdG9kYXk6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzZic7IH0gLyogJ+6gvycgKi9cbi5zZi1pY29uLWNvbnRyYWN0LTE6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0MCc7IH0gLyogJ+6hgCcgKi9cbi5zZi1pY29uLXNwaW5uZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0MSc7IH0gLyogJ+6hgScgKi9cbi5zZi1pY29uLXBob3RvOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDInOyB9IC8qICfuoYInICovXG4uc2YtaWNvbi1ldmVudDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQzJzsgfSAvKiAn7qGDJyAqL1xuLnNmLWljb24tYnVpbGRlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ0JzsgfSAvKiAn7qGEJyAqL1xuLnNmLWljb24tanVzdGlmeV90ZXh0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDUnOyB9IC8qICfuoYUnICovXG4uc2YtaWNvbi1jZW50ZXJfYWxpZ25fdGV4dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ2JzsgfSAvKiAn7qGGJyAqL1xuLnNmLWljb24tZWRpdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ3JzsgfSAvKiAn7qGHJyAqL1xuLnNmLWljb24tbGF5b3V0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDgnOyB9IC8qICfuoYgnICovXG4uc2YtaWNvbi1wcmlvcml0eTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ5JzsgfSAvKiAn7qGJJyAqL1xuLnNmLWljb24tc3RhbmRhcmRfb2JqZWN0czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODRhJzsgfSAvKiAn7qGKJyAqL1xuLnNmLWljb24tY29udGFjdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODRiJzsgfSAvKiAn7qGLJyAqL1xuLnNmLWljb24tY3VzdG9tOTM6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Yyc7IH0gLyogJ+6hjCcgKi9cbi5zZi1pY29uLWVtYWlsLTE6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0ZCc7IH0gLyogJ+6hjScgKi9cbi5zZi1pY29uLXN1Y2Nlc3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0ZSc7IH0gLyogJ+6hjicgKi9cbi5zZi1pY29uLXJlZnJlc2g6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Zic7IH0gLyogJ+6hjycgKi9cbi5zZi1pY29uLWxlZnRfYWxpZ25fdGV4dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODUwJzsgfSAvKiAn7qGQJyAqL1xuLnNmLWljb24tZG93bjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODUxJzsgfSAvKiAn7qGRJyAqL1xuLnNmLWljb24tY2hhcnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Mic7IH0gLyogJ+6hkicgKi9cbi5zZi1pY29uLWNoYXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Myc7IH0gLyogJ+6hkycgKi9cbi5zZi1pY29uLWVycm9yOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTQnOyB9IC8qICfuoZQnICovXG4uc2YtaWNvbi1sZWZ0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTUnOyB9IC8qICfuoZUnICovXG4uc2YtaWNvbi1yZW1vdmVfbGluazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU2JzsgfSAvKiAn7qGWJyAqL1xuLnNmLWljb24tc3VtbWFyeTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU3JzsgfSAvKiAn7qGXJyAqL1xuLnNmLWljb24tZG9jdW1lbnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1OCc7IH0gLyogJ+6hmCcgKi9cbi5zZi1pY29uLWRyYWZ0czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU5JzsgfSAvKiAn7qGZJyAqL1xuLnNmLWljb24tc3VtbWFyeWRldGFpbDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODVhJzsgfSAvKiAn7qGaJyAqL1xuLnNmLWljb24tcmVwbGFjZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODViJzsgfSAvKiAn7qGbJyAqL1xuLnNmLWljb24tbGlrZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODVjJzsgfSAvKiAn7qGcJyAqL1xuLnNmLWljb24tZG93bmxvYWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1ZCc7IH0gLyogJ+6hnScgKi9cbi5zZi1pY29uLWNoZWNrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NWUnOyB9IC8qICfuoZ4nICovXG4uc2YtaWNvbi1jaGV2cm9ubGVmdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODVmJzsgfSAvKiAn7qGfJyAqL1xuLnNmLWljb24tZXhwYW5kOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjAnOyB9IC8qICfuoaAnICovXG4uc2YtaWNvbi1saW5rOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjEnOyB9IC8qICfuoaEnICovXG4uc2YtaWNvbi1yZXBseTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODYyJzsgfSAvKiAn7qGiJyAqL1xuLnNmLWljb24tdGFibGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Myc7IH0gLyogJ+6hoycgKi9cbi5zZi1pY29uLWZlZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2NCc7IH0gLyogJ+6hpCcgKi9cbi5zZi1pY29uLWV2ZW50LTE6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2NSc7IH0gLyogJ+6hpScgKi9cbi5zZi1pY29uLXRpbGVfY2FyZF9saXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjYnOyB9IC8qICfuoaYnICovXG4uc2YtaWNvbi1yaWNodGV4dGJ1bGxldGVkbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY3JzsgfSAvKiAn7qGnJyAqL1xuLnNmLWljb24tbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY4JzsgfSAvKiAn7qGoJyAqL1xuLnNmLWljb24tZmF2b3JpdGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2OSc7IH0gLyogJ+6hqScgKi9cbi5zZi1pY29uLWNoZXZyb25yaWdodDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZhJzsgfSAvKiAn7qGqJyAqL1xuLnNmLWljb24tY2hldnJvbmRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Yic7IH0gLyogJ+6hqycgKi9cbi5zZi1pY29uLWZpbHRlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZjJzsgfSAvKiAn7qGsJyAqL1xuLnNmLWljb24tbW92ZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZkJzsgfSAvKiAn7qGtJyAqL1xuLnNmLWljb24tcmljaHRleHRpbmRlbnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2ZSc7IH0gLyogJ+6hricgKi9cbi5zZi1pY29uLXVuZGVybGluZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZmJzsgfSAvKiAn7qGvJyAqL1xuLnNmLWljb24tZmVlZGJhY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3MCc7IH0gLyogJ+6hsCcgKi9cbi5zZi1pY29uLWZpbGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3MSc7IH0gLyogJ+6hsScgKi9cbi5zZi1pY29uLXVuZG86YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Mic7IH0gLyogJ+6hsicgKi9cbi5zZi1pY29uLXJpY2h0ZXh0bnVtYmVyZWRsaXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzMnOyB9IC8qICfuobMnICovXG4uc2YtaWNvbi1sb2NrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzQnOyB9IC8qICfuobQnICovXG4uc2YtaWNvbi1maWx0ZXJsaXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzUnOyB9IC8qICfuobUnICovXG4uc2YtaWNvbi1jaGV2cm9udXA6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Nic7IH0gLyogJ+6hticgKi9cbi5zZi1pY29uLWNsZWFyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzcnOyB9IC8qICfuobcnICovXG4uc2YtaWNvbi1mb3J3YXJkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzgnOyB9IC8qICfuobgnICovXG4uc2YtaWNvbi1uZXdfd2luZG93OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzknOyB9IC8qICfuobknICovXG4uc2YtaWNvbi1yaWNodGV4dG91dGRlbnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3YSc7IH0gLyogJ+6huicgKi9cbi5zZi1pY29uLXVubG9jazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODdiJzsgfSAvKiAn7qG7JyAqL1xuLnNmLWljb24tb3Bwb3J0dW5pdHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Yyc7IH0gLyogJ+6hvCcgKi9cbi5zZi1pY29uLXBvc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3ZCc7IH0gLyogJ+6hvScgKi9cbi5zZi1pY29uLXVwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2UnOyB9IC8qICfuob4nICovXG4uc2YtaWNvbi1zZWFyY2g6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Zic7IH0gLyogJ+6hvycgKi9cbi5zZi1pY29uLW5ldzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODgwJzsgfSAvKiAn7qKAJyAqL1xuLnNmLWljb24tZnJvemVuOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODEnOyB9IC8qICfuooEnICovXG4uc2YtaWNvbi1jb21tZW50czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODgyJzsgfSAvKiAn7qKCJyAqL1xuLnNmLWljb24tcmVjZW50OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODMnOyB9IC8qICfuooMnICovXG4uc2YtaWNvbi1tYWdpY3dhbmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4NCc7IH0gLyogJ+6ihCcgKi9cbi5zZi1pY29uLWRpc2NvdW50c2NoZWR1bGVpY29ucy0wMjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODg1JzsgfSAvKiAn7qKFJyAqL1xuLnNmLWljb24tY2FuY2VsLWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Nic7IH0gLyogJ+6ihicgKi9cblxuLyogVGhlIGZvbGxvd2luZyBpcyBjb3BpZWQgZnJvbSBpY29ucy9jc3Mvc2ItZW1iZWRkZWQuY3NzIGFzIGxlc3MtcGx1Z2luLWNsZWFuLWNzcyBjb3VsZCBoYW5kbGUgYSBAaW1wb3J0ICovXG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6ICdzYic7XG4gIHNyYzogdXJsKCcuLi9mb250L3NiLmVvdD80OTM0MDI0OCcpO1xuICBzcmM6IHVybCgnLi4vZm9udC9zYi5lb3Q/NDkzNDAyNDgjaWVmaXgnKSBmb3JtYXQoJ2VtYmVkZGVkLW9wZW50eXBlJyksXG4gICAgICAgdXJsKCcuLi9mb250L3NiLnN2Zz80OTM0MDI0OCNzYicpIGZvcm1hdCgnc3ZnJyk7XG4gIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbn1cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogJ3NiJztcbiAgc3JjOiB1cmwoJ2RhdGE6YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFtO2Jhc2U2NCxkMDlHUmdBQkFBQUFBQlgwQUE0QUFBQUFKQmdBQVFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQlBVeTh5QUFBQlJBQUFBRVFBQUFCV1BpbEpFbU50WVhBQUFBR0lBQUFBT2dBQUFVclFOaG0zWTNaMElBQUFBY1FBQUFBS0FBQUFDZ0FBQUFCbWNHZHRBQUFCMEFBQUJaUUFBQXR3aUpDUVdXZGhjM0FBQUFka0FBQUFDQUFBQUFnQUFBQVFaMng1WmdBQUIyd0FBQXFDQUFBUDNNNDQrTzFvWldGa0FBQVI4QUFBQURVQUFBQTJDQnVzQkdob1pXRUFBQklvQUFBQUhnQUFBQ1FIbHdOeGFHMTBlQUFBRWtnQUFBQS9BQUFBbklOSEFBQnNiMk5oQUFBU2lBQUFBRkFBQUFCUVNaUk5sbTFoZUhBQUFCTFlBQUFBSUFBQUFDQUF6QXZTYm1GdFpRQUFFdmdBQUFGekFBQUNoZi9Fakc1d2IzTjBBQUFVYkFBQUFTQUFBQUc2QVJpMmwzQnlaWEFBQUJXTUFBQUFaUUFBQUh2ZGF3T0ZlSnhqWUdTT1k1ekF3TXJBd1ZURnRJZUJnYUVIUWpNK1lEQmtaR0pnWUdKZ1pXYkFDZ0xTWEZNWUhGNHd2RkJsRHZxZnhSREZITVF3SFNqTUNKSURBT0xRQzdsNG5HTmdZR0JtZ0dBWkJrWUdFSEFCOGhqQmZCWUdEU0ROQnFRWkdaZ1lHRjZvL3Y4UFV2Q0NBVVJMTUVMVkF3RWpHOE9JQndDTStBYlRBQUFBQUFBQUFBQUFBQUFBQUFCNG5LMVdhWE1UUnhDZDFXSExOajZDRHhJMmdWbkdjb3gyVnBqTENCREc3RW9XNEJ6eWxleENqbDFMZHU2TFQvd0cvWnBla1ZTUmIveTB2QjRkMkdBblZWUW9TdjJtOSsxTTkrdWVYcFBRa3NSZVdJK2szSHdwcHJZMmFXVG5TVWczYkZxTzRrUFoyUXNwVTB6K0xvaUNhTFhVdnUwNEpDSVNnYXAxaFNXQzJQZkkwaVRqUTQ4eVdyWWx2V3BTYnVsSmQ5a2FEK3F0K3ZiVDBGR08zUWtsTlp1aFErdVJMYW5DcUJKRk11MlJrall0dzlWZlNWcmg1eXZNZk5VTUpZTG9KSkxHbTJFTWorUm40NHhXR2EzR2RoeEZrVTJXRzBXS1JETThpQ0tQc2xwaW4xd3hRVUQ1b0JsU1h2azBvbnlFSDVFVmU1VFRDbkhKZHByZjl5VS82UjNPdnlUaWVvdXlKUWYrUUhaa0IzdW5LL2tpMHRvSzQ2YWRiRWVoaXZCMGZTZkVJNXVUNnAvc1VWN1RhT0IyUmFZbnpRaVd5bGVRV1BrSlpmWVB5V3JoZk1xWFBCclZrb09jQ0ZvdmMySmY4ZzYwSGtkTWlXc215SUx1ams2SW9PNlhuS0hZWS9xNCtPTzlYU3dYSVFUSU9KYjFqa3E0RUVZcFliT2FKRzBFT1lpU3NrV1YxSHBIVEp6eU9pM2lMV0cvVHUzb1MyZTBTYWc3TVo2dGg0NnRuS2prZURTcDAweW1UdTJrNXRHVUJsRktPaE04NXRjQmxCL1JKSysyc1pyRXlxTnBiRE5qSkpGUW9JVnphU3FJWlNlV05BWFJQSnJSbTd0aG1tdlhva1dhUEZEUFBYcFBiMjZGbXpzOXArM0FQMnY4WjNVcXBvTzlNSjJlRHNoS2ZKcDJ1VW5SdW41NmhuOG04VVBXQWlxUkxUYkRsTVZEdG40SDVlVmpTNDdDYXdOczk1N3pLK2g5OWtUSXBJSDRHL0FlTDlVcEJVeUZtRlZRQzkyMDFyVXN5OVJxVm90VVpPcTdJVTByWDlacEFrMDVEbjFqWDhZNC9xK1pHVXRNQ2QvdnhPblpFWmVldWZZbHlEU0gzR1pkaitaMWFyRmRnTTVzeitrMHkvWjluZWJZZnFEVFBOdnpPaDFoYSt0MGxPMkhPaTJ3L1Vpblkyd3ZhRUdUN2pzRWNoR0JYTUFHRW9Hd2RSQUkyMHNJaEsxQ0lHd1hFUWpiSWdKaHU0UkEySDZNUU5ndUl4QzJsN1dzbW40cWFSdzdFOHNBUllnRG96bnV5R1Z1S2xkVHlhVVNyb3RHcHpia0tYS3JwS0o0VnYwckEvM2lrVGVzZ2JWQXVrVFcvSXBKcm54VWxlT1BybWg1MDhTNUFvNVZmM3R6WEo4VEQyVy9XUGhUOEwvYW1xcWtWNng1WkhJVmVTUFFrK05FMXlZVmo2N3A4cm1xUjlmL2k0b09hNEYrQTZVUUMwVlpsZzIrbVpEd1VhZlRVQTFjNVJBekd6TVAxL1c2WmMzUDRmeWJHQ0VMNkg3OE54UWFDOXlEVGxsSldlMWdyOVhYajJXNXR3ZmxzQ2RZa21LK3pPdGI0WXVNekVyN1JXWXBlejd5ZWNBVk1DcVZZYXNOWEszZ3pYc1M4NURwVGZKTUVMY1ZaWU9ramNlWklMR0JZeDR3Yjc2VElDUk1YYldCMmltY3NJRzhZTXdwMk8rRVExUnZsT1Z3ZTZGOUhvMlVmMnRYN01nWkZVMFErRzMyUnRqcnMxRHlXNnlCaENlLzFOZEFWU0ZOeGJpcGdFc2o1WVpxOEdGY3JkdEdNazZncjZqWURjdXlpZzhmUjl4M1NvNWxJUGxJRWF0SFJ6K3R2VUtkMUxuOXlpaHUzenY5Q0lKQmFXTCs5cjZaNHFDVWQ3V1NaVlp0QTFPM0dwVlQxNXJEeGFzTzNjMmo3bnZIMlNkeTFqVGRkRS9jOUw2bVZiZURnN2xaRU8zYkhKU2xUQzZvNjhNT0c2akx6YVhRNm1WY2t0NTJEekFzTUtEZm9SVWIvMWYzY2ZnOFY2b0tvK05Jdloyb0g2UFBZZ3p5RHpoL1IvVUY2T2N4VExtR2xPZDdseE9mYnR6RDJUSmR4VjJzbitMZndLeTE1bWJwR25CRDB3MlloNnhhSGJyS0RYeW5Cam85MHR5TzlCRHdzZTRLOFFCZ0U4Qmk4SW51V3NiektZRHhmTVljSCtCejVqQm9Nb2ZCRm5NWWJETm5EV0NIT1F4Mm1jTmdqemtNdm1ET09zQ1h6R0VRTW9kQnhCd0dUNWdUQUR4bERvT3ZtTVBnYStZdytJWTU5d0crWlE2RG1Ea01FdVl3Mk5kMGF5aHppeGQwRjZodFVCWG93UFFURnZld09OUlVHYksvNDRWaGYyOFFzMzh3aUtrL2FybzlwUDdFQzBQOTJTQ20vbUlRVTMvVmRHZEkvWTBYaHZxN1FVejl3eUNtUHRNdnhuS1p3VjlHdmt1RkE4b3VOcC96OThUN0I4SWFRTFlBQVFBQi8vOEFEM2ljaFZkN2NGVGxGYi9udTYvZG0rVHUzbjNjbTJ5U1RYWTMyWnRIQ2JoUG1zUVFZd1NHQnBxSkdZVGdBR1dzMFBBd09qd3NiOE1VWDJsQ0hidWlSbFNHSm96VmpPVWhqdVBJMUZxMUNFNTFLdGdPRnRveWFjSWZOQ1BZT3BUOTB2UGR6VUlRTXQza252MWU5M3puZDk3TEFjZU5kL0lqZkJzbmN0SmhnWU5wMVZvQU5GSGpSK2dBUGNtM0lWMTNqZlJ5K0JHdW4rVTVtY3ZoSEZ4ZW81S1hhN2VKQW5EQ3RHcXZGdEFBSC9mRU43eEY1OEZiMitBby9RRWNUYkVaaWJKSit0U05NZU5ydjRXdm16TzRRcTZFQzNGR295ZFFXbHhVa08vMWFNN3NYWGE4S3g3MThoT1BlNHJ4VmZiWk5vbW1ybDZGVFprbjdicjltTWtqM1ZZZXJWR2RMSVAwWFJrQ1hwaDRyTHQrVG42VWZqbnpUSEV0Y3VmR0grYi95cmR3Qk85MGM4b3hweUloYXg1WnU0RzM4dzJrQkhTVlRJZHdNN2hPd1FEd2RBazRTRzJyYjFlQlJRdjc0RDc2TDJpQ0FYcU5kcEN2elhwUzJPMXJyU1VGdXdvNTdvWnRjOUMyZGg1dEc3ZEQwZzZHSFdRN2dFRkh2d0lEaksvb3FFWG82SnlicDEreEk3Zm5nK2JOL3NGSzhNRksrandkL2l3N29NL0RTZzVSWmQ4enVSbWM3V2hObFY4aDZGL3haQ0pwSm8zRUxJZ2F1cEUwWkwwRXZMSWtHN0lwT1NCa2hrM1pUSWJOcEVlUEpHSmhGVkpxL3ZLMUd5cW5PL3VkMDZvM3JGMmVyNll5UzlYVGNHbDZwYlYwcW4xek8vN0R4S0ZsQmp0a0xMdjVVQ3JMYW1sOWUvdWpDMG1iNWRPREtLTStsVStqUGNzblBmekl0ZndieitMKy9ySCsvcStSdnZSU1JrL3ZJaS9tUWRKaGtlbEpTNkpDd2R3L0FOY09wSmZ2QjJIL0FhQTRPc0Q4TEtPZlBhZ2ZCNWVQK3RHZE1rZFlHRVhEeVFaSVJuUkRMNGFvQm9GNERaaGhTWDZhRkpvdjNMKzB2OXlYU2g4Q2pzeE54bWFMS2RJMGNOZWlCMkhOdlhXejFxYmZJMDFkc2JtRXpLM044T2M0dm8rOGdmTGtJZjljUlNESXZ6emdOWlBlQUtLSkczS2M3MHV2T0hlTzdMdTJpK3c3ZDI3SFF3Y0h1ODUxUFRSdzhLRU1ucC93ZC9BdXpvdDQzRGFHSjVhSWxBQ2p1bGRMSXZXZ0k0WExZczRyWlpHeXk2NUltWXR1cGo5MVFXRkJtZXN5NlM0b0t5dEliNy9zS291NDZXYlk3Y253WEkwOFBSYlBQRXRITVhSSjNTTUZwNE9HTkp6VVpLUXVlQngyNDR1dXkyWFJNcmlDckdHRnp3Vzc2V1pYTE9TNm5ON09lSlB1eTY0UXg0K254My9ETCtPWjlaSmNNOGJSWFhYVjdod2U0Nmc4SGd0WFExQXFCbzllQjVHRU8xWURvYUFzWVZ4Rkk2aGtoT0dSWkJVTWIyWS9oazdad0JzZUZZSTFCTGY5QUZjVTIycWJZcEcraHZ2dmVHS09QVytlSU5sRmYvbk1LcjB3VkEvV1ZyNnJTUEY3Y3M4ODh1SEl4K3VremU5ZWVXZDdXL1kxQlhiYzBWNnpTVldTZ2h3dTlMdTh2bHhuWTlpREc2NWdqbFB5RlZXMGJmaGcvZm9QTGpMQ1RIWWRqNStyNGVvUXo4eElWZEJudTQ1SG13ektHN29Cai84T1hIRVNFRktueUFuRmRvZ0pGWTh6ZWxWVzV0d0FCeitlTFB0aVhQQ3pIUndjdHFnQzF4WlBMQ2puYjVJM1V4ZGVSajlXdUNEWHdDMWdNZFRTR0NrcmNJZ3NoaUNLR1N3ZWNvQWtnd2NwR2pxY3FHTmVWTWNNb0VVanV1Z054TjJvKzNoSXFrWkVMTkF3RlhpVGVDTHV4bm5VRE1sUjl1Mk91c256S3lva1FnaUFRUDhpSFJKVitaRE5scmZhQXNGd2ZFN2YrVlFXSlp1a2ROOE5kMzRxMkNTYm1QUDBobGVyZkUvNHFsNHhkM1k4UnRadDl0bEpqcUpJNmRtU2ZFZ1VEOXU5UE1mQXBUbGxYbmNFVEVVU2dUVHVqTkF2QlVVR0lFM3dUWDE5YTJ0OVBUeE0rN2hiTUVlNEh6TE16YkVaV2N6bE56Q0xVMksrR1JlZjFZRXNtZGUxa0ZYQy93Rk5oRW53Y2pJS0VIaVlVRUd1cFlGb0JyUmQzbkVMNWwvVTFiVzIxdFhCSTdTWGRIZEhFYjhvNGxVWkZmelpJZUd3eVlwZEpDZEptTldydzhCNkJjZ0JPRGs4VE1LMEMvWlkyN2VlaVJmQzhIQUs5dEF1cHJmeDhmSEgrVi96U2M3R2FWd3BWbmpVV3loUTROWlV3ZktWb09UVVN4UE9zQm5oWEtobEZ5Y21kSmxITFlZd003Z1RTVDVwd2hmUG5UNE5OYWRQUC9jK3VBaTlTSGZTaXdSYzBLM3FmSWVnMGhOU3Jrdm9FUEtxLzN1RWZIS2FmbTRkWGtVdllXb2FFeUFmdG9QdlcwSEhjNnJRNGNtRGhNclRMK2NjeWNxK2h6UmJzaE9yRjhvREpqaHBIaDcrN240R3YxYWUyYWV4WWV5Z3N2V3VCSDJpbkl0eTlaeWpNVGNlbTE1UkZncVVHcktJTDJCV3h5d25CNEpoTTg2SVpxVWNZRjVoZUJOUkIwUkJqaHJKZUFnVGt4blNBdkZZQXJTSkNYL0k4RU9wbmg3Rkwvb1pFdDE1d1pIUVIzQVVEc3daSEtRdkRnNnVmZk8wM3hnRnYwN0NaL3pHQ05tSzV6dXMxMTRwMVdHVG5uQmNRQVhyeDR4Tmc3QnQ4UDAzUjBmMVVxQXY5dWtKdW9Ec0dtR1RGMWp0dUo2RGNya0NxelpKckRaQlVDVitpRFJBRFlISlNmS05lM3RhU2ZzVHIrMWVLQ3pvaFNXVE1nbnBiZXM1ME5ObUVmckhLZktjRGF0QkVQTmNTWUhETGhITWM0Q0ZvQWF3dnBpM3Y1RFV0VDNhUmhhdVg3aG55b3RoYVYxNys4YjI5bSttdk4rcWoyUVI2Y2E2NzBHTXpseEZaQml4cUlsU09JNldNY29qWHMwVHhDSDBxeXBONlVWRk9weWRsNEtOaWsrNW9McDg4STdQcFZiVTBwcmFXdmk4OWlhZXVSWlBsMm9Ya0tjN2xpeFBZTmlqR2N2RFppekRkVWlGTlo2aUlnOTlWaDFLcFdDcGFyR2tzNUhsQmVYZnRSWlg3bm9kN3lKYlVVNkQyVUs3UlU1NTBwaGZnYUwyNkg2LzNvYUR2WjdTVWcvS1cyVDdWblVXd2QrTG5PcTNreWMzOFord3RXYkpyRTJXdVh6eVJJV05qQ3Q5U29VUFZWaGxqZmVxREFCalMvM3NEcHQ2MDh3S25YR0s5bDZNOXA2QjhWTVpZUEdEam8xT0ZaNEY0UkN6TkIrTkpMQXNsNEFmc0NyTHpOeTRoRTFpUXVjWGU1eFhEYmMydjYycnRyTmxobERSdnFLaGFXT2xvRWt0SXBIcWg1YmQ5MHJYWEtIeDBiMUwydmJlT2RjNWpmenVxcXBQYzg2Zlg5UFN1YjZ6cGFZMkxvRTRYMUNsZWEzUXZIN2YwTDcxelEzZm4rdHlUOFExR1NGUFdmMnRJcUJjeVNEcU1xcFpIZElEVmJVOXNHWnM3T1A2Q2xoS1Q2VE9uazB4M3gwZi96My9TL0lmekdKZWpIZmxXS0h1ZHFraXE5RTZFejJBUFZzc0NhekZNR1JreGVPYW4zVVlZZjdKWElCb09JMGRHT1JCVjI1RnBESzM3MmROcFZVQVZZMVZsZk4xb3lLQ0IweERKOXU4K2ZuZVg5RXZvSnIyUVdXd3RMTHlycXBzM0N5MllyTUlPd1RsV0ZXZ0FPT1R4UTNHUmpaTTNCUE5nSXk5allGNk5kMHhreTNJa3RlZGFRL2dqZlVmUHBJTm1kOHFNcXVldWZKcVdRR3NmN1l0TmxGU0ZQdEttOExuVEFRTmt2VGNUbFkwT3RuUmo2QkQ1a1dSbCttQVpMTmh6aGpIL1BjcWo3MG1GMEEvS3NpUmVPYW4ySE5KZnRRRVdEMmVGR0xTQ1g1aWVHU0V1T3Zaa3ltaDkwODlFUHhlcmVmNEExdGFuMW5WU09yWDlCN282WnJKMzNQY0M5MHJueUdwRTN1bEh2cENjWlgzK0QwTm5YdjI5NjZyRlpvZVRNM2Y4c0J4YjZhbmZKMS9uWnpINkpqNERZdGFkK0pGWmhMYlBDd21xSVNvYkVZYmdIaGV1M1RwdGQ1MXM5dFhiRDl5NU9vUjB2djIyMXZKR0RrL1JsOGZXelN2L2dod1I0YTJuanc1Y0RGVHk4WjNZRDYvRTMraFNvY2x3dXFCV0lnMmM1ZUxidGl5YlFOc29aK3NvNmZvaVUxd2hzQXErcXp0TEgzbWIyZGdWYWEzMzJtOXEyRm1zeDB0TFZDc21JcUs3cVRoUmhiR2RIQkEwbTJXRUFmTUFzT2NCZE94MkMrRjR1WEZ4WXNZNDdhaWxuK09MQ2p1K01mREJ6MjJwamUxOSs1MkRaM1JiWTJ6YmV3eXRlTitPb2JYWFZveTgrRCtlQWVvUTdiSFZPOG5XM0tlT3E5dUU0ajNEeDk1L3dlNm90QkVBQUI0bkdOZ1pHQmdBT0pEVHJZTjhmdzJYeG00bVY4QVJSZ3VkWi8wZ3REenBmNy8vWi9KL0lJNUNNamxZR0FDaVFJQWJDb05qUUFBQUhpY1kyQmtZR0FPK3AvRkVNWDhnb0hoLzNjZ0NSUkJBZW9Ba01ZR0RnQUFlSnhqZnNIQXdJeU83MklSQStFSlFMd0FpQTJoT0JLS0YwQXc0eGtJWmw0RnBDZEFNRmdmVkIxVEJBUXpGMEF4U0F3a1B3WEpuRFVJK3dDUFpSbXlBQUFBQUFBQUZnQkNBSW9BdmdEdUFSSUJMZ0dBQWFZQnZnSHVBZzRDT0FKaUFzb0RJZ09jQkJZRUtBUTRCSVlFbGdTbUJRd0ZQZ1YrQmFnRjBnWUNCallHZ2dhY0J0b0hKZ2RpQjQ0SHJBZnVBQUVBQUFBbkFGQUFDUUFBQUFBQUFnQUFBQkFBY3dBQUFDZ0xjQUFBQUFCNG5IV1F5MHJEUUJpRlQzcFIycUtnZ3V0L3BTMkY5QUpGY0NIRlFyc1NvWXZ1a3paTlV0Sk1tWmtLZGVjRCtJcStoZ3MzbnFTRGlHRENKTjg1LzIxbUFGemlBeDZPejRqcnlCNHFWRWV1NEJSM2pxdFVENDVyNUxIak9scDRkSHhDLzhseEUxMDhPMjdoQ3EvczROVWFWQnU4Ty9iWTZkTnhCZWY0Y2x4RnpXczRycEhQSE5keDdWMDRQcUYvNjdpSmhkZDEzTUtOOXpaUnU0Tk80OFJLZTlLUllYOHdrdkFnaWxhYUI1a0VlNXNvYldRc2E1WGJLTXVVdjFSYkU4NmplSjhGMm9RbVhFVGFwQ3FYZ2Q4MzRTektJeDNZYUZWME1TL3gwTnExckxYYXl0VFZ5MDZyVGJTMGZtTHQ3cjdYKzkwWEV5anNjSUJHaWhnSkxBUnR1aDMraCtoandBc1hoTXdRWmg2elV1UUlrTkVKc0dkRlVrWU05WmhyVFpYVGpaaVJrWDBzK2QweUhtSk9OMlpOeGtwZE9zVmEwQzFVV2xZS1ovcWNYRVJtak9SbE5DZzdybjcyWXZEQ1RrTzZsaE9McWJxY0lwaittUzg4WHhIYjBGblM5OHRUV3JyMzZQSDlaNy9meG5kdmR3QjRuRzFPMlhMQ01CQ0xRaHBDQ0xUMHZ1K1dKMytVNnppSmk3RTk5cWFVdnkrR0tYMnBIclRTenF5MFNacnNVQ2IvWTU0a1NERkFoZ1BrR0tMQUNDWEdxRERCRkljNHdnekhPTUVwem5DT0MxemlDdGU0d1MzdWNJOEhQT0lKejNqQks5N3dqbm5lS0UzU0Y5UXh6WDByVStxR1VhdEF1Wk5HS0owTGJvVFVtZE45R0FqYlRyaFdyV0dmZlNEVnJGTzd5TFFWaTBKK2k0NmJWbWExWFptMGQxVW50V05DZWFGbFhTblQyTDBKMWhNemZDbFo3NlovSmg0V2tWaXRmTjY3T0liQ0xoMFBZZVJWMjFIY0ZGbzJXN0VwRXFIYVpUSzVkTFFlMTVaK1MzS3lUSnE2Mkl4QTNGUFY4RUNzc1g3RmZUM1ptZzh1RnRHbFlsVnErU1gxOW9NUko1S0dsRFd6dmRxSEJzbTk2QVpDckxLWVdrYmFkU2ZKRDJZSWVReDRuR1B3M3NGd0lpaGlJeU5qWCtRR3hwMGNEQndNeVFVYkdWaWROakl3YUVGb0RoUjZKd01EQXljeWk1bkJaYU1LWTBkZ3hBYUhqb2lOekNrdUc5VkF2RjBjRFF5TUxBNGR5U0VSSUNXUlFMQ1JnVWRyQitQLzFnMHN2UnVaR0Z3QUI5TWl1QUFBQUE9PScpIGZvcm1hdCgnd29mZicpLFxuICAgICAgIHVybCgnZGF0YTphcHBsaWNhdGlvbi9vY3RldC1zdHJlYW07YmFzZTY0LEFBRUFBQUFPQUlBQUF3QmdUMU12TWo0cFNSSUFBQURzQUFBQVZtTnRZWERRTmhtM0FBQUJSQUFBQVVwamRuUWdBQUFBQUFBQUdDQUFBQUFLWm5CbmJZaVFrRmtBQUJnc0FBQUxjR2RoYzNBQUFBQVFBQUFZR0FBQUFBaG5iSGxtempqNDdRQUFBcEFBQUEvY2FHVmhaQWdickFRQUFCSnNBQUFBTm1ob1pXRUhsd054QUFBU3BBQUFBQ1JvYlhSNGcwY0FBQUFBRXNnQUFBQ2NiRzlqWVVtVVRaWUFBQk5rQUFBQVVHMWhlSEFBekF2U0FBQVR0QUFBQUNCdVlXMWwvOFNNYmdBQUU5UUFBQUtGY0c5emRBRVl0cGNBQUJaY0FBQUJ1bkJ5WlhEZGF3T0ZBQUFqbkFBQUFIc0FBUU5lQVpBQUJRQUlBbm9DdkFBQUFJd0NlZ0s4QUFBQjRBQXhBUUlBQUFJQUJRTUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBVUdaRlpBQkE2QURvSlFOUy8yb0FXZ05TQUpjQUFBQUJBQUFBQUFBQUFBQUFBd0FBQUFNQUFBQWNBQUVBQUFBQUFFUUFBd0FCQUFBQUhBQUVBQ2dBQUFBR0FBUUFBUUFDQUFEb0pmLy9BQUFBQU9nQS8vOEFBQmdCQUFFQUFBQUFBQUFBQUFFR0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUEvMm9ENkFOU0FBVUFCck1FQUFFdEt4RWhBUkVGRVFQby9xYit6QU5TL3FiK2J2d0NqZ0FBQUFBRUFBRC9hZ1BvQTFJQUF3QUhBQXNBRHdBTlFBb05EQWtJQlFRQkFBUXRLeFVSSVJFQkVTRVJFeEVoRVFFUklSRUJ0djVLQWJaOUFiWCtTd0cxbGdHMi9rb0NNd0cxL2t2OXpRRzIva29DTXdHMS9rc0FBQUFBQ1FBQS8yb0Q2QU5TQUFNQUJ3QUxBQThBRXdBWEFCc0FId0FqQUJkQUZDRWdIUndaR0JVVUVSQU5EQWtJQlFRQkFBa3RLeFUxTXhVRE5UTVZBelV6RlJNMU14VUROVE1WQXpVekZSTTFNeFVETlRNVkF6VXpGZnI2K3ZyNmZmcjYrdnI2ZmZyNit2cjZsdnI2QVhmNitnRjMrdnI5RXZyNkFYZjYrZ0YzK3ZyOUV2cjZBWGY2K2dGMyt2b0FBQUFBQmdBQS8yb0Q2QU5TQUFNQUJ3QUxBQThBRXdBWEFCRkFEaFVVRVJBTkRBa0lCUVFCQUFZdEt4VTFNeFVETlRNVkF6VXpGUk0xSVJVQk5TRVZBVFVoRmZyNit2cjZqUUpoL1o4Q1lmMmZBbUdXK3ZvQmQvcjZBWGY2K3YwUyt2b0JkL3I2QVhmNitnQURBQUQvY1FQZUEwd0FBZ0FHQUJNQUNyY1FDZ1lFQVFBRExTc1ZFd0VEQ1FNK0FoOEJGZzRDTHdFbVJBRVN6UUdtQVFQK1d3RVBBanBRR29NWkFqcFFHb01iandGWC91OEJRZ0dtL3Z6K1dnTHlKendDRzRJYVVEb0NHWU1iQUFBQkFBRC9hZ1BvQTFJQUN3QUdzd2tEQVMwck5Ra0JOd2tCRndrQkJ3a0JBUmYrNmQwQkZ3RVgzZjdwQVJmZC91bis2VWNCRndFWDNmN3BBUmZkL3VuKzZkMEJGLzdwQUFBQkFBRC9hZ1BvQTFJQUN3QUdzd2tEQVMwck5SRWhFU0VSSVJFaEVTRVJBV2NCR2dGbi9wbis1dEVCR2dGbi9wbis1djZaQVdjQUFBSUFBUDlxQStnRFVnQW5BREFBQ0xVdUtoNEtBaTByRVRVM05qY25OeGMyUHdFekZ4WVhOeGNIRmg4QkZRY0dCeGNISndZUEFTTW5KaWNISnpjbUp6Y1VGakkyTkNZT0FaWU9HR0J0ZFNrdkVKd1FMU3QxYldBWURwYVdEaGhnYlhVckxSQ2NFQzhwZFcxZ0dBN05WSHBVVkhwVUFSQ2NFQzByZFcxZkZ3NldsZzRYWDIxMUt5MFFuQkF2S1hWdFlCZ09scFlPR0dCdGRTa3ZYanhVVkhoV0FsSUFCQUFBLzZjRDZBTVdBQU1BQndBTEFBOEFEVUFLRFF3SkNBVUVBUUFFTFNzVk5TRVZKVFVoRlNVMUlSVWxOU0VWQStqOEdBUG8vQmdENlB3WUEraFpuSnp3bkp6eW5KenduWjBBQUFFQUFQKzhBK2dEQUFBR0FBYXpCUU1CTFNzUk54Y0JGd0Vub3FZQi9LVDlZS0lCQktLa0FmNmsvV0NrQUFBQUFBSUFBUDlxQTVBRFVnQVBBQmdBQ0xVV0VBY0FBaTByRlJFekpqYytBVGN5RmhjV0hRRXpFUUVoTlM0Qkp5WUdCNHNDR3llYVhGNmNKUnFXL2JJQkFBSklOelJHQlpZQ1FxWkJXR1lCYkZNN1AyMzl2Z0pDY0RSSUFnSklPZ0FBQUFJQUFBQUFBNDhDclFBR0FBMEFDTFVNQ2dRQ0FpMHJKU0VWSnpjVklTVTFJVFVYQnpVRGovMWkzOThDbnZ5REFwN2YzMzl2cUtkdzMzQnZwcWh2QUFBQkFBRC9hUU14QXhJQUZRQUdzeE1JQVMwckVUUTJNaDhCRVRRMk1oWVZFVGMyTWhZVUJ3a0JKaVEwRVBRa01pVHpFaklrRXY1Ni9ua1NBUnNaSkJMekFvSVpKQ1FaL1g3ekVpUXlFLzU2QVlZVUFBQUJBQUQvYXdNeEF4UUFGUUFHc3cwREFTMHJFVFEzQ1FFV0ZBWWlMd0VSRkFZaUpqY1JCd1lpSmhJQmh3R0dFaVF5RXZNa015UUI5Qkl5SkFGaUdoSUJodjU2RWpRakV2UDlmaGtrSkJrQ2d2TVNJd0FELy8zL3NRTmZBd3NBRHdBM0FFUUFDcmRCT3lzVEN3TURMU3NsTlRRbUt3RWlCaDBCRkJZN0FUSTJFelF1QVNNaUJ3WWZBUll6TWpjK0FUSVdGUlFHQnc0QkZ4VVVGanNCTWpZME5qOEJQZ01YRkE0QklpNENQZ0V5SGdFQjlBb0lhd2dLQ2dockNBcVBQbHd4aUVjSkRVb0VCZ2tGSGlVNEtoWWJJendCQ2dockNBb1lFaHdLSGhRTTEzTEc2TWh1Qm5xODlMcCtVbXNJQ2dvSWF3Z0tDZ0YvTVZRdWR3NEtOd1FISmhzZUVoVWFEQkJBSmhRSUNnb1NJZ3NRQmhvY0tGSjF4SFIweE9yRWRIVEVBQUFBQS8vOS83RURYd01MQUI0QUxnQTdBQXEzT0RJcUlob0lBeTBySlRVMEppc0JFVFFtS3dFaUJoMEJGQlk3QVJVaklnWWRBUlFXT3dFeU5nTTFOQ1lyQVNJR0hRRVVGanNCTWpZRkZBNEJJaTRDUGdFeUhnRUNPd29ITmdvSXNnZ0tDZ2cxTlFnS0NnajZCd3BIQ2dockNBb0tDR3NJQ2dGbGNzYm95RzRHZXJ6MHVuNVNXUWdLQVI0SUNnb0lXUWdLc3dvSVdRZ0tDZ0g4V1FnS0NnaFpDQW9LNEhYRWRIVEU2c1IwZE1RQUFBQUVBQUQvYWdPZkExSUFDZ0FpQUQ0QVRnQU5RQXBNUURJa0dROEZBQVF0S3dFekx3RW1OU01QQVFZSEFSUVBBUVlpTHdFbU5qc0JFVFEyT3dFeUZoVVJNeklXQlJVaE5STTJQd0UxSXdZckFSVWpOU0VWQXdZUEFSVTNOanNCTlJNVkl6VXpKeU1ITXhVak5UTVRNeE1DbVdJb0JnSUNBZ0VCQlA3YUJySUZEZ2V5Q0FnTmF3b0lhd2dLYXdnS0FkTCt1czRIQlFZSUJncUNRd0U5emdRSUJnZ0ZDNHQxb1NvYWlCb3FvQ2VBV29FQ2Jub2FDUUlMQ2dvRy9VWUdCN0lGQmJNSkZRTUFDQW9LQ1AwQUNrcUNNZ0VuQ2dZRkFRSkFnREwrMkFRS0J3RUJBa0lCOVR3OFVGQThQQUZ4L284QUFBQUFCQUFBLzJvRG53TlNBQW9BSWdBeUFFOEFEVUFLUkRRd0pCa1BCUUFFTFNzbE15OEJKalVqRHdFR0J3VVVEd0VHSWk4QkpqWTdBUkUwTmpzQk1oWVZFVE15RmdVVkl6VXpKeU1ITXhVak5UTVRNeE1ERlNFMUV6WS9BVFVIQmljR0t3RVZJelVoRlFNUEFSVTNOanNCTlFLWllpZ0dBZ0lDQVFFRS90b0dzZ1VPQjdJSUNBMXJDZ2hyQ0FwckNBb0NCS0VxR29nYUtxQW5nRnFCQy82NnpnY0ZCZ1FEQVFZS2drTUJQYzRNQmdnRkM0c3plaG9KQWdzS0NRZC9CZ2V5QlFXekNSVURBQWdLQ2dqOUFBcVJPenRRVURzN0FYTCtqZ0tDZ2pNQkp3b0ZCUUlCQVFFQ1FJQXkvdGtQQmdFQkFVSUFBQUVBQUFBQUFjd0NKZ0FDQUFhekFRQUJMU3NCQ3dFQnpPYm1BaWIrY0FHUUFBQUFBQUVBQUFBQUFjd0NKZ0FDQUFhekFRQUJMU3MxR3dIbTVwWUJrUDV3QUFBQUJQLy8vNGNEcXdNM0FBZ0FFUUFnQUNNQURVQUtJeUVaRXhFT0JBQUVMU3NCSWdZUUZpQTJFQ1luTWdBU0FBUUFFZ0FGTmhZSEF3WUhCU01pSmpjVE5qY0ROeWNCMVpmVzFnRXUxdGFYd2dFU0F2N3Evb0QrNmdJQkVnR0NEaFlEV2dRTy9zb0dEQklFV2dRTksvdTBBc3ZXL3RMVzFnRXUxbWorN3Y1Ni92QUVBUmdCZmdFYStBUVdEdjdLRGdSYUZBMEJOZzREL3RoSHRBQUFBUUFBQUFBQmtBSkVBQUlBQnJNQ0FBRXRLeEVOQVFHUS9uQUNST2JtQUFBQkFBQUFBQUdRQWtRQUFnQUdzd0VBQVMwckFSRWxBWkQrY0FKRS9qVG1BQVVBQVA5cUErZ0RVZ0FmQUNJQUpRQXpBRHdBRDBBTU5UUXZLQ1FqSVNBWEJ3VXRLd0V5RmhjUkZBWUhJU0ltSnpVaElpWW5FVFEyUHdFK0FUc0JNaFlYRlRZekR3RXpBUWN6RnpjMUl4VVVCaWNqRVNFMU5EWUJFU01WRkFZbkl4RURzaGNlQVNBVy9la1hIZ0grMFJjZUFSWVE1QTgyRnVnWEhnRW1JVWVucC82YnA2ZHRzTlllRitrQkhoWUNKdGNlRitnQ2ZDQVcvVm9YSGdFZ0ZxQWdGZ0YzRmpZUDVCQVdJQmEzRjNlbkFYMm53ckRwNlJZZ0FmNmJqeFkyL2s0Q2crZ1dJQUgrbWdBQUFBTC8vZit4QTE4REN3QU1BQmtBQ0xVV0VBWUFBaTByQVNJT0FoNEJNajRCTGdJQkZBNEJJaTRDUGdFeUhnRUJyVk9NVUFKVWlLcUdWZ1JPamdGYmNzYm95RzRHZXJ6MHVuNENqbEtNcEl4U1VveWtqRkwrMEhYRWRIVEU2c1IwZE1RQUFBQUQvLzMvc1FOZkF3c0FDQUFWQUNJQUNyY2ZHUThKQmdJRExTc0JGQVlpTGdFMk1oWW5JZzRDSGdFeVBnRXVBZ0VVRGdFaUxnSStBVEllQVFJN1VuaFNBbFowVnBCVGpGQUNWSWlxaGxZRVRvNEJXM0xHNk1odUJucTg5THArQVY0N1ZGUjJWRlQxVW95a2pGSlNqS1NNVXY3UWRjUjBkTVRxeEhSMHhBQUFBQUlBQUFBQUFsZ0NnZ0FMQUJRQUNMVVFEQW9GQWkwckFSWVVCd1VHSmpVUk5EWVhKVElWRVJRaU5SRTBBWndPRHY2V0Zod2NGZ0hjU3BZQmRnb2FDdVFPRWhvQnVob1NEaWc2L2k0Nk9nSFNPZ0FBQUFJQUFBQUFBbGdDZ2dBTUFCUUFDTFVTRGdrRUFpMHJFelEzSlRZV0ZSRVVCaWNsSmljME1oVVJGQ0kxcmc0QmJCUWNIQlQrbEE2dWxwWUJYZzRLNUE0U0d2NUdHaElPNUFyMk9qcitMam82QUFBQUFBSUFBQUFBQTNBQ2ZBQUxBQmNBQ0xVV0VRb0ZBaTByQVJZVUJ3VUdKalVSTkRZWEJ4WVVCd1VHSmpVUk5EWVhBMklPRHY2TUZoNGVGbElPRHY2WUZDQWdGQUYyQ2h3SStBNFFIQUhpSEJBTytBb2NDUGdPRUJ3QjRod1FEZ0FBQUFJQUFBQUFBM0FDZkFBTUFCa0FDTFVXRVFrRUFpMHJFVFEzSlRZV0ZSRVVCaWNsSmlVME55VTJGaFVSRkFZbkpTWU9BWFlVSUNBVS9vb09BY1lPQVdnVUlDQVUvcGdPQVY0T0N2Z09FQnorSGh3UUR2Z0lEZzRLK0E0UUhQNGVIQkFPK0FnQUFBQUFBZi8rLzdFRFdRTUxBREFBQnJNcElRRXRLd0VWRkFZckFTSW1Qd0VtSXlJT0FoNERNekkyTno0Qkh3RWVBUWNPQVFjaUxnSStBek15RmhjM05oWURXUlFRK2hjVEVVMVNjRHBxVERBRUtGUmlQa0oyS1FRUkJrd0ZBZ1k4cmw5WG9IQklCRUI0bUZ0U21EMUlFQzBDdy9vT0ZpMFFUVTB1VEdwMGFrd3VPalVHQVFWTkJBNEdTbEFCUkhTZXJwNTBSRDQ1U0JJVEFBQUJBQUFBQUFMb0Fvb0FDd0FHc3dvRUFTMHJOeUltTlJFekVTRTFGd2MxWkNvNmpBRnM4UERJUENnQlh2N0tsdHpjbGdBQUEvLy8vOFVEbFFMM0FCRUFGUUFmQUFxM0d4WVRFZzRGQXkwckpSWUhEZ0VISVM0Qkp6UTNBVDRCTWhZWEJ4RXpFUU1PQVFjZUFUSTJOQ1lEaVF3QkFUTW0vU0VsTlFFTkFYQU1LRElwREkrRlFpQXFBUUVxUUNvcFRSWVhLRElCQVRNbkZ4WUNmUlVZR0JXbC90VUJLLzZQQVNraUlDa3BRU29BQUFQLy9mK3hBMWtEQ3dBTUFCd0FMZ0FLdHlvaEdSQUdBQU10S3dFeUhnRVVEZ0VpTGdJK0FSTTFOQ1lyQVNJR0J4VVVGaGN6TWpZbkV6UW5KaXNCSWdjR0ZSTVVGanNCTWpZQnJYVEdjbkxHNk1odUJucTh3UW9IYXdnS0FRd0hhd2NLQVFvR0JRaDdDQVVHQ2dvSlp3Z0tBd3QweE9yRWRIVEU2c1IwL1VocUNBb0tDR29JQ2dFTXh3RmFCd01GQlFNSC9xWUdDQWdBQXYvLy8yb0RvUU1OQUFnQUlRQUl0UmtMQmdNQ0xTc0JOQzRCQmg0QlBnRUJGQVlpTHdFR0l5SXVBajRFSGdJWEZBY1hGZ0tEbE15V0JJN1VqQUVpTERvVXYyUjdVSkpvUUFJOGJJNmtqSEE0QTBXL0ZRR0NaNUlDbHNxWUJveittaDBxRmI5RlBtcVFvbzV1T2dSQ1pwWk5lMlMvRlFBQUFRQUEvNndEckFMZ0FCY0FCck1FQUFFdEt3RXlGaEFHSXlJbk54WXpNallRSmlJR0J6TUhKek0rQVFJVXF1N3VxbzV1UmxSaWZyUzArclFDanJpNGZBTHdBdUR3L3F6d1dFbzh0QUVBdEs1OHpNeW02Z0FBQUFFQUFQOS9BK2dEUFFBSkFBYXpCZ0lCTFNzUkJSc0JEUUVUSlFVVEFYdDlkUUY3L3N0dS9zMyt5bmNCMXdJQmFQNlVDTnora3VIWEFXZ0FBQUlBQVArQUErZ0RQUUFSQUNJQUNMVWdHUW9FQWkwckVUTUZFemNYRXcwQkV4Y3ZBUThCTnhNbkh3SVBBVDhCRnljL0FTOEREd0ZlQVIxZ0hSMVlBWHYreTFJY1RPZm9UaDFhNDNHb0ZBaENzQkcrUXhLdTF4WUlRRVlJQWRjQ0FRNWFYUDd3Q056KzdsczRxS0kxV2dFT3JnaUJEaFhMZXd1SzRBNTlCQUlWeWNjVkFBRUFBQUFCQUFEQ1FqMkFYdzg4OVFBTEErZ0FBQUFBMG92SlNnQUFBQURTaTU4YS8vMy9hUVBvQTFJQUFBQUlBQUlBQUFBQUFBQUFBUUFBQTFML2FnQmFBK2dBQVAvM0ErZ0FBUUFBQUFBQUFBQUFBQUFBQUFBQUFDY0Q2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBkQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBT1FBQUFEb0FBQUF6RUFBQU14QUFBRFdRQUFBMWtBQUFPZ0FBQURvQUFBQWN3QUFBSE1BQUFEcWdBQUFaQUFBQUdRQUFBRDZBQUFBMWtBQUFOWkFBQUNXQUFBQWxnQUFBTndBQUFEY0FBQUExa0FBQUxvQUFBRGxBQUFBMWtBQUFPZ0FBQURyQUFBQStnQUFBUG9BQUFBQUFBQUFCWUFRZ0NLQUw0QTdnRVNBUzRCZ0FHbUFiNEI3Z0lPQWpnQ1lnTEtBeUlEbkFRV0JDZ0VPQVNHQkpZRXBnVU1CVDRGZmdXb0JkSUdBZ1kyQm9JR25BYmFCeVlIWWdlT0I2d0g3Z0FCQUFBQUp3QlFBQWtBQUFBQUFBSUFBQUFRQUhNQUFBQW9DM0FBQUFBQUFBQUFFZ0RlQUFFQUFBQUFBQUFBTlFBQUFBRUFBQUFBQUFFQUFnQTFBQUVBQUFBQUFBSUFCd0EzQUFFQUFBQUFBQU1BQWdBK0FBRUFBQUFBQUFRQUFnQkFBQUVBQUFBQUFBVUFDd0JDQUFFQUFBQUFBQVlBQWdCTkFBRUFBQUFBQUFvQUt3QlBBQUVBQUFBQUFBc0FFd0I2QUFNQUFRUUpBQUFBYWdDTkFBTUFBUVFKQUFFQUJBRDNBQU1BQVFRSkFBSUFEZ0Q3QUFNQUFRUUpBQU1BQkFFSkFBTUFBUVFKQUFRQUJBRU5BQU1BQVFRSkFBVUFGZ0VSQUFNQUFRUUpBQVlBQkFFbkFBTUFBUVFKQUFvQVZnRXJBQU1BQVFRSkFBc0FKZ0dCUTI5d2VYSnBaMmgwSUNoREtTQXlNREUxSUdKNUlHOXlhV2RwYm1Gc0lHRjFkR2h2Y25NZ1FDQm1iMjUwWld4c2J5NWpiMjF6WWxKbFozVnNZWEp6WW5OaVZtVnljMmx2YmlBeExqQnpZa2RsYm1WeVlYUmxaQ0JpZVNCemRtY3lkSFJtSUdaeWIyMGdSbTl1ZEdWc2JHOGdjSEp2YW1WamRDNW9kSFJ3T2k4dlptOXVkR1ZzYkc4dVkyOXRBRU1BYndCd0FIa0FjZ0JwQUdjQWFBQjBBQ0FBS0FCREFDa0FJQUF5QURBQU1RQTFBQ0FBWWdCNUFDQUFid0J5QUdrQVp3QnBBRzRBWVFCc0FDQUFZUUIxQUhRQWFBQnZBSElBY3dBZ0FFQUFJQUJtQUc4QWJnQjBBR1VBYkFCc0FHOEFMZ0JqQUc4QWJRQnpBR0lBVWdCbEFHY0FkUUJzQUdFQWNnQnpBR0lBY3dCaUFGWUFaUUJ5QUhNQWFRQnZBRzRBSUFBeEFDNEFNQUJ6QUdJQVJ3QmxBRzRBWlFCeUFHRUFkQUJsQUdRQUlBQmlBSGtBSUFCekFIWUFad0F5QUhRQWRBQm1BQ0FBWmdCeUFHOEFiUUFnQUVZQWJ3QnVBSFFBWlFCc0FHd0Fid0FnQUhBQWNnQnZBR29BWlFCakFIUUFMZ0JvQUhRQWRBQndBRG9BTHdBdkFHWUFid0J1QUhRQVpRQnNBR3dBYndBdUFHTUFid0J0QUFBQUFBSUFBQUFBQUFBQUNnQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBSndBQUFRSUJBd0VFQVFVQkJnRUhBUWdCQ1FFS0FRc0JEQUVOQVE0QkR3RVFBUkVCRWdFVEFSUUJGUUVXQVJjQkdBRVpBUm9CR3dFY0FSMEJIZ0VmQVNBQklRRWlBU01CSkFFbEFTWUJKd1ptYVd4MFpYSUlkR2d0YkdGeVoyVUNkR2dIZEdndGJHbHpkQVp3Wlc1amFXd0dZMkZ1WTJWc0JIQnNkWE1EWTI5bkRXRnNhV2R1TFdwMWMzUnBabmtDYjJzRWJHOWphd2hsZUdOb1lXNW5aUVJrYjNkdUFuVndER2hsYkhBdFkybHlZMnhsWkF4cGJtWnZMV05wY21Oc1pXUU1jMjl5ZEMxdVlXMWxMWFZ3RG5OdmNuUXRibUZ0WlMxa2IzZHVDR1J2ZDI0dFpHbHlCblZ3TFdScGNnZGpiMjF3WVhOekNYSnBaMmgwTFdScGNnaHNaV1owTFdScGNnUmtiMk56REdOcGNtTnNaUzFsYlhCMGVRdGtiM1F0WTJseVkyeGxaQVowYnkxbGJtUUlkRzh0YzNSaGNuUU1abUZ6ZEMxbWIzSjNZWEprRFdaaGMzUXRZbUZqYTNkaGNtUUNZM2NLYkdWMlpXd3RaRzkzYmdsaGRIUmxiblJwYjI0UllYUjBaVzUwYVc5dUxXTnBjbU5zWldRR2MyVmhjbU5vQTJOamR3UnpkR0Z5Q25OMFlYSXRaVzF3ZEhrQUFBQUFBQUVBQWYvL0FBOEFBQUFBQUFBQUFBQUFBQUN3QUN3Z3NBQlZXRVZaSUNCTHVBQU9VVXV3QmxOYVdMQTBHN0FvV1dCbUlJcFZXTEFDSldHNUNBQUlBR05qSTJJYklTR3dBRm13QUVNalJMSUFBUUJEWUVJdHNBRXNzQ0JnWmkyd0Fpd2daQ0N3d0ZDd0JDWmFzaWdCQ2tORlkwVlNXMWdoSXlFYmlsZ2dzRkJRV0NHd1FGa2JJTEE0VUZnaHNEaFpXU0N4QVFwRFJXTkZZV1N3S0ZCWUliRUJDa05GWTBVZ3NEQlFXQ0d3TUZrYklMREFVRmdnWmlDS2ltRWdzQXBRV0dBYklMQWdVRmdoc0FwZ0d5Q3dObEJZSWJBMllCdGdXVmxaRzdBQksxbFpJN0FBVUZobFdWa3RzQU1zSUVVZ3NBUWxZV1Fnc0FWRFVGaXdCU05Dc0FZalFoc2hJVm13QVdBdHNBUXNJeUVqSVNCa3NRVmlRaUN3QmlOQ3NRRUtRMFZqc1FFS1E3QUFZRVZqc0FNcUlTQ3dCa01naWlDS3NBRXJzVEFGSmJBRUpsRllZRkFiWVZKWldDTlpJU0N3UUZOWXNBRXJHeUd3UUZranNBQlFXR1ZaTGJBRkxMQUhReXV5QUFJQVEyQkNMYkFHTExBSEkwSWpJTEFBSTBKaHNBSmlackFCWTdBQllMQUZLaTJ3Qnl3Z0lFVWdzQXREWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUVTd0FXQXRzQWdzc2djTEFFTkZRaW9oc2dBQkFFTmdRaTJ3Q1N5d0FFTWpSTElBQVFCRFlFSXRzQW9zSUNCRklMQUJLeU93QUVPd0JDVmdJRVdLSTJFZ1pDQ3dJRkJZSWJBQUc3QXdVRml3SUJ1d1FGbFpJN0FBVUZobFdiQURKU05oUkVTd0FXQXRzQXNzSUNCRklMQUJLeU93QUVPd0JDVmdJRVdLSTJFZ1pMQWtVRml3QUJ1d1FGa2pzQUJRV0dWWnNBTWxJMkZFUkxBQllDMndEQ3dnc0FBalFySUxDZ05GV0NFYkl5RlpLaUV0c0Ewc3NRSUNSYkJrWVVRdHNBNHNzQUZnSUNDd0RFTktzQUJRV0NDd0RDTkNXYkFOUTBxd0FGSllJTEFOSTBKWkxiQVBMQ0N3RUdKbXNBRmpJTGdFQUdPS0kyR3dEa05nSUlwZ0lMQU9JMElqTGJBUUxFdFVXTEVFWkVSWkpMQU5aU040TGJBUkxFdFJXRXRUV0xFRVpFUlpHeUZaSkxBVFpTTjRMYkFTTExFQUQwTlZXTEVQRDBPd0FXRkNzQThyV2JBQVE3QUNKVUt4REFJbFFyRU5BaVZDc0FFV0l5Q3dBeVZRV0xFQkFFTmdzQVFsUW9xS0lJb2pZYkFPS2lFanNBRmhJSW9qWWJBT0tpRWJzUUVBUTJDd0FpVkNzQUlsWWJBT0tpRlpzQXhEUjdBTlEwZGdzQUppSUxBQVVGaXdRR0JaWnJBQll5Q3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nc1FBQUV5TkVzQUZEc0FBK3NnRUJBVU5nUWkyd0V5d0FzUUFDUlZSWXNBOGpRaUJGc0FzalFyQUtJN0FBWUVJZ1lMQUJZYlVRRUFFQURnQkNRb3Bnc1JJR0s3QnlLeHNpV1Myd0ZDeXhBQk1yTGJBVkxMRUJFeXN0c0JZc3NRSVRLeTJ3Rnl5eEF4TXJMYkFZTExFRUV5c3RzQmtzc1FVVEt5MndHaXl4QmhNckxiQWJMTEVIRXlzdHNCd3NzUWdUS3kyd0hTeXhDUk1yTGJBZUxBQ3dEU3V4QUFKRlZGaXdEeU5DSUVXd0N5TkNzQW9qc0FCZ1FpQmdzQUZodFJBUUFRQU9BRUpDaW1DeEVnWXJzSElyR3lKWkxiQWZMTEVBSGlzdHNDQXNzUUVlS3kyd0lTeXhBaDRyTGJBaUxMRURIaXN0c0NNc3NRUWVLeTJ3SkN5eEJSNHJMYkFsTExFR0hpc3RzQ1lzc1FjZUt5MndKeXl4Q0I0ckxiQW9MTEVKSGlzdHNDa3NJRHl3QVdBdHNDb3NJR0N3RUdBZ1F5T3dBV0JEc0FJbFliQUJZTEFwS2lFdHNDc3NzQ29yc0NvcUxiQXNMQ0FnUnlBZ3NBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZQ05oT0NNZ2lsVllJRWNnSUxBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlkyQWpZVGdiSVZrdHNDMHNBTEVBQWtWVVdMQUJGckFzS3JBQkZUQWJJbGt0c0M0c0FMQU5LN0VBQWtWVVdMQUJGckFzS3JBQkZUQWJJbGt0c0M4c0lEV3dBV0F0c0RBc0FMQUJSV080QkFCaUlMQUFVRml3UUdCWlpyQUJZN0FCSzdBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlk3QUJLN0FBRnJRQUFBQUFBRVErSXppeEx3RVZLaTJ3TVN3Z1BDQkhJTEFMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTJDd0FFTmhPQzJ3TWl3dUZ6d3RzRE1zSUR3Z1J5Q3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nc0FCRFliQUJRMk00TGJBMExMRUNBQllsSUM0Z1I3QUFJMEt3QWlWSmlvcEhJMGNqWVNCWVloc2hXYkFCSTBLeU13RUJGUlFxTGJBMUxMQUFGckFFSmJBRUpVY2pSeU5oc0FsREsyV0tMaU1nSUR5S09DMndOaXl3QUJhd0JDV3dCQ1VnTGtjalJ5TmhJTEFFSTBLd0NVTXJJTEJnVUZnZ3NFQlJXTE1DSUFNZ0c3TUNKZ01hV1VKQ0l5Q3dDRU1naWlOSEkwY2pZU05HWUxBRVE3QUNZaUN3QUZCWXNFQmdXV2F3QVdOZ0lMQUJLeUNLaW1FZ3NBSkRZR1Fqc0FORFlXUlFXTEFDUTJFYnNBTkRZRm13QXlXd0FtSWdzQUJRV0xCQVlGbG1zQUZqWVNNZ0lMQUVKaU5HWVRnYkk3QUlRMGF3QWlXd0NFTkhJMGNqWVdBZ3NBUkRzQUppSUxBQVVGaXdRR0JaWnJBQlkyQWpJTEFCS3lPd0JFTmdzQUVyc0FVbFliQUZKYkFDWWlDd0FGQllzRUJnV1dhd0FXT3dCQ1poSUxBRUpXQmtJN0FESldCa1VGZ2hHeU1oV1NNZ0lMQUVKaU5HWVRoWkxiQTNMTEFBRmlBZ0lMQUZKaUF1UnlOSEkyRWpQRGd0c0Rnc3NBQVdJTEFJSTBJZ0lDQkdJMGV3QVNzallUZ3RzRGtzc0FBV3NBTWxzQUlsUnlOSEkyR3dBRlJZTGlBOEl5RWJzQUlsc0FJbFJ5TkhJMkVnc0FVbHNBUWxSeU5ISTJHd0JpV3dCU1ZKc0FJbFlia0lBQWdBWTJNaklGaGlHeUZaWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUNNdUl5QWdQSW80SXlGWkxiQTZMTEFBRmlDd0NFTWdMa2NqUnlOaElHQ3dJR0Jtc0FKaUlMQUFVRml3UUdCWlpyQUJZeU1nSUR5S09DMndPeXdqSUM1R3NBSWxSbEpZSUR4WkxyRXJBUlFyTGJBOExDTWdMa2F3QWlWR1VGZ2dQRmt1c1NzQkZDc3RzRDBzSXlBdVJyQUNKVVpTV0NBOFdTTWdMa2F3QWlWR1VGZ2dQRmt1c1NzQkZDc3RzRDRzc0RVckl5QXVSckFDSlVaU1dDQThXUzZ4S3dFVUt5MndQeXl3Tml1S0lDQThzQVFqUW9vNEl5QXVSckFDSlVaU1dDQThXUzZ4S3dFVUs3QUVReTZ3S3lzdHNFQXNzQUFXc0FRbHNBUW1JQzVISTBjalliQUpReXNqSUR3Z0xpTTRzU3NCRkNzdHNFRXNzUWdFSlVLd0FCYXdCQ1d3QkNVZ0xrY2pSeU5oSUxBRUkwS3dDVU1ySUxCZ1VGZ2dzRUJSV0xNQ0lBTWdHN01DSmdNYVdVSkNJeUJIc0FSRHNBSmlJTEFBVUZpd1FHQlpackFCWTJBZ3NBRXJJSXFLWVNDd0FrTmdaQ093QTBOaFpGQllzQUpEWVJ1d0EwTmdXYkFESmJBQ1lpQ3dBRkJZc0VCZ1dXYXdBV05oc0FJbFJtRTRJeUE4SXpnYklTQWdSaU5Ic0FFckkyRTRJVm14S3dFVUt5MndRaXl3TlNzdXNTc0JGQ3N0c0VNc3NEWXJJU01nSUR5d0JDTkNJeml4S3dFVUs3QUVReTZ3S3lzdHNFUXNzQUFWSUVld0FDTkNzZ0FCQVJVVUV5NndNU290c0VVc3NBQVZJRWV3QUNOQ3NnQUJBUlVVRXk2d01Tb3RzRVlzc1FBQkZCT3dNaW90c0Vjc3NEUXFMYkJJTExBQUZrVWpJQzRnUm9vallUaXhLd0VVS3kyd1NTeXdDQ05Dc0VnckxiQktMTElBQUVFckxiQkxMTElBQVVFckxiQk1MTElCQUVFckxiQk5MTElCQVVFckxiQk9MTElBQUVJckxiQlBMTElBQVVJckxiQlFMTElCQUVJckxiQlJMTElCQVVJckxiQlNMTElBQUQ0ckxiQlRMTElBQVQ0ckxiQlVMTElCQUQ0ckxiQlZMTElCQVQ0ckxiQldMTElBQUVBckxiQlhMTElBQVVBckxiQllMTElCQUVBckxiQlpMTElCQVVBckxiQmFMTElBQUVNckxiQmJMTElBQVVNckxiQmNMTElCQUVNckxiQmRMTElCQVVNckxiQmVMTElBQUQ4ckxiQmZMTElBQVQ4ckxiQmdMTElCQUQ4ckxiQmhMTElCQVQ4ckxiQmlMTEEzS3k2eEt3RVVLeTJ3WXl5d055dXdPeXN0c0dRc3NEY3JzRHdyTGJCbExMQUFGckEzSzdBOUt5MndaaXl3T0NzdXNTc0JGQ3N0c0djc3NEZ3JzRHNyTGJCb0xMQTRLN0E4S3kyd2FTeXdPQ3V3UFNzdHNHb3NzRGtyTHJFckFSUXJMYkJyTExBNUs3QTdLeTJ3YkN5d09TdXdQQ3N0c0cwc3NEa3JzRDByTGJCdUxMQTZLeTZ4S3dFVUt5MndieXl3T2l1d095c3RzSEFzc0RvcnNEd3JMYkJ4TExBNks3QTlLeTJ3Y2l5ekNRUUNBMFZZSVJzaklWbENLN0FJWmJBREpGQjRzQUVWTUMwQVM3Z0F5RkpZc1FFQmpsbXdBYmtJQUFnQVkzQ3hBQVZDc1FBQUtyRUFCVUt4QUFncXNRQUZRckVBQ0NxeEFBVkN1UUFBQUFrcXNRQUZRcmtBQUFBSktyRURBRVN4SkFHSVVWaXdRSWhZc1FOa1JMRW1BWWhSV0xvSWdBQUJCRUNJWTFSWXNRTUFSRmxaV1ZteEFBd3F1QUgvaGJBRWpiRUNBRVFBJykgZm9ybWF0KCd0cnVldHlwZScpO1xufVxuLyogQ2hyb21lIGhhY2s6IFNWRyBpcyByZW5kZXJlZCBtb3JlIHNtb290aCBpbiBXaW5kb3p6ZS4gMTAwJSBtYWdpYywgdW5jb21tZW50IGlmIHlvdSBuZWVkIGl0LiAqL1xuLyogTm90ZSwgdGhhdCB3aWxsIGJyZWFrIGhpbnRpbmchIEluIG90aGVyIE9TLWVzIGZvbnQgd2lsbCBiZSBub3QgYXMgc2hhcnAgYXMgaXQgY291bGQgYmUgKi9cbi8qXG5AbWVkaWEgc2NyZWVuIGFuZCAoLXdlYmtpdC1taW4tZGV2aWNlLXBpeGVsLXJhdGlvOjApIHtcbiAgQGZvbnQtZmFjZSB7XG4gICAgZm9udC1mYW1pbHk6ICdzYic7XG4gICAgc3JjOiB1cmwoJy4uL2ZvbnQvc2Iuc3ZnPzQ5MzQwMjQ4I3NiJykgZm9ybWF0KCdzdmcnKTtcbiAgfVxufVxuKi9cbiBcbiBbY2xhc3NePVwic2ItaWNvbi1cIl06YmVmb3JlLCBbY2xhc3MqPVwiIHNiLWljb24tXCJdOmJlZm9yZSB7XG4gIGZvbnQtZmFtaWx5OiBcInNiXCI7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgc3BlYWs6IG5vbmU7XG4gXG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgdGV4dC1kZWNvcmF0aW9uOiBpbmhlcml0O1xuICB3aWR0aDogMWVtO1xuICBtYXJnaW4tcmlnaHQ6IC4yZW07XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgLyogb3BhY2l0eTogLjg7ICovXG4gXG4gIC8qIEZvciBzYWZldHkgLSByZXNldCBwYXJlbnQgc3R5bGVzLCB0aGF0IGNhbiBicmVhayBnbHlwaCBjb2RlcyovXG4gIGZvbnQtdmFyaWFudDogbm9ybWFsO1xuICB0ZXh0LXRyYW5zZm9ybTogbm9uZTtcbiAgICAgXG4gIC8qIGZpeCBidXR0b25zIGhlaWdodCwgZm9yIHR3aXR0ZXIgYm9vdHN0cmFwICovXG4gIGxpbmUtaGVpZ2h0OiAxZW07XG4gXG4gIC8qIEFuaW1hdGlvbiBjZW50ZXIgY29tcGVuc2F0aW9uIC0gbWFyZ2lucyBzaG91bGQgYmUgc3ltbWV0cmljICovXG4gIC8qIHJlbW92ZSBpZiBub3QgbmVlZGVkICovXG4gIG1hcmdpbi1sZWZ0OiAuMmVtO1xuIFxuICAvKiB5b3UgY2FuIGJlIG1vcmUgY29tZm9ydGFibGUgd2l0aCBpbmNyZWFzZWQgaWNvbnMgc2l6ZSAqL1xuICAvKiBmb250LXNpemU6IDEyMCU7ICovXG4gXG4gIC8qIFVuY29tbWVudCBmb3IgM0QgZWZmZWN0ICovXG4gIC8qIHRleHQtc2hhZG93OiAxcHggMXB4IDFweCByZ2JhKDEyNywgMTI3LCAxMjcsIDAuMyk7ICovXG59XG4uc2ItaWNvbi1maWx0ZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMCc7IH0gLyogJ+6ggCcgKi9cbi5zYi1pY29uLXRoLWxhcmdlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDEnOyB9IC8qICfuoIEnICovXG4uc2ItaWNvbi10aDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAyJzsgfSAvKiAn7qCCJyAqL1xuLnNiLWljb24tdGgtbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAzJzsgfSAvKiAn7qCDJyAqL1xuLnNiLWljb24tcGVuY2lsOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDQnOyB9IC8qICfuoIQnICovXG4uc2ItaWNvbi1jYW5jZWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNSc7IH0gLyogJ+6ghScgKi9cbi5zYi1pY29uLXBsdXM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNic7IH0gLyogJ+6ghicgKi9cbi5zYi1pY29uLWNvZzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA3JzsgfSAvKiAn7qCHJyAqL1xuLnNiLWljb24tYWxpZ24tanVzdGlmeTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA4JzsgfSAvKiAn7qCIJyAqL1xuLnNiLWljb24tb2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwOSc7IH0gLyogJ+6giScgKi9cbi5zYi1pY29uLWxvY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwYSc7IH0gLyogJ+6giicgKi9cbi5zYi1pY29uLWV4Y2hhbmdlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGInOyB9IC8qICfuoIsnICovXG4uc2ItaWNvbi1kb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGMnOyB9IC8qICfuoIwnICovXG4uc2ItaWNvbi11cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBkJzsgfSAvKiAn7qCNJyAqL1xuLnNiLWljb24taGVscC1jaXJjbGVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGUnOyB9IC8qICfuoI4nICovXG4uc2ItaWNvbi1pbmZvLWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwZic7IH0gLyogJ+6gjycgKi9cbi5zYi1pY29uLXNvcnQtbmFtZS11cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEwJzsgfSAvKiAn7qCQJyAqL1xuLnNiLWljb24tc29ydC1uYW1lLWRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMSc7IH0gLyogJ+6gkScgKi9cbi5zYi1pY29uLWRvd24tZGlyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTInOyB9IC8qICfuoJInICovXG4uc2ItaWNvbi11cC1kaXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMyc7IH0gLyogJ+6gkycgKi9cbi5zYi1pY29uLWNvbXBhc3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNCc7IH0gLyogJ+6glCcgKi9cbi5zYi1pY29uLXJpZ2h0LWRpcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE1JzsgfSAvKiAn7qCVJyAqL1xuLnNiLWljb24tbGVmdC1kaXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNic7IH0gLyogJ+6glicgKi9cbi5zYi1pY29uLWRvY3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNyc7IH0gLyogJ+6glycgKi9cbi5zYi1pY29uLWNpcmNsZS1lbXB0eTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE4JzsgfSAvKiAn7qCYJyAqL1xuLnNiLWljb24tZG90LWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxOSc7IH0gLyogJ+6gmScgKi9cbi5zYi1pY29uLXRvLWVuZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFhJzsgfSAvKiAn7qCaJyAqL1xuLnNiLWljb24tdG8tc3RhcnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYic7IH0gLyogJ+6gmycgKi9cbi5zYi1pY29uLWZhc3QtZm9yd2FyZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFjJzsgfSAvKiAn7qCcJyAqL1xuLnNiLWljb24tZmFzdC1iYWNrd2FyZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFkJzsgfSAvKiAn7qCdJyAqL1xuLnNiLWljb24tY3c6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZSc7IH0gLyogJ+6gnicgKi9cbi5zYi1pY29uLWxldmVsLWRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZic7IH0gLyogJ+6gnycgKi9cbi5zYi1pY29uLWF0dGVudGlvbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIwJzsgfSAvKiAn7qCgJyAqL1xuLnNiLWljb24tYXR0ZW50aW9uLWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMSc7IH0gLyogJ+6goScgKi9cbi5zYi1pY29uLXNlYXJjaDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIyJzsgfSAvKiAn7qCiJyAqL1xuLnNiLWljb24tY2N3OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjMnOyB9IC8qICfuoKMnICovXG4uc2ItaWNvbi1zdGFyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjQnOyB9IC8qICfuoKQnICovXG4uc2ItaWNvbi1zdGFyLWVtcHR5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjUnOyB9IC8qICfuoKUnICovXG4vKiBlbmQgb2YgaW1wb3J0IGZyb20gc2ItZW1iZWRkZWQuY3NzICovXG5cblxuLnNiICpbY2xhc3NePVwic2ItaWNvbi1cIl06YmVmb3JlLCAuc2IgKltjbGFzcyo9XCIgc2ItaWNvbi1cIl06YmVmb3JlIHtcbiAgZm9udC1mYW1pbHk6ICdzYic7XG4gIGNvbG9yOiBpbmhlcml0O1xuICAvKiBCZXR0ZXIgRm9udCBSZW5kZXJpbmcgPT09PT09PT09PT0gKi9cbiAgLXdlYmtpdC1mb250LXNtb290aGluZzogYW50aWFsaWFzZWQ7XG4gIC1tb3otb3N4LWZvbnQtc21vb3RoaW5nOiBncmF5c2NhbGU7XG59XG5cbi8vIGZpeCBmb3IgaWNvbiBmb250IHRoYXQgZGlkbid0IGhhdmUgdmVydGljYWwgc29ydCBhcnJvd3Ncbi5zYi1pY29uLWV4Y2hhbmdlOmJlZm9yZSB7XG4gIC5yb3RhdGUoOTBkZWcpO1xufVxuXG4vLyBUaGUgbG9hZGluZyBzcGlubmVyLiAgVGhpcyBpcyBhbiBhbmltYXRlZCBnaWYsIGZvdW5kIGF0IFwiaWNvbnMvbG9hZGVyLmdpZlwiXG4uc2ItaWNvbi1sb2FkaW5nIHtcbiAgd2lkdGg6IDE0OHB4O1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG59XG5cbi5zYi1pY29uLWxvYWRpbmcgPiBkaXYge1xuICB3aWR0aDogMzZweDtcbiAgaGVpZ2h0OiAxOHB4O1xuICBtYXJnaW46IDJweDtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiSGlnaGxpZ2h0Q29sb3I7XG5cbiAgYm9yZGVyLXJhZGl1czogMTAlO1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIC13ZWJraXQtYW5pbWF0aW9uOiBib3VuY2VkZWxheSAxLjRzIGluZmluaXRlIGVhc2UtaW4tb3V0O1xuICBhbmltYXRpb246IGJvdW5jZWRlbGF5IDEuNHMgaW5maW5pdGUgZWFzZS1pbi1vdXQ7XG4gIC8qIFByZXZlbnQgZmlyc3QgZnJhbWUgZnJvbSBmbGlja2VyaW5nIHdoZW4gYW5pbWF0aW9uIHN0YXJ0cyAqL1xuICAtd2Via2l0LWFuaW1hdGlvbi1maWxsLW1vZGU6IGJvdGg7XG4gIGFuaW1hdGlvbi1maWxsLW1vZGU6IGJvdGg7XG59XG5cbi5zYi1pY29uLWxvYWRpbmcgLnNiLWljb24tYm91bmNlMSB7XG4gIC13ZWJraXQtYW5pbWF0aW9uLWRlbGF5OiAtMC4zMnM7XG4gIGFuaW1hdGlvbi1kZWxheTogLTAuMzJzO1xufVxuXG4uc2ItaWNvbi1sb2FkaW5nIC5zYi1pY29uLWJvdW5jZTIge1xuICAtd2Via2l0LWFuaW1hdGlvbi1kZWxheTogLTAuMTZzO1xuICBhbmltYXRpb24tZGVsYXk6IC0wLjE2cztcbn1cblxuLy8gSGVhZGVyIGljb24gYmFja2dyb3VuZCBjb2xvcnNcbi5zYlBhZ2VUaXRsZSB7XG5cdC5zZi1pY29uLWN1c3RvbTkzIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjOTA0RDRDO1xuXHR9XG5cdC5zZi1pY29uLXByb2R1Y3Qge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICNCNzgxRDM7XG5cdH1cdFxuXHQuc2YtaWNvbi1zZXR0aW5ncyB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogI0VEQjU2Njtcblx0fVxuXHQuc2YtaWNvbi1kb3dubG9hZCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzU0Njk4RDtcblx0fVxuXHQuc2YtaWNvbi1jb250cmFjdC0xIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNkVDMDZFO1xuXHR9XG5cdC5zZi1pY29uLWFwcHJvdmFsIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjMDBDNkI3O1xuXHR9XG4gICAgLnNmLWljb24tcG9zdCB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6ICM2NUNBRTQ7XG4gICAgfVxuXHQuc2YtaWNvbi1nZG9jIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNTQ2OThEO1xuXHR9XG5cdC5zZi1pY29uLXJlY2VudCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzZDQTFFOTtcblx0fVxuXHQuc2YtaWNvbi1jb3B5IHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNkNBMEU5O1xuXHR9XG5cdC5zZi1pY29uLWZhdm9yaXRlIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjRkY3Qjg0O1xuXHR9XG5cdC5zZi1pY29uLXJlZnJlc2gge1xuXHRcdCYucmVzaXplIHtcblx0XHRcdGJhY2tncm91bmQtY29sb3I6ICM2Q0EwRTk7XG5cdFx0fVxuXHR9XG5cblx0LnNmLWljb24tcmVwbGFjZSB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzU0Njk4RDtcblx0fVxufVxuXG5ALXdlYmtpdC1rZXlmcmFtZXMgYm91bmNlZGVsYXkge1xuICAwJSwgODAlLCAxMDAlIHsgLXdlYmtpdC10cmFuc2Zvcm06IHNjYWxlKDAuMCkgfVxuICA0MCUgeyAtd2Via2l0LXRyYW5zZm9ybTogc2NhbGUoMS4wKSB9XG59XG5cbkBrZXlmcmFtZXMgYm91bmNlZGVsYXkge1xuICAwJSwgODAlLCAxMDAlIHtcbiAgICB0cmFuc2Zvcm06IHNjYWxlKDAuMCk7XG4gICAgLXdlYmtpdC10cmFuc2Zvcm06IHNjYWxlKDAuMCk7XG4gIH0gNDAlIHtcbiAgICAgIHRyYW5zZm9ybTogc2NhbGUoMS4wKTtcbiAgICAgIC13ZWJraXQtdHJhbnNmb3JtOiBzY2FsZSgxLjApO1xuICAgIH1cbn1cbiIsIi8vIEdsb2JhbCBWYXJpYWJsZXNcbi8vXG4vLyBBbGwgZ2xvYmFsIExFU1MgdmFyaWFibGVzXG4vL1xuLy8gU3R5bGVndWlkZSB2YXJpYWJsZXNcbkBpbXBvcnQgXCJ2YXJpYWJsZXMubGVzc1wiO1xuXG4vL1NGREMgRm9udHNcbkBpbXBvcnQgXCJmb250cy5sZXNzXCI7XG4vLyBNaXhpbnNcbi8vXG4vLyBBbGwgZ2xvYmFsIExFU1MgbWl4aW5zIChmdW5jdGlvbnMpXG4vL1xuLy8gU3R5bGVndWlkZSBNaXhpbnNcbkBpbXBvcnQgXCJtaXhpbnMubGVzc1wiO1xuXG4vLyBUeXBvZ3JhcGh5XG4vL1xuLy8gQWxsIHRleHQgcmVsYXRlZCBjb250ZW50IGluY2x1ZGluZyBoZWFkaW5ncywgbGlua3MsIGFuZCBwbGFpbiB0ZXh0XG4vL1xuLy8gU3R5bGVndWlkZSBUeXBvZ3JhcGh5XG5AaW1wb3J0IFwidHlwb2dyYXBoeS5sZXNzXCI7XG5cbi8vIEJ1dHRvbnMgYW5kIFRvb2xiYXJzXG4vL1xuLy8gQnV0dG9ucywgYnV0dG9uIGJhcnMsIHRvb2xiYXJzXG4vL1xuLy8gU3R5bGVndWlkZSBCdXR0b25zXG5AaW1wb3J0IFwiYnV0dG9ucy5sZXNzXCI7XG5cbi8vIERpYWxvZ3Ncbi8vXG4vLyBEaWFsb2cgd2luZG93cywgcG9wdXBzLCBhbmQgdGhlaXIgbW9kYWwgbWFza3Ncbi8vXG4vLyBTdHlsZWd1aWRlIERpYWxvZ3NcbkBpbXBvcnQgXCJkaWFsb2dzLmxlc3NcIjtcblxuLy8gTGF5b3V0XG4vL1xuLy8gTGF5b3V0IGFuZCBwYWdlIHBhdHRlcm5zXG4vL1xuLy8gU3R5bGVndWlkZSBMYXlvdXRcbkBpbXBvcnQgXCJsYXlvdXQubGVzc1wiO1xuXG4vLyBGb3Jtc1xuLy9cbi8vIEZvcm1zIGFuZCBpbnB1dCByZWxhdGVkIGNvbnRyb2xzXG4vL1xuLy8gU3R5bGVndWlkZSBGb3Jtc1xuQGltcG9ydCBcImZvcm1zLmxlc3NcIjtcbkBpbXBvcnQgXCJkYXRlUGlja2VyLmxlc3NcIjtcblxuLy8gVGFibGVzXG4vL1xuLy8gVGFidWxhciBkaXNwbGF5IG9mIGRhdGFcbi8vXG4vLyBTdHlsZWd1aWRlIFRhYmxlc1xuQGltcG9ydCBcInRhYmxlcy5sZXNzXCI7XG5cbi8vIERyb3AgRG93bnNcbi8vXG4vLyBEcm9wIGRvd25zIC8gbWVudXNcbi8vXG4vLyBTdHlsZWd1aWRlIERyb3Bkb3duc1xuQGltcG9ydCBcImRyb3Bkb3ducy5sZXNzXCI7XG5cbi8vIEljb25zXG4vL1xuLy8gVGhlIGljb25zIGFuZCBpY29uIGZvbnRzXG4vL1xuLy8gU3R5bGVndWlkZSBJY29uc1xuQGltcG9ydCBcImljb25zLmxlc3NcIjtcblxuQGltcG9ydCBcInNmZGMubGVzc1wiO1xuXG5cbi8vIE91ciB0b3AtbW9zdCBzZWxlY3RvciwgcmVzZXQgYnJvd3NlciBpbmNvbnNpc3RlbmNpZXNcbi5zYiB7XG4gIGZvbnQtc2l6ZTogMTBweDsgIC8vIGlkZWFsbHkgdGhpcyB3b3VsZCBiZSA2Mi41JSBvbiBodG1sIHNvIHdlIGNvdWxkIHVzZSByZW0gYnV0IFNGREMgbGltaXRzIHVzIGhlcmVcbiAgZm9udC1mYW1pbHk6IEBzYkZvbnQgIWltcG9ydGFudDsgIC8vIG11c3QgYmUgaW1wb3J0YW50IGFzIFNGREMgYWxzbyBzZXRzXG59XG5cbi8vIFJlc2V0IGJyb3dzZXIgaW5jb25zaXN0ZW5jaWVzXG4uc2IgKiB7XG4gIGJveC1zaXppbmc6IGJvcmRlci1ib3g7XG59XG5cbi8vIEhpZGluZyAtIGEgY29tbW9uIHN0YXRlIG1vZGlmaWVyIGNsYXNzIHRoYXQgY2FuIGJlIGFwcGxpZWQgYW55d2hlcmVcbi5zYiAqLmhpZGRlbiB7XG4gIGRpc3BsYXk6IG5vbmU7XG59XG5cbi8vIENsZWFyIGZsb2F0aW5nIGNoaWxkcmVuLCB0eXBpY2FsbHkgYnkgcHV0dGluZyB0aGlzIG9uIHBhcmVudFNlbGVjdG9yOmFmdGVyLlxuLnNiQ2xlYXIge1xuICBjb250ZW50OiBcIlwiO1xuICBkaXNwbGF5OiB0YWJsZTtcbiAgY2xlYXI6IGJvdGg7XG59XG5cbi5zYkxpbmsge1xuICBjb2xvcjogQHNiTGlua0NvbG9yO1xufSIsIi8vIFRoZSBwYWdlIGJhY2tncm91bmQgY29sb3JcbkBzYlBhZ2VCZ0NvbG9yOiAjZmZmO1xuXG4vLyBUaGUgZGVmYXVsdC9zdGFuZGFyZCBmb250IGNvbG9yXG5Ac2JGb250Q29sb3I6ICMxNjMyNUM7XG5cbi8vIFRoZSBjb2xvciBvZiBjb250ZW50IHNlY3Rpb25zIHN1Y2ggYXMgcGFnZSB0aXRsZSwgZGV0YWlscywgZXRjXG5Ac2JDb250ZW50QmdDb2xvcjogI0Y0RjZGOTtcblxuLy8gVGhlIGZvbnQgY29sb3Igb2YgY29udGVudCBzZWN0aW9ucyBzdWNoIGFzIHBhZ2UgdGl0bGUsIGRldGFpbHMsIGV0Y1xuQHNiQ29udGVudEZvbnRDb2xvcjogIzU0Njk4RDtcblxuLy8gVGhlIHN0YW5kYXJkIGZvbnQgZmFtaWx5XG5Ac2JGb250OiAnU2FsZXNmb3JjZSBTYW5zJywgJ09wZW4gU2FucycsIEFyaWFsLCBzYW5zLXNlcmlmO1xuXG4vLyBCYXNlIGZvbnQgc2l6ZSB0byBiZSB1c2VkIGZvciBhbGwgb3RoZXIgZm9udCBzaXplIGNhbGN1bGF0aW9uc1xuQHNiRm9udFNpemU6IDEwcHg7ICAvLyB0aGlzIHNob3VsZCBiZSBlcXVpdmFsZW50IHRvIDEwcHhcblxuLy8gQmFzZSBmb250IHNpemUgZm9yIHJlZ3VsYXIgY29udGVudFxuQHNiQ29udGVudEZvbnRTaXplOiBAc2JGb250U2l6ZSAqIDEuMjsgIC8vIHRoaXMgc2hvdWxkIGJlIGVxdWl2YWxlbnQgdG8gMTJweFxuXG4vLyBEZWZhdWx0IGJvcmRlciBjb2xvciBmb3IgYSB2YXJpZXR5IG9mIGVsZW1lbnRzXG5Ac2JCb3JkZXJDb2xvcjogI0Q4RERFNjtcblxuLy8gLy8gRGVmYXVsdCBib3JkZXIgY29sb3IgZm9yIHRhYmxlIHJvd3Ncbi8vIEBzYlRhYmxlQm9yZGVyQ29sb3I6ICNGNEY2Rjk7XG5cbi8vIEJvcmRlciBvZiBjb250ZW50IHNlY3Rpb25zXG5Ac2JDb250ZW50Qm9yZGVyOiAxcHggc29saWQgI2QwZDBkMDtcblxuLy8gSWNvbiBjb2xvciBmb3Igc2Vjb25kYXJ5IGljb25zIChwcmltYXJ5IHNob3VsZCBiZSBzYW1lIGFzIEBzYkZvbnRDb2xvcilcbkBzYkljb25Db2xvcjogIzg4ODtcblxuLy8gQ29sb3IgZm9yIGhpZ2hsaWdodHMgKHNwbGFzaCBvZiBjb2xvcilcbkBzYkhpZ2hsaWdodENvbG9yOiAjQTcxQjIxO1xuXG4vLyBGb250IGNvbG9ycyBvZiBoeXBlcmxpbmtzXG5Ac2JMaW5rQ29sb3I6ICMwMDcwRDI7XG5Ac2JMaW5rQ29sb3JBY3RpdmU6IHJnYigwLCA1NywgMTA3KTtcbkBzYkxpbmtDb2xvckRpc2FibGVkOiByZ2IoMjIsIDUwLCA5Mik7XG5Ac2JMaW5rQ29sb3JIb3ZlcjogcmdiKDAsIDk1LCAxNzgpO1xuXG4vLyBQYWdlIEhlYWRlciBsZWZ0IChhbmQgdXN1YWxseSByaWdodCkgbWFyZ2luXG5Ac2JQYWdlSGVhZGVyTGVmdDogMTVweDtcblxuLy8gUGFnZSBIZWFkZXIgdG9wIChhbmQgdXN1YWxseSBib3R0b20pIG1hcmdpblxuQHNiUGFnZUhlYWRlclRvcDogMTVweDtcblxuLy8gTWFzayBjb2xvclxuQHNiTWFza0NvbG9yOiAjQThCN0M3O1xuXG4vLyBQYWdlIEhlYWRlclxuQHNiSGVhZGVyQmdDb2xvcjogI2Y0ZjZmOTtcbkBzYkhlYWRlclNlY29uZGFyeUJnQ29sb3I6ICNmNGY2Zjk7XG5Ac2JIZWFkZXJCb3JkZXJDb2xvcjogI2QwZDBkMDtcbkBzYkhlYWRlckZvbnRDb2xvcjogIzE2MzI1YztcbkBzYkhlYWRlclN1cHBvcnRGb250Q29sb3I6ICM1NDY5OGQ7XG5cbkBzYkJnQ29sb3I6ICNmZmZmZmY7XG5Ac2JEZXRhaWxCZ0NvbG9yOiNmNGY2Zjk7XG5Ac2JTZWNvbmRhcnlGb250Q29sb3I6ICM2OTY5Njk7XG5cbi8vIFRhYmxlc1xuQHNiVGFibGVIZWFkZXJGb250Q29sb3I6ICM1NDY5OGQ7XG5Ac2JUYWJsZVJvd0hvdmVyQ29sb3I6ICNmNGY2Zjk7XG5cbi8vIEJ1dHRvbnNcbkBzYkdyb3VwQnRuQmdDb2xvcjogI2ZmZmZmZjtcbkBzYkdyb3VwQnRuQm9yZGVyQ29sb3I6ICNkOGRkZTY7XG5Ac2JHcm91cEJ0bkZvbnRDb2xvcjogIzAwNzBkMjtcbkBzYkdyb3VwQnRuSG92ZXJCZ0NvbG9yOiAjZjRmNmY5O1xuQHNiR3JvdXBCdG5Ib3ZlckZvbnRDb2xvcjogIzAwNzBkMjtcbkBzYkdyb3VwQnRuRGlzYWJsZWRGb250Q29sb3I6ICNiZWJlYmU7XG5Ac2JQcmltYXJ5QnRuQmdDb2xvcjogIzAwNzBkMjtcbkBzYlByaW1hcnlCdG5Gb250Q29sb3I6ICNmZmZmZmY7XG5Ac2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9yOiAjMDA1ZmIyO1xuXG4vLyBJY29uc1xuQHNiQWNjZW50SWNvbkNvbG9yOiAjMDA3MGQyO1xuQHNiQWNjZW50SWNvbkhvdmVyQ29sb3I6ICMxNjMyNWM7XG5Ac2JBY2NlbnRJY29uRGlzYWJsZWRDb2xvcjogIzg4ODg4ODtcblxuLy8gVGFic1xuQHNiVGFiU2VsZWN0ZWRDb2xvcjogIzE2NmJiZjtcblxuLy8gQnJlYWtwb2ludHMgZm9yIE1lZGlhIFF1ZXJpZXNcbkBzYkJwU21hbGw6IDA7XG5Ac2JCcE1lZGl1bTogNzY3cHg7XG5Ac2JCcExhcmdlOiAxMDI0cHg7XG5Ac2JCcFhMYXJnZTogMTIwMHB4O1xuXG4vLyBFcnJvciBNZXNzYWdlIEZvbnQgY29sb3JcbkBzYkVycm9yTWVzc2FnZUZvbnRDb2xvcjogI2MwMDtcbiIsIi8vIEFwcGxpY2F0aW9uIFNldHRpbmdzIHBhZ2Vcbi8vXG4vLyBtYW55IG9mIHRoZSBzdHlsZXMgaGVyZSBqdXN0IG92ZXJyaWRlIHRoZSBTRiBzdHlsZXMgYXMgdGhpcyBwYWdlIGlzIGhlYXZ5IFZGIG1hcmt1cFxuI3NiQ3BxU2V0dGluZ3Mge1xuXG4gIHBhZGRpbmc6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXG4gIC5iUGFnZUJsb2NrIHtcbiAgICBib3JkZXI6IDAgIWltcG9ydGFudDtcbiAgICBiYWNrZ3JvdW5kOiBub25lICFpbXBvcnRhbnQ7XG4gIH1cblxuICAuc2JUYWJzIHtcbiAgICBmb250LWZhbWlseTogaW5oZXJpdDtcblxuICAgID4gdGJvZHkgPiB0cjpudGgtY2hpbGQoMSkgPiAucmljaC10YWItYm90dG9tLWxpbmUge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuXG4gICAgICAucmljaC10YWJoZHItY2VsbC1hY3RpdmUge1xuICAgICAgICBib3JkZXItYm90dG9tOiA0cHggc29saWQgQHNiVGFiU2VsZWN0ZWRDb2xvcjtcbiAgICAgIH1cblxuICAgICAgLnJpY2gtdGFiaGRyLXNpZGUtYm9yZGVyIHtcbiAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgIH1cblxuICAgICAgLnJpY2gtdGFiaGRyLXNpZGUtY2VsbCB7XG4gICAgICAgIGJvcmRlcjogMDtcbiAgICAgIH1cblxuICAgICAgLnJpY2gtdGFiLWFjdGl2ZSwgLnJpY2gtdGFiLWluYWN0aXZlIHtcbiAgICAgICAgYmFja2dyb3VuZDogbm9uZSAhaW1wb3J0YW50O1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZSAhaW1wb3J0YW50O1xuICAgICAgICBwYWRkaW5nOiAwIDE2cHggNnB4IDE2cHg7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnJpY2gtdGFiLWhlYWRlciwgLnJpY2gtdGFicGFuZWwtY29udGVudCB7XG4gICAgICBmb250LWZhbWlseTogaW5oZXJpdCAhaW1wb3J0YW50O1xuICAgICAgZm9udC1zaXplOiBpbmhlcml0ICFpbXBvcnRhbnQ7XG4gICAgfVxuXG4gICAgLnJpY2gtdGFicGFuZWwtY29udGVudCB7XG4gICAgICBiYWNrZ3JvdW5kOiBub25lICFpbXBvcnRhbnQ7XG4gICAgICBib3JkZXI6IDAgIWltcG9ydGFudDtcbiAgICB9XG5cbiAgICAubGFiZWxDb2wsIC5kYXRhQ29sIHtcbiAgICAgIHBhZGRpbmctdG9wOiA4cHg7XG4gICAgICBwYWRkaW5nLWJvdHRvbTogOHB4O1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICB9XG5cbiAgICAubGFiZWxDb2wsIC5kYXRhMkNvbCB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gICAgfVxuXG4gICAgaW5wdXQ6bm90KFt0eXBlPXN1Ym1pdF0pOm5vdChbdHlwZT1jaGVja2JveF0pLCBzZWxlY3Qge1xuICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICB3aWR0aDogMjIwcHggIWltcG9ydGFudDtcbiAgICB9XG5cbiAgICAuc2JCdG4ge1xuICAgICAgZm9udC1zaXplOiBpbmhlcml0O1xuICAgIH1cbiAgfVxufVxuIiwiLy9zZXRWYXJpYWJsZSBzYW1wbGUgc3dhdGNoZXMgaXQgd2lsbCByZWFkIGRlZmF1bHRzIGZyb20gb24gVGhlbWUucGFnZVxuLnRoZW1lUGFnZXtcbiAgLnNiSGVhZGVyQmdDb2xvcntjb2xvcjpAc2JIZWFkZXJCZ0NvbG9yO31cbiAgLnNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcntjb2xvcjpAc2JIZWFkZXJTZWNvbmRhcnlCZ0NvbG9yO31cbiAgLnNiSGVhZGVyQm9yZGVyQ29sb3J7Y29sb3I6QHNiSGVhZGVyQm9yZGVyQ29sb3I7fVxuICAuc2JIZWFkZXJGb250Q29sb3J7Y29sb3I6QHNiSGVhZGVyRm9udENvbG9yO31cbiAgLnNiSGVhZGVyU3VwcG9ydEZvbnRDb2xvcntjb2xvcjpAc2JIZWFkZXJTdXBwb3J0Rm9udENvbG9yO31cbiAgLnNiQmdDb2xvcntjb2xvcjpAc2JCZ0NvbG9yO31cbiAgLnNiRGV0YWlsQmdDb2xvcntjb2xvcjpAc2JEZXRhaWxCZ0NvbG9yfTtcbiAgLnNiRm9udENvbG9ye2NvbG9yOkBzYkZvbnRDb2xvcjt9XG4gIC5zYlNlY29uZGFyeUZvbnRDb2xvcntjb2xvcjpAc2JTZWNvbmRhcnlGb250Q29sb3I7fVxuICAuc2JCb3JkZXJDb2xvcntjb2xvcjpAc2JCb3JkZXJDb2xvcjt9XG4gIC5zYlRhYmxlSGVhZGVyRm9udENvbG9ye2NvbG9yOkBzYlRhYmxlSGVhZGVyRm9udENvbG9yO31cbiAgLnNiVGFibGVSb3dIb3ZlckNvbG9ye2NvbG9yOkBzYlRhYmxlUm93SG92ZXJDb2xvcjt9XG4gIC5zYkdyb3VwQnRuQmdDb2xvcntjb2xvcjpAc2JHcm91cEJ0bkJnQ29sb3I7fVxuICAuc2JHcm91cEJ0bkJvcmRlckNvbG9ye2NvbG9yOkBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7fVxuICAuc2JHcm91cEJ0bkZvbnRDb2xvcntjb2xvcjpAc2JHcm91cEJ0bkZvbnRDb2xvcjt9XG4gIC5zYkdyb3VwQnRuSG92ZXJCZ0NvbG9ye2NvbG9yOkBzYkdyb3VwQnRuSG92ZXJCZ0NvbG9yO31cbiAgLnNiR3JvdXBCdG5Ib3ZlckZvbnRDb2xvcntjb2xvcjpAc2JHcm91cEJ0bkhvdmVyRm9udENvbG9yO31cbiAgLnNiR3JvdXBCdG5EaXNhYmxlZEZvbnRDb2xvcntjb2xvcjpAc2JHcm91cEJ0bkRpc2FibGVkRm9udENvbG9yO31cbiAgLnNiUHJpbWFyeUJ0bkJnQ29sb3J7Y29sb3I6QHNiUHJpbWFyeUJ0bkJnQ29sb3I7fVxuICAuc2JQcmltYXJ5QnRuRm9udENvbG9ye2NvbG9yOkBzYlByaW1hcnlCdG5Gb250Q29sb3I7fVxuICAuc2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9ye2NvbG9yOkBzYlByaW1hcnlCdG5Ib3ZlckJnQ29sb3I7fVxuICAuc2JBY2NlbnRJY29uQ29sb3J7Y29sb3I6QHNiQWNjZW50SWNvbkNvbG9yO31cbiAgLnNiQWNjZW50SWNvbkhvdmVyQ29sb3J7Y29sb3I6QHNiQWNjZW50SWNvbkhvdmVyQ29sb3I7fVxuICAuc2JBY2NlbnRJY29uRGlzYWJsZWRDb2xvcntjb2xvcjpAc2JBY2NlbnRJY29uRGlzYWJsZWRDb2xvcjt9XG4gIC5zYkljb25Db2xvcntjb2xvcjpAc2JJY29uQ29sb3I7fVxuICAuc2JUYWJTZWxlY3RlZENvbG9ye2NvbG9yOkBzYlRhYlNlbGVjdGVkQ29sb3I7fVxufVxuLy9zdGFydCBUaGVtZS5wYWdlIHN0eWxpbmcgaGVyZVxuLnRoZW1lUGFnZXtcbiAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiQmdDb2xvcjtcbiAgLnNiVGl0bGVzIGgye1xuICAgIGNvbG9yOiBAc2JIZWFkZXJTdXBwb3J0Rm9udENvbG9yO1xuICB9XG4gIC5zYkJ0biB7XG4gICAgYmFja2dyb3VuZDogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgIGNvbG9yOiBAc2JHcm91cEJ0bkZvbnRDb2xvcjtcbiAgICBib3JkZXItY29sb3I6IEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgJjpob3ZlciB7XG4gICAgICBiYWNrZ3JvdW5kOiBAc2JHcm91cEJ0bkhvdmVyQmdDb2xvcjtcbiAgICAgIGNvbG9yOiBAc2JHcm91cEJ0bkhvdmVyRm9udENvbG9yXG4gICAgfVxuICAgICYuc2JQcmltYXJ5QWN0aW9uIHtcbiAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgICAgYm9yZGVyLWNvbG9yOiBAc2JQcmltYXJ5QnRuQmdDb2xvcjtcbiAgICAgIGNvbG9yOiBAc2JQcmltYXJ5QnRuRm9udENvbG9yO1xuICAgICAgJjpob3ZlciB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlByaW1hcnlCdG5Ib3ZlckJnQ29sb3I7XG4gICAgICB9XG4gICAgfVxuICB9XG4gIC5ub3JtYWwuc2YtaWNvbi1jb3B5OmJlZm9yZXtcbiAgICBjb2xvcjogQHNiSWNvbkNvbG9yXG4gIH1cbiAgLmFjY2VudC5zZi1pY29uLWNvcHk6YmVmb3Jle1xuICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gIH1cbiAgLmFjY2VudC5zZi1pY29uLWNvcHk6aG92ZXI6OmJlZm9yZSB7XG4gICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICB9XG4gIC5kaXNhYmxlZC5zZi1pY29uLWNvcHk6YmVmb3Jle1xuICAgY29sb3I6IEBzYkFjY2VudEljb25EaXNhYmxlZENvbG9yO1xuICB9XG5cdC5zZi1pY29uLWNvcHl7XG5cdFx0Zm9udC1zaXplOiAyNHB4O1xuXHRcdHBhZGRpbmctcmlnaHQ6NDBweDtcblx0fVxuXHQuc2JUYWJsZT50Ym9keT50cj50ZCB7XG5cdCAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcblx0fVxuXHQuZGVtb0l0ZW1zIHtcblx0ICAgIGJvcmRlcjogMXB4IHNvbGlkICMwMDAwMDA7XG5cdCAgICBwYWRkaW5nOiAwcHg7XG5cdCAgICBtYXJnaW4tbGVmdDo2MHB4O1xuXHQgICAgbWFyZ2luLXJpZ2h0OjYwcHg7XG5cdCAgICBwYWRkaW5nLXRvcDoyMHB4O1xuXHQgICAgcGFkZGluZy1ib3R0b206MjBweDtcblx0ICAgIHBhZGRpbmctbGVmdDoyMHB4O1xuXHQgICAgcGFkZGluZy1yaWdodDoyMHB4O1xuXHQgICAgbWFyZ2luLXRvcDo0MHB4O1xuXHQgICAgYm9yZGVyLWNvbG9yOiBAc2JCb3JkZXJDb2xvciAhaW1wb3J0YW50O1xuXHR9XG5cdC5ib3R0b21QYWRkaW5ne1xuXHRcdHBhZGRpbmctYm90dG9tOjQwcHg7XG5cdH1cblx0LnRoZW1lSGVhZGVye1xuXHRcdHBhZGRpbmctdG9wOjQwcHg7XG5cdFx0cGFkZGluZy1sZWZ0OjYwcHg7XG5cdFx0cGFkZGluZy1ib3R0b206MTBweDtcbiAgICBib3JkZXItYm90dG9tLXN0eWxlOiBzb2xpZCAhaW1wb3J0YW50O1xuICAgIGJvcmRlci1ib3R0b20td2lkdGg6IDFweCAhaW1wb3J0YW50O1xuICAgIGJvcmRlci1ib3R0b20tY29sb3I6IEBzYkJvcmRlckNvbG9yICFpbXBvcnRhbnQ7XG4gICAgaDN7XG4gICAgICBjb2xvcjogQHNiRm9udENvbG9yICFpbXBvcnRhbnQ7XG4gICAgfVxuXHR9XG5cdC5jb2xvclBpY2tXcmFwcGVye1xuXHRcdHdpZHRoOjMwMHB4O1xuXHRcdGRpc3BsYXk6aW5saW5lLWJsb2NrO1xuXHRcdG1hcmdpbi1sZWZ0OjU1cHg7XG5cdFx0bWFyZ2luLXJpZ2h0OjU1cHg7XG5cdFx0bWFyZ2luLXRvcDo0MHB4O1xuXHR9XG5cdC5jb2xvclBpY2tXcmFwcGVyIHNwYW57XG5cdFx0cG9zaXRpb246cmVsYXRpdmU7XG5cdFx0dG9wOjExcHg7XG5cdH1cblx0LmJhY2tncm91bmRIaWRle1xuXHRcdGRpc3BsYXk6bm9uZTtcblx0fVxuXHQuc3AtcmVwbGFjZXIuc3AtbGlnaHQuZnVsbC1zcGVjdHJ1bSB7XG5cdCAgICBmbG9hdDogcmlnaHQ7XG5cdCAgICBtYXJnaW4tcmlnaHQ6MTBweDtcblx0fVxuXHQuY29udGVudHtcblx0XHQgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG5cdH1cblx0LnNiQnV0dG9uc3tcblx0XHRtYXJnaW4tbGVmdDoxMHB4O1xuXHR9XG5cdC5zcC1yZXBsYWNlciB7XG5cdCAgYm9yZGVyLWNvbG9yOiAjZDhkZGU2ICFpbXBvcnRhbnQ7XG5cdCAgcGFkZGluZzogMCAhaW1wb3J0YW50O1xuXHRcdGJhY2tncm91bmQtY29sb3I6IGluaGVyaXQgIWltcG9ydGFudDtcblx0XHRib3JkZXItcmFkaXVzOjVweDtcblx0fVxuXHQuc3AtZGQge1xuXHQgIGxpbmUtaGVpZ2h0OjQwcHggIWltcG9ydGFudDtcblx0ICBoZWlnaHQ6NDBweCFpbXBvcnRhbnQ7XG5cdH1cblx0LnNwLXByZXZpZXd7XG5cdCAgbWFyZ2luLXJpZ2h0OjBweCAhaW1wb3J0YW50O1xuXHQgIHdpZHRoOjQwcHggIWltcG9ydGFudDtcblx0ICBoZWlnaHQ6NDBweCAhaW1wb3J0YW50O1xuXHQgIGJvcmRlci13aWR0aDowcHggIWltcG9ydGFudDtcblx0fVxuXHQuc3AtY29udGFpbmVye1xuXHQgIGJhY2tncm91bmQtY29sb3I6I2ZmZmZmZiAhaW1wb3J0YW50O1xuXHQgIGJvcmRlcjogMXB4IHNvbGlkICNkOGRkZTYgIWltcG9ydGFudDtcblx0ICBib3JkZXItcmFkaXVzOjVweCFpbXBvcnRhbnQ7XG5cdH1cbn1cbiIsIiNzYlRyYW5zbGF0ZSB7XG5cbiAgLnNiRGVzY3JpcHRpb24ge1xuICAgIHdpZHRoOiA5MCU7XG4gIH1cblxuICAuc2JMb25nVGV4dEFyZWEge1xuICAgIHdpZHRoOiA5MCU7XG4gICAgYm9yZGVyOiBAc2JUZXh0Ym94Qm9yZGVyO1xuICB9XG4gIFxuICAuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICBiYWNrZ3JvdW5kOiBub25lO1xuICAgIGJvcmRlcjogbm9uZTtcblxuICAgIHNlbGVjdCB7XG4gICAgICBtaW4td2lkdGg6IDIwMHB4O1xuICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgfVxuXG4gICAgPiBzcGFuIHtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgcGFkZGluZzogMCAyMHB4IDAgNDBweDtcbiAgICB9XG4gIH1cblxuXG4gIC5zYkZpZWxkc1RhYmxlIHtcbiAgICBtYXJnaW4tdG9wOiAwO1xuICAgIHBhZGRpbmctdG9wOiAwO1xuXG4gICAgPiAuc2JUYWJsZSB7XG4gICAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG5cbiAgICAgICAgaGVpZ2h0OiBAc2JUYWJsZUNlbGxIZWlnaHQ7XG4gICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cblxuICAgICAgICAmOm50aC1jaGlsZCgxKSwgJjpudGgtY2hpbGQoMikge1xuICAgICAgICAgIHdpZHRoOiAyMCU7XG4gICAgICAgIH1cblxuICAgICAgICAmOm50aC1jaGlsZCgzKSB7XG4gICAgICAgICAgd2lkdGg6IDYwJTtcbiAgICAgICAgfVxuXG4gICAgICAgID4gaW5wdXQsIHRleHRhcmVhIHtcbiAgICAgICAgICB3aWR0aDogMTAwJTtcbiAgICAgICAgfVxuXG4gICAgICAgID4gdGV4dGFyZWEge1xuICAgICAgICAgIGJvcmRlcjogQHNiVGV4dGJveEJvcmRlcjtcbiAgICAgICAgICBib3JkZXItcmFkaXVzOiBAc2JUZXh0Ym94UmFkaXVzO1xuICAgICAgICAgIHBhZGRpbmc6IDAgNXB4O1xuICAgICAgICAgIG1pbi1oZWlnaHQ6IDM1cHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAuc2JVc2VyRGVmaW5lZEZpZWxkc1RhYmxlIHtcbiAgICA+IC5zYlRhYmxlIHtcbiAgICAgID4gdGJvZHkgPiB0ciA+IHRkIHtcbiAgICAgICAgJjpudGgtY2hpbGQoMSkge1xuICAgICAgICAgIHdpZHRoOiAxNSU7XG4gICAgICAgIH1cblxuICAgICAgICAmOm50aC1jaGlsZCgyKSB7XG4gICAgICAgICAgd2lkdGg6IDMwJTtcbiAgICAgICAgfVxuXG4gICAgICAgICY6bnRoLWNoaWxkKDMpIHtcbiAgICAgICAgICB3aWR0aDogNTUlO1xuICAgICAgICB9XG5cbiAgICAgICAgPiBpbnB1dCwgdGV4dGFyZWEge1xuICAgICAgICAgIHdpZHRoOiAxMDAlO1xuICAgICAgICB9XG5cbiAgICAgICAgPiB0ZXh0YXJlYSB7XG4gICAgICAgICAgYm9yZGVyOiBAc2JUZXh0Ym94Qm9yZGVyO1xuICAgICAgICAgIGJvcmRlci1yYWRpdXM6IEBzYlRleHRib3hSYWRpdXM7XG4gICAgICAgICAgcGFkZGluZzogMCA1cHg7XG4gICAgICAgICAgbWluLWhlaWdodDogMzVweDtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuICAuc2JUYWJsZSB7XG4gICAgLnNiQnV0dG9ucyB7XG4gICAgICBiYWNrZ3JvdW5kOiBub25lO1xuICAgICAgLnNiQnRuIHtcbiAgICAgICAgd2lkdGg6IDM1cHg7XG4gICAgICAgIGhlaWdodDogNDBweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAuY2tlX3RleHRhcmVhX2lubGluZSB7XG4gICAgYm9yZGVyOiBAc2JUZXh0Ym94Qm9yZGVyO1xuICAgIGJvcmRlci1yYWRpdXM6IEBzYlRleHRib3hSYWRpdXM7XG4gICAgcGFkZGluZzogMCA1cHg7XG4gICAgbWluLWhlaWdodDogNzBweDtcbiAgfVxufVxuIiwiLy8gU2VhcmNoIHJlc3VsdHMgZGlzcGxheWVkXG4jc2JBc3NldFNlYXJjaCB7XG4gIC5zYlNlYXJjaFJlc3VsdHM7XG5cbiAgLnNiUGFnZVRpdGxlIHtcblxuICAgICYuc3F1ZWV6ZWQge1xuICAgICAgLnNiVG9vbHMge1xuICAgICAgICBwYWRkaW5nOiAwO1xuICAgICAgfVxuICAgIH1cblxuICAgIC5zYlRvb2xzIHtcbiAgICAgIG1hcmdpbi1yaWdodDogMTBweDtcbiAgICAgIHBhZGRpbmc6IDdweCAwO1xuICAgICAgLy8gZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcblxuICAgICAgPiAuc2JUb29sIHtcbiAgICAgICAgLy8gYmFja2dyb3VuZDogQHNiQnRuQmdDb2xvcjtcbiAgICAgICAgcGFkZGluZzogOHB4O1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuICAgICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICAgIGJvcmRlcjogbm9uZTtcblxuICAgIGhlYWRlciB7XG4gICAgICBtYXJnaW4tYm90dG9tOiAxMHB4O1xuICAgIH1cbiAgfVxuXG4gIHRhYmxlLnNiVGFibGV7XG4gICAgbWFyZ2luLWJvdHRvbTo1MHB4O1xuICB9XG5cbiAgLnBhZ2luYXRpb25Db250cm9sc1dyYXBwZXJ7XG4gICAgcG9zaXRpb246IGZpeGVkO1xuICAgIGxlZnQ6IDA7XG4gICAgcmlnaHQ6IDA7XG4gICAgYm90dG9tOjA7XG4gIH1cbiAgLnBhZ2luYXRpb25Db250cm9scyB7XG4gICAgcGFkZGluZzogNHB4O1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgIG1hcmdpbi1sZWZ0OmF1dG87XG4gICAgbWFyZ2luLXJpZ2h0OmF1dG87XG4gICAgd2lkdGg6MjUwcHg7XG4gICAgYmFja2dyb3VuZC1jb2xvcjpAc2JCZ0NvbG9yO1xuICAgIC13ZWJraXQtYm9yZGVyLXRvcC1sZWZ0LXJhZGl1czogNHB4O1xuICAgIC13ZWJraXQtYm9yZGVyLXRvcC1yaWdodC1yYWRpdXM6IDRweDtcbiAgICAtbW96LWJvcmRlci1yYWRpdXMtdG9wbGVmdDogNHB4O1xuICAgIC1tb3otYm9yZGVyLXJhZGl1cy10b3ByaWdodDogNHB4O1xuICAgIGJvcmRlci10b3AtbGVmdC1yYWRpdXM6IDRweDtcbiAgICBib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogNHB4O1xuICAgIC13ZWJraXQtYm94LXNoYWRvdzogM3B4IDBweCA1cHggMHB4IHJnYmEoMTcwLDE3MCwxNzAsMSk7XG4gICAgLW1vei1ib3gtc2hhZG93OiAzcHggMHB4IDVweCAwcHggcmdiYSgxNzAsMTcwLDE3MCwxKTtcbiAgICBib3gtc2hhZG93OiAzcHggMHB4IDVweCAwcHggcmdiYSgxNzAsMTcwLDE3MCwxKTtcblxuICAgIHNwYW4ge1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICB9XG5cbiAgICBpbnB1dCB7XG4gICAgICBoZWlnaHQ6IGF1dG87XG4gICAgICB3aWR0aDogMzBweDtcbiAgICAgIG1hcmdpbjogMCA1cHg7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuICAgICAgcGFkZGluZzogMnB4O1xuICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIH1cblxuICAgIFtjbGFzc149c2ItaWNvbl0ge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDI7XG4gICAgICBtYXJnaW4tcmlnaHQ6IC01cHg7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXG4gICAgICAmLmRpc2FibGVkIHtcbiAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25EaXNhYmxlZENvbG9yO1xuICAgICAgfVxuXG4gICAgICAmOm5vdCguZGlzYWJsZWQpIHtcbiAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgfVxuICAgIH1cblxuICAgIC5zYi1pY29uLWxlZnQtZGlyLFxuICAgIC5zYi1pY29uLXJpZ2h0LWRpciB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMjtcbiAgICB9XG4gIH1cbn1cblxuLy8gU2lkZSBQYW5lbFxuLnNiQXNzZXRGaWx0ZXIge1xuICAuc2JQYW5lbDtcbiAgdG9wOiAxMTNweDtcblxuICBpbnB1dCB7XG4gICAgZGlzcGxheTogaW5saW5lO1xuICB9XG5cbiAgZGl2IHtcbiAgICA+IGEge1xuICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICBkaXNwbGF5OiBmbGV4O1xuICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgfVxuICB9XG59XG4iLCIvLyBTZWFyY2ggcmVzdWx0cyBkaXNwbGF5ZWRcbiNzYlNlbGVjdENvbnRyYWN0IHtcbiAgLnNiU2VhcmNoUmVzdWx0cztcblxuICAuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgXHRiYWNrZ3JvdW5kOiBAc2JCZ0NvbG9yO1xuICBcdGJvcmRlcjogbm9uZTtcbiAgfVxufSIsIi8vIFNlYXJjaCByZXN1bHRzIGRpc3BsYXllZFxuI3NiQW1lbmRDb250cmFjdCB7XG4gIC5zYlNlYXJjaFJlc3VsdHM7XG5cbiAgLnNiUGFnZUJsb2NrU2VjdGlvbiB7XG4gIFx0YmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgXHRib3JkZXI6IG5vbmU7XG4gIH1cblxuICAuc2JQYWdlVGl0bGU+LnNiUGFnZVRpdGxlVGFibGU+LnNiUGFnZVRpdGxlTGVmdCBbY2xhc3NePXNmLWljb25dOmJlZm9yZSB7XG4gIFx0dG9wOiAwcHg7XG4gIH1cbiAgLnNiTG9hZGluZ01hc2sge1xuICBcdHZpc2liaWxpdHk6IGhpZGRlbjtcbiAgfVxufVxuXG5AbWVkaWEgb25seSBzY3JlZW4gYW5kIChtaW4tZGV2aWNlLXdpZHRoIDogMzIwcHgpIGFuZCAobWF4LWRldmljZS13aWR0aCA6IDY0MHB4KSB7XG5cbiAgI3NiQW1lbmRDb250cmFjdCB7XG4gICAgLnNiUGFnZVRpdGxlUmlnaHQge1xuXG4gICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcblxuICAgICAgLnNiQnV0dG9ucyB7XG4gICAgICAgIGZsb2F0OiBub25lO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG59IiwiLypcbkRvY3VtZW50IEdlbmVyYXRpb24gUHJldmlldyBwYWdlXG5cblByZXZpZXdzIGEgZG9jdW1lbnQgaW4gdGhlIGJyb3dzZXIgd2l0aCBjaG9zZW4gdGVtcGxhdGUsIGFkZGl0aW9uYWwgZG9jcywgZXRjLlxuKi9cbiNzYkRvY0dlblByZXZpZXcge1xuXHQuc2JQYWdlQmxvY2tTZWN0aW9uIHtcblx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0cGFkZGluZzogMDtcblx0XHRiYWNrZ3JvdW5kOiBub25lO1xuXHRcdGJvcmRlcjogbm9uZTtcblx0XHRtYXJnaW4tcmlnaHQ6IDQ0cHg7XG5cblx0XHQmOmxhc3Qtb2YtdHlwZSB7XG5cdFx0XHRtYXJnaW4tcmlnaHQ6IGluaGVyaXQ7XG5cdFx0fVxuXHR9XG5cblx0LnNiRHVhbExpc3RCb3ggc2VsZWN0IHtcblx0XHR3aWR0aDogMzIwcHg7XG5cdH1cbn1cblxuLypcbkRvY3VtZW50IEdlbmVyYXRpb24gb3B0aW9uc1xuXG5DaG9pY2VzIGZvciBkb2N1bWVudCBnZW5lcmF0aW9uIHN1Y2ggYXMgdGVtcGxhdGUsIG91dHB1dCBmb3JtYXQsIGV0Yy5cbiovXG4jc2JEb2NHZW5PcHRpb25zIHtcblx0bWFyZ2luOiAwIDAgMCA0MHB4O1xuXHRsYWJlbCB7XG5cdFx0Zm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cdH1cblxuXHQ+IHRib2R5ID4gdHIgPiB0ZCB7XG5cdFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0XHRwYWRkaW5nLWJvdHRvbTogOHB4O1xuXHR9XG5cblx0PiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG5cdFx0dGV4dC1hbGlnbjogcmlnaHQ7XG5cblx0XHQ+IFtjbGFzc149c2ItaWNvbl0ge1xuXHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNTtcblx0XHRcdGNvbG9yOiBAc2JJY29uQ29sb3I7XG5cdFx0fVxuXHR9XG5cblx0aW5wdXQsIHNlbGVjdCB7XG5cdFx0d2lkdGg6IDIyMHB4O1xuXHR9XG5cblx0LnNiRHVhbExpc3RCb3ggc2VsZWN0IHtcblx0XHR3aWR0aDogMzIwcHg7XG5cdH1cbn1cbiIsIiNzYkltcG9ydExpbmVze1xuXG5cdCNzYkltcG9ydE9wdGlvbnN7XG5cdFx0bWFyZ2luOiAwIDAgMCA0MHB4O1xuXG5cdFx0ZmllbGRzZXQge1xuXHRcdFx0Ym9yZGVyOiAwO1xuXHRcdFx0cGFkZGluZzogNXB4O1xuXG5cdFx0XHQ+IGxhYmVsIHtcblx0XHRcdFx0bWFyZ2luLXJpZ2h0OiAxMHB4O1xuXHRcdFx0XHRmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblx0XHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0XHR3aWR0aDogMTc1cHg7XG5cdFx0XHRcdHRleHQtYWxpZ246IHJpZ2h0O1xuXHRcdFx0fVxuXG5cdFx0XHQ+IGlucHV0LCBzZWxlY3Qge1xuXHRcdCAgICBcdHdpZHRoOiAyMDBweDtcblx0XHQgIFx0fVxuXHRcdH1cblx0fVxuXG5cdC5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuXHQgICAgYmFja2dyb3VuZDogbm9uZTtcblx0ICAgIGJvcmRlcjogbm9uZTtcblxuXHRcdGhlYWRlciB7XG5cdFx0XHRtYXJnaW4tYm90dG9tOiAxMHB4O1xuXHRcdH1cbiAgXHR9XG59XG4iLCIvLyBMaW5lIEVkaXRvclxuI3NiTGluZUVkaXRvciB7XG5cbiAgLy8gdG9vbCBiYXJzIGluIHRoZSBwYWdlIHRpdGxlXG4gIC5zYlBhZ2VUaXRsZSB7XG5cbiAgICAmLnNxdWVlemVkIHtcbiAgICAgIC5zYlRvb2xzIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JUb29scyB7XG4gICAgICBtYXJnaW4tbGVmdDogMTZweDtcbiAgICAgIHBhZGRpbmc6IDdweCAwO1xuICAgICAgdHJhbnNpdGlvbjogYWxsIC4yNXMgZWFzZS1pbjtcblxuICAgICAgPiAuc2JUb29sIHtcbiAgICAgICAgLy8gYmFja2dyb3VuZDogQHNiQnRuQmdDb2xvcjtcbiAgICAgICAgZm9udC1zaXplOiBpbmhlcml0O1xuICAgICAgICAvLyBmb250LXdlaWdodDogYm9sZDtcbiAgICAgICAgcGFkZGluZzogOHB4IDEycHg7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG5cbiAgICAgICAgJi5pY29uIHtcbiAgICAgICAgICBwYWRkaW5nOiA4cHggN3B4O1xuICAgICAgICB9XG5cbiAgICAgICAgJi5zZi1pY29uLWRvd24ge1xuICAgICAgICAgIHBhZGRpbmctdG9wOiA4cHg7XG4gICAgICAgIH1cblxuICAgICAgICAuc2YtaWNvbi1yZWZyZXNoOmJlZm9yZSB7XG4gICAgICAgICAgZm9udC1zaXplOiAxLjFlbTtcbiAgICAgICAgICBtYXJnaW4tdG9wOiAwLjNlbTtcbiAgICAgICAgICBtYXJnaW4tYm90dG9tOiAwLjNlbTtcbiAgICAgICAgfVxuXG4gICAgICAgID4gbWVudSAuc2VwYXJhdG9yIHtcbiAgICAgICAgICBib3JkZXItYm90dG9tOiAxcHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG4gICAgICAgICAgbWFyZ2luLWJvdHRvbTogNnB4O1xuICAgICAgICB9XG5cbiAgICAgICAgPiBbY2xhc3NePXNiLWljb25dIHtcbiAgICAgICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS40O1xuICAgICAgICB9XG5cbiAgICAgICAgJi5lbmQge1xuICAgICAgICAgIGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiAzcHg7XG4gICAgICAgICAgYm9yZGVyLXRvcC1yaWdodC1yYWRpdXM6IDNweDtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICA+IC5zYlRvb2xTZXBhcmF0b3IgKyAuc2JUb29sIHtcbiAgICAgICAgYm9yZGVyLWxlZnQ6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICAgICBib3JkZXItYm90dG9tLWxlZnQtcmFkaXVzOiAzcHg7XG4gICAgICAgIGJvcmRlci10b3AtbGVmdC1yYWRpdXM6IDNweDtcbiAgICAgIH1cblxuICAgICAgPiAuc2JUb29sU2VwYXJhdG9yIHtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICBoZWlnaHQ6IDFweDtcbiAgICAgICAgd2lkdGg6IDEwcHg7XG4gICAgICAgIGZsb2F0OiBsZWZ0O1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIFRoZSBRdW90ZSBGaWVsZHMgc2VjdGlvbiwgaWYgc2hvd25cbiAgLnNiUXVvdGVGaWVsZHMge1xuXG4gICAgbWFyZ2luOiBAc2JQYWdlSGVhZGVyVG9wIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXG4gICAgaGVhZGVyIHtcbiAgICAgIG1hcmdpbi1ib3R0b206IDEwcHg7XG4gICAgfVxuXG4gICAgdGFibGUgPiB0Ym9keSA+IHRyID4gdGQge1xuICAgICAgcGFkZGluZzogNXB4IDA7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuXG4gICAgICBpbnB1dCwgc2VsZWN0IHtcbiAgICAgICAgZm9udC1zaXplOiBpbmhlcml0O1xuICAgICAgICB3aWR0aDogMTQwcHg7XG4gICAgICB9XG5cbiAgICAgIFtjbGFzc149c2ItaWNvbl0ge1xuICAgICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS4yO1xuICAgICAgICBjb2xvcjogQHNiSWNvbkNvbG9yO1xuICAgICAgfVxuXG4gICAgICBbY2xhc3M9c2ItaWNvbi1zZWFyY2hdIHtcbiAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Db2xvcjtcbiAgICAgICAgbWFyZ2luLWxlZnQ6IDNweDtcbiAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkhvdmVyQ29sb3I7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgJi5zYkxhYmVsIHtcbiAgICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgIHBhZGRpbmctcmlnaHQ6IDEycHg7XG4gICAgICAgIHdpZHRoOiAxNSU7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLy8gQSB0YWJsZSBvZiBxdW90ZSBsaW5lcyBpbiB0aGUgZWRpdG9yIChjYW4gaGF2ZSBtdWx0aXBsZSwgZS5nLiBncm91cGVkIHF1b3RlKVxuICAuc2JUYWJsZSB7XG4gICAgQHJvd0hlaWdodDogQHNiVGFibGVDZWxsSGVpZ2h0O1xuICAgIEBpbmRlbnQ6IDEwcHggKyBAc2JQYWdlSGVhZGVyTGVmdDtcblxuICAgIC8vIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXG4gICAgaW5wdXQsIHNlbGVjdCB7XG4gICAgICBmb250LXNpemU6IGluaGVyaXQ7XG5cbiAgICAgICYuc2JTbWFsbCB7XG4gICAgICAgIG1heC13aWR0aDogODBweDtcbiAgICAgIH1cblxuICAgICAgJjpkaXNhYmxlZCB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkhlYWRlckJnQ29sb3I7XG4gICAgICB9XG5cbiAgICAgICYuaGFzRGF0ZXBpY2tlciB7XG4gICAgICAgIG1pbi13aWR0aDogOTVweDtcbiAgICAgICAgd2lkdGg6IDg1JTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyBwYWRkaW5nIGZvciBmaXJzdCBhbmQgbGFzdCBjb2x1bW5zXG4gICAgPiB0aGVhZCA+IHRyID4gdGg6Zmlyc3Qtb2YtdHlwZSxcbiAgICA+IHRib2R5ID4gdHIgPiB0ZDpmaXJzdC1vZi10eXBlIHtcbiAgICAgIHBhZGRpbmctbGVmdDogQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgfVxuICAgID4gdGhlYWQgPiB0ciA+IHRoOmxhc3Qtb2YtdHlwZSxcbiAgICA+IHRib2R5ID4gdHIgPiB0ZDpsYXN0LW9mLXR5cGUge1xuICAgICAgcGFkZGluZy1yaWdodDogQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgfVxuXG4gICAgc2VsZWN0IHsgIC8vIGRvZXMgdGhpcyBuZWVkIHRvIGJlIG1vcmUgc3BlY2lmaWM/ICBpdCBpcyBqdXN0IGZvciBBZGRpdGlvbmFsIERpc2MgY29sdW1uXG4gICAgICBtaW4td2lkdGg6IDIwcHg7XG4gICAgICBtYXJnaW4tbGVmdDogNHB4O1xuICAgIH1cblxuICAgIC8vIHRhYmxlIGNlbGxzXG4gICAgPiB0Ym9keSA+IHRyID4gdGQge1xuICAgICAgLy8gaGVpZ2h0OiBAcm93SGVpZ2h0O1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuICAgICAgJi5yaWdodCBpbnB1dCB7XG4gICAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgfVxuXG4gICAgICAvKltjbGFzc149c2ItaWNvbl0ge1xuICAgICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS4yO1xuICAgICAgICBjb2xvcjogQHNiSWNvbkNvbG9yO1xuICAgICAgfSovXG5cbiAgICAgIGEgPiBzcGFuW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gICAgICAgIGNvbG9yOiBAc2JJY29uQ29sb3I7XG5cbiAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC5zZi1pY29uLWVkaXQge1xuICAgICAgICB2aXNpYmlsaXR5OiBoaWRkZW47XG4gICAgICAgICYuc2JNRFFpY29uIHtcbiAgICAgICAgICBtYXJnaW4tcmlnaHQ6IC0xMWVtO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC8vIEFjdGlvbnMgY29sdW1uXG4gICAgICAmLnNiQWN0aW9ucyB7XG4gICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gICAgICAgIHdpZHRoOiAxJTtcbiAgICAgICAgcGFkZGluZy1sZWZ0OiAxNXB4O1xuICAgICAgfVxuXG4gICAgICAvLyBNdWx0aSBEZWxldGUgY29sdW1uXG4gICAgICAmLnNiRGVsZXRlQ2hlY2tib3gge1xuICAgICAgICB3aWR0aDogMSU7XG4gICAgICB9XG5cbiAgICAgICYuc2JUYXJnZXRDdXN0b21lckFtb3VudEVkaXRhYmxlID4gW2NsYXNzXj1zZi1pY29uXSB7XG4gICAgICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICAgIH1cblxuICAgICAgJi5zYlRhcmdldEN1c3RvbWVyQW1vdW50U2VnbWVudEVkaXRhYmxlID4gW2NsYXNzXj1zZi1pY29uXSB7XG4gICAgICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IHRib2R5ID4gdHIgPiB0ZDpob3ZlciB7XG4gICAgICAuc2YtaWNvbi1lZGl0IHtcbiAgICAgICAgdmlzaWJpbGl0eTogdmlzaWJsZTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IHRmb290ID4gdHIge1xuXG4gICAgICAmLnNiVG90YWxSb3cgdGQge1xuICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuXG4gICAgICAgICY6bGFzdC1vZi10eXBlIHtcbiAgICAgICAgICBwYWRkaW5nLXJpZ2h0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICA+IHRkIHtcbiAgICAgICAgLy8gaGVpZ2h0OiBAcm93SGVpZ2h0O1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIENsYXNzZXMgZm9yIHByb2R1Y3QgaGllcmFyY2h5IHZpc3VhbGl6YXRpb25cbiAgICAuc2JCdW5kbGVPcHRpb24ge1xuICAgICAgY29sb3I6IEBzYlNlY29uZGFyeUZvbnRDb2xvcjtcbiAgICB9XG4gICAgLnNiSW5kZW50MiB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiAxO1xuICAgIH1cbiAgICAuc2JJbmRlbnQzIHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDI7XG4gICAgfVxuICAgIC5zYkluZGVudDQge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAaW5kZW50ICogMztcbiAgICB9XG4gICAgLnNiSW5kZW50NSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiA0O1xuICAgIH1cbiAgICAuc2JJbmRlbnQ2IHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDU7XG4gICAgfVxuICAgIC5zYkluZGVudDcge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAaW5kZW50ICogNjtcbiAgICB9XG4gICAgLnNiSW5kZW50OCB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiA3O1xuICAgIH1cbiAgICAuc2JJbmRlbnQ5IHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDg7XG4gICAgfVxuICAgIC5zYkluZGVudDEwIHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDk7XG4gICAgfVxuXG5cbiAgICAvLyBEZXNjcmlwdGlvbiBmaWVsZFxuICAgIC5zYkRlc2NyaXB0aW9uRmllbGQge1xuICAgICAgc3BhbiB7XG4gICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICB9XG5cbiAgICAgIC5zYi1pY29uLXBlbmNpbCB7XG4gICAgICAgIHZpc2liaWxpdHk6IGhpZGRlbjtcbiAgICAgIH1cblxuICAgICAgJjpob3ZlciB7XG4gICAgICAgIC5zYi1pY29uLXBlbmNpbCB7XG4gICAgICAgICAgdmlzaWJpbGl0eTogdmlzaWJsZTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIFF1b3RlIFRvdGFsIGFtb3VudCBpbiBsb3dlciByaWdodCBjb3JuZXJcbiAgLnNiUXVvdGVUb3RhbCB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgZmxvYXQ6IHJpZ2h0O1xuICAgIG1hcmdpbjogMTJweCAyMnB4IDI2cHggMDtcblxuICAgID4gc3BhbiB7XG4gICAgICBtYXJnaW4tbGVmdDogMTBweDtcbiAgICB9XG4gIH1cblxuICAvLyBHcm91cCB0YWJzL2xpbmtzXG4gIC5zYkdyb3VwcywgLnNiRGltZW5zaW9uVGFicyB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIG1hcmdpbjogMThweCBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuICAgIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcblxuICAgID4gYSB7XG4gICAgICBjdXJzb3I6IG1vdmU7XG4gICAgICBjb2xvcjogaW5oZXJpdDtcbiAgICAgIHBhZGRpbmc6IDZweCAxNnB4IDZweDtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblxuICAgICAgPiAuc2YtaWNvbi1lZGl0IHtcbiAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Db2xvcjtcbiAgICAgICAgdmlzaWJpbGl0eTogaGlkZGVuO1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICAgICAgcmlnaHQ6IC02cHg7XG4gICAgICAgIHRvcDogNnB4O1xuICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkhvdmVyQ29sb3I7XG4gICAgICAgIH1cblxuICAgICAgICAmLnZpc2libGUge1xuICAgICAgICAgIHZpc2liaWxpdHk6IHZpc2libGU7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gICAgPiBhLnNlbGVjdGVkIHtcbiAgICAgIGJvcmRlci1ib3R0b206IDJweCBzb2xpZCBAc2JUYWJTZWxlY3RlZENvbG9yO1xuICAgIH1cbiAgICA+IGE6aG92ZXIge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMnB4IHNvbGlkIEBzYlRhYlNlbGVjdGVkQ29sb3I7XG4gICAgICA+IC5zZi1pY29uLWVkaXQge1xuICAgICAgICB2aXNpYmlsaXR5OiB2aXNpYmxlO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIEEgR3JvdXAgb24gdGhlIHF1b3RlLiAgVGhlc2Ugc3R5bGVzIGFyZSBmb3IgbXVsdGlwbGUgZ3JvdXBzIHdpdGggb3ZlcnJpZGVzIGxhdGVyIG9uIGZvciBhIHNpbmdsZSBncm91cC5cbiAgLnNiR3JvdXAge1xuICAgIC8vIEdyb3VwIG5hbWUgLSBkaXNwbGF5ZWQgb25seSB3aGVuIHRoZSBxdW90ZSBpcyBncm91cGVkXG4gICAgPiBoZWFkZXIge1xuICAgICAgZGlzcGxheTogbm9uZTtcbiAgICB9XG5cbiAgICAvLyBHcm91cHNcbiAgICAmLnNiR3JvdXBlZCB7XG4gICAgICBiYWNrZ3JvdW5kOiBAc2JCZ0NvbG9yO1xuICAgICAgbWFyZ2luOiBAc2JQYWdlSGVhZGVyVG9wIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgYm9yZGVyOiBAc2JDb250ZW50Qm9yZGVyO1xuICAgICAgYm9yZGVyLXJhZGl1czogNHB4O1xuXG4gICAgICA+IGhlYWRlciB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6QHNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcjtcbiAgICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICAgIG1hcmdpbjogQHNiUGFnZUhlYWRlclRvcCBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICAgICAgbWFyZ2luOiAwO1xuICAgICAgICBib3JkZXI6IDA7XG4gICAgICAgIHBhZGRpbmc6IEBzYlBhZ2VIZWFkZXJUb3AgLSA1cHggQHNiUGFnZUhlYWRlckxlZnQgQHNiUGFnZUhlYWRlclRvcCAtIDEwcHg7XG4gICAgICAgIGJvcmRlci1ib3R0b206IEBzYkNvbnRlbnRCb3JkZXI7XG5cbiAgICAgICAgJi5zYkhpZGRlbkhlYWRlcntcbiAgICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICB9XG5cbiAgICAgICAgPiAuc2JHcm91cEVkaXRvciA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAgICAgd2lkdGg6IDUwJTtcbiAgICAgICAgICBtYXJnaW46IDEwcHg7XG4gICAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuICAgICAgICAgICY6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICAgICAgICBib3JkZXItcmlnaHQ6IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcblxuICAgICAgICAgICAgPiB0YWJsZSA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgID4gdGFibGUgPiB0Ym9keSA+IHRyOmZpcnN0LW9mLXR5cGUgPiB0ZDpsYXN0LW9mLXR5cGUge1xuICAgICAgICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgICAgICAgICAgcGFkZGluZy1yaWdodDogMTBweDtcbiAgICAgICAgICAgICAgbWluLXdpZHRoOiAyMDVweDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG5cbiAgICAgICAgICAuc2JGYXZvcml0ZSB7XG4gICAgICAgICAgICB3aWR0aDogNSU7XG5cbiAgICAgICAgICAgID4gaSB7XG4gICAgICAgICAgICAgIGZvbnQtc2l6ZTogMmVtO1xuICAgICAgICAgICAgICBkaXNwbGF5OmlubGluZS1ibG9jaztcbiAgICAgICAgICAgICAgdmVydGljYWwtYWxpZ246IHN1cGVyO1xuXG4gICAgICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC5zZi1pY29uLWVkaXQge1xuICAgICAgICAgIHZpc2liaWxpdHk6aGlkZGVuO1xuICAgICAgICB9XG5cbiAgICAgICAgLnNiR3JvdXBIZWFkZXIge1xuICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblxuICAgICAgICAgID4gaW5wdXQge1xuICAgICAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLnNiR3JvdXBIZWFkZXI6aG92ZXIge1xuICAgICAgICAgIC5zZi1pY29uLWVkaXQge1xuICAgICAgICAgICAgdmlzaWJpbGl0eTp2aXNpYmxlO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIGgyIHtcbiAgICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXG4gICAgICAgICAgJjpub3QoLnNiR3JvdXBEcmFnSGFuZGxlKSB7XG4gICAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgPiBbY2xhc3M9c2ItaWNvbi1wZW5jaWxdIHtcbiAgICAgICAgICAgIHZpc2liaWxpdHk6IGhpZGRlbjtcbiAgICAgICAgICB9XG5cbiAgICAgICAgICAmOmhvdmVyID4gW2NsYXNzPXNiLWljb24tcGVuY2lsXSB7XG4gICAgICAgICAgICB2aXNpYmlsaXR5OiB2aXNpYmxlO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC5zYkdyb3VwTmFtZSB7XG4gICAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgICAgICBtYXJnaW4tcmlnaHQ6IDE1cHg7XG4gICAgICAgICAgaGVpZ2h0OkBzYlRleHRib3hIZWlnaHQ7XG4gICAgICAgIH1cblxuICAgICAgICAvLyBDdXN0b20gYWN0aW9ucyAoaS5lLiBBZGRQcm9kdWN0cykgJiBHcm91cCBBY3Rpb25zIChpLmUuIFJlc2V0IERpc2NvdW50cywgT3B0aW9uYWwsIENsb25lLCBEZWxldGUpXG4gICAgICAgIC5zYkdyb3VwQWN0aW9ucyB7XG4gICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICAgIG1lbnUge1xuICAgICAgICAgICAgbWF4LWhlaWdodDogMTI1cHg7XG4gICAgICAgICAgICBvdmVyZmxvdy15OiBhdXRvO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIEFkZCBQcm9kdWN0cyBhbmQgb3RoZXIgY3VzdG9tIGFjdGlvbnNcbiAgICAgICAgLnNiVG9vbHMge1xuICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgICAgbWFyZ2luLWxlZnQ6IDVweDtcbiAgICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgICAgICBiYWNrZ3JvdW5kOiBAc2JQYWdlQmdDb2xvcjtcblxuICAgICAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgICAgICBoZWlnaHQ6IDMwcHg7XG4gICAgICAgICAgICBwYWRkaW5nLXRvcDogN3B4O1xuICAgICAgICAgICAgJjpsYXN0LW9mLXR5cGUge1xuICAgICAgICAgICAgICBwYWRkaW5nOiAwO1xuICAgICAgICAgICAgICBbY2xhc3NePXNiLWljb25dIHtcbiAgICAgICAgICAgICAgICBmb250LXNpemU6IDEuNmVtO1xuICAgICAgICAgICAgICAgIHRvcDogMXB4O1xuICAgICAgICAgICAgICB9XG5cbiAgICAgICAgICAgICAgLnNiSWNvbldyYXBwZXIge1xuICAgICAgICAgICAgICAgIHBhZGRpbmctYm90dG9tOiA3cHg7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgLnNmLWljb24tZG93biB7XG4gICAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICAgICAgcGFkZGluZy10b3A6IDZweDtcbiAgICAgICAgICAgICAgd2lkdGg6IDJlbTtcbiAgICAgICAgICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICAvLyBNYXNrIHRvIGNsb3NlIHRoZSBzcGxpdCBidXR0b24gb24gY2xpY2tpbmcgb3V0IG9mIHRoZSBtZW51XG4gICAgICAgICAgICA+IC5zYk1vZGFsTWFzayB7XG4gICAgICAgICAgICAgIHotaW5kZXg6IDQ7ICAvLyBuZWVkcyB0byBiZSBsb3dlciB0aGFuIHBhZ2UgaGVhZGVyXG4gICAgICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IHJnYmEoMCwgMCwgMCwgMCk7XG4gICAgICAgICAgICAgIGN1cnNvcjogZGVmYXVsdDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAvLyBHcm91cCBkZXNjcmlwdGlvbiwgaWYgaW5jbHVkZWQgaW4gdGhlIFF1b3RlIExpbmUgR3JvdXAgZmllbGQgc2V0XG4gICAgICAgIC5zYkRlc2NyaXB0aW9uIHtcbiAgICAgICAgICBtYXJnaW4tdG9wOiAxMHB4O1xuICAgICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgICAgIGNvbG9yOiBAc2JJY29uQ29sb3I7XG4gICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICAgIGRpc3BsYXk6IHRhYmxlO1xuXG4gICAgICAgICAgPiBkaXYsXG4gICAgICAgICAgPiBkaXYgPiBwIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZTtcbiAgICAgICAgICB9XG5cbiAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgIGNvbG9yOiBpbmhlcml0O1xuICAgICAgICAgICAgW2NsYXNzPXNmLWljb24tZWRpdF0ge1xuICAgICAgICAgICAgICB2aXNpYmlsaXR5OiB2aXNpYmxlO1xuICAgICAgICAgICAgICBwYWRkaW5nLWxlZnQ6IDVweDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgLnNiVGFibGUge1xuICAgICAgICBtYXJnaW4tdG9wOiAxMHB4O1xuICAgICAgfVxuXG4gICAgfVxuXG5cbiAgICAvLyBHcm91cC1sZXZlbCBmaWVsZHMgKGUuZy4gT3B0aW9uYWwsIFN1YnNjcmlwdGlvbiBUZXJtLCBBZGQgRGlzYylcbiAgICAuc2JHcm91cEZpZWxkcyB7XG4gICAgICBwYWRkaW5nOiAwIDEwcHg7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblxuICAgICAgPiB0YWJsZSA+IHRib2R5ID4gdHIge1xuXG4gICAgICAgIC5zYkxhYmVsIHtcbiAgICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgICAgICBwYWRkaW5nLXJpZ2h0OiA1cHg7XG4gICAgICAgIH1cblxuICAgICAgICA+IHRkIHtcblxuICAgICAgICAgIHBhZGRpbmctYm90dG9tOiAxMHB4O1xuICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgICAgY29sb3I6IEBzYkZvbnRDb2xvcjtcblxuICAgICAgICAgIC5zYkZpZWxkUm93IHtcbiAgICAgICAgICAgIHBhZGRpbmctYm90dG9tOiAxMHB4O1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGxhYmVsIHtcbiAgICAgICAgICAgIG1hcmdpbi1yaWdodDogNHB4O1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGlucHV0Om5vdChbdHlwZT1jaGVja2JveF0pIHtcbiAgICAgICAgICAgIGhlaWdodDogMmVtO1xuICAgICAgICAgICAgd2lkdGg6IDEwMHB4O1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGlucHV0W3R5cGU9Y2hlY2tib3hdIHtcbiAgICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gR3JvdXAgdG90YWwgLSBkaXNwbGF5cyBvbmx5IHdoZW4gdGhlcmUgYXJlIGJvdGggTURRIGFuZCBzdGFuZGFyZCBwcm9kdWN0cyBvbiBhIGdyb3VwXG4gICAgLnNiR3JvdXBUb3RhbCB7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgIG1hcmdpbjogMTVweCAyMnB4IDIwcHggMDtcbiAgICB9XG4gIH1cblxuICAvLyBFbXB0eSBncm91cCBvciBxdW90ZSBtZXNhZ2VzXG4gIC5zYkVtcHR5R3JvdXBNc2csXG4gIC5zYkVtcHR5UXVvdGVNc2csXG4gIC5lbXB0eU1TVGFibGVNZXNzYWdlLFxuICAuZW1wdHlTdGFuZGFyZFRhYmxlTWVzc2FnZSB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgcGFkZGluZzogQHNiUGFnZUhlYWRlckxlZnQ7XG4gIH1cblxuICAuZW1wdHlNU1RhYmxlTWVzc2FnZSB7XG4gICAgY2xlYXI6IGJvdGg7XG4gIH1cblxuICAuZW1wdHlNU1RhYmxlTWVzc2FnZSxcbiAgLmVtcHR5U3RhbmRhcmRUYWJsZU1lc3NhZ2Uge1xuICAgIHBhZGRpbmc6IEBzYlBhZ2VIZWFkZXJMZWZ0IDAgMCBAc2JQYWdlSGVhZGVyTGVmdCAqIDI7XG4gIH1cblxuICAjc2JQcmljZWJvb2tNYXNrLCAjc2JTZWdtZW50c01hc2ssICNzYkZhdm9yaXRlc01hc2ssICNzYkFsZXJ0TWFzayB7XG4gICAgLnNiTW9kYWxNYXNrO1xuXG4gICAgJi5jbG9zZSB7XG4gICAgICBkaXNwbGF5OiBub25lO1xuICAgIH1cbiAgfVxuXG4gICNzYlNlZ21lbnRzTW9kYWwsICNzYlByb2R1Y3RSdWxlQWxlcnQge1xuICAgIC5zYk1vZGFsRGlhbG9nO1xuICAgIG1heC13aWR0aDogNjAwcHg7XG5cbiAgICAmLmFtZW5kbWVudCB7XG4gICAgICBjdXJzb3I6IGRlZmF1bHQ7XG4gICAgICAuc2JNb2RhbENvbnRlbnRDb250YWluZXIge1xuICAgICAgICBvdmVyZmxvdzogYXV0bztcbiAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgaVtjbGFzc149c2YtaWNvbl0ge1xuICAgICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gICAgICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgIGN1cnNvcjogZGVmYXVsdDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cblxuXG4gICAgICAjc2JDdXN0b21TZWdtZW50cyB7XG4gICAgICAgID4gdGJvZHkgPiB0ciB7XG4gICAgICAgICAgJjpmaXJzdC1vZi10eXBlID4gdGQge1xuICAgICAgICAgICAgcGFkZGluZy10b3A6IDE0cHg7XG4gICAgICAgICAgfVxuICAgICAgICAgID4gdGQge1xuICAgICAgICAgICAgY3Vyc29yOiBkZWZhdWx0O1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAuc2JNb2RhbEZvb3RlciB7XG4gICAgICAgID4gLnNiQnV0dG9ucyB7XG4gICAgICAgICAgPiAuc2JCdG4ge1xuICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICAgICAgY29sb3I6IEBzYkdyb3VwQnRuRm9udENvbG9yO1xuICAgICAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgICAgIGN1cnNvcjogZGVmYXVsdDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgICY6Zm9jdXMge1xuICAgICAgICAgICAgICBvdXRsaW5lOiBub25lO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgJi5zYlByaW1hcnlBY3Rpb24ge1xuICAgICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuQmdDb2xvcjtcbiAgICAgICAgICAgICAgY29sb3I6IEBzYlByaW1hcnlCdG5Gb250Q29sb3I7XG4gICAgICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9yO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgJi5jbG9zZSB7XG4gICAgICBkaXNwbGF5OiBub25lO1xuICAgIH1cblxuICAgIC5zYlZhbGlkYXRpb25FcnJvcnMge1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgIHBhZGRpbmc6IDVweCAxNXB4IDA7XG5cbiAgICAgID4gZGl2IHtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgIGNvbG9yOiAjYzAwO1xuICAgICAgICBwYWRkaW5nLWJvdHRvbTogNXB4O1xuXG4gICAgICAgID4gc3BhbiwgPiBkaXYge1xuICAgICAgICAgIGRpc3BsYXk6IGlubGluZTtcbiAgICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgICB9XG5cbiAgICAgICAgPiBbY2xhc3NePXNiLWljb25dIHtcbiAgICAgICAgICBjb2xvcjogI2MwMDtcbiAgICAgICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMjtcbiAgICAgICAgICBwYWRkaW5nOiAwIDEwcHggMCAwO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgLm1lc3NhZ2Uge1xuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICAgYm9yZGVyOiBub25lO1xuICAgICAgbWFyZ2luOiAwIDAgMCA3cHg7XG4gICAgfVxuXG4gICAgLnNiQ3VzdG9tU2VnbWVudHNDb250YWluZXIge1xuICAgICAgaGVpZ2h0OiA0NDFweDtcbiAgICAgIG92ZXJmbG93OiBhdXRvO1xuICAgIH1cblxuICAgICNzYkN1c3RvbVNlZ21lbnRzIHtcbiAgICAgIG1hcmdpbi10b3A6IDA7XG5cbiAgICAgID4gdGhlYWQgPiB0ciA+IHRoIHtcbiAgICAgICAgcGFkZGluZy1ib3R0b206IDA7XG4gICAgICAgIC8vIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCAjYzAwO1xuICAgICAgfVxuXG4gICAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAgIHRleHQtYWxpZ246IGluaXRpYWw7XG4gICAgICAgIGhlaWdodDogMzBweDtcbiAgICAgICAgY3Vyc29yOiBtb3ZlO1xuXG4gICAgICAgID4gW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Db2xvcjtcbiAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgcGFkZGluZzogMCA1cHggMCAwO1xuICAgICAgICB9XG5cbiAgICAgICAgLnNmLWljb24tY2xvc2Uge1xuICAgICAgICAgIGNvbG9yOiAjNGQ0ZDRkO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgI3NiRmF2b3JpdGVzTW9kYWwge1xuICAgICNzYlNlZ21lbnRzTW9kYWw7XG5cbiAgICAuc2JNb2RhbENvbnRlbnRDb250YWluZXIgLnNiVGFibGUge1xuICAgICAgPiB0Ym9keSA+IHRyIHtcbiAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgYmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgICAgICAgfVxuXG4gICAgICAgID4gdGQge1xuICAgICAgICAgIHBhZGRpbmctdG9wOiAyMHB4O1xuXG4gICAgICAgICAgI3NiRmF2b3JpdGVOYW1lIHtcbiAgICAgICAgICAgIHdpZHRoOiAzMDBweDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyBQcm9kdWN0IFJ1bGUgQWxlcnQgc3R5bGVcbiAgI3NiUHJvZHVjdFJ1bGVBbGVydCB7XG4gICAgbWluLWhlaWdodDogYXV0bztcbiAgICBsaSB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS40O1xuICAgIH1cbiAgfVxuXG4gIC8vIE1EUSBwYWdlIHN0eWxlXG4gICYuc2JNRFEgLnNiUGFnZUJsb2NrIHtcblxuICAgIC5zYlRhYmxlIHtcbiAgICAgID4gdGhlYWQgPiB0ciA+IHRoOmZpcnN0LW9mLXR5cGUsXG4gICAgICA+IHRib2R5ID4gdHIgPiB0ZDpmaXJzdC1vZi10eXBlIHtcbiAgICAgICAgcGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICAgIH1cblxuICAgICAgPiB0aGVhZCA+IHRyID4gdGg6bGFzdC1vZi10eXBlLFxuICAgICAgPiB0Ym9keSA+IHRyID4gdGQ6bGFzdC1vZi10eXBlIHtcbiAgICAgICAgcGFkZGluZy1yaWdodDogQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLy8gTURRIFNlZ21lbnRlZCBQcm9kdWN0cyB0YWJsZVxuICAuc2JNdWx0aVNlZ21lbnQgLnNiVGFibGUge1xuICAgIG1hcmdpbi10b3A6IDEwcHg7XG5cbiAgICAuc2JMaW5lTnVtYmVyIHtcbiAgICAgID4gc3BhbiB7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JFeHBhbmRDb2xsYXBzZSB7XG4gICAgICA+IFtjbGFzc149XCJzYi1pY29uLVwiXSB7XG4gICAgICAgIGZvbnQtc2l6ZTogMS41ZW07XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgICB9XG5cbiAgICAgID4gOm50aC1vZi10eXBlKDIpIHtcbiAgICAgICAgZm9udC1zaXplOiAxLjNlbTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyB0aGUgY2VsbCB3aXRoIHRoZSBleHBhbmQvY29sbGFwc2UgaWNvblxuICAgIC5zYkV4cGFuZCB7XG4gICAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuXG4gICAgICBpIHtcbiAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICBmb250LXNpemU6IDE0cHg7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICAgICAgdG9wOiAycHg7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gYSBcImRldGFpbFwiIHJvdyBvZiBhIHNlZ21lbnRcbiAgICA+IHRib2R5IHtcbiAgICAgID4gdHIuZXhwYW5kZWQgPiB0ZCB7XG4gICAgICAgIGJvcmRlci1ib3R0b206IDA7XG4gICAgICB9XG5cbiAgICAgID4gLnNiRGV0YWlsIHtcbiAgICAgICAgPiB0ZCB7XG4gICAgICAgICAgaGVpZ2h0OiAzMHB4O1xuICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkRldGFpbEJnQ29sb3I7XG4gICAgICAgIH1cblxuICAgICAgICAmOm5vdCgubGFzdERldGFpbFJvdyl7XG4gICAgICAgICAgPiB0ZCB7XG4gICAgICAgICAgICBib3JkZXItYm90dG9tOiAwO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIGxhYmVsIGNvbHVtbiBmb3IgZGV0YWlsIHJvd3NcbiAgICAgICAgPiB0ZDpudGgtY2hpbGQoMikge1xuICAgICAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgICAgIHBhZGRpbmctcmlnaHQ6IDQwcHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IHRmb290ID4gdHI+IHRkOmZpcnN0LW9mLXR5cGUge1xuICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgfVxuXG4gICAgPiB0Zm9vdCA+IHRyPiB0ZDpsYXN0LW9mLXR5cGUge1xuICAgICAgcGFkZGluZy1yaWdodDogQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgfVxuICB9XG5cbiAgLy8gTURRIFN0YW5kYXJkIFByb2R1Y3RzIGFuZCBTZWdtZW50ZWQgUHJvZHVjdHMgY29udGFpbmVyIGVsZW1lbnRzXG4gIC5zYlN0YW5kYXJkIHtcbiAgICBwYWRkaW5nLXRvcDogNDBweDtcblxuICAgICYuc2JFbXB0eVRhYmxlIHtcbiAgICAgIHBhZGRpbmctdG9wOjA7XG4gICAgfVxuXG4gICAgPiBoMiB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgIH1cbiAgfVxuXG4gIC5zYk11bHRpU2VnbWVudCB7XG4gICAgcGFkZGluZy10b3A6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXG4gICAgJi5zYkVtcHR5VGFibGUge1xuICAgICAgcGFkZGluZy10b3A6MDtcbiAgICB9XG5cbiAgICAuc2JTZWdtZW50ZWRUYWJsZUhlYWRlciB7XG4gICAgICBvdmVyZmxvdzogYXV0bztcblxuICAgICAgPiBoMiB7XG4gICAgICAgIHBhZGRpbmctbGVmdDogQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgICAgIGZsb2F0OiBsZWZ0O1xuICAgICAgfVxuXG4gICAgfVxuXG4gICAgLnNiRGltZW5zaW9uSGVhZGVyIHtcbiAgICAgIG1hcmdpbjogMHB4IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgY2xlYXI6IGJvdGg7XG5cbiAgICAgID4gaDIsIGkge1xuICAgICAgICBmbG9hdDogbGVmdDtcbiAgICAgIH1cblxuICAgICAgaSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgICAgIHBhZGRpbmc6IDVweCAwIDAgNXB4O1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiVG9vbHRpcCA+IC5zYlRvb2x0aXBDb250ZW50IHtcbiAgICBkaXNwbGF5OiBub25lO1xuICB9XG5cbiAgLnNiTURRUmlnaHQge1xuICAgIGZsb2F0OiByaWdodDtcbiAgICA+IC5zYlRvb2x0aXAge1xuICAgICAgd2lkdGg6IDElO1xuICAgIH1cbiAgfVxuXG4gIC8vIERyYWcgJiBEcm9wIEhvdmVyIHN0eWxlc1xuICAuc2JHcm91cERyYWdIYW5kbGUge1xuICAgIGN1cnNvcjogbW92ZTtcbiAgfVxuXG4gIC5zYkRyYWdnZWRMaW5lLFxuICAuc2JEcmFnZ2VkRGltZW5zaW9uLFxuICAuc2JEcmFnZ2VkU2VnbWVudCxcbiAgLnNiRHJhZ2dlZEdyb3VwIHtcbiAgICBjb2xvcjogQHNiTGlua0NvbG9yO1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICB9XG5cbiAgLnNiRHJvcFJvd0hvdmVyIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JUYWJsZVJvd0hvdmVyQ29sb3I7XG4gIH1cblxuICAuc2JFbXB0eVRhYmxlSG92ZXIge1xuICAgIHBhZGRpbmctYm90dG9tOiAyMnB4O1xuICB9XG5cbiAgLnNiRW1wdHlUYWJsZUhvdmVyLFxuICAuc2JFbXB0eUdyb3VwSG92ZXIge1xuICAgIGJvcmRlcjogMnB4IHNvbGlkIEBzYkFjY2VudEljb25Db2xvcjtcbiAgICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIH1cblxuICAuc2JHcm91cC5zYkdyb3VwZWQuc2JEcm9wR3JvdXBIb3ZlciB7XG4gICAgYm9yZGVyOiAzcHggc29saWQgQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgIGJvcmRlci1yYWRpdXM6IDRweDtcbiAgfVxuXG4gIGEuc2JEcm9wRGltZW5zaW9uSG92ZXIsIHtcbiAgICBjb2xvcjogI2ZmZjtcbiAgICBjdXJzb3I6IG1vdmU7XG4gICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3I7XG4gIH1cblxuICAuc2JQYWdlcyB7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIHBhZGRpbmc6IDA7XG4gICAgYmFja2dyb3VuZDogI2ZmZjtcblxuICAgIC5zYkJ0biB7XG4gICAgICBmbG9hdDogbm9uZTtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICB9XG5cbiAgICAuc2JEaXNwbGF5ZWRQYWdlIHtcbiAgICAgIGNvbG9yOiBAc2JMaW5rQ29sb3I7XG4gICAgfVxuICB9XG5cbiAgLnNiRHJvcFBhZ2VIb3ZlciB7XG4gICAgY29sb3I6ICNmZmY7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICB9XG5cbiAgdGggPiAubXVsdGlTZWdtZW50QXJyb3cge1xuICAgIGZvbnQtc2l6ZTogMS4yZW0gIWltcG9ydGFudDtcbiAgICAmOmhvdmVyIHtcbiAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICB9XG4gIH1cbiAgXG4gICNzYkhpZGRlbkNvbnRhaW5lciB7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgfVxuXG4gICNzYlRhcmdldEN1c3RvbWVyQW1vdW50V2lkZ2V0IHtcbiAgICB3aWR0aDogMHB4O1xuICAgIGZsb2F0OiByaWdodDtcbiAgICA+IC50Y2FNb2RhbCB7XG4gICAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgICBib3JkZXItdG9wOiBsaWdodGdyYXkgc29saWQgMXB4O1xuICAgICAgYm9yZGVyLWJvdHRvbTogbGlnaHRncmF5IHNvbGlkIDFweDtcbiAgICAgIGJveC1zaGFkb3c6IGxpZ2h0Z3JheSAwcHggMHB4IDEwcHggM3B4O1xuICAgICAgcGFkZGluZzogMTYuNXB4O1xuICAgICAgdG9wOiAtMXB4O1xuICAgICAgcmlnaHQ6IC00NXB4O1xuICAgICAgYmFja2dyb3VuZC1jb2xvcjogd2hpdGU7XG4gICAgICB3aWR0aDogMzMycHg7XG4gICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuXG4gICAgICA+ICNzYlRDQUVycm9yTWVzc2FnZSB7XG4gICAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgICAgbWFyZ2luLXRvcDogMTZweDtcbiAgICAgICAgY29sb3I6IEBzYkVycm9yTWVzc2FnZUZvbnRDb2xvcjtcbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IC5zYkJ0bi50Y2FCdG4ge1xuICAgICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgICAgdG9wOiAwcHg7XG4gICAgICByaWdodDogLTQ1cHg7XG4gICAgICBtYXJnaW46IDhweDtcbiAgICAgIHBhZGRpbmc6IDVweDtcbiAgICAgIGhlaWdodDogaW5pdGlhbDtcblxuICAgICAgPiAuc2YtaWNvbi1jbG9zZSB7XG4gICAgICAgIHRvcDogLTJweDtcbiAgICAgICAgZm9udC1zaXplOiAxNXB4O1xuICAgICAgfVxuICAgIH1cblxuICAgID4gI3RjYUlucHV0IHtcbiAgICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICAgIGZsb2F0OiByaWdodDtcbiAgICAgIHdpZHRoOiAxMTVweDtcbiAgICB9XG4gIH1cblxuICB0ZC5zYlRhcmdldEN1c3RvbWVyQW1vdW50RWRpdGFibGUgPiBzcGFuIHtcbiAgICBjdXJzb3I6IHBvaW50ZXI7XG4gIH1cblxuXG4gIHRkLnNiVGFyZ2V0Q3VzdG9tZXJBbW91bnRTZWdtZW50RWRpdGFibGUge1xuICAgID4gc3BhbiB7XG4gICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgfVxuICAgID4gI3NiVGFyZ2V0Q3VzdG9tZXJBbW91bnRXaWRnZXR7XG4gICAgICBoZWlnaHQ6IDhweDtcbiAgICB9XG4gIH1cblxuICAjc2JUaWVyc01vZGFsIHtcbiAgICAgLnNiTW9kYWxEaWFsb2c7XG4gICAgIG1heC13aWR0aDogODAlO1xuXG4gICAgIC5zYk1vZGFsQ29udGVudENvbnRhaW5lciB7XG4gICAgICAgcGFkZGluZzogMTVweDtcbiAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgICAgbWluLWhlaWdodDogMTAwcHg7XG4gICAgICAgbWF4LWhlaWdodDogNDAwcHg7XG4gICAgICAgb3ZlcmZsb3c6IGF1dG87XG5cbiAgICAgICBpbnB1dCB7XG4gICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICAgIH1cbiAgICAgfVxuXG4gICAgLmRhdGFDZWxsIHtcbiAgICAgIHRleHQtYWxpZ246bGVmdFxuICAgIH1cblxuXHQgI2Rpc2NvdW50VW5pdFNlbGVjdCB7XG5cdCBcdG1hcmdpbi1sZWZ0OiAxMHB4O1xuXHQgXHRwYWRkaW5nLWxlZnQ6IDE1cHg7XG5cdCB9XG5cbiAgICAgI2Rpc2NvdW50U2NoZWR1bGVOYW1lIHtcbiAgICAgICBwYWRkaW5nLWxlZnQ6IDMwcHg7XG5cbiAgICAgICBpbnB1dCB7XG4gICAgICAgICBtaW4td2lkdGg6IDMwMHB4O1xuICAgICAgICAgbWFyZ2luLWxlZnQ6IDEwcHg7XG4gICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICAgICAgcGFkZGluZy1sZWZ0OiAxMHB4O1xuICAgICAgIH1cbiAgICAgfVxuXG4gICAgIC5zZi1pY29uLWVycm9yIHtcbiAgICAgICBjb2xvcjogI2MwMCAhaW1wb3J0YW50O1xuICAgICB9XG5cbiAgICAjZGVsZXRlQWxsQ2hlY2tib3gge1xuICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIH1cblxuICAgICAjZGlzY291bnRVbml0U2VsZWN0IHtcbiAgICAgIHBhZGRpbmctcmlnaHQ6IDIwcHg7XG4gICAgIH1cblxuICAgICAjZXJyb3JNZXNzYWdlIHtcbiAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgIH1cblxuICAgICAuaGlkZUlucHV0Qm9yZGVycyB7XG4gICAgICAgIGlucHV0IHtcbiAgICAgICAgICBib3JkZXI6IG5vbmU7XG4gICAgICAgICAgYmFja2dyb3VuZDogI2ZmZjtcbiAgICAgICAgfVxuICAgICB9XG5cbiAgICAgLmRpc2NvdW50U2NoZWR1bGVSb3cge1xuICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICB9XG5cbiAgICAgLmRpc2NvdW50U2NoZWR1bGVIZWFkZXIge1xuICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICB9XG5cbiAgICAuYWRkQm90dG9tQm9yZGVyIHtcbiAgICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNkOGRkZTY7XG4gICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgfVxuXG4gICAgIC5kaXNjb3VudFNjaGVkdWxlTG9hZGVyIHtcbiAgICBtYXJnaW4tbGVmdDogYXV0bztcbiAgICBtYXJnaW4tcmlnaHQ6IGF1dG87XG4gICAgbWFyZ2luLXRvcDogMjBweDtcbiAgICAgfVxuICAgfVxufVxuXG4ucmVtb3ZlQm94U2hhZG93IHtcbiAgYm94LXNoYWRvdzogbm9uZTtcbn1cblxuLmFkZEJveFNoYWRvdyB7XG4gIGJveC1zaGFkb3c6IDBweCAwcHggMHB4IDE1cHggI0QxRDREODtcbn1cblxuLy8gTGluZSBFZGl0b3IgdG9vbHRpcHMgZm9yIE1EUS4gIEhhdmUgdG8gbWFrZSB0aGlzIGdsb2JhbCBhcyBqUVVJIHB1dHMgYXQgZW5kIG9mIGRvY3VtZW50LCBub3Qgd2l0aGluIG9yaWdpbmFsIHBhcmVudCBlbGVtZW50XG4uc2JMaW5lRWRpdG9yVG9vbHRpcCB7XG4gIHBhZGRpbmc6IDEycHg7XG4gIHRhYmxlIHRkIHtcbiAgICBwYWRkaW5nOiAzcHggMnB4O1xuICAgICY6bnRoLWNoaWxkKDIpIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgIH1cbiAgfVxufVxuXG4uc2JCdG5Ub29sdGlwIHtcbiAgcGFkZGluZzogM3B4O1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JCZ0NvbG9yO1xuICBjb2xvcjogQHNiRm9udENvbG9yO1xuICAtd2Via2l0LWJveC1zaGFkb3c6IDFweCAxcHggMTFweCAjRDFENEQ4O1xuICAtbW96LWJveC1zaGFkb3c6IDFweCAxcHggMTFweCAjRDFENEQ4O1xuICBib3gtc2hhZG93OiAxcHggMXB4IDExcHggI0QxRDREODtcbn1cbiIsIiNzYk5ld1JlbGF0ZWRDb250ZW50e1xuXG4gICNzYk5ld1JlbGF0ZWRDb250ZW50T3B0aW9uc3tcbiAgICBtYXJnaW46IDA7XG5cbiAgICBmaWVsZHNldCB7XG4gICAgICBib3JkZXI6IDA7XG4gICAgICBwYWRkaW5nOiA1cHg7XG5cbiAgICAgID4gbGFiZWwge1xuICAgICAgICBtYXJnaW4tcmlnaHQ6IDEwcHg7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgIHdpZHRoOiAxNzVweDtcbiAgICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICB9XG5cbiAgICAgID4gaW5wdXQsIHNlbGVjdCB7XG4gICAgICAgIHdpZHRoOiAyMDBweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICBiYWNrZ3JvdW5kOiBub25lO1xuICAgIGJvcmRlcjogbm9uZTtcbiAgfVxufVxuIiwiI3NiUHJvZHVjdENvbmZpZ3VyYXRvciB7XG5cbiAgLnNiQ29uZmlnUHJvZHVjdE5hbWUge1xuICAgIG1hcmdpbjogQHNiUGFnZUhlYWRlclRvcCAwIDAgQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cblxuICAvLyB0b29sIGJhcnMgaW4gdGhlIHBhZ2UgdGl0bGVcbiAgLnNiUGFnZVRpdGxlIHtcblxuICAgICYuc3F1ZWV6ZWQge1xuICAgICAgLnNiVG9vbHMge1xuICAgICAgICBwYWRkaW5nOiAwO1xuICAgICAgfVxuICAgIH1cblxuICAgIC5zYkJ1dHRvbnMge1xuICAgICAgZmxvYXQ6IHJpZ2h0O1xuICAgIH1cblxuICAgIC5zYlRvb2xzIHtcbiAgICAgIG1hcmdpbi1yaWdodDogMTBweDtcbiAgICAgIHBhZGRpbmc6IDdweCAwO1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgICAgIGZsb2F0OiByaWdodDtcbiAgICAgIHRyYW5zaXRpb246IGFsbCAuMjVzIGVhc2UtaW47XG5cbiAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgIHBhZGRpbmc6IDhweDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JUb29sU2VwYXJhdG9yIHtcbiAgICAgIGJvcmRlci1yaWdodDogQHNiSGVhZGVyQm9yZGVyQ29sb3I7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICBoZWlnaHQ6IDFweDtcbiAgICAgIHdpZHRoOiAxMHB4O1xuICAgICAgZmxvYXQ6IGxlZnQ7XG4gICAgfVxuXG4gICAgLnNiQnRuIHtcbiAgICAgICY6ZGlzYWJsZWQge1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkRpc2FibGVkQ29sb3I7XG4gICAgICAgIGN1cnNvcjogZGVmYXVsdDtcbiAgICAgIH1cblxuICAgICAgJi5zYkFkZE9wdGlvbiB7XG4gICAgICAgIG1hcmdpbjogMTZweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAuc2JBZGRPcHRpb25Db250YWluZXIge1xuICAgIC5zYkFkZE9wdGlvbiB7XG4gICAgICBib3JkZXI6IDA7XG4gICAgICBtYXJnaW46IDRweCAwIDRweCAwO1xuXG4gICAgICAmOmhvdmVyIHtcbiAgICAgICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgaGVhZGVyIHtcbiAgICBwYWRkaW5nOiBAc2JQYWdlSGVhZGVyVG9wIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXG4gICAgJi5zYlNlY3Rpb24ge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICAgICAgYmFja2dyb3VuZDogQHNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcjtcbiAgICB9XG5cbiAgICAmLnNiRm9vdGVyIHtcbiAgICAgIG1hcmdpbjogMDtcbiAgICAgIGJvcmRlci10b3A6IEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICAgICAgYmFja2dyb3VuZDogQHNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcjtcbiAgICB9XG5cbiAgICAmLm9wdGlvbkxvb2t1cE1vZGUge1xuICAgICAgYm9yZGVyOiBub25lO1xuICAgICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICB9XG5cblxuICAgIC5zYlRpdGxlQ29udGFpbmVyIHtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgIHBhZGRpbmctcmlnaHQ6IDUwcHg7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogdG9wO1xuXG4gICAgICA+IC5zYkZlYXR1cmVJbnN0cnVjdGlvbnMge1xuICAgICAgICBwYWRkaW5nOiAxMHB4IDAgMCAwO1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JGZWF0dXJlQWRkaXRpb25hbEluc3RydWN0aW9ucyB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmU7XG4gICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIHBhZGRpbmctdG9wOiAzcHg7XG4gICAgfVxuXG4gIH1cblxuICAuZmVhdHVyZUNvbnRlbnQge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gIH1cblxuICAuc2JUb3BDb25maWd1cmF0aW9uQXR0cmlidXRlcywgLnNiQm90dG9tQ29uZmlndXJhdGlvbkF0dHJpYnV0ZXMge1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIHBhZGRpbmctdG9wOiAxMHB4O1xuXG4gICAgJi5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuICAgICAgYm9yZGVyOjAgO1xuXG4gICAgICAmLnNiQm90dG9tIHtcbiAgICAgICAgYm9yZGVyLXRvcDogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICAgICAgICBwYWRkaW5nLXRvcDogMzBweDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JDb25maWdBdHRyaWJ1dGVDb2x1bW4ge1xuICAgICAgdmVydGljYWwtYWxpZ246IHRvcDtcbiAgICB9XG5cbiAgICBsYWJlbCB7XG4gICAgICBwYWRkaW5nOjVweDtcbiAgICB9XG5cbiAgICB0ZCB7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgIH1cblxuICAgIGlucHV0IHtcbiAgICAgIG1hcmdpbi1yaWdodDogMzBweDtcblxuICAgICAgJi5oYXNEYXRlcGlja2VyIHtcbiAgICAgICAgd2lkdGg6IDQ1JTtcbiAgICAgIH1cblxuICAgIH1cblxuICAgIC5zYkxhYmVsQ29sIHtcbiAgICAgIHBhZGRpbmctcmlnaHQ6IDEwcHg7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICB9XG5cbiAgICAuc2JEYXRhQ29sIHtcbiAgICAgIHBhZGRpbmc6IDZweCAwO1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcblxuICAgICAgPiBkaXYge1xuXG4gICAgICAgID4gZGl2IHtcbiAgICAgICAgICBwYWRkaW5nLWxlZnQ6IDVweDtcbiAgICAgICAgfVxuXG4gICAgICAgID4gLnJlcXVpcmVkQ29uZmlndXJhdGlvbkF0dHJpYnV0ZSB7XG4gICAgICAgICAgYm9yZGVyLWxlZnQ6ICNjMDAgc29saWQ7XG4gICAgICAgICAgcGFkZGluZy1sZWZ0OiAycHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAucmVxdWlyZXNDb25maWd1cmF0aW9uIHtcbiAgICBib3JkZXItbGVmdDogI2MwMCBzb2xpZDtcbiAgfVxuXG4gIC5jZW50ZXIge1xuICAgIHdpZHRoOiAxMDAlO1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIH1cblxuICAuc2JTZWxlY3Rpb25Db2x1bW4ge1xuICAgIHdpZHRoOiAxJTtcbiAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICB9XG5cbiAgLy8gU2lkZSBQYW5lbFxuICAuc2JPcHRpb25zRmlsdGVyIHtcbiAgICAuc2JQYW5lbDtcbiAgICB0b3A6IDkxcHg7XG5cbiAgICBpbnB1dCB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmU7XG4gICAgfVxuXG4gICAgZGl2IHtcbiAgICAgID4gYSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIE9wdGlvbiBNZXRob2QgQWRkIFNpZGUgUGFuZWxcbiAgLnNiQWRkT3B0aW9uc0ZpbHRlciB7XG4gICAgLnNiUGFuZWw7XG4gICAgdG9wOiA5MXB4O1xuXG4gICAgaW5wdXQge1xuICAgICAgZGlzcGxheTogaW5saW5lO1xuICAgIH1cblxuICAgIGRpdiB7XG4gICAgICA+IGEge1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyB0aGUgXCJYIFByb2R1Y3RzIEZvdW5kXCIgbGFiZWxcbiAgLnNiUmVzdWx0cyB7XG4gICAgbWFyZ2luOiAxNHB4IDAgLThweCAwO1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICB9XG5cbiAgXHQvLyBQYWdlIEJsb2NrIFNlY3Rpb24gb3ZlcnJpZGVzXG4gIC5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuICAgIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gICAgcGFkZGluZzogMDtcbiAgfVxuXG4gIC5zYkdyb3VwcyB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgbWFyZ2luOiAxOHB4IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG4gICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuXG4gICAgPiBhLCBzcGFuIHtcbiAgICAgIGNvbG9yOiBpbmhlcml0O1xuICAgICAgcGFkZGluZzogNnB4IDE2cHg7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgfVxuICAgID4gYS5zZWxlY3RlZCwgc3Bhbi5zZWxlY3RlZCB7XG4gICAgICBib3JkZXItYm90dG9tOiAycHggc29saWQgQHNiVGFiU2VsZWN0ZWRDb2xvcjtcbiAgICB9XG4gICAgPiBhOmhvdmVyLCBzcGFuOmhvdmVyIHtcbiAgICAgIGJvcmRlci1ib3R0b206IDJweCBzb2xpZCBAc2JUYWJTZWxlY3RlZENvbG9yO1xuICAgIH1cbiAgfVxuXG4gIC8vIEEgdGFibGUgb2Ygb3B0aW9ucyAocm93cylcbiAgLnNiVGFibGUge1xuICAgIEByb3dIZWlnaHQ6IEBzYlRhYmxlQ2VsbEhlaWdodDtcbiAgICBtYXJnaW4tdG9wOiA1cHg7XG5cbiAgICAvLyBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblxuICAgID4gdGhlYWQgPiB0ciA+IHRoOm50aC1jaGlsZCgyKSxcbiAgICA+IHRib2R5ID4gdHIgPiB0ZDpudGgtY2hpbGQoMikge1xuICAgICAgd2lkdGg6IDYwcHg7XG4gICAgfVxuXG4gICAgLy8gQWRkIE9wdGlvbiBidXR0b24gb24gdGhlIGxvd2VyIGxlZnQgcm93IG9mIHRoZSB0YWJsZVxuXG4gICAgLy8gdGFibGUgY2VsbHNcbiAgICA+IHRoZWFkID4gdHIgPiB0aCB7XG4gICAgICBwYWRkaW5nLXJpZ2h0OiAxMnB4O1xuICAgICAgcGFkZGluZy1sZWZ0OiAxMnB4O1xuICAgIH1cbiAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICBoZWlnaHQ6IEByb3dIZWlnaHQ7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgcGFkZGluZzogMCAxMnB4O1xuXG5cbiAgICAgIFtjbGFzc149c2ItaWNvbl0ge1xuICAgICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS4yO1xuICAgICAgICBjb2xvcjogQHNiSWNvbkNvbG9yO1xuICAgICAgfVxuXG4gICAgICAmLnJpZ2h0IHtcbiAgICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICB9XG5cblxuICAgICAgJi5zYlF1YW50aXR5Q2VsbCB7XG4gICAgICAgIHdpZHRoOiA3NXB4O1xuICAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG5cbiAgICAgICAgaW5wdXQge1xuICAgICAgICAgIHdpZHRoOiAxMDBweDtcbiAgICAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgIH1cblxuICAgIC5zYkN1cnJlbmN5Q2VsbCB7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICB9XG5cbiAgICA+IHRib2R5IHRyOmxhc3QtY2hpbGQge1xuICAgICAgPiB0ZCB7XG4gICAgICAgIGJvcmRlci1ib3R0b206IG5vbmU7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLndpemFyZENvbmZpZ3VyYXRvciA+IHRhYmxlID4gdGJvZHkgPiB0cjpob3ZlciB7XG4gICAgYmFja2dyb3VuZDogI2ZmZjtcbiAgfVxuXG4gIC5zYkxvYWRNb3JlIHtcbiAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgaGVpZ2h0OiA2NXB4O1xuICAgIHRvcDogOTQlO1xuICAgIHdpZHRoOiAxMDAlO1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS41O1xuICAgIHBhZGRpbmctdG9wOiAxNXB4O1xuICAgIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gICAgZGlzcGxheTogbm9uZTtcblxuICAgICYuc2JTaG93TG9hZGluZyB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgfVxuICB9XG4gIC5zZi1pY29uLXdhcm5pbmcge1xuICAgIGNvbG9yOiAjNTg3NmEzO1xuICAgIGZvbnQtc2l6ZTogMjBweDtcbiAgfVxufVxuIiwiLy8gUHJvZHVjdCBTZWFyY2hcbiNzYlByb2R1Y3RTZWFyY2gge1xuICAuc2JTZWFyY2hSZXN1bHRzO1xuXG4gIC5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuICAgIGJhY2tncm91bmQ6IG5vbmU7XG4gICAgbWFyZ2luOiAwO1xuICAgIHBhZGRpbmc6IDA7XG4gIH1cblxuICAuc2JQYWdlVGl0bGUge1xuICAgIC5zYlRvb2xzIHtcbiAgICAgIG1hcmdpbi1yaWdodDogMTBweDtcbiAgICAgIC8vIHBhZGRpbmc6IDdweCAwO1xuICAgICAgLy8gZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcblxuICAgICAgPiAuc2JUb29sIHtcbiAgICAgICAgYmFja2dyb3VuZDogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICBwYWRkaW5nOiA3cHg7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiVGFibGUge1xuICAgID4gdGhlYWQgPiB0ciA+IHRoOmZpcnN0LW9mLXR5cGUsXG4gICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICB9XG5cbiAgICAuc2JTZWxlY3Rpb25IZWFkZXIge1xuICAgICAgd2lkdGg6IDElXG4gICAgfVxuXG4gICAgdGJvZHkge1xuICAgICAgJi5jbG9zZSA+IC5zYkdyb3VwUm93e1xuICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgfVxuICAgICAgXG4gICAgICAuc2JHcm91cE5hbWUge1xuICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgICAgZm9udC13ZWlnaHQ6IGJvbGQ7XG4gICAgICB9XG5cbiAgICAgIC5zYkdyb3VwTmFtZVJvdyB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkhlYWRlckJnQ29sb3I7XG4gICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgXG4gICAgICAgIGkge1xuICAgICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplICogMS4yNTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICAgIHRmb290ID4gdHIuc2JQcm9kdWN0UGFnZXMge1xuXG4gICAgICA+IHRkIHtcbiAgICAgICAgYm9yZGVyLWJvdHRvbTogbm9uZTtcblxuICAgICAgICAuc2JQYWdlcyB7XG4gICAgICAgICAgZm9udC1zaXplOiAwLjllbTtcbiAgICAgICAgICBtYXJnaW4tdG9wOiAxMHB4O1xuICAgICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcblxuICAgICAgICAgID4gLnNiQnV0dG9ucyB7XG4gICAgICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiQmdDb2xvcjtcblxuICAgICAgICAgICAgPiAuc2JCdG4ge1xuICAgICAgICAgICAgICBwYWRkaW5nLXRvcDogNnB4O1xuICAgICAgICAgICAgICBjb2xvcjogQHNiR3JvdXBCdG5Gb250Q29sb3I7XG5cbiAgICAgICAgICAgICAgJi5zYi1pY29uLWxlZnQtZGlyLFxuICAgICAgICAgICAgICAmLnNiLWljb24tcmlnaHQtZGlyIHtcbiAgICAgICAgICAgICAgICBmb250LXNpemU6IDEuN2VtO1xuICAgICAgICAgICAgICAgIHBhZGRpbmctdG9wOiAzcHg7XG4gICAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgICAmLmRpc2FibGVkIHtcbiAgICAgICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gICAgICAgICAgICAgICAgY29sb3I6IEBzYkdyb3VwQnRuRGlzYWJsZWRGb250Q29sb3I7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG5cbiAgICAgICAgICAuc2JQYWdlU2VsZWN0b3Ige1xuICAgICAgICAgICAgcGFkZGluZzogMCAxMHB4O1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXG4gICAgICAgICAgICA+IGlucHV0IHtcbiAgICAgICAgICAgICAgd2lkdGg6IDQ1cHg7XG4gICAgICAgICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIFxuICAgICAgJjpob3ZlciB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlRhYmxlUm93SG92ZXJDb2xvcjtcblxuICAgICAgICA+IHRkIC5zYlBhZ2VzID4gLnNiQnV0dG9uc3tcbiAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JUYWJsZVJvd0hvdmVyQ29sb3I7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cblxuLy8gRmlsdGVkIGFuZCBHdWlkZWQgU2VsbGluZyBwYW5lbHMgb24gcmlnaHQgc2lkZSBvZiBwYWdlXG4uc2JQcm9kdWN0RmlsdGVyLCAjc2JHdWlkZWRNb2RhbC5zYkd1aWRlZCB7XG4gIC5zYlBhbmVsO1xuXG4gIGRpdiB7XG4gICAgPiBhIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgZGlzcGxheTogZmxleDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIH1cbiAgfVxuXG4gIGZpZWxkc2V0PnNwYW4ge1xuICAgID4gaW5wdXRbdHlwZT1jaGVja2JveF0ge1xuICAgICAgZGlzcGxheTogbm9uZTtcbiAgICB9XG4gIH1cblxuICBsYWJlbD5zcGFuIHtcbiAgICA+IGlucHV0W3R5cGU9Y2hlY2tib3hdIHtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgfVxuICB9XG59XG5cbi5zYlByb2R1Y3RzIHtcbiAgdHJhbnNpdGlvbjogLjAycztcbn1cblxuLy8gR3VpZGVkIFNlbGxpbmdcbiNzYkd1aWRlZE1hc2sge1xuICAuc2JNb2RhbE1hc2s7XG5cbiAgJi5jbG9zZSB7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgfVxufVxuXG4jc2JHdWlkZWRNb2RhbC5zYkd1aWRlZE1vZGFsIHtcbiAgLnNiTW9kYWxEaWFsb2c7XG4gIG1heC13aWR0aDogNDgwcHg7XG5cbiAgJi5jbG9zZSB7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgfVxuXG4gID4gLnNiRmllbGRDb257XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICBvdmVyZmxvdzogYXV0bztcbiAgfVxuXG4gIGZpZWxkc2V0IHtcbiAgICBwYWRkaW5nOiAxMHB4O1xuICAgIGJvcmRlcjogMDtcbiAgICBmb250LXNpemU6IDEuNGVtO1xuXG4gICAgPiBsYWJlbCB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgcGFkZGluZzogMCAwIDVweCA3cHg7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgIH1cblxuICAgID4gc3BhbiB7XG4gICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgID4gaW5wdXRbdHlwZT1jaGVja2JveF0ge1xuICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgfVxuICAgIH1cblxuICAgIGlucHV0LCBzZWxlY3Qge1xuICAgICAgZm9udC1zaXplOiBpbmhlcml0ICFpbXBvcnRhbnQ7XG4gICAgICBtYXJnaW4tbGVmdDogNnB4O1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgIG1pbi13aWR0aDogMTAwcHg7XG4gICAgfVxuXG4gICAgPiAqW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICBjb2xvcjogQHNiSWNvbkNvbG9yO1xuICAgIH1cbiAgfVxuXG59XG5cbmRpdi5jaGF0dGVyRm9sbG93IHtcbiAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbn1cblxuLmNoYXR0ZXJGb2xsb3cgYSB7XG4gIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgY29sb3I6ICMwMDAwMDA7XG4gIGN1cnNvcjogcG9pbnRlcjtcbn1cblxuLmNoYXR0ZXJGb2xsb3cgLmZvbGxvd0ljb24ge1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoL2ltZy9mZWVkcy9mb2xsb3dfc3ByaXRlLnBuZyk7XG4gIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gIGJhY2tncm91bmQtcG9zaXRpb246IDAgMDtcbiAgd2lkdGg6IGF1dG87XG4gIGhlaWdodDogMjBweDtcbiAgbWFyZ2luLXRvcDogN3B4O1xuICBtYXJnaW4tbGVmdDogM3B4OyAgXG59XG5cbi5jaGF0dGVyRm9sbG93IC5jaGVja0ljb24ge1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoL2ltZy9mZWVkcy9mb2xsb3dfc3ByaXRlLnBuZyk7XG4gIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gIGJhY2tncm91bmQtcG9zaXRpb246IDAgLTI3cHg7XG4gIHdpZHRoOiBhdXRvO1xuICBoZWlnaHQ6IDIwcHg7XG4gIG1hcmdpbi10b3A6IDdweDtcbiAgbWFyZ2luLWxlZnQ6IDNweDtcbn1cblxuLmNoYXR0ZXJGb2xsb3cgLnVuZm9sbG93SWNvbiB7XG4gIGJhY2tncm91bmQtaW1hZ2U6IHVybCgvaW1nL2ZlZWRzL2ZvbGxvd19zcHJpdGUucG5nKTtcbiAgYmFja2dyb3VuZC1yZXBlYXQ6IG5vLXJlcGVhdDtcbiAgYmFja2dyb3VuZC1wb3NpdGlvbjogMCAtNTRweDtcbiAgd2lkdGg6IGF1dG87XG4gIGhlaWdodDogMjBweDtcbiAgbWFyZ2luLXRvcDogN3B4O1xuICBtYXJnaW4tbGVmdDogM3B4O1xufVxuXG4uY2hhdHRlckZvbGxvdyAuaGlvbiB7XG4gIGJhY2tncm91bmQtcG9zaXRpb246IDAgLTc1cHg7XG59IiwiLy8gU2VhcmNoIHJlc3VsdHMgZGlzcGxheWVkXG4jc2JTdWJzY3JpcHRpb25TZWFyY2gge1xuICAuc2JTZWFyY2hSZXN1bHRzO1xuXG4gIC5zYlBhZ2VUaXRsZSB7XG5cbiAgICAmLnNxdWVlemVkIHtcbiAgICAgIC5zYlRvb2xzIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JUb29scyB7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDEwcHg7XG4gICAgICBwYWRkaW5nOiA3cHggMDtcblxuICAgICAgPiAuc2JUb29sIHtcbiAgICAgICAgcGFkZGluZzogOHB4O1xuICAgICAgfVxuICAgIH1cbiAgfVxufVxuXG4vLyBTaWRlIHBhbmVsXG4uc2JTdWJzY3JpcHRpb25GaWx0ZXIge1xuICAuc2JQYW5lbDtcblxuICBpbnB1dCB7XG4gICAgZGlzcGxheTogaW5saW5lO1xuICB9XG5cbiAgZGl2IHtcbiAgICA+IGEge1xuICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICBkaXNwbGF5OiBmbGV4O1xuICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgfVxuICB9XG59XG4iLCIvLyBVc2VkIGZvciB0aGUgQ2xvbmVQcm9kdWN0Q2hpbGRyZW4sIENsb25lTGluZUl0ZW1zLCBhbmQgQ2xvbmVRdW90ZVRlbXBsYXRlUmVsYXRlZCBwYWdlc1xuLy8gQWxzbyBhZGRlZCBSZWZyZXNoUHJpY2luZyBQYWdlc1xuLy8gQWxzbyBhZGRlZCBQcmV2aWV3T3Bwb3J0dW5pdHkgcGFnZVxuI3NiQ2xvbmVSZWxhdGVkLCAjc2JSZWZyZXNoUHJpY2VzLCAjc2JQcmV2aWV3QXBwcm92YWxzLCAjc2JMaXN0QXBwcm92YWxzIHtcblxuXHRiYWNrZ3JvdW5kOiBAc2JQYWdlQmdDb2xvcjtcblx0Y29sb3I6IEBzYkZvbnRDb2xvcjtcblx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRmb250LWZhbWlseTogQHNiRm9udDtcblxuXHQuc2JQYWdlVGl0bGUge1xuXHRcdHRleHQtYWxpZ246IGxlZnQ7XG5cblx0XHRoMSB7XG5cdFx0XHRmb250LXNpemU6IEBzYkZvbnRTaXplICogMjtcblx0XHQgIFx0Zm9udC13ZWlnaHQ6IDMwMDtcblx0XHQgICAgZm9udC1mYW1pbHk6IEBzYkZvbnQ7XG5cdFx0ICAgIGNvbG9yOiBAc2JGb250Q29sb3I7XG5cdFx0fVxuXHRcdGgyIHtcblx0XHQgIFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuMjtcbiAgICAgICAgICAgIGNvbG9yOiBAc2JGb250Q29sb3I7XG5cdFx0fVxuXG5cdFx0LnNmLWljb24tY29weTpiZWZvcmUsIC5zZi1pY29uLXJlZnJlc2g6YmVmb3JlLCAuc2YtaWNvbi1hcHByb3ZhbDpiZWZvcmUge1xuXHRcdFx0bWFyZ2luLXRvcDogMTBweDtcblx0XHRcdHBvc2l0aW9uOiBpbmhlcml0O1xuXHRcdH1cblxuXHRcdC5zZi1pY29uLXBvc3Q6YmVmb3JlIHtcblx0XHRcdHBvc2l0aW9uOiBpbmhlcml0O1xuXHRcdH1cblxuXHRcdC5zZi1pY29uLWFwcHJvdmFsOmJlZm9yZSB7XG5cdFx0XHRtYXJnaW4tdG9wOiAwcHg7XG5cdFx0fVxuXG5cdFx0LnJlc2l6ZSB7XG5cdFx0XHRwYWRkaW5nOiAycHggMTBweDtcblx0XHR9XG5cdH1cblxuXHQubWVzc2FnZSB7XG5cdFx0cGFkZGluZzogMTBweDtcblx0XHRtYXJnaW46IDE4cHggMjRweDtcblx0XHQubWVzc2FnZVRleHQge1xuXHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcblx0XHRcdGg0IHtcblx0XHRcdFx0cGFkZGluZzogMCA0cHg7XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZTtcblx0XHRcdFx0Zm9udC13ZWlnaHQ6IDMwMDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQuc2JCdG5zIHtcblx0XHRmb250LXNpemU6IEBzYkZvbnRTaXplICogMC45O1xuXHRcdGJvcmRlci1yYWRpdXM6IDA7XG5cdFx0dmVydGljYWwtYWxpZ246IHRvcDtcblx0XHRmbG9hdDogcmlnaHQ7XG5cblx0XHQuc2JCdG4ge1xuXHRcdFx0Ym9yZGVyLXJhZGl1czogMDtcblxuXHRcdFx0JjpmaXJzdC1vZi10eXBlIHtcblx0XHRcdFx0Ym9yZGVyLXRvcC1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuXHRcdFx0XHRib3JkZXItYm90dG9tLWxlZnQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG5cdFx0XHR9XG5cblx0XHRcdCY6bGFzdC1vZi10eXBlIHtcblx0XHRcdFx0Ym9yZGVyLWxlZnQ6IDA7XG5cdFx0XHRcdGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG5cdFx0XHRcdGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0Ly8gQ29udGFpbmVyIGZvciBlYWNoIHJlbGF0ZWQgbGlzdFxuXHQuc2JHcm91cCB7XG5cdCAgICA+IGhlYWRlciB7XG5cdCAgICAgICAgbWFyZ2luOiAwO1xuXHQgICAgICAgIGJvcmRlcjogMDtcblx0ICAgICAgICBwYWRkaW5nOiBAc2JQYWdlSGVhZGVyVG9wIC0gNXB4IEBzYlBhZ2VIZWFkZXJMZWZ0IEBzYlBhZ2VIZWFkZXJUb3AgLSAxMHB4O1xuXHQgICAgICAgIGJvcmRlci1ib3R0b206IEBzYkNvbnRlbnRCb3JkZXI7XG4gICAgICBcdH1cblxuICAgICAgXHQuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICAgIFx0XHRwYWRkaW5nLWJvdHRvbTogNnB4O1xuXHRcdCAgXHR0ZXh0LWFsaWduOiBsZWZ0O1xuXG4gICAgICBcdFx0PiBoMyB7XG5cdFx0ICAgIFx0Zm9udC1mYW1pbHk6IEBzYkZvbnQ7XG5cdFx0XHQgIFx0Zm9udC13ZWlnaHQ6IDMwMDtcblx0XHRcdH1cbiAgICAgIFx0fVxuXG5cdCAgICBtYXJnaW46IEBzYlBhZ2VIZWFkZXJUb3AgQHNiUGFnZUhlYWRlckxlZnQ7XG5cdCAgICBib3JkZXI6IEBzYkNvbnRlbnRCb3JkZXI7XG5cdCAgICBib3JkZXItcmFkaXVzOiAzcHg7XG4gIFx0fVxuXG5cdC8vIEJ1dHRvbnMgdG8gZXhwYW5kIGFuZCBjb250cmFjdCByZWxhdGVkIGxpc3Rcblx0LnRvZ2dsZUJ1dHRvbiB7XG5cdFx0ZmxvYXQ6IHJpZ2h0O1xuXHR9XG5cblx0Ly8gVGFibGUgZm9yIGVhY2ggcmVsYXRlZCBsaXN0XG5cdC50YWJsZUNvbnRhaW5lciB7XG5cdFx0ZGlzcGxheTogbm9uZTtcblx0fVxuXG5cdC5zYlRhYmxlIHtcblx0ICAgIEByb3dIZWlnaHQ6IEBzYlRhYmxlQ2VsbEhlaWdodDtcblx0ICAgIEBpbmRlbnQ6IDEwcHggKyBAc2JQYWdlSGVhZGVyTGVmdDtcblxuXHQgICAgLnJmSGVhZCB7XG5cdCAgICBcdGJhY2tncm91bmQ6IEBzYkNvbnRlbnRCZ0NvbG9yO1xuXHQgICAgfVxuXG5cdCAgICAvLyBwYWRkaW5nIGZvciBmaXJzdCBhbmQgbGFzdCBjb2x1bW5zXG5cdCAgICA+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuXHQgICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG5cdCAgICAgIFx0cGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcblx0ICAgIH1cblx0ICAgID4gdGhlYWQgPiB0ciA+IHRoOmxhc3Qtb2YtdHlwZSxcblx0ICAgID4gdGJvZHkgPiB0ciA+IHRkOmxhc3Qtb2YtdHlwZSB7XG5cdCAgICAgIFx0cGFkZGluZy1yaWdodDogQHNiUGFnZUhlYWRlckxlZnQ7XG5cdCAgICB9XG5cdCAgICA+IHRib2R5ID4gdHI6bGFzdC1vZi10eXBlID4gdGQge1xuXHQgICAgICBcdGJvcmRlci1ib3R0b206IG5vbmU7XG5cdCAgICB9XG5cblx0ICAgID4gdGhlYWQgPiB0ciA+IHRoIHtcblx0ICAgICAgXHRoZWlnaHQ6IEByb3dIZWlnaHQgKiAwLjU7XG5cdCAgICB9XG5cblx0ICAgIC8vIHRhYmxlIGNlbGxzXG5cdCAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG5cdCAgICBcdHBhZGRpbmc6IEByb3dIZWlnaHQgKiAwLjEgQHJvd0hlaWdodCAqIDAuMjtcblx0ICAgICAgXHRoZWlnaHQ6IEByb3dIZWlnaHQgKiAwLjU7XG5cdCAgICAgIFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0ICAgICAgXHR0ZXh0LWFsaWduOiBsZWZ0O1xuXHRcdH1cblxuXHRcdD4gdGZvb3QgPiB0ciB7XG5cdFx0XHQ+IHRkIHtcblx0XHRcdFx0dGV4dC1hbGlnbjogbGVmdDtcblx0XHQgICAgXHRwYWRkaW5nLXRvcDogQHJvd0hlaWdodCAqIDAuMTtcblx0XHQgICAgXHRwYWRkaW5nLWJvdHRvbTogQHJvd0hlaWdodCAqIDAuMTtcblx0XHQgICAgXHRwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXHRcdFx0XHRoZWlnaHQ6IEByb3dIZWlnaHQgKiAwLjQ7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0dGJvZHkgPiB0cjpob3ZlciB7XG5cdFx0ICBcdGJhY2tncm91bmQ6IG5vbmU7XG5cdFx0fVxuXHR9XG5cbn1cbiIsIi8vIEZhdm9yaXRlIE1hbmFnZXJcbiNzYkZhdm9yaXRlc01hbmFnZXIge1xuXG4gIC5zYlBhZ2VUaXRsZSB7XG4gICAgLnNiVG9vbHMge1xuICAgICAgbWFyZ2luLXJpZ2h0OiAxMHB4O1xuXG4gICAgICA+IC5zYlRvb2wge1xuICAgICAgICBiYWNrZ3JvdW5kOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gICAgICAgIHBhZGRpbmc6IDdweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAudG9wTXNnIHtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgcGFkZGluZzogMzJweFxuICB9XG5cbiAgLmJvdE1zZyB7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICB9XG5cbiAgLnNiVGFibGUge1xuICAgID4gdGhlYWQgPiB0ciA+IHRoOmZpcnN0LW9mLXR5cGUsXG4gICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICB9XG5cbiAgICAuc2JTZWxlY3Rpb25IZWFkZXIge1xuICAgICAgd2lkdGg6IDElXG4gICAgfVxuXG4gICAgLnNiRmF2b3JpdGVIZWFkZXIge1xuICAgICAgd2lkdGg6IDE2MHB4O1xuICAgIH1cblxuICAgICAgLnNiRGVzY3JpcHRpb24ge1xuICAgICAgICB3aWR0aDogNTAlO1xuICAgICAgfVxuXG4gICAgdGJvZHkge1xuICAgICAgdHIge1xuICAgICAgICB0ZCB7XG4gICAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuICAgICAgICAgIGkge1xuICAgICAgICAgICAgY29sb3I6IEBzYkxpbmtDb2xvcjtcbiAgICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgICBjb2xvcjogQHNiRm9udENvbG9yO1xuICAgICAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgI3NiRmF2b3JpdGVzTWFuYWdlck1hc2sge1xuICAgIC5zYk1vZGFsTWFzaztcblxuICAgICYuY2xvc2Uge1xuICAgICAgZGlzcGxheTogbm9uZTtcbiAgICB9XG4gIH1cblxuICAjc2JGYXZvcml0ZXNNYW5hZ2VyTW9kYWwge1xuICAgIC5zYk1vZGFsRGlhbG9nO1xuXG4gICAgbWluLWhlaWdodDogMTYwcHg7XG4gICAgbWF4LXdpZHRoOiA0MDBweDtcblxuICAgIC5zYk1vZGFsQ29udGVudENvbnRhaW5lciB7XG4gICAgICB1bCB7XG4gICAgICAgIC13ZWJraXQtcGFkZGluZy1lbmQ6IDBweDtcbiAgICAgIH1cblxuICAgICAgLnNiVGFibGUge1xuICAgICAgICAuc2JBY3Rpb25zIHtcbiAgICAgICAgICB3aWR0aDogMSU7XG4gICAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLmZvcm0tY29udHJvbCB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgd2lkdGg6IDEwMCU7XG4gICAgaGVpZ2h0OiAzNHB4O1xuICAgIHBhZGRpbmc6IDZweCAxMnB4O1xuICAgIGZvbnQtc2l6ZTogMTRweDtcbiAgICBsaW5lLWhlaWdodDogMS40Mjg1NzE0MztcbiAgICBjb2xvcjogIzU1NTtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmO1xuICAgIGJhY2tncm91bmQtaW1hZ2U6IG5vbmU7XG4gICAgYm9yZGVyOiAxcHggc29saWQgI2NjYztcbiAgICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIH1cblxuICAuc2JWYWxpZGF0aW9uRXJyb3JzIHtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICBwYWRkaW5nOiA1cHggMTVweDtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgIGNvbG9yOiAjYzAwO1xuICB9XG5cbiAgLmludmFsaWQge1xuICAgIGJvcmRlci1jb2xvcjogI2MwMDtcbiAgfVxuXG4gIC5kcm9wZG93bi1tZW51IHtcbiAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgdG9wOiAxMDAlO1xuICAgIGxlZnQ6IDA7XG4gICAgei1pbmRleDogMTAwMDtcbiAgICBkaXNwbGF5OiBub25lO1xuICAgIGZsb2F0OiBsZWZ0O1xuICAgIG1pbi13aWR0aDogMTYwcHg7XG4gICAgcGFkZGluZzogNXB4IDA7XG4gICAgbWFyZ2luOiAycHggMCAwO1xuICAgIGZvbnQtc2l6ZTogMTRweDtcbiAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgIGxpc3Qtc3R5bGU6IG5vbmU7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZjtcbiAgICBib3JkZXI6IDFweCBzb2xpZCByZ2JhKDAsMCwwLC4xNSk7XG4gICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICAgIGJveC1zaGFkb3c6IDAgNnB4IDEycHggcmdiYSgwLDAsMCwuMTc1KTtcbiAgICBiYWNrZ3JvdW5kLWNsaXA6IHBhZGRpbmctYm94O1xuICB9XG5cbiAgLmRyb3Bkb3duLW1lbnUgPiBsaSA+IGEge1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIHBhZGRpbmc6IDNweCAyMHB4O1xuICAgIGNsZWFyOiBib3RoO1xuICAgIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gICAgbGluZS1oZWlnaHQ6IDEuNDI4NTcxNDM7XG4gICAgY29sb3I6ICMzMzM7XG4gICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgfVxuICAuZHJvcGRvd24tbWVudSA+IGxpID4gYTpob3ZlcixcbiAgLmRyb3Bkb3duLW1lbnUgPiBsaSA+IGE6Zm9jdXMge1xuICAgIGNvbG9yOiAjMjYyNjI2O1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjZjVmNWY1O1xuICB9XG5cbiAgLmRyb3Bkb3duLW1lbnUgPiAuYWN0aXZlID4gYSxcbiAgLmRyb3Bkb3duLW1lbnUgPiAuYWN0aXZlID4gYTpob3ZlcixcbiAgLmRyb3Bkb3duLW1lbnUgPiAuYWN0aXZlID4gYTpmb2N1cyB7XG4gICAgY29sb3I6ICNmZmY7XG4gICAgdGV4dC1kZWNvcmF0aW9uOiBub25lO1xuICAgIGJhY2tncm91bmQtY29sb3I6ICMzMzdhYjc7XG4gICAgb3V0bGluZTogMDtcbiAgfVxuXG59XG5cblxuIiwiLy8gVXNlZCBmb3IgdGhlIGJsb2NrIHByaWNlIGFuZCBjb3N0IHNjaGVkdWxlIHBhZ2VzXG4jc2JCbG9ja1ByaWNlIHtcblxuXHRiYWNrZ3JvdW5kOiBAc2JQYWdlQmdDb2xvcjtcblx0Y29sb3I6IEBzYkZvbnRDb2xvcjtcblx0Zm9udC1mYW1pbHk6IEBzYkZvbnQ7XG5cdHBhZGRpbmctdG9wOiAxMHB4O1xuICAgIHBhZGRpbmctYm90dG9tOiAxMHB4O1xuXG5cdCNzYlByaWNlQm9va0dyb3VwIHtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHR9XG5cbiAgICAjc2JDbG9uZVByaWNlQm9va0dyb3VwIHtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICBwYWRkaW5nLWxlZnQ6IDEwMHB4O1xuXHR9XG5cbiAgICAuc2JQcmljZUJvb2tUZXh0IHtcbiAgICAgICAgcGFkZGluZzogMTBweDtcblx0fVxuXG5cdC5zYkNsb25lRnJvbVByaWNlQm9vayB7XG5cdCAgICBtYXJnaW4tbGVmdDogMTVweDtcblx0ICAgIHBhZGRpbmctYm90dG9tOiA0cHg7XG5cdH1cblxuXHQuc2JQcmljZUJvb2tTZWxlY3Qge1xuXHQgICAgcGFkZGluZy1ib3R0b206IDJweDtcblx0fVxufSJdLCJmaWxlIjoic2IuY3NzIiwic291cmNlUm9vdCI6Ii9zb3VyY2UvIn0= */
