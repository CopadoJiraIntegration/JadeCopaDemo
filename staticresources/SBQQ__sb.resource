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
  height: 26px;
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
.sbDialogMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(126, 140, 153, 0.8);
  display: block;
  visibility: hidden;
  z-index: 9000;
}
.sbDialogMask.open,
.sbDialog.open {
  visibility: visible;
}
.sbDialog,
.sbDialog * {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}
.sbDialog {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 9001;
  display: block;
  visibility: hidden;
}
.sbDialog > .sbDialogCon {
  border-radius: 4px;
  position: relative;
  margin: 0 auto;
  background: #fff;
}
.sbDialog > .sbDialogCon > header {
  display: block;
  position: relative;
  padding: 24px 16px;
  text-align: center;
  border-bottom: 2px solid #d8dde6;
}
.sbDialog > .sbDialogCon > header > h2 {
  line-height: 20px;
  font-size: 24px;
}
.sbDialog > .sbDialogCon > header > button {
  position: absolute;
  display: inline-block;
  top: -46px;
  right: -8px;
  width: 48px;
  height: 48px;
  color: #fff;
  background: none;
  border: 0;
  outline: 0;
  font-size: 24px;
}
.sbDialog > .sbDialogCon > .sbDialogBody {
  padding: 16px;
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
  font-size: 14px;
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
  height: 26px;
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
.sbPageTitle h2,
.sbPageTitle h3 {
  white-space: nowrap;
  transition: all 0.25s ease-in;
}
.sbPageTitle h2 {
  font-size: 14px;
  color: #54698d;
  display: block;
  font-weight: 400;
  padding-bottom: 4px;
}
.sbPageTitle h3 {
  font-size: 14px;
  color: #54698d;
  display: block;
  font-weight: 400;
  padding-top: 4px;
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
  font-size: 14px;
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
  border-radius: 4px;
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
  font-size: 14px;
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
  font-size: 14px;
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
  font-size: 14px;
  color: inherit;
  border-collapse: collapse;
  border-spacing: 0;
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
  border-bottom: 0;
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
.sbTable tr.sbUpgradeOption > td {
  color: #aaaaaa;
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
.sbTable tbody .sbMaster input[type=checkbox] {
  -ms-transform: scale(0.7);
  /* IE */
  -moz-transform: scale(0.7);
  /* FF */
  -webkit-transform: scale(0.7);
  /* Safari and Chrome */
}
.sbTable tbody .sbMaster i {
  font-size: 200%;
  color: #ffffff;
  background-color: #CFD7E6;
  border-radius: .18rem;
  text-align: center;
}
.sbTable tbody .sbMaster i.selectedMaster {
  background: #7F8DE1;
}
.sbTable tbody .sbMaster i.selectedMaster:hover {
  cursor: pointer;
}
.sbTable tbody .sbMaster i.notSelectedMaster {
  background: #CFD7E6;
}
.sbTable tbody .sbMaster i.notSelectedMaster:hover {
  cursor: pointer;
}
.sbTable input :not(.sbBtn),
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
  font-size: 12px;
}
.sbTable > tbody > tr > td {
  border-bottom: 1px solid #D8DDE6;
  padding: 8px 6px 6px;
  color: #16325C;
  font-size: 14px;
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
  font-size: 14px;
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
  font-size: 14px;
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
  font-size: 14px;
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
  src: url('../font/sf-icons.eot?87742446');
  src: url('../font/sf-icons.eot?87742446#iefix') format('embedded-opentype'), url('../font/sf-icons.svg?87742446#sf-icons') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'sf-icons';
  src: url('data:application/octet-stream;base64,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') format('woff'), url('data:application/octet-stream;base64,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6D0AAOg9AAAAPgAA6D4AAOg+AAAAPwAA6D8AAOg/AAAAQAAA6EAAAOhAAAAAQQAA6EEAAOhBAAAAQgAA6EIAAOhCAAAAQwAA6EMAAOhDAAAARAAA6EQAAOhEAAAARQAA6EUAAOhFAAAARgAA6EYAAOhGAAAARwAA6EcAAOhHAAAASAAA6EgAAOhIAAAASQAA6EkAAOhJAAAASgAA6EoAAOhKAAAASwAA6EsAAOhLAAAATAAA6EwAAOhMAAAATQAA6E0AAOhNAAAATgAA6E4AAOhOAAAATwAA6E8AAOhPAAAAUAAA6FAAAOhQAAAAUQAA6FEAAOhRAAAAUgAA6FIAAOhSAAAAUwAA6FMAAOhTAAAAVAAA6FQAAOhUAAAAVQAA6FUAAOhVAAAAVgAA6FYAAOhWAAAAVwAA6FcAAOhXAAAAWAAA6FgAAOhYAAAAWQAA6FkAAOhZAAAAWgAA6FoAAOhaAAAAWwAA6FsAAOhbAAAAXAAA6FwAAOhcAAAAXQAA6F0AAOhdAAAAXgAA6F4AAOheAAAAXwAA6F8AAOhfAAAAYAAA6GAAAOhgAAAAYQAA6GEAAOhhAAAAYgAA6GIAAOhiAAAAYwAA6GMAAOhjAAAAZAAA6GQAAOhkAAAAZQAA6GUAAOhlAAAAZgAA6GYAAOhmAAAAZwAA6GcAAOhnAAAAaAAA6GgAAOhoAAAAaQAA6GkAAOhpAAAAagAA6GoAAOhqAAAAawAA6GsAAOhrAAAAbAAA6GwAAOhsAAAAbQAA6G0AAOhtAAAAbgAA6G4AAOhuAAAAbwAA6G8AAOhvAAAAcAAA6HAAAOhwAAAAcQAA6HEAAOhxAAAAcgAA6HIAAOhyAAAAcwAA6HMAAOhzAAAAdAAA6HQAAOh0AAAAdQAA6HUAAOh1AAAAdgAA6HYAAOh2AAAAdwAA6HcAAOh3AAAAeAAA6HgAAOh4AAAAeQAA6HkAAOh5AAAAegAA6HoAAOh6AAAAewAA6HsAAOh7AAAAfAAA6HwAAOh8AAAAfQAA6H0AAOh9AAAAfgAA6H4AAOh+AAAAfwAA6H8AAOh/AAAAgAAA6IAAAOiAAAAAgQAA6IEAAOiBAAAAggAA6IIAAOiCAAAAgwAA6IMAAOiDAAAAhAAA6IQAAOiEAAAAhQAA6IUAAOiFAAAAhgAA6IYAAOiGAAAAhwAA6IcAAOiHAAAAiAAA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cgBpAGcAaAB0ACAAKABDACkAIAAyADAAMQA5ACAAYgB5ACAAbwByAGkAZwBpAG4AYQBsACAAYQB1AHQAaABvAHIAcwAgAEAAIABmAG8AbgB0AGUAbABsAG8ALgBjAG8AbQBzAGYALQBpAGMAbwBuAHMAUgBlAGcAdQBsAGEAcgBzAGYALQBpAGMAbwBuAHMAcwBmAC0AaQBjAG8AbgBzAFYAZQByAHMAaQBvAG4AIAAxAC4AMABzAGYALQBpAGMAbwBuAHMARwBlAG4AZQByAGEAdABlAGQAIABiAHkAIABzAHYAZwAyAHQAdABmACAAZgByAG8AbQAgAEYAbwBuAHQAZQBsAGwAbwAgAHAAcgBvAGoAZQBjAHQALgBoAHQAdABwADoALwAvAGYAbwBuAHQAZQBsAGwAbwAuAGMAbwBtAAAAAAIAAAAAAAAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjAECAQMBBAEFAQYBBwEIAQkBCgELAQwBDQEOAQ8BEAERARIBEwEUARUBFgEXARgBGQEaARsBHAEdAR4BHwEgASEBIgEjASQBJQEmAScBKAEpASoBKwEsAS0BLgEvATABMQEyATMBNAE1ATYBNwE4ATkBOgE7ATwBPQE+AT8BQAFBAUIBQwFEAUUBRgFHAUgBSQFKAUsBTAFNAU4BTwFQAVEBUgFTAVQBVQFWAVcBWAFZAVoBWwFcAV0BXgFfAWABYQFiAWMBZAFlAWYBZwFoAWkBagFrAWwBbQFuAW8BcAFxAXIBcwF0AXUBdgF3AXgBeQF6AXsBfAF9AX4BfwGAAYEBggGDAYQBhQGGAYcBiAGJAYoBiwGMAY0ABTNkb3RzA2FkZAVjbG9zZQlwcmljZWJvb2sEaGVscAhub3RlYm9vawRyb3dzBnVwbG9hZAVjbG9jawZncm91cHMLb3Blbl9mb2xkZXIQcmlnaHRfYWxpZ25fdGV4dAdwcm9kdWN0DXF1ZXN0aW9uX2ZlZWQHd2FybmluZwR1c2VyBXJpZ2h0DG5vdGlmaWNhdGlvbgRob21lCGNvbnRyYWN0B2FkZHVzZXIEYXBwcwRjb3B5BWltYWdlBG9wZW4Ic2V0dGluZ3MGem9vbWluBnJlY29yZAlhcnJvd2Rvd24DY3V0D2luc2VydF90ZW1wbGF0ZQ1vcGVuZWRfZm9sZGVyCXNpZGVfbGlzdAd6b29tb3V0BnF1b3RlcwxyZWxhdGVkX2xpc3QEZ2RvYwdzbmlwcGV0BHBhZ2ULY3VzdG9tX2FwcHMHYXJyb3d1cAZhdHRhY2gHZGF5dmlldwRpbmZvEGluc2VydF90YWdfZmllbGQFcGFzdGUEc29ydANwZGYGcmVwb3J0BHRhc2sIYXBwcm92YWwLc29jaWFsc2hhcmUGcGVvcGxlBml0YWxpYwZkZWxldGUEYmFjawNiYW4FZW1haWwEYm9sZAdwcmV2aWV3BXNoYXJlCWRhc2hib2FyZAZ0aGFua3MFdG9kYXkKY29udHJhY3QtMQdzcGlubmVyBXBob3RvBWV2ZW50B2J1aWxkZXIManVzdGlmeV90ZXh0EWNlbnRlcl9hbGlnbl90ZXh0BGVkaXQGbGF5b3V0CHByaW9yaXR5EHN0YW5kYXJkX29iamVjdHMHY29udGFjdAhjdXN0b205MwdlbWFpbC0xB3N1Y2Nlc3MHcmVmcmVzaA9sZWZ0X2FsaWduX3RleHQEZG93bgVjaGFydARjaGF0BWVycm9yBGxlZnQLcmVtb3ZlX2xpbmsHc3VtbWFyeQhkb2N1bWVudAZkcmFmdHMNc3VtbWFyeWRldGFpbAdyZXBsYWNlBGxpa2UIZG93bmxvYWQFY2hlY2sLY2hldnJvbmxlZnQGZXhwYW5kBGxpbmsFcmVwbHkFdGFibGUEZmVlZAdldmVudC0xDnRpbGVfY2FyZF9saXN0FHJpY2h0ZXh0YnVsbGV0ZWRsaXN0BGxpc3QIZmF2b3JpdGUMY2hldnJvbnJpZ2h0C2NoZXZyb25kb3duBmZpbHRlcgRtb3ZlDnJpY2h0ZXh0aW5kZW50CXVuZGVybGluZQhmZWVkYmFjawRmaWxlBHVuZG8UcmljaHRleHRudW1iZXJlZGxpc3QEbG9jawpmaWx0ZXJsaXN0CWNoZXZyb251cAVjbGVhcgdmb3J3YXJkCm5ld193aW5kb3cPcmljaHRleHRvdXRkZW50BnVubG9jawtvcHBvcnR1bml0eQRwb3N0AnVwBnNlYXJjaANuZXcGZnJvemVuCGNvbW1lbnRzBnJlY2VudAltYWdpY3dhbmQYZGlzY291bnRzY2hlZHVsZWljb25zLTAyCGN1c3RvbTkwCGN1c3RvbTI2CHRyZW5kaW5nBnRh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I7AEQ2CwASuwBSVhsAUlsAJiILAAUFiwQGBZZrABY7AEJmEgsAQlYGQjsAMlYGRQWCEbIyFZIyAgsAQmI0ZhOFktsDcssAAWICAgsAUmIC5HI0cjYSM8OC2wOCywABYgsAgjQiAgIEYjR7ABKyNhOC2wOSywABawAyWwAiVHI0cjYbAAVFguIDwjIRuwAiWwAiVHI0cjYSCwBSWwBCVHI0cjYbAGJbAFJUmwAiVhuQgACABjYyMgWGIbIVljuAQAYiCwAFBYsEBgWWawAWNgIy4jICA8ijgjIVktsDossAAWILAIQyAuRyNHI2EgYLAgYGawAmIgsABQWLBAYFlmsAFjIyAgPIo4LbA7LCMgLkawAiVGUlggPFkusSsBFCstsDwsIyAuRrACJUZQWCA8WS6xKwEUKy2wPSwjIC5GsAIlRlJYIDxZIyAuRrACJUZQWCA8WS6xKwEUKy2wPiywNSsjIC5GsAIlRlJYIDxZLrErARQrLbA/LLA2K4ogIDywBCNCijgjIC5GsAIlRlJYIDxZLrErARQrsARDLrArKy2wQCywABawBCWwBCYgLkcjRyNhsAlDKyMgPCAuIzixKwEUKy2wQSyxCAQlQrAAFrAEJbAEJSAuRyNHI2EgsAQjQrAJQysgsGBQWCCwQFFYswIgAyAbswImAxpZQkIjIEewBEOwAmIgsABQWLBAYFlmsAFjYCCwASsgiophILACQ2BkI7ADQ2FkUFiwAkNhG7ADQ2BZsAMlsAJiILAAUFiwQGBZZrABY2GwAiVGYTgjIDwjOBshICBGI0ewASsjYTghWbErARQrLbBCLLA1Ky6xKwEUKy2wQyywNishIyAgPLAEI0IjOLErARQrsARDLrArKy2wRCywABUgR7AAI0KyAAEBFRQTLrAxKi2wRSywABUgR7AAI0KyAAEBFRQTLrAxKi2wRiyxAAEUE7AyKi2wRyywNCotsEgssAAWRSMgLiBGiiNhOLErARQrLbBJLLAII0KwSCstsEossgAAQSstsEsssgABQSstsEwssgEAQSstsE0ssgEBQSstsE4ssgAAQistsE8ssgABQistsFAssgEAQistsFEssgEBQistsFIssgAAPistsFMssgABPistsFQssgEAPistsFUssgEBPistsFYssgAAQCstsFcssgABQCstsFgssgEAQCstsFkssgEBQCstsFossgAAQystsFsssgABQystsFwssgEAQystsF0ssgEBQystsF4ssgAAPystsF8ssgABPystsGAssgEAPystsGEssgEBPystsGIssDcrLrErARQrLbBjLLA3K7A7Ky2wZCywNyuwPCstsGUssAAWsDcrsD0rLbBmLLA4Ky6xKwEUKy2wZyywOCuwOystsGgssDgrsDwrLbBpLLA4K7A9Ky2waiywOSsusSsBFCstsGsssDkrsDsrLbBsLLA5K7A8Ky2wbSywOSuwPSstsG4ssDorLrErARQrLbBvLLA6K7A7Ky2wcCywOiuwPCstsHEssDorsD0rLbByLLMJBAIDRVghGyMhWUIrsAhlsAMkUHiwARUwLQBLuADIUlixAQGOWbABuQgACABjcLEABUKyAAEAKrEABUKzCgIBCCqxAAVCsw4AAQgqsQAGQroCwAABAAkqsQAHQroAQAABAAkqsQMARLEkAYhRWLBAiFixA2REsSYBiFFYugiAAAEEQIhjVFixAwBEWVlZWbMMAgEMKrgB/4WwBI2xAgBEAAA=') format('truetype');
}
/* Chrome hack: SVG is rendered more smooth in Windozze. 100% magic, uncomment if you need it. */
/* Note, that will break hinting! In other OS-es font will be not as sharp as it could be */
/*
@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: 'sf-icons';
    src: url('../font/sf-icons.svg?87742446#sf-icons') format('svg');
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
.sf-icon-custom90:before {
  content: '\e886';
}
/* '' */
.sf-icon-cancel-circled:before {
  content: '\e886';
}
/* '' */
.sf-icon-custom26:before {
  content: '\e887';
}
/* '' */
.sf-icon-trending:before {
  content: '\e888';
}
/* '' */
.sf-icon-target:before {
  content: '\e889';
}
/* '' */
.sf-icon-cube:before {
  content: '\e88b';
}
/* '' */
.sf-icon-paired-lines:before {
  content: '\e88c';
}
/* '' */
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
  background-color: #0070d2;
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
.sbPageTitle .sf-icon-custom90 {
  background-color: #5A9CDD;
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
.sbPageTitle .sf-icon-document {
  background-color: #baac93;
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
  font-size: 14px;
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
  line-height: 20px;
}
.sb .message .messageText h4 {
  color: #cc0000;
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
  font-size: 14px !important;
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
  font-size: 14px;
  font-weight: normal;
}
#sbCpqSettings .sbTabs input:not([type=submit]):not([type=checkbox]),
#sbCpqSettings .sbTabs select {
  font-size: 14px;
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
.themePage .sbBtn:hover:not([disabled]) {
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
.themePage .themeHeader h2 {
  color: #16325C !important;
}
.themePage .themeSubHeader {
  padding-top: 10px;
  padding-left: 60px;
}
.themePage .themeSubHeader h3 {
  color: #16325C !important;
}
.themePage select {
  width: 140px;
}
.themePage .themeSelectorWrapper {
  width: 300px;
  display: inline-block;
  margin-left: 55px;
  margin-right: 55px;
  margin-top: 40px;
}
.themePage .themeSelectorWrapper .themeContainer {
  display: flex;
  flex-direction: column;
}
.themePage .themeSelectorWrapper > .requiredInput {
  margin-top: 8px;
  float: right;
}
.themePage .tooltip {
  color: #54698d !important;
}
.themePage .tooltip:hover {
  color: #005fb2 !important;
}
.themePage .tooltipText {
  display: none;
  position: absolute;
  z-index: 10;
  background-color: #fff;
  width: 140px;
  padding: 6px;
  color: #16325C;
  font-family: inherit;
  font-size: 14px;
  border-radius: 4px;
  box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.16);
  border: 1px solid #d8dde6;
}
.themePage .themeContainer > .input {
  margin-top: 10px;
  width: 140px;
}
.themePage .themeContainer > .requiredInput {
  margin-top: 10px;
}
.themePage .themeContainer > .full-spectrum {
  margin-top: 10px;
  width: 52px;
}
.themePage .themeSelectorWrapper > span {
  position: relative;
  top: 11px;
}
.themePage .themeSelectorWrapper > .input {
  float: right;
  margin-top: 8px;
  width: 140px;
}
.themePage .fieldWrapper {
  width: 300px;
  display: inline-block;
  margin-left: 55px;
  margin-right: 55px;
  margin-top: 40px;
}
.themePage .fieldWrapper > input {
  float: right;
  margin-right: 25px;
  margin-top: 9px;
}
.themePage .fieldWrapper span {
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
.themePage #toast {
  transition: opacity 0.25s ease-in-out;
  opacity: 0;
  display: none;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
}
.themePage #toast.visible {
  opacity: 1;
  display: flex;
  justify-content: center;
}
.themePage #alert {
  display: flex;
  border-radius: .25rem;
  margin: 0.5rem 0.5rem 0 0.5rem;
  padding: 0.75rem 1.5rem;
  min-width: 30rem;
  text-align: left;
}
.themePage #alert.success {
  background-color: rgba(4, 132, 75, 0.95);
  color: #FFF;
}
.themePage #alert.error {
  background-color: #c23934;
  color: #FFF;
}
.themePage #alert .notify {
  display: flex;
  padding-top: 0.25rem;
}
.themePage #alert .notify .content {
  display: flex;
}
.themePage #alert .notify .content i {
  margin-top: -0.25rem;
  margin-right: .50rem;
  overflow: hidden;
  font-size: 1.25rem;
}
.themePage #alert .notify .content h2 {
  line-height: 1.25;
  padding-bottom: 0;
  color: #FFF;
  font-weight: 300;
}
.themePage #alert .btn {
  border: none;
  cursor: pointer;
  padding: 0;
  margin: 0;
  margin-left: 0.25rem;
  transform: translate3d(0.25rem, 0, 0);
  background-color: transparent;
  background-image: none;
  color: #FFF;
  font-size: 14px;
}
.themePage #alert .btn i {
  font-size: 1.25rem;
  margin-right: 0;
}
.themePage #alert .btn:focus {
  outline: 0;
}
div.content {
  display: flex;
}
table div.content {
  margin: 0 1rem;
}
#row1 {
  background-color: transparent;
  flex-grow: 1;
}
#row1 h1 {
  margin: 30px 0;
}
#row1 > div fieldset {
  position: relative;
  margin: 0 0 2.5rem 0;
  border: none;
  padding: 0;
  color: #fff;
}
#row1 > div fieldset legend {
  cursor: pointer;
  background-color: #9faab5;
  color: inherit;
  width: 100%;
  border-top-left-radius: 0.5rem;
  border-top-right-radius: 0.5rem;
  padding: 0.75rem 0.75rem 0.50rem 0.75rem;
}
#row1 > div fieldset legend .category-header {
  display: flex;
  justify-content: space-between;
}
#row1 > div fieldset legend .category-header h2 {
  font-weight: bold;
  color: inherit;
}
#row1 > div fieldset legend .category-header p {
  margin: 0;
}
#row1 > div fieldset legend p {
  font-weight: normal;
  color: inherit;
}
#row1 > div fieldset .fieldset-body {
  background-color: #f4f6f9;
  color: inherit;
  overflow: hidden;
  max-height: 0;
  transition: max-height 0.3s ease-in-out;
}
#row1 > div fieldset .fieldset-body > div {
  padding: 1.25rem;
}
#row1 > div fieldset .fieldset-body > div p {
  width: 290px;
  height: 68px;
  display: inline-block;
  margin-right: 1rem;
}
#row1 > div fieldset .fieldset-body > div p label {
  display: block;
  color: #54698d;
}
#row1 > div fieldset .fieldset-body > div p label a.tooltip {
  position: static;
}
#row1 > div fieldset .fieldset-body > div p label i {
  position: static;
}
#row1 > div fieldset .fieldset-body > div p > input {
  margin-top: 0.5rem;
}
#row1 .sp-light {
  float: none;
  margin-right: 0;
  margin-top: 0.5rem;
}
#row1 footer {
  cursor: pointer;
  background-color: #9faab5;
  color: inherit;
  padding: 0.50rem 0.75rem 0.75rem 0.75rem;
  border-top: 2px solid #eaeaea;
  border-bottom-left-radius: 0.5rem;
  border-bottom-right-radius: 0.5rem;
}
#row1 footer i {
  display: inline-block;
  transition: transform 0.3s ease-in-out;
}
#row1 select {
  margin-top: 10px;
}
#row2 {
  flex: 0 0 20%;
}
#row2 ul {
  position: fixed;
  width: 20%;
}
.sbBtn[disabled] {
  background: #e0e5ee;
  border-color: transparent;
  color: #fff;
  cursor: default;
}
input.btnDisabled.sbBtn {
  margin: 0;
  font-weight: normal;
  font-size: 14px;
  padding: 8px 12px;
}
input.btnDisabled.sbBtn:hover {
  color: #fff;
  border-color: #d8dde6;
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
  font-size: 14px;
}
#sbTranslate .sbPageBlockSection > span {
  font-size: 14px;
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
  pointer-events: none;
}
#sbAssetSearch .paginationControls {
  padding: 4px;
  text-align: center;
  vertical-align: middle;
  margin-left: auto;
  margin-right: auto;
  width: 250px;
  pointer-events: auto;
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
  font-size: 14px;
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
  font-size: 14px;
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
  font-size: 14px;
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
  font-size: 14px;
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
  width: 325px;
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
  font-size: 14px;
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
#sbLineEditor .sbPageTitle .sbPageTitleRight {
  text-align: right;
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
#sbLineEditor .sbPageTitle .sbTools > .sbToolSeparator {
  display: inline-block;
  height: 1px;
  width: 10px;
  float: left;
}
#sbLineEditor .sbPageTitle #sbRollupMenuQuote > ul.sbTools > li.sbToolSeparator {
  display: none;
}
#sbLineEditor .sbPageTitle #sbRollupMenuQuote > span.sf-icon-down {
  display: inline-block;
  padding: 8px 12px;
}
#sbLineEditor .sbQuoteActions .renewSubscriptionsBtn,
#sbLineEditor .sbGroupActions .renewSubscriptionsBtn,
#sbLineEditor .sbQuoteActions .upgradeAssetsBtn,
#sbLineEditor .sbGroupActions .upgradeAssetsBtn,
#sbLineEditor .sbQuoteActions .resetDiscBtn,
#sbLineEditor .sbGroupActions .resetDiscBtn,
#sbLineEditor .sbQuoteActions .optionalAllBtn,
#sbLineEditor .sbGroupActions .optionalAllBtn,
#sbLineEditor .sbQuoteActions .optionalNoneBtn,
#sbLineEditor .sbGroupActions .optionalNoneBtn,
#sbLineEditor .sbQuoteActions .deleteLinesBtn,
#sbLineEditor .sbGroupActions .deleteLinesBtn,
#sbLineEditor .sbQuoteActions .addGroupBtn,
#sbLineEditor .sbGroupActions .addGroupBtn,
#sbLineEditor .sbQuoteActions .ungroupBtn,
#sbLineEditor .sbGroupActions .ungroupBtn {
  display: none;
}
#sbLineEditor .sbQuoteActions .sbTool.first,
#sbLineEditor .sbGroupActions .sbTool.first {
  border: 1px solid #d8dde6;
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
#sbLineEditor .sbQuoteActions .sbTool.end,
#sbLineEditor .sbGroupActions .sbTool.end,
#sbLineEditor .sbQuoteActions .sbTool.last,
#sbLineEditor .sbGroupActions .sbTool.last {
  border-bottom-right-radius: 3px;
  border-top-right-radius: 3px;
}
#sbLineEditor .sbQuoteActions .sbTool.sbToolSeparator,
#sbLineEditor .sbGroupActions .sbTool.sbToolSeparator {
  padding: 0;
  border: none;
  background-color: inherit;
}
#sbLineEditor .sbQuoteActions .sbTool.sbToolSeparator + .sbTool,
#sbLineEditor .sbGroupActions .sbTool.sbToolSeparator + .sbTool {
  border-left: 1px solid #d8dde6;
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction),
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) {
  padding: 0;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction):hover,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction):hover {
  background-color: #fff;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span,
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) i,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) i {
  display: inline-block;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span:hover,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span:hover,
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) i:hover,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) i:hover {
  background-color: #F4F6F9;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span.sf-icon-down,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span.sf-icon-down {
  border-left: 1px solid #d8dde6;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbPrimaryAction,
#sbLineEditor .sbGroupActions > .sbTools > .sbPrimaryAction {
  padding: 0;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbPrimaryAction > span,
#sbLineEditor .sbGroupActions > .sbTools > .sbPrimaryAction > span,
#sbLineEditor .sbQuoteActions > .sbTools > .sbPrimaryAction i,
#sbLineEditor .sbGroupActions > .sbTools > .sbPrimaryAction i {
  display: inline-block;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbPrimaryAction > span.sf-icon-down,
#sbLineEditor .sbGroupActions > .sbTools > .sbPrimaryAction > span.sf-icon-down {
  border-left: 1px solid #d8dde6;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote) > span.label,
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote) > i {
  padding: 8px 12px;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote) > span.sf-icon-down {
  padding: 8px 4px;
}
#sbLineEditor.upgradable li.upgradeAssetsBtn {
  display: block;
}
#sbLineEditor.renewable li.renewSubscriptionsBtn {
  display: block;
}
#sbLineEditor.discountable li.resetDiscBtn {
  display: block;
}
#sbLineEditor.optional:not(.allSelected) .sbQuoteActions li.optionalAllBtn,
#sbLineEditor.optional.allSelected .sbQuoteActions li.optionalNoneBtn {
  display: block;
}
#sbLineEditor.optional .sbGroupActions li.optionalAllBtn,
#sbLineEditor.optional .sbGroupActions li.optionalNoneBtn {
  display: block;
}
#sbLineEditor.multiDelete .sbQuoteActions .deleteLinesBtn {
  display: block;
}
#sbLineEditor.groupable li.addGroupBtn {
  display: block;
}
#sbLineEditor.ungroupable li.addGroupBtn {
  display: none;
}
#sbLineEditor.ungroupable li.addGroupBtn,
#sbLineEditor.ungroupable li.ungroupBtn {
  display: block;
}
#sbLineEditor .sbQuoteActions ul,
#sbLineEditor .sbGroupActions ul {
  list-style-type: none;
}
#sbLineEditor .sbQuoteActions ul.sbTools,
#sbLineEditor .sbGroupActions ul.sbTools {
  padding: 0;
  margin: 0;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction),
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) {
  display: block;
  position: relative;
  color: #0070D2;
  font-size: 14px;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction).action > .label:hover,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction).action > .label:hover {
  cursor: pointer;
  color: #0070d2;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-right,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-right,
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-down,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-down {
  cursor: pointer;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-right.open + ul,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-right.open + ul,
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-down.open + ul,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-down.open + ul {
  display: block;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-right.open + ul.sbSolutionGroups,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-right.open + ul.sbSolutionGroups,
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-down.open + ul.sbSolutionGroups,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-down.open + ul.sbSolutionGroups {
  max-height: 450px;
  overflow-y: auto;
}
#sbLineEditor .sbQuoteActions ul ul,
#sbLineEditor .sbGroupActions ul ul {
  display: none;
  position: absolute;
  top: 100%;
  white-space: nowrap;
  background-color: #ffffff;
  border-radius: 4px;
  border: 1px solid #d8dde6;
  z-index: 4;
  text-align: left;
}
#sbLineEditor .sbQuoteActions ul ul li,
#sbLineEditor .sbGroupActions ul ul li {
  padding: 5px 10px;
}
#sbLineEditor .sbQuoteActions ul ul ul,
#sbLineEditor .sbGroupActions ul ul ul {
  top: -1px;
}
#sbLineEditor .sbQuoteActions > ul,
#sbLineEditor .sbGroupActions > ul {
  display: inline-block;
  cursor: auto;
}
#sbLineEditor .sbQuoteActions > ul > li > ul,
#sbLineEditor .sbGroupActions > ul > li > ul {
  right: -1px;
}
#sbLineEditor .sbQuoteActions > ul > li.action > .label:hover,
#sbLineEditor .sbGroupActions > ul > li.action > .label:hover {
  color: #0070d2;
}
#sbLineEditor .sbQuoteActions ul li {
  font-size: 14px;
}
#sbLineEditor .sbQuoteActions > ul > li {
  margin-bottom: 10px;
}
#sbLineEditor .sbQuoteActions > ul > li.last ul ul {
  right: 100%;
}
#sbLineEditor .sbQuoteActions > ul > li:not(.last) ul ul {
  left: 100%;
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
  font-size: 14px;
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
#sbLineEditor .sbTable > tbody > tr > td.sbActions .action:hover,
#sbLineEditor .sbTable > tbody > tr > td.sbActions .url:hover {
  cursor: pointer;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions > ul {
  display: inline-block;
  cursor: auto;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions > ul > li.menu {
  padding: 5px;
  white-space: nowrap;
  background-color: #ffffff;
  border-radius: 4px;
  border: 1px solid #d8dde6;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions > ul > li.menu .sbAction {
  padding: 5px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul {
  padding: 0;
  margin: 0;
  list-style-type: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li {
  display: inline-block;
  position: relative;
  color: #0070D2;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li.action > .label:hover {
  cursor: pointer;
  color: #16325C;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li span.sf-icon-right {
  cursor: pointer;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li span.sf-icon-right.open + ul {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li ul li {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul ul {
  display: none;
  position: absolute;
  top: -1px;
  white-space: nowrap;
  background-color: #ffffff;
  border-radius: 4px;
  border: 1px solid #d8dde6;
  z-index: 4;
  text-align: left;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul ul li {
  padding: 5px 10px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions .sbAction {
  padding: 2px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions .sbAction.action {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.removable) .sb-icon-info-circled {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.removable) .sb-icon-info-circled:hover {
  cursor: auto;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable .removeFromFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable .deleteBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable ul ul .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable ul ul .removeFromFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable ul ul .deleteBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable.favorite .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable:not(.favorite) .removeFromFavBtn {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable.favorite ul ul .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable:not(.favorite) ul ul .removeFromFavBtn {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.component) .cloneBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.component) ul ul .cloneBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.configurable .reconfigureBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.configurable ul ul .reconfigureBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable .desegmentBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable .resegmentBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable ul ul .desegmentBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable ul ul .resegmentBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable.segmented .resegmentBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable:not(.segmented) .desegmentBtn {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.dsEditable .viewDSBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.dsEditable ul ul .viewDSBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbDeleteCheckbox {
  width: 1%;
}
#sbLineEditor .sbTable tbody > tr > td:first-of-type.sbActions ul ul {
  left: 100%;
}
#sbLineEditor .sbTable tbody > tr > td:last-of-type.sbActions ul ul {
  right: 100%;
}
#sbLineEditor .sbTable > tbody > tr > td:hover .sf-icon-edit {
  visibility: visible;
}
#sbLineEditor .sbTable > tfoot > tr.sbTotalRow td {
  vertical-align: middle;
  white-space: nowrap;
  font-size: 14px;
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
  font-size: 14px;
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
  font-size: 14px;
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
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions ul ul ul {
  left: 100%;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions > ul.sbTools > li.sbTool {
  margin-bottom: 5px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions > ul.sbTools > li.sbTool > span,
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions > ul.sbTools > li.sbTool > i {
  padding: 6px 8px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool {
  height: 32px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool > span.label,
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool > i {
  padding: 6px 8px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool > span.sf-icon-down {
  padding: 6px 4px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription {
  margin-top: 10px;
  font-size: 14px;
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
  font-size: 14px;
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
  font-size: 14px;
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
  height: 26px;
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
  font-size: 14px;
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
  height: 26px;
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
  font-size: 14px;
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
}
#sbLineEditor .sbMultiSegment .sbDimensionHeader {
  margin: 0 15px;
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
  font-size: 14px;
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
  height: 26px;
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
#sbLineEditor #sbTiersModal #revertTierIcon {
  font-size: 14px;
}
#sbLineEditor #sbTiersModal #revertIconContainer {
  padding: 8px;
  margin-left: 16px;
  background-color: #fff;
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
#sbLineEditor #sbTiersModal .revertButton {
  display: inline-block;
  border: 1px solid #d8dde6;
  border-radius: 4px;
  color: #0070d2;
  position: relative;
  cursor: pointer;
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
#editDescriptionContainer .sbLineEditorDescriptionEditFooter {
  margin-top: 16px;
}
.removeBoxShadow {
  box-shadow: none;
}
.addBoxShadow {
  box-shadow: 0 0 0 15px #D1D4D8;
}
.hidden {
  display: none;
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
  font-size: 14px;
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
#sbProductConfigurator .sbPageTitle .sbPageTitleLeft .sf-icon-custom_apps {
  background-color: #8199af;
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
#sbProductConfigurator .sbFeatureIcon {
  color: #0070d2;
  font-size: 30px;
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
  padding-top: 5px;
  vertical-align: top;
}
#sbProductConfigurator header .sbTitleContainer > .sbFeatureInstructions {
  padding: 10px 0 0 0;
  font-size: 14px;
}
#sbProductConfigurator header .sbFeatureAdditionalInstructions {
  display: inline;
  float: right;
  font-size: 14px;
  padding-top: 3px;
}
#sbProductConfigurator .featureContent {
  font-size: 10px;
}
#sbProductConfigurator .sbTopConfigurationAttributes,
#sbProductConfigurator .sbBottomConfigurationAttributes {
  font-size: 14px;
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
  font-size: 14px;
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
  font-size: 14px;
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
  font-size: 14px;
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
  font-size: 14px;
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
  font-size: 14px;
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
  font-size: 14px;
}
#sbProductConfigurator .sbResults {
  margin: 14px 0 -8px 0;
  font-size: 14px;
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
  font-size: 14px;
}
#sbProductConfigurator .sbTable .sbCurrencyCell {
  text-align: right;
}
#sbProductConfigurator .sbTable .sbCurrencyCell input {
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
  font-size: 14px;
  font-weight: bold;
}
#sbProductSearch .sbTable tbody .sbGroupNameRow {
  background-color: #f4f6f9;
  cursor: pointer;
}
#sbProductSearch .sbTable tbody .sbGroupNameRow i {
  font-size: 17.5px;
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
  font-size: 14px;
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
  font-size: 14px;
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
  font-size: 14px;
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
  height: 26px;
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
  font-size: 14px;
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
  font-size: 14px;
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
  font-size: 14px;
}
#sbCloneRelated,
#sbRefreshPrices,
#sbPreviewApprovals,
#sbListApprovals {
  background: #fff;
  color: #16325C;
  text-align: center;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
}
#sbCloneRelated .sbPageTitle,
#sbRefreshPrices .sbPageTitle,
#sbPreviewApprovals .sbPageTitle,
#sbListApprovals .sbPageTitle {
  text-align: left;
}
#sbCloneRelated .sbPageTitle h1,
#sbRefreshPrices .sbPageTitle h1,
#sbPreviewApprovals .sbPageTitle h1,
#sbListApprovals .sbPageTitle h1 {
  font-size: 20px;
  font-weight: 300;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
  color: #16325C;
}
#sbCloneRelated .sbPageTitle h2,
#sbRefreshPrices .sbPageTitle h2,
#sbPreviewApprovals .sbPageTitle h2,
#sbListApprovals .sbPageTitle h2 {
  font-size: 12px;
  color: #16325C;
}
#sbCloneRelated .sbPageTitle .sf-icon-copy:before,
#sbRefreshPrices .sbPageTitle .sf-icon-copy:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-copy:before,
#sbListApprovals .sbPageTitle .sf-icon-copy:before,
#sbCloneRelated .sbPageTitle .sf-icon-refresh:before,
#sbRefreshPrices .sbPageTitle .sf-icon-refresh:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-refresh:before,
#sbListApprovals .sbPageTitle .sf-icon-refresh:before,
#sbCloneRelated .sbPageTitle .sf-icon-approval:before,
#sbRefreshPrices .sbPageTitle .sf-icon-approval:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-approval:before,
#sbListApprovals .sbPageTitle .sf-icon-approval:before {
  margin-top: 10px;
  position: inherit;
}
#sbCloneRelated .sbPageTitle .sf-icon-post:before,
#sbRefreshPrices .sbPageTitle .sf-icon-post:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-post:before,
#sbListApprovals .sbPageTitle .sf-icon-post:before {
  position: inherit;
}
#sbCloneRelated .sbPageTitle .sf-icon-approval:before,
#sbRefreshPrices .sbPageTitle .sf-icon-approval:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-approval:before,
#sbListApprovals .sbPageTitle .sf-icon-approval:before {
  margin-top: 0px;
}
#sbCloneRelated .sbPageTitle .resize,
#sbRefreshPrices .sbPageTitle .resize,
#sbPreviewApprovals .sbPageTitle .resize,
#sbListApprovals .sbPageTitle .resize {
  padding: 2px 10px;
}
#sbCloneRelated .message,
#sbRefreshPrices .message,
#sbPreviewApprovals .message,
#sbListApprovals .message {
  padding: 10px;
  margin: 18px 24px;
}
#sbCloneRelated .message .messageText,
#sbRefreshPrices .message .messageText,
#sbPreviewApprovals .message .messageText,
#sbListApprovals .message .messageText {
  font-size: 14px;
}
#sbCloneRelated .message .messageText h4,
#sbRefreshPrices .message .messageText h4,
#sbPreviewApprovals .message .messageText h4,
#sbListApprovals .message .messageText h4 {
  padding: 0 4px;
  display: inline-block;
  font-size: 10px;
  font-weight: 300;
}
#sbCloneRelated .sbBtns,
#sbRefreshPrices .sbBtns,
#sbPreviewApprovals .sbBtns,
#sbListApprovals .sbBtns {
  font-size: 9px;
  border-radius: 0;
  vertical-align: top;
  float: right;
}
#sbCloneRelated .sbBtns .sbBtn,
#sbRefreshPrices .sbBtns .sbBtn,
#sbPreviewApprovals .sbBtns .sbBtn,
#sbListApprovals .sbBtns .sbBtn {
  border-radius: 0;
}
#sbCloneRelated .sbBtns .sbBtn:first-of-type,
#sbRefreshPrices .sbBtns .sbBtn:first-of-type,
#sbPreviewApprovals .sbBtns .sbBtn:first-of-type,
#sbListApprovals .sbBtns .sbBtn:first-of-type {
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
#sbCloneRelated .sbBtns .sbBtn:last-of-type,
#sbRefreshPrices .sbBtns .sbBtn:last-of-type,
#sbPreviewApprovals .sbBtns .sbBtn:last-of-type,
#sbListApprovals .sbBtns .sbBtn:last-of-type {
  border-left: 0;
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
#sbCloneRelated .sbGroup,
#sbRefreshPrices .sbGroup,
#sbPreviewApprovals .sbGroup,
#sbListApprovals .sbGroup {
  margin: 15px 15px;
  border: 1px solid #d0d0d0;
  border-radius: 3px;
}
#sbCloneRelated .sbGroup > header,
#sbRefreshPrices .sbGroup > header,
#sbPreviewApprovals .sbGroup > header,
#sbListApprovals .sbGroup > header {
  margin: 0;
  border: 0;
  padding: 10px 15px 5px;
  border-bottom: 1px solid #d0d0d0;
}
#sbCloneRelated .sbGroup .sbPageBlockSection,
#sbRefreshPrices .sbGroup .sbPageBlockSection,
#sbPreviewApprovals .sbGroup .sbPageBlockSection,
#sbListApprovals .sbGroup .sbPageBlockSection {
  padding-bottom: 6px;
  text-align: left;
}
#sbCloneRelated .sbGroup .sbPageBlockSection > h3,
#sbRefreshPrices .sbGroup .sbPageBlockSection > h3,
#sbPreviewApprovals .sbGroup .sbPageBlockSection > h3,
#sbListApprovals .sbGroup .sbPageBlockSection > h3 {
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
  font-weight: 300;
}
#sbCloneRelated .toggleButton,
#sbRefreshPrices .toggleButton,
#sbPreviewApprovals .toggleButton,
#sbListApprovals .toggleButton {
  float: right;
}
#sbCloneRelated .tableContainer,
#sbRefreshPrices .tableContainer,
#sbPreviewApprovals .tableContainer,
#sbListApprovals .tableContainer {
  display: none;
}
#sbCloneRelated .sbTable .rfHead,
#sbRefreshPrices .sbTable .rfHead,
#sbPreviewApprovals .sbTable .rfHead,
#sbListApprovals .sbTable .rfHead {
  background: #F4F6F9;
}
#sbCloneRelated .sbTable > thead > tr > th:first-of-type,
#sbRefreshPrices .sbTable > thead > tr > th:first-of-type,
#sbPreviewApprovals .sbTable > thead > tr > th:first-of-type,
#sbListApprovals .sbTable > thead > tr > th:first-of-type,
#sbCloneRelated .sbTable > tbody > tr > td:first-of-type,
#sbRefreshPrices .sbTable > tbody > tr > td:first-of-type,
#sbPreviewApprovals .sbTable > tbody > tr > td:first-of-type,
#sbListApprovals .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
}
#sbCloneRelated .sbTable > thead > tr > th:last-of-type,
#sbRefreshPrices .sbTable > thead > tr > th:last-of-type,
#sbPreviewApprovals .sbTable > thead > tr > th:last-of-type,
#sbListApprovals .sbTable > thead > tr > th:last-of-type,
#sbCloneRelated .sbTable > tbody > tr > td:last-of-type,
#sbRefreshPrices .sbTable > tbody > tr > td:last-of-type,
#sbPreviewApprovals .sbTable > tbody > tr > td:last-of-type,
#sbListApprovals .sbTable > tbody > tr > td:last-of-type {
  padding-right: 15px;
}
#sbCloneRelated .sbTable > tbody > tr:last-of-type > td,
#sbRefreshPrices .sbTable > tbody > tr:last-of-type > td,
#sbPreviewApprovals .sbTable > tbody > tr:last-of-type > td,
#sbListApprovals .sbTable > tbody > tr:last-of-type > td {
  border-bottom: none;
}
#sbCloneRelated .sbTable > thead > tr > th,
#sbRefreshPrices .sbTable > thead > tr > th,
#sbPreviewApprovals .sbTable > thead > tr > th,
#sbListApprovals .sbTable > thead > tr > th {
  height: 24.5px;
}
#sbCloneRelated .sbTable > tbody > tr > td,
#sbRefreshPrices .sbTable > tbody > tr > td,
#sbPreviewApprovals .sbTable > tbody > tr > td,
#sbListApprovals .sbTable > tbody > tr > td {
  padding: 4.9px 9.8px;
  height: 24.5px;
  vertical-align: middle;
  text-align: left;
}
#sbCloneRelated .sbTable > tfoot > tr > td,
#sbRefreshPrices .sbTable > tfoot > tr > td,
#sbPreviewApprovals .sbTable > tfoot > tr > td,
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
  height: 26px;
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
  font-size: 14px;
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

/*# sourceMappingURL=data:application/json;charset=utf8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImZvbnRzLmxlc3MiLCJ0eXBvZ3JhcGh5Lmxlc3MiLCJidXR0b25zLmxlc3MiLCJzZmRjLmxlc3MiLCJkaWFsb2dzLmxlc3MiLCJsYXlvdXQubGVzcyIsImZvcm1zLmxlc3MiLCJtaXhpbnMubGVzcyIsImRhdGVQaWNrZXIubGVzcyIsInRhYmxlcy5sZXNzIiwiZHJvcGRvd25zLmxlc3MiLCJpY29ucy5sZXNzIiwiYmFzZS5sZXNzIiwidmFyaWFibGVzLmxlc3MiLCIuLi8uLi9hZG1pbi9zZXR0aW5ncy9hcHBTZXR0aW5ncy5sZXNzIiwiLi4vLi4vYWRtaW4vc2V0dGluZ3MvdGhlbWVTZXR0aW5ncy5sZXNzIiwiLi4vLi4vYWRtaW4vdHJhbnNsYXRlLmxlc3MiLCIuLi8uLi9hc3NldHMvYXNzZXRMb29rdXAubGVzcyIsIi4uLy4uL2RvY2dlbi9wcmV2aWV3Lmxlc3MiLCIuLi8uLi9xdW90ZXMvaW1wb3J0TGluZXMubGVzcyIsIi4uLy4uL3F1b3Rlcy9saW5lRWRpdG9yLmxlc3MiLCIuLi8uLi9xdW90ZXMvbmV3UmVsYXRlZENvbnRlbnQubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RDb25maWd1cmF0b3IubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RMb29rdXAubGVzcyIsIi4uLy4uL3N1YnNjcmlwdGlvbnMvc3Vic2NyaXB0aW9uTG9va3VwLmxlc3MiLCIuLi8uLi9jbG9uZS9jbG9uZS5sZXNzIiwiLi4vLi4vZmF2b3JpdGVzL2Zhdm9yaXRlc01hbmFnZXIubGVzcyIsIi4uLy4uL2Jsb2NrUHJpY2UvYmxvY2tQcmljZS5sZXNzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBO0VBQ0UsYUFBYSxpQkFBYjtFQUNBLFNBQVMsMkdBQTJHLE9BQU8sY0FDbEgsMEdBQTBHLE9BQU8sT0FEMUg7RUFFQSxrQkFBQTtFQUNBLGdCQUFBOztBQUVGO0VBQ0UsYUFBYSxpQkFBYjtFQUNBLFNBQVMsNkdBQTZHLE9BQU8sY0FDcEgsNEdBQTRHLE9BQU8s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O0VBQ0EsYWRRUSxtQkFBbUIsOEJjUjNCO0VBQ0EsaUJBQUE7RUFDRyxvQkFBQTs7QUFOSixhQVFDO0VBQ08scUJBQUE7O0FBVFIsYUFZSTtFQUNJLHFCQUFBO0VBQ0EsbUJBQUE7O0FBZFIsYUFpQkk7RUFDSSxhQUFBOztBQWxCUixhQXFCQztFQUNJLGlCQUFBO0VBQ0EsbUJBQUE7O0FBdkJMLGFBMEJDO0VBQ0ksbUJBQUEiLCJzb3VyY2VzQ29udGVudCI6WyJAZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6IFwiU2FsZXNmb3JjZSBTYW5zXCI7XG4gIHNyYzogdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1MaWdodC53b2ZmMlwiKSBmb3JtYXQoXCJ3b2ZmMlwiKSxcbiAgICAgICB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUxpZ2h0LndvZmZcIikgZm9ybWF0KFwid29mZlwiKTtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXdlaWdodDogMzAwO1xufVxuQGZvbnQtZmFjZSB7XG4gIGZvbnQtZmFtaWx5OiBcIlNhbGVzZm9yY2UgU2Fuc1wiO1xuICBzcmM6IHVybChcImh0dHBzOi8vd3d3Mi5zZmRjc3RhdGljLmNvbS9zeXN0ZW0vc2hhcmVkL2NvbW1vbi9hc3NldHMvZm9udHMvU2FsZXNmb3JjZVNhbnMvU2FsZXNmb3JjZVNhbnMtUmVndWxhci53b2ZmMlwiKSBmb3JtYXQoXCJ3b2ZmMlwiKSxcbiAgICAgICB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLVJlZ3VsYXIud29mZlwiKSBmb3JtYXQoXCJ3b2ZmXCIpO1xuICBmb250LXN0eWxlOiBub3JtYWw7XG4gIGZvbnQtd2VpZ2h0OiA0MDA7XG59XG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6IFwiU2FsZXNmb3JjZSBTYW5zXCI7XG4gIHNyYzogdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1JdGFsaWMud29mZjJcIikgZm9ybWF0KFwid29mZjJcIiksXG4gICAgICAgdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1JdGFsaWMud29mZlwiKSBmb3JtYXQoXCJ3b2ZmXCIpO1xuICBmb250LXN0eWxlOiBpdGFsaWM7XG4gIGZvbnQtd2VpZ2h0OiA0MDA7XG59XG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6IFwiU2FsZXNmb3JjZSBTYW5zXCI7XG4gIHNyYzogdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1Cb2xkLndvZmYyXCIpIGZvcm1hdChcIndvZmYyXCIpLFxuICAgICAgIHVybChcImh0dHBzOi8vd3d3Mi5zZmRjc3RhdGljLmNvbS9zeXN0ZW0vc2hhcmVkL2NvbW1vbi9hc3NldHMvZm9udHMvU2FsZXNmb3JjZVNhbnMvU2FsZXNmb3JjZVNhbnMtQm9sZC53b2ZmXCIpIGZvcm1hdChcIndvZmZcIik7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgZm9udC13ZWlnaHQ6IDcwMDtcbn1cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogXCJTYWxlc2ZvcmNlIFNhbnNcIjtcbiAgc3JjOiB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUJvbGRJdGFsaWMud29mZjJcIikgZm9ybWF0KFwid29mZjJcIiksXG4gICAgICAgdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1Cb2xkSXRhbGljLndvZmZcIikgZm9ybWF0KFwid29mZlwiKTtcbiAgZm9udC1zdHlsZTogaXRhbGljO1xuICBmb250LXdlaWdodDogNzAwO1xufVxuIiwiLnNiIHtcbiAgaDEsaDIsaDMsaDQsaDUsaDYge1xuICAgIGNvbG9yOiBAc2JIZWFkZXJGb250Q29sb3I7XG4gICAgZm9udC13ZWlnaHQ6IDMwMDtcbiAgICBmb250LWZhbWlseTogaW5oZXJpdDtcbiAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgbWFyZ2luOiAwO1xuICAgIHBhZGRpbmc6IDA7XG4gIH1cblxuICBoMSB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDIuNDtcbiAgfVxuXG4gIGgyIHtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS44O1xuICB9XG5cbiAgaDMge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjY7XG4gIH1cbiAgaDQge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG4gIH1cblxuICBoNSB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgfVxuXG4gIGg2IHtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMC45O1xuICB9XG5cbiAgLy8gSHlwZXJsaW5rcyAtIHRoZSBkZWZhdWx0IHN0eWxlXG4gIGEsIGE6dmlzaXRlZCwgYTpob3ZlciwgYTphY3RpdmUge1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgfVxuXG4gIC8vIEh5cGVybGlua3MgLSBjb2xvciBjaGFuZ2Ugd2hlbiBob3ZlcmVkXG4gIGE6aG92ZXIge1xuICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgfVxufVxuIiwiQHNiQnRuQm9yZGVyUmFkaXVzOiA0cHg7XG5Ac2JCdG5QYWRkaW5nOiA4cHggMTJweDtcblxuLypcbkJ1dHRvblxuXG5BIHN0YW5kYXJkLCBzdGFuZGFsb25lIGJ1dHRvblxuXG4qL1xuLnNiQnRuIHtcbiAgcGFkZGluZzogQHNiQnRuUGFkZGluZztcbiAgYmFja2dyb3VuZDogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICBjb2xvcjogQHNiR3JvdXBCdG5Gb250Q29sb3I7XG4gIGN1cnNvcjogcG9pbnRlcjtcbiAgYm9yZGVyOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgYm9yZGVyLXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICBmb250LXdlaWdodDogNDAwO1xuICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS40O1xuICBtYXJnaW46IDA7XG4gIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgaGVpZ2h0OiAzNnB4O1xuXG4gICY6Zm9jdXMge1xuICAgIG91dGxpbmUtb2Zmc2V0OiAtMnB4O1xuICAgIG91dGxpbmUtd2lkdGg6IDJweDtcbiAgfVxuXG4gICY6aG92ZXIge1xuICAgIGJhY2tncm91bmQ6IEBzYkdyb3VwQnRuSG92ZXJCZ0NvbG9yO1xuICB9XG5cbiAgJi5zYlByaW1hcnlBY3Rpb24ge1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgIGNvbG9yOiBAc2JQcmltYXJ5QnRuRm9udENvbG9yO1xuICAgICY6aG92ZXIge1xuICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkhvdmVyQmdDb2xvcjtcbiAgICB9XG4gIH1cblxuICAmLnNiRW5hYmxlZCB7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgYm9yZGVyLWNvbG9yOiBAc2JQcmltYXJ5QnRuQmdDb2xvcjtcbiAgICBjb2xvcjogQHNiUHJpbWFyeUJ0bkZvbnRDb2xvcjtcbiAgICAmOmhvdmVyIHtcbiAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlByaW1hcnlCdG5Ib3ZlckJnQ29sb3I7XG4gICAgfVxuICB9XG59XG5cbi8vIEEgY29udGFpbmVyL3JvdyBvZiBidXR0b25zLCBhIGxhIGEgYnV0dG9uIFwiYmFyXCJcbi5zYkJ1dHRvbnMge1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIGJhY2tncm91bmQ6IEBzYkhlYWRlckJnQ29sb3I7XG4gIHBhZGRpbmc6IDdweCAwIDdweDtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xufVxuXG4vLyBCdXR0b25zIHdpdGhpbiBhIGJ1dHRvbiBjb250YWluZXJcbi5zYkJ1dHRvbnMgPiAuc2JCdG4sIC5zYkJ1dHRvbnMgPiBkaXYgPiAuc2JCdG4sXG4uc2JQYWdlQnV0dG9ucyA+IC5zYkJ0biwgLnNiUGFnZUJ1dHRvbnMgPiBkaXYgPiAuc2JCdG4ge1xuICBib3JkZXItdG9wOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gIGJvcmRlci1yaWdodDogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gIGJvcmRlci1sZWZ0OiAwO1xuICBib3JkZXItcmFkaXVzOiAwO1xuICBmbG9hdDogbGVmdDsgLy8gdGhpcyByZW1vdmVzIHdoaXRlc3BhY2UgaW4gYmV0d2VlbiBidXR0b25zXG5cbiAgJi5zYlByaW1hcnlBY3Rpb24ge1xuICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICB9XG5cbiAgLy8gRmlyc3QgYnV0dG9uIHdpdGhpbiBhIGJ1dHRvbiBjb250YWluZXJcbiAgJjpmaXJzdC1vZi10eXBlIHtcbiAgICBib3JkZXItbGVmdDogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgYm9yZGVyLXRvcC1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICAmLnNiUHJpbWFyeUFjdGlvbiB7XG4gICAgICBib3JkZXItbGVmdDogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgfVxuICB9XG5cbiAgLy8gTGFzdCBidXR0b24gd2l0aGluIGEgYnV0dG9uIGNvbnRhaW5lclxuICAmOmxhc3Qtb2YtdHlwZSB7XG4gICAgYm9yZGVyLXRvcC1yaWdodC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICBib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICB9XG59XG5cbi8vIFRoZSBjZW50ZXJlZCBjb250YWluZXIgd2l0aGluIGEgQnV0dG9uIGNvbnRhaW5lclxuLnNiQnV0dG9ucyA+IC5jZW50ZXIsXG4uc2JQYWdlQnV0dG9ucyA+IC5jZW50ZXIge1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG59XG5cbi8vIFBhZ2UgYnV0dG9ucyB0YWtlIHVwIHRoZSB3aG9sZSB3aWR0aFxuLnNiUGFnZUJ1dHRvbnM6ZXh0ZW5kKCAuc2JCdXR0b25zICkge1xuICB3aWR0aDogMTAwJTtcbiAgYm9yZGVyLXRvcDogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuXG4gICYuYm90dG9tIHtcbiAgICB3aWR0aDogYXV0bztcbiAgICBwb3NpdGlvbjogZml4ZWQ7XG4gICAgYm90dG9tOiAwcHg7XG4gICAgbGVmdDogMTBweDtcbiAgICByaWdodDogMTBweDtcbiAgICBib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICBkaXNwbGF5OiBub25lOyAvLyBpbmRpdmlkdWFsIHBhZ2VzIHNob3VsZCAoZHluYW1pY2FsbHkpIHNob3cgaWYgbmVlZGVkXG4gIH1cblxuICAmLmlubGluZSB7XG4gICAgYmFja2dyb3VuZDogQHNiSGVhZGVyQmdDb2xvcjtcbiAgICBib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICBtYXJnaW4tdG9wOiA4MHB4O1xuICB9XG59XG5cbi5zYlBhZ2VUaXRsZSA+IC5zYlBhZ2VCdXR0b25zIHtcbiAgYm9yZGVyOiAwO1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIHdpZHRoOiBhdXRvO1xuICBmbG9hdDogcmlnaHQ7XG59XG5cbi8vIEEgY29udGFpbmVyL3JvdyBvZiB0b29sc1xuLnNiVG9vbHMge1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG59XG5cbi8vIEEgc2luZ2xlIHRvb2wgaW5zaWRlIHRoZSBjb250YWluZXIgb2YgdG9vbHNcbi5zYlRvb2xzID4gLnNiVG9vbCB7XG4gIGJvcmRlci1sZWZ0OiAwO1xuICBib3JkZXItcmFkaXVzOiAwO1xuICBmbG9hdDogbGVmdDtcblxuICA+IC5zYi1pY29uLXRyaWFuZ2xlLWRvd24ge1xuICAgIG1hcmdpbi1sZWZ0OiAtNXB4O1xuICB9XG5cbiAgJjpub3QoLm5nLWhpZGUpOm5vdCguc2JCdG5DbGVhcik6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgYm9yZGVyLWxlZnQ6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgIGJvcmRlci10b3AtbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICBib3JkZXItYm90dG9tLWxlZnQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIH1cblxuICAmOm5vdCgubmctaGlkZSk6bGFzdC1vZi10eXBlIHtcbiAgICBib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIH1cbn1cblxuLy8gQSBzaW5nbGUgdG9vbC9idXR0b24gaW4gYSB0b29sYmFyXG4uc2JUb29sIHtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICBib3JkZXI6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICBib3JkZXItcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIHBhZGRpbmc6IDVweCA3cHg7XG4gIGNvbG9yOiBAc2JHcm91cEJ0bkZvbnRDb2xvcjtcbiAgcG9zaXRpb246IHJlbGF0aXZlO1xuICBjdXJzb3I6IHBvaW50ZXI7XG5cbiAgLyogdGhlIGRvd24gdHJpYW5nbGUgaW4gYSB0b29sICovXG4gID4gLnNiLWljb24tZG93bi1kaXIge1xuICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgfVxuXG4gIC8vIHRoZSBcImFjdGl2ZVwiIHN0YXRlIG9mIGEgdG9vbCwgaS5lLiBpdCB3YXMgY2xpY2tlZCBhbmQgbm93IFwiYWN0aXZlXCJcbiAgJi5hY3RpdmUge1xuICAgIGJhY2tncm91bmQ6IEBzYkdyb3VwQnRuRm9udENvbG9yO1xuICAgIGNvbG9yOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gIH1cblxuICAmOmhvdmVyIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JHcm91cEJ0bkhvdmVyQmdDb2xvcjtcbiAgICBjb2xvcjogQHNiR3JvdXBCdG5Ib3ZlckZvbnRDb2xvcjtcbiAgfVxuXG4gICY6Zm9jdXMge1xuICAgIG91dGxpbmUtb2Zmc2V0OiAtMnB4O1xuICAgIG91dGxpbmUtd2lkdGg6IDJweDtcbiAgfVxufVxuXG4vLyBhIHRvb2wgd2l0aCBhIHBvcHVwIG1lbnVcbi5zYlRvb2wgPiBtZW51IHtcbiAgcG9zaXRpb246IGFic29sdXRlO1xuICByaWdodDogLTFweDtcbiAgdG9wOiAxNnB4O1xuICBmb250LXdlaWdodDogbm9ybWFsO1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gIHBhZGRpbmc6IDhweCAxNHB4O1xuICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICBib3JkZXItcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiAwO1xuICBib3JkZXI6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICBkaXNwbGF5OiBub25lO1xuICB6LWluZGV4OiA0OyAgLy8gdW5kZXIgZml4ZWQgcGFnZSBoZWFkZXJcbiAgdGV4dC1hbGlnbjogbGVmdDtcblxuICAmLmR0IHtcbiAgICB0b3A6IDIwcHg7XG4gICAgbWF4LWhlaWdodDogMzAwcHg7XG4gICAgb3ZlcmZsb3c6IGF1dG87XG4gIH1cblxuICAvLyBhIGhlYWRlciByb3cvdGl0bGUgb2YgdGhlIG1lbnVcbiAgJiA+IGhlYWRlciB7XG4gICAgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtcbiAgICBjb2xvcjogIzc3NztcbiAgICBtYXJnaW4tYm90dG9tOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIH1cblxuICAvLyBhIGljb24gaW4gdGhlIG1lbnVcbiAgKltjbGFzc149c2ItaWNvbl0ge1xuICAgIG1hcmdpbi1yaWdodDogNnB4O1xuICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgY29sb3I6ICM3Nzc7XG4gIH1cbn1cblxuLy8gdGhlIFwib3BlblwiIHN0YXRlIG9mIHRoZSBtZW51IG9mIGEgdG9vbFxuLnNiVG9vbC5vcGVuID4gbWVudSB7XG4gIGRpc3BsYXk6IGJsb2NrO1xufVxuXG4vLyB0aGUgbGlzdCBvZiBpdGVtcyBpbiB0aGUgdG9vbCdzIG1lbnVcbi5zYlRvb2wgPiBtZW51IHVsIHtcbiAgbGlzdC1zdHlsZTogbm9uZTtcbiAgcGFkZGluZzogMDtcbiAgbWFyZ2luOiAwO1xuXG4gIC8vIGEgaXRlbSBpbiB0aGUgbGlzdCBvZiB0aGUgdG9vbCdzIG1lbnVcbiAgJiA+IGxpIHtcbiAgICBwYWRkaW5nOiAzcHggM3B4IDNweCAwcHg7XG5cbiAgICAmID4gYSB7XG4gICAgICBkaXNwbGF5OiBibG9jaztcbiAgICB9XG5cbiAgICAvLyB0aGUgY2hlY2ttYXJrIG9mIGVhY2ggaXRlbVxuICAgIC5zYi1pY29uLW9rIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuXG4gICAgLy8gdGhlIGNoZWNrbWFyayBvZiB0aGUgc2VsZWN0ZWQgaXRlbVxuICAgICYuc2VsZWN0ZWQgLnNiLWljb24tb2sge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgZmxvYXQ6IHJpZ2h0O1xuICAgICAgbWFyZ2luLXJpZ2h0OiAwO1xuICAgIH1cbiAgfVxufVxuXG4vLyBhIHRvb2wgbWVudSB3aXRoIG11bHRpcGxlIGhlYWRlciBzZWN0aW9uc1xuLnNiVG9vbCA+IG1lbnUubXVsdGkgPiBoZWFkZXI6bGFzdC1vZi10eXBlIHtcbiAgbWFyZ2luLXRvcDogMTZweDtcbn1cbi8vIGEgdG9vbCBtZW51IHdpdGggbXVsdGlwbGUgbGlzdHMgIChyZXZpc2l0IHRoaXMhKVxuLnNiVG9vbCA+IG1lbnUubXVsdGkgPiB1bDpsYXN0LW9mLXR5cGUgbGkge1xuICBtaW4td2lkdGg6IDEzMHB4O1xufVxuXG4vLyBhIG1lbnUgbGluayBhY2Nlc3NlZCBmcm9tIHRoZSBhcnJvd1xuLnNiIG1lbnUgYXtcbiAgY29sb3I6QHNiR3JvdXBCdG5Gb250Q29sb3I7XG4gICY6aG92ZXIge1xuICAgIGNvbG9yOiBAc2JHcm91cEJ0bkhvdmVyRm9udENvbG9yO1xuICB9XG59XG4iLCIvLyBBbGwgc2FsZXNmb3JjZSBzdHlsZS9lbGVtZW50IG92ZXJyaWRlc1xuXG4jYm9keUNlbGwge1xuICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gIG92ZXJmbG93OiBoaWRkZW47XG4gIHBhZGRpbmc6IDBweDtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICB3aWR0aDogMTAwJTtcbiAgbWluLWhlaWdodDogNTAwcHg7XG59XG5cbi8vIGZvciBcInNldHVwXCIgcGFnZXMsIGUuZy4gRWRpdFNldHRpbmdzXG4jYm9keURpdl9zZXR1cCA+IC5vdXRlciB7XG4gIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3IgIWltcG9ydGFudDtcbiAgLm9MZWZ0IHtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JIZWFkZXJCZ0NvbG9yICFpbXBvcnRhbnQ7XG4gIH1cbn1cblxuI3NpZGViYXJDZWxsLnNpZGViYXJDb2xsYXBzZWQge1xuICBwYWRkaW5nLWxlZnQ6IDA7XG5cbiAgKyAjYm9keUNlbGwge1xuICAgIG1hcmdpbi1sZWZ0OiAtMXB4O1xuICB9XG59XG5cbiNNb3JlVGFic19UYWIgPiAjTW9yZVRhYnNfTGlzdCB7XG4gIHotaW5kZXg6IDEwOyAgLy8gbXVzdCBiZSBsYXJnZXIgdGhhbiBmaXhlZCBwYWdlIGhlYWRlciAodGFiIG92ZXJmbG93IGRyb3Bkb3duKVxufVxuXG50YWJsZSB0ZCB7XG4gIGZvbnQtZmFtaWx5OiBpbmhlcml0O1xufVxuXG4uc2IgdWwgbGksXG4uc2Igb2wgbGkge1xuICBtYXJnaW46IDA7XG4gIHBhZGRpbmc6IDA7XG59XG5cbi8vIEJ1dHRvbnMgLSBtb3JlIHNwZWNpZmljaXR5IG5lZWVkZWQgYXMgLmJ0biB0YWtlcyBwcmVjZWRlbmNlXG4uYnRuLnNiQnRuOmV4dGVuZCguc2JCdG4pIHt9XG5cbi8vIEFwZXggUGFnZU1lc3NhZ2VzIDxhcGV4OnBhZ2VNZXNzYWdlcz5cbi5zYiAubWVzc2FnZSB7XG4gIGJvcmRlci1yYWRpdXM6IDNweDtcbiAgbWFyZ2luOiBAc2JQYWdlSGVhZGVyTGVmdCBAc2JQYWdlSGVhZGVyTGVmdCAwIEBzYlBhZ2VIZWFkZXJMZWZ0KjEuNjtcbiAgcGFkZGluZzogMTJweDtcbiAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgYmFja2dyb3VuZDogbm9uZTtcblxuICAubXNnSWNvbiB7XG4gICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICB3aWR0aDogMDtcbiAgICBoZWlnaHQ6IDA7XG4gIH1cblxuICAubWVzc2FnZVRleHQge1xuICAgIG1hcmdpbjogMCAwIDAgMzBweDtcblxuICAgID4gc3BhbiwgaDQsID4gZGl2IHtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgIGxpbmUtaGVpZ2h0OiBAc2JGb250U2l6ZSAqIDIuMDtcbiAgICB9XG5cbiAgICBoNCB7XG4gICAgICBjb2xvcjogI2NjMDAwMDtcbiAgICAgIG1hcmdpbi1sZWZ0OiAxMHB4O1xuICAgICAgbWFyZ2luLXJpZ2h0OiA2cHg7XG4gICAgfVxuXG4gICAgPiBkaXY6bm90KDpmaXJzdC1vZi10eXBlKSB7XG4gICAgICBkaXNwbGF5OiBibG9jaztcbiAgICB9XG5cbiAgICAmOmJlZm9yZSB7XG4gICAgICBmb250LWZhbWlseTogXCJzYlwiO1xuICAgICAgZm9udC1zdHlsZTogbm9ybWFsO1xuICAgICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAyLjA7XG4gICAgICBzcGVhazogbm9uZTtcblxuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgdGV4dC1kZWNvcmF0aW9uOiBpbmhlcml0O1xuICAgICAgd2lkdGg6IDFlbTtcbiAgICAgIG1hcmdpbi1sZWZ0OiAtMzBweDtcbiAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgIGZvbnQtdmFyaWFudDogbm9ybWFsO1xuICAgICAgdGV4dC10cmFuc2Zvcm06IG5vbmU7XG4gICAgICBsaW5lLWhlaWdodDogMWVtO1xuICAgIH1cbiAgfVxuXG4gICYuZXJyb3JNMixcbiAgJi5lcnJvck0zLFxuICAmLmVycm9yTTQsXG4gICYuZXJyb3JNNSxcbiAgJi5lcnJvck02IHtcbiAgICAubWVzc2FnZVRleHQge1xuICAgICAgY29sb3I6ICNjYzAwMDA7XG4gICAgICAmOmJlZm9yZSB7XG4gICAgICAgIGNvbnRlbnQ6ICdcXGU4MjEnOyAgLy9zYi1pY29uLWF0dGVudGlvbi1jaXJjbGVkXG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgJi53YXJuaW5nTTIsXG4gICYud2FybmluZ00zLFxuICAmLndhcm5pbmdNNCxcbiAgJi53YXJuaW5nTTUsXG4gICYud2FybmluZ002IHtcbiAgICAubWVzc2FnZVRleHQge1xuICAgICAgY29sb3I6ICNkOTg2MzM7XG4gICAgICAmOmJlZm9yZSB7XG4gICAgICAgIGNvbnRlbnQ6ICdcXGU4MjAnOyAgLy9zYi1pY29uLWF0dGVudGlvblxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gICYuaW5mb00yLFxuICAmLmluZm9NMyxcbiAgJi5pbmZvTTQsXG4gICYuaW5mb001LFxuICAmLmluZm9NNiB7XG4gICAgLm1lc3NhZ2VUZXh0IHtcbiAgICAgIGNvbG9yOiAjMDAwMGNjO1xuICAgICAgJjpiZWZvcmUge1xuICAgICAgICBjb250ZW50OiAnXFxlODBmJzsgIC8vc2ItaWNvbi1pbmZvLWNpcmNsZWRcbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cbiIsIi8qXG5Nb2RhbCBkaWFsb2cgbWFza1xuXG5UaGUgbGF5ZXIgYmVoaW5kIHRoZSBkaWFsb2cgdGhhdCBtYXNrcyB0aGUgZW50aXJlIHBhZ2UuXG4qL1xuLnNiTW9kYWxNYXNrIHtcbiAgcG9zaXRpb246IGZpeGVkO1xuICB0b3A6IDA7XG4gIGxlZnQ6IDA7XG4gIHJpZ2h0OiAwO1xuICBib3R0b206IDA7XG4gIGJhY2tncm91bmQtY29sb3I6IEBzYk1hc2tDb2xvcjtcbiAgb3BhY2l0eTogMC44O1xuICB6LWluZGV4OiAxMDAwO1xufVxuXG4vKlxuTW9kYWwgRGlhbG9nXG5cbkEgZGlhbG9nIHdpdGggbW9kYWxpdHkgdGhhdCB0YWtlcyB1cCB0aGUgZW50aXJlIHBhZ2UuXG4gKi9cbi5zYk1vZGFsRGlhbG9nIHtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiQmdDb2xvcjtcbiAgLy8gYm9yZGVyOiAxcHggc29saWQgIzAwMDtcbiAgYm9yZGVyLXJhZGl1czogNHB4O1xuICB0b3A6IDE2MHB4O1xuICBwb3NpdGlvbjogZml4ZWQ7XG4gIGxlZnQ6IDA7XG4gIHJpZ2h0OiAwO1xuICBtYXJnaW46IDAgYXV0bztcbiAgLy8gbWF4LXdpZHRoOiA2MDBweDtcbiAgbWluLWhlaWdodDogMjAwcHg7XG4gIHotaW5kZXg6IDEwMDE7XG4gIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcblxuICA+IGhlYWRlciB7XG4gICAgYm9yZGVyLWJvdHRvbTogMnB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuICAgIHBhZGRpbmc6IDI0cHggMTZweDtcbiAgICAvLyBtYXJnaW4tYm90dG9tOiAxMHB4O1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gICAgLy8gbGluZS1oZWlnaHQ6IEBzYkZvbnRTaXplICogMmVtO1xuICAgIGNvbG9yOiBAc2JIZWFkZXJGb250Q29sb3I7XG5cbiAgICA+IGkge1xuICAgICAgY29sb3I6IEBzYkhlYWRlckZvbnRDb2xvcjtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAyO1xuICAgIH1cblxuICAgID4gKiB7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgIH1cblxuICAgID4gaDIge1xuICAgICAgLy8gZm9udC13ZWlnaHQ6IGJvbGQ7XG4gICAgICBtYXJnaW46IDAgMCAwIDZweDtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAyLjQ7XG4gICAgICBjb2xvcjogQHNiSGVhZGVyRm9udENvbG9yO1xuICAgIH1cblxuICAgID4gaDMge1xuICAgICAgY29sb3I6IEBzYkhlYWRlckZvbnRDb2xvcjtcbiAgICB9XG5cbiAgICA+IC5zZi1pY29uLWNsb3NlIHtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAzO1xuICAgICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgICAgdG9wOiAtNTBweDtcbiAgICAgIHJpZ2h0OiAwcHg7XG4gICAgICAmOmhvdmVyIHtcbiAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgfVxuICAgIH1cbiAgICA+IC5zZi1pY29uLWNsb3NlOmJlZm9yZSB7XG4gICAgICBjb2xvcjogI2ZmZjtcbiAgICB9XG4gIH1cblxuICAuc2JNb2RhbENvbnRlbnRDb250YWluZXIge1xuICAgIG92ZXJmbG93OiBhdXRvO1xuICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgaVtjbGFzc149c2YtaWNvbl0ge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG5cbiAgICAgICY6aG92ZXIge1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkhvdmVyQ29sb3I7XG4gICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JUYWJsZSB7XG4gICAgICBtYXJnaW4tYm90dG9tOiA4cHg7XG5cbiAgICAgIHRkIHtcbiAgICAgICAgYm9yZGVyLWJvdHRvbTogMDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICB1bCB7XG4gICAgICAtd2Via2l0LXBhZGRpbmctZW5kOiA0MHB4O1xuICAgIH1cbiAgfVxuXG4gIC5zYk1vZGFsRm9vdGVyIHtcbiAgICB3aWR0aDogMTAwJTtcbiAgICBib3JkZXItdG9wOiAycHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG4gICAgcGFkZGluZzogMTJweCAxNnB4O1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkhlYWRlckJnQ29sb3I7XG4gICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgYm9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogNHB4O1xuICAgIGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiA0cHg7XG4gICAgZGlzcGxheTogaW5saW5lLXRhYmxlO1xuXHRoZWlnaHQ6IDI2cHg7XG5cbiAgICA+IC5zYkJ1dHRvbnMge1xuICAgICAgZmxvYXQ6IHJpZ2h0O1xuICAgICAgcGFkZGluZzogMCAwIDAgMTZweDtcbiAgICAgID4gLnNiQnRuIHtcbiAgICAgICAgcGFkZGluZzogOHB4IDE2cHg7XG5cbiAgICAgICAgJi5zYlByaW1hcnlBY3Rpb24ge1xuICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgICAgICAgIGNvbG9yOiBAc2JQcmltYXJ5QnRuRm9udENvbG9yO1xuICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkhvdmVyQmdDb2xvcjtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgfVxufVxuXG4jRGVzY3JpcHRpb25FZGl0b3JEaWFsb2cge1xuICAgbWluLWhlaWdodDogNDI5cHg7XG59XG5cbi8vIHNiRGlhbG9nIGFuZCBzYkRpYWxvZ01hc2sgYXJlIGVsZW1lbnRzIGRlc2lnbmVkIHRvIHNwZWNpZmljYWxseSByZXBsYWNlIE92ZXJsYXlEaWFsb2cgd2hpbGUga2VlcGluZyBzYW1lIG1hcmt1cC9BUEkgc3RydWN0dXJlXG5Ac2JEaWFsb2daOiA5MDAwO1xuXG4uc2JEaWFsb2dNYXNrIHtcblx0cG9zaXRpb246IGZpeGVkO1xuXHR0b3A6IDA7XG5cdGxlZnQ6IDA7XG5cdHJpZ2h0OiAwO1xuXHRib3R0b206IDA7XG5cdGJhY2tncm91bmQ6IHJnYmEoIDEyNiwxNDAsMTUzLDAuOCk7XG5cdGRpc3BsYXk6IGJsb2NrO1xuXHR2aXNpYmlsaXR5OiBoaWRkZW47XG5cdHotaW5kZXg6IEBzYkRpYWxvZ1o7XG59XG5cbi5zYkRpYWxvZ01hc2sub3BlbiwgLnNiRGlhbG9nLm9wZW4ge1xuXHR2aXNpYmlsaXR5OiB2aXNpYmxlO1xufVxuXG4uc2JEaWFsb2csIC5zYkRpYWxvZyAqIHtcblx0Ym94LXNpemluZzogYm9yZGVyLWJveDtcblx0bWFyZ2luOiAwO1xuXHRwYWRkaW5nOiAwO1xufVxuXG4uc2JEaWFsb2cge1xuXHRwb3NpdGlvbjogZml4ZWQ7XG5cdHRvcDogMDtcblx0bGVmdDogMDtcblx0ei1pbmRleDogQHNiRGlhbG9nWiArIDE7XG5cdGRpc3BsYXk6IGJsb2NrO1xuXHR2aXNpYmlsaXR5OiBoaWRkZW47XG5cblx0PiAuc2JEaWFsb2dDb24ge1xuXHRcdGJvcmRlci1yYWRpdXM6IDRweDtcblx0XHRwb3NpdGlvbjogcmVsYXRpdmU7XG5cdFx0bWFyZ2luOiAwIGF1dG87XG5cdFx0YmFja2dyb3VuZDogI2ZmZjtcblxuXHRcdD4gaGVhZGVyIHtcblx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdFx0cG9zaXRpb246IHJlbGF0aXZlO1xuXHRcdFx0cGFkZGluZzogMjRweCAxNnB4O1xuXHRcdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRcdFx0Ym9yZGVyLWJvdHRvbTogMnB4IHNvbGlkIHJnYigyMTYsMjIxLDIzMCk7XG5cblx0XHRcdD4gaDIge1xuXHRcdFx0XHRsaW5lLWhlaWdodDogMjBweDtcblx0XHRcdFx0Zm9udC1zaXplOiAyNHB4O1xuXHRcdFx0fVxuXG5cdFx0XHQ+IGJ1dHRvbiB7XG5cdFx0XHRcdHBvc2l0aW9uOiBhYnNvbHV0ZTtcblx0XHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0XHR0b3A6IC00NnB4O1xuXHRcdFx0XHRyaWdodDogLThweDtcblx0XHRcdFx0d2lkdGg6IDQ4cHg7XG5cdFx0XHRcdGhlaWdodDogNDhweDtcblxuXHRcdFx0XHRjb2xvcjogI2ZmZjtcblx0XHRcdFx0YmFja2dyb3VuZDogbm9uZTtcblx0XHRcdFx0Ym9yZGVyOiAwO1xuXHRcdFx0XHRvdXRsaW5lOiAwO1xuXHRcdFx0XHRmb250LXNpemU6IDI0cHg7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0PiAuc2JEaWFsb2dCb2R5IHtcblx0XHRcdHBhZGRpbmc6IDE2cHg7XG5cdFx0fVxuXHR9XG59XG5cbi8vIEpRIFVJIHRvb2x0aXBzXG4udWktdG9vbHRpcDpleHRlbmQoLnNiKSB7XG4gIHBhZGRpbmc6IDhweDtcbiAgcG9zaXRpb246IGFic29sdXRlO1xuICB6LWluZGV4OiA5OTk5O1xuICBtYXgtd2lkdGg6IDMwMHB4O1xuICBiYWNrZ3JvdW5kOiBAc2JCZ0NvbG9yO1xuICBib3JkZXI6IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcbiAgYm94LXNoYWRvdzogMCAwIDJweCBAc2JCb3JkZXJDb2xvcjtcblxuICA+IC51aS10b29sdGlwLWNvbnRlbnQge1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICB9XG5cbiAgPiAuYXJyb3cge1xuICAgIHdpZHRoOiA3MHB4O1xuICAgIGhlaWdodDogMTZweDtcbiAgICBvdmVyZmxvdzogaGlkZGVuO1xuICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICBsZWZ0OiA1MCU7XG4gICAgbWFyZ2luLWxlZnQ6IC0zNXB4O1xuICAgIGJvdHRvbTogLTE2cHg7XG4gIH1cbiAgPiAuYXJyb3cudG9wIHtcbiAgICB0b3A6IC0xNnB4O1xuICAgIGJvdHRvbTogYXV0bztcblxuICAgICY6YWZ0ZXIge1xuICAgICAgYm90dG9tOiAtMjBweDtcbiAgICAgIHRvcDogYXV0bztcbiAgICB9XG4gIH1cbiAgPiAuYXJyb3cubGVmdCB7XG4gICAgbGVmdDogMjglO1xuICB9XG4gID4gLmFycm93OmFmdGVyIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JCZ0NvbG9yO1xuICAgIGJvcmRlcjogQHNiSGVhZGVyQm9yZGVyQ29sb3I7XG4gICAgY29udGVudDogXCJcIjtcbiAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgbGVmdDogMjBweDtcbiAgICB0b3A6IC0yMHB4O1xuICAgIHdpZHRoOiAyNXB4O1xuICAgIGhlaWdodDogMjVweDtcbiAgICBib3gtc2hhZG93OiA2cHggNXB4IDlweCAtOXB4IGJsYWNrO1xuICAgIC13ZWJraXQtdHJhbnNmb3JtOiByb3RhdGUoNDVkZWcpO1xuICAgIC1tcy10cmFuc2Zvcm06IHJvdGF0ZSg0NWRlZyk7XG4gICAgdHJhbnNmb3JtOiByb3RhdGUoNDVkZWcpO1xuICB9XG59XG5cbi8vIEpRIFVJIGExMXkgc3R5bGVzIChuZWVkZWQgZm9yIHRvb2xpcHMpXG4udWktaGVscGVyLWhpZGRlbi1hY2Nlc3NpYmxlIHtcbiAgYm9yZGVyOiAwO1xuICBjbGlwOiByZWN0KDAgMCAwIDApO1xuICBoZWlnaHQ6IDFweDtcbiAgbWFyZ2luOiAtMXB4O1xuICBvdmVyZmxvdzogaGlkZGVuO1xuICBwYWRkaW5nOiAwO1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIHdpZHRoOiAxcHg7XG59XG5cbiNzYkN1c3RvbUFjdGlvbkNvbnRhaW5lciB7XG4gIG1hcmdpbjogMThweDtcbiAgdG9wOiAwcHg7XG4gIGhlaWdodDogOTUlO1xuICAvLyBtaW4taGVpZ2h0OiAwcHg7XG4gID4gLnNmLWljb24tY2FuY2VsLWNpcmNsZWQge1xuICAgIGZvbnQtc2l6ZTogMzVweDtcbiAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgdG9wOiAtOXB4O1xuICAgIHJpZ2h0OiAtNHB4O1xuICAgIHdpZHRoOiAyMHB4O1xuICAgIGhlaWdodDogMjBweDtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JNYXNrQ29sb3I7XG4gICAgJjpob3ZlciB7XG4gICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgfVxuICB9XG4gID4gLnNmLWljb24tY2FuY2VsLWNpcmNsZWQ6YmVmb3JlIHtcbiAgICBjb2xvcjogI2ZmZjtcbiAgICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gICAgcmlnaHQ6IDE1cHg7XG4gICAgdG9wOiAtMTBweDtcbiAgfVxuXG59XG5cbiNlYXN5WERNX1NCUVFfcHJvdmlkZXIge1xuICB3aWR0aDogMTAwJTtcbiAgaGVpZ2h0OiAxMDAlO1xufVxuXG4jc2JQcmljZWJvb2tNb2RhbCB7XG4gIC5zYk1vZGFsRGlhbG9nO1xuICBtYXgtd2lkdGg6IDY0MHB4O1xuXG4gID4gLnNiTW9kYWxDb250ZW50Q29udGFpbmVyIHtcbiAgICBwYWRkaW5nOiAyMHB4O1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcblxuICAgID4gc2VsZWN0IHtcbiAgICAgIGhlaWdodDogMzRweDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjY7XG4gICAgICB3aWR0aDogMTAwJTtcbiAgICAgIG1hcmdpbjogMTRweCAwO1xuICAgIH1cbiAgfVxufVxuIiwiLy8gVGhlIHBhZ2UgdGl0bGUgYXQgdG9wIGxlZnQgb2YgcGFnZSAoaWNvbiwgcGFnZSBuYW1lLCBvYmplY3QgaW5zdGFuY2UgbmFtZSwgZXRjIClcbi5zYlBhZ2VUaXRsZSB7XG4gIC8vIHBhZGRpbmc6IDlweCBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgcGFkZGluZzogMjRweCAyNHB4IDE2cHg7XG4gIGNvbG9yOiBAc2JIZWFkZXJTdXBwb3J0Rm9udENvbG9yO1xuICBiYWNrZ3JvdW5kOiBAc2JIZWFkZXJCZ0NvbG9yO1xuICBib3JkZXItYm90dG9tOiAxcHggc29saWQgQHNiSGVhZGVyQm9yZGVyQ29sb3I7XG4gIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gIHRyYW5zaXRpb246IHBhZGRpbmcgLjI1cyBlYXNlLWluO1xuXG4gIGgxLCBoMiwgaDMge1xuICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gICAgdHJhbnNpdGlvbjogYWxsIC4yNXMgZWFzZS1pbjtcbiAgfVxuXG4gIC8vIHRoZSBzZWNvbmRhcnkgcGFnZSB0aXRsZSwgb2JqZWN0IGluc3RhbmNlIG5hbWUsIGV0YyAob3B0aW9uYWwpXG4gIGgyIHtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTsgIC8vIG5vdCBhIG5vcm1hbCBoMiBzaXplXG4gICAgY29sb3I6IEBzYkhlYWRlclN1cHBvcnRGb250Q29sb3I7XG4gICAgLy8gdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgICBmb250LXdlaWdodDogNDAwO1xuICAgIHBhZGRpbmctYm90dG9tOiA0cHg7XG4gIH1cblxuICBoMyB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7ICAvLyBub3QgYSBub3JtYWwgaDIgc2l6ZVxuICAgIGNvbG9yOiBAc2JIZWFkZXJTdXBwb3J0Rm9udENvbG9yO1xuICAgIC8vIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgZm9udC13ZWlnaHQ6IDQwMDtcbiAgICBwYWRkaW5nLXRvcDogNHB4O1xuICB9XG5cbiAgPiAuc2JQYWdlVGl0bGVUYWJsZSB7XG4gICAgZGlzcGxheTogdGFibGU7XG4gICAgd2lkdGg6IDEwMCU7XG4gICAgLXdlYmtpdC10cmFuc2l0aW9uLWRlbGF5OiAwcywgMHMsIDBzO1xuICAgIC13ZWJraXQtdHJhbnNpdGlvbi1kdXJhdGlvbjogMC4yNXMsIDAuMjVzLCAwLjI1cztcbiAgICAtd2Via2l0LXRyYW5zaXRpb24tcHJvcGVydHk6IC13ZWJraXQtdHJhbnNmb3JtLCBvcGFjaXR5LCBsZWZ0O1xuICAgIC13ZWJraXQtdHJhbnNpdGlvbi10aW1pbmctZnVuY3Rpb246IGVhc2UtaW4sIGVhc2UtaW4sIGVhc2U7XG4gICAgLXdlYmtpdC11c2VyLWRyYWc6IG5vbmU7XG5cbiAgICAmLnNiUmVzdWx0c1NlY3Rpb24ge1xuICAgICAgPiAuc2JQYWdlVGl0bGVMZWZ0IHtcbiAgICAgICAgd2lkdGg6IDEwMCU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgPiAuc2JQYWdlVGl0bGVMZWZ0LFxuICAgID4gLnNiUGFnZVRpdGxlUmlnaHQge1xuICAgICAgZGlzcGxheTogdGFibGUtY2VsbDtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiB0b3A7XG4gICAgICB0cmFuc2l0aW9uOiBhbGwgLjI1cyBlYXNlLWluO1xuICAgIH1cblxuICAgID4gLnNiUGFnZVRpdGxlTGVmdCB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtZmxleDtcbiAgICAgIHdpZHRoOiAzMCU7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogdG9wO1xuXG5cbiAgICAgIC5zYlRpdGxlcyB7XG4gICAgICAgIHZlcnRpY2FsLWFsaWduOiB0b3A7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgdHJhbnNpdGlvbjogYWxsIC4yNXMgZWFzZS1pbjtcbiAgICAgICAgLXdlYmtpdC10cmFuc2l0aW9uLWRlbGF5OiAwcywgMHMsIDBzO1xuICAgICAgICAtd2Via2l0LXRyYW5zaXRpb24tZHVyYXRpb246IDAuMjVzLCAwLjI1cywgMC4yNXM7XG4gICAgICAgIC13ZWJraXQtdHJhbnNpdGlvbi1wcm9wZXJ0eTogLXdlYmtpdC10cmFuc2Zvcm0sIG9wYWNpdHksIGxlZnQ7XG4gICAgICAgIC13ZWJraXQtdHJhbnNpdGlvbi10aW1pbmctZnVuY3Rpb246IGVhc2UtaW4sIGVhc2UtaW4sIGVhc2U7XG4gICAgICAgIC13ZWJraXQtdXNlci1kcmFnOiBub25lO1xuICAgICAgfVxuICAgICAgW2NsYXNzXj1zZi1pY29uXSB7Ly90aGVzZSBuZWVkIHRvIGJlIHZhcmlhYmxlc1xuICAgICAgICBmb250LXNpemU6IDUwcHg7XG4gICAgICAgIGhlaWdodDogNTBweDtcbiAgICAgICAgd2lkdGg6IDUwcHg7XG4gICAgICAgIGJvcmRlci1yYWRpdXM6IDRweDtcbiAgICAgICAgbWFyZ2luLXJpZ2h0OiAxMnB4O1xuICAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgdHJhbnNpdGlvbjogYWxsIC4yNXMgZWFzZS1pbjtcblxuICAgICAgICAmLnJlc2l6ZSB7XG4gICAgICAgICAgZm9udC1zaXplOiAzMHB4O1xuICAgICAgICAgIHBhZGRpbmc6IDEzcHggMTBweCAwIDEwcHg7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgW2NsYXNzXj1zZi1pY29uXTpiZWZvcmUgey8vdGhlc2UgbmVlZCB0byBiZSB2YXJpYWJsZXNcbiAgICAgICAgY29sb3I6ICNmZmY7XG4gICAgICAgIG1hcmdpbjogMDtcbiAgICAgICAgcG9zaXRpb246IHJlbGF0aXZlO1xuICAgICAgfVxuXG4gICAgICAucmVzZXRIZWlnaHRbY2xhc3NePXNmLWljb25dOmJlZm9yZSB7XG4gICAgICAgIHRvcDogMHB4O1xuICAgICAgfVxuXG5cblxuICAgICAgPiBzcGFuIHtcblx0XHRcdFx0Ly9UaGlzIGlzIHRvIGZpeCB0aGUgaGVhZGVyIGlzc3VlIGluIFNhZmFyaVxuICAgICAgICB3aWR0aDogMjAwcHg7XG5cblx0XHRcdFx0Ly8gQnV0IGluIElFMTErIGl0IGJyZWFrcywgc28gcmVzZXQgaXQgYmFjayB3aXRoIGEgaGFja3kgd2F5IHRvIHRhcmdldCBJRSBvbmx5XG5cdFx0XHRcdEBtZWRpYSBzY3JlZW4gYW5kICgtbXMtaGlnaC1jb250cmFzdDogbm9uZSksICgtbXMtaGlnaC1jb250cmFzdDogYWN0aXZlKSB7XG5cdFx0XHRcdFx0d2lkdGg6IGF1dG87XG5cdFx0XHRcdH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IC5zYlBhZ2VUaXRsZVJpZ2h0IHtcbiAgICAgIHdpZHRoOiAxMDAlO1xuICAgICAgPiAuc2JUb29scyxcbiAgICAgID4gLnNiQnV0dG9ucyB7XG4gICAgICAgIGZsb2F0OiByaWdodDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyB0aGUgXCJYIFByb2R1Y3RzIEZvdW5kXCIgbGFiZWxcbiAgLnNiUmVzdWx0cyB7XG4gICAgbWFyZ2luOiA3cHggMCAwIDYycHg7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgdHJhbnNpdGlvbjogYWxsIC4yNXMgZWFzZS1pbjtcblxuICAgICYuc2JXYXJuaW5nIHtcbiAgICAgIG1hcmdpbi10b3A6IDJweDtcbiAgICAgIGNvbG9yOiAjY2M3ODI0O1xuICAgICAgW2NsYXNzPXNmLWljb24td2FybmluZ10ge1xuICAgICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS42O1xuICAgICAgICB3aWR0aDogMTNweDtcbiAgICAgICAgaGVpZ2h0OiAyMHB4O1xuICAgICAgICAvLyB0b3A6IC0xNXB4O1xuICAgICAgICAmOmJlZm9yZSB7XG4gICAgICAgICAgY29sb3I6ICNjYzc4MjQ7XG4gICAgICAgICAgbWFyZ2luOiAwIDZweCAwIDA7XG4gICAgICAgICAgcG9zaXRpb246IHJlbGF0aXZlO1xuICAgICAgICAgIHRvcDogMnB4O1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgJi5zcXVlZXplZCB7XG4gICAgcGFkZGluZzogMjBweCAxNXB4IDdweDtcblxuICAgID4gLnNiUGFnZVRpdGxlVGFibGUge1xuICAgICAgPiAuc2JQYWdlVGl0bGVMZWZ0IHtcbiAgICAgICAgLy8gcGFkZGluZzogN3B4IDA7XG5cbiAgICAgICAgW2NsYXNzXj1zZi1pY29uXSB7XG4gICAgICAgICAgZm9udC1zaXplOiAzNnB4O1xuICAgICAgICAgIGhlaWdodDogMzZweDtcbiAgICAgICAgICB3aWR0aDogMzZweDtcbiAgICAgICAgICAmLnJlc2l6ZSB7XG4gICAgICAgICAgICBmb250LXNpemU6IDIzcHg7XG4gICAgICAgICAgICBwYWRkaW5nLXRvcDogOHB4O1xuICAgICAgICAgICAgcGFkZGluZy1sZWZ0OiA3cHg7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICAgIFtjbGFzc149c2YtaWNvbl06YmVmb3JlIHtcbiAgICAgICAgICB0b3A6IC01cHg7XG4gICAgICAgIH1cbiAgICAgICAgLnNiVGl0bGVzIHtcbiAgICAgICAgICB0cmFuc2Zvcm06IHRyYW5zbGF0ZTNkKDBweCwgLTEycHgsIDBweCk7XG4gICAgICAgICAgLXdlYmtpdC10cmFuc2Zvcm06IG1hdHJpeCgxLCAwLCAwLCAxLCAwLCAtOCk7XG4gICAgICAgIH1cbiAgICAgICAgaDIge1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC5zYkJ1dHRvbnMge1xuICAgICAgICBwYWRkaW5nOiAwO1xuICAgICAgfVxuXG4gICAgICAmLnNiUmVzdWx0c1NlY3Rpb24ge1xuICAgICAgICBvcGFjaXR5OiAwO1xuICAgICAgICBkaXNwbGF5OiBub25lOyAvL1RlbXBvcmFyeSB1bnRpbCB0aGVyZSBpcyBhbm90aGVyIHdheSB0byBrZWVwIHRoaXMgZnJvbSB0YWtpbmcgdXAgc3BhY2VcbiAgICAgICAgdHJhbnNmb3JtOiB0cmFuc2xhdGUzZCgwcHgsIC0xN3B4LCAwcHgpO1xuICAgICAgICAtd2Via2l0LXRyYW5zZm9ybTogbWF0cml4KDEsIDAsIDAsIDEsIDAsIC0xNyk7XG4gICAgICB9XG4gICAgfVxuICB9XG59XG5cbi8vIEZpeCB0aGUgcGFnZSB0aXRsZSB0byB0b3Agb2Ygdmlld3BvcnQgd2hlbiBuZWVkZWRcbi5zYkhlYWRlckZpeGVkIC5zYlBhZ2VUaXRsZSB7XG4gIHBvc2l0aW9uOiBmaXhlZDtcbiAgdG9wOiAxMTRweDsgLy8gaGVpZ2h0IG9mIFNGIEFwcCBoZWFkZXIuICBPbmx5IHNldCBoZXJlIGZvciBpbml0aWFsIHJlbmRlcmluZ1xuICBsZWZ0OiAxMHB4OyAgLy8gc2l6ZSBvZiBTRiBBbG9oYSBndXR0ZXJzXG4gIHJpZ2h0OiAxMHB4O1xuICB6LWluZGV4OiA1O1xuICB2aXNpYmlsaXR5OiBoaWRkZW47IC8vIGZvciBsb2FkaW5nLiB3ZSdsbCBkeW5hbWljYWxseSBzaG93IHdoZW4gcGFnZSBpcyBcInJlYWR5XCJcbn1cblxuI3NpZGViYXJDZWxsOm5vdCguc2lkZWJhckNvbGxhcHNlZCkgKyAjYm9keUNlbGwgLnNiSGVhZGVyRml4ZWQgLnNiUGFnZVRpdGxlIHtcbiAgbGVmdDogMjMwcHg7ICAvLyBmb3IgaW5pdGlhbCBwb3NpdGlvbiB3aGlsZSBcImxvYWRpbmdcIiBpcyBzaG93blxufVxuXG4jbWFpbkNvbnRlbnQge1xuICBtYXJnaW4tbGVmdDogMXB4O1xufVxuXG4vLyBUaGUgcGFnZSBibG9jayBhZnRlciB0aGUgcGFnZSB0aXRsZSwgaS5lLiB0aGUgbWFpbiBjb250ZW50cyBvZiB0aGUgcGFnZVxuLnNiUGFnZUJsb2NrIHtcbiAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbn1cblxuLy8gQSBzZWN0aW9uIHdpdGhpbiBhIHBhZ2UgYmxvY2tcbi5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuICBtYXJnaW46IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICBiYWNrZ3JvdW5kOiBAc2JIZWFkZXJCZ0NvbG9yO1xuICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG5cbiAgPiBoZWFkZXIge1xuICAgIG1hcmdpbi1ib3R0b206IDEwcHg7XG4gIH1cblxuICAmOmFmdGVyOmV4dGVuZCggLnNiQ2xlYXIgKSB7fVxufVxuXG4vLyBUaGUgTG9hZGluZyBsYXllciBtb2RhbCBtYXNrXG4uc2JMb2FkaW5nTWFzayB7XG4gIHBvc2l0aW9uOiBmaXhlZDtcbiAgdG9wOiAwO1xuICBsZWZ0OiAwO1xuICByaWdodDogMDtcbiAgYm90dG9tOiAwO1xuICBiYWNrZ3JvdW5kLWNvbG9yOiAjQThCN0M3O1xuICBvcGFjaXR5OiAwLjg7XG4gIHotaW5kZXg6IDEwMDAxO1xufVxuXG4vLyBUaGUgTG9hZGluZyBzcGlubmVyIGljb25cbi5zYkxvYWRpbmcge1xuICBwb3NpdGlvbjogZml4ZWQ7XG4gIHRvcDogMzclO1xuICBsZWZ0OiA1MCU7XG4gIG1hcmdpbi1sZWZ0OiAtNzRweDtcbn1cblxuLy8gTG9va3VwIFNlYXJjaCBSZXN1bHRzXG4uc2JTZWFyY2hSZXN1bHRzIHtcblxuICAvLyB0aGUgbGlzdCBvZiBwcm9kdWN0c1xuICAuc2JUYWJsZSB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcblxuICAgIC8vIGZpcnN0IGNvbHVtbiBvZiBsaXN0IGlzIGNoZWNrYm94L3NlbGVjdG9yIGNvbHVtblxuICAgID4gdGhlYWQgPiB0ciA+IHRoOmZpcnN0LW9mLXR5cGUsXG4gICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgfVxuXG4gICAgPiB0Ym9keSA+IHRyID4gdGQge1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICB9XG4gIH1cblxuICAvLyB0b29sYmFyIGluIHVwcGVyIHJpZ2h0IG9mIHBhZ2UgKEZpbHRlciwgZXRjKVxuICAuc2JUb29scyB7XG4gICAgZmxvYXQ6IHJpZ2h0O1xuICB9XG59XG4iLCJAc2JUZXh0Ym94SGVpZ2h0OiBAc2JGb250U2l6ZSAqIDIuNTtcbkBzYlRleHRib3hCb3JkZXI6IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbkBzYlRleHRib3hSYWRpdXM6IDNweDtcbkBzYlNlbGVjdEhlaWdodDogQHNiRm9udFNpemUgKiAyLjU7XG5Ac2JTZWxlY3RCb3JkZXI6IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbkBzYlNlbGVjdFJhZGl1czogM3B4O1xuQHNiU2VsZWN0QmdDb2xvcjogQHNiUGFnZUJnQ29sb3I7XG5Ac2JDaGVja2JveFNpemU6IDIycHg7XG5cbi5zYiB7XG4gIC8vIFRleHQgYm94ZXMgLSBkZWZhdWx0IHN0eWxlc1xuICBpbnB1dFt0eXBlPXRleHRdLCBpbnB1dDpub3QoW3R5cGVdKSB7XG4gICAgaGVpZ2h0OiBAc2JUZXh0Ym94SGVpZ2h0O1xuICAgIGJvcmRlcjogQHNiVGV4dGJveEJvcmRlcjtcbiAgICBib3JkZXItcmFkaXVzOiBAc2JUZXh0Ym94UmFkaXVzO1xuICAgIHBhZGRpbmc6IDAgNXB4O1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXG4gICAgJi5oYXNEYXRlcGlja2VyIHtcbiAgICAgIG1pbi13aWR0aDogOTVweDtcbiAgICAgIHdpZHRoOiA4NSU7XG4gICAgICAgJi5pbnZhbGlkRGF0ZSB7XG4gICAgICAgIGJvcmRlci1jb2xvcjogI2MwMDtcbiAgICAgICB9XG4gICAgfVxuXG4gIH1cblxuXG4gIC8vIFNlbGVjdCBwdWxsZG93bnMgLSBkZWZhdWx0IHN0eWxlc1xuICBzZWxlY3Q6bm90KFttdWx0aXBsZV0pIHtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAtd2Via2l0LWFwcGVhcmFuY2U6IG5vbmU7XG4gICAgLW1vei1hcHBlYXJhbmNlOiBub25lO1xuICAgIG1pbi13aWR0aDogMTAwcHg7XG4gICAgcGFkZGluZzogMCAxNHB4O1xuICAgIG1hcmdpbjogMDtcbiAgICBoZWlnaHQ6IEBzYlNlbGVjdEhlaWdodDtcbiAgICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJ2RhdGE6aW1hZ2Uvc3ZnK3htbDtiYXNlNjQsUEhOMlp5QjRiV3h1Y3owaWFIUjBjRG92TDNkM2R5NTNNeTV2Y21jdk1qQXdNQzl6ZG1jaUlIaHRiRzV6T25oc2FXNXJQU0pvZEhSd09pOHZkM2QzTG5jekxtOXlaeTh4T1RrNUwzaHNhVzVySWlCMlpYSnphVzl1UFNJeExqRWlJR2xrUFNKTVlYbGxjbDh4SWlCNFBTSXdjSGdpSUhrOUlqQndlQ0lnZG1sbGQwSnZlRDBpTUNBd0lESTNMallnTWpFaUlHVnVZV0pzWlMxaVlXTnJaM0p2ZFc1a1BTSnVaWGNnTUNBd0lESTNMallnTWpFaUlIaHRiRHB6Y0dGalpUMGljSEpsYzJWeWRtVWlQZzBLSUNBOFp6NE5DaUFnSUNBOFpHVm1jejROQ2lBZ0lDQWdJRHh3WVhSb0lHbGtQU0pUVmtkSlJGOHhYeUlnWkQwaVRUVXVOaUExYURFMkxqUmpNQzQwSURBZ01DNDRJREF1TmlBd0xqUWdNV3d0T0NBNUxqaGpMVEF1TXlBd0xqTXRNQzQ1SURBdU15MHhMaklnTUd3dE9DMDVMamhETkM0NElEVXVOaUExTGpFZ05TQTFMallnTlhvaUx6NE5DaUFnSUNBOEwyUmxabk0rRFFvZ0lDQWdQR05zYVhCUVlYUm9JR2xrUFNKVFZrZEpSRjh5WHlJK0RRb2dJQ0FnSUNBOGRYTmxJSGhzYVc1ck9taHlaV1k5SWlOVFZrZEpSRjh4WHlJZ2IzWmxjbVpzYjNjOUluWnBjMmxpYkdVaUx6NE5DaUFnSUNBOEwyTnNhWEJRWVhSb1BnMEtJQ0FnSUR4eVpXTjBJSGc5SWpBaUlIazlJakFpSUdOc2FYQXRjR0YwYUQwaWRYSnNLQ05UVmtkSlJGOHlYeWtpSUdacGJHdzlJaU0xTlRZNU9FUWlJSGRwWkhSb1BTSXlOeTQySWlCb1pXbG5hSFE5SWpJeElpOCtEUW9nSUR3dlp6NE5Dand2YzNablBnMEsnKTtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JCZ0NvbG9yO1xuICAgIGJhY2tncm91bmQtcG9zaXRpb246IDk1JSA1MCU7XG4gICAgYmFja2dyb3VuZC1yZXBlYXQ6IG5vLXJlcGVhdDtcbiAgICBiYWNrZ3JvdW5kLXNpemU6IDE0cHggMTRweDtcbiAgICBib3JkZXI6IEBzYlNlbGVjdEJvcmRlcjtcbiAgICBib3JkZXItcmFkaXVzOiAzcHg7XG5cblx0XHQmOjotbXMtZXhwYW5kIHtcblx0XHRcdGRpc3BsYXk6IG5vbmU7IC8vIHJlbW92ZXMgYXJyb3cgZm9yIElFXG5cdFx0fVxuICB9XG5cbiAgLy8gQ2hlY2tib3ggLSBkZWZhdWx0IHN0eWxlc1xuICBpbnB1dFt0eXBlPWNoZWNrYm94XSB7XG4gICAgd2lkdGg6IEBzYkNoZWNrYm94U2l6ZTtcbiAgICBoZWlnaHQ6IEBzYkNoZWNrYm94U2l6ZTtcbiAgICBtYXJnaW46IDA7XG4gICAgYm9yZGVyOiAwO1xuICB9XG5cbiAgaW5wdXQsIGJ1dHRvbiwgc2VsZWN0LCB0ZXh0YXJlYSB7XG4gICAgZm9udC1mYW1pbHk6IGluaGVyaXQ7XG4gIH1cbn1cblxuLypcbkR1YWxpbmcgTGlzdCBib3hcblxuQSBjb250cm9sIHdpdGggdHdvIGxpc3QgYm94ZXMgYW5kIGFycm93cyB0byBtb3ZlIGl0ZW1zIGxlZnQvcmlnaHQgYW5kIHVwL2Rvd24gYmV0d2VlbiB0aG9zZSB0d28uXG4gKi9cbi5zYkR1YWxMaXN0Qm94IHtcbiAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gIGNvbG9yOiBpbmhlcml0O1xuICBib3JkZXItY29sbGFwc2U6IGNvbGxhcHNlO1xuICBib3JkZXItc3BhY2luZzogMDtcblxuICA+IHRoZWFkID4gdHIgPiB0aCB7XG4gICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG5cbiAgICA+IFtjbGFzc149c2ItaWNvbl0ge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcbiAgICAgIGNvbG9yOiBAc2JJY29uQ29sb3I7XG4gICAgfVxuICB9XG5cbiAgPiB0Ym9keSA+IHRyID4gdGQ6bnRoLWNoaWxkKDIpLFxuICA+IHRib2R5ID4gdHIgPiB0ZDpudGgtY2hpbGQoNCkge1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICB9XG5cbiAgYSB7XG4gICAgY29sb3I6IGluaGVyaXQ7XG4gICAgcGFkZGluZzogMnB4O1xuICAgIG1hcmdpbjogMCA4cHg7XG4gICAgYm9yZGVyOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICBib3JkZXItYm90dG9tOiAwO1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuXG4gICAgJjpob3ZlciB7XG4gICAgICBiYWNrZ3JvdW5kOiAjMDA2OWQ5O1xuICAgICAgY29sb3I6ICNmZmY7XG4gICAgICBib3JkZXItY29sb3I6ICMwMDY5ZDk7XG4gICAgfVxuXG4gICAgLnNmLWljb24tcmlnaHQsIC5zZi1pY29uLWxlZnQge1xuICAgICAgcGFkZGluZzogMnB4O1xuICAgIH1cblxuICAgIFtjbGFzc149c2ItaWNvbl0ge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNTtcbiAgICB9XG5cbiAgICBbY2xhc3NePXNiLWljb24tdG8tZW5kXTpiZWZvcmUge1xuICAgICAgLnJvdGF0ZSgtOTBkZWcpO1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIC44NTtcbiAgICB9XG5cbiAgICAmOm50aC1jaGlsZCg0KSBbY2xhc3NePXNiLWljb24tdG8tZW5kXTpiZWZvcmUge1xuICAgICAgLnJvdGF0ZSg5MGRlZyk7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogLjg1O1xuICAgIH1cblxuICAgICY6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICBib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogM3B4O1xuICAgICAgYm9yZGVyLXRvcC1sZWZ0LXJhZGl1czogM3B4O1xuICAgIH1cblxuICAgICY6bGFzdC1vZi10eXBlIHtcbiAgICAgIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICAgYm9yZGVyLWJvdHRvbS1yaWdodC1yYWRpdXM6IDNweDtcbiAgICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IDNweDtcbiAgICB9XG4gIH1cblxuICBzZWxlY3Qge1xuICAgIGZvbnQtc2l6ZTogaW5oZXJpdDtcbiAgICBoZWlnaHQ6IDM1MHB4O1xuICAgIHdpZHRoOiAxODBweDtcbiAgICBwYWRkaW5nOiA4cHg7XG5cbiAgICA+IG9wdGlvbiB7XG4gICAgICBwYWRkaW5nOiA0cHg7XG5cbiAgICAgICYucmVxdWlyZWQge1xuICAgICAgICBjb2xvcjogI2FmMjYyNjtcbiAgICAgICAgZm9udC13ZWlnaHQ6IGJvbGQ7XG4gICAgICAgIC13ZWJraXQtZm9udC1zbW9vdGhpbmc6IHN1YnBpeGVsLWFudGlhbGlhc2VkO1xuICAgICAgfVxuICAgIH1cbiAgfVxufVxuIiwiLypcblJvdGF0ZXMgYW4gZWxlbWVudFxuXG4kciAtIHRoZSByb3RhdGUgZnVuY3Rpb24gcGFyYW10ZXIsIGUuZy4gOTBkZWdcbiAqL1xuLnJvdGF0ZShAcikge1xuICAtd2Via2l0LXRyYW5zZm9ybTogcm90YXRlKEByKTtcbiAgLW1vei10cmFuc2Zvcm06IHJvdGF0ZShAcik7XG4gIC1tcy10cmFuc2Zvcm06IHJvdGF0ZShAcik7XG4gIHRyYW5zZm9ybTogcm90YXRlKEByKTtcbn1cbiIsIiN1aS1kYXRlcGlja2VyLWRpdiB7XG4gIGRpc3BsYXk6IG5vbmU7XG59XG5cbi51aS1kYXRlcGlja2VyIHtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiQ29udGVudEJnQ29sb3I7O1xuICBib3JkZXItbGVmdDogQHNiQ29udGVudEJvcmRlcjtcbiAgYm9yZGVyLXJpZ2h0OiBAc2JDb250ZW50Qm9yZGVyO1xuICBib3JkZXItcmFkaXVzOiAzcHg7XG4gIGJveC1zaGFkb3c6IDAgMnB4IDZweCAjYWFhO1xuICBwYWRkaW5nOiA3cHggNXB4IDZweDtcbiAgb3ZlcmZsb3c6IGhpZGRlbjtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICB3aWR0aDogYXV0bztcbiAgei1pbmRleDogNDsgLy8gdW5kZXIgZml4ZWQgcGFnZSBoZWFkZXJcblxuICAudWktZGF0ZXBpY2tlci1oZWFkZXIge1xuICAgIHBhZGRpbmc6IDAgMCAzcHg7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci10aXRsZSB7XG4gICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICB9XG5cbiAgLnVpLWRhdGVwaWNrZXItbW9udGgge1xuICAgIGZsb2F0OiBsZWZ0O1xuICB9XG5cbiAgLnVpLWRhdGVwaWNrZXIteWVhciB7XG4gICAgZmxvYXQ6IHJpZ2h0O1xuICB9XG5cbiAgLnVpLWRhdGVwaWNrZXItcHJldiwgLnVpLWRhdGVwaWNrZXItbmV4dCB7XG4gICAgbWFyZ2luLXRvcDogNHB4O1xuICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICB3aWR0aDogMTlweDtcbiAgICBoZWlnaHQ6IDE2cHg7XG4gICAgbWFyZ2luOiAycHggNHB4IDAgMDtcbiAgICBiYWNrZ3JvdW5kLXJlcGVhdDogbm8tcmVwZWF0O1xuICAgIGxpbmUtaGVpZ2h0OiA0MDAlO1xuICAgIGZsb2F0OiBsZWZ0O1xuICB9XG5cbiAgLy8gTmVlZCB0byByZXBsYWNlIGljb25cbiAgLnVpLWRhdGVwaWNrZXItcHJldiB7XG4gICAgYmFja2dyb3VuZC1pbWFnZTogdXJsKCcvaW1nL2Z1bmNfaWNvbnMvY2FsL2xlZnRBcnJvdy5naWYnKTtcbiAgfVxuXG4gIC8vIE5lZWQgdG8gcmVwbGFjZSBpY29uXG4gIC51aS1kYXRlcGlja2VyLW5leHQge1xuICAgIGJhY2tncm91bmQtaW1hZ2U6IHVybCgnL2ltZy9mdW5jX2ljb25zL2NhbC9yaWdodEFycm93LmdpZicpO1xuICB9XG5cbiAgLnVpLWRhdGVwaWNrZXItY2FsZW5kYXIge1xuICAgIHBhZGRpbmc6IDAgNXB4O1xuICAgIG1hcmdpbi1sZWZ0OiBhdXRvO1xuICAgIG1hcmdpbi1yaWdodDogYXV0bztcblxuICAgID4gdGhlYWQgPiB0ciA+IHRoIHtcbiAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gICAgICBmb250LXNpemU6IC45ZW07XG4gICAgICB3aWR0aDogMTQlO1xuICAgIH1cblxuICAgIHRkIHtcbiAgICAgIHBhZGRpbmc6IDJweDtcbiAgICB9XG5cbiAgICBhIHtcbiAgICAgIHdpZHRoOiBhdXRvO1xuICAgICAgYm9yZGVyLWJvdHRvbTogbm9uZTtcbiAgICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICAgIGZvbnQtc2l6ZTogLjk1ZW07XG4gICAgfVxuXG4gICAgPiB0Ym9keSA+IHRyID4gdGQge1xuICAgICAgJjpob3ZlciB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6ICNlMGYwZmI7XG4gICAgICAgIGZvbnQtd2VpZ2h0OiBib2xkO1xuICAgICAgICAvLyB0ZXh0LWRlY29yYXRpb246IG5vbmU7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnVpLWRhdGVwaWNrZXItb3RoZXItbW9udGggYSB7XG4gICAgY29sb3I6ICM5OTk7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci10b2RheSB7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogIzE3OTdjMDtcbiAgICBjb2xvcjogI2ZmZjtcbiAgICBmb250LXdlaWdodDogYm9sZDtcbiAgICB0ZXh0LWRlY29yYXRpb246IG5vbmU7XG5cbiAgICAmOmhvdmVyIHtcbiAgICAgIGJhY2tncm91bmQtY29sb3I6ICNlMGYwZmI7O1xuICAgICAgY29sb3I6ICMzMzM7XG4gICAgfVxuICB9XG5cbiAgLnVpLWRhdGVwaWNrZXItY3VycmVudC1kYXkge1xuICAgIGJhY2tncm91bmQtY29sb3I6ICNjNmUxZmY7XG4gICAgYm9yZGVyOiAxcHggc29saWQgIzljZjtcbiAgICBmb250LXdlaWdodDogYm9sZDtcbiAgICB0ZXh0LWRlY29yYXRpb246IG5vbmU7XG5cbiAgICA+IGEge1xuICAgICAgY29sb3I6ICMzMzM7XG4gICAgfVxuICB9XG5cbiAgLnVpLWRhdGVwaWNrZXItYnV0dG9ucGFuZSB7XG4gICAgcGFkZGluZzogMXB4O1xuICAgIGNsZWFyOiBib3RoO1xuXG4gICAgPiBidXR0b24ge1xuICAgICAgYmFja2dyb3VuZDogdHJhbnNwYXJlbnQ7XG4gICAgICBib3JkZXI6IG5vbmUgIWltcG9ydGFudDtcbiAgICAgIGNvbG9yOiAjMDE1YmE3O1xuICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgICAgIHBhZGRpbmc6IDA7XG4gICAgICBtYXJnaW46IDA7XG5cbiAgICAgICY6aG92ZXIge1xuICAgICAgICB0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1jbG9zZSB7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgfVxufVxuIiwiLy8gRGVmYXVsdCBwYWRkaW5nIGZvciBhbGwgY2VsbHMgKGhlYWRlciwgYm9keSwgZm9vdGVyKVxuQHNiVGFibGVDZWxsUGFkZGluZzogOHB4IDZweCA2cHg7XG5cbi8vIERlZmF1bHQgaGVpZ2h0IGZvciBhbGwgdGFibGUgY2VsbHMgKGhlYWRlciwgYm9keSwgZm9vdGVyKVxuQHNiVGFibGVDZWxsSGVpZ2h0OiA0OXB4O1xuXG4vLyBCYWNrZ3JvdW5kIGNvbG9yIHdoZW4gaG92ZXJpbmcgb24gY29udGVudCB0YWJsZSBib2R5IHJvd3NcbkBzYlRhYmxlUm93SG92ZXJDb2xvcjogQHNiQ29udGVudEJnQ29sb3I7XG5cbi8vIE92ZXJyaWRlIHRoZSBzdGFuZGFyZCBTRiBmb250IGNvbG9yIG9mIGJsYWNrLlxudGFibGUgPiB0Ym9keSA+IHRyID4gdGQge1xuICBjb2xvcjogQHNiRm9udENvbG9yO1xufVxuXG4vLyBhIHRhYmxlIHRoYXQgZGlzcGxheXMgYSBsaXN0IG9mIGVudGl0aWVzL3Jvd3MvZXRjLCBhIGxhIGEgXCJsaXN0IHBhZ2VcIlxuLnNiVGFibGUge1xuICBib3JkZXItY29sbGFwc2U6IGNvbGxhcHNlO1xuICBib3JkZXItc3BhY2luZzogMDtcbiAgd2lkdGg6IDEwMCU7XG4gIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3I7XG5cbiAgLy8gdGgge1xuICAvLyAgIC8vIGhlaWdodDogQHNiVGFibGVDZWxsSGVpZ2h0O1xuICAvLyB9XG5cbiAgdGQge1xuICAgIGhlaWdodDogQHNiVGFibGVDZWxsSGVpZ2h0O1xuICB9XG5cbiAgLy8gUHJvZHVjdCBPcHRpb25zIHRoYXQgYXJlIGR5bmFtaWMgdXBncmFkZSBvcHRpb25zXG4gIHRyLnNiVXBncmFkZU9wdGlvbiA+IHRkIHtcbiAgICBjb2xvcjogI2FhYWFhYTtcbiAgfVxuXG4gIC8vIGNlbnRlciBhbGlnbmVkIGNlbGxzXG4gID4gdGJvZHkgPiB0ciA+IHRkLmNlbnRlcixcbiAgPiB0Ym9keSA+IHRyID4gdGQuc2JBY3Rpb25zLFxuICA+IHRoZWFkID4gdHIgPiB0aC5zYkFjdGlvbnMsXG4gID4gdGhlYWQgPiB0ciA+IHRoLmNlbnRlcixcbiAgPiB0Zm9vdCA+IHRyID4gdGQuY2VudGVyIHtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIH1cblxuICAvLyByaWdodCBhbGlnbmVkIGNlbGxzXG4gID4gdGhlYWQgPiB0ciA+IHRoLnJpZ2h0LFxuICA+IHRib2R5ID4gdHIgPiB0ZC5yaWdodCxcbiAgPiB0Zm9vdCA+IHRyID4gdGQucmlnaHQge1xuICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICB9XG5cbiAgYSB7XG4gICAgY29sb3I6IGluaGVyaXQ7XG4gIH1cblxuICB0Ym9keSB7XG4gICAgLnNiQWN0aW9ucyB7XG4gICAgICBpICB7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgICAgICY6aG92ZXIge1xuICAgICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gICAgLnNiTWFzdGVyIHtcbiAgICAgIGlucHV0W3R5cGU9Y2hlY2tib3hde1xuICAgICAgICAtbXMtdHJhbnNmb3JtOiBzY2FsZSguNyk7IC8qIElFICovXG4gICAgICAgIC1tb3otdHJhbnNmb3JtOiBzY2FsZSguNyk7IC8qIEZGICovXG4gICAgICAgIC13ZWJraXQtdHJhbnNmb3JtOiBzY2FsZSguNyk7IC8qIFNhZmFyaSBhbmQgQ2hyb21lICovXG4gICAgICB9XG5cbiAgICAgIGkge1xuICAgICAgICBmb250LXNpemU6IDIwMCU7XG4gICAgICAgIGNvbG9yOiBAc2JCZ0NvbG9yO1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjQ0ZEN0U2O1xuICAgICAgICBib3JkZXItcmFkaXVzOiAuMThyZW07XG4gICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgICAgJi5zZWxlY3RlZE1hc3RlciB7XG4gICAgICAgICAgYmFja2dyb3VuZDogIzdGOERFMTtcbiAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgICAgJi5ub3RTZWxlY3RlZE1hc3RlciB7XG4gICAgICAgICAgYmFja2dyb3VuZDogI0NGRDdFNjtcbiAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICBpbnB1dCA6bm90KC5zYkJ0biksIHNlbGVjdCB7XG4gICAgZm9udC1zaXplOiBpbmhlcml0O1xuICB9XG59XG5cbi8vIHRoZSB0YWJsZSBoZWFkZXIgY29udGFpbmVyXG4uc2JUYWJsZSA+IHRoZWFkIHtcbiAgLy8gYSBzdGFuZGFyZCB0YWJsZSBoZWFkZXIgY2VsbFxuICA+IHRyID4gdGgge1xuICAgIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbiAgICBwYWRkaW5nOiBAc2JUYWJsZUNlbGxQYWRkaW5nO1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG4gICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgICB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuICAgIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICB9XG5cbiAgPiB0ciA+IHRoID4gKltjbGFzc149XCJzYi1pY29uXCJdIHtcbiAgICBtYXJnaW4tbGVmdDogNHB4O1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG4gIH1cbn1cblxuLy8gdGhlIHRhYmxlIGJvZHkgY29udGFpbmVyXG4uc2JUYWJsZSA+IHRib2R5IHtcbiAgLy8gYSBzdGFuZGFyZCB0YWJsZSBib2R5IGNlbGxcbiAgPiB0ciA+IHRkIHtcbiAgICBib3JkZXItYm90dG9tOiAxcHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG4gICAgcGFkZGluZzogQHNiVGFibGVDZWxsUGFkZGluZztcbiAgICBjb2xvcjogQHNiRm9udENvbG9yO1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIGkge1xuICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICB9XG4gIH1cblxuICA+IHRyOmhvdmVyIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JUYWJsZVJvd0hvdmVyQ29sb3I7XG4gIH1cbn1cblxuLy8gdGFibGUgZm9vdGVyIGNlbGxzXG4uc2JUYWJsZSA+IHRmb290ID4gdHIgPiB0ZCB7XG4gIHBhZGRpbmc6IEBzYlRhYmxlQ2VsbFBhZGRpbmc7XG4gIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xufVxuIiwiLypcblNpZGUgUGFuZWxzIFxuXG5QYW5lbCB0aGF0IHNsaWRlcyBvdXQgZnJvbSB0aGUgcmlnaHQgc2lkZSBvZiB0aGUgc2NyZWVuXG4qL1xuLnNiUGFuZWwge1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIHRvcDogMTA3cHg7XG4gIG1heC13aWR0aDogNTAwcHg7XG4gIGJvdHRvbTogMDtcbiAgYmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgYm9yZGVyLWxlZnQ6IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbiAgYm94LXNoYWRvdzogLTNweCAwcHggMjBweCAtNXB4ICNhYWE7XG4gIG92ZXJmbG93OiBhdXRvO1xuICBkaXNwbGF5OiBub25lO1xuICBwYWRkaW5nLXRvcDogMTBweDtcblxuICAmLm9wZW4ge1xuXHQgIHJpZ2h0OiAwcHg7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cblxuICA+IGEge1xuICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICB9XG5cbiAgPiBoZWFkZXIge1xuICAgIHBhZGRpbmc6IDAgMjBweDtcbiAgICBsaW5lLWhlaWdodDogNGVtO1xuXG4gICAgPiAuc2YtaWNvbi1jbG9zZSB7XG4gICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICBsaW5lLWhlaWdodDogNGVtO1xuICAgIH1cbiAgfVxuXG4gIGZpZWxkc2V0IHtcbiAgICBib3JkZXI6IDA7XG4gICAgcGFkZGluZzogMTRweCAxOHB4O1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXG4gICAgPiBsYWJlbCB7XG4gICAgICBtYXJnaW46IDAgM3B4IDNweCAwO1xuICAgICAgbWF4LXdpZHRoOiAxMjBweDtcbiAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIH1cblxuICAgIGlucHV0LCBzZWxlY3Qge1xuICAgICAgZGlzcGxheTogaW5saW5lO1xuICAgICAgZm9udC1zaXplOiBpbmhlcml0ICFpbXBvcnRhbnQ7XG4gICAgICBtaW4td2lkdGg6IDEzOHB4O1xuICAgIH1cbiAgfVxuXG4gIC5zYkJ1dHRvbnMge1xuICAgIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gICAgcGFkZGluZzogMTBweCAwIDAgMThweDtcblxuICAgIC5jbGVhckZpZWxkc0xpbmsge1xuICAgICAgcGFkZGluZzogMTBweDtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICB9XG4gIH1cbn0iLCIvLyBAaW1wb3J0IFwiaWNvbnMvc2FsZXNmb3JjZS9jc3Mvc2YtaWNvbnMtZW1iZWRkZWQuY3NzXCI7XG5AZm9udC1mYWNlIHtcblx0Zm9udC1mYW1pbHk6ICdzZi1pY29ucyc7XG5cdHNyYzogdXJsKCcuLi9mb250L3NmLWljb25zLmVvdD84Nzc0MjQ0NicpO1xuXHRzcmM6IHVybCgnLi4vZm9udC9zZi1pY29ucy5lb3Q/ODc3NDI0NDYjaWVmaXgnKSBmb3JtYXQoJ2VtYmVkZGVkLW9wZW50eXBlJyksXG5cdHVybCgnLi4vZm9udC9zZi1pY29ucy5zdmc/ODc3NDI0NDYjc2YtaWNvbnMnKSBmb3JtYXQoJ3N2ZycpO1xuXHRmb250LXdlaWdodDogbm9ybWFsO1xuXHRmb250LXN0eWxlOiBub3JtYWw7XG59XG5AZm9udC1mYWNlIHtcblx0Zm9udC1mYW1pbHk6ICdzZi1pY29ucyc7XG5cdHNyYzogdXJsKCdkYXRhOmFwcGxpY2F0aW9uL29jdGV0LXN0cmVhbTtiYXNlNjQsZDA5R1JnQUJBQUFBQUdSZ0FBOEFBQUFBdjNnQUFRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJIVTFWQ0FBQUJXQUFBQURzQUFBQlVJSXNsZWs5VEx6SUFBQUdVQUFBQVF3QUFBRlkrSUVvQ1kyMWhjQUFBQWRnQUFBTGtBQUFKRWg3RTdLbGpkblFnQUFBRXZBQUFBQk1BQUFBZ0J0Zi9CR1p3WjIwQUFBVFFBQUFGa0FBQUMzQ0trWkJaWjJGemNBQUFDbUFBQUFBSUFBQUFDQUFBQUJCbmJIbG1BQUFLYUFBQVVub0FBSnd5NnZPRnVtaGxZV1FBQUZ6a0FBQUFOQUFBQURZVUFETDdhR2hsWVFBQVhSZ0FBQUFmQUFBQUpBZEJBOWxvYlhSNEFBQmRPQUFBQUNFQUFBSXdJZWYvL1d4dlkyRUFBRjFjQUFBQkdnQUFBUnJHZ2FKSWJXRjRjQUFBWG5nQUFBQWdBQUFBSUFJc0RLQnVZVzFsQUFCZW1BQUFBWU1BQUFMTnYxcWw0WEJ2YzNRQUFHQWNBQUFEeGdBQUJjLzdrY3VQY0hKbGNBQUFZK1FBQUFCNkFBQUFodVZCSzd4NG5HTmdaR0JnNEdJd1lMQmpZSEp4OHdsaDRNdEpMTWxqa0dKZ1lZQUFrRHd5bXpFbk16MlJnUVBHQThxeGdHa09JR2FEaUFJQUpqc0ZTQUI0bkdOZ1pIN0dPSUdCbFlHQnFZcHBEd01EUXcrRVpuekFZTWpJQkJSbFlHVm13QW9DMGx4VEdCeGVNTHpvWVE3Nm44VVF4UnpNTUEwb3pBaVNBd0FVTmd5Z0FIaWM3ZGFMbHMwRkhNWHg3eG5qVUpSTEtaV2lYTHBRaVZSMG9hdTdycVFyS1VwSkNOMFRrakFQNGZIMlcrajduOW1QMGF6MW1UTnoxcHhaWjliNjdiMEhtQTNNMGpwTndzUVpSbjdGNklUUGpxYWZuOFh0MDg5UGpyYjUvZGlmR2pHUmE1bTZkUXRDYmd5UHcwc1lqNVpPUDA3NG1rbC84NWc1ek9VMlh6K1ArZHpCblN4Z0lZdFl6RjNjelJMdTRWNldjaC8zOHdETGVKQ0hXTTRLSHVZUlZyS0sxYXpoVVI3amNaNWdyZS9qU1o3aWFkYnpEQnZZeUxOczRqbWU1d1UyczRVWGVZbVhlWVd0Yk9OVlh1TjEzdUJOM21JN085akpMbmF6aDczczQyM2U0VjNlNDMwK1lEOEgrSkNEZk1USGZNS25mTWJuSE9Jd1gzQ0VML21Lb3h6amE3N2hPTi95SFNmNG5wUDh3Q2xPYzRZZk9jczV6dk1UUC9NTHYvSWJ2L01IZjNLQnY3aklKUzd6TjFmNGg2djh5eld1YzhPL2hkR1kvei9tRDUvR04vdmQxSEJCTTRaclMzbEJwSWJyVEEwWG1ob3VOK1dsa2ZMbVNIbDlwTHhEVXNORnA3eE5Vc083UzNtdnBMeGNVdDR3S2ErWmxIZE55Z3NuNWEyVDh1cEplZitrVEFJcE0wSEtkSkF5SjZSTURDbXpROG9Va1RKUHBFd1dLVE5HeXJTUk1uZWtUQ0FwczBqS1ZKSXluNlNHNjA2WldWS21sNVE1Sm1XaVNabHRVa01McGN3N0taTlB5ZzRnWlJ1UXNoZEkyUkNrN0FwU3RnWXArNE9VVFVMS1RpRmx1NUN5WjBqWk9LVHNIbEsyRUNuN2lKVE5STXFPSW1WYmtiSzNTTmxncE93eVVyWWFLZnVObEUxSHlzNGpaZnVSc2dkSjJZaWs3RVpTdGlRcCs1S1V6VW5LRGlWbG01S3lWMG5ac0tUc1dsSzJMaW43bDVSTlRNcE9KbVU3azdLblNkbllwT3h1VXJZNEtmdWNsTTFPeW80blpkdVRzdmRKdVFDazNBSlNyZ0lwOTRHVVMwSEt6U0RsZXBCeVIwaTVLS1RjRmxLdURDbjNocFRMUThvTkl1VWFrWEtYU0xsUXBOd3FVcTRXS2ZlTGxFdEd5azBqNWJxUmN1ZEl1WGlrM0Q1U3JpQXA5NUNVeTBqS2pTVGxXcEp5TjBtNW9LVGNVbEt1S2luM2xaUkxTOHJOSmVYNmtuS0hTYm5JL3Q4eWcrRnhhZ1pyL2dPZVNLTG1lSnhqWUVBREVoRElIUHcvQzRRQkVuWUQzd0I0bksxV2FYZlRSaFFkZVVtY2hDd2xDeTFxWWNURWFiQkdKbXpCZ0FsQnNtTWdYWnl0bGFDTEZEdnB2dkdKMytCZjgyVGFjK2czZmxydkd5OGtrTFRuY0pxVG8zZm56ZFhNMjJVU1dwTFlDK3VSbEpzdnhkVFdKbzNzUEFucGhrM0xVWHdvTzNzaFpZckozd1ZSRUsyVzJyY2RoMFJFSWxDMXJyQkVFUHNlV1pwa2ZPaFJSc3UycEZkTnlpMDk2UzViNDBHOVZkOStHanJLc1R1aHBHWXpkR2c5c2lWVkdGV2lTS1k5VXRLbVphajZLMGtydkwvQ3pGZk5VTUtJVGlKcHZCbkcwRWplRzJlMHltZzF0dU1vaW15eTNDaFNKSnJoUVJSNWxOVVM1K1NLQ1F6S0I4MlE4c3FuRWVYRC9JaXMyS09jVnJCTHR0UDh2aTk1cDNjNVA3RmZiMUcyNUVBZnlJN3M0T3gwSlYrRVcxdGgzTFNUN1NoVUVYYlhkMEpzMmV4VS8yYVA4cHBHQTdjck1yM1FqR0NwZklVUUt6K2h6UDRoV1MyY1QvbVNSNk5hc3BFVFFldGxUdXhMUG9IVzQ0Z3BjYzBZV2REZDBRa1IxUDJTTXd6Mm1ENGUvUEhlS1pZTEV3SjRITXQ2UnlXY0NCTXBZWE0wU2Rvd2NtQWxaWXNxcWZXdW1EamxkVnJFVzhKKzdkclJsODVvNDFCM1lqeGJEeDFiT1ZISjhXaFNwNWxNbmRwSnphTXBEYUtVZENaNHpLOERLRCtpU1Y1dFl6V0psVWZUT0diR2hFUWlBaTNjUzFOQkxEdXhwQ2tFemFNWnZia2JwcmwyTFZxa3lRUDEzS1AzOU9aV3VMblRVOW9POUxOR2YxYW5ZanJZQzlQcGFlUXY4V25hNVNKRjZmcnBHWDVNNGtIV0FqS1JMVGJEbElNSGIvME8wc3ZYbGh5RjF3Ylk3dTN6SzZoOTFrVHdwQUg3RzlBZVQ5VXBDVXlGbUZXSVZrQmlyV3RabHNuVnJCYXB5TlIzUTVwV3ZxelRCSXB5SEJmSHZveHgvVjh6TTVhWUVyN2ZpZE96SXk0OWMrMUxDTk1jZkp0MVBaclhxY1Z5QVhGbWVVNm5XWmJ2NnpUSDhnT2Q1bG1lMStrSVMxdW5veXcvMUdtQjVVYzZIV041UVF1YWROL0JrSXN3NUFJT2tEQ0VwUU5EV0Y2Q0lTd1ZER0c1Q0VOWUZtRUl5eVVZd3ZKakdNSnlHWWF3dkt4bDFkUlRTZVBhbVZnR2JFSmdZbzRldWN4RjVXb3F1VlJDdTJoVWFrT2VFbTZWVkJUUHFuOWxvRjQ4OG9ZNXNCWklsOGlhWHpIT2xZOUc1ZmpXRlMxdkdqdFh3TEhxYngrTzlqbnhVdGFMaFQ4Ri85WFdWQ1c5WXMzRGs2dndHNGFlYkNlcU5xbDRkRTJYejFVOXV2NWZWRlJZQy9RYlNJVllLTXF5YkhCbklvU1BPcDJHYXFDVlE4eHN6RHkwNjNYTG1wL0QvVGN4UWhaUS9mZzNGQm9MM0lOT1dVbFo3ZUNzMWRmYnN0dzdnM0k0RXl4Sk1UZnorbGI0SWlPejBuNlJXY3FlajN3ZWNBV01TbVhZYWdPdEZielpKekVQbWQ0a3p3UnhXMUUyU05yWXpnU0pEUnp6Z0huem5RUW1ZZXFxRGVSTzRZWU4rQVZoYnNGNUoxeWllcU1zaCs1RjdQTW9wUHhicCtKRTlxaG9qTUN6MlJ0aHIrOUN5bTl4RENRMCthVitERlFWb2FrWU5SWFFORkp1cUFaZnh0bTZiVUxHRHZRaktuYkRzcXppdzhjVzk1V1NiUm1FZktTSTFhT2puOVplb2s2cTNINW1GSmZ2bmI0RndTQTFNWDk3MzNSeGtNcTdXc2t5UjIwRFU3Y2FsVlBYbWtQalZZZnE1bEgxdmVQc0V6bHJtbTY2Sng1Nlg5T3EyOEhGWEN5dzltME8wbEltRjlUMVlZVU5vc3ZGcFZEcVpUUko3N2dIR0JZWTBPOVFpbzMvcS9yWWZKNHJWWVhSY1NUZlR0UzMwZWRnRFB3UDJIOUg5UVBROTJQb2NnMHV6L2VhRTU5dTlPRnNtYTZpRit1bjZEY3dhNjI1V2JvRzNOQjBBK0loUjYyT3VNb05mS2NHY1hxa3VSenBJZUJqM1JYaUFjQW1nTVhnRTkyMWpPWlRBS1A1akRrK3dPZk1ZZEJrRG9NdDVqRFlaczRhd0E1ekdPd3loOEVlY3hoOHdaeDFnQytad3lCa0RvT0lPUXllTUNjQWVNb2NCbDh4aDhIWHpHSHdEWFB1QTN6TEhBWXhjeGdrekdHd3IrbldNTXd0WHRCZG9MWkJWYUFEVTA5WTNNUGlVRk5seVA2T0Y0Yjl2VUhNL3NFZ3B2Nm82ZmFRK2hNdkRQVm5nNWo2aTBGTS9WWFRuU0gxTjE0WTZ1OEdNZlVQZzVqNlRMOFl5MlVHdjR4OGx3b0hsRjFzUHVmdmlmY1AyOFZBdVFBQkFBSC8vd0FQZUp6TXZRbWNIRWQ1TjF4VmZWV2ZNejMzN0RIbnpySEg3SzUyZC9hVWRtY2w3U0ZwZGEra2xTekw2ME95YkZtSGJ4dERiQzdiTVFZN3dqR09JSUdBRFFRd0pzU0VJd1FNNVAwZ2hoRENFUWkyT1g0QkRDRWZjWUJmdnNTdjFIeFBWZmNjTzFwWk51VE43OVhSWFYxZDNkTmRYZlU4ei8rNUNna0kvZ2lmeDE5SEJvcWpQQnF2akZCUkliS0VNRWFMWGhIaEpVa2dHT0dGMWhiTHhDaWRhc20zNWtOQk0yN0ZGUmtaMkZDbFVIZHdJSUZERnM3MDRxRkpuTDdnd1psa09aa3NUN0lOdnIyeG5HSzdLVjcrQjYveUFodDRaSXpRYno0dXZGMlFVQjhhcXF4QkJKT1RTRUxTS1FHZUcrRkYyR0cwSk1vRVdpNFExRlhJSkZ1aUFaK21vRDdTcDhEVHdrTU5yOE5EK1d3Nmt5L2JRL2x1bkpIRGRraUdZN2tkaHlLRDZZRUlIRWNtOE1Bd25COG0wM2lkWWR1Rzh3VlZDK2pqZWtCVG5TK3dDcnl1V29FN3ZCTXYwUko1ei81ZndqN3lPWGoyWWlYSE9oYWRsTEFnQ3FjUUZrVzhDSDB2TGlFUml3dkJZRElZak1oU1N6Y2VHUjdxdy9tTUQ4c1pieDlLNGtqSTJ3OU00ZUVCYjgvYURaSEZGMVUxcjBiVnM1SmZPZ3Y3b2dwRnlWR2h3Q3ZsLysxV3ZpamhhOC9TcHZQL1cvWkQwYTJVNWJPMWk2Q0wyWGd4eUgyb2dFYlFITnFIcmtZM1ZhNWYzbEhwRndWMWFYNjBLRktSek1FYkVSV1RaVDlHUGxNWFZBR3B5MGhBSWhYRVpjdlFCQ29wZEJGdUppdVM3RlpRWlFrcFZJRnZkZFVWQnc4czdscll2SEg5MnZHaGdaNnVUTEt0SlJvT0JYeW1vU2tTS3BDQ3piOGYrMDdaak13K1ViaDV6NzhmKzI1NUhKTGgwK2JoVXcvRHA0eUVvNi93bVB5ZGMyKzhJK1NQeGZ5aHhtMHVobStMNTNQT0Z5V3BLTXF5V0pTa0haSVVZc1dRSkYyMWFpMjVMeHVOUk5PeHE3ei9nV2loTTQ1L0VFczRSMWlMWnlYNDgreExsaENCc2ZPZzBDMzBvVFZvR2sxV0poQWJQZ1FkbHpHUzROOHg2R1ZNQkx5TUpGR1VvSXNsTnBJa0VmcDFhdTNJVURiZEVyVjlhQTFadytaQUx1dSs2QWovMjRzTGVWbVJGUXV6RGhpWnhQQXZtc0R3eEJFTFF5M01Ddm04M3NrczYvNjU4WTZXakN3VjVycVRFN0c4VEh6R3NtbGp1Yi9RZTJObDI5M0ZUa0ZZYzJqUzlBZUR0ckdzQndMNnNtSGY2dGZiMTEwVk1sdTcrcnEzOW1NY0NXY0hWQ05nRGw5ZTZDNWhZZWY2amR2WDMzNHdLb1dOZHNOK21sMTB1VzdiT2tJaWYvKzNDejIxOFhkbFpkbUNHV1VTWkM2ellXZkFzQU5pcG91R3pvZWNCa01PYVVpVk5IV1pZbS9JUVVGaUEwNWlBMjRQSDJ6cnhzdXJEamJmS3hoc0FxY2Z2SHM0L1JpNXlMR3c3ZHhuazcxajhYUTZQdGE0N1UyUzZWU3A5RjVkZFg1RmRaMWlVOVh6T25YZXErcTZpZzlRdlFCbjl2TXo3MU4xb2FlVUdrOFBwTTZrQjlKL0JQL0hrNzJsbEVCU3BYTTNxSm9HUkFBMk43RXJlZWtNMjl6SUR2bFU1cHUzazA4Z0gwb0NQWnF1VENJTVkwbkFDSHBQd1FRSWYrTllvcGdOcGt3cTRHZEVOZFdYNld1SitwT0JKQkJXSC9HcGJsL1ZYcEFOR2VGaXg3OTM5bDhaZFJSQ2JIdUJNcG14alRGMkJCdm5oMEJWTlp0dm5PL1Y2NzI1OFhtaEJHK3lFYzFYWnBBb2l5ZVJMTWtuMlllWFRoS1ZJQVdkUkFwV1RpSXNDSnpTQ2t2d3NnS2JINVBEZzcybHJzNU0ydU1VU1pMVTNGbkNPRUwxeTFVNVJaM0M1RE5LQXhGZXdUV3FGTGtnUEFhTXdEYk8zVzJ3QjlmdFVwSjlvSUN6ajhhb2M1YlNUdGhmSjltR0gwNkdJdHAxalBaUzZnVDBwOWpiUGNWbWdITTJWZXBOWWxFUGtEeGxGOFVva09kak1veUxvM29ncU9HSFRUamtwSnF5NzhyN29nZUZVQ2VhUWhzcjAwZ1VKRUdVamlPSkNCSTVCaDhaQ1NJU2x1RWpZMHdXWVVmd0VoQVB2QkFKWXpRK050Q1hTb1k3STUyNmhrSTRSTm1uelFCNWtFT01JZ3d3aWpGVXlCZnlRb1p0aDlqeEFEc1RZbTJFV2s5Qno5VTZBZi82TmNldVdUYzF0ZTZhWXk5ZWQzUnlhbXJ5NkhXdnVYVG50ajc0czIzbnA2cUZOb1d6VGZvV2x3RUpQYXhkN1FKZU9QdWRGVmZ3QXQ1THpVK3lqdnFaYXJ6RjVWaDhmUC9tbDhKUHlaZFJFVzFIZDZCU3BXdGNKaUxDYzBBM1JSZ0x3R1ZQZ3JBZ1lSQWZwQ00zWFgvbzBzMXpJK1ZrZTZjc2hidHh2c3hlRE40dm13RUtHSVpYRC9QM2c3OEp6RDR5SjUyVE9BZE5XTlB5a050V1ZpSnVVOWhGM1pibDRVSmVjcHROWXQ3T3ZXV2s0Wjdlb01xekhzVURuUzN4SG45cmUwZG5zajNWM2FhYTZYV3BUa3h5aVlwaWllSE90bDVUSmwxcFEydnJUclludXpyYTIreWVlRXVub2hoWGRZaVdVa25rY0NIbGZLdkRNdExSZUNhVlBaQk5aZUxSdEc3bDVsTjl1RGVOSDB6MzRrZ3dGOGVqNjdaT2p3eGxXbjEyT0xpeHVENlhpTm1HYmJXMjU3clRYVlRKSnlNeHVXV056MmNFMmxvS2xlTEdZTmoydFdhR1JxYTNyalBpY3Y4R2hYYWx1M1B0MS90dEs5Q2VqRXhrZWphSG85SHc1cDdNUkNRYmg5bnJUOFk3K3JJREE5bFVDN0FTeE9mcHgyRnNTaWdLVkh4dFpRem1JZ1lCQ0lud1ljaHhSTWdKR2FRaFVWaUVuY0Q0bHlBdXhHTUVwUk94UXJ6QTUyYVVSQldQMk1ETDRPWTVXUUNDRGNNT0RxTVI5bEdFbTUwdG9RNTlnOTRSZm4ycXA0ZFR4MUxLNlpja0lTRWIrSDJadUd5VXlFell2aWtRS3FYT0xiQ3orTmVwMGhsVkd0SU5nU3Fwa3N0N25nWmErVXVQVms2aDNaVWRsSW1iSUdVdWc3aURCSmtJeXpxV2tTTEt5cklHdEZJU0YyRW5Ta3RBUTZXRmdYNlhjbzZQOUU4TlRKMVBQNDBhcjNGZmhVMGlwZWxZYURvdU5KOWZRVThad2JFTjhxcm1jaU50L1NXblNEYWJjODgza05sQlBndjU1aWR3a2xWRE0yQVhDdWNaS1pBQnEvMndIVjBHVStrdGxUY2RQMHhNWTJIajJxR2VqdmF3S1drSVg3cUg2Sm93UjJYUlJ5UnNJb0FQeHdPcXJmZ2x3YUpJTTVGMkxJUU5xRGJNNVNEV2RGMWJoSjJtTHlGZDB4Y3VYOTY1bzFMcDcwK2xiQkFscjdsNitlVGxKL2Z2MjNIWnpzc3EyeXZiNW1mN3Avb25SNGRUZmFuZVlqNE9IV2tuVmVoSTdBdERSNDRNdW1PaE9qWVkvMjZnelhtODh2UkUwL0ZndHVsWXVzaUhlSGFBR2dabEd6SmFLem9PSzYxbG15ZlpKc1EyTDlSSytNeTVyN0U5NldmYmh2Sm40Tnd3TzNLZXBnWSs1TzdkT3VmZGplY3VWRjdyL1FKc0NLMlg2encvVFc1RmJhZ0g3VVY3S3J2V1lGSE90Uk1pZ09ndUtVeEVPbzVrVVpIRlkyeDhneUNrTE1Qd0Y0Z29MQ1BPTFZDTldXQzBjL3VtMmVsS2ViQ3prRTZHQXFnTnQ2azFac0ZJSmtDVUNORC9hR1RRNVJxTWFUVEprU091ZU9uVmdlZzUzRXZxb3Vnd2wwUkpOQ0xqWCsrYTNWRHN6RXRDbXhnd2xsUTZ2NWRYN05vd08xUi9TU3BJZk4vYUJjTXMweHN5QmFJcFlkWEF0TVV1eFpQbEZDWWxja3MrVjVsZW1KK21kTDloaTBsQjZtSVZqN3cybDNjbWE5L25HSlpFUHpWTjZvL2tmSG9ZMkcvQTlDbXFUODNIN1FER0FGa0xGU1Q4eGdGNjluTkJSUmFuYUtNVitBVkJ4SE9NY0oyRTdpWVloQ2pKQmFZU0I2WU1CQzc0ZlIyWjlwWlEwQmYxUjhjWXU4a0JKWk5CbGtoZ0dGUEFWREw1SVpBblF2SklVMjhKenpsemVpNm5PL09tbklvS3AySnAyVkZCY0J4SXA5TTYzY3BrdTYxVVQ1TXZCaTByZUc0c01wREpETXlDZ0pqdXp6ek9wTDhYbWVTSUd1U2xkdFNGT2lwcEVaQUR3R2dRaDBBOFFzQVJFVHFTVE9RNkVsM0pydTVCU1lwMDU4STFPV2hrMlB1bThFbUIxRExXanh0eHZ2RDVrZnk1Ukc1a3g5aE5odDljMk4rOUoyLzZqSzI5bFZUQkdaaThkdDI2YTEvTk50R3UzT2hJdm10THBUUW9TOHBBU3d6R1hycTFvOUJIZnJEeDV2dHUzc2czTG1iK1YvSU0rUXFJOXRySDJZTUZNZXN4RzM0cENqQVllaTJQVFN1azRyZkJwTHZHYXRmSSt6V0FMYzVmMEtUcVBLRUIyNm05YnovS0F0V2FxSXp5bHlReXFRbENuRjRyZFhxZDd5Q291NnVqTDkrWGFJMEVEUTFsU1piV2dSTmowM3lVZW1OM0JUbVFnTndBNjJmZEEreEhheTMyOUd6YXNtL256UHF0aFRZdFdiSjE0UW85VUhMKyt0T3FRWlRLWW9WaTQ5dkZ0dWYyYnBvRHhDU1d1aC9ZL2EyMmZHK3FYZmZiUm51eTlBMGZMWUlJb1ZwdVh6d28vQTNJZGhuVVUrbGthbytUVE5OQmdBWXpQUWpUZlJ6QnFMMHRIUEpidXFhSUtBT1RrVTNKck8yT3BMTGRVTXJBVzR5QTRBcmRDSUxiaDVjMTlTbFYvNG11UGtYMVpWbkhJc1YvSlFWRS9Da3FDbmlMczU5RGtEbm5rM3ovUGxreU5Qd3BXWFptcVFYd3pNTm5UTzRNQTIzWmdBNmd0MWI4dXpaWkVvaGNFd01kcmFKQXlOeVdqNmc3bGlweEdiUCtWeWgvY2tsbDFPZWtDQnovU091V2oyalFvQjNKV0haSDRtcU5YdUlHKy9kWFdtTVJndmJ2WGRpeWZxbzhsRWxIZW1JOWhvN0NKS3g1eXA4K1Q2TWkreGp1WlJSZTRVS0RVaFhsNGVOeEJoQ0ZVM0RFWlZnUU5vQVdNYVdSWElCVDdGSlBFd09qZ0g5Nk1vYUxQbGsvOURpbGN6U2tQbjZGSGcvZDVYeUhWeWtLcTNyaUN0azJ3bGZFOWVVbmFFU1prN0h5K0NGS05OWDV0aGJZMmdLMVNvVE9LY29UaDZpb2FUaXZSZkViVjdRMUZPdUNUWk1yZnVueEs1U0FFYjZyL2tCQUJPSFgvVWFJeThXUENrOEpMYWdiamFLRDZIUkZHOE9pTWduMGpuMGZHN3EvbDgyWWt5cFdxRWlWd3pLZkhGZHFJT1ZRaFZEQWhDQTBNMHlJOTNQeGVXdHJwYi94QXZFNHU0S0swckVMWDdLLzBsTHFPYkMwWjlmMnJmT3pHeXJySmdZSGVrWkxvNFdPZHAzTjdhcGlBbnE4RjhOY2xxT2N5akMyQW4zT2RweFFEaGQ2TWM1WU9BU1RiUklQOVdLdXBBaFhhV2EyU2pqTEx2VnN4NE5BUXZGanNaQnBhNkZXbzhNc0hibnI4bERNTkFmaWhxWFJ1QzlsYmk2TTZVcDhQSS9uZEYzcEtBQTVPelk1ZWV6VmJETmlxS01HSUdsMVFsWDVKcThhbzZyeHB2eGlOaG95dysxMitVMDNyeGZtSnpadTNOUVhhMG0xUlFLYVQwNG5TaE1kTTkwUjJuVVV0MDhDNFp1Q3UxMDdDWFI0bk9xYU9xNnBCVlViVnpXZGpnTmhWbXU2elpYeTFaM29BWFJ2NVkweEl5d0hKR1FxQk1Pa1dtN3hSN1dRSk5vNmtZZ29MY2V0Q0EwQ3doUElvbGNrd3BKUGhha2hMTHp1cmh0T1hiRzhhOGY2U2xVUXZlK2V1eDU0M1FPdnV2WFVuVGZjZVMxSVYxZWNQQURTMWE3TE5zOVZ0cS9mZmlFeHRaVnBlMTFVek1VbUxnMWQ1QmovSDI3LzRvMU1jM0toRFc2OUtaWk94eTYwd2EwdmViVWcxUS9PL1ZHOURLT3ZkZzg4OU4vVEJtaW9WTk54MlNqTjlYdzcwWExsMHZFQlFpZ0lGWVFDeFZPTzYweWNFR0FBd0Z5V0pVR0c2WVUwVmRLV1lmeFFvc0owVTBSUldVU0t3aENVd2pTQTJ4Zm1Oakl0WUY5UG9TUFpGZzF4RlpkTjdEcnM0RXB2VDI0V3VISzhEcXVhTmFuQml5cTNIQ1BaaTcrYUt1VUJUcjBWNEpiQkZSZ0FxNXozNnVvZk1RWUNtek82NnZ3ZFp5YURxcjRBWlBBdWZuQ1hxakc5VmdIUTJFOUtLYVlPYzM3SlVCbFRtTUZOL3FxbTJYTGV5NlNaQXR2YzZGWXkxUmFqYjg4Sm55ZmZoem1VQlU2MHBUSVA2RXlTQmVrNEJSb25TK0l4Z0p1eVNJNUJoOHZRZzZ1b1FYSWRBWDluc2FNbjE1Tk1SQ1ArYkNCYkhsQkJDTUpOSFFNSUxEOFNaT3IzQlBiVThMSlFsZDJFejVkU1o1MWt5Vlg0Zk9uYzEyMWIvVE01TEIrUkl0SnUyRDlDemZYd1hwVlNpWnptNy9jSTY2U3RDUitRYyswSmxhaTNxdW92clRnK3dKcFVTcDc4N3ZGWWdnYlFQblNvY29rZkhoMkdoaXhRUWFiSGdkd0NaQVhDcXhCQmdUZFVzWHFLRFJkQkJpbEhkTjlUNU84cHNlc1dKR0hmM20xYlptZldUNCtQbGJweUlKU0dBNlltREVnRGJHU01sTU00WGNkSW5tS0hHVTJHUFNOSlRmYXBZaWloYnF5NHNGN3NESG5HN1pqbjJXZDdUeDJidm9jZFB3K2Q4VGVkbFA2S3h1Z0xxbHFFM2Y2NmZtdy9iZmx6STBidWdmN2FraXB4Y2RjMjhBKzQyU1ZsMkZ3STdrMlNqNlZLNTk3TTlHRy9vdlRmWFJ2SEV0T1h2WS9oV3J6ZlZOVURpdHVmcDRYSGhDNlFMUSs0OW95dWRxSVNDOFNMblJ1SlFvVTVKaG1yQWxHUGE1ajFKc0xIRWFZcXBzZVFRaVdxTUtXYVRDV1phZDloN0tuTE9xYUtUQmRoUitVbEpGTjU0ZUFsR0YxeCtTVlhIN3g2eis2RlRlc3JmYVZjSmg1enJXZDgvalZ5TUZ3WUhpb0EyMk9xald6R1IybzZEc2Izb0dPenZCUkpRdmRHUWZCZ0EyOFFPam5DQ3F5TG9iOUh1R2pPUkJiSmxjZGQyUnovUjI2eW8yTnlNOXZnazNPU05CZFFqU1JOMklvdTdCK1k4b3ZaMkdRc0svckh4NVpFWGJFVE5HblFZRU16VTEyQ1ZsSW1OaG50RVAwYkIzZGJLalJxTjZsellQenlzYkhMYjJJYi9NL3dDK3M2T3RiQnovd0dyVzNaMXJMVzF4c2F0dndFcDB1aFN5SXRMWkg5Z1Q3QVNINXJPTlJucmMzQ1g3ZUJBT2N2amJZbm81ZEcrOU9pYlEzNFNsdkdsdmxOYjFvZTg4YitBM3pzWjlGR29JdEhLNGR6V0JYWFlVVmxWaWNOd1FjNkRyaExGVVNWelFONkNzbFFKMnZMUkNlSUdkbGdDaGhZVlJSMUVYWXFNd0tveXNMc0RPQ3hMVE03WjNkV3BzWkgrM29UYmJGSTBPYXljeFpuVFM0N2w2c0t6UnJuQ1ZkbnhLREhzd3JEVEFWWTRMcTlxcWFVZzE0dVBUSkUxL0FweU9LTmZKemV5RWtYSDhPTWdPRkxuK3NJaHNxRCt3NTg3Y0Mrd1NFbzdEODZ1WFowelhOY0c0clAvWGpUSFpzMjNYR2FiZkNQT2NXRGF4ZFV2YUhvMEdjR1JpY21qOEwxNWVxTnlxRmd4M09VRnRYNHA3MnJZWU1RcmRuemZFMlN4b09WTjdlYklGbmZlOWZTRGxIVGJ6czFYeEdwZW5SNXRGK1VGWEZPREJMUDhvUndvR292c0xHdUNmcXlIMnMrckZKTlhiWXdOVUZ3b3dyMHVTeEpNdlM1TEROd0pVc0xUS056LzMxdmVOMnJYM1hURGRkZHU5THE1OXByL1gxMm44YjFPU0gyQlFacnhJZjNmMVV2N3pHbDgvWHlUZnlxZkpGajZSVzJ4M2MvUzQxcy9QNTQxc0M3UXFMY2wzNDIzU2RKb1hnMkc4ZWZnSzN6eDNXVnhHb2JIRFBvbDFqNUFoc1NNR2lSM2ExSWpWbEpLcWI3K3RKRlNjckduVjM4Tno0Y3p6cTdhamZjc1VycDJaYzhXN1ZGdjBkWUo4UlFEcVVyQ1k3OU9WTUFJQVVmbjZzQWd1RnlNQnBtUnVnUkdOSkF1VWR3M1JhOXduak9MZFBLSncwRHA0eWtqak9HVVliOUpVcklGL1Z0OVVkOUllVVNQYWs3ZWtKM2ZxenJ1QlVLUTdxK1g3RjBvdmlpTWV2Y2YrbVdzbC8zN0h6dkFKcGNBdmxuSEhEa1BqUldHZTVJK2dTQ2dNOHh4TXZCQm1ObTVLUWl5QUFvanF3Ri9EQTdVNW1hMkxCMnc4and3UGpnZUNiTjBYcGVBZkxwQXdnUkRUS0RlVjVoWUFLbUpyTnhEdWNMSTR4bFc2NnRFNm9BVGtoVjdwMTJDeFlXWFBoWEdGSHlMbWFFbmhCOHBWNW5uMmpMdnJnUy9MSXNIKzlhVTE1UWxITC80TmpnTmwweEFqdHBndTRNR0lxMmJXaHNzTCtzbU52Ty9hV3Jwc0hQOEQzTy9Ka2NsTS80aVo4UVlwbXlYL296V2Y0UDNTWkRJS2dZd2NrVzU1ZEtTUGtEdjZidktJOHV4MW8wdW1rd094Mi9UdGV2YTZ1a0J6ZFJyU1cyUERxeS9kdnNudFYvK091SzhuUjRLRXlJcUdzZzQveFFDVkZQcG5UcDVqamFESHp1V25SSDVUWWttNFlwR3pDSERSWEk0WEdrVWtNRnJpWUs0aW1rSUNDQU9qT2UraXpOdDR3c1pNcVd5WXlyRkJsMEdSNGFDUUphWkhza2dDZ2hJR0VCbzZPSEw3dDBhYy8yclhNelUrdkdSOHVEdmQzRmZLSXREdVRVOE1pcHpUVW9GeWVuT1RiUjdFWmhpME80Vnl5SFByYVBLN1QzTWFaZkx6TFRZVC9JRHo5bUlnaCt2NjN2QTZtVTNzU0lNV3llMXozQkVoOXdwZEtxdFZXN3RlaytYdkZSUFlEZnh3VzRINmRLL1lZTkVtclY0dXE4dHlhWDFzMndxR29IK1JMZ3ZEREtvOHRkcFVlV1RVbDhKZlFtRVlrZ0FpOFRUMEJUZ2hiWkZmdmdJcktsdFpMaFdwR1hiTFMvWXNVaTZVUWtIOHNIeHdaa0tlckpyWVY4bndBTXl1MzdkRFNkWWRQQ0JkSWd4T2FGYlNDby84UnZtNGJXVHpYRERtMUtsY2lUbzJlZkRTWk04WVNjQ3BITjRiUjRRc3FSZ1ZRSmhvYzJydW1LVmtvOXZqV2NDVGpYQmFQUklINm9qY3VwVXMzT1U4ZXhJS3ZxUkJNOGpac0JDRmFTQWJXYXpHWkNaWVV4REl6cEl1d29YbEtoaUJmcWFQV2xVV25WVU4vSUE5Sk5LRkY1aGNmQ1krZitpd3VtQ256cGMxZC9rNWxKdnNrKytrdVdCR21sSWJ2cTlmQzg3Ym94d09ZbnZJS2ZlcjVlZE9tZUs5K29LSWlHQVB2TlYyYkNXRUVsTENrZzRRQ0VPUVdOS0JaaEFtSU1iRmNCenF0aVJaS1VSZGdwakxrcTBzSndlZTFFZVhwNE90elptcmR6S1UxcWJlQ2ZhMnB2K2Nva0ZueWNpK3JQdXhJTDJmcnlCWlhydVZ6aUNpZXZldTVsQ2ljaWwwMU1jaHNLb0F3Z25RbDBvTExQQis4OFc3VlJxRmdXRkZrQXNWdFVCSTdvRkVCMGRaTkZrNmxpYUpDZzBaSEJpYUdKM2xJK2wyaVBoR0VlQmtpQXF3U3orYW9WZndUZXU4Q01oZ3BuYUVNZXBndU5OQjlYdVFUNTJqTkIyL20xYlgvVEhnaGdId3pkN0w5YnNsKytWNWJkM2VZVlJ3UGg5dmF1OW5aeUM3YWRYOEVWMzdSdDdLY1I3ZXZBeitjdEdWcjRaWGUzZWNYUm8reXFyblpQWm1QMnR3alFqV0UwaS9haUkrZ1dkRGQ2cVBJSHpNd3dOZEpYRUNYNXNuM2I1MFJWTXpHeGJyMmFtRVNhdS9NazlNVXNBbFpqRWZPNFhkVWdCTEJBTWRjaEtGZ3lNTmNpNkZqMVk0dW8xcklQbTZKb0xzTE9aSm9FVTF5SVJRbDYvV3Z2dVAzRzY0OWRjK1hsbCt6ZnZYUExwZzNURTJPRGE3bzdVKzNSZkN4bk14dHRoRVNDS3cyYUhBTjY2Z1ZwNVV6TktoZHh4UHBkejVNZk9VL0ZzN0tJTTJ6YjNwbDFXcmtVVldIYkYrcFMyYk1Hdlo4VjcrZkZsMTFMN3N2R05WRUc0ZXhwVWU1c3g1dmoyZnZoNEVQOE54YmhZQlVaOExhWFdlZmFYSDl6clhCTTJJVk1aQU8vaUtOMjFJdEdHRll0R0VRSG9hZ1BveG5EZ3FJR2JQczQwZ2o4TzRhSUFQOFlMQlVsUVR6a2Vkd2RndHRSVmFHSFRCZ0J4anhTVlRaQnNJazNKUklZalpRVHZZbFNLdG5lMXRvU2p6SHZoR0RBOXZzc1ZVWW1OaG1WRFRaK09oV253L1cvZytFc0RtY0wzSU5oeE5YWERncGhUbFltOEE0bXdaSXZwL3VjZjNJTzRKM09FOVgvVHoxRi91NUwvb0EvYlBnQWFGTXRFRWtlVkxSZ3RPTkx3cTYrOU5sUDhPc3V3ZXZPZlNMZHhmOFMzU2NxbWhtSXRsdTJHZEl0UFBVak94Q3pBZ0QyNm5xZnV1NzBtc29Sa3hpTTYwakFkWkJraVFUR08xNzJVNThnSTFXVDFXVWJhNHFpTGNKT1U1WjByR2pLUXFPaTlPV29SUU9jakt4a0lKMU5WcUVHdDFOZTM4eHdtdHMzVy85eHRNWmx5T3NiZWRNdjhDelhmbndLdG5lczN1WXIvS1RCRzVMdkIvUVgyZEdMbm9tZmI1eXZjQnMvdC9hZjhjNjk2UGtEOE0xVDliWlZlOXJOd0t1aWdCNDZLM2tRd2tWOEV1aTJ5THc1dURtS0hDRW9rMnB0cVRwdHlHNGY1ZGMxSzlHQUJJd0FFNnAxeHBDdzk5djU3b0RwZkM0M09wb2o4L21SZ1BFVk9XUVZXaDRGU1Buajd0eDN6QUEzTU1KWi9FOW00T2F2eUtiNm5wYUNGZkxzWTR5SGRxUDJTa3NXYzh6Z0dqUzloMnJ2Q2d0TUltS3dvRWJVdWV1T3pNME1BQWNpcnZFT3V6aWhQQ1Q4cGVDbjc2Qng5UVNsZnlLTHROaTE4KzVNaDZZWXppTmh5d3I3TzR1ZGZueWt0WGZYL093aXVWb1Y1SGRRZWtLTjAzZUFWRzhzenM3djZtbDN6b1JIUjBKK0c1RHZFVUFGSFptN2QzWjdHT3hSb1NqRVBReFdCellTNC9BblFjcHV3R0Rja2VvbFhNNjRGL0NJMEdZWXpnOEFmRG5mMS9YaE9nanp4UUNFSFdEZzdETkdPME5nREltMUd4NEtPL2Rmdm1qY2hNSGlvVEQzMmU0UnZpd01vamxrVjZ5YVdUaG9FMllPamd3eklZR0JLZ3R6SmRVd1k1NWNEeVZ6d01WNmtiZkpGN0xjdUcyNVozbGRMM0dCRk41Tm8rcFRlakptL0d2THpHd0xhYkh0RnZ6dStPd01GQU9CRmtLSkhGQ0ZjRUJYK3pPWmZySC9kYS9yZHk1alJXSE5YYS90LzdkRUtMcHUxNDcydjZiMFFZcVZ6Mms0bWpGK3h1NUJXdUFXK0UvNVBlREdjVUlEYXJMRGtBR0pzSHV3T3pqTC9hOTc3UnFSRmYvZnhLNmRFOEZvOHRQdzBUd2RLOVBCTXlxeUhyMzlZeU5ZMWZEY2xvK1lJS1FQdWw3bVZ3THBvSnBLajR0RWh3c2tHVW1YR3lESmFxcXNMU09xTUIvbm1tTnphMlZBNFBiS1YzTFIva282azhLb01qVStOalJZcFRnQnZ3a2dUUkpSRWlkcnFpa3V6WHY3N0VxYUVXMmFaOHcyeG1ZZ2lET3VNTU4wOWN1WnZvenp5M1IvWmpsVmN1WFdrcC9Kc0wxSjhpVFVPSS9HRXRGMkdyVzFMWG9tUnI1Y2lHVXlzWUs3TFNYWE1KcXhKdFh6b3EwN1JlWjlpcitqMjg1K3dRQk0vN2trRFVTMExVYlV2MUozSFFJT05vVXVxeHdjZ0dFeDNrTWtPWjhnd0tYbWdGVmhTV1FhVm54Q3hVakRqSWN4S3dkSWVpRFRjVFVTWWxva2lwa2FpVGtycmxzN1BOVFgyMW5NcEZyaTRmWkl1K3V5cUYvSVpWRmhRaHNUM29KMUdjSHRxcnE4d0RxUUtYbCsvWHZIcmxrN05iWDJtbU5ucnp2S2ZCZVBYdmQ3TG9hL1hWUFBLSWJ1MXpXL0FaaFJNV0F2OUxBR3RaYTg4RFBYODhLNWpxb3FMU2lXU3JkU2s1ZE1lb2FxSnEzNzVQeVVQTVQ5TmNlUTl2R2hubzZZVG9SU04zZkxGdUFkZ3N5OHdKVENJOE41U1hBMUdzeGVEUk1xd3JEYmtOZXllcHpINHlVdFFyOHZ5ejlVb2xxUFR0UW4vMUlXeUovOFVJbXA3T2pqSDFlSTJnTXRmaWc3dDQzclVmS0FZQUxsandodkVReHlkUTVPT3M4clllcjhUQlZvVG9uVEgvNVFqYjZBbzZxb2R0Q1krc01mMHJpU1UwQnlqR3RCM0dMQnRlZStaNFFFaXhnR3lSaWhSanRXWGJkNHZITHQwZzZpNmZNVlFsVXlKNXAxTGFKUjFTSWlya1JrUHR0TWhRamlMbGNnTm54NHJqNWtYUG5nQWVhN1BiTis3WGk1cGpJTTlMbmMyR29JOG1oV0dWN0lsYmZaZjd0OGtXTzhFOC9wZGluMUU1Z2hSTzNYQTRDZDcwcVZBbm8vTTFLeGlWTjZxMDQ5bjRuM01kUzBlcGtjQytqN21QSmdueDY0cVY1azFnMDJtN2dkNDdLYTZ1REd1c0dyVmtLZVB1RUI3cytUQldwOVQxV2ZBTi9oSklJcHhmeENaQ0Evc2lpZlpLNld3QWdWY2hJcEN2TzMwS0ZwY2tWVDRPUXlYdG5zWmQxcy8vNktIbzJOaG1LajBUQ1YycnJ4ZWFhZzh5eEJJNTRieFFwZFl0TkZlV0pUK2d4QXkrZVlzM1JVblZGalhDS0pRU21xNHI5bjdyNHI2cUFWZlk2M3h5VGhYdWNpVXppcG1wN0w5Q01tUDNUZW4zZXI4VHRZdFhQVXJlNnFYaFpubUtzbWZ5ZVlqeGVxb0cyQXUwN2lXeXZScUFFazZ2alZzLzBpVlM3dklySXB6Q1ZCR3QveUVSLzA2aDR4eEFnWUVwaG5xd0wvNEZzVEJRWTFQWWI4cWlUN0Q0ZXhaTXJTbGNpblV0OHVwUHFwdWhpM1lrWkVvc2lVS1hPTFpGSzZIZFVFV2NiN1hVRzkxZlhSMlB2U04xZjkwdkhmNnU2VmZTL3Z4cXBrSG50RmQ0YlJNYk8wYjhkMlptcnNMRm9XUnRkZGM5V1Z5NGNPN045M2N1bms3cDNiOSs3WXUyVitldHY2YmVzbXhpcmpsZkpBcWFjNDJqbGF5RmtKcTkzdmMwRkl5L2tnNUlLZ0EyYzlkdWZTOVpCY3lJWUJnZ0pieko1WEMyTEtJTnRIUEErU1dvTndSRzRBTDdqd0pWL1FGOVk5c0JKT1h1cUNsWE8vTnlScmdCekdXMU9wOW9FQk94dyszYWNBbnVqckhpNzNkSGFtQzdqdzdJSDl6STltUDdUU21ZZXd2QkxnT0o4N0g5Y0VvMWJBbWE1SXNpSytTOUhTL2FsTDUwT3AwUHQxNVk4VWJYakg4UHRQZDAxMXJwTlZlWXZYUWhjbDFCQ25WYU85V0sxRXVFVm5IdXZxRWxiMEhSWFBsclBsSXhhTXBiVU54RmhYRlZVL0RJUlhWYTVzcE15cUxxakxHc2hqakJhemZaVWF3M2hNd2ozV3JYNFArZGpMdTBsbHN2bDY1ZmdydVFHTXJpd3pLNzJVS2NuNmJ6QWxYU3hvN09LbW9mOVZ4L2RYclZwOE9jYWZJNnp0VmJYTloycWJoN25XUU9aaklFTHVCSm1pQXcyaGpXZ1JYWVh1cWJ3aDB5SUpncmgrZktCTGxPUXJEdXphTEtvYXlGMHNEQkc1Q0k3NXJSSUJoQVg1dUszN0JWVlRUNWsxSlpGUHNRUkowNlJGWHBDMEpRTnJrcmF3ZDgvc3pIQTVuNHVFRHgzY2M5WGVxN1l0ekN6T0xrNnVMVzhjM3RqYmt4dktEeVhhd2gyUmptZ29FR0RZaTlQOHdnb2lQeVExQlFjcFRjZnA3QW9KVFZhYWpqdnh5dmI0NjJIUmtONVFoazFZRkRlck1mV1BSTnpqbk9XKzBpTDNsWDZLbHl2TVY3dFNaT1dWRy95UmhoYmtjRmlDdTBrU3UrdG1GVzVtdnFuZTlzbm1heTlZeVhrMTErRTlpRXBvSFl1NmRWRXFsdUFFbDNmUGo0RG82eVZvdE55N3JtOWRJWmRxUnlWU1Vqd3dYYTQ2eWpFSTY0YXA4TC9uTzZVMnF4UElqMDdFc3dTb3VDYkNMdzMxNURkMnlxSnVTaXJKeHVHTTY0eWVqVGtKcXNPWSs0TjRSc2ZEMlhnNjdndjdWWjlkbXRkbys5cGMyQVlhNklOYWQ3VHljZnVrRG5JaEc2ZFVyK0h4WHFCRU95cGJZMWdnY1FDMk1zenpEb0dJS0FmaXZqU25jY1h1U2dkazJZdlJrVVFlbllOUlYyYzIzZFlTQ2xvRzZzTThqamNIaUQzSFFqektPZVlFd2Qwbk1zd2pWd0l3ejEwcUJnZEdwSEROdFVJSTVxYWp6dk5BWmVMUkRibStIYjI5T3c3dDZITytWNTdrNWI3cGZwenQzYjY4SGNvL2I0L2ZyNFdsc0hSL1M0SzM2dDNScjU4dXNtSnYxNE5tUDJzUERXdCt4VXpmc0IvbEs5bWdxM0dvT2VTaUtvcmZ2V044TEpmcEZYbG9FUXNGR3E3R0F2R1lvUkNBWmVBNkhLL0FqUEIwUWhjUEcycjhwSVc4VU14WmVzZ1hhOGxsT3ZxbXV3cXlOakxaVlJBRXJTTkVwWitsZXdIbmZheGttOFgyWkhkbjk0M2R4WjVFZTZjWjZKMUk5OGJhU21rU1R2Y1BGL0ZqVnNBTStoSkdhRHpUUFIrT0ZQTVRtcEs5ZWRQSVpWbEJGUlJiRS9vU1JtKzI1UmZCb0MrUzdvaHZMQTd1aWJXMHhQWU1GamZHczVtSUwyekhBdkhXVkQ3T3ZKbGFoN3U4bUczb2syZklZekRtQzVVT3hQeEJXZVFNYzY0UlhJOGtGb3hIaElWeXJsek9EWEp0UjdtdUt3TytyQWc4SkdERkdNNHk3NnRKN3ZkQ25vbjZuVi81SXhGL1BDblBpTzEycno4YTlXT3pvU1lkU1pBamNWWlI4RWNLVWVmRHdSZ3Zlc2Q0VnpDV3FQbmczUXZmTkE3UzlDRGFnSFl6MnhVTGJSR3B5dFZKSXRES1pjbFZLekxIS2hQTE9sYXBES3dKY3hnUHV5cU96M2RndEhQYnB0bnB5YkhoM3U2T1FSQXpNb20ya0dzU2plTzR0YXFIU2ZVTmMxVUNsNVdhb1h6Vmk3dHVDMTF4TEJ4N29aUzZLZG43QWxQYWtWOHdzK2RHN21seUU3N3EzSWYwd0dnUmY3VTRhanNQZXZaSndCZWY4MUFHSEpQVFd4a1MyVnBYK28yeFJtT2ZBNWkvdG5OMHRCUC9EWVA1M0RKcWNVVHp5M3JaMVIzOW0vQjU4bmZRZzcyVmJsZDNCQlA4bElpNTRWaGtMbW53d1JHTHZreTBCZ002ZDdDWHZMZ3VMNUtkYTdxaTljajI0VnI4emZ2T3ZSYms5RStBbk02Q0tKK2dGTzkwWXlLaHlpUjM2Z0UvZmlSR1B3bFFvSnRTNTNHdkVZdTAvS1FXOHdQU0RhN1VSNlJSTDZQRStWd3lJUW9FejdIbjQ3Ullndm1MaFVXSmhZd3VzY204a00xZ2xPbk45cmExdUtvRytVS3FCc3dESTJIa1JqSHpVczRYTUp2aXJPRnF3WkJPSjR0bXZIVDBjTGZUbmtqakExREEvNXhJczhyVm9pQ2RBUjQ4bVU0NDdkMkhuZStsRS9pZnV3K1A4am9QRDdMY0R1VExnRms2VUZlbDRORWhKRlFWb2FMSXpXT013UkJ4WVNRWUw5dVNGTzkyWFR5QUtFbk1PQ3dOTWN0WWhpa2Q1WEMrT2k3TCtQdlFrZmd2RkVrT24zMVVENGhVZUxqVmNENlV2YXpEK2JBU05MSHI4TWl0WVErWnBvWE5vUG9PbjZrNS8wOHFnZGZLcGk0Kyt5eWpEWjVPNk4rRk1Qa0VpcUVVS3JJWTVMQWJQd1B6VUVRU0M4eHdZNDlrMTNkUnJ2dG9adEl0OFZ3Mlhjd1UyMXZqcVpaVWVaQnlEODFlM0tCZFpvUVRQZ1o4Q0NGYjV0SjliUjhldVhUWStUeWIvbmh5K05JUm42K2x4ZWQ3K252ZmErM3FhdVZiL09QUks4WWkvbk52OUVmR3JoanR6SGUwSnpyeXpsK2Q2WjNzeGVremZXdWhwNFhmL0FZMnZ3QzZGb0dSM28vV1Y2YmdpVmNFMnlMUDRIMytDK1E2WXRIdXJvNytYSCtpUFpxTlpWdEQvQVZZTUg2Rys2bUV1Ri9LQVBkVldlSEtKelI2REFvL0tyM3RzaXYrOFlyTDNsWVN4VnBSZFpUeDVUSFBnVzY4MGZQdjRQMzVZakYvLzBFYVZLcEYreHQxVHp0OHdHc0pHNCsvZlVFQXFnMklkMzlsTDFJRjlhU0dFYUVFTVc5VG1WQVEwT0dsWkh4TWh4ZFdXQ2drV1c1T1p0RlpKR2pyd3N6R3RXT0QvY1c5blh0cUtUa0twR0RVYlNleWw1Smp1TUhiZENYUnk3aGNqek5JM2krTTF2bHExbHRYUWU1cXh5Snl0aUgwMmphMk1rTDJCMVYzM0lEenZVUDdGb2RIS1FtWTQ3cWZ5RHNtcHpjbGdhaGM0NFpSWTdrV2FFMVlhTFdKNFJiZjRFYVVoM1FleUIxd0hUNTZremhxMkhob2FHRFB2aXVOb0UrYnV6M2JFYVBYd2FXZGxFbWFNYmFoVEVrQmRUVjlIN1BoaG9BYnJrWHJLdU0xYnc2WkdmVmRwYWNJbmJlSW9CdVhtR0RPZFozRmZDYmQxaG91UlVvWENjeFdCamlwWVNZTmkxRWU1a0VLWXNRa0RrWlluNEd3eUdPWEl2alhPMmMzRmpzN2l4dG4zMTB0N0p3NE1rSDJLenFSSjNkTnlsaW4rOG5Fa1k1QU1XaWFDcVhKOXZaVVVDZjNyYmlFRjNiQWRWcElwWVhoNFlLaWhUUTRkTDZybWRuK25tS1htR2pQNXJPRktqWmw3OTZCQmxBRmJRWmNjblhsS2gxTGVBQWpxUVZtK3p3d1VuRk9Od2tWVmVDM3h6V3NxaWRnNmloWVFsaGFsZ1hndXFLSUZua0JzZkdGeElYMTB4anQycmxqMjh5RzZjM3JONjliT3pMYzI1Tm9pNFp0bnlLaER0emhNdG1hbVVkaFhjTGp1cU5OL0RhZEtmUVNsMnBId2lQUU5NdWxyNEZvUkk1bWJRODdTdHhkeVlaTHlZLzJCY1ZvYXk2WXR3RGF5MVl1MU5FYUZZTkxOZm5aK1NjN0VJNFNqUnIrcUN6ZlpZU0N0aXpIVzZoR1h2LzFEOFV5aGlObTR4LzRPalh3cnhNenNWYmJKMUVxK2YydHNabEVYYUNXbFhoYW95MlJvQjAyRlZtMmc1RVdxcWVlY1g2WmlRRStDWDBtbnNVZ0ZLOFlWMmxVWm43djJReVIzR0RFVnhEKzM5OVh5TUVvUzBmU0Z3My9ieUJKaGZKcVFmK3JESy9wRTlQVEoxN0hObG1PZHRWbDE4dGh0VEYxN2tkZVU5aWN2WXViMjAyNjdEcFR1R09KL0FMZTEwUTV0QW5rNzJ0WXJFUVFpTlBHZGNNQ1JwV3hMTkNqS3c0UVdkbTFtWWlTTklkY3YwWUF1eFREVEpNeDB5MGpGaE1BOHczUUZwdHZUQ3dSaFFXL2RlU3FRd2YzTG01YlNMWEh3bGJPbnl1cVRIWmZZYWowTU9oNVpDbzNoUWZLM0xjd01nZzBIT2hUR0FZUVNEQk0wem1GdVN5REwrSzdSdjdsRGFKQlkvNXJaUnBpMmdUNkpRNnFYZzFGNTlBYWdpTkVndjk0RFNHa0ExTkFqejBFL2tsUTdBQmVQMnJRT3RRdHdzRTMrVUVQTlFoNWcwamxhLzB4YXV6SXh1OW55Z29ueFc4Tkp3OHBHSmNJS1JHWWJUaUxoVFZFd0ZGQ29rQ2YxZ2c0UzBUbkwycXVDVmMxT0NuUW1pelZITGQwUStWa0FGdVNCWUJPOGtrbmtVLzBuV1JNWFlSUFFMQ0dpWGJjanpVQi9oMVRzYUREdjJOSTEwL1lCdUZwcU5nZTRTV1RtYzhXM0JDbVZVS1dOa1g1bjJCNU1DaTFjK0RRR0pZUVhhbG9LTlFGU2w0ZnpUV2ZienJPTlJucW00K2JEZjk0cU80UTFnSGsvMkUzSThYRHdBMThLdzZkTjdoYTZZYzlYakVHZTVCWEgzWnJuUzlVUmU4QS9uM1B5d3lFK012cnRkTzE0cGJhVmV4ZVRQTHlEaCtDdzAvWGZwQUp3TTdmdW52dk1UWUZxaDVzZ1JmcndqNStxRjVkdGQyNXZoVUdqeHJjVzlrdHNxQkxSU0RLY2NxWWxzSURJMWdJTTNNNVVaREFWWnhjUzFmMyt5NzErRXlNM0ZDL2ZKWUYxcHJkdm00M0VrSnZqb1NBYnE3SFBsam41WG5BSzl6VGZ0MDExOWsxdXpqWDJUbUg5MTFWYk9uUmVsby8zVkl5ZXJSczZNb3F6eTg1bDlXaitmQS9kTTd0bXV2cW5GdWM3Yndwc3pIVzFoYmI2R2RXbkFITzA3K2FLamtHRDlXYnZCYmFvK29ZZi90NVkvd0I5SFRGT2pwZkJBcTdvOTh2c0VCNjExUzh6c1kreS9KZEdmQ0hCUXNGa1JXOFBJU1JxUkl1MlFLREVIV0ZjT0ZXa3dtbnhHeGZKY1d0bGJYc2V0L0ozKzd5L1pYQjYwK3hLTC9YM2ZXYVY5OSsyODAzblhyZytnZXV1L2J3RlkyR3MxSVhEME1QdUdhenlDcGVsQmZ6cEEvK3J1Y3ZZc0IyVTFwNGx1aHovNnd4QU10Q0o3UjY2WFAxdVBkNjZhbW1ScnkwdklxbEcvL0RTc04xN1NZMzFlN3BRdHVYVTRuZnVycHhuTStmUm4vWVNtV2RRbVNCbWROZzNyQ283UlBVRFVHbjlSRDBsMHExRkd6S2FORzVTaGFVeG41ODdveHU5NlN1WmU0L256NzNXZTRYWklNUVBISFdTZlY0OGVoRXR3MG53anFHdFBDY0lUK0I3a25oZnpIc0YwdXBEWXdZYkdDcFVGYkpoVEpjR1VSZUtoVGtaVUpCWGlJVXhGOEsxZDZwN1A0WjRPYkJCdjBPZSt4dzA3RjlrV1BoN1JkTUduV0JNdm1XUzkvZ3F6eGU4MjF5cnF2NVFlRzA1d0ZsRy84SDMxTnBmbyttNCtCTHZ1ZU5BZjNjMTdsT3AxY1BGTnlnTnpjQTdzeHYvYW9Oc1ZYc1hkZWdiQ1hscVdJSlU5eUl4SFh0WXU0L2lTaEFONllxWUg3Q0l3MkttZ2FXNlZXeDFCOE5uRmI1K0FkbG40dy9LRWwveG5JTTdwYUpKRWtma1B6U21tajBrdWhVOU53TUNWdGYxeFJSbEIrWC9MQVZ2L1pCV2NZZmdzWWZrRmg3aS9na1h1NlBySU1yb21mL3hJb0lBd0pjNEpjZWwrRUNIZFgwZCs2N0JEME4zdEhLNGVteE5aM3dwZkNjaXVHTGlZcDgzS1FHZkVOUkJveU9rUUFZN0JDU2RDd3Frc2crTHlLN21GdjlFZ083YUtFOGxPc0lod2lhbkJqYVVON0E5SGk1d1VScktCdk9NZy9KdXR1QmxGNFpIcGxMMitubXRHaTR5WExSYk5rUTNuNzJvMHd0SVd6end6dCtTU0JuSFhLSFkzQUM4MnNnWmM0dHJoYzJrQjE4Mi9Pc3lIeXpUMFhkQy94d2NYU3JRSnhmNnVxTlhzSTM1eTVvd3hzMmJtcDVNVDdNKzJxRWVjeDUycUc2S2g0ZjZld3BENGhTckR2WWxEQ0h4ZUc3aHRjc0E1T3NIb0JUeEROQVJIandQcHV6ajlkOUNNbVA1OGY2U3EwRFE4bkJzWmw5VkxmcDRzYVJ3Y1JRUHBSSjVidjdKeFFhRkh4c2RKNzlFN1lWN0R6QUhTMlJNa0k0UWZ5cVU5RjBzUTJIakdSTTlZbWlicVpGUzhHZjFYUnYvTjRybEZDVXoxU21jM1JOQjRKVVM4UEN3eXVZVXNKTHdoSk50cmEyQnBpcU9TZkptVUt1NXQ1ZHphZ1pLbHlndm9UelF5TzU0WUdvRkFrcDBFYTQzWG5ZeWxyT0k3cStSOVRGWjFKYmtzL0Nmbyt1TjlWdlRybjF6bmJuYllhQnIvRmxMWHlOWVRodnM3Skh2a3JwVitXbzNDOElyd2tFWGlNSS9YTDBoMTlWMWE5S01ZblYyVGFyazJLaHIwcFIyVzByZlZWeDZUSEhmZjN3RGZzQlUrOUEzNjM0TjAwRDZobGJBNmluRjRPSUFCSkpIQ1NTTllqRlN5bUhvVzhJRVE4emIzbEJRVUlOQktrdUlGUVpJTnpQNXY3VzFpMGZhWUVMQnhvdWxFUnkvT1ZjQ2NTU1h5UWZmd1ZYc2ZRZGpPdHQzVEt6WWQxRWVUQ1Q5dmNIK3QzNXBhMG1uelRZd0ppbWozbmxNeVZyMVJCMlhnS2RaZ0dFL01oRFB6OWd0dG1mZmNnQ3hHc2wvTEpvaFRQam1iQWx5djRLSnFGbkRYcUFRWjBETlJzcmJFZy9ZS2Z2OGFzejhhenpvYmcvWkJ1V1FpWFZNb0xyaXNWRUttQllxa1RsMXB5dlpaWmRsS2lGNGZHU2g5bGJ5UzJBWUpsUDkrWUt3NmpNY1J0R3E4YnplckxnZms2VGdHN0pzaHZwSVM5Uk52c1dNQm91RDZ3cDlYUVdVKzB0MFZEQVo2Z0t5dUdjN2psQU1lZVpiSnFyZjBDeWhta2I5UElMOGR5M2hYSitXQWxGbUVORVJvNVdDL2o5dUtEb2VGZ3dOR2VVQ242dDN3aVNnTmwyQ0lyNElDODdYOVg4UkFvazNLQ0VGOXdkUGtTVnoyaStOczN3eDRQTzUvbk9VTEVWKzRrYjh4QjJkMVhkZElZc0lCMmxXTzZoUnY5Y1pnMUNOV1BRYUd6SVpxVEgxZTB4cGJUTWROS2U0MjU5SUdUdzg0eXp0RXFLZGU1ckxJL1c3b0R5YkdRcStwd1NjTDhzeGoyU2hHWFZ4clo2VXFQS1Y4TGhyeWhVYzg2eWo5ZVFINGpaQW5wWVZtR1dVeFZWeVljb1ZCMmR1RVdQWmRncEZqcXlxV1FzNnFwSWxBdXBTSUo0UmR4SWpZQ3M1bHY0QnVlN2FsejlVK1o3RktkN1pGditOdXk3dGRYOENwM0huSCtrOUZIYVFydFVkYThzZjU5ZjVQbnNma3o0WTVBejU5Q0dTbVdHeFhqTXNaeWV5SHNOQWhJbmNSMHNtMFVXZ3RaUGpZK3M2VXVuNGxFMFIrYVVCcjFzZ1NuTXVNNlFSVTh5dytxd0Y2TU9WZXdrNGVTZXE4MWcwalhhNmNwMkx4WitENGkvcWFuNi9PZU9ibDY3ZERraEV5UGpEeTl1dW1kRXcycVJSdFNoZTJZN2NzT3pFWjhhS2I1aFlmemFvcUdMUHVzZVBlRFg4YkxtSXphTHE3cmJvdFJRTm8yRmZKMWpIejI4N1E5SDExVUdlcUhMaWhRclBVbGJqYVNQM0RIVmtadGQ2Q25xZnQwSTZHdDF2MC9EaHd6N2YwNldhNVpSWDFxV08zT2hMSDIvZ3lqbjJscUZLOGdNWVBWWUplem1tR2FqbHVYaVFRWXhCSVlmV0dKdXo3WXovSzZtaEZsa3hncFI1eWd3cUVmTWRqNDM3aFUrQ0x3MWdVcUlmcXhVREZGUzZzYVMzTXY1T3g4VVhyWmdycElIT3R5THBkd2tkcVVEUGsyRlk4NHRabXNnYWk3L1lVZGUxNjdldWV2eVEwdUxyKy9JeTZUVitXTjhoNjNxNjVldnZDR1VDdU1IL3duSXQ0Vy9Zd1hFbHJzdlhUNjYvT2hnV2RQYTIyN2R1ZnRnTm1NWmx6MU5DLzVMMWs0R3hOYVFzODNrNzh5KzcxOXdmTldPOHZCOVI1a2xpZkp4cjBnc0FjNUpYZFpFVmFwTzREWDl4VUl5Z1ZGNXFIOTB6V2hQZDZHdjJKZk5KUExKZkNpQTJuRzdjWUVzZGxWUGkwSWVWeVBBQnM4cnNNbDlkTjNrcUNhdkZXM2p2V2JvNUd0ZmZlem8yaWs4TlhuMG1QT09aRy92VktuMHhSVTdRUm9idmV5S0c0OGM4UVhlWS9pRktWbGJoOGVoNXFkWExvK01Pd1pyVWlteDdWU3Z1MjJpV1hubWV5QjY4NXdJalpTS3BkNTBxWlIwUVNwbFljNFBXT1puSnFSR0k2dFpLSThTdis2YzBtME1OQnFtNVlPNkg2ajFhcVpKVy9OWmVqYXArWHhheHFOSkw1Qm55TmRXNW0vRE50TWFNMEVLRDBmSU13MGpqbnowM0JJYmozaXJtcVI0SjB2Z3h1Uzd0OEM3RGdHUFBJRk9zOHloOTczMk52amNMQ2tPRjFZNWpjWmlOWHNkSjk0eUVHOVpQdkxtKysrOTU0NVgzWEx6L0d6V3I3RFFCWjYybGl1VkdGbmpLVE9HWGFtVlozSHBZdzRhQlJheXdOdDRjUXpEZVI3SzBJdDUvZzNXMmcyQWlQSjRoNm9zWEhYTjlvUmdObDZpdFl3bzlZeGh0VVJqVlpYalYrMkFGWlYwUVlsVjFzZmJ3bmJMbmJGTXFETVlEMUJWQ2lyOUxHeEFOTnZ5TzNibTRxMTM5R1JhdW5wZWRVZHZGOVZ3ZnltWjdTdmRlbk5QWHFWR01TazMzaUtjNjhySGdsU0JPL1RLV0ZLcEhJaGtTb1ZkdVVUa1cvdGxlUmg0NXQ3ZHNCbVc1ZDA3M2VPZGU5M2owektoek1VeEZ0UWo4Wm5aK0oweFZSS29HdEpNbFNqOWhtbW9zaG1LK3N5UURvOXp5eTJsdm13Q0hpZUMvYjEzdktxbnF5VURqeE1oQW5QZ1Y2cTMrTDBJMEdRYW9oWWxTcTlreVpvdTI3NklTczJRUC9LVEpmZG5MOWtOanlINTVWMDczZU9kK3lTSlBWWXpybU0wZkE1ZGhxNnRYRzFVczdCcUpzQTFRUVZDN3NjcTBrVlZYMVlzNGtVWis1ZzlUMTZFblV5WEVKWHB3dWI1ZW9EWHJ1M3psMjIrakxHLy9ybUJ1Zk0xTHZiS1dNYVhsWnhWYVhBMGIycTNldjFqQUhwc1Z4Y0RFUDh5emdyKzlMeHl3TXNpWFd2WVZDSDByQWd2cm9WMzNka1F5UVdzdERIK0M3L1cxdS9oOFY2TjhWMmViWVhGZC9WWFNzd1BJc3pTUXN6VlBRbkVGWUZlMVRBdnFTSE1xMWxudXpMTWkzeTN5YTVCYXhZUC9PSHpUQk9MTmJNRnF0b1JJL3o1cXRuZ1QxV09zd2pZL2lLUnBSM3poRWUvcXBWUm9oQnBycFl4eTRBdFN3WEZtTDBiZHFQQ09GZFVjbDdPckpZWVFTdlhJb2dWV21vWmlNMVZvbHVydWppbENhTklkV2pQUFhTYVhVYWJJUXI1Ym1PNHFnWWQ4QmlyOEFKV25iK3Fwd2w1b1Y0c2VybGxYMmlLUi9WQ1VCdmpVZXVHbXhkV00rYW9GN0RsM0lQZWlSNnV2RFZVblcrQnFCd1J3ekpoRE5hR1dkZUdiUlNrZG5EWjEyTEV0WmhNVFoyb0ZsV1hXN0hsOTF1THNMUDhTOGh2K1JmdXU3YzVHOTJadDUxKzRONTMzdmZPMTkzNXFsdFAzWFBEUFM4L0kxMzdLbk5UYXJMSU5PY0NhRDV1dHVCY3JQM3ZOTGZQZlpmUFByYkJoTSs3ZS9TRzRzdG84RnRUZ2RVMmpaUmh0YzNMb0JiVjNKOS95OGRNZ1krWW81WER5SkNOazhpVUZNbGt2dHhFVXNneEVSTXFFWHBNeDFTUUtBOVBsZ1IwRENGVlF1b3hobmxaMWlZV3RnQXpVOVBVUmFTcTJoSk1WVzFoNithWjllc21RTG9jN0lEWjFSSEtsZ2NzcWIwNzF5eGhaM24rYng0NDBzMVh1QmdzTTB1L3hKa3ZmRUlRTzdKaEx2eVVBY1lVbWlWMC9Ob0FpNXlFbmdTNU92RGpRejZkbmdFT2RJYnExaVVqM2IxOWUrWm1kcEo3dlpwTDF5eU43Wm1mTFhheFpvUmY2QXJrZ2RkV0RYWTZkb0wwWGFMNExqWFF0Nyt0N2FiT3pqY1B3UkVOanUzcmg0T1orVDFCaXYrNTFycWFHOFROQVRuT2M2UXpZcXR3WWl0U1FpVGlodUVnTndwSFBzTG16MEIvVjVHdDhPRWZENHhmMkVvZ1pWZU1UK2JlNEpFcVQxNXgwelN6SmsvejRkT2ZLZ1hJN1RjeTgwaS9IdWpweUpjTTIyZDBGbUpkZlMwOS9mdldiTWdVUy9nemdFWm05VUJ2RXQ5bjJNSGU1RlBNaG5EajRLVnRDVGh4RitBWFZUSjlrcXBadWU3dEwzQVRRb1BzbWtRYjBGeGxZei9BQ2N4elhKeFUzQVViS0trbDZUOS93WWJKZGVXQmxjczFxQzlqdVFacFJmNmlQRU9telNGSDBRdXQxckRHOCtOaEFValgwUmdPYWRBdVJxOXpvNDB1c0ZyRG5hb0sxM0JETEhjaE9zTlBIM1VYYStoaWl6WFU4Tm9YeUtQQXk1ZzJwT2FqMFB6YTBXQXd3clFodVFhRndvaW5VR0JRRHA5MHZrQnBGeURpWDhpMmpMOEJoUzVLei8xQWphZnhGTk1sVVBydmtvUy96YndtVytpNTcycWV2b0Q4RzgvSHoySjhxMUF4R1dFeHZwSXJuVmQvZ0xsaXNrV0hNdVMwY3dyZTdFRlgvOEIrRkk5VDJxMUVOK0Q3NEhmd20rQUF6amxQMDdnS0cyaWxuSmNmZUQxYVF0c3JDenZuTFFua2lJbUJYSnRJUkRMSE12cnlaK0JqVzVBYnRDOHN5eTg1d25MNzdsdmNzbmw2c2p5VXpUVG45bDJaeFRmaXFnamg2K2Y3Y0lNVXpnZEZyaW1Kcjh5SENXN0krRHZFd3kwWmNSQSs2SHpMVW94YUd0OURlc1E2K3dEdVZEVkNxOWwxSDE4Mm93SGg5eU1zQlc5WTVhbDVEU0E3UmRVOGU3aWF4SmZTeHcvcHNzLzVqaFlTZWxacmVaVVJVSnFiaHFPNG0vKzRsOFdYL2Jody9jcHN2OHRtTEZpZFYzY0xYeFpZNXF4VEh0cnE0Tm15T2FocHdqeDF5RlBJdTZBbjcyR2VhQlhnRExORlR2aUZMdWE1SU9UeDdqVTg0dDQ2VC9TaXoxWWxTMVRiTm0xcFM4V0M3YWRiQzMybFZBQ2tyb2d5ckt1eXBiVGIrWExwVURFYmUvTkF3ZWZySDVqYmVQOVF2MnpnQTBNekcrNWUwNk5wWm1mUlVyWFd6WnZiVXZGZzRuUkxvYi9VRnVFM0tBT2VvY0ZBVytmQlN6dXo4ZE5sTzFEc2wwVVJzSytvdFVXc2VPdTJIWW5UY1V1M2ZRSE5CMTlwMkxDcGo3YXFjWTJha1JEODREM3Jad1pIUXFIczBCclJiNUluKzMyKzRrQ1gxa29FUTFEVnRvZ1piOTBPZDJneGpJQVIwaTJRWkFDV1VOTU8yUzIyRlE3RlR3L056YnpKblQvUENEZVQ3NEdjTkZZWjdtYmV3bk9JRXk2V1VCMEx4NUVnbkpDd1NJaTRDRHVSTERGcjJnSjhsejdVTnhLUHRzbE12Y203L2tKT3p5TmVSQWVuNGdYbUhZcXZaMzVjUlBKV2ZISE8xc25NTlNyVnJqMndORHdxQS9VeUxhTGNlK3BtL0IrQ29NZ3FOSStxYkw2eUpiOXFDOC9RaUNBT2w1Y3VPYWI3QStaOVA5NHdnOHdMK0Rtd3pJRHZSRStnejZLL1IwOVYvcnFsS2dlMnkyMWlxOFRGUUFwaVlNcElhZ21wSnZ4bEF4bC9XcktDTnZHRkxOOXlQcGFMZEVpaGNEaTA2QlZENGFWNGxJUkQ0WVhQUC9YUmo3ejdYYWNmUEQ5WDhkTmZmT3J2UC8vM24vcjRSejc3MGM5KzRIM3ZldUxkVDV4NTI0UHZQUDNPM3k2SGNlRy9RV0w4djYzOWlxVS96cjJaNndrZlp6NUNuVjRSQk1naXErQXF4UCtCQnE5QUFuM3FwVTkvN2lMeTZVdGZYZVd2UTJRNzZtZHpOR2ZCb0kxakVhQnNTU0o0Um1MT2FLZUl1MFFENFVzMENFeGx5dVpvUCtvZlR1U0xiSTV5cFpIZ0xVdmhRcldSU1p6QTBTRGZKWm51dTRydytwaFdIUCtMb2hqaXRtbkJwM0tqMGV4QjBSL3lrZTFIUlgvQUVvZDQzUW5WSjZaUGlkYnJSTm1QUi85UTFUZ0creWF3RlVOei91WjUyT3YwTmw2bjBhMy9IOVZXNU94YzZZUDBuVXJiRzNIUU1rRjRPcm84WHltbVpGRmEyakhhSC9QTFFCUG50bndrL0grRlJ4Skd2OS9ra2RTODVsOUhwczN6U01LL2xVZFNNN3ArcGVkckhrbloxVDJTeUgrZSswK21tV0RCbkliejRHb3hmdmUvN01yaVFEUWRleEwrRDNDUFlRbzN4aDltM3BwVnJZZnowMXJ6cTJxbEoxOW1IUlpEZGpScWg5eHROdTRHbU1hemlPZEtPai9QL0w3S29pV2F4SkQ0cXBUQXZrQUlzelUvOVVuQTYwL3FLbEdVSTc5dFpxUkdHSksreVBFcmJoLzluYW1WQkZEbGt4ejB6WEhyeXFwbHRpNlM4MG51YmpQSEpmbFZ5MnlLeWw3OHpXTXIrcGV0eE1ZVTh5eFdURDNGQ0pNYjFjeVdTeEJFbG9HTlVta1JkaEpkMGpDVjZNS2xCL2JzMnJxNVhMVkFHWUIzbXozcTBrMzRWVnJwL0ZwdXhzY1hPMyttdmlTVVVHeFVQcDc5VHYwTWVRYk9mSWlmV2RRRDUzSVh1b1pzcTVtbXZFV2tiUDBicXhEcTFlb3UzSStBaVFtTENPZUxJRURuc1k0VEpSWjdwNnB1N0oyNnhQdDQxZjc3SGZ2bmY3Yi83cTExMi9odjA0Rk1QbjBYWUs1VzFJMkNGWC9kRmppWkdPUlpzRnlIZ0lqc3BjaTFzQWVFZXpITElzUFRPc0Y1Rm1RWkliNGw0R1U0YmZtSi9pOVVFZzZLWmt6L21SS2tQOWZqcHJRa1NNclBkV0tiT0IyUkRvalJxQ0E0djZKcXVKVStMZ2RVNStkbVJLWWZrS1FQVURsaTRyQWFrQitucldGZ0o2WmFmYzYvYk1DaHRTV0lPQTVWUFlEYjUrSlI1cUhOQVRCZXdtOEJlZllHZ0prZzErSXhLUDh0RHdrazU1eGJHQUM5eFlXNmVMaTY2YUpWZWVEdFpELzhWcXJTTG1EWHh3M0EweUozK0dJb2FpRVlqQVlZMWxaZEV5bi91V2dEM2hiZVd2OEZCbmtiZmdHZmRXNkFwM21MaDQ2L0NPVVIvbFFlQnY1TDRWdmtFN1dvL00yVk9TQUNWS1ZJUFk2SXFxbEVPNDVFVFR6RkV2WmhpZVZsaE5NSTAyVUVweHIxWWJ1MmI1NkRRVDBhRFlaSGJaMXB3bHkxUnFPQ0o5UFg3TXgrTWFmTDVtUDhMVUFKUExzS2pEM0RMODI0SUlMbFUvays0UDV2d1dnZFpZT1NmSW5ySWVzcDU0QWljdTBYVU1SL28zU1dxcWJEMmptcUpzMHkvVUNNUHFlcVBKRHdXelZ4N25GdkVnQlJybzlpTmpiK0FNWndOOXJFdFdIZU9rY3dRbGhTQWdWNDAzR2tLQ2RFakNUSmpTeVZsbFNtUTFxWW51b0laVXZaam5BMnA3RzRBTUN4N2E1cGdrV0xlMTNEc3cvTFBHakE2eWllaGpqQ0dYOWRrY2p6RDdOWWN0YUx3cWZmUllOUHFkcjFLc2hiSDViODBvZXBZUjNYMUtkY1RaOTd6akxVeHlVL2pIUGR4MDVwcHZndUdWL0hEazk2aDVKVWEwb3ZkQmY0QmZseHhZK3FPWFYvMnNDejk3RFlNYUNSOGtta0NNb3BObzhZUlFTK0QrL1BWb1JwOXFmWnVxVlFKWVc4UTg1M1JGMUIyczVUalRaN0FPYWJjamk3NjUzK2xQTk0vdTBOZTJzOWwrRFd4dnJHTlFhZE0ycmdOYXo4bWlCOXB5U1JtMnNmMzdtdU5qWndxa1lBOFVOMXQxNnlSSFhyRkQ5eEErdHgxMWpvNmxCdjVtdmJEcUhyM0l3NUhYeWhiVmVaeE9JVUVibVNKU0xBYUpGRlJERUhOTVRjMXJKTnpjako4MXZ0cjBSdEVJQjZPclBwMXBoL3lCNXloUjJlY3J3SldlYVlocVFXbFcySG1LUEVaR01GWHpSMUNXWVI4K2xsczhoNXc5emFzWTA4S2oyL3ZsamEwdU1HcU9jcjY3dnFiR0NyV01pL1pnN0x6RkhVK2MvT3VSSVJpcHQ2M0hoMzUxY0xsY2xzUjgxT05rU3VRSEV2bS9vQ3VxUUN6QkVqRy9NbC94aERZTW1XWlJEYnNiaHNLTHFrZ2VoSGhFV3ZLRENWaFVCWThPYkU0RUJyeTZiNWpRc3pDNDJwMW51Nld0YTByaW1ZUExVQmMvOWdzWFd5a2dCUXI3Z3J4QTBYbVA5WjA0S0FQTWhEdWJBYmhSQWxZdXZFNGJYNXVmYkpLOGZDaVZaRnFsQ1RPSWZYSHA1b0UzQllNTlVLRmN0VGNEaHgrRWwvTEphT1JxOWVzY1B0VkZ3elBMWThGbytZVzA5TWpmUlJ2eWhFNFRxY2hjcVJma1hhb0pyd00wSnliUG1HNWJFWDJUWHBXT08yTG9NUThoQUtvQzR2Zy9wUmRIUGxoaGlXeGNGdUlxQWkxb1hkVzRpbWI1Z2dWSlhtMkxJeU1oS0FqclBzZmlMUWNKT2NuOXBNSWxRNkwwOXhPSGo0eW4xZUN2V1JNbHNwcEwwbDJCWHV5cFJ0Qy9oMXptNEFRMW51eDdDYXJYVkY1b0NYYVhWY2FadGx0a2VHUU9MWkY3cnRoT1hIWDdtS0laUjNWV3NONXhQZTJwWnJlUzdjSnowTVV2UldIb0ROd2tGdXpWMHYwMmR4SlJ0MzNzQ3VGV21zRGEvTnhxL2l4bDFlOVFKYzlaSVd5VWNQaWxSZXp5Mi9ybi9iTzRFR1RqT1BGOEdUWjZEN21KNmNqVlJNRmdoYU96YTBCazJUYVpIWlFGeGc3dm9qY3gxbE5NSWQyWG94ZS9jUk55QzJGM3ZhVHplMk9OSVlqSHd0VERmUGVXM1Q1TDdMQ1JrZkdicDdzeS9rTTJadXprVlVYMlJ1cERPMTlmU3c1N1BtdDNUblR6VGY2aTVySXhXWkJNd3h3MGZrVFpPNWpxazdqcVNqTkZnY2JuWllRMVdNMXBoRGZSSGRoaHlYbGgxRVdLTWc2UjVIaUFvQ09nekNnVTVVL1RqU1FwZ2lqZklWT1lncWtNdkRXRWVHcEJ2TEFaWngzV1Jjd1VSKzJmUXZJNTlpK1JhRExQKzZ4ZHplZkQ1ckNWaytDNEQrcFkyM3Ayd28vM2ZlZjM5bFpOK2VhUTlHM25qOXFSUFhITG44c2tNSDk5eTI3emEyVGxWbGNYcnhmRGhaSG95dzZQand5akRKNXFTNnpTdTFucGRFZHpDOGNyMVhkcksrb0ZtNFNhMEdmTitMK1JVKzN5amRuSHNXSCtEODZiMHNvaWJZSVBaOGdsY1ovUFM1U245QUQrbDJ4TDhQMk5ZVGp6TGU5Wm9iR1lYbVN4Njk1aVlva205VkpmK0E4NzA2UzN4OFZRVVh1Zm9GZnZPb1AySWJRV0NjZHdYMElERFdxUCtNVjdNMUFzV29aMnU1V2VoSEtaNC9mUll0VkRZbFlMYk1UckNWcithSVFsaFVPV0xyQndDQTRqRjdERkdkbDJxUjVSM3FMeFZ6TFRIYkFoazFSVkxVblZQcldQQmRGR2g4T1FTZHRhNWhSVXdsZ1F0aHFTbkhiNDQ3aGVhbkFGQk1FamZWelRlM0JrY3ZHeG5ZMlJmYUd1UUxaTzdZT0wyTkVOMGtIMk5yWWZFMGlrZFRKZWM3eE5EdTEzU1NpVVMwNGtRNUZRN2lIOXRrK0pKQlVSZzlNQ2hELzNzTFovWjB2V2tuVlczNkhyN0E4MmwyZzRvS3MvRkczNXJSb2g0cHRVZUxob2MxUGk1OGdXT05KdjlJUzJlK0hZS3JkYkxZNnFJTmFnWVEvWHV4OEtkblAyQUZNTVUzMjBGZ3cvNHd2cDNpZ0NBRldqUm5JWlJ3ZnM2L1Q3ZzFpcC9VV2dJZTFuZ0gyZGVBTlU3VmwydFlZc2ErR3Rid1Z1TGtKall2enkrSFBIdndmUXhkM09lQ0dXNVE0NmExTHVXcEZmaG53a1ViWFdwMGhXL2dScGJaaEhKL1pnVzdQbkhjcmtZRUw5V3c2eWU0ZG1KMFpHaVFlVFczdGJyK2d1b0ZBNytqN2tOV0Y0THhQSnlIVnZOMFpqTDFhdDdPcVllNXA1ZjBzT3orSDVabHFIbkVkZjk2QlA0L0xMbVY0cW9PME5uNk5lNk5XSHQySGF0OFJJSmJ5bVgzemw0dW1zL3hYRFNsU3Bmckx3Z2YvUlR6S2hRV1dUNmFKZTQ2ZVY0cW1tQjZ0ZHdTL0ZpdUVweHBjcWVYaVlZbGpkZ0puK0FKMXhMRE10R2NlNjF1KzNCSGpIN1NqZXpGdXhuZTJlbGFrZXVaYUJydDRWbVFMMWdVZ0NBUmlXZGdGRUdTNStzYUFCM0ZQSEpDNE9IcWlzSjlsRm1XSVZHQlI1OVp2NDVIZExKWEFHa1VYa0Z0c0hNd25sWmY1R0E0VXBQeGJiN1lRWFB1RFRkd29DbEQ2cDg1RHhxQmdQR0lwV25PSjkzb1lUeXJSa0k2aUs3V2k5TUIyeFBYbnpQQ3lucUc5MTdQQW05SmE2b1VFM29zZU5Wd1JIVSs1Y1lsNHpsbzhJZ2VEaG40aEdrNWF6ZjZZODlVazJ1bzZyUWFxeVhYZUkycE5tS2ZNTXFoTXBvQjdNUFc5YU9FbmtTcXBKNnFSazNJR2tHS3F4aHFkdVBHYVBlT0xmTWJLaE9qZy8zZHhXd0tCSGNMaFhGWXJ5Wmdhb1IvbmdqMU8rS2ppVHNBMElqaU85WEFIVVl3U1A3MGxRSWovTUhyZlRwOUhBYnk0NnBobmVEUy85T3ZBQng1T1k0WUg4Q29CMVhZaWlLVk1wRzUyNnliYTFFRVRnREF4dVVBWkJVT0lKQ0J2a0pITWhHUCtpMVZJVDFDRCtjQVlTbGQ1cXQxSjlqcVNUWFRwTXNCd2swajUzemkveFE1NmhoOXV3WjZkMDRZUkZPMlV3UDdEcTdmdU1CNVFKWDBsLzQzSS8yNkxtU2lZY01qL2Y5Qjl4NFlYQm9WaE14MGw2ejU2S1liazBsRyt1L2ZjYWhLOVBFSjRCcHZWRUdVdXRHL1pxUkcrWW1IaGU0Q2VXb2VMVloycm9rQUcyVFpNUURveVRvaEttYmg3Q3psRTBqbkFsM1dYTmluc2JtM3hDZ0dYN2RzWm1ObGNtSjhaTGl2MUpGdGlmbm43WG5YVm1Hc2d2MVlvdEpRSkdxeGhhVUtYaFkzdHlvU1psN3orWUpYRmVKNUlnWjV5QTRMd3lGZmRBNG9odXV1cDNmQ2Y4MGN5UlRIQ0xIRDJZRnMyQ1prckpnWk5UUWRqckx4TnF3citBT0tSdHBBbm41WFBmMGVQcE9ObTNHYXlHSm9ibE1sRVdRbkFrbUYydXhlSFFrS3A3TndpMzlVVkZYNVJ5alUvVkhpNUZXb2JTVi94TWhkNGwxNHFTWGV1WDM2WDFkZnFoM3YzRGhMYnIvZzR1dTEzejVTalYxd1YrbUd5aFd4QzlETHZkaGpsckl3MytRc2ZtdkRTdUMxdk1pRDFYWE9HUU9PWUdEQWMxNW9xN2ZRV2JHUVNjZGo3TzRTYzE4bzlBbzhySUd0UEQvQ1ZnTGdLK0xVOHczQUF3aWZjcHlpSGRUMFM5NzgyTFl0MTdlMStmZisvczc1bWZXakdMbXI0Sno5em9ZYjdyNWhBOStFTVJwZFB6Ty82L2YzK052YWJ0aTg3YjMzSDlTMWdGMzhEZUpMMytEdmJmQWFycitCUC9PZHdqOElFNXgzbHlzRFpTeUlKV0JRN1RBYUJYZGxlYjdpMXNuNnA1bWVHaHNaNkdQNVR1UHVPZ3RNR0t2RlpYQ01VMkFwcnF0NndZWnNwMVVFT055WS90ek5JRGV4Ly9hYmI3Nzl6NVB3NTgraGROdWZwNkIwVEtmZlZBeEQyYXJxbXZvTlZUZVZiNmlhcVd4VkRFMkZFK1N4cFdyNzJ6K2FTaVJTSDJVbDUxOVZYYWZmVUV3ZEx0RjB0ZG9hN3FWcWhzSjU5R25PLzI1RWI2eThMZ0dqVGlpd0ZDQ1h6eEpOWGRvT2RFQ3N2VGxtM25Cc1pQaXhwaHB3L1hFTEc2WnFtTWVRYVo2Z0FMQkVwS3BvMFMwaGRjbjI2WUtLVk9BQUo2NDdjdmpLS3k1aFZvR0ZtWTNycHlmR2hnWjZ1anVMYWVBR2pQUERJTHNSMzhpWHJzbldISWF5NVZxeGxsbWs1amZFa2c5N3hScDJxSGtnRFlacnhkb0taelhmb3ZKZ3JWakZHSSs5YVErbGFTVWdQM1Q4SVVWaGhVVk82eGVobEZZVVZzc0xlOTdFS1AyYjlpaEtrdHJ5UXljZllvV2d2TWlYU0YyRXFpU2xwNDgvUkFNU0ZIYS9pWm05SG1IVjdqMmdPazNwSGxhdHY4UVBKcUh4c1llVW9KUmtQd2pNMi8xQk9QUGc4WWZjWDk1YmRRQmxZL2E3d3Y4aXo4RThtMERGU280dG9CcG0wcVdyWWFvcTJjbVJaR0tnUHpHUm5PaGttVEJ6K2VvU1ZEd0pKaHVySzNSR0Y2QXhyaEQ2TmtIcUxIVnYzcm8wT1Q1U3V1TGR2ZjJ0clZsTHZWblZ5YmtQTG0zZDFGMHFLbEtYb0tzM1crcTJTL1l2Yk80dVFlc0Z4OVRtRjNiUHozWjJSY0o1L2RpdVBjdWJwdFNBSlBRUlhjV2Y3dXFjbmQrOWJkYlVibFlOb1UrUVNxemlzZm1aenE1cWZpV2IzQUxTU0J4dFI0Y3JWL1Ftb3hHUUxmQVc0QjZJektrWWd5eUcrZnJuSUpXaFk5QXZFaUxTY1VRbGVrcURPYXRndG80QlZLRmRURHUzeEpZelhHaHRVZVQ1MmNFMXBXNFlTcW1XN2EzYi9UNDVyc1FEYkNsMExJZXpReU9lWjJNOXZwNmxBMlZlcmI0bUxmVWs0VEY0aWtVWWQ4bHp0NjBFSHBra0kzeXQ5RGhlaTNFK0lhdmlvbVNJWVVtYVZjT2JwdFp0bFhCSm8vSVd5UkszeUZUcmtkWmRQbHE1dHJWZGtjYjI5WlV2enhwYVRDQlM1N0cxYzNjc1NISXUrMFo4ZzJLYXltMnEvSHFRRlVTNGtTSE9YUytyOTJjenQ4NXJ0bktKSkYxQy9kckl3ZktHMGJIcHZyMWpvcFRMVzJhN0tFdmQ4QlN6dDh6dG1OMjRxeUdtbzRSTUdEbGx0QlVkUmpPVjlRaUVYNmFBQmVrWEhXZktOeVFjQTlTaUNGelhEMzJJai9FSVJpS3VVRyszdHJhR28yMWhtd2ZxdVk1VW51QSsxWlNLUGxkUHJEZFVhRWk0ZDRIa2UwUENCZHFUQktBT3AyeG4rbXo4WlZuZU9lbDZWVTN5cUJXbmMyU1hMY0RmbmFPVTFvb0srYTgxY3pieEMvNjVOWXF5Wmc0S3hKNWJRMytZSHpLd2lmVnlYcFp6d3pvVWpYSk94cCtSWldmSTdzMncrd080bVhSVEJVMnk4QmpwVXl2djdCWC8vOUt1NXJlSkk0cnY3TzU4N1BmYVhzYzJ0dlBsT1A1SWNHTHdZbkJSTUNtSm9TRWtvUkRWcEVTcUVJclVORVFjVUJWeHFhcEtTSWhLbEZaVi80QlVRcm0waDE3YUEwSkExVk43QmRGZWV1dWhVcVVTcVpmRTdielpPSEdRV2c3MXdUTzdxLzJOdGJ0KyszdHYzdnhlNng1SFprd2c3dzBTUmh0bUJhQjlNY3FSTENHRFBoOGx1QWRmS3I4b2ZVSXJvYzd2d1Jkb3Z0N2JGekUxR1ROcEdGbjB4b3BzVy9kbVpOY2NRTVJOY0MrU05LYStEcysrVlo4eEVMZXNxNm9jNHFRSlNWY2llbGlCTW41WEpJdmExTEpYSkJ1aVFNdVNheExpWG9WNUcyb2grZzduWUticm1CMXNzd2xzRTlhYnB6anN1VTVZYWZWL28rNy9uZjhOYUxwazVaV0l6V2E5UEg3U3J5RHA4ODgrK25EdC9ldXJpMitmYnB5Y0hwOStyVmFwKy9YUlVuNHduWXg2cm1Qb0JFUHBTMUhITmhQdEV1U2g2dmZ0OWpJdmtlVTlUMHdzTE1tS04vUVlDcVFpT2plRVFDN01MZ0EzNFI0NkVNZmNyclp3NSt2OGNKZFFJWU9sdW1Cb1BkajBnS20zdVlEeTA2SnN4Sk54YmpzZjdYUVdDV1ZZK1FZemVvYmhyUmVRbXFCWW1HMm5iTTlMZWhINWpoM2hyZGY2Z09Kc3Y2b2lIUmtrbTQrbmtqMmo4ZVJ3VGlVTUo2RStkanFKTWFmV0J1N3BUNWg2ZXFCY1BGamNPU2gvNjlnSngwbllUcnZWeUxZR0k4bC9FVzM3RGRFVDJ6ZWo5a1U3d3BuWFJUdmEwZDNlNENpS0l6UE1uMndsaE1JOVhZWWJUV1F6aDNSRWNRck9qUEZoZEE0eVFMQnNhZXhBMUFxTm5qa0NWUk43K2VHOStINVd2c1A1YmtrcVM2OUxrMUpUK3FydXhyakZoandtaVU1em9xRzBjNmdrbVhET1NCQnBpenN6RUZXbHFzWnRGNFB5YWxRczJkZXdDcFgwWUEwRGJ6UzlDWk8yL0VrYys3ZnpLVVRqWGduUXJIdW5HM016amVicFpyUVFDUmRTdWV3QXBEVWdHbW9MQU5OTWZ5bW9zblQ0VUF3Y05BSnJHa3RCRGZGWVdhVDU1MktaN1A0OTNLTkJzUXp0ZjBsVG1oTmRzb2x4WGlXL3EwWlljY3p2ckpGVUlmMjlHVldjMW0yRHppcE8yRkZuQ1RQRG1keXg2dEE4ZXF4MjdEbGFOdWp5MFB5bnhibHVhaklVWnlidG5wUFBEYlR1cTRTb2FDYmp4S0lvRlUrblU3S1Q4Rm9mTys0RHB1dnNnVzJIbmU2SFMxdDdHOGNkOStyU1JqcEJHUks1VFJwSnBIZTExRzlMdGpRQ0ViYURoZ3FUQW8xT3I0V1RPaHZaZ2RmQ3pYb0lsQTc4RVArejRGMEZFMG9DK1pLWHBFdVFtc2g0OGI2WWwwR2J1VUpmUGw0NjNsTXBXYTVlTEtlUGppVHkvVVYrWFhUNWRxWVNiaDF6NDNFWC9SQ3VaTjd6c0VxeEZWSklDTnV0bG00cUZsRmRTMlVZZDhrNlJnNGhlMzdXRS80c0RFb2o5ZUVVWi9sSm0zSmVMd2RNZDBldE41amdDTWhUUEJZZDhJUk03MmhaVE83REFvN0JFVzZQZzl5SUNNVGNxcUNDVWUzcjVuOXU1WW5sa2FVL3ZLUjFnSDN5dDBROFlsQzY1Vlc5dS9jV3FhV2g0K0VFSXBwRmwzNzBERzM5VjBKTUdxS282WGwzNzgvVGlDWExpWWdzM2cvdktyOHBiNHI2UkdQU2xIUUJkQmFoZ0N0bHFxamJLbW1FYWFLU0s1WWhPQVVoTlYyVUFERjJ0Q1doQU1qMDJmcUpvU0pJVE03Tm5yMHdmV0Z5NHNSVWZjcXZGTWVHeG5wN29vV3VRaEIzZEhiOVN4ZnVSaTlRUGpjUW5JUnZJYXQ4Q0k0RVU2ZXZsS1pVd0w4RzQ0ZzJiOTI0UGo0eE1YNzlCckxidlZzcmx4ZjhhdFZmdVB5ODNWazVQem1STHhiekU1UHJqVk1GL2puVm1QSVhmSDloK1pMdlh6cVNyOVhtYWpYbFBKemQrbk0vNHRiTmZVaWlJejhFaFBWOW1LM0lEdHJ5Z28veWdEZFhrOW9jVXhiUGMxb2FobHdZRGNuY0RlUXVLcjl3Y0dIRU5Mc3c3OER1Y3RWOXhJYUtGQWV2S3doalZhQys2U003cE9PbnV2Y000OGQydi8wWTQyZDYvaW5XUS9ZanJLTlRtOXd1WG1OcDkyZmVydEhhbW1Jb3E0eXQ4bVlObDlZVVFwNjdhWGFOdHkvMGZ3QndHdG9JQUFCNG5HTmdaR0JnQU9LYTJ5eEo4ZncyWHhtNG1WOEFSUmh1VkpXdmdkSnIvLy83bjhYOGpqa1l5T1ZnWUFLSkFnQnpLdzMzZUp4allHUmdZQTc2bndVa1gvei85LzhYOHpzR29BZ0s2QUVBdHhnSUh3QjRuR04rd2NEQVREYisvNDk4dlhod05vM1VRdHo4bnladUhpRVlBUGNHZzRZQUFBQUFBQUFBQUZ3QXVnRVlBZGdDV0FNQUEyWUQ3QVJ3QlRvRmxnWWFCdm9Ib2dmK0NGUUlkZ2phQ1NnSi9BcktDOG9NYkF6YURZSU9XQThBRUFBUVRCRDBFYjRTTGhMSUUwNFQyaFRVRldnV0hoWnFGc0lYRUJlTUdEZ1l4Qmt1R2VZYWxCdnNITzRkdkI0eUhxSWZOaCtNSUM0Z2dDRHVJVUlob2lJU0lyd2pPaVBvSkdBbEppWVdKcGdudGlnY0tKQXBCaWxzS2dJcVppcmtLOElzUEN5R0xPb3RkaTNzTGhRdVppN2dMelF2VmpCWU1RNHhYaklNTXlZenpEUStOTVExQWpVNE5lbzJvamNNT0hRNDJqbitPcTQ3VWp2eVBFWThmRHk2UFZROTJENXVQdkkvbEVCYVFOQkI3a0o4UXJKQzdrTjBROFpFVmtUeVJYaEdERVpLUm5KR3pFZEdTQ1pJbUVsQ1NnUkxoRXhpVE1CTkZFM0tUaGtBQUFBQkFBQUFqQURRQUEwQUFBQUFBQUlBVGdCZUFITUFBQURSQzNBQUFBQUFlSngxa00xS3cwQVVoYy9ZSDdVRkZRVzN6a29xMHZRSFhDZ1VDcFYybzVzaTNVb2E4MWZTVEptWkZ2b2F2b01QNDB2NExKNm1VNUdLQ1pQNTdybm4zcmtaQU9mNGdzRDJ1ZVBhc3NBUm95MGY0QkE5eHlYcWo0N0w1Q2ZIRmRUeDRyaEsvZFZ4RGJlSUhkZHhnWGQyRU9WalJqTjhPQlk0RTZlT0QzQWlyaHlYcURjZGw4azl4eFZjaW1mSFZlcUI0eG9td2ppdTQxcDhEdFJpcmRNNHNiSXh1SkhkZHVkZVR0ZFNVVXB6UDVQKzBpWktHOW1Ya2NwdG1HWEtDOVRjUk0wMFVMa1poL0V5OC9VdTNPMlRVSnRVNWJManRYZlNLTXhEN2R2d2JkUGRyT0t1dFpHTXRKckxvZXNyRjFyTndzQjZpYldMaDFicjkza1lRR0dCTlRSU1hsVUNDNGtHMVJ2dVhiVFJ3VDFwU29la2MrdEtrY05IUnNYSGtoVkprVEdNKzF3Um81eHFTRWRHOWhEd08yYytRcE8xUVpFM0dOTVJzejVqRi8wbnV4OVA2TjY0MGlLV25NdmpkUHV1RVYxNTRmU0xDZDUrWmpkWThiUXVWY3VhelpTNm1FcGl1RGV2NUgxc2NqTXFBWFd2dUJWTDlRRXR2di84M3plTHdvSk5BSGljYlZQbm54czFFTDBYYjdHdkJ3S0UzanNIZHhjSWhONTc3OTNJMHF4WDhhNmtrN1QyT2ZUZXd2L015SGZtbHcvc0IyMmJlZS9ObTVtVkV5dEgxK3JLLzE4WGNRSTlaTWhSb0VRZkE2eGlEZXZZd0NhMnNJMlR1QXlYNHhTdXdKVzRDcWR4TmE3QnRiZ08xK01HM0lpYmNETnV3YTI0RGJmakR0eUp1M0EzN3NHOXVBODd1QjhQWUJkNzJNY1pQSWlIY0JZUDR4R2N3Nk40REkvakNUeUpwL0EwbnNHemVBN1A0d1c4aUpmd01sN0JxM2dOcitNTnZJbTM4RGJld2J0NEQrL2pBM3lJai9BeFBzR24rQXlmNHd0OGlTRytnc0FJRWdxRUNtUFUwRGlQQ1JxME1MQndPSUJIUUVTSEtXWTR4QndYOERXK3diZjREdC9qQi95SW4vQXpmc0d2K0EyLzR3LzhpYi93Tnk3aW41WDhqTEl4OUlSU3VXeHNvSUh6V3RMSTJrbFdVK1A2eHNhak4yOW5vZWhjWThVaVVrNktzYmVkQzJ2V2tSbFd0bEhrdDcwZTEzRW9HajAydzBpSHNYVGVxazdHallPT1F0U1dBNGxVT1JQZWFEUE91a0ErWCtTc000K3V0QlFwS0t0dFMzMXBUZlJDeHBLMXBjQk1PQmN5YWQwODE2MFlVNWFJKzRGaVpLaFFYTEMyMWFid0pLMVhBK0ZacjdJejA1TmQzTktHOHlNcmFsMGpJbTJrVEZMSG9nZEJLeG8yT3NReVlkZ3VGZ2NkVngzV1BhVm90ZmlYalpXVlpURGFPWXFaWS80MTJZVm8yMkdTVlM3NE9sZUlHSVdzU3lYbVUwMnpUSnZLYmkvWnhYaFlhV3BVN2tTSWxBWHJZOCtwaWlVN2ZzeWlDSk0rZzNrN0ZjMWFzRktMSnRUQ1UrSEl1b1lLSGRsWVdTaHFpTk5IUWs1NkkyRnlhb1Z1c2hIWHdtNVRvczBYYVFNbFFqMnl3cXNpMXNKTVFoNHQ2MXBkK3JxelZ3YW5qZUVXdU5wR205T1VUQ3hIblU2dXJKL242blExWDdUeHBPUS81QzlwYkVaS3g2SVJjN2FyenlOanZZN3o3UkNGVVV3NHRLUHpKR01vRXhkVDlZK3NPbmVtWEloTnpKMlVGRUxwcWZJVTZxMkdxa3ZuSmt1dHl5V1hFVE0rWTA3c3I4OVMxSnFuMWs1VHc4eUVZZHBXK0htZmU5TzFyTEZRWGxReGJCeC9WeFNaamttNDdaS3lSaytvbjVDUGhyZ21PVm5qYytxdFNjZ0ZIVHJXbnlYa1BPWE04eWhHRFdXTG1WMjRzN08zR1hWRFE1bUtUR054aXJlbFRvcEhYWlBhb2hhemtvNStKYWJKRlZvL3Bsak0rWkl2cVNncTNiQ3JXU3BuYzRtampXS2VRY2MzejBLb244aFRyek9PcG95LzIvODRUZGVPeUM4NWVTVlhqeERUKytDWXFITzhyU1I4V1ZuUGE2ZFdEYzJHTTUwRWJDMXh1SWVKdE9oTUF1R0ZUdlBZR2U1bzVteUlKM2l1QTBQSXVzZkpSZVh0QlY0OGFkdmtlRWdibHhUelNtbzVZLzlPS3gyazdmZ1hTMUJkUTVxbklPenM3aStuWVBmNFlmOXNQM295aXRlM2lNS1BlYTlrTjZLVmxYOEI4amphaWdBQWVKeGo4TjdCY0NJb1lpTWpZMS9rQnNhZEhBd2NETWtGR3hsWW5UWXhNREpvZ1JpYnVaZ1lPU0FzUGdZd2k4MXBGOU1Cb0RRbmtNM3V0SXZCQWNKbVpuRFpxTUxZRVJpeHdhRWpZaU56aXN0R05SQnZGMGNEQXlPTFEwZHlTQVJJU1NRUWJPWmhZdVRSMnNINHYzVURTKzlHSmdZWEFBeDJJL1FBQUE9PScpIGZvcm1hdCgnd29mZicpLFxuXHR1cmwoJ2RhdGE6YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFtO2Jhc2U2NCxBQUVBQUFBUEFJQUFBd0J3UjFOVlFpQ0xKWG9BQUFEOEFBQUFWRTlUTHpJK0lFb0NBQUFCVUFBQUFGWmpiV0Z3SHNUc3FRQUFBYWdBQUFrU1kzWjBJQWJYL3dRQUFMTmdBQUFBSUdad1oyMktrWkJaQUFDemdBQUFDM0JuWVhOd0FBQUFFQUFBczFnQUFBQUlaMng1WnVyemhib0FBQXE4QUFDY01taGxZV1FVQURMN0FBQ204QUFBQURab2FHVmhCMEVEMlFBQXB5Z0FBQUFrYUcxMGVDSG4vLzBBQUtkTUFBQUNNR3h2WTJIR2dhSklBQUNwZkFBQUFScHRZWGh3QWl3TW9BQUFxcGdBQUFBZ2JtRnRaYjlhcGVFQUFLcTRBQUFDelhCdmMzVDdrY3VQQUFDdGlBQUFCYzl3Y21WdzVVRXJ2QUFBdnZBQUFBQ0dBQUVBQUFBS0FEQUFQZ0FDUkVaTVZBQU9iR0YwYmdBYUFBUUFBQUFBQUFBQUFRQUFBQVFBQUFBQUFBQUFBUUFBQUFGc2FXZGhBQWdBQUFBQkFBQUFBUUFFQUFRQUFBQUJBQWdBQVFBR0FBQUFBUUFBQUFFRDVnR1FBQVVBQUFKNkFyd0FBQUNNQW5vQ3ZBQUFBZUFBTVFFQ0FBQUNBQVVEQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFGQm1SV1FBUU9nQTZJd0RVdjlxQUZvRFV3Q1dBQUFBQVFBQUFBQUFBQUFBQUFVQUFBQURBQUFBTEFBQUFBUUFBQUp5QUFFQUFBQUFBV3dBQXdBQkFBQUFMQUFEQUFvQUFBSnlBQVFCUUFBQUFBWUFCQUFCQUFMb2llaU0vLzhBQU9nQTZJdi8vd0FBQUFBQUFRQUdBUmdBQUFBQkFBSUFBd0FFQUFVQUJnQUhBQWdBQ1FBS0FBc0FEQUFOQUE0QUR3QVFBQkVBRWdBVEFCUUFGUUFXQUJjQUdBQVpBQm9BR3dBY0FCMEFIZ0FmQUNBQUlRQWlBQ01BSkFBbEFDWUFKd0FvQUNrQUtnQXJBQ3dBTFFBdUFDOEFNQUF4QURJQU13QTBBRFVBTmdBM0FEZ0FPUUE2QURzQVBBQTlBRDRBUHdCQUFFRUFRZ0JEQUVRQVJRQkdBRWNBU0FCSkFFb0FTd0JNQUUwQVRnQlBBRkFBVVFCU0FGTUFWQUJWQUZZQVZ3QllBRmtBV2dCYkFGd0FYUUJlQUY4QVlBQmhBR0lBWXdCa0FHVUFaZ0JuQUdnQWFRQnFBR3NBYkFCdEFHNEFid0J3QUhFQWNnQnpBSFFBZFFCMkFIY0FlQUI1QUhvQWV3QjhBSDBBZmdCL0FJQUFnUUNDQUlNQWhBQ0ZBSVlBaHdDSUFJa0FpZ0NMQUNZQUFBRUdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBd0FBQUFBQnFBQUFBQUFBQUFBakFBQTZBQUFBT2dBQUFBQUFRQUE2QUVBQU9nQkFBQUFBZ0FBNkFJQUFPZ0NBQUFBQXdBQTZBTUFBT2dEQUFBQUJBQUE2QVFBQU9nRUFBQUFCUUFBNkFVQUFPZ0ZBQUFBQmdBQTZBWUFBT2dHQUFBQUJ3QUE2QWNBQU9nSEFBQUFDQUFBNkFnQUFPZ0lBQUFBQ1FBQTZBa0FBT2dKQUFBQUNnQUE2QW9BQU9nS0FBQUFDd0FBNkFzQUFPZ0xBQUFBREFBQTZBd0FBT2dNQUFBQURRQUE2QTBBQU9nTkFBQUFEZ0FBNkE0QUFPZ09BQUFBRHdBQTZBOEFBT2dQQUFBQUVBQUE2QkFBQU9nUUFBQUFFUUFBNkJFQUFPZ1JBQUFBRWdBQTZCSUFBT2dTQUFBQUV3QUE2Qk1BQU9nVEFBQUFGQUFBNkJRQUFPZ1VBQUFBRlFBQTZCVUFBT2dWQUFBQUZnQUE2QllBQU9nV0FBQUFGd0FBNkJjQUFPZ1hBQUFBR0FBQTZCZ0FBT2dZQUFBQUdRQUE2QmtBQU9nWkFBQUFHZ0FBNkJvQUFPZ2FBQUFBR3dBQTZCc0FBT2diQUFBQUhBQUE2QndBQU9nY0FBQUFIUUFBNkIwQUFPZ2RBQUFBSGdBQTZCNEFBT2dlQUFBQUh3QUE2QjhBQU9nZkFBQUFJQUFBNkNBQUFPZ2dBQUFBSVFBQTZDRUFBT2doQUFBQUlnQUE2Q0lBQU9naUFBQUFJd0FBNkNNQUFPZ2pBQUFBSkFBQTZDUUFBT2drQUFBQUpRQUE2Q1VBQU9nbEFBQUFKZ0FBNkNZQUFPZ21BQUFBSndBQTZDY0FBT2duQUFBQUtBQUE2Q2dBQU9nb0FBQUFLUUFBNkNrQUFPZ3BBQUFBS2dBQTZDb0FBT2dxQUFBQUt3QUE2Q3NBQU9nckFBQUFMQUFBNkN3QUFPZ3NBQUFBTFFBQTZDMEFBT2d0QUFBQUxnQUE2QzRBQU9ndUFBQUFMd0FBNkM4QUFPZ3ZBQUFBTUFBQTZEQUFBT2d3QUFBQU1RQUE2REVBQU9neEFBQUFNZ0FBNkRJQUFPZ3lBQUFBTXdBQTZETUFBT2d6QUFBQU5BQUE2RFFBQU9nMEFBQUFOUUFBNkRVQUFPZzFBQUFBTmdBQTZEWUFBT2cyQUFBQU53QUE2RGNBQU9nM0FBQUFPQUFBNkRnQUFPZzRBQUFBT1FBQTZEa0FBT2c1QUFBQU9nQUE2RG9BQU9nNkFBQUFPd0FBNkRzQUFPZzdBQUFBUEFBQTZEd0FBT2c4QUFBQVBRQUE2RDBBQU9nOUFBQUFQZ0FBNkQ0QUFPZytBQUFBUHdBQTZEOEFBT2cvQUFBQVFBQUE2RUFBQU9oQUFBQUFRUUFBNkVFQUFPaEJBQUFBUWdBQTZFSUFBT2hDQUFBQVF3QUE2RU1BQU9oREFBQUFSQUFBNkVRQUFPaEVBQUFBUlFBQTZFVUFBT2hGQUFBQVJnQUE2RVlBQU9oR0FBQUFSd0FBNkVjQUFPaEhBQUFBU0FBQTZFZ0FBT2hJQUFBQVNRQUE2RWtBQU9oSkFBQUFTZ0FBNkVvQUFPaEtBQUFBU3dBQTZFc0FBT2hMQUFBQVRBQUE2RXdBQU9oTUFBQUFUUUFBNkUwQUFPaE5BQUFBVGdBQTZFNEFBT2hPQUFBQVR3QUE2RThBQU9oUEFBQUFVQUFBNkZBQUFPaFFBQUFBVVFBQTZGRUFBT2hSQUFBQVVnQUE2RklBQU9oU0FBQUFVd0FBNkZNQUFPaFRBQUFBVkFBQTZGUUFBT2hVQUFBQVZRQUE2RlVBQU9oVkFBQUFWZ0FBNkZZQUFPaFdBQUFBVndBQTZGY0FBT2hYQUFBQVdBQUE2RmdBQU9oWUFBQUFXUUFBNkZrQUFPaFpBQUFBV2dBQTZGb0FBT2hhQUFBQVd3QUE2RnNBQU9oYkFBQUFYQUFBNkZ3QUFPaGNBQUFBWFFBQTZGMEFBT2hkQUFBQVhnQUE2RjRBQU9oZUFBQUFYd0FBNkY4QUFPaGZBQUFBWUFBQTZHQUFBT2hnQUFBQVlRQUE2R0VBQU9oaEFBQUFZZ0FBNkdJQUFPaGlBQUFBWXdBQTZHTUFBT2hqQUFBQVpBQUE2R1FBQU9oa0FBQUFaUUFBNkdVQUFPaGxBQUFBWmdBQTZHWUFBT2htQUFBQVp3QUE2R2NBQU9obkFBQUFhQUFBNkdnQUFPaG9BQUFBYVFBQTZHa0FBT2hwQUFBQWFnQUE2R29BQU9ocUFBQUFhd0FBNkdzQUFPaHJBQUFBYkFBQTZHd0FBT2hzQUFBQWJRQUE2RzBBQU9odEFBQUFiZ0FBNkc0QUFPaHVBQUFBYndBQTZHOEFBT2h2QUFBQWNBQUE2SEFBQU9od0FBQUFjUUFBNkhFQUFPaHhBQUFBY2dBQTZISUFBT2h5QUFBQWN3QUE2SE1BQU9oekFBQUFkQUFBNkhRQUFPaDBBQUFBZFFBQTZIVUFBT2gxQUFBQWRnQUE2SFlBQU9oMkFBQUFkd0FBNkhjQUFPaDNBQUFBZUFBQTZIZ0FBT2g0QUFBQWVRQUE2SGtBQU9oNUFBQUFlZ0FBNkhvQUFPaDZBQUFBZXdBQTZIc0FBT2g3QUFBQWZBQUE2SHdBQU9oOEFBQUFmUUFBNkgwQUFPaDlBQUFBZmdBQTZINEFBT2grQUFBQWZ3QUE2SDhBQU9oL0FBQUFnQUFBNklBQUFPaUFBQUFBZ1FBQTZJRUFBT2lCQUFBQWdnQUE2SUlBQU9pQ0FBQUFnd0FBNklNQUFPaURBQUFBaEFBQTZJUUFBT2lFQUFBQWhRQUE2SVVBQU9pRkFBQUFoZ0FBNklZQUFPaUdBQUFBaHdBQTZJY0FBT2lIQUFBQWlBQUE2SWdBQU9pSUFBQUFpUUFBNklrQUFPaUpBQUFBaWdBQTZJc0FBT2lMQUFBQWl3QUE2SXdBQU9pTUFBQUFKZ0FBQUFNQUFBQUFBOElCMGdBTUFCa0FKZ0E2UURjSUJBY0NCZ1VBQVFFQVZBZ0VCd0lHQlFBQUFWZ0ZBd0lCQUFGTUd4b09EUUVBSVNBYUpoc21GQk1OR1E0WkJ3WUFEQUVNQ1FVVUt4TXlIZ0VVRGdFaUxnRTBQZ0VoTWg0QkZBNEJJaTRCTkQ0QklUSWVBUlFPQVNJdUFUUStBWm9mTlI4Zk5UNDFIeDgxQVhrZk5SOGZOVDQxSHg4MUFYa2dOUjhmTlQ4MUh4ODFBZEVmTlQ0MUh4ODFQalVmSHpVK05SOGZOVDQxSHg4MVBqVWZIelUrTlI4QUFBQUJBQUQvdHdPYkF3VUFMd0EwUURFQUFnRUNid0FGQUFWd0F3RUJBQUFCVkFNQkFRRUFXQVFHQWdBQkFFd0NBQ29uSWg4YUZ4SVBDZ2NBTHdJdkJ3VVVLd0VoTWpZOUFUUW1JeUVpSmpVUk5DWXJBU0lHRlJFVUJpTWhJZ1lkQVJRV015RXlGaFVSRkJZN0FUSTJOUkUwTmdKQkFUME1FUkVNL3NNSkNoSUxPZ3NTQ2duK3d3d1JFUXdCUFFrS0VnczZDeElLQVNRU0N6b0xFZ29KQVQwTUVSRU0vc01KQ2hJTE9nc1NDZ24rd3d3UkVRd0JQUWtLQUFBQUFBRUFBUC81QTFjQ3dRQXZBQ2hBSlFJQkFBRUFid1VCQXdRRGNBQUJCQVFCVkFBQkFRUllBQVFCQkV3VEV4OFRFeFlHQlJvckFUYzJOQzhCSmlJUEFRWWlMd0VtSWc4QkJoUWZBUllVRHdFR0ZCOEJGakkvQVRZeUh3RVdNajhCTmpRdkFTWTBBbFQ2Q1FrbUNSY0ovQVVRQmZ3SkZ3a29DUW44QlFYK0NRa29DUmNKL0FVUUJ2c0pGd2tvQ1FuNkJRRnEvQWdYQ1NnSkNmd0ZCZjRKQ1NnSkZ3bjdCaEFGL2drWENTZ0pDZndHQnZ3SkNTZ0pGd244QlJBQUJRQUFBQUFEREFLS0FDY0FOd0JIQUZjQVp3QjBRSEZnVUVBd0JBTUpXRWc0S0FRSUJBSkhBQUVBQWdrQkFtQVFBUUFQRFFzRENRTUFDV0FBQXdBRUNBTUVZQTRNQ2dNSUJRY0lWQUFGQUFZSEJRWmdEZ3dLQXdnSUIxZ0FCd2dIVEFJQVpHSmNXbFJTVEVwRVFqdzZORElzS2lJZkhCb1hGUlFTRHcwTUNnY0ZBQ2NDSnhFRkZDc0JJU0lHSFFFaklnWVVGanNCRlNNaUJoUVdPd0VWSXlJR0ZCWTdBUlVVRmpNaE1qWTFFVFFtQVJRR0t3RWlKajBCTkRZN0FUSVdGUmNVQmlzQklpWTlBVFEyT3dFeUZoVVhGQVlyQVNJbVBRRTBOanNCTWhZVkZ4UUdLd0VpSmowQk5EWTdBVElXRlFMTi9vZ1pKQlFRR0JnUUZCUVFHQmdRRkJRUUdCZ1FGQ1VZQVhnWkppWCt4d1VGS0FRR0JnUW9CUVZRQlFVVUJBWUdCQlFGQldRRkJTZ0VCZ1lFS0FVRlVBVUZGQVFHQmdRVUJRVUNpaU1YRmhjaEdHUVhJUmhrRnlFWUVoY25LUmtCNEJnZS9tWUVCZ1lFM0FVRkJRWGNCQVlHQk53RkJRVUYzQVFHQmdUY0JRVUZCZHdFQmdZRTNBVUZCUVVBQWdBQS81QURLd012QURFQVFRQStRRHNBQWdFQUFRSUFiUVlCQUFVQkFBVnJBQU1BQVFJREFXQUFCUVFFQlZRQUJRVUVXQUFFQlFSTUFnQS9QRGMwSXlFYUZ4RVBBREVDTVFjRkZDc2xJeUltUFFFME5qYzJOelkzTmk0Qkp5WUdCd1lIRGdFckFTSW1OejRCTno0QkZ4NEJGeFlYRmc0QkJ3NEJIUUVVQmhjVUJpc0JJaVk5QVRRMk93RXlGaFVDSW1BTEVFYzZKQm9pQmdVblJ5c2ZPeGdtQmdJUERHQU5FUUVHTUNjdWMwQk9oaWdwQXdNeFhqNE5FQk1URVF4Z0N4SVNDMkFNRVhjUUN4MDlaQlFOR3lvdkswMHdBUUVXRlNNeUNRd1NEVFpoSnlzdEFRTlJRa1JQUW5sY0Z3VVZEQjBNRWNvTEVoSUxZUXNSRVFzQUFBUUFBUCtRQTVzRExBQW5BRGNBUndCWEFHTkFZQTRCQUFBTkFnQU5ZQUFCQUFJTUFRSmdBQXdBQ3dRTUMyQUFBd0FFQ2dNRVlBQUtBQWtGQ2dsZ0NBRUZBQVlIQlFaZ0NBRUZCUWRZQUFjRkIwd0NBRlZTVEVwRVFqMDZOVElzS2lJZkhCb1hGUlFTRHcwTUNnY0ZBQ2NDSnc4RkZDc0JJU0lHSFFFaklnWVVGanNCRlNNaUJoUVdPd0VWSXlJR0ZCWTdBUlVVRmpNaE1qWTFFVFFtQXhRR0l5RWlKajBCTkRZeklUSVdGVGNVQmlNaElpWTlBVFEyTXlFeUZoVTNGQVlqSVNJbVBRRTBOak1oTWhZVkEwNzl2eDh1T1JraElSazVPUmtoSVJrNU9Sa2hJUms1TGg4Q1FTQXRMYVlMQ2Y3ekNBc0xDQUVOQ1FzbUN3aitwZ2tMQ3drQldnZ0xKd3NKL2xrSUN3c0lBYWNKQ3dNc0xTQTZJVElnbWlFeUlaa2hNaUU2SHk0dElBTUNJQzM5Y2drS0Nna21DUW9LQ1hRSkN3c0pKZ2tLQ2dtYUNRb0tDWE1KQ3dzSkFBQUFBQU1BQUFBQUE1c0N1QUFQQUI4QUx3QkJRRDRBQVFZQkFBTUJBR0FBQXdjQkFnVURBbUFBQlFRRUJWUUFCUVVFV0FnQkJBVUVUQ0lnRWhBQ0FDb25JQzhpTHhvWEVCOFNId29IQUE4Q0R3a0ZGQ3NCSVNJbVBRRTBOak1oTWhZZEFSUUdBeUVpSmowQk5EWXpJVElXSFFFVUJnTWhJaVk5QVRRMk15RXlGaDBCRkFZRGZ2enNEQkVSREFNVURCRVJEUHpzREJFUkRBTVVEQkVSRFB6c0RCRVJEQU1VREJFUkFrVVJERGtNRVJFTU9Rd1IvdUVTQ3pvS0VSSUxPZ29SL3Q0UkREa01FUkVNT1F3UkFBSUFBUCtRQThJRExRQWZBRVFBU0VCRkFBUUdCRzhBQmdVR2J3Z0JCUUFGYndJSkFnQUhBRzhBQndFSGJ3QUJBd01CVkFBQkFRTllBQU1CQTB3Q0FEOCtOak11TFNvcElpRWFGeElQQ2djQUh3SWZDZ1VVS3lVaklnWWRBUlFHSXlFaUpqMEJOQ1lyQVNJR0ZSRVVGak1oTWpZMUVUUW1BU1lpQndFR0ZCOEJGakkvQVRZeUZoVVJGQlk3QVRJMk5SRTBOaDhCRmpJL0FUWTBKd09sT2dzU0VRejloZ3dSRWdzNkN4RXRId01DSUMwUy9sY0lHQWorL0FnSUtRZ1lDR3dGRVF3UUN6b0xGQllLYkFrWENTZ0lDUDRTQzhBTUVSRU13QXNTRWd2Ky9DQXRMaDhCQkFzU0FpWUlDUDc4Q0JnSUtBa0phd1lMQ1A1b0N4SVRDZ0dXRFFrSmF3a0pLQWtYQ0FBREFBRC9rQVBDQXl3QUZBQXBBRDhBUkVCQkFBUURCUU1FQlcwQUJRSURCUUpyQmdFQUFBTUVBQU5nQndFQ0FRRUNWQWNCQWdJQldBQUJBZ0ZNRmhVQkFEbzVNaThnSHhVcEZpa0xDZ0FVQVJRSUJSUXJBU0lIQmdjR0ZCY1dGeFl5TnpZM05qUW5KaWNtQXlJbkppY21ORGMyTnpZeUZ4WVhGaFFIQmdjR0F5WTlBVFFtS3dFaUJoMEJGQjhCRmpJL0FUWTBKd0gwZld0cFBUOC9QV2xyK214b1BqOC9QbWhzZlYxUlRpOHZMeTlPVWJwUlRpOHZMeTlPVVJ3SEVnczZDeElJamdrWENTZ0pDUU1zUHo1b2JQcHNhRDQvUHo1b2JQcHNhRDQvL05ndkwwNVJ1bEZPTHk4dkwwNVJ1bEZPTHk4QlZnZ051UXNTRWd2cENReU9DUWtvQ1JjSkFBQURBQUQvOGdQb0Fzc0FLQUJQQUhzQUxVQXFPZ1lDQkFBQlJ3SUJBQVFBYndBRUFRUnZBd0VCQlFGdkFBVUZablJ4WGwxS1J6YzFIeDBwQmdVVkt3RW1OVFEzTmpjbUp5WWpJZ2NPQVJVVUZ4WVZGQWNHQndZSEJnY2VBVHNCTWpZM05qYzJOejRCSlNZbkpqVTBOelkxTkNZbkppTWlCd1lIRmhjV0ZSUUhCaFlYRmhjZUFUc0JNalkxTmljbUJTWW5KalUwTno0Qk5UUW1KeVlpQnc0QkZSUVdGeFlWRkFjR0J3WUhCZ2NVRmpNaE1qWTFKaWNtSnlZQk1pa2FHU3dRR3gwa0tSOGRJQ3NjQ1EwaFBTQXBBUUlsSGtBSERnUVZLUnd1RFFZQ0tpRU1DaHdySHgwZktpUWRIQkVzR1JvcEJ3Y01aQ1FFRGdkQUhpVUJKeUQrMVNRT0RDRVhHU0lnSTFvaklDSVpGeUVMRGlWSUlDOEJMaUVCa0NFdUFSWVRKUmtCT0QxTlFUYzBJaHNQRVJVVFJDaENKUjRZRVF3UkRoc2RKU3NoS2dnSEpoOFdHQVlhTVE4UERCSWNHaWRBS0VRVEZSRVBHeUkwTjBGTlBRd1pCakJEQndncUlTc2xIWEVRRVE0U0hSOFdPeUlzU2hVWEZ4VktMQ0k3RmlNWkZBd1JFQjhaSkM4ak1qSWpJQm9YRmc0QUFBSUFBUCszQThJREJRQVhBQ2NBUEVBNUFBRURBVzhGQVFBRUFnUUFBbTBBQWdKdUJnRURCQVFEVkFZQkF3TUVXQUFFQXdSTUdSZ0NBQ0VlR0NjWkp4SVBDZ2NBRndJWEJ3VVVLd0VoSWlZdkFTNEJLd0VpQmhVUkZCWXpJVEkyTlJFMEppY2hJZ1lmQVJZeklUSVhGalkxTkNZRGRmNUxGQ1FMUXdza0ZZTWdMQ3dnQXdJZ0xTMGcvakFGQlFNZUJnd0JweUlaQmd3dEFrVVZFWFFTRkMwZy9Vd2dMUzBnQWZRZ0xab0pCVFFMREFNSUJ5QXRBQUFFQUFEL3lnT2JBdklBRHdBZkFDOEFQd0JUUUZBSUFRQUFBUUlBQVdBSkFRSUFBd1lDQTJBTEFRWUFCd1FHQjJBS0FRUUZCUVJVQ2dFRUJBVllBQVVFQlV3eU1DSWdFaEFDQURvM01EOHlQeW9uSUM4aUx4b1hFQjhTSHdvSEFBOENEd3dGRkNzQklTSUdIUUVVRmpNaE1qWTlBVFFtQnlFaUJoMEJGQll6SVRJMlBRRTBKZ01oSWdZZEFSUVdNeUV5TmowQk5DWW5JU0lHSFFFVUZqTWhNalk5QVRRbUEzNzg3QXdSRVF3REZBd1JFUXo5aGd3UkVRd0NlZ3dSRVF6OWhnd1JFUXdDZWd3UkVRejg3QXdSRVF3REZBd1JFUUx5RWdzNkN4RVJDem9MRXVjUkREa01FUkVNT1F3Ui9qTVNDem9MRWhJTE9nc1M1aEVMT2d3UkVRdzZDeEVBQUFBSEFBQUFBQU1nQW9vQUR3QWZBQzhBUHdCUEFGOEFid0NPUUl0dFpRSU5ERXhFUERRc0pCMFZEUVVLQUFGZFZRSUxDZ05IQ0FZRUR3SUZBUTBBRFFFQWJSSUpFUWNRQlFNT0NBQUtEUUFLYXhRQkRBQU5BUXdOWUJNQkNnc0xDbFFUQVFvS0MxZ0FDd29MVEdGZ1VWQkFRREF3SUNBUkVBRUFhV2RnYjJGdldWZFFYMUZmUUU5QVRraEdNRDh3UGpnMklDOGdMaWdtR1JjUUh4RWZDUWNBRHdFUEZRVVVLemN6TWpZMUVUUW1Ld0VpQmhVUkZCWUJJeUlHRlJFVUZqc0JNalkxRVRRbUFUSTJOUkUwSmlzQklnWVZFUlFXT3dFeU5qVVJOQ1lyQVNJR0ZSRVVGak1qTWpZMUVUUW1Ld0VpQmhVUkZCWXpCU0VpQmgwQkZCWXpJVEkyUFFFMEpnTWhJZ1lkQVJRV015RXlOajBCTkNiY01nZ01EQWd5Q0F3TUFqZ3lDQXdNQ0RJSURBeisvZ2dNREFnOENBd01DTFFJREF3SUZBZ01EQWp3Q0F3TUNCUUlEQXdJQVpyOTBBZ01EQWdDTUFnTURBajkwQWdNREFnQ01BZ01ETDRNQ0FFMkNBd01DUDdLQ0F3Qlhnd0kvc29JREF3SUFUWUlEUDZpREFnQk5nZ01EQWoreWdnTURBZ0JOZ2dNREFqK3lnZ01EQWdCTmdnTURBait5Z2dNUEF3SUZBZ01EQWdVQ0F3Q0NBd0lGQWdNREFnVUNBd0FBQUFBQXdBQUFBQURJUUozQUJ3QUxBQldBRlZBVWpFQkJBWWxIUUlDQXdKSEFBVUhCZ2NGQm0wQUJnUUhCZ1JyQ0FFQUFBY0ZBQWRnQUFRQUF3SUVBMkFBQWdFQkFsUUFBZ0lCV0FBQkFnRk1BUUJSVDBsR1FVQTFNeWtuSVI4VUVnQWNBUndKQlJRckFTSUhCZ2NHRlJRWEZnOEJCaFkvQVRZWEZqTXlOelkzTmpRbUp5WURGQVlyQVNJbVBRRTBOanNCTWhZVk53NEJIUUVVQmlzQklpWTlBVFErQVRjMkxnSUhCZ2NPQVNzQklpWTNOamMrQVJjZUFoY1dCZ0gwVWtaREtDa21CUU1jQkJJTVdBa0lTRlpTUmtNb0tWSkRSalFNQ0JRSURBd0lGQWdNQ0FNRkRBZ1VDQXdiS2djUUJTSXVGQTBEQWdvSEZRa01BUWdhRVMwWkh6VWdBUUl0QW5ZbUpVQkJURWhCQ0FoWkRCRUVId01GS2lZbFFFR1lnU1VtL2o0SURBd0lGQWdNREFockFRVUVFQWdORFFnUUZpVVBDeFV1SHdFU0RROEhDUThKSmhrUkVnRUJJRFVmSjBBQUEvLysvN2NENndNSkFBNEFGd0FuQURoQU5TQUJBd1FCUndBRUF3UnZBQU1BQWdFREFtQUZBUUVBQUFGVUJRRUJBUUJZQUFBQkFFd1FEeVFpSFJvVUV3OFhFQmM1QmdVVkt5VUJMZ0VHQndFR0hnRXpJVEkrQVNVaUpqUTJNaFlVQmpjVUJpc0JJaVk5QVRRMk93RXlGaFVEM2Y1SEN5VWxDLzVJRFFZZ0Z3TndHQ0VHL2drWklTRXlJU0VoQ3doTkNRc0xDVTBJQ3lFQ3h4TU9EaFA5T1JZeUlpSXlSaUV5SUNFd0lxMEpDZ29KK2dnTEN3Z0FBQUlBQVArUUE4SURMUUFkQUNvQUpFQWhCQUVDQXdKdkFBTUJBMjhBQVFBQmJ3QUFBR1lmSGlVa0hpb2ZLaXN6QlFVV0t5VVZGQVlqSVNJbVBRRTBOelkvQVRZWEZqTXlOamMySHdFV0Z4WVhGZ0V5SGdFVURnRWlMZ0UwUGdFRHdqY20vUjRsTjFBNWRBd1FEVXhaSzFVbURROE1UUzVBSUNmK01qNXFQVDFxZkdvOVBXb1hLaVU0TnlZcVMwQXRNd1lGQnpJYUdBY0ZCaUViSkNjdkF1QkVkWXAxUkVSMWluVkVBQUFCQUFELzdBTGJBc3dBREFBS3R3QUFBR1lUQVFVVkt5VVJORDRCRndFV0ZBY0JCaVlCRFE0VUNRR1hEQXorYVE0ZENnS29DZzRCQi82ekNCOEovcThLRGdBQUFBSUFBUCtRQThJRE1BQWpBQzhBTzBBNEFBRUFBVzhDQmdJQUFBTUVBQU5nQndFRUJRVUVWQWNCQkFRRldBQUZCQVZNSmlRQ0FDc3FKQzhtTHg0YkZoTU1DZ0FqQWlNSUJSUXJKU01pSmowQk5DY21KeVlIQmdjT0FSMEJGQVlyQVNJR0hRRVVGak1oTWpZOUFUUW1CU01pQmhjZUFUSTJOelltQTNVS0d5Z3NMRWxMVjFGRlFrMG5IQW9mTFJFTEEySUxFaTMrdmJ3SkRBSUhRRlJBQ0FFTTF5Z2MzVlpKUnlncEF3UXRLNDlUMVJ3bUxpQWRDeEFSREIwZkxkTVBDQ2cxTmljSkRnQUFBUUFBLzVBRHhBTXNBQ0lBTEVBcEFBVUFCVzhFQmdJQUFnQnZBQUlCQW04REFRRUJaZ0VBSFJ3VkZCQU9Dd29IQkFBaUFTSUhCUlFyQVNNUkZBWXJBU0ltTlJFakVSUUdLd0VpSmpVUkl5SW1KeVkzQVRZeUZ3RVdCd1lEcm1BS0NjQUpDK1lMQ2NBSUMyQUdDd0VFQ0FHN0JSSUVBYm9JQkFNQlMvNVpDUXNMQ1FGSC9ya0pDd3NKQWFjR0JRd0tBYm9HQnY1R0NBNExBQUFBQkFBQS81QUR3Z01zQUJVQUxBQkRBRm9BazBBUVVra09CUVFBQVRzeUpCc0VBd0lDUjB1d0NWQllRQmtHQVFFQUFXOEhDQUlBQWdCdkJRa0NBZ01DYndRQkF3Tm1HMHV3Q2xCWVFCMEFCZ0VHYndBQkFBRnZCd2dDQUFJQWJ3VUpBZ0lEQW04RUFRTURaaHRBR1FZQkFRQUJid2NJQWdBQ0FHOEZDUUlDQXdKdkJBRURBMlpaV1VBYkdCWUNBRmxXVEV0Q1B6VTBJaUVXTEJnc0RBc0FGUUlWQ2dVVUt3RWhNall2QVRjMk5DOEJKZ1lQQVNjbUJoVVJGQllISVNJR0h3RUhCaFFmQVJZeVB3RVhIZ0UyTlJFMEpoY1JGQlkvQVJjV01qOEJOaVl2QVRjK0FTWWpJU0lHSnhFMEpnOEJKeVlpRHdFR0ZCOEJCdzRCRmpNaE1qWUNPUUVvRHdZTFhxMElDRWNJRkFtdFlnc1pGSUQrMkE4R0MxNnRCd2RIQ0JRSnIySUdFUXdWWWhrTFlLOElGZ2RIQmdFSHJWNElBZ29KL3RjS0VrMGFDMkN2QnhZSVJ3Y0hyMTRJQkFvS0FTWUtGd0dGR1F0Z3J3Z1dCMGNHQVFldFhnd0hEdjdYQ2hKTkdndGdyd2NXQ0VjSEI2OWVDQVFLQ2dFbUNoY2YvdGdQQmd0ZXJRY0hSd2dVQ2ExaUJ4SU1GWUFCS0E4R0MxNnRDQWhIQnhVSnIySUdFQXdVQUFNQUFQK2tBOEFER2dBckFEZ0FYQUNTUUFvNUFRUUhQZ0VGQkFKSFM3QVJVRmhBTGdBQUFnQnZDUUVIQ0FRSUIyVUdBUVFGQlFSakNnRUNBQWdIQWdoZ0FBVUJBUVZVQUFVRkFWa0RBUUVGQVUwYlFEQUFBQUlBYndrQkJ3Z0VDQWNFYlFZQkJBVUlCQVZyQ2dFQ0FBZ0hBZ2hnQUFVQkFRVlVBQVVGQVZrREFRRUZBVTFaUUJvdExGcFlWVkpQVFVoR1EwQTlPek15TERndE9DY2tIUXNGRlNzbE5EWTNOamMyTnpZM1BnRXVBUTRCQndZWEZoY1dGeFlIQmdjR0R3RUdCd1lIQmg0Qk15RXlOaWN1QVFFaURnRVVIZ0V5UGdFMExnRVhGQVlyQVJVVUJpc0JJaVk5QVNNaUpqMEJORFk3QVRVME5qc0JNaFlkQVRNeUZoVUJwUmdVRFJFS0ZCc01KQTB0Wm9CaEZCZ05EVElaREE0S0NCa1BJQTFLSnprTEJ4azZKZ0ZIQ3dzSEpDY0JORDVyUGo1cmZHcytQbXMzREFrNERBa21DUWs3Q1FrSkNUc0pDU1lKRERnSkRJc21WQ01YRkEwVkhSRTFpM1ZDQTBnN1JFUkpMeGdhSUJ3V0Vnb1BCaUVlTFRza1JTc1dDQ3BvQVIwK2FueHFQejVyZkdvKytnZ0xPZ2dMQ2drNkNna25DUW82Q1FvTENEb0xDQUFKQUFEL3R3T2JBd1VBRHdBZkFDOEFQd0JQQUY4QWJ3Qi9BSThBaUVDRkdBd1ZCaElGQUEwSEFnRUVBQUZnR2hBWENoUUZCQkVMQWdVQ0JBVmdHUTRXQ0JNRkFnTURBbFFaRGhZSUV3VUNBZ05ZRHdrQ0F3SURUSUtBY25CaVlGSlFRa0F5TUNJZ0VoQUNBSXFIZ0krQ2ozcDNjSDl5ZjJwbllHOWliMXBYVUY5U1gwcEhRRTlDVHpvM01EOHlQeW9uSUM4aUx4b1hFQjhTSHdvSEFBOENEeHNGRkNzVEl5SUdIUUVVRmpzQk1qWTlBVFFtQXlNaUJoMEJGQlk3QVRJMlBRRTBKZ01qSWdZZEFSUVdPd0V5TmowQk5DWUJJeUlHSFFFVUZqc0JNalk5QVRRbUF5TWlCaDBCRkJZN0FUSTJQUUUwSmdNaklnWWRBUlFXT3dFeU5qMEJOQ1lCSXlJR0hRRVVGanNCTWpZOUFUUW1BeU1pQmgwQkZCWTdBVEkyUFFFMEpnTWpJZ1lkQVJRV093RXlOajBCTkNiNmN4a2hJUmx6R1NFaEdYTVpJU0VaY3hraElSbHpHU0VoR1hNWklTRUJHM1FZSVNFWWRCZ2hJUmgwR0NFaEdIUVlJU0VZZEJnaElSaDBHQ0VoQVJ0ekdTRWhHWE1aSVNFWmN4a2hJUmx6R1NFaEdYTVpJU0VaY3hraElRTUZJUmx6R1NFaEdYTVpJZjJaSVJsekdTRWhHWE1aSVFFeklSaDBHQ0VoR0hRWUlRRTBJUmx6R1NFaEdYTVpJZjJaSVJsekdTRWhHWE1aSVFFeklSaDBHQ0VoR0hRWUlRRTBJUmx6R1NFaEdYTVpJZjJaSVJsekdTRWhHWE1aSVFFeklSaDBHQ0VoR0hRWUlRQUFBQVVBQVArUUE1c0RMQUFSQUNFQU1RQkJBRkVBWUVCZE9qSUNBZ2dCUndBQ0NBY0lBZ2R0Q3dFQUFBRURBQUZnQUFNQUJnVURCbUFBQlFBS0NRVUtZQUFKQUFnQ0NRaGdBQWNFQkFkVUFBY0hCRmdBQkFjRVRBSUFUMHhIUkQ4OE56UXZMQ2NrSHh3WEZBd0tCd1VBRVFJUkRBVVVLd0VoSWdZZEFTRXlGaFVSTXpJMk5SRTBKZ00wSmlNaElnWVZFUlFXTXlFeU5qVUJGQVlyQVNJbVBRRTBOanNCTWhZVkV4UUdJeUVpSmowQk5EWXpJVElXRlRjVUJpTWhJaVk5QVRRMk15RXlGaFVEVHY0TUh5NEJ6aUF0SmlBdExaTXRJUDRNSUMwdUh3SDBJQzMrcGdzSm1Ra0xDd21aQ1F1YUN3bit6UWtMQ3drQk13a0xUQW9KL29BSkN3c0pBWUFKQ2dNc0xTQW5MU0Q5NWkwZ0FrRWdMZjd5SUMwdElQMi9IeTR1SHdHN0NRb0tDU1lKQ2dvSi9xWUlDd3NJSndnTEN3aHpDUW9LQ1NZSkN3c0pBQU1BQVAvZEE4SUMzd0FQQUNNQUxBQkxRRWdBQXdZRkJnTUZiUWdCQlFRR0JRUnJBQVFDQmdRQ2F3QUFBQVlEQUFaZ0J3RUNBUUVDVkFjQkFnSUJXQUFCQWdGTUpTUVNFQ2tvSkN3bExCOGVGeFlRSXhJak5USUpCUllyQVRRbUl5RWlCaFVSRkJZeklUSTJOU2NoSWlZM0V6WXlId0VlQVQ4Qk5qSWZBUllHQXlJbU5EWXlGaFFHQThJdElQeitIeTB0SHdNQ0lDM0kvZElSRVFtcEJoVUdaZ1VXQlZNR0ZRYVlDQTFDSUMwdFFDMHRBcElnTFMwZy9aZ2dMUzRmVFI0UEFTWUtDcThKQWdsM0NRbnlEaGtCV2kxQUxTMUFMUUFBQUFBREFBRC9rQVBDQXl3QUFnQXlBRmNBWGtCYkVBRUJBZ0ZIQUFZRENBTUdDRzBBQ0FjRENBZHJDZ0VIQWdNSEFtc0FDUUVKY0FzQkFBQURCZ0FEWUFRQkFnRUJBbFFFQVFJQ0FWZ0ZBUUVDQVV3RkExZFdUa3RHUlVKQk9qa3RLaVVpSFJvVkVnMEtBeklGTWd3RkZDczNOUlVCSVNJR0ZSRVVGanNCTWpZOUFUUW1Ld0VpSmpVUk5EWXpJVElXRlJFVUJpc0JJZ1lkQVJRV093RXlOalVSTkNZRE56WTBMd0VtSWc4QkJoUWZBUll5UHdFMk1oWVZFUlFXT3dFeU5qVVJORFlmQVJZeW1nTGIvUDRmTFMwZjV3a0tDZ21qREJFUkRBSjZEQkVSREtNSkNnb0o1eUF0TGNRcENBanpDQmdJOEFrSktBZ1lDRmtGRVF3UUN6b0xGQllLV1FnYXNRd1lBb2N0SVAxTElDMExDVTBJQ3hFTUFlQU1FUkVNL2lBTUVRc0lUUWtMTGg4Q3RTQXQvWTBvQ1JjSTh3Z0k4UWdYQ1NnSkNWZ0dDd2orcHdzU0Vnc0JXUTBKQ1ZvSEFBQURBQUQva2dPbEF5b0FEQUJhQUdjQWRFQnhLaDBDQ1FJT0FRRUFVVVFDQndnRFJ3UUJBZ01KQXdJSmJRb0JBQWtCQ1FBQmJRQUJDQWtCQ0dzQUJ3Z0ZDQWNGYlFBRkJnZ0ZCbXNBQXdBSkFBTUpZQXNCQ0FjR0NGUUxBUWdJQmxnQUJnZ0dURnhiQVFCaVlWdG5YR2RWVTB4SlFrQXZMU1VpR1JnSEJnQU1BUXdNQlJRckFTSU9BUlFlQVRJK0FUUXVBUUVuTmpRbk56NEJMd0V1QVNNaUR3SW1Md0V1QVNzQklnWVBBUVlITHdFbUl5SUdEd0VHRmg4QkJoUVhCdzRCSHdFZUFUTXlQd0VXSHdFZUFUc0JNalkvQVRZM0Z4WXpNalkvQVRZbUJTSXVBVFErQVRJZUFSUU9BUUgySlQ0a0pENUtQaVFrUGdGdlJ3VUZSeElKREI4SUhoRUhDd05aTWo4UUJDTVlQaGdqQkJBNk9WZ0VDd2NSSGdnZkRBZ1RSd1VGUnhJSkRCOElIaEVOQ1ZneVB4QUZJaGcrRnlRRUVFUXpVdzRKRVI0SUhRMEkvbG82WVRrNVlYUmhPVGxoQWVNa1BrbzlKQ1E5U2o0ay93QThHazRhUEE4dUZEWU9FQUlCSVMwVVd4WWFHaFpaRWk4Z0FRTVFEallVTHc0OEl6d2pQQTh1RkRZT0VBTWhMUlJkRngwZkYxMFhNQ0VFRVE0eUR5MUxPV0IwWVRrNVlYUmdPUUFBQUFNQUFQK1BBOElETEFBakFFUUFVUUJvUUdVbEFRa0VQUUVIQ1FKSEFBRUtBQW9CQUcwQUJBTUpBd1FKYlFBSUJ3aHdBQVlBQ2dFR0NtQUNDd0lBQlFFREJBQURZQXdCQ1FjSENWUU1BUWtKQjFnQUJ3a0hURVpGQVFCTVMwVlJSbEZBUHpvNEx5NGVIQmdXRXhFTENnY0VBQ01CSXcwRkZDc0JJelUwSmlzQklnWWRBU01pQmgwQkZCWTdBUlVVRmpzQk1qWTlBVE15TmowQk5DWUJKelkzTmpVMEp5WW5KaUlIQmdjR0ZCY1dGeFl6TWpjMk54Y1dNajhCUGdFbElpNEJORDRCTWg0QkZBNEJBbFJ6Q3doTkNRdHpDQXNMQ0hNTENVMElDM01KQ2dvQlhkMGtFeFExTTFkYTBGcFhNelExTTFkWmFENDhPREhkQ1JjSktBa0IvZVZKZTBsSmU1SjdTVWw3QWVWekNRb0tDWE1MQ1V3SkMzTUpDZ29KY3dzSlRBa0wvZ2piTWpnN1BtaGFWek0xTlROWFd0QmFWek0xRkJNazNRZ0lLQWtadkVsN2tudEpTWHVTZTBrQUFBZ0FBQUFBQXd3Q2lnQVBBQzhBUHdCUEFGOEFid0IvQUk4QWtFQ05IUTBDQUFLSWdGaFFCQW9MZUhCSVFBUUlDV2hnT0RBRUJnY0VSd1FUQWdJQkFBRUNBRzBBQVJJQkFBTUJBR0FBQXhFQkN3b0RDMkFRQVFvUEFRa0lDZ2xnRGdFSURRRUhCZ2dIWUF3QkJnVUZCbFFNQVFZR0JWZ0FCUVlGVEJFUUFRQ01pb1NDZkhwMGNteHFaR0pjV2xSU1RFcEVRanc2TkRJcUp5SWZHaGNRTHhFdkNnY0FEd0VQRkFVVUt3RXpNalk5QVRRbUt3RWlCaDBCRkJZbEl5SUdIUUVVQmlzQklpWTlBVFFtS3dFaUJoVVJGQll6SVRJMk5SRTBKZ0VVQmlzQklpWTlBVFEyT3dFeUZoVTFGQVlyQVNJbVBRRTBOanNCTWhZVk5SUUdLd0VpSmowQk5EWTdBVElXRlFVVUJpc0JJaVk5QVRRMk93RXlGaFUxRkFZckFTSW1QUUUwTmpzQk1oWVZOUlFHS3dFaUpqMEJORFk3QVRJV0ZRR0czQWdNSXhtTUdTTU1BVklVQkFZdklkd2hMd1VGRkJrakl4a0J1QmtqSS82ZERBZ1VDQXdNQ0JRSURBd0lGQWdNREFnVUNBd01DQlFJREF3SUZBZ01BUmdNQ01nSURBd0l5QWdNREFqSUNBd01DTWdJREF3SXlBZ01EQWpJQ0F3Q0Vnd0lLQmtqSXhrb0NBeEdCUVVvSVM4dklTZ0ZCU01aL2xJWkl5TVpBYTRaSS81U0NBd01DQlFJREF3SVVBZ01EQWdVQ0F3TUNGQUlEQXdJRkFnTURBamNDQXdNQ0JRSURBd0lVQWdNREFnVUNBd01DRkFJREF3SUZBZ01EQWdBQUFBQUFRQUEvNk1EUFFNWUFDVUFJVUFlQUFNQkEyOEZBUUVDQVc4RUFRSUFBbThBQUFCbUV4VTFFeGNWQmdVYUt6Y0dGQmNCRmpJM0FUWTBMd0VtSWc4QkJpSW1OUkUwSmlzQklnWVZFUlFHSWk4QkppSUh1UXdNQVNBTUh3c0JJZ3dNTlF3ZkMxc0hGQThYRDAwUUZ3OFVCMXNMSHd2K0N4NEwvdVVMQ3dFYkN4NExOQXNMV1FjT0N3SUhEeGNZRHYzNUN3NEhXUXNMQUFBRUFBRC9uQU9sQXkwQU1RQTZBRU1BVndBNVFEWWtIdzhEQWdBQlJ3QUZBQVZ2QUFBQ0FHOEVBUUlCQW04SEF3WURBUUZtUERzek1rWkZRRDg3UXp4RE56WXlPak02SWlFSUJSUXJKU1lIQVM0QkR3RU9BUmNURmhRUEFTWUhEZ0VIQmhZWEZqYytBVGMySmljM05qSWZBUTRCRng0QkZ4WTNQZ0VuTGdFRklpWTBOaklXRkFZaElpWTBOaklXRGdFREZqSS9BVFltSnpjSEppOEJKZ1lQQVFZVUZ3TVBMUzcrVndRUkJnOFpCeFBMQmdadEtqRTFUQWNITlRBek9UTk9Dd2NNRWxFSUhnaFJFZ3dIQ2s0ME9UTXdOUWNOVHYyMkdTRWhNaUVoQWRzWklTRXlJUUVpcVFZVEJwb1FBaEFDQWdJT0RRWVFCYWtHQnZZTEVRSTBCZ01GREJNK0d2N3lCeFFIa1JBS0MxQTFPR0FZR2dvSVNUTWpRUmxzQ3d0c0hFQWhNMGtJQ2hvWVlEZzNUOWNoTWlFaE1pRWhNaUVoTWlFQjBnY0h5aFUwRlFJQ0JBc0tCQUlHNFFjVUNBQUZBQUQva0FQQ0F5d0FJd0E2QUVvQVdnQnFBSHRBZUFBR0RRd05CZ3h0QUFFTUNRd0JDVzBBQ1FnTUNRaHJBQVFEQkhBQUJ3QUxDZ2NMWUFBS0FBOE9DZzlnQUE0QURRWU9EV0FBREFBSUFBd0lZQUlRQWdBREF3QlVBaEFDQUFBRFdBVUJBd0FEVEFFQWFHVmZYVmhWVDAxSFJUODlPamcxTXk0cktDWWVIQmtXRXhFTUNnY0VBQ01CSXhFRkZDc2xJelUwSmlzQklnWWRBU01pQmgwQkZCWTdBUlVVRmpzQk1qWTlBVE15TmowQk5DWWxORFk3QVJFMEppTWhJZ1lWRVJRV015RTFORFk3QVFFVUJpc0JJaVk5QVRRMk93RXlGaFVURkFZaklTSW1QUUUwTmpNaE1oWVZOeFFHSXlFaUpqMEJORFl6SVRJV0ZRT2xWeEVNT1F3UlZ3c1NFZ3RYRVF3NURCRlhDeElTL3Q0UkREQXRJUDNsSHkwdEh3R29FUXRYL3FZTENIUUlDd3NJZEFnTDV3c0ovcVlJQ3dzSUFWb0pDMHdLQ2Y1WkNBc0xDQUduQ1FwM1Z3c1NFZ3RYRVF3NURCRlhDeElTQzFjUkREa01FYVFMRWdHbklDMHRJUDNsSUMwd0RCRUJ1d2tMQ3drbUNRb0tDZjZtQ1FvS0NTWUpDd3NKZEFrTEN3a21DUW9LQ1FBQUFBSUFBUCszQThnREJRQVZBQ1lBWVV1d0NsQllRQ01BQVFBQUFXTUZBUU1DQkFJREJHMEFCQVJ1QUFBQ0FnQlVBQUFBQWxjQUFnQUNTeHRBSWdBQkFBRnZCUUVEQWdRQ0F3UnRBQVFFYmdBQUFnSUFWQUFBQUFKWEFBSUFBa3RaUUE0WUZpRWVGaVlZSmhNNU1nWUZGeXNCTkNZaklTSW5KaThESmljbUt3RWlCaDBCSVJjaElnNEJGeE1lQVRNaE1qWTNFelltQTA0dElQN21FQkVOREFvd0NBb01FUlJKSUMwQ3REajgzQk1lRFFSdUJpQVVBa29WSVFSdUJTVUNNaUF0Q2djTENqb0tDd2NLTFNDdFRSVWlFdjVzRXhjWEV3R1VIQzBBQUFBQUJRQUEvN2NEd2dNRkFBOEFId0F2QUQ4QVR3QmVRRnNMQWdvREFBQURCQUFEWUF3QkJBQUZCZ1FGWUEwQkJnQUhDQVlIWUE0QkNBRUJDRlFPQVFnSUFWZ0pBUUVJQVV4Q1FESXdJaUFTRUFJQVNrZEFUMEpQT2pjd1B6SS9LaWNnTHlJdkdoY1FIeElmQ2djQUR3SVBEd1VVS3dFaElnWVZFUlFXTXlFeU5qVVJOQ1loSXlJR0hRRVVGanNCTWpZOUFUUW1CeU1pQmgwQkZCWTdBVEkyUFFFMEpnY2pJZ1lkQVJRV093RXlOajBCTkNZSEl5SUdIUUVVRmpzQk1qWTlBVFFtQTZYOStRd1JFUXdDQndzU0V2MW4xQXNSRVF2VUN4SVNDOVFMRVJFTDFBc1NFZ3ZVQ3hFUkM5UUxFaElMMUFzUkVRdlVDeElTQXdVUkRQenNEQkVSREFNVURCRVJER0FMRWhJTFlBd1I1eEVMWVFzUkVRdGhDeEhtRWd0Z0RCRVJER0FMRXVjU0MyQU1FUkVNWUFzU0FBQUVBQUQvandQQ0F5d0FDUUFUQURRQVFRQklRRVVWQVFjQUxRRUZCd0pIQUFZRkJuQUFCQUFJQVFRSVlBSUJBUU1CQUFjQkFHQUpBUWNGQlFkVUNRRUhCd1ZZQUFVSEJVdzJOVHc3TlVFMlFSVXBHeVlSSlNBS0JSc3JBVE15TmowQk5DWXJBVEVqSWdZZEFSUVdPd0VCSnpZM05qVTBKeVluSmlJSEJnY0dGQmNXRnhZek1qYzJOeGNXTWo4QlBnRWxJaTRCTkQ0Qk1oNEJGQTRCQVczbkNRb0tDZWR6Q0FzTENITUNUZDBrRXhRMU0xZGEwRnBYTXpRMU0xZFphRDQ4T0RIZENSY0pLQWtCL2VWSmUwbEplNUo3U1VsN0FYRUxDVXdKQ3dzSlRBa0wvbnJkTWpnN1BtaGFWek0xTlROWFd0QmFWek0xRkJNazNRZ0lLQWtadkVsN2tudEpTWHVTZTBrQUJBQUFBQUFERFFKNEFCSUFJZ0F5QURzQVdrQlhEd0VEQVVZQUJRY0dCd1VHYlFrQkJnTUhCZ05yQUFNRUJ3TUVhd0FFQWdjRUFtc0lBUUFBQndVQUIyQUFBZ0VCQWxRQUFnSUJXQUFCQWdGTU5ETUNBRGczTXpzME95NHRKaVVlSFJZVkNna0FFZ0lTQ2dVVUt3RWpKZ2NCQmhRZkFSWXlOd0UrQVNjMU5DWURCd1lpTHdFbU5EOEJOaklmQVJZVU53Y0dJaThCSmpRL0FUWXlId0VXRkRjaUpqUTJNaFlVQmdMUTJ4TVIvdlFSRWRRUk1oSUJEd2dJQVNQeERnWVFCb2dHQmc0R0VBYUlCa29PQmhBR2lBWUdEZ1lRQm9nR01oVWRIU29kSFFKMkFSSCs4eEV5RXRRUkVRRVFDQllLMGhrai9rZ09CZ2FJQmhBR0RnWUdpQVlRU2c0R0JvZ0dFQVlPQmdhSUJoQ2tIU29kSFNvZEFBZ0FBQUFBQXlBQ2lnQVdBQ1lBTmdCR0FGWUFaZ0IyQUlZQWxFQ1JCUUVCQUQ4M0x5Y0VCUVpmVjA5SEJBa0tEUUVDRG5kbkFnMENCVWQvYndJQ0FVWUFBZzRORGdJTmJSRUJBQUFCQXdBQllCSUJBd2dCQmdVREJtQUhBUVVNQVFvSkJRcGdDd0VKRUFFT0Fna09ZQThCRFFRRURWUVBBUTBOQkZnQUJBMEVUQmdYQWdDRGdYdDVjM0ZyYVdOaFcxbFRVVXRKUTBFN09UTXhLeWtnSFJjbUdDVVJEd29IQUJZQ0ZoTUZGQ3NCSVNJR0hRRVVGak1oTWhZVkVSUVdNekkyTlJFMEpnVWlCaFVSRkJZeklUSTJOUkUwSmlNSEZBWXJBU0ltUFFFME5qc0JNaFlWRnhRR0t3RWlKajBCTkRZN0FUSVdGUWNVQmlzQklpWTlBVFEyT3dFeUZoVVhGQVlyQVNJbVBRRTBOanNCTWhZVkJ4UUdLd0VpSmowQk5EWTdBVElXRlJjVUJpc0JJaVk5QVRRMk93RXlGaFVDNVA3QUdTTUdCQUVpR1NNR0JCMHBJLzRiR1NNakdRRkFHU01qR2ZBTUNCUUlEQXdJRkFnTTNBd0lqQWdNREFpTUNBemNEQWdVQ0F3TUNCUUlETndNQ0l3SURBd0lqQWdNM0F3SUZBZ01EQWdVQ0F6Y0RBaU1DQXdNQ0l3SURBS0tJeGtLQkFZakdmN0tCQVlwSFFGS0dTT01JeG4rckJrakl4a0JWQmtqakFnTURBZ1VDQXdNQ0JRSURBd0lGQWdNREFoNENBd01DQlFJREF3SUZBZ01EQWdVQ0F3TUNIZ0lEQXdJRkFnTURBZ1VDQXdNQ0JRSURBd0lBQUFBQndBQS8yb0Rhd05TQUEwQUVRQVZBQmtBSFFBdUFEY0FkRUJ4Snd3Q0N3QUJSeThCQUVVTURnSUxBQW9BQ3dwdEFBb0NBQW9DYXdBQ0F3QUNBMnNBQXdBRUJRTUVYZ0FGQUFZSEJRWmVBQWNBQ0FrSENGNE5BUUFBREVnQUNRa0JXQUFCQVEwQlNSNGVBUUEzTlI0dUhpMGdIeDBjR3hvWkdCY1dGUlFURWhFUUR3NEpCZ0FOQVEwUEJSUXJFeUlHRlJFVUZqTWhNalkxRVFrQklSVWhGU0VWSVJVaEZTRVZNeFVqQVJVakp5WW5KaWNtTnhjV0Z4WVhGak1ERlJRWEZoY1dPd0ZRSVM4dklRTExJUy8rMmY1YUFWSCtyd0ZSL3E4QlVmNnZ3TUFDemNnUUVoQVZEQThCQWdNSUNoSVdIMXdIQ2hNWEpNZ0RVaThoL0xnaEx5OGhBbHNCUGYyNElTb2hLaUVxSVFJTER3UUhDZzBTRngwT0VRMFVDdzRCUCtRUkVoZ09FZ0FHQUFELzNRUENBdDhBRHdBZkFDOEFQd0JQQUY4QWFVQm1EUUlNQXdBQUF3VUFBMkFBQlE0RUFnRUdCUUZnRUFnUEF3WUFDUW9HQ1dBUkFRb0hCd3BVRVFFS0NnZFlDd0VIQ2dkTVVsQkNRREl3SWlBU0VBSUFXbGRRWDFKZlNrZEFUMEpQT2pjd1B6SS9LaWNnTHlJdkdoY1FIeElmQ2djQUR3SVBFZ1VVS3dFaklnWWRBUlFXT3dFeU5qMEJOQ1lwQVNJR0hRRVVGak1oTWpZOUFUUW1BU0V5TmowQk5DWWpJU0lHSFFFVUZnY2pJZ1lkQVJRV093RXlOajBCTkNZcEFTSUdIUUVVRmpNaE1qWTlBVFFtQnlFaUJoMEJGQll6SVRJMlBRRTBKZ0VYMUFzUkVRdlVDeElTQW9QOStRd1JFUXdDQndzU0V2M3VBVVlNRVJFTS9yb01FUkY3MUFzUkVRdlVDeElTQW9QOStRd1JFUXdDQndzU0Vzeit1Z3dSRVF3QlJnd1JFUUxmRWd2NkRCRVJEUG9MRWhJTE9nc1NFZ3M2Q3hMK3pCRU1PZ3NSRVFzNkRCR2FFUXo2Q3hJU0Mvb01FUkVNT1F3UkVRdzVEQkhBRWdzNkN4SVNDem9MRWdBQUFnQUEvNUFEZFFNc0FCY0FKUUFwUUNZREFRRUVBVzhBQkFBRWJ3VUJBQUlBYndBQ0FtWUNBQ0lnR3hvU0R3b0hBQmNDRndZRkZDc0JJeUltUFFFMEppTWhJZ1lWRVJRV015RXlOalVSTkNZM0p5WWlCaDBCRkJZN0FUSTJOQU5XMXlZckVnMyt3U1U0T0NVQ1NDWTNFZ3pNQmhRT0p4cWtDQTBCNVNzbDJBMFNOeWI5SGlVNE9DVUIyUTBTZGN3R0RRbWpHaWNPRkFBQkFBRC9rQVBDQXl3QUt3QWRRQm9qQVFJQUFVY0FBUUFCYndBQUFnQnZBQUlDWmgwcUZRTUZGeXNCTGdFUEFRWWlMd0VtTkQ4Qk5pWW5KaU1pQmdjR0Z4WVhBUTRCRmhjZUFUSTJOd0VXRnhZM1BnRTFOQU8yQXhBSW5BZ1pDVzRJQ0o0R0JBZ29LbEdHSWlRS0J3eittQlVPRGhVUUtTZ3BFQUZtR3k1U1NFWlVBbWNKQXdhY0NBaHVDUmtJbkFZUUJReFVSa2hTTEIzK21oVTROeFFRRVJFUUFXWU1Cd29rSW9aUkt3QUFBQUVBQVAra0F5Z0RHUUFsQUNGQUhnQUFBZ0J2QkFFQ0FRSnZCUUVCQXdGdkFBTURaaE1WTlJNWEZRWUZHaXNCTmpRbkFTWWlCd0VHRkI4QkZqSS9BVFl5RmhVUkZCWTdBVEkyTlJFME5qSWZBUll5TndNY0RBeis0QXdmQy83ZkN3czJEQjhMV3djVUR4Y1BUUThZRHhRSFdnd2ZDd0crREIwTEFSc0xDLzdsQ3gwTU5Bc0xXUWNPQy8zNUR4Y1pEUUlIQ3c0SFdRc0xBQUFBQUFFQUFQK0hBOHNETXdCSEFCRkFEZ0FCQUFGdkFBQUFaaE1SQWdVV0t5VVdOajhCUGdFV0ZBOEJEZ0VtTHdFdUFUWTNBVDRCRmg4QkhnRUdEd0VPQVJjV0Z4NEJOajhCUGdFbUp5TXVBUVlIQVE0QkZoOEJIZ0UyUHdFK0FTNENCZzhCQmhRWEFWTUlGd25BQ3g4WURPd2FSVVlhQWhvUkVSb0JvaGxHUlJvQ0doSVNHZ0lJQWdZU0NRTVZFZ3NKTUNJaU1BUXdnb0l3L2w4d0lpSXdBekdBZ1REdkhoUVhQVkpRSGIwSUNKQUlBUWZCQ2dFWElnenBHaEVSR2dJYVJrVWFBYUVhRWhJYUFocEZSaGtDQ0JJSkh5UU1CaEVNQ2pDQ2dqQXdJaUl3L21Bd2dvRXhCREFpSWpEdEhsSlJPeE1YSDd3SkdRZ0FBd0FBLzVBRG13TXNBQjhBTHdCQ0FKdTFOd0VKQ2dGSFM3QU5VRmhBTXdNQkFRQUFBV01BQ1FvSUNna0liUVFDQ3dNQUFBVUdBQVZoREFFR0FBb0pCZ3BnQUFnSEJ3aFVBQWdJQjFnQUJ3Z0hUQnRBTWdNQkFRQUJid0FKQ2dnS0NRaHRCQUlMQXdBQUJRWUFCV0VNQVFZQUNna0dDbUFBQ0FjSENGUUFDQWdIV0FBSENBZE1XVUFoSWlBQkFFQS9PamswTXlvbklDOGlMeG9YRWhBTkRBa0lCUVFBSHdFZkRRVVVLd0VqTlRRbUlnWWRBU0UxTkNZaUJoMEJJeUlHSFFFVUZqTWhNalk5QVRRbUZ5RWlCaFVSRkJZeklUSTJOUkUwSmdFVkZBWWlKajBCQndZaUpqUS9BVFl5RmhVRFRtQWlMeUwrOGlFd0ltQWdMUkVNQXhRTUVTMFEvT3dNRVM0ZkFyUWdMUkgrcEJnZUZ4MElGeEVLU3dzaUdBTExKeGdpSWhnbkp4Z2lJaGduTFI4eEN4RVJDekVnTFBvUkMvNG9IeTR0SUFIWUN4SCtXUU1NRnhnT3dSOElFaFlLU3d3WEVBQUFBQUFEQUFEL2tBUENBeXdBRkFBZEFEOEFYMEJjTWdFR0J6b3NBZ1VHSmg0Q0JBVURSd0FFQlFFRkJBRnRBQUVCYmdrQkFBb0JBZ01BQW1BQUF3QUhCZ01IWUFBR0JRVUdWQUFHQmdWWUNBRUZCZ1ZNRmhVQkFEMDhOalF2TGlrb0lpQWFHUlVkRmgwTENnQVVBUlFMQlJRckFTSUhCZ2NHRkJjV0Z4WXlOelkzTmpRbkppY21CeklXRkFZaUpqUTJFeFFHS3dFaUpqMEJORFl5TmowQk5DWWlKajBCTkRZN0FUSVdIUUVVRmpJV0ZRSDBmbXRwUEQ4L1BHbHIvR3hvUFQ4L1BXaHNmaGtoSVRJaElYa0tDWm9IREFzUUN3b1FEQXNJZEFjTUNoQU1BeXcvUFdocy9HeG9QVDgvUFdocy9HeG9QVC9wSVRJZ0lUQWkvbXdJQ1FrSUp3Y09DUWhOQ0EwSkNDY0hEZzBJbWdnSkRRZ0FBQUFBQXdBQUFBQUQ2QUtVQUJRQUtRQTVBQXEzTkN3a0dBc0NBeTByQVNjbUJnY0RCaFFYRXg0QlB3RStBUzhCTnpZbUJRTXVBUThCRGdFZkFRY0dGaDhCRmpZM0V6WTBBU2NtQmdjREJoWWZBUlkyTnhNMkpnRTZMUW9XQ044R0J1RUhGd29zQ3dJSnRMWUdBd0tlNFFjWUNTd0xBZ20zdHdjQ0NTd0tGZ2poQnY1NE9nc1hBbzhERFFzNkRCWURqZ01NQW1jbEJ3SUovdWNIRlFqKzZRa0RDQ1VIR1FqaDRRa1g4QUVYQ1FRSkpBZ1lDZUhoQ0JrSEpRY0RDQUVaQ2hNQkdnNEREUXY5M2d3VUF3NENEQXdDSWd3VUFBQUZBQUQva0FPYkF5d0FEd0F2QUQ4QVR3QmZBRzFBYWxoUUFnb0xTRUFDQ0FrQ1J3UU5BZ0lCQUFFQ0FHMEFBUXdCQUFNQkFHQUFBd0FMQ2dNTFlBQUtBQWtJQ2dsZ0FBZ0FCd1lJQjJBQUJnVUZCbFFBQmdZRldBQUZCZ1ZNRWhBQ0FGeGFWVkpNU2tWQ1BEbzFNaW9uSWg4YUZ4QXZFaThLQndBUEFnOE9CUlFyQVNFeU5qMEJOQ1lyQVNJR0hRRVVGaVVqSWdZZEFSUUdJeUVpSmowQk5DWXJBU0lHRlJFVUZqTWhNalkxRVRRbUF4UUdJeUVpSmowQk5EWXpJVElXRlRVVUJpTWhJaVk5QVRRMk15RXlGaFUxRkFZaklTSW1QUUUwTmpNaE1oWVZBVkVCUndzUkxTRG1JQzBSQWdrd0N4SXRJUDZBSUMwU0N6QWZMaTRmQXJRZ0xTMlRDd2orV1FrTEN3a0Jwd2dMQ3dqK1dRa0xDd2tCcHdnTEN3aitXUWtMQ3drQnB3Z0xBbXNTQzFjZ0xTMGdWd3NTZEJJTFZ5QXRMU0JYQ3hJdElQMUxIeTR0SUFLMUlDMzlYd2tMQ3drbUNRb0tDWE1JQ3dzSUp3Z0xDd2h6Q0FzTENDY0lDd3NJQUFBQUFBSUFBUCtQQThJRExRQWpBRWNBaDB1d0NsQllRQ01BQUFVQWJ3QUZBUVZ2QXdFQkJnRnZBQVlFQm04QUJBSUVid0FDQndKdkFBY0haaHRMc0F0UVdFQWZBQUFGQUc4QUJRRUZid01CQVFRQmJ3WUJCQUlFYndBQ0J3SnZBQWNIWmh0QUl3QUFCUUJ2QUFVQkJXOERBUUVHQVc4QUJnUUdid0FFQWdSdkFBSUhBbThBQndkbVdWbEFDeGNZT0JRWU9CY1ZDQVVjS3dFMk5DOEJKaUlQQVFZVUh3RVdNajhCTmhZVkVSUVdPd0V5TmpVUk5EWWZBUll5TndFbkppSVBBUVltTlJFMEppc0JJZ1lWRVJRR0x3RW1JZzhCQmhRZkFSWXlQd0UySmdJUkNBamJDUmNKM1FnSUtRZ1hDVVVKR0JFTU9Rd1JHQWxGQ1JjSkFjOG9DUmNKUlFrWUVRdzVEQkVZQ1VVSkZ3Z3BDQWpkQ1JjSjNRZ0JBaDRKRnduZENBamRDUmNKS0FrSlJRa0pEZjVvQ3hJVENnR1lEUWtKUlFrSi9xZ21DUWxGQ1FrTkFad0xFaE1LL21nTkNRbEZDUWtxQ1JjSjNRZ0kzUWtaQUFnQUFQOXFBMnNEVWdBTkFCNEFKd0E0QUVBQVRnQldBRzhCZDBBWEZ3d0NBd0J0WjBZd0JBZ0hZU29DQmcwRFJ4OEJBRVZMc0E5UVdFQlZCQlFDQXdBQ0FBTUNiUUFDQndBQ0Iyc1NDd0lIQ0FBSENHc0FFQWtGQmhCbEZRRUZEUVlGWXdBUENRZ1BVZ0FKRUFnSlZCa09HQXdXQlFnQURRWUlEV0FUQVFBQURFZ1JGd29EQmdZQldRQUJBUTBCU1J0THNCRlFXRUJXQkJRQ0F3QUNBQU1DYlFBQ0J3QUNCMnNTQ3dJSENBQUhDR3NBRUFrRkNSQUZiUlVCQlEwR0JXTUFEd2tJRDFJQUNSQUlDVlFaRGhnTUZnVUlBQTBHQ0ExZ0V3RUFBQXhJRVJjS0F3WUdBVmtBQVFFTkFVa2JRRmNFRkFJREFBSUFBd0p0QUFJSEFBSUhheElMQWdjSUFBY0lhd0FRQ1FVSkVBVnRGUUVGRFFrRkRXc0FEd2tJRDFJQUNSQUlDVlFaRGhnTUZnVUlBQTBHQ0ExZ0V3RUFBQXhJRVJjS0F3WUdBVmtBQVFFTkFVbFpXVUJGV0ZkUVQwSkJPamtwS0E0T0FRQnNhV1JqWUY1YVdWZHZXRzlUVVU5V1VGWkxTRUZPUWs0OU96bEFPa0ExTWkwc0tEZ3BPQ2NsRGg0T0hSQVBDUVlBRFFFTkdnVVVLeE1pQmhVUkZCWXpJVEkyTlJFSkFSVWpKeVluSmljbU54Y1dGeFlYRmpNREZSUVhGaGNXT3dFQkl4VVVCaUltUFFFME5qc0JNaFlVQmljakZUTXlOalFtRnlNaUpqMEJORFk3QVRJV0ZBWW5JeFV6TWo0QkpqTWpGVE15RmhRR0t3RVZGQVlpSmowQk5EWTdBVElWRmdaUUlTOHZJUUxMSVMvKzJRRW55QThURHhVTER3RUNBd2dLRWhVZlhRY0tFeGNreVAxK05BWUtCd29IT2hzZ0lCMHlNaEVWRlpJdkJ3b0tCeThyTmpVc0tTa2hKd0VuM0ZwWkJBVUZCRmtIQ2djTEIyQUtBUVlEVWk4aC9MZ2hMeThoQWxzQlBmN0JEd1FIQ2cwU0Z4ME9FUTBVQ3c0QlArUVJFeGNPRXY1QlFBVUdCd1NnQndvaE1DQmRTQlFnRktnTEI1a0hDalpRTnFpU0tqOHBQUVlKQmtzRkJnY0VvQWNLQ3dRRkFBQUZBQUFBQUFNTUFvb0FEd0F2QUQ4QVR3QmZBUWxBRmgwTkFnQUNTQUVMQ1ZnQkJ3dFFRRGd3QkFZSEJFZExzQTVRV0VBOEJBMENBZ0VBQVFJQWJRQUxDUWNKQzJVQUJ3WUpCMk1BQVF3QkFBTUJBR0FBQXdBSkN3TUpZQW9JQWdZRkJRWlVDZ2dDQmdZRldBQUZCZ1ZNRzB1d0gxQllRRDBFRFFJQ0FRQUJBZ0J0QUFzSkJ3a0xaUUFIQmdrSEJtc0FBUXdCQUFNQkFHQUFBd0FKQ3dNSllBb0lBZ1lGQlFaVUNnZ0NCZ1lGV0FBRkJnVk1HMEErQkEwQ0FnRUFBUUlBYlFBTENRY0pDd2R0QUFjR0NRY0dhd0FCREFFQUF3RUFZQUFEQUFrTEF3bGdDZ2dDQmdVRkJsUUtDQUlHQmdWWUFBVUdCVXhaV1VBakVSQUJBRnhhVkZKTVNrUkNQRG8wTWlvbkloOGFGeEF2RVM4S0J3QVBBUThPQlJRckFUTXlOajBCTkNZckFTSUdIUUVVRmlVaklnWWRBUlFHS3dFaUpqMEJOQ1lyQVNJR0ZSRVVGak1oTWpZMUVUUW1BUlFHS3dFaUpqMEJORFk3QVRJV0ZSY1VCaXNCSWlZOUFUUTJPd0V5RmhVWEZBWXJBU0ltUFFFME5qc0JNaFlWQVliY0NBd2pHWXdaSXd3QlVoUUVCaThoM0NFdkJRVVVHU01qR1FHNEdTTWovc1VNQ0JRSURBd0lGQWdNWkF3SUZBZ01EQWdVQ0F4a0RBZ1VDQXdNQ0JRSURBSVNEQWdvR1NNakdTZ0lERVlGQlNnaEx5OGhLQVVGSXhuK1Voa2pJeGtCcmhrai9tWUlEQXdJWkFnTURBaGtDQXdNQ0w0SURBd0l2Z2dNREFpV0NBd01DQUFHQUFBQUFBTVdBbjhBRkFBa0FEUUFSQUJVQUdRQWgwQ0VJaG9GQXdNRVFqb3lLZ1FGQm1KYVVrb0VDUW9EUndBQUFRQnZBQUVFQVc4QUJBTUVid0FDQXdZREFnWnRFUXNRQXdrS0NYQU5BUU1JQVFZRkF3WmdEd2NPQXdVS0NnVlVEd2NPQXdVRkNsZ01BUW9GQ2t4V1ZVWkZOalVtSlJZVlhseFZaRlprVGt4RlZFWlVQancxUkRaRUxpd2xOQ1kwSGh3VkpCWWtGeFFTRWdVWEt3RW5KaUlQQVNjbUlnOEJCaFFmQVJZeVB3RTJOQVVoSWlZOUFUUTJNeUV5RmgwQkZBWUhJU0ltUFFFME5qTWhNaFlkQVJRR0lTTWlKajBCTkRZN0FUSVdIUUVVQmdjaklpWTlBVFEyT3dFeUZoMEJGQVlwQVNJbVBRRTBOak1oTWhZZEFSUUdBZElWQkF3RmhEVUVEQVVWQkFSS0NSZ0ptUVFCTFA3OENBd01DQUVFQ0F3TUNQN0FDQXdNQ0FGQUNBd00va0FvQ0F3TUNDZ0lEQXdJS0FnTURBZ29DQXdNQWJEK3dBZ01EQWdCUUFnTURBSmxGUVVGaERVRkJSVUVEQVZLQ1FtWkJBMkxEQWdvQ0F3TUNDZ0lETFFNQ0NnSURBd0lLQWdNREFnb0NBd01DQ2dJRExRTUNDZ0lEQXdJS0FnTURBZ29DQXdNQ0NnSURBQUFBZ0FBQUFBRElBS1FBQzBBUFFBNlFEY2pBUUlBQVVjQkJRSUFBQUlEQUFKZ0JnRURCQVFEVkFZQkF3TUVXQUFFQXdSTUx5NENBRGcxTGowdlBTY2xJQjBBTFFJdEJ3VVVLd0VqSWlZMU5qYzJOelkzTmpjMkppY21EZ0VWRkJjV0Z4WVhGaGNVQmlzQklnWWRBUlFXTXlFeU5qMEJOQ1lISVNJR0hRRVVGak1oTWpZOUFUUW1BdVJ1R1NNQ0NRVU5DZ1FHQVFNMExDWkVLUVlFQ3cwRkNRSWpHVzRaSXd3SUFqQUlEQ01ZL2g0SUN5TVpBWkVaSWdzQk5pTVpJUmtQRlJBSkR4RXRTQW9JSFR3bEZSRUtFaFVQR1NFWkl5TVpLQWdNREFnb0dTTzBDd2dCR1NNakdRRUlDd0FCQUFEL2tBUENBeTRBTHdCUVFFMFlBUU1DR1FFQkF3WUJBQUVrQXdJRUFDVUJCUVFGUndvQkF3RkdBQUlEQW04QUF3RURid0FCQUFGdkJnRUFCQUJ2QUFRRkJHOEFCUVZtQVFBcUtTTWhIQm9VRXc0TUFDOEJMd2NGRkNzbElnWUhKVFkxTkNZMUpSNEJNekkrQVRRdUFTSU9BUjBCQlNZaklnNEJGQjRCTXpJM0JSVVVIZ0V5UGdFMExnRURFeVZCRi83bkFnSUJHUmRESlM5UUxpNVFYbEF2L3Q0MVBpOVFMaTVRTDBFd0FTTXVUMkJQTGk1UTZ4MFpqQW9WQlJVRmpCb2VMbEJlVUM4dVVEQUxraWd1VUY1UUxpcVFEVEJRTGk1UVlFOHVBQUlBQVArUUE4SURMQUFyQUZrQUprQWpFd0VDQUFGSEFBQUNBRzhBQWdFQ2J3QUJBd0Z2QUFNRFpsTlFPamtsSWk0RUJSVXJBU1luSmpVME5qYytBVFUwSmljbUl5SUhCZ2NVRng0QkZSUUdCd1lVRnhZZkFSWTdBVEkyUFFFMEp5WUZKaWNtTlRRM1BnRTFOQ1luSmlJSERnRVZGQllYRmhVVUJ3WUhCZ2NHQndZZEFSUVdNeUV5TmowQk5DY21BeWdsRGdzVUR4Z2FKU0lrTDBFcUp3WUtOejRxSndNRENpUVVDQVhwSVM0dkl2NjFMUkVOS0IwZkt5a3JjeXNvTEI0ZEtRMFNManNoTGhnY0xTRUNGU0V3TmlnQnBRNFNEUk1QSGd3VU9pSXJTQlVXS0NZN0NnY2pkVWszWHlNRENRTUhFUW9ETHg0TUxpTWE3aE1URHhZaEpCbEVLRE5WR0JvYUdGVXpLRVFaSXlJV0R4VVJHQklaR3lBbUdTQXRMaDhiTmlvZkFBQUFBUUFBQUFBQzJ3S2xBQzBBSjBBa0FBQUZBUUVDQUFGZ0JBRUNBd01DVkFRQkFnSURXQUFEQWdOTU5TVTFOU1V6QmdVYUt3RTFOQ1lqSVNJR0hRRVVGak15RmdjRERnRXJBU0lHSFFFVUZqTWhNalk5QVRRbUl5SW1OeE0rQVRzQk1qWUMyeGNRL3ZNUUZoWVFHUjhHUlFRZEVTNFFGeGNRQVEwUUZoWVFHUjhHUlFRZEVTRVdIZ0ptR1JBV0ZoQW5FQlluRi82dUV4Z1dFQ2NRRmhZUUp4QVdKeGNCVWhNWUhnQUFBQVVBQVArUUE0Z0RMQUFaQUNNQU13QkRBRk1BWGtCYlRFUThOQVFJQ1FGSEFBRUFCQUFCQkdBRkFnd0RBQUFEQmdBRFlBMEJCZ3NCQ1FnR0NXQUtBUWdIQndoVUNnRUlDQWRZQUFjSUIwd21KQUVBVVU1SlJrRStPVFl1S3lRekpqTWpJaDRjRkJFTUNnY0VBQmtCR1E0RkZDc0JJelUwSmlzQklnWWRBU01pQmgwQkZCWXpJVEkyUFFFMEppVTBOanNCTWhZZEFTTUZJU0lHRlJFVUZqTWhNalkxRVRRbUFSUUdLd0VpSmpVUk5EWTdBVElXRlJNVUJpc0JJaVkxRVRRMk93RXlGaFVEYS9BdElIUWZMdkFMRWhJTEF1NExFaEwrUkFzSlRRZ0xkQUZrL2F3TEVqZ29BYzRvT0JIK2tBb0pKZ2tMQ3drbUNRckJDd2ttQ1FvS0NTWUpDd0tTVFNBdExTQk5FZ3M2Q3hJU0N6b0xFamtKQ3dzSk9jRVJDLzQ4S1RnNEtRSEVDeEgrV1FnTEN3Z0JEZ2dMQ3dqKzhnZ0xDd2dCRGdnTEN3Z0FBQUVBQVAvdkE4SUN6UUFqQUM1QUt3QUJBQUZ2QUFJREFuQUVBUUFEQXdCVUJBRUFBQU5ZQUFNQUEwd0NBQjRiRXhJTENnQWpBaU1GQlJRckFTRWlKajhCTmpRdkFTWWlCd0VHRkJjQkZqSS9BVFkwTHdFbU5qTWhNalk5QVRRbUE2ZjlnUTBKQ2JnSkNTb0lHQWorcndnSUFWRUlHQWdvQ1FtNENRa05BbjhMRWhBQm1CZ0l1UWtYQ0NzSUNQNnRDQmdJL3E4SUNDa0lHQWk1Q2hnUUN6b01Fd0FBQXdBQS81QUR3Z01zQUJRQUlRQXVBRHBBTnlZbEh4NEVBd0lCUndRQkFBQUNBd0FDWUFVQkF3RUJBMVFGQVFNREFWZ0FBUU1CVENNaUFRQWlMaU11SEJvTENnQVVBUlFHQlJRckFTSUhCZ2NHRkJjV0Z4WXlOelkzTmpRbkppY21BVFEzTmpjMk16SVdGd0V1QVFFaUppY0JIZ0VWRkFjR0J3WUI5SDFyYVQwL1B6MXBhL3BzYUQ0L1B6NW9iUDRwTHk5T1VWMDRaU3YrSFI0aEFWbzRaU3NCNHg0aEx5OU9VUU1zUHo1b2JQcHNhRDQvUHo1b2JQcHNhRDQvL2pKZFVVNHZMeUVlL2gwclpmN2VJUjRCNHl0bE9GMVJUaTh2QUFBQUFBSUFBQUFBQThJQ3l3QU5BQ1FBS2tBbkFBRURBVzhBQXdBRGJ3QUFBZ0J2QUFJRUJBSlVBQUlDQkZnQUJBSUVURGNUR1RVUkJRVVpLd0VXTWpjQk5pY21Jd1VpRGdFWEJUUW1Cd0VHSWljQkppSUdGU1lkQVJRV015RXlOalVCM3dnWUNBR3pCd1VHRmZ5a0N4SUVDQU9XR3d6K3JDTmZKUDZ1QnhNTkFTMGZBd0lnTFFFUENBZ0JsQTBORGdFTkV3bWNEdzBLL3NZZ0hnRThCZzBMQk56Y0lDMHVId0FBQUFNQUFQL3hBeFVDdUFBWUFDQUFLQUJCUUQ0VkFRTUVBVWNBQUFBRkJBQUZZQWNCQkFBREFnUURZQVlCQWdFQkFsUUdBUUlDQVZnQUFRSUJUQ0loR2hrbEl5RW9JaWdkR3hrZ0dpQTFNd2dGRmlzQk5DNEJJeUVpQmhVUkZCWXpJVEkrQVRVMEp5WW5OamMyQXlNMU16SVdGQVlESXpVek1oWVVCZ01WTjEwMi9zSVFGaFlRQVQ0MlhUY1BEeG9hRHcvSzN0NGJLaW9iM3Q0Yktpb0I1VGhpT1JZUS9ZVVFGamxpT0NrbUpCMGVKQ2IrdTVvdVBpNEJJWm92UEM4QUFBUC8vd0FBQSs0Q3BRQVdBQ01BTUFCQ1FEOEhBUVFEQlFNRUJXMEFCUUlEQlFKckFBQUFBd1FBQTJBR0FRSUJBUUpVQmdFQ0FnRllBQUVDQVV3bEpCZ1hLeW9rTUNVd0hoMFhJeGdqR3hRSUJSWXJBUzRCSnlZaUJ3NEJCd1lVRng0QkZ4WXlOejRCTnpZRklpNEJORDRCTWg0QkZBNEJBeUlPQVJRZUFUSStBVFF1QVFQa0xaZGZZdFppWDVjdEJBUXRsMTlpMW1KZmx5MEovZ2M2WURrNVlIUmhPVGxoT2lVK0pDUStTajRrSkQ0QmIxeU1KaWdvSm94Y0NCTUhYSXdtS0NnbWpGd1IwemxnZEdFNU9XRjBZRGtCV2lRK1NqNGtKRDVLUGlRQUFnQUEvNUFEd3dNdEFDY0FWZ0JaUUZZQUNRTUpid29CQUFJSUFnQUliUUFJQmdJSUJtc0FCZ0VDQmdGckN3VUNBd2NCQWdBREFtQUFBUVFFQVZRQUFRRUVXQUFFQVFSTUtTZ0NBRTFNUlVROE9UTXdLRllwVlNJZkdoY1NEd29IQUNjQ0p3d0ZGQ3NCSXlJR0hRRVVCaU1oSWlZMUVUUTJPd0V5TmowQk5DWXJBU0lHRlJFVUZqTWhNalkxRVRRbUFTSUhCZ2NHQndZV093RXlOamMrQVRjMk93RXlGZzhCQmhRZkFSWXlOd0UyTkNjQkppSVBBUTRCSHdFV0JpTURwVG9MRWhFTS9ZWU1FUkVNVFFzU0VndVJIeTB0SHdNQ0lDMFMvdDVlVjFRMk9BZ0NFZzA2Q3hBQ0JsQStRVWtmRFFrSmFRa0pLQWtYQ0FFR0NBaisvQWdZQ0NnSkFnbHJDUWtOQVJFUkROTU1FUkVNQVpRTEVSSUxPZ3NTTFNEOTVTQXRMaDhCRnd3UkFUUTBNbFZYWXd3VER3cEhlU01rR0Foc0NCZ0lLUWdJQVFRSUdBZ0JCQWdJS0FrWENXd0lHQUFBQUFNQUFBQUFBeUFDaWdBVUFDMEFQQUE5UURvRkFRTUNCQUlEQkcwR0FRQUhBUUlEQUFKZ0FBUUJBUVJVQUFRRUFWZ0FBUVFCVEJZVkFRQW9KaUloSEJzVkxSWXRDd29BRkFFVUNBVVVLd0VpQndZSEJoUVhGaGNXTWpjMk56WTBKeVluSmdjeUhnRVZGQWNqSWdZSERnRWlKaWN1QVNzQkpqVTBQZ0VURmo0Qk56WTNOaVlIQmdjT0FSWUI5RkZHUkNncEtTaEVScUpHUkNncEtTaEVSbEU3WmpzQ1dRY0xBZ1krVWo0R0FRc0lXUUk3WmlRU0tCTU5EUWNJQ0I4ZEhTQVRDd0tLS1NoRVJxSkdSQ2dwS1NoRVJxSkdSQ2dwVUR0bU93b1VDUWduTmpZbkJ3b1VDanRtTy83YUNnMGpNQ3dvS2dRZUhTTW1JeWNBQUFVQUFBQUFBeUFDaWdBa0FESUFRQUJLQUZRQVowQmtDd0VGQVRJQkFBVWFBUVFBU0FFSkNBUkhDdzBDQ0FRSkJBZ0piUW9CQ1FsdUFnRUJCd0VGQUFFRllBWUREQU1BQkFRQVZBWUREQU1BQUFSWUFBUUFCRXhDUVFFQVVsRlFUa1ZEUVVwQ1NqMDhOell1TEI0Y0Z4VVJEd2NGQUNRQkpBNEZGQ3NCSXpZbUp5WWpJZ1lIQmdjbUp5NEJJeUlIRGdFWEl5SUdIUUVVRmpNaE1qWTlBVFFtSVNJbkxnSTNOak15RmhjV0ZUY0dCd1lqTlRRM1BnRXlGeFlHRnlNUk16STJQUUUwSmdVVkZCWTdBUkVqSWdZQzVGY1RCQmNiSlJNbURnVUZCQVlPSlJRa0d4Y0VFMWdaSXd3SUFqQUlEQ1ArMlJFU0ZSY0NDZ2dNRUJjR0JvQU1GQk1SQmdZWkdnZ0tBb1BTckJnaURQNEVJeG1xMGdnTUFmUWVSUmdiRVE4RkNBZ0ZFQkFiR0VVZUl4a29DQXdNQ0NnWkl3WUhHU0VLQ0JvV0V4RVZEUWNHQmhFVEZob0lDeURiL3ZJaUdNQUlEQlMrR1NNQkRnd0FBQU1BQUFBQUF5QUNpZ0FVQUNFQU5RQkxRRWdqSWdJRkJBRkhBQVFEQlFNRUJXMEFCUUlEQlFKckJnRUFBQU1FQUFOZ0J3RUNBUUVDVkFjQkFnSUJXQUFCQWdGTUZoVUJBREF2SnlVY0d4VWhGaUVMQ2dBVUFSUUlCUlFyQVNJSEJnY0dGQmNXRnhZeU56WTNOalFuSmljbUF5SXVBVFErQVRJZUFSUU9BU2MxTkNZckFTSUdIUUVVSHdFV01qOEJOalFuQWZSUlJrUW9LU2tvUkVhaVJrUW9LU2tvUkVaUlFXNUJRVzZDYmtGQmJpTU1DQlFJREFsZ0JoQUdEZ1lHQW9vcEtFUkdva1pFS0NrcEtFUkdva1pFS0NuOTVFRnVnbTVCUVc2Q2JrSDhnQWdNREFpTURRaGdCZ1lPQmhBR0FBVUFBQUFBQXU0Q2lnQU5BQ1VBU1FCWkFHa0FZRUJkRXdFQUFrUTlOZ01CQUVBNUl3TUhBV0phQWdZSFVrb0NCQVVGUndBQ0FBSnZBQUFCQUc4SUFRRUFCd1lCQjJBQUJnQUZCQVlGWUFBRUF3TUVWQUFFQkFOWUFBTUVBMHdRRG1aa1hseFdWRTVNSUIwWUZRNGxFQ1VvQ1FVVkt3RW5KaUlHSFFFVUZqc0JNalkwQnlNaUpqMEJOQ1lyQVNJR0ZSRVVGak1oTWpZMUVUUW1KVDhCTWpVM05qSWZBUll6Rng0QkR3RUdGUmNXQmk4QkpnOEJCaVkvQVRRdkFTWTJBUlFHSXlFaUpqMEJORFl6SVRJV0ZUY1VCaU1oSWlZOUFUUTJNeUV5RmhVQzZvUUVEQWdZRUdvR0NCU01HU01NQ01nWkl5TVpBWHdaSXd6K1hqRUNBUllDQlFFV0FnRXhBZ0lDSkFFSUFRVUNMQUlDTEFJRkFRZ0JKQUVEQVRnTUNQNzhDQXdNQ0FFRUNBd29EQWorMUFnTURBZ0JMQWdNQWdLRUJBZ0dhaEFZQ0F4UUl4bU1DQXdqR2Y0Z0dTTWpHUUVzQ0F4ZUJ3RUJMUUlDTFFJSEFRVUJJd0VETVFJREFSY0NBaGNCQXdJeEF3RWpBZ1Qrc3dnTURBZ1VDQXdNQ0dRSURBd0lGQWdNREFnQUFBZ0FBUCtRQThJRExBQVBBQjhBTHdBL0FFOEFYd0J2QUg4QWNrQnZFZ0VPQlE1dkJnRUZEd1Z2QUE4RUQyOEhBUVFBQkc4SUFRSUJDZ0VDQ20wUUFRb0RBUW9EYXdrQkF3c0JBd3RyQUFzTGJoRU1BZ0FCQVFCVUVRd0NBQUFCV0EwQkFRQUJUSEp3WW1CU1VIcDNjSDl5ZjJwbllHOWliMXBYVUY5U1gwcEpGeGNYRnhjWEV6VXpFd1VkS3dFMU5DWXJBU0lHSFFFVUZqc0JNallYSmlJUEFRWVVId0VXTWo4Qk5qUW5BUll5UHdFMk5DOEJKaUlQQVFZVUZ5VW1JZzhCQmhRZkFSWXlQd0UyTkNjQkppSVBBUVlVSHdFV01qOEJOalFuSlNNaUJoMEJGQlk3QVRJMlBRRTBKaVVqSWdZZEFSUVdPd0V5TmowQk5DWUJJeUlHSFFFVUZqc0JNalk5QVRRbUFUUVNDOVFMRVJFTDFBc1NKQWdZQ0pZSkNTZ0pGd21XQ0FnQkR3Z1lDSllKQ1NnSkZ3bVdDQWoraEFrWENTZ0pDWllJR0FncENBZ0JPUWdZQ0NzSUNKWUpGd2tvQ1FuK3d6b0xFaElMT2dzU0VnR0oxQXNTRWd2VUN4SVMvbUU2Q3hJU0N6b0xFaElCUVRvTEVoSUxPZ3NTRWtzSUNKWUpGd2tvQ1FtV0NCZ0lBUThJQ0pZSkZ3a29DUW1VQ0JnSXZBa0pLQWtYQ1pZSUNDa0lHQWoreVFnSUtRZ1lDSllKQ1NnSkZ3bEpFZ3ZVQ3hJU0M5UUxFdm9TQ3pvTEVoSUxPZ3NTQVpRU0M5UUxFaElMMUFzU0FBQUFBQU1BQVAvZEE4SUMzd0FNQUNzQU9BQldRRk1FQ1FJQ0F3Y0RBZ2R0Q0FFQUJ3RUhBQUZ0QUFFR0J3RUdhd0FEQUFjQUF3ZGdDZ0VHQlFVR1ZBb0JCZ1lGV0FBRkJnVk1MU3dQRFFFQU16SXNPQzA0SmlNZUd4WVREU3NQS3djR0FBd0JEQXNGRkNzQklnNEJGQjRCTWo0Qk5DNEJKU01pTHdFdUFTc0JJZ1lQQVE0Qkt3RWlCaFVSRkJZeklUSTJOUkUwSmdFaUxnRTBQZ0V5SGdFVURnRUI5Q3BIS1NwR1ZFY3BLVWNCVjJRb0dpd0tMQnU4R2kwTUxBb2pGR01mTFMwZkF3SWdMUzMrWHo1clBqNXJmR3MrUG1zQjBTbEhVa2NxS1VkVVJpbDBJa1FZSEJ3WVJCQVNMU0QrTWlBdExoOEJ6aUF0L2d3K2EzeHFQajVxZkdzK0FBQUFDQUFBLzVBRG13TXNBQThBSHdBdkFEOEFUd0JmQUc4QWp3REtRQTVvU0NnREJBVlFNQkFEQWdNQ1IwdXdEVkJZUUQwUkFROE9EZzlqRWhBVkF3NEFFd0FPRTJFVUFRQU5DUUlGQkFBRllBd0lBZ1FMQndJREFnUURZQW9HQWdJQkFRSlVDZ1lDQWdJQldBQUJBZ0ZNRzBBOEVRRVBEZzl2RWhBVkF3NEFFd0FPRTJFVUFRQU5DUUlGQkFBRllBd0lBZ1FMQndJREFnUURZQW9HQWdJQkFRSlVDZ1lDQWdJQldBQUJBZ0ZNV1VBemNYQUNBSXFIZ29COWZIbDRkWFJ3ajNHUGJHcGxZbHhhVlZKTVNrVkNQRG8xTWkwcUpDSWRHaFFTQ2djQUR3SVBGZ1VVS3dFaElnWVZFUlFXTXlFeU5qVVJOQ1lCRkFZckFTSW1QUUUwTmpzQk1oWVZOUlFHS3dFaUpqMEJORFk3QVRJV0ZSTVVCaXNCSWlZOUFUUTJPd0V5RmhVMUZBWXJBU0ltUFFFME5qc0JNaFlWRXhRR0t3RWlKajBCTkRZN0FUSVdGVFVVQmlzQklpWTlBVFEyT3dFeUZoVVRJelUwSmlJR0hRRWhOVFFtSWdZZEFTTWlCaDBCRkJZeklUSTJQUUUwSmdOKy9Pd01FUzRmQXJRZ0xSSDk0d29KVFFnTEN3aE5DUW9LQ1UwSUN3c0lUUWtLd1FzSVRRa0xDd2xOQ0FzTENFMEpDd3NKVFFnTHdBc0lUUWtLQ2dsTkNBc0xDRTBKQ2dvSlRRZ0xZR0FpTHlMKzhpRXdJbUFnTFJFTUF4UU1FUzBCMFJFTC9pZ2ZMaTBnQWRnTEVmNVpDQXNMQ0UwSkN3c0pkQWtMQ3dsTkNBc0xDUDd5Q0FzTENFMEpDd3NKZEFrTEN3bE5DQXNMQ1A3eUNBc0xDRTBKQ3dzSmRBa0xDd2xOQ0FzTENBR1RKeGdpSWhnbkp4Z2lJaGduTFI4eEN4RVJDekVnTEFBREFBRC90d1BDQXdVQUR3QWZBQzhBUUVBOUJ3SUdBd0FGQVFVQUFXMERBUUVCYmdnQkJBVUZCRlFJQVFRRUJWZ0FCUVFGVENJZ0VoQUNBQ29uSUM4aUx4b1hFQjhTSHdvSEFBOENEd2tGRkNzVEl5SUdGUkVVRmpzQk1qWTFFVFFtS1FFaUJoVVJGQll6SVRJMk5SRTBKaWNoSWdZZEFSUVdNeUV5TmowQk5DYmRtZ3NSTENCcURCRVJBcno5dnd3UkVRd0NFU0F0RWp2OC9pQXNFUXNEWWdzU0xRSUxFUXorRmlBdEVRd0NHZ3dSRVF6OTVnd1JMU0FCNmd3UitpMGdRd3NTRWd0RElDMEFBQUFFQUFEL3lnT2JBdklBRHdBZkFDOEFQd0EyUURNQUFBQUJBZ0FCWUFBQ0FBTUdBZ05nQUFZQUJ3UUdCMkFBQkFVRkJGUUFCQVFGV0FBRkJBVk1OVFUxTlRVMU5USUlCUndyQVRRbUl5RWlCaDBCRkJZeklUSTJOUlUwSmlNaElnWWRBUlFXTXlFeU5qVVJOQ1lqSVNJR0hRRVVGak1oTWpZMUVUUW1JeUVpQmgwQkZCWXpJVEkyTlFPYkVRejg3QXdSRVF3REZBd1JFUXo4N0F3UkVRd0RGQXdSRVF6ODdBd1JFUXdERkF3UkVRejg3QXdSRVF3REZBd1JBdFVMRWhJTE9nc1JFUXV0REJFUkREa01FUkVNL213TEVoSUxPZ3NTRWdzQklRc1JFUXM2REJFUkRBQUFCQUFBLzhvRG13THlBQThBSHdBdkFEOEFOa0F6QUFBQUFRSUFBV0FBQWdBREJnSURZQUFHQUFjRUJnZGdBQVFGQlFSVUFBUUVCVmdBQlFRRlREVTFOVFUxTlRVeUNBVWNLd0UwSmlNaElnWWRBUlFXTXlFeU5qVUhOQ1lqSVNJR0hRRVVGak1oTWpZMUF6UW1JeUVpQmgwQkZCWXpJVEkyTlJNMEppTWhJZ1lkQVJRV015RXlOalVEbXhFTS9Pd01FUkVNQXhRTUVYTVNDLzNTQ3hJU0N3SXVDeEluRVF6K0lBd1JFUXdCNEF3Um1oRU0vT3dNRVJFTUF4UU1FUUxWQ3hJU0N6b0xFUkVMclF3UkVRdzVEQkVSRFA1c0N4SVNDem9MRWhJTEFTRUxFUkVMT2d3UkVRd0FBQUFEQUFEL2p3UENBeXdBRHdBZkFERUFJMEFnQUFNQkEyOEFBUUlCYndBQ0JBSnZBQVFBQkc4QUFBQm1IaGNhRnhJRkJSa3JOeGNXTWpjQk5qUXZBU1lpQndFR0ZBRUdGQjhCRmpJL0FUWTBMd0VtSWdjQkJoWS9BVFkvQVRZMEx3RW1JZzhCQmdlM3F3WVBCZ0dyQlFXcEJoQUYvbE1HQWdVRkJhb0ZFQVV4RnhkYkZ6OFgvVVVDRlE3U0NnY0VCQWF0QlJBRUJBWUUwS3NHQmdHc0JoQUZxZ1VGL2xNR0RnSVBCUkFGcWdVRk1CWTlGMXNYRi95ZURoWURNZ01IQkFRUUJhMEdCQVFHQ3dBQUFBQUZBQUQva0FQQ0F5d0FEd0FUQUNNQU13QkRBR2hBWlVFNU1Ta0VCZ2NCUndrQkJ3UUdCQWNHYlEwSURBTUdBZ1FHQW1zQUFRQURCUUVEWGdBRkN3RUVCd1VFWUFBQ0FBQUNVZ0FDQWdCWUNnRUFBZ0JNTlRRbEpCVVVBZ0ErT3pSRE5VTXVLeVF6SlRNZUd4UWpGU01URWhFUUNnY0FEd0lQRGdVVUt3VWhJaVkxRVRRMk15RXlGaFVSRkFZbElSRWhBU0VpSmowQk5EWXpJVElXSFFFVUJnRWpJaVk5QVRRMk93RXlGaDBCRkFZaEl5SW1QUUUwTmpzQk1oWWRBUlFHQTV2OHNoQVdGaEFEVGhBWEYveklBd0w4L2dKNy9nd0lDd3NJQWZRSkNncitkbk1JQ3dzSWN3a0xDd0Y0NXdnTEN3am5DUW9LY0JjUUEwNFFGeGNRL0xJUUYwMERBdjd5Q3dsekNRb0tDWE1KQy82QUN3am5DQXNMQ09jSUN3c0k1d2dMQ3dqbkNBc0FBQUFDQUFEL2tBT3VBeXdBRHdBM0FCMUFHZ0FBQWdCdkFBSURBbThBQXdFRGJ3QUJBV1lwTERVeUJBVVlLeE0wSmlzQklnWVZFUlFXT3dFeU5qVUJCZ2NHSnlZbkppY21Jd1lIRGdFVkVSUVdOell6RmhjV0Z4WVhGaGNXTnpZM1BnRTFFVFFtclJFTU9Rd1JFUXc1REJFQzVVZzVMeTBiTWpRZk16bEZWd2dMRVFoVVJEY3pIalFtRkNJZ0ppc3dPd2NJRXdNUEN4SVNDL3llQ3hJU0N3TVJKZ1lHRVFvZUlBd1VBUjRDRUFuK1FBb0xCQndCRkF3ZkdBa1BCQVFMRFNFRURnY0J2d29MQUFNQUFQK1BBNGdETFFBWEFDOEFQd0F1UUNzQUJBVUVid0FGQXdWdkFBTUFBZ0VEQW1BQUFRQUFBVlFBQVFFQVdBQUFBUUJNRng4Ykd4c1NCZ1VhS3lVRkJpSW5KU1kwUHdFMk1oOEJGakkvQVRZeUh3RVdGQ2NGQmlJbkpTWTBQd0UyTWg4QkZqSS9BVFl5SHdFV0ZDMEJKalEzSlRZeUZ3VVdGQWNGQmlJRGVmNldEaU1PL3BnTEMxVUVDd1RiSUVzZjNBUUxCRlVMQy82V0RpTU8vcGdMQzFVRUN3VGJJRW9nM0FRTEJGVUwvay8rbHd3TUFXa1BJdzRCYVF3TS9wY09JMmJPQ0FqT0JoY0dNQU1EZlJJU2ZRTURNQVlYNGM0SkNjNEZHQVV3QXdOOUVSRjlBd013QlJnVXpnVVhCczRJQ000R0Z3WE9Cd0FBQUFRQUFBQUFBeUFDTUFBUEFEQUFRQUJRQU5wQUVFbEJBZ1lIT1RFQ0JBVXVBUUlFQTBkTHNCbFFXRUF4QUFjREJnTUhaUUFFQlFJQ0JHVUlBUUFBQXdjQUEyQUFCZ0FGQkFZRllBa0JBZ0VCQWxRSkFRSUNBVmtBQVFJQlRSdExzQnBRV0VBeUFBY0RCZ01IWlFBRUJRSUZCQUp0Q0FFQUFBTUhBQU5nQUFZQUJRUUdCV0FKQVFJQkFRSlVDUUVDQWdGWkFBRUNBVTBiUURNQUJ3TUdBd2NHYlFBRUJRSUZCQUp0Q0FFQUFBTUhBQU5nQUFZQUJRUUdCV0FKQVFJQkFRSlVDUUVDQWdGWkFBRUNBVTFaV1VBYkVoQUNBRTFMUlVNOU96VXpJaUVRTUJJd0NnY0FEd0lQQ2dVVUt3RWhJZ1lWRVJRV015RXlOalVSTkNZQkl5SW1OVFkzTmpjMk56WTFOQ2NtTkRZeUZoVVVCd1lWRkJjV0Z4WVhGZ1kzRkFZckFTSW1QUUUwTmpzQk1oWVZOUlFHS3dFaUpqMEJORFk3QVRJV0ZRTGsvaUFaSXlNWkFlQVpJeVArNmF3T0ZBRVVEaDRRQmdRT0ZTSTZJaFVPQkFZUVFBRUNGTndNQ0ZvSURBd0lXZ2dNREFpV0NBd01DSllJREFJd0l4biszaGtqSXhrQkloa2ovcXdaRUJRUkRBNEhDQVVKRGd3VFBTZ29IaUFTREE0SkJRZ0dHeVVQR2tZSURBd0lIZ2dNREFoUUNBd01DQjRJREF3SUFBTUFBQUFBQXhzQ2RnQWxBQzRBTndCS1FFY0FBZ0FEQUFJRFlBQUJDZ0VBQlFFQVlBQUZBQVFIQlFSZ0NRRUhCZ1lIVkFrQkJ3Y0dXQWdCQmdjR1RBRUFOalV5TVMwc0tTZ2dIUm9YRkJJUERBa0hBQ1VCSlFzRkZDc0JJVEkyUHdFMkppTWhKeTRCS3dFaURnRVdPd0VUSGdFeklUSStBU1lqSVNJbUp6VW1OZ2NVRmpJMk5DWWlCaGNVRmpJMk5DWWlCZ0dvQVNjSEN3RTJBd3dLL2pnSUF4QUtNQXdUQWhJTkhGNERFQW9CWEF3VEFoSU4vczRLRUFJRkVoNGRLaDBkS2gzd0hTb2RIU29kQVY0SUI3NEtEeHdLREJBWkUvN0NDZ3dRR1JNTUNRRU9HT1lWSFIwcUhSMFZGUjBkS2gwZEFBQUNBQUFBQUFNaUFrd0FDd0FnQUNSQUlRQUJBQUZ2QUFBQ0FHOEFBZ01EQWxRQUFnSURXQUFEQWdOTU9CZzBFUVFGR0NzQkZqSTNBVFltSXdVaUJoY0ZOQ1lQQVFZaUx3RW1CaFVSRkJZeklUSTJOU0lCNXdZUEJnRWJCUWNPL2RBTURBZ0NVeElIM0JZL0Y5MEhFaU1aQWVBWkl3RUJMQVVGQVFZSkVRRVJDVzhLQ0FmTUZSWE1Cd2dLL3Z3Wkl5TVpBQUFBQWdBQS81QUR3Z01zQUJRQUxBQTBRREVHQVFBRkFHOEFCUU1GYndBREJBTnZBQVFDQkc4QUFnRUNid0FCQVdZQkFDZ25KQ01nSHhnWEN3b0FGQUVVQndVVUt3RWlCd1lIQmhRWEZoY1dNamMyTnpZMEp5WW5KaE1CQmlJdkFTWTBQd0UyTWg4QkZqSS9BVFl5SHdFV0ZBSDBmbXRwUEQ4L1BHbHIvR3hvUFQ4L1BXaHNoUDdhQ1JrSm9Ra0pLZ2taQ0ZVR0VRYlhDUmtJS3dvRExEODlhR3o4YkdnOVB6ODlhR3o4YkdnOVAvNmwvdFlJQ0tRSUdnZ3FDUWxXQmdiZkNRa3FDUmtBQUFBQkFBRC90UU9kQXdVQVJ3QkRRRUJGQVFNQUFVY0dBUUFEQUc4QUF3UURid0FDQlFFRkFnRnRBQUVCYmdBRUJRVUVWQUFFQkFWWUFBVUVCVXdDQUVJL09qY3hMeUVnR1JjQVJ3SkhCd1VVS3dFaklnWWRBUlFHSnlZbkxnRUhCZ2NPQVFjR0ZoY2VBVE15TmpjK0FTOEJMZ0VIRGdFbkppY3VBamMyTno0Qk16SVdGeFlYRmdZckFTSUdIUUVVRmpNaE1qWTFFUzRCQTM0NURCRU5DZ2tMU01Gb1NqeFlZUUlDT3pjNmxsUkpoemNLQVFrb0NCWUpOSWRHSkNVMlJoWVBDUllvaEV3NmFpZ01Dd1FQRG9jTEVoQUxBV0FLRHdJUkF3VVJESVlPQ0FnTUIwazVGQThwT2JKbFRwVTRQVUF5TGdrWkNTZ0lBUWNzSHhFSkZpRm1lejhrSlVaTUxDZ0xFQXNNRWdzOEN4QVBDZ0ZlREJFQUJBQUEvOG9EbXdMeUFBOEFId0F2QUQ4QU5rQXpBQUFBQVFJQUFXQUFBZ0FEQmdJRFlBQUdBQWNFQmdkZ0FBUUZCUVJVQUFRRUJWZ0FCUVFGVERVMU5UVTFOVFV5Q0FVY0t3RTBKaU1oSWdZZEFSUVdNeUV5TmpVSE5DWWpJU0lHSFFFVUZqTWhNalkxRVRRbUl5RWlCaDBCRkJZeklUSTJOUk0wSmlNaElnWWRBUlFXTXlFeU5qVURteEVNL093TUVSRU1BeFFNRVpvUkRQMkdEQkVSREFKNkRCRVJEUDJHREJFUkRBSjZEQkdhRVF6ODdBd1JFUXdERkF3UkF0VUxFaElMT2dzUkVRdXREQkVSRERrTUVSRU0vbXdMRWhJTE9nc1NFZ3NCSVFzUkVRczZEQkVSREFBQUFBQUJBQUFBQUFOaUFrVUFEQUFZUUJVQ0FRQUJBRzhBQVFGbUFnQUlCd0FNQWd3REJSUXJFeUV5SGdFSEFRWWlKd0VtTnFBQ3FBb09BUWYrc3dnZkNmNnZDZzRDUlE0VUNQNW9EQXdCbUEwZEFBSUFBUCtJQTZzRExRQWVBQzBBQ0xVdEtCUUlBaTByQVFVR0xnRTFFVFFtQnc0QkJ3WVhIZ0VYRmhjV056NEJOelkxTkNjdUFRVWxQZ0VuSmljbUp5WUdGUkVVRmdOci9uWU5HeElYRFdDVkpDWUxDbWRSVW1GZVdGU0RKQ1lHQWh2K25RRjdFUWtMUW1CamNoUWdGUUdRMlFjR0ZRNEIyQTRTQkJxR1hXQm9ZS1F6TlFvS0hSeDNVVk5jSXlJT0RGL0tDQ2NRV3p3K0VnUWJGUDVPRFF3QUFBQUFCQUFBLzdNRHdnTUZBQjBBSmdBdkFEZ0FRVUErQ0FFQUF3QnZCd1VDQXdJRGJ3c0dDZ1FKQlFJQkFtOEFBUUZtTVRBb0p4OGVBUUExTkRBNE1UZ3NLeWN2S0M4akloNG1IeVlVRWdBZEFSME1CUlFyQVNJSEJnY0dGUlFYRmc4QkJoWS9BVFlYRmpNMk56WTNOaVluSmljbUFTSW1ORFl5RmhRR015SW1ORFl5RmhRR015SW1ORFl5RmhRR0FmUithMmc5UGpnS0Jqd0VFUXltRFJSdmdYeHJhRHcvQVQ4K2FHdituQjh1TGo4dExjY2ZMaTQvTFMzSEh5NHVQeTB0QXdVNU9GOWljMlptRHhLakRCQURQd1lLUFFFNk9GOWk2R05nTnpyK0RDNC9MUzFBTFM0L0xTMC9MaTQvTFMwL0xnQUFBQUlBQVArUUE4SURMQUFVQUNZQUprQWpCQUVBQXdCdkFBTUNBMjhBQWdFQ2J3QUJBV1lCQUNNZ0doY0xDZ0FVQVJRRkJSUXJBU0lIQmdjR0ZCY1dGeFl5TnpZM05qUW5KaWNtRXc0Qkl5RWlKaWNtTno0Qk15RXlGaGNXQWZSOWEyazlQejg5YVd2NmJHZytQejgrYUd4b0FoQUwvbkFMRVFFREF3SVFDd0dRQ3hBQ0F3TXNQejVvYlBwc2FENC9QejVvYlBwc2FENC8vaEVLRHc0TEl4OEtEdzhLSWdBQUFBRUFBUC93QXRzQzBBQU1BQXEzQUFBQVpoTUJCUlVyQVJFVURnRW5BU1kwTndFMkZnTGJEaFFJL21nTURBR1lEUjBDc3YxWUNnNEJCd0ZOQ1I4SUFWRUtEZ0FBQXdBQS80NER3Z00wQURjQWJnQ1NBRHhBT1lxQmVBTUZBQUZIQUFJREFtOEFBd1FEYndBRUFRUnZBQUVBQVc4QUFBVUFid0FGQmdWdkFBWUdabzJNaUlkN2VuWjFTRVlqRUFjRkZpc2xJaWNtSnlZR0R3RU9BU1luTGdFMlB3RTJOellXRnhZWEZoY2VBVDhCTmk4QkppY21KeTRCQmdjR0R3RU9BUllYSGdFMlB3RTJKZ0UrQVNZbkxnRUdEd0VHRmhjV0Z4WTJQd0UrQVJZWEhnRUdEd0VHQndZbkppY21KeTRCRHdFT0FSOEJGaGNXRnhZWEZqWTNOamNYTnpZMEx3RW1JZzhCSnlZaUR3RUdGQjhCQndZVUh3RVdNajhCRnhZeVB3RTJOQ2NCemhFU0RoY0ZDd01IR0VCQ0dSd1ZFUnAvR0NJVUtSTVpFZ2dKQlJNSE1Bb0lDZ2tFRFJ3bVVGRWxHUnQ3TENJYUtpeDZleTRxQ0FvQk1DMGZJeTh0ZDNVc0pna0lEQ2dmQmdzREJ4aEFRaGtjRlJFYWZ4VWxLaVlZRXdnSEJSTUhMZ1lCQlFrSUJoSVdJaTBuVWlVZUZ0VlpCZ1kyQmc4R1ZsTUdEd1kyQmdaVFVRWUdOZ1lQQmxGV0JnOEdOZ1lHa2dZQ0NBRUNBd2dZRXdzV0dVVkdHWDhZQ1FVRENBa1VDZzBKQWdjd0RBME1DUVlORkJjUERSUUxHM3NzZG5ZdEx5TWVMaW9JRmdFUUxudDZMQ29hSWl3bUNSWUNBd29CQWdNSEdCTUxGaGxGUmhsK0Znc01FZ2dVQ0E0SUFnY3VCUTRHQ2dzR0VROFdDUWdORkJBVzVsZ0dEd1kyQmdaYlV3WUdOZ1VRQmxKUkJnOEdOZ1lHVVZjRkJUWUdEd1lBQUFBQUJRQUEvNUFEd2dNc0FBOEFId0F2QUVjQVh3QnFRR2NNQVFBQUFRSUFBV0FLRFFJQ0FBTUpBZ05nRUFFSkFBc0VDUXRnQnc0Q0JBQUZCZ1FGWUE4QkJnZ0lCbFFQQVFZR0NGZ0FDQVlJVEVwSU1qQWlJQklRQWdCYVYxSlBTRjlLWDBJL09qY3dSekpIS2ljZ0x5SXZHaGNRSHhJZkNnY0FEd0lQRVFVVUt3RWhJZ1lkQVJRV015RXlOajBCTkNZSElTSUdIUUVVRmpNaE1qWTlBVFFtQXlFaUJoMEJGQll6SVRJMlBRRTBKZ2NoSWlZOUFUUW1Ld0VpQmgwQkZCWXpJVEkyUFFFMEpnTWhJaVk5QVRRbUt3RWlCaDBCRkJZeklUSTJQUUUwSmdPbC9KNExFUkVMQTJJTEVoSUwvVjhNRVJFTUFxRUxFaElML1Y4TUVSRU1BcUVMRWhJTC9SSU1FUklMT2dzUkVRc0RZZ3NTRWd2OUVnd1JFZ3M2Q3hFUkN3TmlDeElTQXl3U0MyQU1FUkVNWUFzUzV4SUxPZ3NTRWdzNkN4TCtmeEVNT1F3UkVRdzVEQkhBRVF5R0RCRVJEUG9MRWhJTE9nc1NBWUVSQzRjTEVoSUwrZ3NTRWdzNkN4SUFBQUlBQUFBQUF1NENpZ0FYQUNVQU1FQXRCUUVEQVJVQkFnQUNSd0FCQXdGdkFBTUFBMjhFQVFBQ0FHOEFBZ0ptQWdBaUlCSVBDZ2NBRndJWEJRVVVLd0VqSWlZOUFUUW1Ld0VpQmhVUkZCWXpJVEkyTlJFMEpqY25KaUlHSFFFVUZqc0JNalkwQXRxTUdTTU1DTWdaSXlNWkFYd1pJd3dJaEFRTUNCZ1FhZ1lJQWE0akdZd0lEQ01aL2lBWkl5TVpBU3dJREZTRUJBZ0dhaEFZQ0F3QUFBQUZBQUFBQUFNV0Fvb0FGd0FuQURjQVJ3QlhBSEJBYlFVQkFRQXdLQUlHQlZCSUFna0tEUUVDQ1VBNEFnY0NCVWNMQVFBQUFRTUFBV0FNQVFNQUJRWURCV0FBQmdBS0NRWUtZQUFKQ0FFQ0J3a0NZQUFIQkFRSFZBQUhCd1JZQUFRSEJFd2FHQUlBVkZKTVNrUkNQRG8wTWl3cUloOFlKeG9uRWc4S0J3QVhBaGNOQlJRckFTRWlCaDBCRkJZeklUSVdGUkVVRmpzQk1qWTFFVFFtQnlFaUJoVVJGQll6SVRJMk5SRTBKZ1UwTmpzQk1oWWRBUlFHS3dFaUpqVVhGQVlyQVNJbVBRRTBOanNCTWhZVk54UUdLd0VpSmowQk5EWTdBVElXRlFMYS9zQVpJd1lFQVNJWkl3WUVDaGtqSTZYK3dCa2pJeGtCUUJrakkvNjdEQWpJQ0F3TUNNZ0lEUEFNQ01nSURBd0l5QWdNS0F3SThBZ01EQWp3Q0F3Q2lpTVpDZ1FHSXhuK3lnUUdJeGtCVkJrampDTVovcXdaSXlNWkFWUVpJMlFJREF3SUZBZ01EQWp3Q0F3TUNCUUlEQXdJWkFnTURBZ1VDQXdNQ0FBSkFBRC9rQVBDQXl3QUR3QWZBQzhBUHdCUEFGOEFid0NIQUo4QWxrQ1RGQUVBQUFFQ0FBRmdFaGNHRmdRVkJnSUhCUUlERVFJRFlCd0JFUUFUQ0JFVFlBOGFEQmtLR0FZSURRc0NDUTRJQ1dBYkFRNFFFQTVVR3dFT0RoQllBQkFPRUV5S2lISndZbUJTVUVKQU1qQWlJQklRQWdDYWw1S1BpSitLbjRKL2VuZHdoM0tIYW1kZ2IySnZXbGRRWDFKZlNrZEFUMEpQT2pjd1B6SS9LaWNnTHlJdkdoY1FIeElmQ2djQUR3SVBIUVVVS3dFaElnWWRBUlFXTXlFeU5qMEJOQ1lGSXlJR0hRRVVGanNCTWpZOUFUUW1JU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZQkl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWUhJU0ltUFFFMEppc0JJZ1lkQVJRV015RXlOajBCTkNZRElTSW1QUUUwSmlzQklnWWRBUlFXTXlFeU5qMEJOQ1lEcGZ5ZUN4RVJDd05pQ3hJUy9kcUdEQkVSRElZTUVSRUJBb2NMRWhJTGh3c1JFUUVDaHdzU0VndUhDeElTL2RxR0RCRVJESVlNRVJFQkFvY0xFaElMaHdzUkVRRUNod3NTRWd1SEN4SVNDLzBTREJFU0N6b0xFUkVMQTJJTEVoSUwvUklNRVJJTE9nc1JFUXNEWWdzU0VnTXNFZ3RnREJFUkRHQUxFdWNTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hMK2Z4RU1PUXdSRVF3NURCRVJERGtNRVJFTU9Rd1JFUXc1REJFUkREa01FY0FSRElZTUVSRU0rZ3NTRWdzNkN4SUJnUkVMaHdzU0VndjZDeElTQ3pvTEVnQUFBQUFFQUFEL2tBUEpBeXdBRHdBbkFEOEFUd0JvUUdVQURBWU1id0FOQlFjRkRRZHRBQWNDQlFjQ2F3UUJBZ2dGQWdockN3RUlBd1VJQTJzQUF3QUZBd0JyQUFBSkJRQUphd0FCQ2dGd0FBWUFCUTBHQldBQUNRb0tDVlFBQ1FrS1dBQUtDUXBNVFVwRlFqMDdOalUwTXlRVkVSUWtGQ00xTWc0RkhTc2xOQ1lqSVNJR0hRRVVGak1oTWpZMUF5TWlCaDhCRmpJL0FUWW1Ld0UwTmpjMk16VWlCdzRCQlNZaUR3RUdGanNCRkE0Qkl4VXlOelkzTmpVek1qWW5FelFtSXlFaUJoMEJGQll6SVRJMk5RR0JFZ3YrM3dzUkVRc0JJUXNTNVY0UEN3aWFCZzhHbWdnTERsczNLeTR2VlVkRlVRS0lCZzhHbWdnTERsMHhXRGxWU0VZb0tsNFBDd2dDRWd2KzN3c1NFZ3NCSVFzU2dRc1NFZ3ZVQ3hJU0N3SCtFd2lnQkFTZ0NSSXZXUndjZENrcGpUUUVCS0FJRXpsWE1IUXBLVVZJVlJNSUFlTUxFaElMMUFzU0Vnc0FBQUlBQVArM0E1c0RCUUFQQURvQVBFQTVBQU1BQTI4SEFRQUNBRzhFQ0FJQ0JRSnZBQVVCQlc4QUFRWUJid0FHQm1ZU0VBSUFNakFxS0NNaEdoY1FPaEk2Q2djQUR3SVBDUVVVS3hNaklnWVZFUlFXT3dFeU5qVVJOQ1lGSXlJbVBRRTBKaXNCSWdZZEFSUUdCd1lqSWdZVkVSUVdNeFlYRmhjV0Z4WXpNamMyTnpZOUFUUW15bUFNRVJFTU1DQXRFZ0o1Y3g4dUxTQXdDeElzSkNZdERCRVBEQ2tuR0Nvdkdpd3dWekZESWlndEFiNFJEUDVHQ3hJdUh3R0tEQkVUTGgvQUlDMFJESE16WFJ3ZUVReitnQXdSQWdrRkRROEZDUW9PSlN0UDhDQXRBQUFBQUFJQUFQK1FBOElETEFBZkFFTUFSMEJFTUFFRkJnRkhBQVlGQm04SEFRVUFCVzhDQ0FJQUJBQnZBQVFCQkc4QUFRTURBVlFBQVFFRFdBQURBUU5NQWdBK1BUVXlLaWtpSVJvWEVnOEtCd0FmQWg4SkJSUXJKU01pQmgwQkZBWWpJU0ltUFFFMEppc0JJZ1lWRVJRV015RXlOalVSTkNZRkZqSTNBVFkwTHdFbUlnOEJCaVkxRVM0Qkt3RWlCaFVSRkFZdkFTWWlEd0VHRkJjRHBUb0xFaEVNL1lZTUVSSUxPZ3NSTFI4REFpQXRFdjR4Q0JnSUFRUUlDQ2tJRndsc0NCZ0JGQW82Q3hJWUNHd0pGd2dwQ0FqK0VndkFEQkVSRE1BTEVoSUwvdndnTFM0ZkFRUUxFbjhKQ1FFRUNCY0pLQWtKYXdrSkRRR2FDeElTQy81b0RRa0phd2tKS2drWENBQUFBQUFCQUFBQUFBUERBcVFBRndBa1FDRUFBZ0FDYndBQUFRQnZBQUVEQXdGVUFBRUJBMWdBQXdFRFRCY1RFeFlFQlJnckpRRW1ORDhCTmpJZkFSWXlOd0UyTWg4QkZoUUhBUVlpQVcvK3d3Z0lLZ2taQ2U0R0VRWUIwd2taQ1NvSUNQM2dDUmtoQVQ4SkdRZ3JDQWp4QlFVQjF3a0pLZ2dhQ1AzYUNnQUFBUUFBLzdVQzd3TUZBQmNBRVVBT0FBQUJBRzhBQVFGbUh4WUNCUllyQlFFbU5EY0JOaklmQVJZVUJ3RUdGQmNCRmhRUEFRWWlBcEwrY0FrSkFaQUlHZ2dxQ1FuK3d3Z0lBVG9JQ0NzSEYwTUJpZ2taQ0FHTENBZ3JDQm9JL3NvSUdRbit5Z2dhQ0NvSEFBQUFCQUFBLzVBRHdnTXNBQlVBTEFCQ0FGZ0FUMEJNVVVnT0JRUUJBRHN5SlJ3RUFnUUNSd2NJQWdBQkFHOEFBUVlCYndBR0F3WnZBQU1FQTI4QUJBSUVid1VKQWdJQ1poZ1dBZ0JYVkV0S1FUNDFOQ01pRml3WUxBd0xBQlVDRlFvRkZDc0JJU0lHSHdFSEJoUWZBUll5UHdFWEZqWTFFVFFtQVNFeU5pWXZBVGMyTkM4QkppSVBBU2NtQmhVUkZCWWxFVFFtRHdFbkppSVBBUVlVSHdFSEJoWXpJVEkyQVJFVUZqOEJGeFl5UHdFMk5DOEJOelltSXlFaUJnT3IvdFVPQnd4ZXJRY0hSd2dVQ2E5ZUN4WU8vSThCS1FrS0FnaGVyUWdJUndjVkNhMWdEUmNTQTRrV0MxNnRCeFVKUndjSHIxNE1CdzRCS0FrTi9HVVpDMkN2Q0JZSFJ3Z0lyVjRMQmcvKzJBb1VBeXdXQzE2dEJ4VUpSd2NIcjE0TUJ3NEJLQWtOL0dRTUVnZGdyd2dXQjBjSUNLMWVDd1lQL3RnS0ZSY0JLdzRIREY2dENBaEhCeFVKcjE0TEZnNERjZjdZRHdZTFhxMEhCMGNJRkFtdFlBMFlFd0FBQUFBQ0FBRC9oZ1BMQXpFQU9nQndBQXEzQUFBQVppUUJCUlVySlM4QkppY21CZzhCRGdFbUp5NEJOajhCTmpjMkZ4WVhGaGNlQVQ4Qk5pY21Md0VtSnlZbkpnWUhCZzhCRGdFWEZoY1dGeFkyUHdFMk5DWUJKaWNtQmc4QkJoWVhGaGNXUHdFK0FSWVhIZ0VHRHdFR0J3WW5KaWNtSnk0QkR3RU9BUmNXRnhZWEhnRTJOelkvQVRZM05pWUNDeWdQRVFrRkRnUUpIRWxMSENBWUV4MlNHeWN2TFNBU0Nna0dGZ2MyQ3drR0RnY2RFU1kxTFY0b0l4aU5NaWNQRHpBeVIwU01OREFHREFGYU5FVkRoakVzQ2dvTktTZ09DUW9iU2tvY0lCa1RIcElhSnpBdEhCWUtDUVlXQnpVR0FRVUlFeEljS1Z4ZEtTTVpralVSRWlnd0JnUUVBd0lEQkFvY0ZnNFpHMDVRSHBJWkRnc1JEeElLRHdvQ0NEWU1FUWdQQ0JzSkdRb0lEUllVR0kweWgwSkZNemNVRkNNME1RUVFEUUswTUE4UEtESXFDaHNDQXd3RENRa2NGZzBaRzA5UUhwSWFEQXdTREJRTERnc0NDVFlGRUFnTkVSUVJHaEVPRlJRWmtqUkhSWXNBQUFFQUFQL2JBM1VDM2dBdkFEbEFOaXNCQXdFQlJ3QUFCQUJ2QUFFQ0F3SUJBMjBBQXdOdUJRRUVBZ0lFVkFVQkJBUUNXQUFDQkFKTUFBQUFMd0F2TnhrWEhBWUZHQ3NCSmljbUp5WS9BVFkwTHdFbUlnY0JCaFFYQVJZeVB3RTJOQzhCSmpZM0ZoY1dGeFlYRkJZN0FUSTJKeTRCSnlZQmNRSURCUUlDQldzSkNTZ0pGd2orL0FrSkFRUUlGd2tvQ1FscENRZ0thbHBZTmpnR0VnczZEUTRDQjRod2RRSDJBd01IQmdrRmF3a1hDU29KQ2Y3OENCY0ovdndJQ0NrSUdBaHNDQllEQkRZMVdGdHJDeEFTRFlybFEwVUFEUUFBLzVBRG13TXNBQThBSHdBdkFEOEFUd0JmQUc4QWZ3Q1BBSjhBcndDL0FNOEF3RUM5R2dFQUFBRUNBQUZnSFFZY0JCc0ZBZ2NGQWdNSUFnTmdJQXdmQ2g0RkNBMExBZ2tPQ0FsZ0l4SWlFQ0VGRGhNUkFnOFVEZzlnSmhnbEZpUUZGQlVWRkZRbUdDVVdKQVVVRkJWWUdSY0NGUlFWVE1MQXNyQ2lvSktRZ29CeWNHSmdVbEJDUURJd0lpQVNFQUlBeXNmQXo4TFB1cmV3djdLL3FxZWdyNkt2bXBlUW41S2Zpb2VBajRLUGVuZHdmM0ovYW1kZ2IySnZXbGRRWDFKZlNrZEFUMEpQT2pjd1B6SS9LaWNnTHlJdkdoY1FIeElmQ2djQUR3SVBKd1VVS3dFaElnWWRBUlFXTXlFeU5qMEJOQ1lGSXlJR0hRRVVGanNCTWpZOUFUUW1JU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZRkl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWUZJeUlHSFFFVUZqc0JNalk5QVRRbUlTTWlCaDBCRkJZN0FUSTJQUUUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1lGSXlJR0hRRVVGanNCTWpZOUFUUW1JU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZRGZ2enNEQkVSREFNVURCRVIvWTJ0REJFUkRLMExFaElCS2EwTUVSRU1yUXNSRVFFb3JRc1NFZ3V0REJFUi9ZMnREQkVSREswTEVoSUJLYTBNRVJFTXJRc1JFUUVvclFzU0VndXREQkVSL1kydERCRVJESzBMRWhJQkthME1FUkVNclFzUkVRRW9yUXNTRWd1dERCRVIvWTJ0REJFUkRLMExFaElCS2EwTUVSRU1yUXNSRVFFb3JRc1NFZ3V0REJFUkF5d1NDMkFNRVJFTVlBc1M1eElMT2dzU0VnczZDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDem9MRXNBU0N6b0xFaElMT2dzU0VnczZDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4TEJFUXc1REJFUkREa01FUkVNT1F3UkVRdzVEQkVSRERrTUVSRU1PUXdSd0JJTE9nc1NFZ3M2Q3hJU0N6b0xFaElMT2dzU0VnczZDeElTQ3pvTEVnQUFBUUFBQUFBRE5BSlBBREFBT1VBMkpRNENBQUVaQVFRQUFrY3RCUUlCUlFVQkJBQUVjQUlCQVFBQUFWUUNBUUVCQUZnREFRQUJBRXdBQUFBd0FEQTJIaVlvQmdVWUt5VWlKeVluQXdjT0FTc0JJaVk5QVRRMk93RTNQZ0VlQVJjVE56NEJIZ0VmQVRNeUZoMEJGQVlyQVNJbUx3RUhEZ0VCNmdjSERBUk9RUU1QQ1ZvSURBd0lSbHdFRUJRUEFrOW9CQkFTRGdRMFdnZ01EQWh1Q1E4RUlYQUVEb0lFQmhBQk9KVUpDZ3dJRkFnTTFBa0tBZ3dLL3NUbkNRb0NDd2g0REFnVUNBd0tDRTMzQ0FvQUNBQUFBQUFEREFLS0FBOEFId0F2QUQ4QVR3QmZBRzhBandEWVFCeUZBUk1PRFFFRkFHaGdTRUFvSUFZRUJWaFFPREFZRUFZQ0F3UkhTN0FWVUZoQVBSRUJEdzRPRDJNU0VCVUREZ0FUQUE0VFlSUUJBQTBKQWdVRUFBVmdEQWdDQkFzSEFnTUNCQU5nQ2dZQ0FnRUJBbFFLQmdJQ0FnRllBQUVDQVV3YlFEd1JBUThPRDI4U0VCVUREZ0FUQUE0VFlSUUJBQTBKQWdVRUFBVmdEQWdDQkFzSEFnTUNCQU5nQ2dZQ0FnRUJBbFFLQmdJQ0FnRllBQUVDQVV4WlFETnhjQUVBaVllQ2dIMThlWGgxZEhDUGNZOXNhbVJpWEZwVVVreEtSRUk4T2pReUxDb2tJaHdhRkJJS0J3QVBBUThXQlJRckFTRWlCaFVSRkJZeklUSTJOUkUwSmdFVUJpc0JJaVk5QVRRMk93RXlGaFUxRkFZckFTSW1QUUUwTmpzQk1oWVZGeFFHS3dFaUpqMEJORFk3QVRJV0ZUVVVCaXNCSWlZOUFUUTJPd0V5RmhVWEZBWXJBU0ltUFFFME5qc0JNaFlWTlJRR0t3RWlKajBCTkRZN0FUSVdGUk1qTlRRbUlnWWRBU00xTkNZaUJoMEJJeUlHSFFFVUZqTWhNalk5QVRRbUF2ajkrQWdNSXhrQnVCa2pEUDZRREFnb0NBd01DQ2dJREF3SUtBZ01EQWdvQ0F5TURBZ29DQXdNQ0NnSURBd0lLQWdNREFnb0NBeU1EQWdvQ0F3TUNDZ0lEQXdJS0FnTURBZ29DQXdvTWhjaEdMUVhJUmd5R1NNTUNBSUlDQXdqQWE0TUNQN1VHU01qR1FFc0NBeis2QWdNREFnb0NBd01DR1FJREF3SUtBZ01EQWkwQ0F3TUNDZ0lEQXdJWkFnTURBZ29DQXdNQ0xRSURBd0lLQWdNREFoa0NBd01DQ2dJREF3SUFRUVVFUmNYRVJRVUVSY1hFUlFqR1JRSURBd0lGQmtqQUFBR0FBRC90d09iQXdVQUR3QWZBQzhBUHdCUEFGOEFWMEJVRGdRTkFnd0ZBQUVBYndVREFnRUdBVzhSQ2hBSUR3VUdCd1p2Q3drQ0J3ZG1VbEJDUURJd0lpQVNFQUlBV2xkUVgxSmZTa2RBVDBKUE9qY3dQekkvS2ljZ0x5SXZHaGNRSHhJZkNnY0FEd0lQRWdVVUt3RWpJZ1lWRVJRV093RXlOalVSTkNZaEl5SUdGUkVVRmpzQk1qWTFFVFFtSVNNaUJoVVJGQlk3QVRJMk5SRTBKZ0VqSWdZVkVSUVdPd0V5TmpVUk5DWWhJeUlHRlJFVUZqc0JNalkxRVRRbUlTTWlCaFVSRkJZN0FUSTJOUkUwSmdFWHJRd1JFUXl0Q3hJU0FTbXREQkVSREswTEVSRUJLSzBMRWhJTHJRd1JFZjJOclF3UkVReXRDeElTQVNtdERCRVJESzBMRVJFQktLMExFaElMclF3UkVRTUZFUXordVFzUkVRc0JSd3dSRVF6K3VRc1JFUXNCUnd3UkVReit1UXNSRVFzQlJ3d1Ivak1TQy82NURCRVJEQUZIQ3hJU0MvNjVEQkVSREFGSEN4SVNDLzY1REJFUkRBRkhDeElBQUFBQUJnQUFBQUFEd2dLbEFBOEFId0F2QUQ4QVR3QmZBRVJBUVFBQ0FRSnZDd0VKQ0Fsd0FBRUFBQU1CQUdBQUF3WUJCQVVEQkdBSEFRVUlDQVZVQndFRkJRaFlDZ0VJQlFoTVhWcFZVazFLTlRVMU5UVTFOVFV5REFVZEt4TVVCaXNCSWlZOUFUUTJPd0V5RmhVaE5DWWpJU0lHSFFFVUZqTWhNalkxQlRRbUt3RWlCaDBCRkJZN0FUSTJOU1UwSmlNaElnWWRBUlFXTXlFeU5qVUZOQ1lyQVNJR0hRRVVGanNCTWpZMUpUUW1JeUVpQmgwQkZCWXpJVEkyTlpvU0N6b0xFUkVMT2dzU0F5Z1NDLzFmREJFUkRBS2hDeEw4MkJJTE9nc1JFUXM2Q3hJQzJ4SUwvYXdNRVJFTUFsUUxFdjBsRWdzNkN4RVJDem9MRWdNb0VndjlYd3dSRVF3Q29Rc1NBazRMRVJFTE9nd1JFUXdNRVJFTU9nc1JFUXZUQ3hJU0N6b0xFaElMT2dzU0VnczZDeElTQzlNTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWhJTEFBQUFBQVlBQUFBQUE4SUNwUUFQQUI4QUx3QS9BRThBWHdBOFFEa0NBUUFEQVFFRUFBRmdCZ0VFQndFRkNBUUZZQW9CQ0FrSkNGUUtBUWdJQ1ZnTEFRa0lDVXhkV2xWU1RVbzFOVFUxTlRVMU5USU1CUjByRXpRbUt3RWlCaDBCRkJZN0FUSTJOU1UwSmlNaElnWWRBUlFXTXlFeU5qVUZOQ1lyQVNJR0hRRVVGanNCTWpZMUpUUW1JeUVpQmgwQkZCWXpJVEkyTlFVMEppc0JJZ1lkQVJRV093RXlOalVsTkNZaklTSUdIUUVVRmpNaE1qWTFtaElMT2dzUkVRczZDeElES0JJTC9WOE1FUkVNQXFFTEV2ellFZ3M2Q3hFUkN6b0xFZ0xiRWd2OXJBd1JFUXdDVkFzUy9TVVNDem9MRVJFTE9nc1NBeWdTQy8xZkRCRVJEQUtoQ3hJQ2lBd1JFUXc2Q3hFUkN6b01FUkVNT2dzUkVRdlRDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDOU1MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFaElMQUFBQUFRQUEvNkFEd2dNYkFDc0FFMEFRQWdFQUFRQnZBQUVCWmo0ZU13TUZGeXNCRXg0Qk15RXlGZ1lQQVE0QkZ4TVdEZ0V2QVNZaUR3RUdMZ0UzRXpZbUx3RXVBVFl6SVRJM0V6NEJGZ0lQV0FNUENRRWhEaEFDQytvSUJRTmNCQTBZQytrSEV3anJDeGtOQlZnREJRZnJDd0lSRFFFaEZnVmFCQmNYQXdQKzh3Z0pGUnNJclFZU0NmN3JEUllHQ0tvRkJhb0lCaFlOQVJVSkVnYXRDQnNWRVFFUERRa0xBQUFBQVFBQS83WUM3d01GQUJjQUVVQU9BQUVBQVc4QUFBQm1IeFlDQlJZckNRRVdGQWNCQmlJdkFTWTBOd0UyTkNjQkpqUS9BVFl5QVZnQmpna0ovbklJR1FrcUNRa0JPUWtKL3NrSkNTb0lHQUw5L25ZSUdnaitkZ2tKS2dnYUNBRTJDQm9JQVRZSUdnZ3FDQUFBQVFBQUFBQURtd0paQUJjQUlFQWRBd0VCQWdGdkFBSUFBQUpVQUFJQ0FGZ0FBQUlBVEJNVEZ4SUVCUmdyQ1FFR0lpY0JKalEvQVRZeUZ3RVdNamNCTmpJZkFSWVVBNVArZGdnYUNQNTJDUWtxQ1JrSUFUWUlHZ2dCTmdnYUNDb0lBZnorY2drSkFZNElHZ2dxQ1FuK3h3a0pBVGNKQ1NvSUdBQUFBQVFBQVArMkE5VUN1QUFrQURRQVJBQlVBRXBBUndNQkFBZ0pDQUFKYlFBQ0NRb0pBZ3B0QUFRS0JIQUFCUUFHQVFVR1lBY0JBUUFJQUFFSVlBQUpBZ29KVkFBSkNRcFlBQW9KQ2t4U1QwcEhOVFUxT0JjVEZUZ1JDd1VkS3lVbUlnOEJCaVk5QVRRbUt3RWlCaDBCRkFZaUx3RW1JZzhCQmhRZkFSWXlQd0UyTkNjQk5DWWpJU0lHSFFFVUZqTWhNalkxRlRRbUl5RWlCaDBCRkJZeklUSTJOUlUwSmlNaElnWWRBUlFXTXlFeU5qVUIxUWdZQ0VVSkdCRU1PZ3NSREJBRlJRa1hDU29KQ2QwSkZ3bmZDQWdCMVJJTC9UZ0xFUkVMQXNnTEVoSUwvZmtNRVJFTUFnY0xFaElML3JrTEVoSUxBVWNMRXU4SUNFWUlDUTMrQ3hFUkMvNEpDZ1ZHQ0FnckNCZ0kzUWtKM3dnWUNBSFZEQkVSRERrTUVSRU1yUXNSRVFzNkN4SVNDNjBMRWhJTE9nc1NFZ3NBQVFBQS81RUR3Z01yQUVrQVBFQTVBQUlCQW04REFRRUFBVzhJQVFZRkJ3VUdCMjBBQndkdUJBRUFCUVVBVkFRQkFBQUZXQWtCQlFBRlRFRS9KQlFqTFNNa0ZTTWxDZ1VkS3dFbkpnWWRBU01pSmowQk16SStBUzhCSmlJUEFRWVdPd0VWRkFZckFUVTBKZzhCQmhRZkFSWTJQUUV6TWhZZEFTTWlCaDhCRmpJL0FUWW1Ld0UxTkRZN0FSVVVIZ0UvQVRZMEE3eWdDQlBBQ1FweENRMEJCYTRGRUFXdUNBd09iUW9Kd0JNSW9BUUVvQWdUd0FrS2NRNE1DYTBGRUFhdENBc1BiUW9Kd0FvTkJLQUdBV3l0Q0FzUGJ3b0p3QW9OQktBRkJhQUlFOEFKQ25FT0RBaXVCUkFGcmdnTURtMEtDY0FUQ0tBRUJLQUlFOEFKQ25FSkRRRUdyUWNRQUFBQUJRQUEvN2NENkFNRkFBOEFId0F2QUQ4QVZRQTlRRG9BQmdBR2J3QUhBd2R3QUFBQUFRUUFBV0FJQVFRSkFRVUNCQVZnQUFJREF3SlVBQUlDQTFnQUF3SURURTFMSnpVMU5UVTFOVFV5Q2dVZEt3RTBKaU1oSWdZZEFSUVdNeUV5TmpVRE5DWXJBU0lHSFFFVUZqc0JNalkxRXpRbUl5RWlCaDBCRkJZeklUSTJOUUUwSmlzQklnWVZFUlFXT3dFeU5qVUJKZ1lkQVNNaUJoMEJGQlk3QVJVVUZqOEJOalFuQStnUkRQNjVDeElTQ3dGSERCRk5FUXo2Q3hJU0Mvb01FVTBSRFA2NUN4SVNDd0ZIREJIK014SUxPZ3NTRWdzNkN4TCttZ2tTZlFzU0VndDlFd2lmQlFVQ2RRc1NFZ3M2Q3hJU0MvNXNEQkVSRERrTUVSRU1BU0FNRVJFTU9nc1JFUXNCbEF3UkVRejg3QXdSRVF3Q1dBZ0xEbkFSRERvTEVYSU9EQW10Qmc4R0FBQUFBZ0FBLzdjRGRRSzRBQThBTkFCc1M3QVJVRmhBSkFVQkF3UURid0FFQWdSdkJ3RUNBQUFDWXdZQkFBRUJBRlFHQVFBQUFWa0FBUUFCVFJ0QUl3VUJBd1FEYndBRUFnUnZCd0VDQUFKdkJnRUFBUUVBVkFZQkFBQUJXUUFCQUFGTldVQVhFUkFDQUN3cEl5RWJHQkEwRVRRS0J3QVBBZzhJQlJRckpTRWlCaDBCRkJZeklUSTJQUUUwSmlVbUp5NEJOUkUwTmpzQk1oWVZFUlFlQVJjV1BnRTFFVFEyT3dFeUZoVVJGQWNHQndZRFdQMDRDeElTQ3dMSUN4SVMvb1JIUERsRUZoQW5FQlltUWlndFN5d1dFQ2NRRmljbVFFSXFFUXM2REJFUkREb0xFVTBFSnlaOVJ3RUdFQllXRVA3NEtVY3RBZ01vU1N3QkRSQVdGaEQrODB4QVBpTWtBQUFBQlFBQUFBQUROQUppQUJrQU1RQTZBRU1BVEFCYlFGZ0xBUUVBRVFFQ0F3SkhBQUFCQUc4SkFRRUlCZ0lFQXdFRVlBd0hDd1VLQlFNQ0FnTlVEQWNMQlFvRkF3TUNXQUFDQXdKTVJVUThPek15R3hwSlNFUk1SVXhBUHp0RFBFTTNOakk2TXpvc0tob3hHekVuRFFVVkt3RW1OelkxTkM0Qkl5SUdCeDRDRlJRSE5qYzJId0VXTmljQklnNEJGUlFYRmc4QkJoWS9BVFlYRmpNeVBnRTBMZ0VISWlZME5qSVdGQVl6SWlZME5qSVdGQVl6SWlZME5qSVdGQVlERndJRUd6dGxQQ1pISFQ1ak9SVWVHd2NGUUFnTkF2NWxQR1U3SEFNQkZRTU5DVUFJQkRVL1BHVTdPMlcwRUJnWUlSY1haeEFZR0NFWEYyY1FHQmdoRnhjQkhRZ0VNVFk1WURrWkZnMU5iajgzTHdnUUJBTVhBdzBKQVNNNVlEazNNQWNGUXdrTkF4Y0NBeDg1WUhKZ09mb1lJUmNYSVJnWUlSY1hJUmdZSVJjWElSZ0FBQUFBQmdBQUFBQURBZ0tVQUJJQUtnQTZBRW9BV2dCb0FIVkFjaGdCQmdRekt3SURBQ2dCQ3dOVFN3SUtDME03QWdnSkJVY0FBQVlEQmdBRGJRQUVEQUVHQUFRR1lBY05BZ01BQ3dvREMyQUFDZ0FKQ0FvSllBQUlBQVVDQ0FWZ0FBSUJBUUpVQUFJQ0FWZ0FBUUlCVEJVVFpXTlhWVTlOUjBVL1BUYzFMeTBsSWgwYUV5b1ZLaUkxRVE0RkZ5c2xFU0lHRlJFVUZqTWhNalkxSXlJbkppY21BU01pSmowQk5DWXJBU0lHRlJFVUZqTWhNalk5QVRRbUpUUTJPd0V5RmgwQkZBWXJBU0ltTlJjVUJpc0JJaVk5QVRRMk93RXlGaFUzRkFZckFTSW1QUUUwTmpzQk1oWVZOeWNtSWdZZEFSUVdPd0V5TmpRQkloa2pJeGtCTEJrajhDc1JIZzRRQWN4a0dTTU1DS0FaSXlNWkFTd1pJd3ordUF3SVBBZ01EQWc4Q0F6Y0RBaTBDQXdNQ0xRSURDZ01DTndJREF3STNBZ01URndFREFnWUVFSUdDTndCUUNNWi9vUVpJeU1aQkFnWUhBRThJeGxrQ0F3akdmNkVHU01qR2ZBSURDZ0lEQXdJRkFnTURBandDQXdNQ0JRSURBd0laQWdNREFnVUNBd01DS1JjQkFnR1FoQVlDQXdBQVFBQS83VURud01GQUVFQUprQWpBd0VBQVFCdkFBRUNBZ0ZVQUFFQkFsZ0FBZ0VDVEFJQVBEazBNUUJCQWtFRUJSUXJFek15RmgwQkZCWTNOamMrQVJjV0Z4NEJGeFlHQnc0QkJ5NEJQUUUwTmpjK0FUYzJOell1QVNjbUp5WUdCd1lIQmhZN0FUSVdIUUVVQmlNaElpWTFFVFEyYWpvTEVRMEtDUXRJd1doSlBsZGhBZ0k2TnpTR1NnOFVEd3hGZFNVV0NROFdSemNwSUUyU05nd0xCQThPaHdzUURndituZ29QRVFNRkVReUdEZ2dJREFkSk9SUVBLVG15WlU2Vk9EZEFCZ0lTRFRrTUR3SUdTVDRsSkQ5N1ppRVhDQk1vTmdzUUN3d1NDendMRUE4S0FWNE1FUUFBQUFBR0FBRC90d1BDQXdVQUR3QWZBQzhBUHdCVUFIZ0Eva3V3RVZCWVFGd0FBUW9JQ2dFSWJRQUFDQU1EQUdVQUNRSUxBZ2tMYlFBS0ZBRUlBQW9JWUFBREVRRUNDUU1DWVJVQkN3QU1CUXNNWUJJQkJBQUZEUVFGWUFBTkFCQUdEUkJnQUE4SERnOVVFd0VHQUFjT0JnZGdBQThQRGxnQURnOE9UQnRBWFFBQkNnZ0tBUWh0QUFBSUF3Z0FBMjBBQ1FJTEFna0xiUUFLRkFFSUFBb0lZQUFERVFFQ0NRTUNZUlVCQ3dBTUJRc01ZQklCQkFBRkRRUUZZQUFOQUJBR0RSQmdBQThIRGc5VUV3RUdBQWNPQmdkZ0FBOFBEbGdBRGc4T1RGbEFOMWRWUVVBeU1DSWdFaEJ6Y1hCdWFXWmhYMTVjVlhoWGVFOU1SMFJBVkVGVU9qY3dQekkvS2ljZ0x5SXZHaGNRSHhJZk5UTVdCUllyQVJVVUJpTWhJaVk5QVRRMk15RXlGZ0VoTWpZOUFUUW1JeUVpQmgwQkZCWUZJU0lHSFFFVUZqTWhNalk5QVRRbUJ5RWlCaDBCRkJZeklUSTJQUUUwSmdFekZSUVdPd0V5TmpVUk5DWXJBU0lHSFFFVUZoTWpJZ1lkQVJRV093RVZJeUlHSFFFVUZqc0JNalk5QVRRbUt3RTFNekkyUFFFMEpnUENFZ3Y5K1F3UkVRd0NCd3NTL2R3Qldnc1NFZ3YrcGd3UkVRSVQvZmtNRVJFTUFnY0xFaEs0L3FZTUVSRU1BVm9MRWhMOVFEQVNDeFFMRVJZUVZ3c1JFYStrQ3hFUkMzMXpFQllXRUtNTUVSRU1mWFFRRmhZQzFUb0xFUkVMT2dzU0V2N2VFZ3M2Q3hJU0N6b0xFcTBSRERrTUVSRU1PUXdSd0JJTE9nc1NFZ3M2Q3hJQ1ovQU1FUkVNQVJjUUZoRU1Fd3NTL29BU0N4TU1FVTBYRUpvUUZoRU1Fd3NTVFJZUW1oQVhBQVFBQVArUUEzVURNQUFnQUNJQU1nQkdBRXhBU1I0QkFBRkdPd0lHQkFKSEFnY0NBQUVFQVFBRWJRQUVCZ0VFQm1zQUF3QUJBQU1CWUFBR0JRVUdWQUFHQmdWWUFBVUdCVXdDQURnMU1DMG9KUm9ZRVE0SkNBQWdBaUFJQlJRckV6TXlQUUUwUGdFWEhnSVZOUlE3QVRJOUFUUW5KaWNtQndZSERnRUhIZ0VuRlFVMEppTWhJZ1lWRVJRV015RXlOalVsRmdZckFTSW1Qd0V1QVQ0Q0hnRVZGQVlIMUUwVE9GODNNbEV2RkUwVExDeEpTMWRRUkVGT0FnSUxEUUsxTFNEOW1COHVMaDhDYUNBdC90Z0NEQXFNQ2dzQ0loWVdDaWc3TlNBVkV3SGxFUUkyV3pNRUF6aGFNd1lSRVFKV1NVY29LUU1FTENxTFVRZ0pFUWlqSUMwdElQNlNIeTR1SDBBSkVBNExjdzh4T0NnTEZpMGRGeWdNQUFBQUFRQUEvN2NEd3dNRkFCY0FHRUFWQWdFQUFRQnZBQUVCWmdJQURnc0FGd0lYQXdVVUt3RWhJZzRCRndFV0ZSRVVGanNCTWpZMUVUUTNBVFl1QVFPaC9Lb09FZ0VJQVhVUkV3dzZDeEFWQVhrSUFSSURCUklhQ3Y1TUZCNys2d3dSRVF3QkZSc1hBYlFLR2hJQUFRQUFBQUFEbkFKWEFCY0FJRUFkQXdFQkFnRndBQUFDQWdCVUFBQUFBbGdBQWdBQ1RCTVRGeElFQlJnck53RTJNaGNCRmhRUEFRWWlKd0VtSWdjQkJpSXZBU1kwVlFHS0NCb0lBWW9KQ1NvSUdnait5Z2dhQ1A3S0NCa0pLZ2ZBQVk0SkNmNXlDQmtKS2drSkFUc0pDZjdIQ1FrcUNSY0FBZ0FBLzVBRHdnTXNBQlFBUkFBNlFEY0lBUUFGQUc4SEFRVUdCVzhBQmdNR2J3QURBZ052QkFFQ0FRSnZBQUVCWmdFQVBEczROelF6SkNNZ0h4d2JDd29BRkFFVUNRVVVLd0VpQndZSEJoUVhGaGNXTWpjMk56WTBKeVluSmdNWEZoUVBBUVlpTHdFbUlnOEJCaUl2QVNZMFB3RTJOQzhCSmpRL0FUWXlId0VXTWo4Qk5qSWZBUllVRHdFR0ZBSDBmbXRwUEQ4L1BHbHIvR3hvUFQ4L1BXaHNJSllHQmpZRkVBV1dCaEFGbGdZUUJUWUdCcFlHQnBnR0JqWUZFQWFZQlJBR2xnVVFCVFlHQnBZRUF5dy9QV2hzL0d4b1BUOC9QV2hzL0d4b1BULytJNVlHRUFVMkJnYVdCZ2FXQmdZMkJSQUdsZ1VRQnBnRkVBVTJCZ2FZQlFXV0JnWTFCaEFGbGdZUUFBRUFBUC92QThFQ3pRQWpBQzFBS2dBQ0F3SnZBQUVBQVhBQUF3QUFBMVFBQXdNQVdBUUJBQU1BVEFJQUhoc1RFZ3NLQUNNQ0l3VUZGQ3NUSVRJV0R3RUdGQjhCRmpJM0FUWTBKd0VtSWc4QkJoUWZBUllHSXlFaUJoMEJGQlpCQW44TkNRbTRDUWtxQ1JjSUFWRUpDZjZ2Q0JjSktBa0p1QWtKRGYyQkN4RVBBU1FZQ0xrSUdBZ3JDQWdCVXdnWUNBRlJDQWdwQ0JjSnVRb1lFQXM2REJNQUFBQUFBZ0FBLzVBRHdnTXNBQ01BU2dCS1FFY0FBd1VDQlFNQ2JRQUNCQVVDQkdzSUFRQUFBUVlBQVdBQUJnQUZBd1lGWUFBRUJ3Y0VWQUFFQkFkWUFBY0VCMHdDQUVWQ1BUbzFNaTBxSGhzVEVnb0hBQ01DSXdrRkZDc0JJU0lHSFFFVUZqc0JNaFlIQVFZVUh3RVdNamNCTmhZZEFSUVdPd0V5TmpVUk5DWURCd1lkQVJRR0l5RWlKalVSTkRZN0FUSTJQd0UySmlNaElnWVZFUlFXTXlFeU5qVVJOQ1lEcWY2UURCSVNESmdPQ2dyK3VRa0pLQWtYQ1FGR0NSWVVDemdMRWc3NlFSSVJDLzVzREJFUkROME1GUWRDQ0FrTi9vTWZMUzBmQWhzZ0xSZ0RMQTRMT2d3VkZnbit1Z2tYQ1NnSkNRRkhDQWtObUFzVkZBd0JiZzBPL2p4RUVCamJEQkVSREFHVUN4RUpDVUVKR0MwZy9lVWdMUzRmQVgwTkNRQUFCUUFBLzdjRDZBTUZBQlVBSlFBMUFFVUFWUUJMUUVnQUNBSUlid0FKQlFsd0FBSUFBd0FDQTJBR0NnSUFCd0VCQkFBQllBQUVCUVVFVkFBRUJBVllBQVVFQlV3QkFGTlFTMGhEUURzNE16QXJLQ01nR3hnUURnQVZBUlVMQlJRckFTTTFOQ1lQQVFZVUh3RVdOajBCTXpJMlBRRTBKaVUwSmlNaElnWWRBUlFXTXlFeU5qVUROQ1lyQVNJR0hRRVVGanNCTWpZMUV6UW1JeUVpQmgwQkZCWXpJVEkyTlFFMEppc0JJZ1lWRVJRV093RXlOalVCTzNzVENKOEVCSjhKRW5zTUV4TUNvUkVNL3JrTEVoSUxBVWNNRVUwUkRQb0xFaElMK2d3UlRSRU0vcmtMRWhJTEFVY01FZjR6RWdzNkN4SVNDem9MRWdHcmNROExDSzBHRUFXdENRd09iaEVMT2d3Unlnc1NFZ3M2Q3hJU0MvNXNEQkVSRERrTUVSRU1BU0FNRVJFTU9nc1JFUXNCbEF3UkVRejg3QXdSRVF3QUF3QUEvNUFEZFFNd0FBRUFMQUJBQUVoQVJVQTFBZ1lBQVVjQUFnRUFBUUlBYlFRSEFnQUdBUUFHYXdBREFBRUNBd0ZnQUFZRkJRWlVBQVlHQlZnQUJRWUZUQU1DTWk4bkpCOGVHUmNRRGdrSEFpd0RMQWdGRkNzVEZRVWhOVFErQVRjMkhnRVhIZ0U3QVRJMkp5NEJKeVlIQmdjT0FRY1ZJZ1lWRVJRV015RXlOalVSTkNZREZnWXJBU0ltUHdFdUFUNENIZ0VWRkFZSHdBSm8vZ3d2VWpJdVVUc01BZ29IVHdnTUFROWNRa1JNVUVSQlRnSWZMaTRmQW1nZ0xTMzdBZ3dLakFzTEF5SVhGUXdvT3pVZ0ZSTUI5Z2hXV2pOWU9BTURJa0VxQmdvUENFbHpIeDhEQkN3cWpGQmVMU0Qra2g4dUxoOEJiaUF0L29VSkVBOEtjeEF4TnlnTEZpMGRGeWdNQUFJQUFBQUFBelFDZ0FBUEFFZ0FWRUJSTVJZQ0J3SUJSd0FFQWdSdkJnc0NBZ2tCQndNQ0IyQUZBUU1BQ0FBRENHQUtBUUFCQVFCVUNnRUFBQUZZQUFFQUFVd1JFQUVBUlVSQVBqczZOell2TFNRakdoZ1FTQkZJQ2djQUR3RVBEQVVVS3lVaElnWWRBUlFXTXlFeU5qMEJOQ1lUSWdZVkZCWVhEZ0VuTGdFbk5EYytBVFUwSmlJR0ZSUVdGeFlWRGdFSEJpWW5QZ0UxTkNZaUJoUVdNeGNlQVRNaE1qWS9BVEkyTkNZQ3gvNWFCd3dqR1FGVUdTTUxLUmtqQ3dvTk55SW9PUUlDRVJVak1pTVZFUUlDT1NnaU9Bd0tDeU15SXlNWkhBRUxCd0dxQndvQ0hCa2pJNkFMQ0FFWkl5TVpBUWdMQVpvakdRMFpDQjRqQVFJNUtCRUlCeDRUR1NNakdSSWZCd2dSS0RrQ0FpUWVDQmtOR1NNak1pUFdCd2tKQjlZak1pTUFBQUFBQVFBQUFBQURHUUo2QUJ3QUdFQVZBZ0VBQVFCdkFBRUJaZ0VBRkJJQUhBRWNBd1VVS3dFaUJ3WUhCaFVVRnhZUEFRWVdQd0UyRnhZek1qYzJOell1QVNjbUFleFNSa01vS1NZRkF4d0VFZ3hZQ1FoSVZsSkdReWdwQVZGRVJnSjVKaVZBUVV4SVFRZ0lXUXdSQkI4REJTb21KVUJCbUlFbEpnQUFBQUVBQUFBQUEyWUNSUUFNQUJoQUZRQUJBQUZ2QWdFQUFHWUNBQWdIQUF3Q0RBTUZGQ3NsSVNJdUFUY0JOaklYQVJZR0EwajlXQW9PQVFjQlRRa2ZDQUZSQ2c1M0RoUUpBWmNNRFA1cERoMEFBZ0FBLzQ4RHdnTXpBQjBBS2dBa1FDRUJBUUlCRmdFQUFnSkhBQUVDQVc4QUFnQUNid0FBQUdZb0p5SWhHUmdEQlJRckJRRTJOelluTGdNSERnRUhCaDRDRnhZM05qY0JGakkvQVQ0QkFUUStBVEllQVJRT0FTSXVBUU82L3Y0b0VSTUtDMXVOcFU1TGNSd2NFRmFKVVVoRlFqZ0JBQWtYQ1NnSkFmellRM0tHY2tORGNvWnlReFVCQURoQ1JVaFNpVlVRSEJ4eVNrNm1qRndMQ2hJUktQOEFDQWdvQ1JrQjNrTnlRME55aG5KRFFuSUFBZ0FBLzM4RDBRTTdBQlFBUkFBMVFESTFBUU1FTFFFQUF4MEJBUUFEUndBRUF3UnZCUUVEQUFOdkFnRUFBUUJ2QUFFQlprRS9PVGN5THlvbkloOFpGd1lGRkNzQkppY21CdzRCQndZWEhnRVhGamMrQVRjMkp5WURGQVlyQVNJR0hRRVVCaXNCSWlZOUFUUW1Ld0VpSmowQk5EWTdBVEkyUFFFME5qc0JNaFlkQVJRV093RXlGaFVETzFsNWRYVjVzUjhmSHgreGVYVjFlTEVnSHg4ZmF3c0kxQWNNREFkTkNRc0tDZE1KQ3cwSDB3a0tEUWROQnd3S0NkUUhEQUtsV0I4Zkh4K3hlWFYxZWJJZ0hoNGdzbmwxZFhuKzdBa0xDd2pUQncwTENkTUpDZ3NKVFFjTUNnblVCd3dMQ05RSkNnd0hBQUVBQVArU0E4SURMQUJ6QUlWQWdoNFZBZ0VESnd3Q0FBRmhSZ0lLQ1ZoUEFnd0tCRWNBQkFNRWJ3VUJBd0VEYndjQkFRQUJieEFCQ2drTUNRb01iUTRCREEwSkRBMXJBQTBOYmdnR0FoSUVBQWtKQUZRSUJnSVNCQUFBQ1ZnUkR3c0RDUUFKVEFFQWJteG1aV05pVzFwVlVrMU1SVVJDUVRzNU5ESXNLeWtvSVNBYkdCTVNDd29JQndCekFYTVRCUlFyQVNNM05qUXZBU1lpRHdFak5UYzJOQzhCSmlJUEFUVTBKaXNCSWdZZEFTY21JZzhCQmhRZkFSVWpKeVlpRHdFR0ZCOEJJeUlHSFFFVUZqc0JCd1lVSHdFV01qOEJNeFVIQmhRZkFSWXlQd0VWRkJZN0FUSTJQUUVYRmpJL0FUWTBMd0UxTXhjV01qOEJOalF2QVRNeU5qMEJOQ1lEcFl0VkNBZ2hCeElHbEcyVUJ3Y2hCeElHVkJJTE9nc1NWQWNTQmlFSEI1UnRsQWNTQmlFSEIxV0xDeEVSQzR0VkJ3Y2ZDQkVHbEcrVUJ3Y2ZDQk1HVkJBTE9nc1VWQWdSQmg4SUNKSnRsQWdTQlI4SUNGT0xDeElTQVpoVUNCRUdJUWNIbEcyVUNCSUZJUWdJVllzTEVoSUxpMVVJQ0NFSEVnYVViWlFIQnlFSEVnWlVFZ3M2Q3hKVUJ4SUdId2NIbEd1VUJ4TUZId2NIVllzTUZSWUxpMVVIQng4SEVnYVFiWlFIQng4SUVRWldFZ3M2Q3hJQUFBQUNBQUQvMmdQRkF0MEFIUUE3QUNoQUpRNEJBUUFWQVFJQkFrY0FBQUVBYndNQkFRSUJid0FDQW1ZZkhqSXdIanNmT3lrRUJSVXJKU1kzTmpVMEp5WW5KaU1pQndZSEhnRVhGaFVVQnpZM05oOEJGalluQVNJSEJnY0dGUlFYRmc4QkJoWS9BVFlYRmpNeU56WTNOalFuSmljbUE1Y0RCU2t0SzBwTldENDZOeTFpb2k0d0d4c2pEZ2wxQ1FzQy9hdFlUVWtyTFNnSEJTb0RDd2wxRGdsT1cxbE1TaXN0TFN0S1RQNE5Da2hNVTBoR0tTb1dGU1lMYTFKVllFay9DUklGQXk4Q0N3a0J2Q29wUmtoVFRrWU5DblVKREFNdkF3VXRLaWxHU0tWSVJTa3FBQUFEQUFBQUFBTVJBbllBQlFBWkFFOEFaVUJpTGg4WEZnQUZCQUZMQ3dJQ0FBSkhDUUVCQndRSEFRUnRCZ0VFQUFjRUFHc0FBZ0FGQUFJRmJRQUlCUWh3Q2dFREFBY0JBd2RnQUFBQ0JRQlNBQUFBQlZnQUJRQUZUQnNhQndaSVJqTXhMU3NuSmlJZ0drOGJUeEFQQmhrSEdSSUxCUlVyQVFZVkl6UTNKU01pQmgwQkZCOEJGakkvQVRZMEx3RTFOQ1luSWdjT0FROEJJeUlHSHdFV01qOEJOaVlyQVRVK0FqTXlGaGNXQnc0Q0J3WW1KeVlQQVFZV0Z4NEJOejRDTnpZbkxnRUJHUUU4QVFFbUhnWUpCRlFGREFRVkJRVkdDUlZKUHoxTkJRRXRDZ2dHU3dVT0JFc0dDQW9zQlQxaE9FQnFHeDBIQlRsWEx6VmhJd3dLR0FNQ0JTbHJQRWQ3VEFVR0pTT0ZBWElIRFEwSGVBa0dnd1VHVkFRRUZRVU1CRWR4QmdtTUl5SjNTQW9SQjFzRkJWc0lFQW8zWERWRE9EbEJMMVk1QkFVbEpnNE5IUVFHQlNzdUFRRkdka2RRUmtSU0FBQUFCUUFBLzVBRHdnTXRBQTBBSFFBMUFFMEFaUUJGUUVJQUJRSUZid0FFQWdBQ0JBQnRBQUFEQWdBRGF3QUdBd2NEQmdkdEFBY0JBd2NCYXdBQkFXNEFBZ1FEQWxRQUFnSURXQUFEQWdOTUd4c2JGUmNjRlJFSUJSd3JBU1lpQndFR0ZCWXlOd0UyTkNjL0FUWTBMd0VtSWc4QkJoUWZBUll5SlI0QkZ4WXlOejRCTnpZMEp5NEJKeVlpQnc0QkJ3WVVBUzRCSnlZaUJ3NEJCd1lVRng0QkZ4WXlOejRCTnpZMEF4NEJGeFl5Tno0Qk56WTBKeTRCSnlZaUJ3NEJCd1lVQWg0RkVBYitOUkVpTHhFQnl3WUdVVDRJQ0NrSUdBZytCUVUyQmcvK0tUZFNFUU1SQXhGUk9BZ0lOMUlSQXhFREVWRTRCd0w1TVVjUkFoQURFRWN4QndjeFJ4QURFQUlSUnpFSTRTWTBEQUVOQVFzMUpnWUdKVFlMQVEwQkREVWxCZ0crQmdiK05CRXVJaEVCeXdZUUJUWStDQmdJS1FnSVBnWVBCallGdWhGUk9BZ0lOMUlSQXhFREVWRTRDQWczVWhFREVmNlNFRWN4Q0FneFJ4QURFQU1RUnpFSEJ6RkhFQU1TQWFvTU5DWUdCaVUxREFFTkFRczJKUVlHSmpVTEFRMEFBQVVBQVArbEE5d0RJUUFqQURNQVFBQk5BSmdCVmtBZ0lSTU1DUUlGQ0FBc0FRMEhkVzBDRGcyU1R3SVFEQ1FCQmhBWkFRVUdCa2RMc0JKUVdFQlBDd0VKQUFsdkJBSVJBd0FJQVFCakV3b1NBd2dCQVFoakFBMEhEZ2NORG0wQURnOEhEZzlyQUJBTUJnWVFaUU1CQVFBSERRRUhZUUFQQUF3UUR3eGdBQVlGQlFaVUFBWUdCVmtBQlFZRlRSdExzQnhRV0VCT0N3RUpBQWx2QkFJUkF3QUlBRzhUQ2hJRENBRUJDR01BRFFjT0J3ME9iUUFPRHdjT0Qyc0FFQXdHQmhCbEF3RUJBQWNOQVFkaEFBOEFEQkFQREdBQUJnVUZCbFFBQmdZRldRQUZCZ1ZORzBCUEN3RUpBQWx2QkFJUkF3QUlBRzhUQ2hJRENBRUJDR01BRFFjT0J3ME9iUUFPRHdjT0Qyc0FFQXdHREJBR2JRTUJBUUFIRFFFSFlRQVBBQXdRRHd4Z0FBWUZCUVpVQUFZR0JWa0FCUVlGVFZsWlFERkNRVFUwQVFDV2xJU0NlWGR4YjE1Y1NFZEJUVUpOT3pvMFFEVkFNQzRvSmgwYkZSUVFEd3NLQmdVQUl3RWpGQVVVS3dFakZSWU9BU0l1QVRjMUlSVVdEZ0VpTGdFM05TTWlCaFVSRkJZeklUSTJOUkUwSmdNVUJpTWhJaVkxRVRRMk15RXlGaFVsSWlZOUFUUStBUllkQVJRR0lTSW1QUUUwUGdFV0hRRVVCZ0UxTkNZakppY3VBVDhCUGdFWEZoY3lOalFtSnlZbkpqVTBOamMrQVQwQk5EWTdBVElXSFFFVUZqTVdGeDRCRHdFT0FTY21JeUlIQmhRV0Z4NEJGQVlIRGdFZEFSUUdLd0VpSmdQT1hnSUxHQnNZQ3dMOXdnSUxHQnNZQ3dKZUJnY0lCUU8wQlFnSFNRZ0YvUE1GQ0FnRkF3MEZDUDBjRGhRVUd4UVRBb3dPRXhRYkZCVCtnQWNGSlNJRUJBRUtBUXNHSlNnWUhCc2ZNQmdiTENjRUJnZ0ZHd1VJQndVZEd3VUZBZ2tCQ3dVZkloa01DaDBrTVNvdEtnUUdDQVViQlFnQ3VROE9HUThQR1E0UER3NFpEdzhaRGc4SkJ2MEpCUWdJQlFMM0JnbjlTZ1VJQ0FVQ0NRVUlDQVY3RlE1VkRoTUJGQTVWRGhVVkRsVU9Fd0VVRGxVT0ZmMnFHd1VJQXc4Q0NBVW1CZ1lERVFFU0h4WUxFQlVaSlNNeUNnRUhCUndGQ0FnRkZ3VUlBZ29DQ1FVa0JnVUNEUWtJR2hVTkVUQkpOZ2tCQndVZ0JRZ0lBQUFBQUFZQUFBQUFBeVVDakFBY0FDNEFNUUJEQUVZQVdRQ3ZRQkFYQ2dFREJnSUNBUUFIVFFFS0NRTkhTN0FWVUZoQVBRQUNCZ0p2QUFZQkJtOEFBUU1CYndBRENBTnZBQUFIQkFrQVpRQUlBQWNBQ0FkZ0FBVUFCQWtGQkdBTEFRa0tDZ2xVQ3dFSkNRcFpBQW9KQ2swYlFENEFBZ1lDYndBR0FRWnZBQUVEQVc4QUF3Z0Rid0FBQndRSEFBUnRBQWdBQndBSUIyQUFCUUFFQ1FVRVlBc0JDUW9LQ1ZRTEFRa0pDbGtBQ2drS1RWbEFGRWhIVVU5SFdVaFpGU2tURWlrY0p5VWtEQVVkS3dFSEVSUUdLd0VpSmpVUkJ5TWlMZ0UyUHdFK0FUTXlGemMySGdFR0FUWXZBUzRCSWdZUEFRWVhNUllYRmpNeUp4Y2pKUzRCSWdZUEFRWVhNUllYRmpNeU56WXZBUmNqQnlJR0J3WWRBUlFXTXlFeU5qMEJOQ2N1QVFNRzlBVUZLQVFHN0FRTEVnTVBETG9OTHh3cEhjVU1GUU1QL29vTEIxQUREeElQQkZBR0NBd1NJeWM1Tnl0V0FjTUVEeElQQkZBR0NBd1NJeWM0TVFzSGF5dFdreXBSSGdjTUNBRVlDQXdISGxFQ1RpVCtxQVFHQmdRQlR5TVBGeFVCSEJnZEhSd0NEeGtVL28wUEVMNElDZ29Jdmc0T0VnOGV3R2Y4Q0FvS0NMNE9EaElQSGp3UEVHVm5xaDBaQndnQkNBd01DQUVKQmhrZEFBSUFBQUFBQXlBQ2lnQU9BQzhBSUVBZExRc0VBd0VBQVVjQ0FRQUJBRzhBQVFGbUFRQUlCd0FPQVE0REJSUXJBU0lHRkJjUkZCWXlOalVSTmpRbUJRWUhCaWNtSnlZbkpnY0dGUkVVRmpjMkZ4WVhGaGNXTnpZM1BnRTFFVFFtQVFRWkl4UVlJUmNVSXdIMEp5a2hLQmd1UEI4MExnMFFDaW94SFRndkdTZ2lLaWdFQmdvQ2lpTTBFdjQ1RUJnWUVBSEhFalFqYkJRRkJBY0ZEUkVEQmhFRkR2NytDZ3dERFFZRUVBMEVDQVVGRmdJS0JRRVBCZ1lBQUFBQUFRQUFBQUFEeEFKdkFDWUFMMEFzSEFFREJCc09Cd01BQXdKSEFBUURCRzhBQXdBRGJ3QUFBUUJ2QUFFQ0FXOEFBZ0ptR0JjVkpCUUZCUmtyQVRBeEZBWWlMd0VIQmlNaUppOEJCUVlpTHdFbU5EY1ROaklmQVRjbkpqUTJOeUVlQVIwQkE4UU5GQVpuN3hRYkRSb0lrZjhBQmhRR0N3Y0gvQlEzRkpDU1hnY05DUUU4RWhrQkJna05CMmZORkFzSnBPRUdCZ3dIRVFjQldSUVVrS2hXQnhNTkFnSVpFd0lBQlFBQS8yb0Q2QU5UQUJRQUtRQStBRXNBVkFCZ1FGME1BUVFBQndnRUIyQU9BUWdBQ1FZSUNXQU5BUVlBQlFJR0JXQUFBd01BV0FvQkFBQU1TQXNCQWdJQldBQUJBUTBCU1UxTVFEOHJLaFlWQVFCUlVFeFVUVlJHUlQ5TFFFczFOQ28rS3o0Z0h4VXBGaWtMQ2dBVUFSUVBCUlFyQVNJSEJnY0dFQmNXRnhZZ056WTNOaEFuSmljbUF5SW5KaWNtTkRjMk56WXlGeFlYRmhRSEJnY0dBeUlIQmdjR0ZCY1dGeFl5TnpZM05qUW5KaWNtQXlJdUFUUStBVEllQVJRT0FRTWlCaFFXTWpZMEpnSDBoM1Z4UWtWRlFuRjFBUTUxY1VKRlJVSnhkWWR0WFZzMU56YzFXMTNhWFZzMU56YzFXMTF0VWtaRktDb3FLRVZHcEVkRUtTa3BLVVJIU3pWYk5UVmJhMW8xTlZvMktEbzZVVG82QTFKRlFuRjEvdkoxY1VKRlJVSnhkUUVPZFhGQ1JmeDdOelZiWGRwZFd6VTNOelZiWGRwZFd6VTNBc0FwS1VSSHBFWkZLQ29xS0VWR3BFZEVLU24rRXpWYmExbzFOVnByV3pVQktEcFJPanBST2dBQUFBTUFBQUFBQXdJQ2lnQU9BQjBBTEFBUlFBNEpBUUlBUkFBQUFHWVdGUUVGRkNzQkZSUVdQd0UrQVQwQk5DWVBBUVluTnpZMEx3RW1JZzhCQmhRZkFSWUhKeVlHSFFFVUZoOEJGalk5QVRRQ0Vnb0Z3ZzRSQ2dYWENoVFlCUVhERGlJT3d3VUYyQW9vMXdVS0VRN0NCUW9CUlBRR0JRSnVDQjBRMndZRkFua0hPbmtEQ3dOdkNBaHZBd3NEZVFVdWVRTUdCdG9RSFFodUF3WUc4d29BQUFBQkFBQUFBUUFBZk5zRVlsOFBQUFVBQ3dQb0FBQUFBTmg2ZDZ3QUFBQUEySHAzcmYvKy8yb0Q3Z05UQUFBQUNBQUNBQUFBQUFBQUFBRUFBQU5TLzJvQUFBUG8vLzcvK2dQdUFBRUFBQUFBQUFBQUFBQUFBQUFBQUFDTUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStqLy9nUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQU5yQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBMnNBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStqLy93UG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUFBQUFBQUZ3QXVnRVlBZGdDV0FNQUEyWUQ3QVJ3QlRvRmxnWWFCdm9Ib2dmK0NGUUlkZ2phQ1NnSi9BcktDOG9NYkF6YURZSU9XQThBRUFBUVRCRDBFYjRTTGhMSUUwNFQyaFRVRldnV0hoWnFGc0lYRUJlTUdEZ1l4Qmt1R2VZYWxCdnNITzRkdkI0eUhxSWZOaCtNSUM0Z2dDRHVJVUlob2lJU0lyd2pPaVBvSkdBbEppWVdKcGdudGlnY0tKQXBCaWxzS2dJcVppcmtLOElzUEN5R0xPb3RkaTNzTGhRdVppN2dMelF2VmpCWU1RNHhYaklNTXlZenpEUStOTVExQWpVNE5lbzJvamNNT0hRNDJqbitPcTQ3VWp2eVBFWThmRHk2UFZROTJENXVQdkkvbEVCYVFOQkI3a0o4UXJKQzdrTjBROFpFVmtUeVJYaEdERVpLUm5KR3pFZEdTQ1pJbUVsQ1NnUkxoRXhpVE1CTkZFM0tUaGtBQUFBQkFBQUFqQURRQUEwQUFBQUFBQUlBVGdCZUFITUFBQURSQzNBQUFBQUFBQUFBRWdEZUFBRUFBQUFBQUFBQU5RQUFBQUVBQUFBQUFBRUFDQUExQUFFQUFBQUFBQUlBQndBOUFBRUFBQUFBQUFNQUNBQkVBQUVBQUFBQUFBUUFDQUJNQUFFQUFBQUFBQVVBQ3dCVUFBRUFBQUFBQUFZQUNBQmZBQUVBQUFBQUFBb0FLd0JuQUFFQUFBQUFBQXNBRXdDU0FBTUFBUVFKQUFBQWFnQ2xBQU1BQVFRSkFBRUFFQUVQQUFNQUFRUUpBQUlBRGdFZkFBTUFBUVFKQUFNQUVBRXRBQU1BQVFRSkFBUUFFQUU5QUFNQUFRUUpBQVVBRmdGTkFBTUFBUVFKQUFZQUVBRmpBQU1BQVFRSkFBb0FWZ0Z6QUFNQUFRUUpBQXNBSmdISlEyOXdlWEpwWjJoMElDaERLU0F5TURFNUlHSjVJRzl5YVdkcGJtRnNJR0YxZEdodmNuTWdRQ0JtYjI1MFpXeHNieTVqYjIxelppMXBZMjl1YzFKbFozVnNZWEp6WmkxcFkyOXVjM05tTFdsamIyNXpWbVZ5YzJsdmJpQXhMakJ6WmkxcFkyOXVjMGRsYm1WeVlYUmxaQ0JpZVNCemRtY3lkSFJtSUdaeWIyMGdSbTl1ZEdWc2JHOGdjSEp2YW1WamRDNW9kSFJ3T2k4dlptOXVkR1ZzYkc4dVkyOXRBRU1BYndCd0FIa0FjZ0JwQUdjQWFBQjBBQ0FBS0FCREFDa0FJQUF5QURBQU1RQTVBQ0FBWWdCNUFDQUFid0J5QUdrQVp3QnBBRzRBWVFCc0FDQUFZUUIxQUhRQWFBQnZBSElBY3dBZ0FFQUFJQUJtQUc4QWJnQjBBR1VBYkFCc0FHOEFMZ0JqQUc4QWJRQnpBR1lBTFFCcEFHTUFid0J1QUhNQVVnQmxBR2NBZFFCc0FHRUFjZ0J6QUdZQUxRQnBBR01BYndCdUFITUFjd0JtQUMwQWFRQmpBRzhBYmdCekFGWUFaUUJ5QUhNQWFRQnZBRzRBSUFBeEFDNEFNQUJ6QUdZQUxRQnBBR01BYndCdUFITUFSd0JsQUc0QVpRQnlBR0VBZEFCbEFHUUFJQUJpQUhrQUlBQnpBSFlBWndBeUFIUUFkQUJtQUNBQVpnQnlBRzhBYlFBZ0FFWUFid0J1QUhRQVpRQnNBR3dBYndBZ0FIQUFjZ0J2QUdvQVpRQmpBSFFBTGdCb0FIUUFkQUJ3QURvQUx3QXZBR1lBYndCdUFIUUFaUUJzQUd3QWJ3QXVBR01BYndCdEFBQUFBQUlBQUFBQUFBQUFDZ0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQWpBRUNBUU1CQkFFRkFRWUJCd0VJQVFrQkNnRUxBUXdCRFFFT0FROEJFQUVSQVJJQkV3RVVBUlVCRmdFWEFSZ0JHUUVhQVJzQkhBRWRBUjRCSHdFZ0FTRUJJZ0VqQVNRQkpRRW1BU2NCS0FFcEFTb0JLd0VzQVMwQkxnRXZBVEFCTVFFeUFUTUJOQUUxQVRZQk53RTRBVGtCT2dFN0FUd0JQUUUrQVQ4QlFBRkJBVUlCUXdGRUFVVUJSZ0ZIQVVnQlNRRktBVXNCVEFGTkFVNEJUd0ZRQVZFQlVnRlRBVlFCVlFGV0FWY0JXQUZaQVZvQld3RmNBVjBCWGdGZkFXQUJZUUZpQVdNQlpBRmxBV1lCWndGb0FXa0JhZ0ZyQVd3QmJRRnVBVzhCY0FGeEFYSUJjd0YwQVhVQmRnRjNBWGdCZVFGNkFYc0JmQUY5QVg0QmZ3R0FBWUVCZ2dHREFZUUJoUUdHQVljQmlBR0pBWW9CaXdHTUFZMEFCVE5rYjNSekEyRmtaQVZqYkc5elpRbHdjbWxqWldKdmIyc0VhR1ZzY0FodWIzUmxZbTl2YXdSeWIzZHpCblZ3Ykc5aFpBVmpiRzlqYXdabmNtOTFjSE1MYjNCbGJsOW1iMnhrWlhJUWNtbG5hSFJmWVd4cFoyNWZkR1Y0ZEFkd2NtOWtkV04wRFhGMVpYTjBhVzl1WDJabFpXUUhkMkZ5Ym1sdVp3UjFjMlZ5QlhKcFoyaDBERzV2ZEdsbWFXTmhkR2x2YmdSb2IyMWxDR052Ym5SeVlXTjBCMkZrWkhWelpYSUVZWEJ3Y3dSamIzQjVCV2x0WVdkbEJHOXdaVzRJYzJWMGRHbHVaM01HZW05dmJXbHVCbkpsWTI5eVpBbGhjbkp2ZDJSdmQyNERZM1YwRDJsdWMyVnlkRjkwWlcxd2JHRjBaUTF2Y0dWdVpXUmZabTlzWkdWeUNYTnBaR1ZmYkdsemRBZDZiMjl0YjNWMEJuRjFiM1JsY3d4eVpXeGhkR1ZrWDJ4cGMzUUVaMlJ2WXdkemJtbHdjR1YwQkhCaFoyVUxZM1Z6ZEc5dFgyRndjSE1IWVhKeWIzZDFjQVpoZEhSaFkyZ0haR0Y1ZG1sbGR3UnBibVp2RUdsdWMyVnlkRjkwWVdkZlptbGxiR1FGY0dGemRHVUVjMjl5ZEFOd1pHWUdjbVZ3YjNKMEJIUmhjMnNJWVhCd2NtOTJZV3dMYzI5amFXRnNjMmhoY21VR2NHVnZjR3hsQm1sMFlXeHBZd1prWld4bGRHVUVZbUZqYXdOaVlXNEZaVzFoYVd3RVltOXNaQWR3Y21WMmFXVjNCWE5vWVhKbENXUmhjMmhpYjJGeVpBWjBhR0Z1YTNNRmRHOWtZWGtLWTI5dWRISmhZM1F0TVFkemNHbHVibVZ5QlhCb2IzUnZCV1YyWlc1MEIySjFhV3hrWlhJTWFuVnpkR2xtZVY5MFpYaDBFV05sYm5SbGNsOWhiR2xuYmw5MFpYaDBCR1ZrYVhRR2JHRjViM1YwQ0hCeWFXOXlhWFI1RUhOMFlXNWtZWEprWDI5aWFtVmpkSE1IWTI5dWRHRmpkQWhqZFhOMGIyMDVNd2RsYldGcGJDMHhCM04xWTJObGMzTUhjbVZtY21WemFBOXNaV1owWDJGc2FXZHVYM1JsZUhRRVpHOTNiZ1ZqYUdGeWRBUmphR0YwQldWeWNtOXlCR3hsWm5RTGNtVnRiM1psWDJ4cGJtc0hjM1Z0YldGeWVRaGtiMk4xYldWdWRBWmtjbUZtZEhNTmMzVnRiV0Z5ZVdSbGRHRnBiQWR5WlhCc1lXTmxCR3hwYTJVSVpHOTNibXh2WVdRRlkyaGxZMnNMWTJobGRuSnZibXhsWm5RR1pYaHdZVzVrQkd4cGJtc0ZjbVZ3YkhrRmRHRmliR1VFWm1WbFpBZGxkbVZ1ZEMweERuUnBiR1ZmWTJGeVpGOXNhWE4wRkhKcFkyaDBaWGgwWW5Wc2JHVjBaV1JzYVhOMEJHeHBjM1FJWm1GMmIzSnBkR1VNWTJobGRuSnZibkpwWjJoMEMyTm9aWFp5YjI1a2IzZHVCbVpwYkhSbGNnUnRiM1psRG5KcFkyaDBaWGgwYVc1a1pXNTBDWFZ1WkdWeWJHbHVaUWhtWldWa1ltRmphd1JtYVd4bEJIVnVaRzhVY21samFIUmxlSFJ1ZFcxaVpYSmxaR3hwYzNRRWJHOWphd3BtYVd4MFpYSnNhWE4wQ1dOb1pYWnliMjUxY0FWamJHVmhjZ2RtYjNKM1lYSmtDbTVsZDE5M2FXNWtiM2NQY21samFIUmxlSFJ2ZFhSa1pXNTBCblZ1Ykc5amF3dHZjSEJ2Y25SMWJtbDBlUVJ3YjNOMEFuVndCbk5sWVhKamFBTnVaWGNHWm5KdmVtVnVDR052YlcxbGJuUnpCbkpsWTJWdWRBbHRZV2RwWTNkaGJtUVlaR2x6WTI5MWJuUnpZMmhsWkhWc1pXbGpiMjV6TFRBeUNHTjFjM1J2YlRrd0NHTjFjM1J2YlRJMkNIUnlaVzVrYVc1bkJuUmhjbWRsZEFSamRXSmxBQUFBQUFFQUFmLy9BQThBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQmdBR0FBWUFCZ0RVLzlxQTFQL2FyQUFMQ0N3QUZWWVJWa2dJRXU0QUE1UlM3QUdVMXBZc0RRYnNDaFpZR1lnaWxWWXNBSWxZYmtJQUFnQVkyTWpZaHNoSWJBQVdiQUFReU5Fc2dBQkFFTmdRaTJ3QVN5d0lHQm1MYkFDTENCa0lMREFVTEFFSmxxeUtBRUtRMFZqUlZKYldDRWpJUnVLV0NDd1VGQllJYkJBV1JzZ3NEaFFXQ0d3T0ZsWklMRUJDa05GWTBWaFpMQW9VRmdoc1FFS1EwVmpSU0N3TUZCWUliQXdXUnNnc01CUVdDQm1JSXFLWVNDd0NsQllZQnNnc0NCUVdDR3dDbUFiSUxBMlVGZ2hzRFpnRzJCWldWa2JzQUVyV1ZranNBQlFXR1ZaV1Myd0F5d2dSU0N3QkNWaFpDQ3dCVU5RV0xBRkkwS3dCaU5DR3lFaFdiQUJZQzJ3QkN3aklTTWhJR1N4QldKQ0lMQUdJMEt4QVFwRFJXT3hBUXBEc0FGZ1JXT3dBeW9oSUxBR1F5Q0tJSXF3QVN1eE1BVWxzQVFtVVZoZ1VCdGhVbGxZSTFraElMQkFVMWl3QVNzYkliQkFXU093QUZCWVpWa3RzQVVzc0FkREs3SUFBZ0JEWUVJdHNBWXNzQWNqUWlNZ3NBQWpRbUd3QW1KbXNBRmpzQUZnc0FVcUxiQUhMQ0FnUlNDd0MwTmp1QVFBWWlDd0FGQllzRUJnV1dhd0FXTmdSTEFCWUMyd0NDeXlCd3NBUTBWQ0tpR3lBQUVBUTJCQ0xiQUpMTEFBUXlORXNnQUJBRU5nUWkyd0Npd2dJRVVnc0FFckk3QUFRN0FFSldBZ1JZb2pZU0JrSUxBZ1VGZ2hzQUFic0RCUVdMQWdHN0JBV1ZranNBQlFXR1Zac0FNbEkyRkVSTEFCWUMyd0N5d2dJRVVnc0FFckk3QUFRN0FFSldBZ1JZb2pZU0Jrc0NSUVdMQUFHN0JBV1NPd0FGQllaVm13QXlVallVUkVzQUZnTGJBTUxDQ3dBQ05Dc2dzS0EwVllJUnNqSVZrcUlTMndEU3l4QWdKRnNHUmhSQzJ3RGl5d0FXQWdJTEFNUTBxd0FGQllJTEFNSTBKWnNBMURTckFBVWxnZ3NBMGpRbGt0c0E4c0lMQVFZbWF3QVdNZ3VBUUFZNG9qWWJBT1EyQWdpbUFnc0E0alFpTXRzQkFzUzFSWXNRUmtSRmtrc0ExbEkzZ3RzQkVzUzFGWVMxTllzUVJrUkZrYklWa2tzQk5sSTNndHNCSXNzUUFQUTFWWXNROFBRN0FCWVVLd0R5dFpzQUJEc0FJbFFyRU1BaVZDc1EwQ0pVS3dBUllqSUxBREpWQllzUUVBUTJDd0JDVkNpb29naWlOaHNBNHFJU093QVdFZ2lpTmhzQTRxSVJ1eEFRQkRZTEFDSlVLd0FpVmhzQTRxSVZtd0RFTkhzQTFEUjJDd0FtSWdzQUJRV0xCQVlGbG1zQUZqSUxBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlkyQ3hBQUFUSTBTd0FVT3dBRDZ5QVFFQlEyQkNMYkFUTEFDeEFBSkZWRml3RHlOQ0lFV3dDeU5Dc0FvanNBRmdRaUJnc0FGaHRSQVFBUUFPQUVKQ2ltQ3hFZ1lyc0hJckd5SlpMYkFVTExFQUV5c3RzQlVzc1FFVEt5MndGaXl4QWhNckxiQVhMTEVERXlzdHNCZ3NzUVFUS3kyd0dTeXhCUk1yTGJBYUxMRUdFeXN0c0Jzc3NRY1RLeTJ3SEN5eENCTXJMYkFkTExFSkV5c3RzQjRzQUxBTks3RUFBa1ZVV0xBUEkwSWdSYkFMSTBLd0NpT3dBV0JDSUdDd0FXRzFFQkFCQUE0QVFrS0tZTEVTQml1d2Npc2JJbGt0c0I4c3NRQWVLeTJ3SUN5eEFSNHJMYkFoTExFQ0hpc3RzQ0lzc1FNZUt5MndJeXl4QkI0ckxiQWtMTEVGSGlzdHNDVXNzUVllS3kyd0ppeXhCeDRyTGJBbkxMRUlIaXN0c0Nnc3NRa2VLeTJ3S1N3Z1BMQUJZQzJ3S2l3Z1lMQVFZQ0JESTdBQllFT3dBaVZoc0FGZ3NDa3FJUzJ3S3l5d0tpdXdLaW90c0N3c0lDQkhJQ0N3QzBOanVBUUFZaUN3QUZCWXNFQmdXV2F3QVdOZ0kyRTRJeUNLVlZnZ1J5QWdzQXREWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUNOaE9Cc2hXUzJ3TFN3QXNRQUNSVlJZc0FFV3NDd3FzQUVWTUJzaVdTMndMaXdBc0EwcnNRQUNSVlJZc0FFV3NDd3FzQUVWTUJzaVdTMndMeXdnTmJBQllDMndNQ3dBc0FGRlk3Z0VBR0lnc0FCUVdMQkFZRmxtc0FGanNBRXJzQXREWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqc0FFcnNBQVd0QUFBQUFBQVJENGpPTEV2QVJVcUxiQXhMQ0E4SUVjZ3NBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZTEFBUTJFNExiQXlMQzRYUEMyd015d2dQQ0JISUxBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlkyQ3dBRU5oc0FGRFl6Z3RzRFFzc1FJQUZpVWdMaUJIc0FBalFyQUNKVW1LaWtjalJ5TmhJRmhpR3lGWnNBRWpRckl6QVFFVkZDb3RzRFVzc0FBV3NBUWxzQVFsUnlOSEkyR3dDVU1yWllvdUl5QWdQSW80TGJBMkxMQUFGckFFSmJBRUpTQXVSeU5ISTJFZ3NBUWpRckFKUXlzZ3NHQlFXQ0N3UUZGWXN3SWdBeUFic3dJbUF4cFpRa0lqSUxBSVF5Q0tJMGNqUnlOaEkwWmdzQVJEc0FKaUlMQUFVRml3UUdCWlpyQUJZMkFnc0FFcklJcUtZU0N3QWtOZ1pDT3dBME5oWkZCWXNBSkRZUnV3QTBOZ1diQURKYkFDWWlDd0FGQllzRUJnV1dhd0FXTmhJeUFnc0FRbUkwWmhPQnNqc0FoRFJyQUNKYkFJUTBjalJ5TmhZQ0N3QkVPd0FtSWdzQUJRV0xCQVlGbG1zQUZqWUNNZ3NBRXJJN0FFUTJDd0FTdXdCU1Zoc0FVbHNBSmlJTEFBVUZpd1FHQlpackFCWTdBRUptRWdzQVFsWUdRanNBTWxZR1JRV0NFYkl5RlpJeUFnc0FRbUkwWmhPRmt0c0Rjc3NBQVdJQ0Fnc0FVbUlDNUhJMGNqWVNNOE9DMndPQ3l3QUJZZ3NBZ2pRaUFnSUVZalI3QUJLeU5oT0Myd09TeXdBQmF3QXlXd0FpVkhJMGNqWWJBQVZGZ3VJRHdqSVJ1d0FpV3dBaVZISTBjallTQ3dCU1d3QkNWSEkwY2pZYkFHSmJBRkpVbXdBaVZodVFnQUNBQmpZeU1nV0dJYklWbGp1QVFBWWlDd0FGQllzRUJnV1dhd0FXTmdJeTRqSUNBOGlqZ2pJVmt0c0Rvc3NBQVdJTEFJUXlBdVJ5TkhJMkVnWUxBZ1lHYXdBbUlnc0FCUVdMQkFZRmxtc0FGakl5QWdQSW80TGJBN0xDTWdMa2F3QWlWR1VsZ2dQRmt1c1NzQkZDc3RzRHdzSXlBdVJyQUNKVVpRV0NBOFdTNnhLd0VVS3kyd1BTd2pJQzVHc0FJbFJsSllJRHhaSXlBdVJyQUNKVVpRV0NBOFdTNnhLd0VVS3kyd1BpeXdOU3NqSUM1R3NBSWxSbEpZSUR4WkxyRXJBUlFyTGJBL0xMQTJLNG9nSUR5d0JDTkNpamdqSUM1R3NBSWxSbEpZSUR4WkxyRXJBUlFyc0FSRExyQXJLeTJ3UUN5d0FCYXdCQ1d3QkNZZ0xrY2pSeU5oc0FsREt5TWdQQ0F1SXppeEt3RVVLeTJ3UVN5eENBUWxRckFBRnJBRUpiQUVKU0F1UnlOSEkyRWdzQVFqUXJBSlF5c2dzR0JRV0NDd1FGRllzd0lnQXlBYnN3SW1BeHBaUWtJaklFZXdCRU93QW1JZ3NBQlFXTEJBWUZsbXNBRmpZQ0N3QVNzZ2lvcGhJTEFDUTJCa0k3QURRMkZrVUZpd0FrTmhHN0FEUTJCWnNBTWxzQUppSUxBQVVGaXdRR0JaWnJBQlkyR3dBaVZHWVRnaklEd2pPQnNoSUNCR0kwZXdBU3NqWVRnaFdiRXJBUlFyTGJCQ0xMQTFLeTZ4S3dFVUt5MndReXl3TmlzaEl5QWdQTEFFSTBJak9MRXJBUlFyc0FSRExyQXJLeTJ3UkN5d0FCVWdSN0FBSTBLeUFBRUJGUlFUTHJBeEtpMndSU3l3QUJVZ1I3QUFJMEt5QUFFQkZSUVRMckF4S2kyd1JpeXhBQUVVRTdBeUtpMndSeXl3TkNvdHNFZ3NzQUFXUlNNZ0xpQkdpaU5oT0xFckFSUXJMYkJKTExBSUkwS3dTQ3N0c0Vvc3NnQUFRU3N0c0Vzc3NnQUJRU3N0c0V3c3NnRUFRU3N0c0Uwc3NnRUJRU3N0c0U0c3NnQUFRaXN0c0U4c3NnQUJRaXN0c0ZBc3NnRUFRaXN0c0ZFc3NnRUJRaXN0c0ZJc3NnQUFQaXN0c0ZNc3NnQUJQaXN0c0ZRc3NnRUFQaXN0c0ZVc3NnRUJQaXN0c0ZZc3NnQUFRQ3N0c0Zjc3NnQUJRQ3N0c0Znc3NnRUFRQ3N0c0Zrc3NnRUJRQ3N0c0Zvc3NnQUFReXN0c0Zzc3NnQUJReXN0c0Z3c3NnRUFReXN0c0Ywc3NnRUJReXN0c0Y0c3NnQUFQeXN0c0Y4c3NnQUJQeXN0c0dBc3NnRUFQeXN0c0dFc3NnRUJQeXN0c0dJc3NEY3JMckVyQVJRckxiQmpMTEEzSzdBN0t5MndaQ3l3Tnl1d1BDc3RzR1Vzc0FBV3NEY3JzRDByTGJCbUxMQTRLeTZ4S3dFVUt5MndaeXl3T0N1d095c3RzR2dzc0RncnNEd3JMYkJwTExBNEs3QTlLeTJ3YWl5d09Tc3VzU3NCRkNzdHNHc3NzRGtyc0RzckxiQnNMTEE1SzdBOEt5MndiU3l3T1N1d1BTc3RzRzRzc0RvckxyRXJBUlFyTGJCdkxMQTZLN0E3S3kyd2NDeXdPaXV3UENzdHNIRXNzRG9yc0QwckxiQnlMTE1KQkFJRFJWZ2hHeU1oV1VJcnNBaGxzQU1rVUhpd0FSVXdMUUJMdUFESVVsaXhBUUdPV2JBQnVRZ0FDQUJqY0xFQUJVS3lBQUVBS3JFQUJVS3pDZ0lCQ0NxeEFBVkNzdzRBQVFncXNRQUdRcm9Dd0FBQkFBa3FzUUFIUXJvQVFBQUJBQWtxc1FNQVJMRWtBWWhSV0xCQWlGaXhBMlJFc1NZQmlGRll1Z2lBQUFFRVFJaGpWRml4QXdCRVdWbFpXYk1NQWdFTUtyZ0IvNFd3QkkyeEFnQkVBQUE9JykgZm9ybWF0KCd0cnVldHlwZScpO1xufVxuLyogQ2hyb21lIGhhY2s6IFNWRyBpcyByZW5kZXJlZCBtb3JlIHNtb290aCBpbiBXaW5kb3p6ZS4gMTAwJSBtYWdpYywgdW5jb21tZW50IGlmIHlvdSBuZWVkIGl0LiAqL1xuLyogTm90ZSwgdGhhdCB3aWxsIGJyZWFrIGhpbnRpbmchIEluIG90aGVyIE9TLWVzIGZvbnQgd2lsbCBiZSBub3QgYXMgc2hhcnAgYXMgaXQgY291bGQgYmUgKi9cbi8qXG5AbWVkaWEgc2NyZWVuIGFuZCAoLXdlYmtpdC1taW4tZGV2aWNlLXBpeGVsLXJhdGlvOjApIHtcbiAgQGZvbnQtZmFjZSB7XG4gICAgZm9udC1mYW1pbHk6ICdzZi1pY29ucyc7XG4gICAgc3JjOiB1cmwoJy4uL2ZvbnQvc2YtaWNvbnMuc3ZnPzg3NzQyNDQ2I3NmLWljb25zJykgZm9ybWF0KCdzdmcnKTtcbiAgfVxufVxuKi9cblxuW2NsYXNzXj1cInNmLWljb24tXCJdOmJlZm9yZSwgW2NsYXNzKj1cIiBzZi1pY29uLVwiXTpiZWZvcmUge1xuXHRmb250LWZhbWlseTogXCJzZi1pY29uc1wiO1xuXHRmb250LXN0eWxlOiBub3JtYWw7XG5cdGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdHNwZWFrOiBub25lO1xuXG5cdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0dGV4dC1kZWNvcmF0aW9uOiBpbmhlcml0O1xuXHR3aWR0aDogMWVtO1xuXHRtYXJnaW4tcmlnaHQ6IC4yZW07XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcblx0Lyogb3BhY2l0eTogLjg7ICovXG5cblx0LyogRm9yIHNhZmV0eSAtIHJlc2V0IHBhcmVudCBzdHlsZXMsIHRoYXQgY2FuIGJyZWFrIGdseXBoIGNvZGVzKi9cblx0Zm9udC12YXJpYW50OiBub3JtYWw7XG5cdHRleHQtdHJhbnNmb3JtOiBub25lO1xuXG5cdC8qIGZpeCBidXR0b25zIGhlaWdodCwgZm9yIHR3aXR0ZXIgYm9vdHN0cmFwICovXG5cdGxpbmUtaGVpZ2h0OiAxZW07XG5cblx0LyogQW5pbWF0aW9uIGNlbnRlciBjb21wZW5zYXRpb24gLSBtYXJnaW5zIHNob3VsZCBiZSBzeW1tZXRyaWMgKi9cblx0LyogcmVtb3ZlIGlmIG5vdCBuZWVkZWQgKi9cblx0bWFyZ2luLWxlZnQ6IC4yZW07XG5cblx0LyogeW91IGNhbiBiZSBtb3JlIGNvbWZvcnRhYmxlIHdpdGggaW5jcmVhc2VkIGljb25zIHNpemUgKi9cblx0LyogZm9udC1zaXplOiAxMjAlOyAqL1xuXG5cdC8qIFVuY29tbWVudCBmb3IgM0QgZWZmZWN0ICovXG5cdC8qIHRleHQtc2hhZG93OiAxcHggMXB4IDFweCByZ2JhKDEyNywgMTI3LCAxMjcsIDAuMyk7ICovXG59XG4uc2YtaWNvbi0zZG90czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAwJzsgfSAvKiAn7qCAJyAqL1xuLnNmLWljb24tYWRkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDEnOyB9IC8qICfuoIEnICovXG4uc2YtaWNvbi1jbG9zZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAyJzsgfSAvKiAn7qCCJyAqL1xuLnNmLWljb24tcHJpY2Vib29rOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDMnOyB9IC8qICfuoIMnICovXG4uc2YtaWNvbi1oZWxwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDQnOyB9IC8qICfuoIQnICovXG4uc2YtaWNvbi1ub3RlYm9vazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA1JzsgfSAvKiAn7qCFJyAqL1xuLnNmLWljb24tcm93czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA2JzsgfSAvKiAn7qCGJyAqL1xuLnNmLWljb24tdXBsb2FkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDcnOyB9IC8qICfuoIcnICovXG4uc2YtaWNvbi1jbG9jazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA4JzsgfSAvKiAn7qCIJyAqL1xuLnNmLWljb24tZ3JvdXBzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDknOyB9IC8qICfuoIknICovXG4uc2YtaWNvbi1vcGVuX2ZvbGRlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBhJzsgfSAvKiAn7qCKJyAqL1xuLnNmLWljb24tcmlnaHRfYWxpZ25fdGV4dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBiJzsgfSAvKiAn7qCLJyAqL1xuLnNmLWljb24tcHJvZHVjdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBjJzsgfSAvKiAn7qCMJyAqL1xuLnNmLWljb24tcXVlc3Rpb25fZmVlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBkJzsgfSAvKiAn7qCNJyAqL1xuLnNmLWljb24td2FybmluZzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBlJzsgfSAvKiAn7qCOJyAqL1xuLnNmLWljb24tdXNlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBmJzsgfSAvKiAn7qCPJyAqL1xuLnNmLWljb24tcmlnaHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMCc7IH0gLyogJ+6gkCcgKi9cbi5zZi1pY29uLW5vdGlmaWNhdGlvbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODExJzsgfSAvKiAn7qCRJyAqL1xuLnNmLWljb24taG9tZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEyJzsgfSAvKiAn7qCSJyAqL1xuLnNmLWljb24tY29udHJhY3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMyc7IH0gLyogJ+6gkycgKi9cbi5zZi1pY29uLWFkZHVzZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNCc7IH0gLyogJ+6glCcgKi9cbi5zZi1pY29uLWFwcHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNSc7IH0gLyogJ+6glScgKi9cbi5zZi1pY29uLWNvcHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNic7IH0gLyogJ+6glicgKi9cbi5zZi1pY29uLWltYWdlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTcnOyB9IC8qICfuoJcnICovXG4uc2YtaWNvbi1vcGVuOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTgnOyB9IC8qICfuoJgnICovXG4uc2YtaWNvbi1zZXR0aW5nczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE5JzsgfSAvKiAn7qCZJyAqL1xuLnNmLWljb24tem9vbWluOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWEnOyB9IC8qICfuoJonICovXG4uc2YtaWNvbi1yZWNvcmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYic7IH0gLyogJ+6gmycgKi9cbi5zZi1pY29uLWFycm93ZG93bjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFjJzsgfSAvKiAn7qCcJyAqL1xuLnNmLWljb24tY3V0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWQnOyB9IC8qICfuoJ0nICovXG4uc2YtaWNvbi1pbnNlcnRfdGVtcGxhdGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZSc7IH0gLyogJ+6gnicgKi9cbi5zZi1pY29uLW9wZW5lZF9mb2xkZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZic7IH0gLyogJ+6gnycgKi9cbi5zZi1pY29uLXNpZGVfbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIwJzsgfSAvKiAn7qCgJyAqL1xuLnNmLWljb24tem9vbW91dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIxJzsgfSAvKiAn7qChJyAqL1xuLnNmLWljb24tcXVvdGVzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjInOyB9IC8qICfuoKInICovXG4uc2YtaWNvbi1yZWxhdGVkX2xpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMyc7IH0gLyogJ+6goycgKi9cbi5zZi1pY29uLWdkb2M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNCc7IH0gLyogJ+6gpCcgKi9cbi5zZi1pY29uLXNuaXBwZXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNSc7IH0gLyogJ+6gpScgKi9cbi5zZi1pY29uLXBhZ2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNic7IH0gLyogJ+6gpicgKi9cbi5zZi1pY29uLWN1c3RvbV9hcHBzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjcnOyB9IC8qICfuoKcnICovXG4uc2YtaWNvbi1hcnJvd3VwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjgnOyB9IC8qICfuoKgnICovXG4uc2YtaWNvbi1hdHRhY2g6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyOSc7IH0gLyogJ+6gqScgKi9cbi5zZi1pY29uLWRheXZpZXc6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyYSc7IH0gLyogJ+6gqicgKi9cbi5zZi1pY29uLWluZm86YmVmb3JlIHsgY29udGVudDogJ1xcZTgyYic7IH0gLyogJ+6gqycgKi9cbi5zZi1pY29uLWluc2VydF90YWdfZmllbGQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyYyc7IH0gLyogJ+6grCcgKi9cbi5zZi1pY29uLXBhc3RlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MmQnOyB9IC8qICfuoK0nICovXG4uc2YtaWNvbi1zb3J0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MmUnOyB9IC8qICfuoK4nICovXG4uc2YtaWNvbi1wZGY6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyZic7IH0gLyogJ+6grycgKi9cbi5zZi1pY29uLXJlcG9ydDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODMwJzsgfSAvKiAn7qCwJyAqL1xuLnNmLWljb24tdGFzazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODMxJzsgfSAvKiAn7qCxJyAqL1xuLnNmLWljb24tYXBwcm92YWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzMic7IH0gLyogJ+6gsicgKi9cbi5zZi1pY29uLXNvY2lhbHNoYXJlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzMnOyB9IC8qICfuoLMnICovXG4uc2YtaWNvbi1wZW9wbGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzNCc7IH0gLyogJ+6gtCcgKi9cbi5zZi1pY29uLWl0YWxpYzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM1JzsgfSAvKiAn7qC1JyAqL1xuLnNmLWljb24tZGVsZXRlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzYnOyB9IC8qICfuoLYnICovXG4uc2YtaWNvbi1iYWNrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzcnOyB9IC8qICfuoLcnICovXG4uc2YtaWNvbi1iYW46YmVmb3JlIHsgY29udGVudDogJ1xcZTgzOCc7IH0gLyogJ+6guCcgKi9cbi5zZi1pY29uLWVtYWlsOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzknOyB9IC8qICfuoLknICovXG4uc2YtaWNvbi1ib2xkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2EnOyB9IC8qICfuoLonICovXG4uc2YtaWNvbi1wcmV2aWV3OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2InOyB9IC8qICfuoLsnICovXG4uc2YtaWNvbi1zaGFyZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODNjJzsgfSAvKiAn7qC8JyAqL1xuLnNmLWljb24tZGFzaGJvYXJkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2QnOyB9IC8qICfuoL0nICovXG4uc2YtaWNvbi10aGFua3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzZSc7IH0gLyogJ+6gvicgKi9cbi5zZi1pY29uLXRvZGF5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2YnOyB9IC8qICfuoL8nICovXG4uc2YtaWNvbi1jb250cmFjdC0xOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDAnOyB9IC8qICfuoYAnICovXG4uc2YtaWNvbi1zcGlubmVyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDEnOyB9IC8qICfuoYEnICovXG4uc2YtaWNvbi1waG90bzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQyJzsgfSAvKiAn7qGCJyAqL1xuLnNmLWljb24tZXZlbnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Myc7IH0gLyogJ+6hgycgKi9cbi5zZi1pY29uLWJ1aWxkZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0NCc7IH0gLyogJ+6hhCcgKi9cbi5zZi1pY29uLWp1c3RpZnlfdGV4dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ1JzsgfSAvKiAn7qGFJyAqL1xuLnNmLWljb24tY2VudGVyX2FsaWduX3RleHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Nic7IH0gLyogJ+6hhicgKi9cbi5zZi1pY29uLWVkaXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Nyc7IH0gLyogJ+6hhycgKi9cbi5zZi1pY29uLWxheW91dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ4JzsgfSAvKiAn7qGIJyAqL1xuLnNmLWljb24tcHJpb3JpdHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0OSc7IH0gLyogJ+6hiScgKi9cbi5zZi1pY29uLXN0YW5kYXJkX29iamVjdHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0YSc7IH0gLyogJ+6hiicgKi9cbi5zZi1pY29uLWNvbnRhY3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Yic7IH0gLyogJ+6hiycgKi9cbi5zZi1pY29uLWN1c3RvbTkzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGMnOyB9IC8qICfuoYwnICovXG4uc2YtaWNvbi1lbWFpbC0xOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGQnOyB9IC8qICfuoY0nICovXG4uc2YtaWNvbi1zdWNjZXNzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGUnOyB9IC8qICfuoY4nICovXG4uc2YtaWNvbi1yZWZyZXNoOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGYnOyB9IC8qICfuoY8nICovXG4uc2YtaWNvbi1sZWZ0X2FsaWduX3RleHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1MCc7IH0gLyogJ+6hkCcgKi9cbi5zZi1pY29uLWRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTg1MSc7IH0gLyogJ+6hkScgKi9cbi5zZi1pY29uLWNoYXJ0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTInOyB9IC8qICfuoZInICovXG4uc2YtaWNvbi1jaGF0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTMnOyB9IC8qICfuoZMnICovXG4uc2YtaWNvbi1lcnJvcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU0JzsgfSAvKiAn7qGUJyAqL1xuLnNmLWljb24tbGVmdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU1JzsgfSAvKiAn7qGVJyAqL1xuLnNmLWljb24tcmVtb3ZlX2xpbms6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Nic7IH0gLyogJ+6hlicgKi9cbi5zZi1pY29uLXN1bW1hcnk6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Nyc7IH0gLyogJ+6hlycgKi9cbi5zZi1pY29uLWRvY3VtZW50OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTgnOyB9IC8qICfuoZgnICovXG4uc2YtaWNvbi1kcmFmdHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1OSc7IH0gLyogJ+6hmScgKi9cbi5zZi1pY29uLXN1bW1hcnlkZXRhaWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1YSc7IH0gLyogJ+6hmicgKi9cbi5zZi1pY29uLXJlcGxhY2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Yic7IH0gLyogJ+6hmycgKi9cbi5zZi1pY29uLWxpa2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Yyc7IH0gLyogJ+6hnCcgKi9cbi5zZi1pY29uLWRvd25sb2FkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NWQnOyB9IC8qICfuoZ0nICovXG4uc2YtaWNvbi1jaGVjazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODVlJzsgfSAvKiAn7qGeJyAqL1xuLnNmLWljb24tY2hldnJvbmxlZnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Zic7IH0gLyogJ+6hnycgKi9cbi5zZi1pY29uLWV4cGFuZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODYwJzsgfSAvKiAn7qGgJyAqL1xuLnNmLWljb24tbGluazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODYxJzsgfSAvKiAn7qGhJyAqL1xuLnNmLWljb24tcmVwbHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Mic7IH0gLyogJ+6hoicgKi9cbi5zZi1pY29uLXRhYmxlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjMnOyB9IC8qICfuoaMnICovXG4uc2YtaWNvbi1mZWVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjQnOyB9IC8qICfuoaQnICovXG4uc2YtaWNvbi1ldmVudC0xOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjUnOyB9IC8qICfuoaUnICovXG4uc2YtaWNvbi10aWxlX2NhcmRfbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY2JzsgfSAvKiAn7qGmJyAqL1xuLnNmLWljb24tcmljaHRleHRidWxsZXRlZGxpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Nyc7IH0gLyogJ+6hpycgKi9cbi5zZi1pY29uLWxpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2OCc7IH0gLyogJ+6hqCcgKi9cbi5zZi1pY29uLWZhdm9yaXRlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjknOyB9IC8qICfuoaknICovXG4uc2YtaWNvbi1jaGV2cm9ucmlnaHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2YSc7IH0gLyogJ+6hqicgKi9cbi5zZi1pY29uLWNoZXZyb25kb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NmInOyB9IC8qICfuoasnICovXG4uc2YtaWNvbi1maWx0ZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Yyc7IH0gLyogJ+6hrCcgKi9cbi5zZi1pY29uLW1vdmU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2ZCc7IH0gLyogJ+6hrScgKi9cbi5zZi1pY29uLXJpY2h0ZXh0aW5kZW50OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NmUnOyB9IC8qICfuoa4nICovXG4uc2YtaWNvbi11bmRlcmxpbmU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Zic7IH0gLyogJ+6hrycgKi9cbi5zZi1pY29uLWZlZWRiYWNrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzAnOyB9IC8qICfuobAnICovXG4uc2YtaWNvbi1maWxlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzEnOyB9IC8qICfuobEnICovXG4uc2YtaWNvbi11bmRvOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzInOyB9IC8qICfuobInICovXG4uc2YtaWNvbi1yaWNodGV4dG51bWJlcmVkbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODczJzsgfSAvKiAn7qGzJyAqL1xuLnNmLWljb24tbG9jazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc0JzsgfSAvKiAn7qG0JyAqL1xuLnNmLWljb24tZmlsdGVybGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc1JzsgfSAvKiAn7qG1JyAqL1xuLnNmLWljb24tY2hldnJvbnVwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzYnOyB9IC8qICfuobYnICovXG4uc2YtaWNvbi1jbGVhcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc3JzsgfSAvKiAn7qG3JyAqL1xuLnNmLWljb24tZm9yd2FyZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc4JzsgfSAvKiAn7qG4JyAqL1xuLnNmLWljb24tbmV3X3dpbmRvdzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc5JzsgfSAvKiAn7qG5JyAqL1xuLnNmLWljb24tcmljaHRleHRvdXRkZW50OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2EnOyB9IC8qICfuobonICovXG4uc2YtaWNvbi11bmxvY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Yic7IH0gLyogJ+6huycgKi9cbi5zZi1pY29uLW9wcG9ydHVuaXR5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2MnOyB9IC8qICfuobwnICovXG4uc2YtaWNvbi1wb3N0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2QnOyB9IC8qICfuob0nICovXG4uc2YtaWNvbi11cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODdlJzsgfSAvKiAn7qG+JyAqL1xuLnNmLWljb24tc2VhcmNoOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2YnOyB9IC8qICfuob8nICovXG4uc2YtaWNvbi1uZXc6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4MCc7IH0gLyogJ+6igCcgKi9cbi5zZi1pY29uLWZyb3plbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODgxJzsgfSAvKiAn7qKBJyAqL1xuLnNmLWljb24tY29tbWVudHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Mic7IH0gLyogJ+6igicgKi9cbi5zZi1pY29uLXJlY2VudDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODgzJzsgfSAvKiAn7qKDJyAqL1xuLnNmLWljb24tbWFnaWN3YW5kOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODQnOyB9IC8qICfuooQnICovXG4uc2YtaWNvbi1kaXNjb3VudHNjaGVkdWxlaWNvbnMtMDI6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4NSc7IH0gLyogJ+6ihScgKi9cbi5zZi1pY29uLWN1c3RvbTkwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODYnOyB9IC8qICfuooYnICovXG4uc2YtaWNvbi1jYW5jZWwtY2lyY2xlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODg2JzsgfSAvKiAn7qKGJyAqL1xuLnNmLWljb24tY3VzdG9tMjY6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Nyc7IH0gLyogJ+6ihycgKi9cbi5zZi1pY29uLXRyZW5kaW5nOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODgnOyB9IC8qICfuoognICovXG4uc2YtaWNvbi10YXJnZXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4OSc7IH0gLyogJ+6iiScgKi9cbi5zZi1pY29uLWN1YmU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Yic7IH0gLyogJ+6iiycgKi9cbi5zZi1pY29uLXBhaXJlZC1saW5lczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODhjJzsgfSAvKiAn7qKMJyAqL1xuXG4vKiBUaGUgZm9sbG93aW5nIGlzIGNvcGllZCBmcm9tIGljb25zL2Nzcy9zYi1lbWJlZGRlZC5jc3MgYXMgbGVzcy1wbHVnaW4tY2xlYW4tY3NzIGNvdWxkIGhhbmRsZSBhIEBpbXBvcnQgKi9cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogJ3NiJztcbiAgc3JjOiB1cmwoJy4uL2ZvbnQvc2IuZW90PzQ5MzQwMjQ4Jyk7XG4gIHNyYzogdXJsKCcuLi9mb250L3NiLmVvdD80OTM0MDI0OCNpZWZpeCcpIGZvcm1hdCgnZW1iZWRkZWQtb3BlbnR5cGUnKSxcbiAgICAgICB1cmwoJy4uL2ZvbnQvc2Iuc3ZnPzQ5MzQwMjQ4I3NiJykgZm9ybWF0KCdzdmcnKTtcbiAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xufVxuQGZvbnQtZmFjZSB7XG4gIGZvbnQtZmFtaWx5OiAnc2InO1xuICBzcmM6IHVybCgnZGF0YTphcHBsaWNhdGlvbi9vY3RldC1zdHJlYW07YmFzZTY0LGQwOUdSZ0FCQUFBQUFCWDBBQTRBQUFBQUpCZ0FBUUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFCUFV5OHlBQUFCUkFBQUFFUUFBQUJXUGlsSkVtTnRZWEFBQUFHSUFBQUFPZ0FBQVVyUU5obTNZM1owSUFBQUFjUUFBQUFLQUFBQUNnQUFBQUJtY0dkdEFBQUIwQUFBQlpRQUFBdHdpSkNRV1dkaGMzQUFBQWRrQUFBQUNBQUFBQWdBQUFBUVoyeDVaZ0FBQjJ3QUFBcUNBQUFQM000NCtPMW9aV0ZrQUFBUjhBQUFBRFVBQUFBMkNCdXNCR2hvWldFQUFCSW9BQUFBSGdBQUFDUUhsd054YUcxMGVBQUFFa2dBQUFBL0FBQUFuSU5IQUFCc2IyTmhBQUFTaUFBQUFGQUFBQUJRU1pSTmxtMWhlSEFBQUJMWUFBQUFJQUFBQUNBQXpBdlNibUZ0WlFBQUV2Z0FBQUZ6QUFBQ2hmL0VqRzV3YjNOMEFBQVViQUFBQVNBQUFBRzZBUmkybDNCeVpYQUFBQldNQUFBQVpRQUFBSHZkYXdPRmVKeGpZR1NPWTV6QXdNckF3VlRGdEllQmdhRUhRak0rWURCa1pHSmdZR0pnWldiQUNnTFNYRk1ZSEY0d3ZGQmxEdnFmeFJERkhNUXdIU2pNQ0pJREFPTFFDN2w0bkdOZ1lHQm1nR0FaQmtZR0VIQUI4aGpCZkJZR0RTRE5CcVFaR1pnWUdGNm8vdjhQVXZDQ0FVUkxNRUxWQXdFakc4T0lCd0NNK0FiVEFBQUFBQUFBQUFBQUFBQUFBQUI0bksxV2FYTVRSeENkMVdITE5qNkNEeEkyZ1ZuR2NveDJWcGpMQ0JERzdFb1c0Qnp5bGV4Q2psMUxkdTZMVC93Ry9acGVrVlNSYi95MHZCNGQyR0FuVlZRb1N2Mm05KzFNOSt1ZVhwUFFrc1JlV0krazNId3BwclkyYVdUblNVZzNiRnFPNGtQWjJRc3BVMHorTG9pQ2FMWFV2dTA0SkNJU2dhcDFoU1dDMlBmSTBpVGpRNDh5V3JZbHZXcFNidWxKZDlrYUQrcXQrdmJUMEZHTzNRa2xOWnVoUSt1UkxhbkNxQkpGTXUyUmtqWXR3OVZmU1ZyaDV5dk1mTlVNSllMb0pKTEdtMkVNaitSbjQ0eFdHYTNHZGh4RmtVMldHMFdLUkRNOGlDS1BzbHBpbjF3eFFVRDVvQmxTWHZrMG9ueUVINUVWZTVUVENuSEpkcHJmOXlVLzZSM092eVRpZW91eUpRZitRSFprQjN1bksva2kwdG9LNDZhZGJFZWhpdkIwZlNmRUk1dVQ2cC9zVVY3VGFPQjJSYVluelFpV3lsZVFXUGtKWmZZUHlXcmhmTXFYUEJyVmtvT2NDRm92YzJKZjhnNjBIa2RNaVdzbXlJTHVqazZJb082WG5LSFlZL3E0K09POVhTd1hJUVRJT0piMWprcTRFRVlwWWJPYUpHMEVPWWlTc2tXVjFIcEhUSnp5T2kzaUxXRy9UdTNvUzJlMFNhZzdNWjZ0aDQ2dG5LamtlRFNwMDB5bVR1Mms1dEdVQmxGS09oTTg1dGNCbEIvUkpLKzJzWnJFeXFOcGJETmpKSkZRb0lWemFTcUlaU2VXTkFYUlBKclJtN3RobW12WG9rV2FQRkRQUFhwUGIyNkZtenM5cCszQVAydjhaM1VxcG9POU1KMmVEc2hLZkpwMnVVblJ1bjU2aG44bThVUFdBaXFSTFRiRGxNVkR0bjRINWVWalM0N0Nhd05zOTU3eksraDk5a1RJcElINEcvQWVMOVVwQlV5Rm1GVlFDOTIwMXJVc3k5UnFWb3RVWk9xN0lVMHJYOVpwQWswNURuMWpYOFk0L3ErWkdVdE1DZC92eE9uWkVaZWV1ZllseURTSDNHWmRqK1oxYXJGZGdNNXN6K2sweS9aOW5lYllmcURUUE52ek9oMWhhK3QwbE8ySE9pMncvVWluWTJ3dmFFR1Q3anNFY2hHQlhNQUdFb0d3ZFJBSTIwc0loSzFDSUd3WEVRamJJZ0podTRSQTJINk1RTmd1SXhDMmw3V3NtbjRxYVJ3N0U4c0FSWWdEb3pudXlHVnVLbGRUeWFVU3JvdEdwemJrS1hLcnBLSjRWdjByQS8zaWtUZXNnYlZBdWtUVy9JcEpybnhVbGVPUHJtaDUwOFM1QW81VmYzdHpYSjhURDJXL1dQaFQ4TC9hbXFxa1Y2eDVaSElWZVNQUWsrTkUxeVlWajY3cDhybXFSOWYvaTRvT2E0RitBNlVRQzBWWmxnMittWkR3VWFmVFVBMWM1UkF6R3pNUDEvVzZaYzNQNGZ5YkdDRUw2SDc4TnhRYUM5eURUbGxKV2UxZ3I5WFhqMlc1dHdmbHNDZFlrbUsrek90YjRZdU16RXI3UldZcGV6N3llY0FWTUNxVllhc05YSzNnelhzUzg1RHBUZkpNRUxjVlpZT2tqY2VaSUxHQll4NHdiNzZUSUNSTVhiV0IyaW1jc0lHOFlNd3AyTytFUTFSdmxPVndlNkY5SG8yVWYydFg3TWdaRlUwUStHMzJSdGpyczFEeVc2eUJoQ2UvMU5kQVZTRk54YmlwZ0VzajVZWnE4R0ZjcmR0R01rNmdyNmpZRGN1eWlnOGZSOXgzU281bElQbElFYXRIUnordHZVS2QxTG45eWlodTN6djlDSUpCYVdMKzlyNlo0cUNVZDdXU1pWWnRBMU8zR3BWVDE1ckR4YXNPM2MyajdudkgyU2R5MWpUZGRFL2M5TDZtVmJlRGc3bFpFTzNiSEpTbFRDNm82OE1PRzZqTHphWFE2bVZja3Q1MkR6QXNNS0Rmb1JVYi8xZjNjZmc4VjZvS28rTkl2WjJvSDZQUFlnenlEemgvUi9VRjZPY3hUTG1HbE9kN2x4T2ZidHpEMlRKZHhWMnNuK0xmd0t5MTVtYnBHbkJEMHcyWWg2eGFIYnJLRFh5bkJqbzkwdHlPOUJEd3NlNEs4UUJnRThCaThJbnVXc2J6S1lEeGZNWWNIK0J6NWpCb01vZkJGbk1ZYkRObkRXQ0hPUXgybWNOZ2p6a012bURPT3NDWHpHRVFNb2RCeEJ3R1Q1Z1RBRHhsRG9Pdm1NUGdhK1l3K0lZNTl3RytaUTZEbURrTUV1WXcyTmQwYXloeml4ZDBGNmh0VUJYb3dQUVRGdmV3T05SVUdiSy80NFZoZjI4UXMzOHdpS2svYXJvOXBQN0VDMFA5MlNDbS9tSVFVMy9WZEdkSS9ZMFhodnE3UVV6OXd5Q21QdE12eG5LWndWOUd2a3VGQThvdU5wL3o5OFQ3QjhJYVFMWUFBUUFCLy84QUQzaWNoVmQ3Y0ZUbEZiL251Ni9kbStUdTNuM2NtMnlTVFhZMzJadEhDYmhQbXNRUVl3U0dCcHFKR1lUZ0FHV3MwUEF3T2p3c2I4TVVYMmxDSGJ1aVJsU0dKb3pWak9VaGp1UEkxRnExQ0U1MUt0Z09GdG95YWNJZk5DUFlPcFQ5MHZQZHpVSVFNdDNrbnYxZTkzem5kOTdMQWNlTmQvSWpmQnNuY3RKaGdZTnAxVm9BTkZIalIrZ0FQY20zSVYxM2pmUnkrQkd1bitVNW1jdmhIRnhlbzVLWGE3ZUpBbkRDdEdxdkZ0QUFIL2ZFTjd4RjU4RmIyK0FvL1FFY1RiRVppYkpKK3RTTk1lTnJ2NFd2bXpPNFFxNkVDM0ZHb3lkUVdseFVrTy8xYU03c1hYYThLeDcxOGhPUGU0cnhWZmJaTm9tbXJsNkZUWmtuN2JyOW1Na2ozVlllclZHZExJUDBYUmtDWHBoNHJMdCtUbjZVZmpuelRIRXRjdWZHSCtiL3lyZHdCTzkwYzhveHB5SWhheDVadTRHMzh3MmtCSFNWVElkd003aE93UUR3ZEFrNFNHMnJiMWVCUlF2NzRENzZMMmlDQVhxTmRwQ3Z6WHBTMk8xcnJTVUZ1d281N29adGM5QzJkaDV0RzdkRDBnNkdIV1E3Z0VGSHZ3SURqSy9vcUVYbzZKeWJwMSt4STdmbmcrYk4vc0ZLOE1GSytqd2QvaXc3b00vRFNnNVJaZDh6dVJtYzdXaE5sVjhoNkYveFpDSnBKbzNFTElnYXVwRTBaTDBFdkxJa0c3SXBPU0JraGszWlRJYk5wRWVQSkdKaEZWSnEvdksxR3lxbk8vdWQwNm8zckYyZXI2WXlTOVhUY0dsNnBiVjBxbjF6Ty83RHhLRmxCanRrTEx2NVVDckxhbWw5ZS91akMwbWI1ZE9ES0tNK2xVK2pQY3NuUGZ6SXRmd2J6K0wrL3JIKy9xK1J2dlJTUmsvdklpL21RZEpoa2VsSlM2SkN3ZHcvQU5jT3BKZnZCMkgvQWFBNE9zRDhMS09mUGFnZkI1ZVArdEdkTWtkWUdFWER5UVpJUm5SREw0YW9Cb0Y0RFpoaFNYNmFGSm92M0wrMHY5eVhTaDhDanN4TnhtYUxLZEkwY05laUIySE52WFd6MXFiZkkwMWRzYm1FekszTjhPYzR2bys4Z2ZMa0lmOWNSU0RJdnp6Z05aUGVBS0tKRzNLYzcwdXZPSGVPN0x1MmkrdzdkMjdIUXdjSHU4NTFQVFJ3OEtFTW5wL3dkL0F1em90NDNEYUdKNWFJbEFDanVsZExJdldnSTRYTFlzNHJaWkd5eTY1SW1ZdHVwajkxUVdGQm1lc3k2UzRvS3l0SWI3L3NLb3U0NldiWTdjbndYSTA4UFJiUFBFdEhNWFJKM1NNRnA0T0dOSnpVWktRdWVCeDI0NHV1eTJYUk1yaUNyR0dGendXNzZXWlhMT1M2bk43T2VKUHV5NjRReDQrbngzL0RMK09aOVpKY004YlJYWFhWN2h3ZTQ2ZzhIZ3RYUTFBcUJvOWVCNUdFTzFZRG9hQXNZVnhGSTZoa2hPR1JaQlVNYjJZL2hrN1p3QnNlRllJMUJMZjlBRmNVMjJxYllwRytodnZ2ZUdLT1BXK2VJTmxGZi9uTUtyMHdWQS9XVnI2clNQRjdjczg4OHVISXgrdWt6ZTllZVdkN1cvWTFCWGJjMFY2elNWV1NnaHd1OUx1OHZseG5ZOWlERzY1Z2psUHlGVlcwYmZoZy9mb1BMakxDVEhZZGo1K3I0ZW9Rejh4SVZkQm51NDVIbXd6S0c3b0JqLzhPWEhFU0VGS255QW5GZG9nSkZZOHplbFZXNXR3QUJ6K2VMUHRpWFBDekhSd2N0cWdDMXhaUExDam5iNUkzVXhkZVJqOVd1Q0RYd0MxZ01kVFNHQ2tyY0lnc2hpQ0tHU3dlY29Ba2d3Y3BHanFjcUdOZVZNY01vRVVqdXVnTnhOMm8rM2hJcWtaRUxOQXdGWGlUZUNMdXhublVETWxSOXUyT3VzbnpLeW9rUWdpQVFQOGlIUkpWK1pETmxyZmFBc0Z3ZkU3ZitWUVdKWnVrZE44TmQzNHEyQ1NibVBQMGhsZXJmRS80cWw0eGQzWThSdFp0OXRsSmpxSkk2ZG1TZkVnVUQ5dTlQTWZBcFRsbFhuY0VURVVTZ1RUdWpOQXZCVVVHSUUzd1RYMTlhMnQ5UFR4TSs3aGJNRWU0SHpMTXpiRVpXY3psTnpDTFUySytHUmVmMVlFc21kZTFrRlhDL3dGTmhFbndjaklLRUhpWVVFR3VwWUZvQnJSZDNuRUw1bC9VMWJXMjF0WEJJN1NYZEhkSEViOG80bFVaRmZ6WkllR3d5WXBkSkNkSm1OV3J3OEI2QmNnQk9EazhUTUswQy9aWTI3ZWVpUmZDOEhBSzl0QXVwcmZ4OGZISCtWL3pTYzdHYVZ3cFZualVXeWhRNE5aVXdmS1ZvT1RVU3hQT3NCbmhYS2hsRnljbWRKbEhMWVl3TTdnVFNUNXB3aGZQblQ0Tk5hZFBQL2MrdUFpOVNIZlNpd1JjMEszcWZJZWcwaE5Tcmt2b0VQS3EvM3VFZkhLYWZtNGRYa1V2WVdvYUV5QWZ0b1B2VzBISGM2clE0Y21EaE1yVEwrY2N5Y3EraHpSYnNoT3JGOG9ESmpocEhoNys3bjRHdjFhZTJhZXhZZXlnc3ZXdUJIMmluSXR5OVp5ak1UY2VtMTVSRmdxVUdyS0lMMkJXeHl3bkI0SmhNODZJWnFVY1lGNWhlQk5SQjBSQmpockplQWdUa3huU0F2RllBclNKQ1gvSThFT3BuaDdGTC9vWkV0MTV3WkhRUjNBVURzd1pIS1F2RGc2dWZmTzAzeGdGdjA3Q1ovekdDTm1LNXp1czExNHAxV0dUbm5CY1FBWHJ4NHhOZzdCdDhQMDNSMGYxVXFBdjl1a0p1b0RzR21HVEYxanR1SjZEY3JrQ3F6WkpyRFpCVUNWK2lEUkFEWUhKU2ZLTmUzdGFTZnNUcisxZUtDem9oU1dUTWducGJlczUwTk5tRWZySEtmS2NEYXRCRVBOY1NZSERMaEhNYzRDRm9BYXd2cGkzdjVEVXRUM2FSaGF1WDdobnlvdGhhVjE3KzhiMjltK212TitxajJRUjZjYTY3MEdNemx4RlpCaXhxSWxTT0k2V01jb2pYczBUeENIMHF5cE42VVZGT3B5ZGw0S05pays1b0xwODhJN1BwVmJVMHByYVd2aTg5aWFldVJaUGwyb1hrS2M3bGl4UFlOaWpHY3ZEWml6RGRVaUZOWjZpSWc5OVZoMUtwV0NwYXJHa3M1SGxCZVhmdFJaWDdub2Q3eUpiVVU2RDJVSzdSVTU1MHBoZmdhTDI2SDYvM29hRHZaN1NVZy9LVzJUN1ZuVVd3ZCtMbk9xM2t5YzM4Wit3dFdiSnJFMld1WHp5UklXTmpDdDlTb1VQVlZobGpmZXFEQUJqUy8zc0RwdDYwOHdLblhHSzlsNk05cDZCOFZNWllQR0RqbzFPRlo0RjRSQ3pOQitOSkxBc2w0QWZzQ3JMek55NGhFMWlRdWNYZTV4WERiYzJ2NjJydHJObGhsRFJ2cUtoYVdPbG9Fa3RJcEhxaDViZDkwclhYS0h4MGIxTDJ2YmVPZGM1amZ6dXFxcFBjODZmWDlQU3ViNnpwYVkyTG9FNFgxQ2xlYTNRdkg3ZjBMNzF6UTNmbit0eVQ4UTFHU0ZQV2YydElxQmN5U0RxTXFwWkhkSURWYlU5c0daczdPUDZDbGhLVDZUT25rMHgzeDBmL3ozL1MvSWZ6R0plakhmbFdLSHVkcWtpcTlFNkV6MkFQVnNzQ2F6Rk1HUmt4ZU9hbjNVWVlmN0pYSUJvT0kwZEdPUkJWMjVGcERLMzcyZE5wVlVBVlkxVmxmTjFveUtDQjB4REo5dTgrZm5lWDlFdm9KcjJRV1d3dExMeXJxcHMzQ3kyWXJNSU93VGxXRldnQU9PVHhRM0dSalpNM0JQTmdJeTlqWUY2TmQweGt5M0lrdGVkYVEvZ2pmVWZQcElObWQ4cU1xdWV1ZkpxV1FHc2Y3WXRObEZTRlB0S204TG5UQVFOa3ZUY1RsWTBPdG5SajZCRDVrV1JsK21BWkxOaHpoakgvUGNxajcwbUYwQS9Lc2lSZU9hbjJITkpmdFFFV0QyZUZHTFNDWDVpZUdTRXVPdlpreW1oOTA4OUVQeGVyZWY0QTF0YW4xblZTT3JYOUI3bzZackozM1BjQzkwcm55R3BFM3VsSHZwQ2NaWDMrRDBOblh2Mjk2NnJGWm9lVE0zZjhzQnhiNmFuZkoxL25aekg2Smo0RFl0YWQrSkZaaExiUEN3bXFJU29iRVliZ0hoZXUzVHB0ZDUxczl0WGJEOXk1T29SMHZ2MjIxdkpHRGsvUmw4Zld6U3YvZ2h3UjRhMm5qdzVjREZUeThaM1lENi9FMytoU29jbHd1cUJXSWcyYzVlTGJ0aXliUU5zb1orc282Zm9pVTF3aHNBcStxenRMSDNtYjJkZ1ZhYTMzMm05cTJGbXN4MHRMVkNzbUlxSzdxVGhSaGJHZEhCQTBtMldFQWZNQXNPY0JkT3gyQytGNHVYRnhZc1k0N2FpbG4rT0xDanUrTWZEQnoyMnBqZTE5KzUyRFozUmJZMnpiZXd5dGVOK09vYlhYVm95OCtEK2VBZW9RN2JIVk84blczS2VPcTl1RTRqM0R4OTUvd2U2b3RCRUFBQjRuR05nWkdCZ0FPSkRUcllOOGZ3Mlh4bTRtVjhBUlJndWRaLzBndER6cGY3Ly9aL0ovSUk1Q01qbFlHQUNpUUlBYkNvTmpRQUFBSGljWTJCa1lHQU8rcC9GRU1YOGdvSGgvM2NnQ1JSQkFlb0FrTVlHRGdBQWVKeGpmc0hBd0l5TzcySVJBK0VKUUx3QWlBMmhPQktLRjBBdzR4a0labDRGcENkQU1GZ2ZWQjFUQkFRekYwQXhTQXdrUHdYSm5EVUkrd0NQWlJteUFBQUFBQUFBRmdCQ0FJb0F2Z0R1QVJJQkxnR0FBYVlCdmdIdUFnNENPQUppQXNvRElnT2NCQllFS0FRNEJJWUVsZ1NtQlF3RlBnVitCYWdGMGdZQ0JqWUdnZ2FjQnRvSEpnZGlCNDRIckFmdUFBRUFBQUFuQUZBQUNRQUFBQUFBQWdBQUFCQUFjd0FBQUNnTGNBQUFBQUI0bkhXUXkwckRRQmlGVDNwUjJxS2dndXQvcFMyRjlBSkZjQ0hGUXJzU29ZdnVrelpOVXRKTW1aa0tkZWNEK0lxK2hnczNucVNEaUdEQ0pOODUvMjFtQUZ6aUF4Nk96NGpyeUI0cVZFZXU0QlIzanF0VUQ0NXI1TEhqT2xwNGRIeEMvOGx4RTEwOE8yN2hDcS9zNE5VYVZCdThPL2JZNmROeEJlZjRjbHhGeldzNHJwSFBITmR4N1YwNFBxRi82N2lKaGRkMTNNS045elpSdTROTzQ4UktlOUtSWVg4d2t2QWdpbGFhQjVrRWU1c29iV1FzYTVYYktNdVV2MVJiRTg2amVKOEYyb1FtWEVUYXBDcVhnZDgzNFN6S0l4M1lhRlYwTVMveDBOcTFyTFhheXRUVnkwNnJUYlMwZm1MdDdyN1grOTBYRXlqc2NJQkdpaGdKTEFSdHVoMytoK2hqd0FzWGhNd1FaaDZ6VXVRSWtORUpzR2RGVWtZTTlaaHJUWlhUalppUmtYMHMrZDB5SG1KT04yWk54a3BkT3NWYTBDMVVXbFlLWi9xY1hFUm1qT1JsTkNnN3JuNzJZdkRDVGtPNmxoT0xxYnFjSXBqK21TODhYeEhiMEZuUzk4dFRXcnIzNlBIOVo3L2Z4bmR2ZHdCNG5HMU8yWExDTUJDTFFocENDTFQwdnUrV0ozK1U2emlKaTdFOTlxYVV2eStHS1gycEhyVFN6cXkwU1pyc1VDYi9ZNTRrU0RGQWhnUGtHS0xBQ0NYR3FEREJGSWM0d2d6SE9NRXB6bkNPQzF6aUN0ZTR3UzN1Y0k4SFBPSUp6M2pCSzk3d2pubmVLRTNTRjlReHpYMHJVK3FHVWF0QXVaTkdLSjBMYm9UVW1kTjlHQWpiVHJoV3JXR2ZmU0RWckZPN3lMUVZpMEoraTQ2YlZtYTFYWm0wZDFVbnRXTkNlYUZsWFNuVDJMMEoxaE16ZkNsWjc2Wi9KaDRXa1ZpdGZONjdPSWJDTGgwUFllUlYyMUhjRkZvMlc3RXBFcUhhWlRLNWRMUWUxNVorUzNLeVRKcTYySXhBM0ZQVjhFQ3NzWDdGZlQzWm1nOHVGdEdsWWxWcStTWDE5b01SSjVLR2xEV3p2ZHFIQnNtOTZBWkNyTEtZV2tiYWRTZkpEMllJZVF4NG5HUHczc0Z3SWloaUl5TmpYK1FHeHAwY0RCd015UVViR1ZpZE5qSXdhRUZvRGhSNkp3TURBeWN5aTVuQlphTUtZMGRneEFhSGpvaU56Q2t1RzlWQXZGMGNEUXlNTEE0ZHlTRVJJQ1dSUUxDUmdVZHJCK1AvMWcwc3ZSdVpHRndBQjlNaXVBQUFBQT09JykgZm9ybWF0KCd3b2ZmJyksXG4gICAgICAgdXJsKCdkYXRhOmFwcGxpY2F0aW9uL29jdGV0LXN0cmVhbTtiYXNlNjQsQUFFQUFBQU9BSUFBQXdCZ1QxTXZNajRwU1JJQUFBRHNBQUFBVm1OdFlYRFFOaG0zQUFBQlJBQUFBVXBqZG5RZ0FBQUFBQUFBR0NBQUFBQUtabkJuYllpUWtGa0FBQmdzQUFBTGNHZGhjM0FBQUFBUUFBQVlHQUFBQUFobmJIbG16amo0N1FBQUFwQUFBQS9jYUdWaFpBZ2JyQVFBQUJKc0FBQUFObWhvWldFSGx3TnhBQUFTcEFBQUFDUm9iWFI0ZzBjQUFBQUFFc2dBQUFDY2JHOWpZVW1VVFpZQUFCTmtBQUFBVUcxaGVIQUF6QXZTQUFBVHRBQUFBQ0J1WVcxbC84U01iZ0FBRTlRQUFBS0ZjRzl6ZEFFWXRwY0FBQlpjQUFBQnVuQnlaWERkYXdPRkFBQWpuQUFBQUhzQUFRTmVBWkFBQlFBSUFub0N2QUFBQUl3Q2VnSzhBQUFCNEFBeEFRSUFBQUlBQlFNQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFVR1pGWkFCQTZBRG9KUU5TLzJvQVdnTlNBSmNBQUFBQkFBQUFBQUFBQUFBQUF3QUFBQU1BQUFBY0FBRUFBQUFBQUVRQUF3QUJBQUFBSEFBRUFDZ0FBQUFHQUFRQUFRQUNBQURvSmYvL0FBQUFBT2dBLy84QUFCZ0JBQUVBQUFBQUFBQUFBQUVHQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQS8yb0Q2QU5TQUFVQUJyTUVBQUV0S3hFaEFSRUZFUVBvL3FiK3pBTlMvcWIrYnZ3Q2pnQUFBQUFFQUFEL2FnUG9BMUlBQXdBSEFBc0FEd0FOUUFvTkRBa0lCUVFCQUFRdEt4VVJJUkVCRVNFUkV4RWhFUUVSSVJFQnR2NUtBYlo5QWJYK1N3RzFsZ0cyL2tvQ013RzEva3Y5elFHMi9rb0NNd0cxL2tzQUFBQUFDUUFBLzJvRDZBTlNBQU1BQndBTEFBOEFFd0FYQUJzQUh3QWpBQmRBRkNFZ0hSd1pHQlVVRVJBTkRBa0lCUVFCQUFrdEt4VTFNeFVETlRNVkF6VXpGUk0xTXhVRE5UTVZBelV6RlJNMU14VUROVE1WQXpVekZmcjYrdnI2ZmZyNit2cjZmZnI2K3ZyNmx2cjZBWGY2K2dGMyt2cjlFdnI2QVhmNitnRjMrdnI5RXZyNkFYZjYrZ0YzK3ZvQUFBQUFCZ0FBLzJvRDZBTlNBQU1BQndBTEFBOEFFd0FYQUJGQURoVVVFUkFOREFrSUJRUUJBQVl0S3hVMU14VUROVE1WQXpVekZSTTFJUlVCTlNFVkFUVWhGZnI2K3ZyNmpRSmgvWjhDWWYyZkFtR1crdm9CZC9yNkFYZjYrdjBTK3ZvQmQvcjZBWGY2K2dBREFBRC9jUVBlQTB3QUFnQUdBQk1BQ3JjUUNnWUVBUUFETFNzVkV3RURDUU0rQWg4QkZnNENMd0VtUkFFU3pRR21BUVArV3dFUEFqcFFHb01aQWpwUUdvTWJqd0ZYL3U4QlFnR20vdnorV2dMeUp6d0NHNElhVURvQ0dZTWJBQUFCQUFEL2FnUG9BMUlBQ3dBR3N3a0RBUzByTlFrQk53a0JGd2tCQndrQkFSZis2ZDBCRndFWDNmN3BBUmZkL3VuKzZVY0JGd0VYM2Y3cEFSZmQvdW4rNmQwQkYvN3BBQUFCQUFEL2FnUG9BMUlBQ3dBR3N3a0RBUzByTlJFaEVTRVJJUkVoRVNFUkFXY0JHZ0ZuL3BuKzV0RUJHZ0ZuL3BuKzV2NlpBV2NBQUFJQUFQOXFBK2dEVWdBbkFEQUFDTFV1S2g0S0FpMHJFVFUzTmpjbk54YzJQd0V6RnhZWE54Y0hGaDhCRlFjR0J4Y0hKd1lQQVNNbkppY0hKemNtSnpjVUZqSTJOQ1lPQVpZT0dHQnRkU2t2RUp3UUxTdDFiV0FZRHBhV0RoaGdiWFVyTFJDY0VDOHBkVzFnR0E3TlZIcFVWSHBVQVJDY0VDMHJkVzFmRnc2V2xnNFhYMjExS3kwUW5CQXZLWFZ0WUJnT2xwWU9HR0J0ZFNrdlhqeFVWSGhXQWxJQUJBQUEvNmNENkFNV0FBTUFCd0FMQUE4QURVQUtEUXdKQ0FVRUFRQUVMU3NWTlNFVkpUVWhGU1UxSVJVbE5TRVZBK2o4R0FQby9CZ0Q2UHdZQStoWm5KenduSnp5bkp6d25aMEFBQUVBQVArOEErZ0RBQUFHQUFhekJRTUJMU3NSTnhjQkZ3RW5vcVlCL0tUOVlLSUJCS0trQWY2ay9XQ2tBQUFBQUFJQUFQOXFBNUFEVWdBUEFCZ0FDTFVXRUFjQUFpMHJGUkV6SmpjK0FUY3lGaGNXSFFFekVRRWhOUzRCSnlZR0I0c0NHeWVhWEY2Y0pScVcvYklCQUFKSU56UkdCWllDUXFaQldHWUJiRk03UDIzOXZnSkNjRFJJQWdKSU9nQUFBQUlBQUFBQUE0OENyUUFHQUEwQUNMVU1DZ1FDQWkwckpTRVZKemNWSVNVMUlUVVhCelVEai8xaTM5OENudnlEQXA3ZjMzOXZxS2R3MzNCdnBxaHZBQUFCQUFEL2FRTXhBeElBRlFBR3N4TUlBUzByRVRRMk1oOEJFVFEyTWhZVkVUYzJNaFlVQndrQkppUTBFUFFrTWlUekVqSWtFdjU2L25rU0FSc1pKQkx6QW9JWkpDUVovWDd6RWlReUUvNTZBWVlVQUFBQkFBRC9hd014QXhRQUZRQUdzdzBEQVMwckVUUTNDUUVXRkFZaUx3RVJGQVlpSmpjUkJ3WWlKaElCaHdHR0VpUXlFdk1rTXlRQjlCSXlKQUZpR2hJQmh2NTZFalFqRXZQOWZoa2tKQmtDZ3ZNU0l3QUQvLzMvc1FOZkF3c0FEd0EzQUVRQUNyZEJPeXNUQ3dNRExTc2xOVFFtS3dFaUJoMEJGQlk3QVRJMkV6UXVBU01pQndZZkFSWXpNamMrQVRJV0ZSUUdCdzRCRnhVVUZqc0JNalkwTmo4QlBnTVhGQTRCSWk0Q1BnRXlIZ0VCOUFvSWF3Z0tDZ2hyQ0FxUFBsd3hpRWNKRFVvRUJna0ZIaVU0S2hZYkl6d0JDZ2hyQ0FvWUVod0tIaFFNMTNMRzZNaHVCbnE4OUxwK1Vtc0lDZ29JYXdnS0NnRi9NVlF1ZHc0S053UUhKaHNlRWhVYURCQkFKaFFJQ2dvU0lnc1FCaG9jS0ZKMXhIUjB4T3JFZEhURUFBQUFBLy85LzdFRFh3TUxBQjRBTGdBN0FBcTNPRElxSWhvSUF5MHJKVFUwSmlzQkVUUW1Ld0VpQmgwQkZCWTdBUlVqSWdZZEFSUVdPd0V5TmdNMU5DWXJBU0lHSFFFVUZqc0JNallGRkE0QklpNENQZ0V5SGdFQ093b0hOZ29Jc2dnS0NnZzFOUWdLQ2dqNkJ3cEhDZ2hyQ0FvS0NHc0lDZ0ZsY3Nib3lHNEdlcnowdW41U1dRZ0tBUjRJQ2dvSVdRZ0tzd29JV1FnS0NnSDhXUWdLQ2doWkNBb0s0SFhFZEhURTZzUjBkTVFBQUFBRUFBRC9hZ09mQTFJQUNnQWlBRDRBVGdBTlFBcE1RRElrR1E4RkFBUXRLd0V6THdFbU5TTVBBUVlIQVJRUEFRWWlMd0VtTmpzQkVUUTJPd0V5RmhVUk16SVdCUlVoTlJNMlB3RTFJd1lyQVJVak5TRVZBd1lQQVJVM05qc0JOUk1WSXpVekp5TUhNeFVqTlRNVE14TUNtV0lvQmdJQ0FnRUJCUDdhQnJJRkRnZXlDQWdOYXdvSWF3Z0thd2dLQWRMK3VzNEhCUVlJQmdxQ1F3RTl6Z1FJQmdnRkM0dDFvU29haUJvcW9DZUFXb0VDYm5vYUNRSUxDZ29HL1VZR0I3SUZCYk1KRlFNQUNBb0tDUDBBQ2txQ01nRW5DZ1lGQVFKQWdETCsyQVFLQndFQkFrSUI5VHc4VUZBOFBBRngvbzhBQUFBQUJBQUEvMm9EbndOU0FBb0FJZ0F5QUU4QURVQUtSRFF3SkJrUEJRQUVMU3NsTXk4QkpqVWpEd0VHQndVVUR3RUdJaThCSmpZN0FSRTBOanNCTWhZVkVUTXlGZ1VWSXpVekp5TUhNeFVqTlRNVE14TURGU0UxRXpZL0FUVUhCaWNHS3dFVkl6VWhGUU1QQVJVM05qc0JOUUtaWWlnR0FnSUNBUUVFL3RvR3NnVU9CN0lJQ0ExckNnaHJDQXByQ0FvQ0JLRXFHb2dhS3FBbmdGcUJDLzY2emdjRkJnUURBUVlLZ2tNQlBjNE1CZ2dGQzRzemVob0pBZ3NLQ1FkL0JnZXlCUVd6Q1JVREFBZ0tDZ2o5QUFxUk96dFFVRHM3QVhMK2pnS0Nnak1CSndvRkJRSUJBUUVDUUlBeS90a1BCZ0VCQVVJQUFBRUFBQUFBQWN3Q0pnQUNBQWF6QVFBQkxTc0JDd0VCek9ibUFpYitjQUdRQUFBQUFBRUFBQUFBQWN3Q0pnQUNBQWF6QVFBQkxTczFHd0htNXBZQmtQNXdBQUFBQlAvLy80Y0Rxd00zQUFnQUVRQWdBQ01BRFVBS0l5RVpFeEVPQkFBRUxTc0JJZ1lRRmlBMkVDWW5NZ0FTQUFRQUVnQUZOaFlIQXdZSEJTTWlKamNUTmpjRE55Y0IxWmZXMWdFdTF0YVh3Z0VTQXY3cS9vRCs2Z0lCRWdHQ0RoWURXZ1FPL3NvR0RCSUVXZ1FOSy91MEFzdlcvdExXMWdFdTFtais3djU2L3ZBRUFSZ0JmZ0VhK0FRV0R2N0tEZ1JhRkEwQk5nNEQvdGhIdEFBQUFRQUFBQUFCa0FKRUFBSUFCck1DQUFFdEt4RU5BUUdRL25BQ1JPYm1BQUFCQUFBQUFBR1FBa1FBQWdBR3N3RUFBUzByQVJFbEFaRCtjQUpFL2pUbUFBVUFBUDlxQStnRFVnQWZBQ0lBSlFBekFEd0FEMEFNTlRRdktDUWpJU0FYQndVdEt3RXlGaGNSRkFZSElTSW1KelVoSWlZbkVUUTJQd0UrQVRzQk1oWVhGVFl6RHdFekFRY3pGemMxSXhVVUJpY2pFU0UxTkRZQkVTTVZGQVluSXhFRHNoY2VBU0FXL2VrWEhnSCswUmNlQVJZUTVBODJGdWdYSGdFbUlVZW5wLzZicDZkdHNOWWVGK2tCSGhZQ0p0Y2VGK2dDZkNBVy9Wb1hIZ0VnRnFBZ0ZnRjNGallQNUJBV0lCYTNGM2VuQVgybndyRHA2UllnQWY2Ymp4WTIvazRDZytnV0lBSCttZ0FBQUFMLy9mK3hBMThEQ3dBTUFCa0FDTFVXRUFZQUFpMHJBU0lPQWg0Qk1qNEJMZ0lCRkE0QklpNENQZ0V5SGdFQnJWT01VQUpVaUtxR1ZnUk9qZ0ZiY3Nib3lHNEdlcnowdW40Q2psS01wSXhTVW95a2pGTCswSFhFZEhURTZzUjBkTVFBQUFBRC8vMy9zUU5mQXdzQUNBQVZBQ0lBQ3JjZkdROEpCZ0lETFNzQkZBWWlMZ0UyTWhZbklnNENIZ0V5UGdFdUFnRVVEZ0VpTGdJK0FUSWVBUUk3VW5oU0FsWjBWcEJUakZBQ1ZJaXFobFlFVG80QlczTEc2TWh1Qm5xODlMcCtBVjQ3VkZSMlZGVDFVb3lrakZKU2pLU01VdjdRZGNSMGRNVHF4SFIweEFBQUFBSUFBQUFBQWxnQ2dnQUxBQlFBQ0xVUURBb0ZBaTByQVJZVUJ3VUdKalVSTkRZWEpUSVZFUlFpTlJFMEFad09EdjZXRmh3Y0ZnSGNTcFlCZGdvYUN1UU9FaG9CdWhvU0RpZzYvaTQ2T2dIU09nQUFBQUlBQUFBQUFsZ0NnZ0FNQUJRQUNMVVNEZ2tFQWkwckV6UTNKVFlXRlJFVUJpY2xKaWMwTWhVUkZDSTFyZzRCYkJRY0hCVCtsQTZ1bHBZQlhnNEs1QTRTR3Y1R0doSU81QXIyT2pyK0xqbzZBQUFBQUFJQUFBQUFBM0FDZkFBTEFCY0FDTFVXRVFvRkFpMHJBUllVQndVR0pqVVJORFlYQnhZVUJ3VUdKalVSTkRZWEEySU9EdjZNRmg0ZUZsSU9EdjZZRkNBZ0ZBRjJDaHdJK0E0UUhBSGlIQkFPK0FvY0NQZ09FQndCNGh3UURnQUFBQUlBQUFBQUEzQUNmQUFNQUJrQUNMVVdFUWtFQWkwckVUUTNKVFlXRlJFVUJpY2xKaVUwTnlVMkZoVVJGQVluSlNZT0FYWVVJQ0FVL29vT0FjWU9BV2dVSUNBVS9wZ09BVjRPQ3ZnT0VCeitIaHdRRHZnSURnNEsrQTRRSFA0ZUhCQU8rQWdBQUFBQUFmLysvN0VEV1FNTEFEQUFCck1wSVFFdEt3RVZGQVlyQVNJbVB3RW1JeUlPQWg0RE16STJOejRCSHdFZUFRY09BUWNpTGdJK0F6TXlGaGMzTmhZRFdSUVEraGNURVUxU2NEcHFUREFFS0ZSaVBrSjJLUVFSQmt3RkFnWThybDlYb0hCSUJFQjRtRnRTbUQxSUVDMEN3L29PRmkwUVRVMHVUR3AwYWt3dU9qVUdBUVZOQkE0R1NsQUJSSFNlcnA1MFJENDVTQklUQUFBQkFBQUFBQUxvQW9vQUN3QUdzd29FQVMwck55SW1OUkV6RVNFMUZ3YzFaQ282akFGczhQRElQQ2dCWHY3S2x0emNsZ0FBQS8vLy84VURsUUwzQUJFQUZRQWZBQXEzR3hZVEVnNEZBeTBySlJZSERnRUhJUzRCSnpRM0FUNEJNaFlYQnhFekVRTU9BUWNlQVRJMk5DWURpUXdCQVRNbS9TRWxOUUVOQVhBTUtESXBESStGUWlBcUFRRXFRQ29wVFJZWEtESUJBVE1uRnhZQ2ZSVVlHQldsL3RVQksvNlBBU2tpSUNrcFFTb0FBQVAvL2YreEExa0RDd0FNQUJ3QUxnQUt0eW9oR1JBR0FBTXRLd0V5SGdFVURnRWlMZ0krQVJNMU5DWXJBU0lHQnhVVUZoY3pNalluRXpRbkppc0JJZ2NHRlJNVUZqc0JNallCclhUR2NuTEc2TWh1Qm5xOHdRb0hhd2dLQVF3SGF3Y0tBUW9HQlFoN0NBVUdDZ29KWndnS0F3dDB4T3JFZEhURTZzUjAvVWhxQ0FvS0NHb0lDZ0VNeHdGYUJ3TUZCUU1IL3FZR0NBZ0FBdi8vLzJvRG9RTU5BQWdBSVFBSXRSa0xCZ01DTFNzQk5DNEJCaDRCUGdFQkZBWWlMd0VHSXlJdUFqNEVIZ0lYRkFjWEZnS0RsTXlXQkk3VWpBRWlMRG9VdjJSN1VKSm9RQUk4Ykk2a2pIQTRBMFcvRlFHQ1o1SUNsc3FZQm96K21oMHFGYjlGUG1xUW9vNXVPZ1JDWnBaTmUyUy9GUUFBQVFBQS82d0RyQUxnQUJjQUJyTUVBQUV0S3dFeUZoQUdJeUluTnhZek1qWVFKaUlHQnpNSEp6TStBUUlVcXU3dXFvNXVSbFJpZnJTMCtyUUNqcmk0ZkFMd0F1RHcvcXp3V0VvOHRBRUF0SzU4ek15bTZnQUFBQUVBQVA5L0ErZ0RQUUFKQUFhekJnSUJMU3NSQlJzQkRRRVRKUVVUQVh0OWRRRjcvc3R1L3MzK3luY0Ixd0lCYVA2VUNOeitrdUhYQVdnQUFBSUFBUCtBQStnRFBRQVJBQ0lBQ0xVZ0dRb0VBaTByRVRNRkV6Y1hFdzBCRXhjdkFROEJOeE1uSHdJUEFUOEJGeWMvQVM4RER3RmVBUjFnSFIxWUFYdit5MUljVE9mb1RoMWE0M0dvRkFoQ3NCRytReEt1MXhZSVFFWUlBZGNDQVE1YVhQN3dDTnorN2xzNHFLSTFXZ0VPcmdpQkRoWExld3VLNEE1OUJBSVZ5Y2NWQUFFQUFBQUJBQURDUWoyQVh3ODg5UUFMQStnQUFBQUEwb3ZKU2dBQUFBRFNpNThhLy8zL2FRUG9BMUlBQUFBSUFBSUFBQUFBQUFBQUFRQUFBMUwvYWdCYUErZ0FBUC8zQStnQUFRQUFBQUFBQUFBQUFBQUFBQUFBQUNjRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUGRBQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFPUUFBQURvQUFBQXpFQUFBTXhBQUFEV1FBQUExa0FBQU9nQUFBRG9BQUFBY3dBQUFITUFBQURxZ0FBQVpBQUFBR1FBQUFENkFBQUExa0FBQU5aQUFBQ1dBQUFBbGdBQUFOd0FBQURjQUFBQTFrQUFBTG9BQUFEbEFBQUExa0FBQU9nQUFBRHJBQUFBK2dBQUFQb0FBQUFBQUFBQUJZQVFnQ0tBTDRBN2dFU0FTNEJnQUdtQWI0QjdnSU9BamdDWWdMS0F5SURuQVFXQkNnRU9BU0dCSllFcGdVTUJUNEZmZ1dvQmRJR0FnWTJCb0lHbkFiYUJ5WUhZZ2VPQjZ3SDdnQUJBQUFBSndCUUFBa0FBQUFBQUFJQUFBQVFBSE1BQUFBb0MzQUFBQUFBQUFBQUVnRGVBQUVBQUFBQUFBQUFOUUFBQUFFQUFBQUFBQUVBQWdBMUFBRUFBQUFBQUFJQUJ3QTNBQUVBQUFBQUFBTUFBZ0ErQUFFQUFBQUFBQVFBQWdCQUFBRUFBQUFBQUFVQUN3QkNBQUVBQUFBQUFBWUFBZ0JOQUFFQUFBQUFBQW9BS3dCUEFBRUFBQUFBQUFzQUV3QjZBQU1BQVFRSkFBQUFhZ0NOQUFNQUFRUUpBQUVBQkFEM0FBTUFBUVFKQUFJQURnRDdBQU1BQVFRSkFBTUFCQUVKQUFNQUFRUUpBQVFBQkFFTkFBTUFBUVFKQUFVQUZnRVJBQU1BQVFRSkFBWUFCQUVuQUFNQUFRUUpBQW9BVmdFckFBTUFBUVFKQUFzQUpnR0JRMjl3ZVhKcFoyaDBJQ2hES1NBeU1ERTFJR0o1SUc5eWFXZHBibUZzSUdGMWRHaHZjbk1nUUNCbWIyNTBaV3hzYnk1amIyMXpZbEpsWjNWc1lYSnpZbk5pVm1WeWMybHZiaUF4TGpCellrZGxibVZ5WVhSbFpDQmllU0J6ZG1jeWRIUm1JR1p5YjIwZ1JtOXVkR1ZzYkc4Z2NISnZhbVZqZEM1b2RIUndPaTh2Wm05dWRHVnNiRzh1WTI5dEFFTUFid0J3QUhrQWNnQnBBR2NBYUFCMEFDQUFLQUJEQUNrQUlBQXlBREFBTVFBMUFDQUFZZ0I1QUNBQWJ3QnlBR2tBWndCcEFHNEFZUUJzQUNBQVlRQjFBSFFBYUFCdkFISUFjd0FnQUVBQUlBQm1BRzhBYmdCMEFHVUFiQUJzQUc4QUxnQmpBRzhBYlFCekFHSUFVZ0JsQUdjQWRRQnNBR0VBY2dCekFHSUFjd0JpQUZZQVpRQnlBSE1BYVFCdkFHNEFJQUF4QUM0QU1BQnpBR0lBUndCbEFHNEFaUUJ5QUdFQWRBQmxBR1FBSUFCaUFIa0FJQUJ6QUhZQVp3QXlBSFFBZEFCbUFDQUFaZ0J5QUc4QWJRQWdBRVlBYndCdUFIUUFaUUJzQUd3QWJ3QWdBSEFBY2dCdkFHb0FaUUJqQUhRQUxnQm9BSFFBZEFCd0FEb0FMd0F2QUdZQWJ3QnVBSFFBWlFCc0FHd0Fid0F1QUdNQWJ3QnRBQUFBQUFJQUFBQUFBQUFBQ2dBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFKd0FBQVFJQkF3RUVBUVVCQmdFSEFRZ0JDUUVLQVFzQkRBRU5BUTRCRHdFUUFSRUJFZ0VUQVJRQkZRRVdBUmNCR0FFWkFSb0JHd0VjQVIwQkhnRWZBU0FCSVFFaUFTTUJKQUVsQVNZQkp3Wm1hV3gwWlhJSWRHZ3RiR0Z5WjJVQ2RHZ0hkR2d0YkdsemRBWndaVzVqYVd3R1kyRnVZMlZzQkhCc2RYTURZMjluRFdGc2FXZHVMV3AxYzNScFpua0NiMnNFYkc5amF3aGxlR05vWVc1blpRUmtiM2R1QW5Wd0RHaGxiSEF0WTJseVkyeGxaQXhwYm1adkxXTnBjbU5zWldRTWMyOXlkQzF1WVcxbExYVndEbk52Y25RdGJtRnRaUzFrYjNkdUNHUnZkMjR0WkdseUJuVndMV1JwY2dkamIyMXdZWE56Q1hKcFoyaDBMV1JwY2doc1pXWjBMV1JwY2dSa2IyTnpER05wY21Oc1pTMWxiWEIwZVF0a2IzUXRZMmx5WTJ4bFpBWjBieTFsYm1RSWRHOHRjM1JoY25RTVptRnpkQzFtYjNKM1lYSmtEV1poYzNRdFltRmphM2RoY21RQ1kzY0tiR1YyWld3dFpHOTNiZ2xoZEhSbGJuUnBiMjRSWVhSMFpXNTBhVzl1TFdOcGNtTnNaV1FHYzJWaGNtTm9BMk5qZHdSemRHRnlDbk4wWVhJdFpXMXdkSGtBQUFBQUFBRUFBZi8vQUE4QUFBQUFBQUFBQUFBQUFBQ3dBQ3dnc0FCVldFVlpJQ0JMdUFBT1VVdXdCbE5hV0xBMEc3QW9XV0JtSUlwVldMQUNKV0c1Q0FBSUFHTmpJMkliSVNHd0FGbXdBRU1qUkxJQUFRQkRZRUl0c0FFc3NDQmdaaTJ3QWl3Z1pDQ3d3RkN3QkNaYXNpZ0JDa05GWTBWU1cxZ2hJeUViaWxnZ3NGQlFXQ0d3UUZrYklMQTRVRmdoc0RoWldTQ3hBUXBEUldORllXU3dLRkJZSWJFQkNrTkZZMFVnc0RCUVdDR3dNRmtiSUxEQVVGZ2daaUNLaW1FZ3NBcFFXR0FiSUxBZ1VGZ2hzQXBnR3lDd05sQllJYkEyWUJ0Z1dWbFpHN0FCSzFsWkk3QUFVRmhsV1ZrdHNBTXNJRVVnc0FRbFlXUWdzQVZEVUZpd0JTTkNzQVlqUWhzaElWbXdBV0F0c0FRc0l5RWpJU0Jrc1FWaVFpQ3dCaU5Dc1FFS1EwVmpzUUVLUTdBQVlFVmpzQU1xSVNDd0JrTWdpaUNLc0FFcnNUQUZKYkFFSmxGWVlGQWJZVkpaV0NOWklTQ3dRRk5Zc0FFckd5R3dRRmtqc0FCUVdHVlpMYkFGTExBSFF5dXlBQUlBUTJCQ0xiQUdMTEFISTBJaklMQUFJMEpoc0FKaVpyQUJZN0FCWUxBRktpMndCeXdnSUVVZ3NBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZRVN3QVdBdHNBZ3NzZ2NMQUVORlFpb2hzZ0FCQUVOZ1FpMndDU3l3QUVNalJMSUFBUUJEWUVJdHNBb3NJQ0JGSUxBQkt5T3dBRU93QkNWZ0lFV0tJMkVnWkNDd0lGQllJYkFBRzdBd1VGaXdJQnV3UUZsWkk3QUFVRmhsV2JBREpTTmhSRVN3QVdBdHNBc3NJQ0JGSUxBQkt5T3dBRU93QkNWZ0lFV0tJMkVnWkxBa1VGaXdBQnV3UUZranNBQlFXR1Zac0FNbEkyRkVSTEFCWUMyd0RDd2dzQUFqUXJJTENnTkZXQ0ViSXlGWktpRXRzQTBzc1FJQ1JiQmtZVVF0c0E0c3NBRmdJQ0N3REVOS3NBQlFXQ0N3RENOQ1diQU5RMHF3QUZKWUlMQU5JMEpaTGJBUExDQ3dFR0ptc0FGaklMZ0VBR09LSTJHd0RrTmdJSXBnSUxBT0kwSWpMYkFRTEV0VVdMRUVaRVJaSkxBTlpTTjRMYkFSTEV0UldFdFRXTEVFWkVSWkd5RlpKTEFUWlNONExiQVNMTEVBRDBOVldMRVBEME93QVdGQ3NBOHJXYkFBUTdBQ0pVS3hEQUlsUXJFTkFpVkNzQUVXSXlDd0F5VlFXTEVCQUVOZ3NBUWxRb3FLSUlvalliQU9LaUVqc0FGaElJb2pZYkFPS2lFYnNRRUFRMkN3QWlWQ3NBSWxZYkFPS2lGWnNBeERSN0FOUTBkZ3NBSmlJTEFBVUZpd1FHQlpackFCWXlDd0MwTmp1QVFBWWlDd0FGQllzRUJnV1dhd0FXTmdzUUFBRXlORXNBRkRzQUErc2dFQkFVTmdRaTJ3RXl3QXNRQUNSVlJZc0E4alFpQkZzQXNqUXJBS0k3QUFZRUlnWUxBQlliVVFFQUVBRGdCQ1FvcGdzUklHSzdCeUt4c2lXUzJ3RkN5eEFCTXJMYkFWTExFQkV5c3RzQllzc1FJVEt5MndGeXl4QXhNckxiQVlMTEVFRXlzdHNCa3NzUVVUS3kyd0dpeXhCaE1yTGJBYkxMRUhFeXN0c0J3c3NRZ1RLeTJ3SFN5eENSTXJMYkFlTEFDd0RTdXhBQUpGVkZpd0R5TkNJRVd3Q3lOQ3NBb2pzQUJnUWlCZ3NBRmh0UkFRQVFBT0FFSkNpbUN4RWdZcnNISXJHeUpaTGJBZkxMRUFIaXN0c0NBc3NRRWVLeTJ3SVN5eEFoNHJMYkFpTExFREhpc3RzQ01zc1FRZUt5MndKQ3l4QlI0ckxiQWxMTEVHSGlzdHNDWXNzUWNlS3kyd0p5eXhDQjRyTGJBb0xMRUpIaXN0c0Nrc0lEeXdBV0F0c0Nvc0lHQ3dFR0FnUXlPd0FXQkRzQUlsWWJBQllMQXBLaUV0c0Nzc3NDb3JzQ29xTGJBc0xDQWdSeUFnc0F0RFk3Z0VBR0lnc0FCUVdMQkFZRmxtc0FGallDTmhPQ01naWxWWUlFY2dJTEFMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTJBallUZ2JJVmt0c0Mwc0FMRUFBa1ZVV0xBQkZyQXNLckFCRlRBYklsa3RzQzRzQUxBTks3RUFBa1ZVV0xBQkZyQXNLckFCRlRBYklsa3RzQzhzSURXd0FXQXRzREFzQUxBQlJXTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlk3QUJLN0FMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTdBQks3QUFGclFBQUFBQUFFUStJeml4THdFVktpMndNU3dnUENCSElMQUxRMk80QkFCaUlMQUFVRml3UUdCWlpyQUJZMkN3QUVOaE9DMndNaXd1Rnp3dHNETXNJRHdnUnlDd0MwTmp1QVFBWWlDd0FGQllzRUJnV1dhd0FXTmdzQUJEWWJBQlEyTTRMYkEwTExFQ0FCWWxJQzRnUjdBQUkwS3dBaVZKaW9wSEkwY2pZU0JZWWhzaFdiQUJJMEt5TXdFQkZSUXFMYkExTExBQUZyQUVKYkFFSlVjalJ5TmhzQWxESzJXS0xpTWdJRHlLT0Myd05peXdBQmF3QkNXd0JDVWdMa2NqUnlOaElMQUVJMEt3Q1VNcklMQmdVRmdnc0VCUldMTUNJQU1nRzdNQ0pnTWFXVUpDSXlDd0NFTWdpaU5ISTBjallTTkdZTEFFUTdBQ1lpQ3dBRkJZc0VCZ1dXYXdBV05nSUxBQkt5Q0tpbUVnc0FKRFlHUWpzQU5EWVdSUVdMQUNRMkVic0FORFlGbXdBeVd3QW1JZ3NBQlFXTEJBWUZsbXNBRmpZU01nSUxBRUppTkdZVGdiSTdBSVEwYXdBaVd3Q0VOSEkwY2pZV0Fnc0FSRHNBSmlJTEFBVUZpd1FHQlpackFCWTJBaklMQUJLeU93QkVOZ3NBRXJzQVVsWWJBRkpiQUNZaUN3QUZCWXNFQmdXV2F3QVdPd0JDWmhJTEFFSldCa0k3QURKV0JrVUZnaEd5TWhXU01nSUxBRUppTkdZVGhaTGJBM0xMQUFGaUFnSUxBRkppQXVSeU5ISTJFalBEZ3RzRGdzc0FBV0lMQUlJMElnSUNCR0kwZXdBU3NqWVRndHNEa3NzQUFXc0FNbHNBSWxSeU5ISTJHd0FGUllMaUE4SXlFYnNBSWxzQUlsUnlOSEkyRWdzQVVsc0FRbFJ5TkhJMkd3QmlXd0JTVkpzQUlsWWJrSUFBZ0FZMk1qSUZoaUd5RlpZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZQ011SXlBZ1BJbzRJeUZaTGJBNkxMQUFGaUN3Q0VNZ0xrY2pSeU5oSUdDd0lHQm1zQUppSUxBQVVGaXdRR0JaWnJBQll5TWdJRHlLT0Myd095d2pJQzVHc0FJbFJsSllJRHhaTHJFckFSUXJMYkE4TENNZ0xrYXdBaVZHVUZnZ1BGa3VzU3NCRkNzdHNEMHNJeUF1UnJBQ0pVWlNXQ0E4V1NNZ0xrYXdBaVZHVUZnZ1BGa3VzU3NCRkNzdHNENHNzRFVySXlBdVJyQUNKVVpTV0NBOFdTNnhLd0VVS3kyd1B5eXdOaXVLSUNBOHNBUWpRb280SXlBdVJyQUNKVVpTV0NBOFdTNnhLd0VVSzdBRVF5NndLeXN0c0VBc3NBQVdzQVFsc0FRbUlDNUhJMGNqWWJBSlF5c2pJRHdnTGlNNHNTc0JGQ3N0c0VFc3NRZ0VKVUt3QUJhd0JDV3dCQ1VnTGtjalJ5TmhJTEFFSTBLd0NVTXJJTEJnVUZnZ3NFQlJXTE1DSUFNZ0c3TUNKZ01hV1VKQ0l5QkhzQVJEc0FKaUlMQUFVRml3UUdCWlpyQUJZMkFnc0FFcklJcUtZU0N3QWtOZ1pDT3dBME5oWkZCWXNBSkRZUnV3QTBOZ1diQURKYkFDWWlDd0FGQllzRUJnV1dhd0FXTmhzQUlsUm1FNEl5QThJemdiSVNBZ1JpTkhzQUVySTJFNElWbXhLd0VVS3kyd1FpeXdOU3N1c1NzQkZDc3RzRU1zc0RZcklTTWdJRHl3QkNOQ0l6aXhLd0VVSzdBRVF5NndLeXN0c0VRc3NBQVZJRWV3QUNOQ3NnQUJBUlVVRXk2d01Tb3RzRVVzc0FBVklFZXdBQ05Dc2dBQkFSVVVFeTZ3TVNvdHNFWXNzUUFCRkJPd01pb3RzRWNzc0RRcUxiQklMTEFBRmtVaklDNGdSb29qWVRpeEt3RVVLeTJ3U1N5d0NDTkNzRWdyTGJCS0xMSUFBRUVyTGJCTExMSUFBVUVyTGJCTUxMSUJBRUVyTGJCTkxMSUJBVUVyTGJCT0xMSUFBRUlyTGJCUExMSUFBVUlyTGJCUUxMSUJBRUlyTGJCUkxMSUJBVUlyTGJCU0xMSUFBRDRyTGJCVExMSUFBVDRyTGJCVUxMSUJBRDRyTGJCVkxMSUJBVDRyTGJCV0xMSUFBRUFyTGJCWExMSUFBVUFyTGJCWUxMSUJBRUFyTGJCWkxMSUJBVUFyTGJCYUxMSUFBRU1yTGJCYkxMSUFBVU1yTGJCY0xMSUJBRU1yTGJCZExMSUJBVU1yTGJCZUxMSUFBRDhyTGJCZkxMSUFBVDhyTGJCZ0xMSUJBRDhyTGJCaExMSUJBVDhyTGJCaUxMQTNLeTZ4S3dFVUt5MndZeXl3Tnl1d095c3RzR1Fzc0RjcnNEd3JMYkJsTExBQUZyQTNLN0E5S3kyd1ppeXdPQ3N1c1NzQkZDc3RzR2Nzc0RncnNEc3JMYkJvTExBNEs3QThLeTJ3YVN5d09DdXdQU3N0c0dvc3NEa3JMckVyQVJRckxiQnJMTEE1SzdBN0t5MndiQ3l3T1N1d1BDc3RzRzBzc0RrcnNEMHJMYkJ1TExBNkt5NnhLd0VVS3kyd2J5eXdPaXV3T3lzdHNIQXNzRG9yc0R3ckxiQnhMTEE2SzdBOUt5MndjaXl6Q1FRQ0EwVllJUnNqSVZsQ0s3QUlaYkFESkZCNHNBRVZNQzBBUzdnQXlGSllzUUVCamxtd0Fia0lBQWdBWTNDeEFBVkNzUUFBS3JFQUJVS3hBQWdxc1FBRlFyRUFDQ3F4QUFWQ3VRQUFBQWtxc1FBRlFya0FBQUFKS3JFREFFU3hKQUdJVVZpd1FJaFlzUU5rUkxFbUFZaFJXTG9JZ0FBQkJFQ0lZMVJZc1FNQVJGbFpXVm14QUF3cXVBSC9oYkFFamJFQ0FFUUEnKSBmb3JtYXQoJ3RydWV0eXBlJyk7XG59XG4vKiBDaHJvbWUgaGFjazogU1ZHIGlzIHJlbmRlcmVkIG1vcmUgc21vb3RoIGluIFdpbmRvenplLiAxMDAlIG1hZ2ljLCB1bmNvbW1lbnQgaWYgeW91IG5lZWQgaXQuICovXG4vKiBOb3RlLCB0aGF0IHdpbGwgYnJlYWsgaGludGluZyEgSW4gb3RoZXIgT1MtZXMgZm9udCB3aWxsIGJlIG5vdCBhcyBzaGFycCBhcyBpdCBjb3VsZCBiZSAqL1xuLypcbkBtZWRpYSBzY3JlZW4gYW5kICgtd2Via2l0LW1pbi1kZXZpY2UtcGl4ZWwtcmF0aW86MCkge1xuICBAZm9udC1mYWNlIHtcbiAgICBmb250LWZhbWlseTogJ3NiJztcbiAgICBzcmM6IHVybCgnLi4vZm9udC9zYi5zdmc/NDkzNDAyNDgjc2InKSBmb3JtYXQoJ3N2ZycpO1xuICB9XG59XG4qL1xuIFxuIFtjbGFzc149XCJzYi1pY29uLVwiXTpiZWZvcmUsIFtjbGFzcyo9XCIgc2ItaWNvbi1cIl06YmVmb3JlIHtcbiAgZm9udC1mYW1pbHk6IFwic2JcIjtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXdlaWdodDogbm9ybWFsO1xuICBzcGVhazogbm9uZTtcbiBcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICB0ZXh0LWRlY29yYXRpb246IGluaGVyaXQ7XG4gIHdpZHRoOiAxZW07XG4gIG1hcmdpbi1yaWdodDogLjJlbTtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAvKiBvcGFjaXR5OiAuODsgKi9cbiBcbiAgLyogRm9yIHNhZmV0eSAtIHJlc2V0IHBhcmVudCBzdHlsZXMsIHRoYXQgY2FuIGJyZWFrIGdseXBoIGNvZGVzKi9cbiAgZm9udC12YXJpYW50OiBub3JtYWw7XG4gIHRleHQtdHJhbnNmb3JtOiBub25lO1xuICAgICBcbiAgLyogZml4IGJ1dHRvbnMgaGVpZ2h0LCBmb3IgdHdpdHRlciBib290c3RyYXAgKi9cbiAgbGluZS1oZWlnaHQ6IDFlbTtcbiBcbiAgLyogQW5pbWF0aW9uIGNlbnRlciBjb21wZW5zYXRpb24gLSBtYXJnaW5zIHNob3VsZCBiZSBzeW1tZXRyaWMgKi9cbiAgLyogcmVtb3ZlIGlmIG5vdCBuZWVkZWQgKi9cbiAgbWFyZ2luLWxlZnQ6IC4yZW07XG4gXG4gIC8qIHlvdSBjYW4gYmUgbW9yZSBjb21mb3J0YWJsZSB3aXRoIGluY3JlYXNlZCBpY29ucyBzaXplICovXG4gIC8qIGZvbnQtc2l6ZTogMTIwJTsgKi9cbiBcbiAgLyogVW5jb21tZW50IGZvciAzRCBlZmZlY3QgKi9cbiAgLyogdGV4dC1zaGFkb3c6IDFweCAxcHggMXB4IHJnYmEoMTI3LCAxMjcsIDEyNywgMC4zKTsgKi9cbn1cbi5zYi1pY29uLWZpbHRlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAwJzsgfSAvKiAn7qCAJyAqL1xuLnNiLWljb24tdGgtbGFyZ2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMSc7IH0gLyogJ+6ggScgKi9cbi5zYi1pY29uLXRoOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDInOyB9IC8qICfuoIInICovXG4uc2ItaWNvbi10aC1saXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDMnOyB9IC8qICfuoIMnICovXG4uc2ItaWNvbi1wZW5jaWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNCc7IH0gLyogJ+6ghCcgKi9cbi5zYi1pY29uLWNhbmNlbDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA1JzsgfSAvKiAn7qCFJyAqL1xuLnNiLWljb24tcGx1czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA2JzsgfSAvKiAn7qCGJyAqL1xuLnNiLWljb24tY29nOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDcnOyB9IC8qICfuoIcnICovXG4uc2ItaWNvbi1hbGlnbi1qdXN0aWZ5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDgnOyB9IC8qICfuoIgnICovXG4uc2ItaWNvbi1vazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA5JzsgfSAvKiAn7qCJJyAqL1xuLnNiLWljb24tbG9jazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBhJzsgfSAvKiAn7qCKJyAqL1xuLnNiLWljb24tZXhjaGFuZ2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwYic7IH0gLyogJ+6giycgKi9cbi5zYi1pY29uLWRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTgwYyc7IH0gLyogJ+6gjCcgKi9cbi5zYi1pY29uLXVwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGQnOyB9IC8qICfuoI0nICovXG4uc2ItaWNvbi1oZWxwLWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwZSc7IH0gLyogJ+6gjicgKi9cbi5zYi1pY29uLWluZm8tY2lyY2xlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBmJzsgfSAvKiAn7qCPJyAqL1xuLnNiLWljb24tc29ydC1uYW1lLXVwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTAnOyB9IC8qICfuoJAnICovXG4uc2ItaWNvbi1zb3J0LW5hbWUtZG93bjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODExJzsgfSAvKiAn7qCRJyAqL1xuLnNiLWljb24tZG93bi1kaXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMic7IH0gLyogJ+6gkicgKi9cbi5zYi1pY29uLXVwLWRpcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEzJzsgfSAvKiAn7qCTJyAqL1xuLnNiLWljb24tY29tcGFzczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE0JzsgfSAvKiAn7qCUJyAqL1xuLnNiLWljb24tcmlnaHQtZGlyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTUnOyB9IC8qICfuoJUnICovXG4uc2ItaWNvbi1sZWZ0LWRpcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE2JzsgfSAvKiAn7qCWJyAqL1xuLnNiLWljb24tZG9jczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE3JzsgfSAvKiAn7qCXJyAqL1xuLnNiLWljb24tY2lyY2xlLWVtcHR5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTgnOyB9IC8qICfuoJgnICovXG4uc2ItaWNvbi1kb3QtY2lyY2xlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE5JzsgfSAvKiAn7qCZJyAqL1xuLnNiLWljb24tdG8tZW5kOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWEnOyB9IC8qICfuoJonICovXG4uc2ItaWNvbi10by1zdGFydDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFiJzsgfSAvKiAn7qCbJyAqL1xuLnNiLWljb24tZmFzdC1mb3J3YXJkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWMnOyB9IC8qICfuoJwnICovXG4uc2ItaWNvbi1mYXN0LWJhY2t3YXJkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWQnOyB9IC8qICfuoJ0nICovXG4uc2ItaWNvbi1jdzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFlJzsgfSAvKiAn7qCeJyAqL1xuLnNiLWljb24tbGV2ZWwtZG93bjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFmJzsgfSAvKiAn7qCfJyAqL1xuLnNiLWljb24tYXR0ZW50aW9uOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjAnOyB9IC8qICfuoKAnICovXG4uc2ItaWNvbi1hdHRlbnRpb24tY2lyY2xlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIxJzsgfSAvKiAn7qChJyAqL1xuLnNiLWljb24tc2VhcmNoOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjInOyB9IC8qICfuoKInICovXG4uc2ItaWNvbi1jY3c6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMyc7IH0gLyogJ+6goycgKi9cbi5zYi1pY29uLXN0YXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNCc7IH0gLyogJ+6gpCcgKi9cbi5zYi1pY29uLXN0YXItZW1wdHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNSc7IH0gLyogJ+6gpScgKi9cbi8qIGVuZCBvZiBpbXBvcnQgZnJvbSBzYi1lbWJlZGRlZC5jc3MgKi9cblxuXG4uc2IgKltjbGFzc149XCJzYi1pY29uLVwiXTpiZWZvcmUsIC5zYiAqW2NsYXNzKj1cIiBzYi1pY29uLVwiXTpiZWZvcmUge1xuICBmb250LWZhbWlseTogJ3NiJztcbiAgY29sb3I6IGluaGVyaXQ7XG4gIC8qIEJldHRlciBGb250IFJlbmRlcmluZyA9PT09PT09PT09PSAqL1xuICAtd2Via2l0LWZvbnQtc21vb3RoaW5nOiBhbnRpYWxpYXNlZDtcbiAgLW1vei1vc3gtZm9udC1zbW9vdGhpbmc6IGdyYXlzY2FsZTtcbn1cblxuLy8gZml4IGZvciBpY29uIGZvbnQgdGhhdCBkaWRuJ3QgaGF2ZSB2ZXJ0aWNhbCBzb3J0IGFycm93c1xuLnNiLWljb24tZXhjaGFuZ2U6YmVmb3JlIHtcbiAgLnJvdGF0ZSg5MGRlZyk7XG59XG5cbi8vIFRoZSBsb2FkaW5nIHNwaW5uZXIuICBUaGlzIGlzIGFuIGFuaW1hdGVkIGdpZiwgZm91bmQgYXQgXCJpY29ucy9sb2FkZXIuZ2lmXCJcbi5zYi1pY29uLWxvYWRpbmcge1xuICB3aWR0aDogMTQ4cHg7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbn1cblxuLnNiLWljb24tbG9hZGluZyA+IGRpdiB7XG4gIHdpZHRoOiAzNnB4O1xuICBoZWlnaHQ6IDE4cHg7XG4gIG1hcmdpbjogMnB4O1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JIaWdobGlnaHRDb2xvcjtcblxuICBib3JkZXItcmFkaXVzOiAxMCU7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgLXdlYmtpdC1hbmltYXRpb246IGJvdW5jZWRlbGF5IDEuNHMgaW5maW5pdGUgZWFzZS1pbi1vdXQ7XG4gIGFuaW1hdGlvbjogYm91bmNlZGVsYXkgMS40cyBpbmZpbml0ZSBlYXNlLWluLW91dDtcbiAgLyogUHJldmVudCBmaXJzdCBmcmFtZSBmcm9tIGZsaWNrZXJpbmcgd2hlbiBhbmltYXRpb24gc3RhcnRzICovXG4gIC13ZWJraXQtYW5pbWF0aW9uLWZpbGwtbW9kZTogYm90aDtcbiAgYW5pbWF0aW9uLWZpbGwtbW9kZTogYm90aDtcbn1cblxuLnNiLWljb24tbG9hZGluZyAuc2ItaWNvbi1ib3VuY2UxIHtcbiAgLXdlYmtpdC1hbmltYXRpb24tZGVsYXk6IC0wLjMycztcbiAgYW5pbWF0aW9uLWRlbGF5OiAtMC4zMnM7XG59XG5cbi5zYi1pY29uLWxvYWRpbmcgLnNiLWljb24tYm91bmNlMiB7XG4gIC13ZWJraXQtYW5pbWF0aW9uLWRlbGF5OiAtMC4xNnM7XG4gIGFuaW1hdGlvbi1kZWxheTogLTAuMTZzO1xufVxuXG4vLyBIZWFkZXIgaWNvbiBiYWNrZ3JvdW5kIGNvbG9yc1xuLnNiUGFnZVRpdGxlIHtcblx0LnNmLWljb24tY3VzdG9tOTAge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM1QTlDREQ7XG5cdH1cblx0LnNmLWljb24tY3VzdG9tOTMge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM5MDRENEM7XG5cdH1cblx0LnNmLWljb24tcHJvZHVjdCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogI0I3ODFEMztcblx0fVx0XG5cdC5zZi1pY29uLXNldHRpbmdzIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjRURCNTY2O1xuXHR9XG5cdC5zZi1pY29uLWRvd25sb2FkIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNTQ2OThEO1xuXHR9XG5cdC5zZi1pY29uLWNvbnRyYWN0LTEge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM2RUMwNkU7XG5cdH1cblx0LnNmLWljb24tYXBwcm92YWwge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICMwMEM2Qjc7XG5cdH1cbiAgICAuc2YtaWNvbi1wb3N0IHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogIzY1Q0FFNDtcbiAgICB9XG5cdC5zZi1pY29uLWdkb2Mge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM1NDY5OEQ7XG5cdH1cblx0LnNmLWljb24tZG9jdW1lbnQge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICNiYWFjOTM7XG5cdH1cblx0LnNmLWljb24tcmVjZW50IHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNkNBMUU5O1xuXHR9XG5cdC5zZi1pY29uLWNvcHkge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICM2Q0EwRTk7XG5cdH1cblx0LnNmLWljb24tZmF2b3JpdGUge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICNGRjdCODQ7XG5cdH1cblx0LnNmLWljb24tcmVmcmVzaCB7XG5cdFx0Ji5yZXNpemUge1xuXHRcdFx0YmFja2dyb3VuZC1jb2xvcjogIzZDQTBFOTtcblx0XHR9XG5cdH1cblxuXHQuc2YtaWNvbi1yZXBsYWNlIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNTQ2OThEO1xuXHR9XG59XG5cbkAtd2Via2l0LWtleWZyYW1lcyBib3VuY2VkZWxheSB7XG4gIDAlLCA4MCUsIDEwMCUgeyAtd2Via2l0LXRyYW5zZm9ybTogc2NhbGUoMC4wKSB9XG4gIDQwJSB7IC13ZWJraXQtdHJhbnNmb3JtOiBzY2FsZSgxLjApIH1cbn1cblxuQGtleWZyYW1lcyBib3VuY2VkZWxheSB7XG4gIDAlLCA4MCUsIDEwMCUge1xuICAgIHRyYW5zZm9ybTogc2NhbGUoMC4wKTtcbiAgICAtd2Via2l0LXRyYW5zZm9ybTogc2NhbGUoMC4wKTtcbiAgfSA0MCUge1xuICAgICAgdHJhbnNmb3JtOiBzY2FsZSgxLjApO1xuICAgICAgLXdlYmtpdC10cmFuc2Zvcm06IHNjYWxlKDEuMCk7XG4gICAgfVxufVxuIiwiLy8gR2xvYmFsIFZhcmlhYmxlc1xuLy9cbi8vIEFsbCBnbG9iYWwgTEVTUyB2YXJpYWJsZXNcbi8vXG4vLyBTdHlsZWd1aWRlIHZhcmlhYmxlc1xuQGltcG9ydCBcInZhcmlhYmxlcy5sZXNzXCI7XG5cbi8vU0ZEQyBGb250c1xuQGltcG9ydCBcImZvbnRzLmxlc3NcIjtcbi8vIE1peGluc1xuLy9cbi8vIEFsbCBnbG9iYWwgTEVTUyBtaXhpbnMgKGZ1bmN0aW9ucylcbi8vXG4vLyBTdHlsZWd1aWRlIE1peGluc1xuQGltcG9ydCBcIm1peGlucy5sZXNzXCI7XG5cbi8vIFR5cG9ncmFwaHlcbi8vXG4vLyBBbGwgdGV4dCByZWxhdGVkIGNvbnRlbnQgaW5jbHVkaW5nIGhlYWRpbmdzLCBsaW5rcywgYW5kIHBsYWluIHRleHRcbi8vXG4vLyBTdHlsZWd1aWRlIFR5cG9ncmFwaHlcbkBpbXBvcnQgXCJ0eXBvZ3JhcGh5Lmxlc3NcIjtcblxuLy8gQnV0dG9ucyBhbmQgVG9vbGJhcnNcbi8vXG4vLyBCdXR0b25zLCBidXR0b24gYmFycywgdG9vbGJhcnNcbi8vXG4vLyBTdHlsZWd1aWRlIEJ1dHRvbnNcbkBpbXBvcnQgXCJidXR0b25zLmxlc3NcIjtcblxuLy8gRGlhbG9nc1xuLy9cbi8vIERpYWxvZyB3aW5kb3dzLCBwb3B1cHMsIGFuZCB0aGVpciBtb2RhbCBtYXNrc1xuLy9cbi8vIFN0eWxlZ3VpZGUgRGlhbG9nc1xuQGltcG9ydCBcImRpYWxvZ3MubGVzc1wiO1xuXG4vLyBMYXlvdXRcbi8vXG4vLyBMYXlvdXQgYW5kIHBhZ2UgcGF0dGVybnNcbi8vXG4vLyBTdHlsZWd1aWRlIExheW91dFxuQGltcG9ydCBcImxheW91dC5sZXNzXCI7XG5cbi8vIEZvcm1zXG4vL1xuLy8gRm9ybXMgYW5kIGlucHV0IHJlbGF0ZWQgY29udHJvbHNcbi8vXG4vLyBTdHlsZWd1aWRlIEZvcm1zXG5AaW1wb3J0IFwiZm9ybXMubGVzc1wiO1xuQGltcG9ydCBcImRhdGVQaWNrZXIubGVzc1wiO1xuXG4vLyBUYWJsZXNcbi8vXG4vLyBUYWJ1bGFyIGRpc3BsYXkgb2YgZGF0YVxuLy9cbi8vIFN0eWxlZ3VpZGUgVGFibGVzXG5AaW1wb3J0IFwidGFibGVzLmxlc3NcIjtcblxuLy8gRHJvcCBEb3duc1xuLy9cbi8vIERyb3AgZG93bnMgLyBtZW51c1xuLy9cbi8vIFN0eWxlZ3VpZGUgRHJvcGRvd25zXG5AaW1wb3J0IFwiZHJvcGRvd25zLmxlc3NcIjtcblxuLy8gSWNvbnNcbi8vXG4vLyBUaGUgaWNvbnMgYW5kIGljb24gZm9udHNcbi8vXG4vLyBTdHlsZWd1aWRlIEljb25zXG5AaW1wb3J0IFwiaWNvbnMubGVzc1wiO1xuXG5AaW1wb3J0IFwic2ZkYy5sZXNzXCI7XG5cblxuLy8gT3VyIHRvcC1tb3N0IHNlbGVjdG9yLCByZXNldCBicm93c2VyIGluY29uc2lzdGVuY2llc1xuLnNiIHtcbiAgZm9udC1zaXplOiAxMHB4OyAgLy8gaWRlYWxseSB0aGlzIHdvdWxkIGJlIDYyLjUlIG9uIGh0bWwgc28gd2UgY291bGQgdXNlIHJlbSBidXQgU0ZEQyBsaW1pdHMgdXMgaGVyZVxuICBmb250LWZhbWlseTogQHNiRm9udCAhaW1wb3J0YW50OyAgLy8gbXVzdCBiZSBpbXBvcnRhbnQgYXMgU0ZEQyBhbHNvIHNldHNcbn1cblxuLy8gUmVzZXQgYnJvd3NlciBpbmNvbnNpc3RlbmNpZXNcbi5zYiAqIHtcbiAgYm94LXNpemluZzogYm9yZGVyLWJveDtcbn1cblxuLy8gSGlkaW5nIC0gYSBjb21tb24gc3RhdGUgbW9kaWZpZXIgY2xhc3MgdGhhdCBjYW4gYmUgYXBwbGllZCBhbnl3aGVyZVxuLnNiICouaGlkZGVuIHtcbiAgZGlzcGxheTogbm9uZTtcbn1cblxuLy8gQ2xlYXIgZmxvYXRpbmcgY2hpbGRyZW4sIHR5cGljYWxseSBieSBwdXR0aW5nIHRoaXMgb24gcGFyZW50U2VsZWN0b3I6YWZ0ZXIuXG4uc2JDbGVhciB7XG4gIGNvbnRlbnQ6IFwiXCI7XG4gIGRpc3BsYXk6IHRhYmxlO1xuICBjbGVhcjogYm90aDtcbn1cblxuLnNiTGluayB7XG4gIGNvbG9yOiBAc2JMaW5rQ29sb3I7XG59IiwiLy8gVGhlIHBhZ2UgYmFja2dyb3VuZCBjb2xvclxuQHNiUGFnZUJnQ29sb3I6ICNmZmY7XG5cbi8vIFRoZSBkZWZhdWx0L3N0YW5kYXJkIGZvbnQgY29sb3JcbkBzYkZvbnRDb2xvcjogIzE2MzI1QztcblxuLy8gVGhlIGNvbG9yIG9mIGNvbnRlbnQgc2VjdGlvbnMgc3VjaCBhcyBwYWdlIHRpdGxlLCBkZXRhaWxzLCBldGNcbkBzYkNvbnRlbnRCZ0NvbG9yOiAjRjRGNkY5O1xuXG4vLyBUaGUgZm9udCBjb2xvciBvZiBjb250ZW50IHNlY3Rpb25zIHN1Y2ggYXMgcGFnZSB0aXRsZSwgZGV0YWlscywgZXRjXG5Ac2JDb250ZW50Rm9udENvbG9yOiAjNTQ2OThEO1xuXG4vLyBUaGUgc3RhbmRhcmQgZm9udCBmYW1pbHlcbkBzYkZvbnQ6ICdTYWxlc2ZvcmNlIFNhbnMnLCAnT3BlbiBTYW5zJywgQXJpYWwsIHNhbnMtc2VyaWY7XG5cbi8vIEJhc2UgZm9udCBzaXplIHRvIGJlIHVzZWQgZm9yIGFsbCBvdGhlciBmb250IHNpemUgY2FsY3VsYXRpb25zXG5Ac2JGb250U2l6ZTogMTBweDtcblxuLy8gQmFzZSBmb250IHNpemUgZm9yIHJlZ3VsYXIgY29udGVudFxuQHNiQ29udGVudEZvbnRTaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcblxuLy8gRGVmYXVsdCBib3JkZXIgY29sb3IgZm9yIGEgdmFyaWV0eSBvZiBlbGVtZW50c1xuQHNiQm9yZGVyQ29sb3I6ICNEOERERTY7XG5cbi8vIC8vIERlZmF1bHQgYm9yZGVyIGNvbG9yIGZvciB0YWJsZSByb3dzXG4vLyBAc2JUYWJsZUJvcmRlckNvbG9yOiAjRjRGNkY5O1xuXG4vLyBCb3JkZXIgb2YgY29udGVudCBzZWN0aW9uc1xuQHNiQ29udGVudEJvcmRlcjogMXB4IHNvbGlkICNkMGQwZDA7XG5cbi8vIEljb24gY29sb3IgZm9yIHNlY29uZGFyeSBpY29ucyAocHJpbWFyeSBzaG91bGQgYmUgc2FtZSBhcyBAc2JGb250Q29sb3IpXG5Ac2JJY29uQ29sb3I6ICM4ODg7XG5cbi8vIENvbG9yIGZvciBoaWdobGlnaHRzIChzcGxhc2ggb2YgY29sb3IpXG5Ac2JIaWdobGlnaHRDb2xvcjogIzAwNzBkMjtcblxuLy8gRm9udCBjb2xvcnMgb2YgaHlwZXJsaW5rc1xuQHNiTGlua0NvbG9yOiAjMDA3MEQyO1xuQHNiTGlua0NvbG9yQWN0aXZlOiByZ2IoMCwgNTcsIDEwNyk7XG5Ac2JMaW5rQ29sb3JEaXNhYmxlZDogcmdiKDIyLCA1MCwgOTIpO1xuQHNiTGlua0NvbG9ySG92ZXI6IHJnYigwLCA5NSwgMTc4KTtcblxuLy8gUGFnZSBIZWFkZXIgbGVmdCAoYW5kIHVzdWFsbHkgcmlnaHQpIG1hcmdpblxuQHNiUGFnZUhlYWRlckxlZnQ6IDE1cHg7XG5cbi8vIFBhZ2UgSGVhZGVyIHRvcCAoYW5kIHVzdWFsbHkgYm90dG9tKSBtYXJnaW5cbkBzYlBhZ2VIZWFkZXJUb3A6IDE1cHg7XG5cbi8vIE1hc2sgY29sb3JcbkBzYk1hc2tDb2xvcjogI0E4QjdDNztcblxuLy8gUGFnZSBIZWFkZXJcbkBzYkhlYWRlckJnQ29sb3I6ICNmNGY2Zjk7XG5Ac2JIZWFkZXJTZWNvbmRhcnlCZ0NvbG9yOiAjZjRmNmY5O1xuQHNiSGVhZGVyQm9yZGVyQ29sb3I6ICNkMGQwZDA7XG5Ac2JIZWFkZXJGb250Q29sb3I6ICMxNjMyNWM7XG5Ac2JIZWFkZXJTdXBwb3J0Rm9udENvbG9yOiAjNTQ2OThkO1xuXG5Ac2JCZ0NvbG9yOiAjZmZmZmZmO1xuQHNiRGV0YWlsQmdDb2xvcjojZjRmNmY5O1xuQHNiU2Vjb25kYXJ5Rm9udENvbG9yOiAjNjk2OTY5O1xuXG4vLyBUYWJsZXNcbkBzYlRhYmxlSGVhZGVyRm9udENvbG9yOiAjNTQ2OThkO1xuQHNiVGFibGVSb3dIb3ZlckNvbG9yOiAjZjRmNmY5O1xuXG4vLyBCdXR0b25zXG5Ac2JHcm91cEJ0bkJnQ29sb3I6ICNmZmZmZmY7XG5Ac2JHcm91cEJ0bkJvcmRlckNvbG9yOiAjZDhkZGU2O1xuQHNiR3JvdXBCdG5Gb250Q29sb3I6ICMwMDcwZDI7XG5Ac2JHcm91cEJ0bkhvdmVyQmdDb2xvcjogI2Y0ZjZmOTtcbkBzYkdyb3VwQnRuSG92ZXJGb250Q29sb3I6ICMwMDcwZDI7XG5Ac2JHcm91cEJ0bkRpc2FibGVkRm9udENvbG9yOiAjYmViZWJlO1xuQHNiUHJpbWFyeUJ0bkJnQ29sb3I6ICMwMDcwZDI7XG5Ac2JQcmltYXJ5QnRuRm9udENvbG9yOiAjZmZmZmZmO1xuQHNiUHJpbWFyeUJ0bkhvdmVyQmdDb2xvcjogIzAwNWZiMjtcblxuLy8gSWNvbnNcbkBzYkFjY2VudEljb25Db2xvcjogIzAwNzBkMjtcbkBzYkFjY2VudEljb25Ib3ZlckNvbG9yOiAjMTYzMjVjO1xuQHNiQWNjZW50SWNvbkRpc2FibGVkQ29sb3I6ICM4ODg4ODg7XG5Ac2JIaWRlSWNvbnM6IGJsb2NrO1xuXG4vLyBUYWJzXG5Ac2JUYWJTZWxlY3RlZENvbG9yOiAjMTY2YmJmO1xuXG4vLyBCcmVha3BvaW50cyBmb3IgTWVkaWEgUXVlcmllc1xuQHNiQnBTbWFsbDogMDtcbkBzYkJwTWVkaXVtOiA3NjdweDtcbkBzYkJwTGFyZ2U6IDEwMjRweDtcbkBzYkJwWExhcmdlOiAxMjAwcHg7XG4iLCIvLyBBcHBsaWNhdGlvbiBTZXR0aW5ncyBwYWdlXG4vL1xuLy8gbWFueSBvZiB0aGUgc3R5bGVzIGhlcmUganVzdCBvdmVycmlkZSB0aGUgU0Ygc3R5bGVzIGFzIHRoaXMgcGFnZSBpcyBoZWF2eSBWRiBtYXJrdXBcbiNzYkNwcVNldHRpbmdzIHtcblxuICBwYWRkaW5nOiBAc2JQYWdlSGVhZGVyTGVmdDtcblxuICAuYlBhZ2VCbG9jayB7XG4gICAgYm9yZGVyOiAwICFpbXBvcnRhbnQ7XG4gICAgYmFja2dyb3VuZDogbm9uZSAhaW1wb3J0YW50O1xuICB9XG5cbiAgLnNiVGFicyB7XG4gICAgZm9udC1mYW1pbHk6IGluaGVyaXQ7XG5cbiAgICA+IHRib2R5ID4gdHI6bnRoLWNoaWxkKDEpID4gLnJpY2gtdGFiLWJvdHRvbS1saW5lIHtcbiAgICAgIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcblxuICAgICAgLnJpY2gtdGFiaGRyLWNlbGwtYWN0aXZlIHtcbiAgICAgICAgYm9yZGVyLWJvdHRvbTogNHB4IHNvbGlkIEBzYlRhYlNlbGVjdGVkQ29sb3I7XG4gICAgICB9XG5cbiAgICAgIC5yaWNoLXRhYmhkci1zaWRlLWJvcmRlciB7XG4gICAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgICB9XG5cbiAgICAgIC5yaWNoLXRhYmhkci1zaWRlLWNlbGwge1xuICAgICAgICBib3JkZXI6IDA7XG4gICAgICB9XG5cbiAgICAgIC5yaWNoLXRhYi1hY3RpdmUsIC5yaWNoLXRhYi1pbmFjdGl2ZSB7XG4gICAgICAgIGJhY2tncm91bmQ6IG5vbmUgIWltcG9ydGFudDtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemUgIWltcG9ydGFudDtcbiAgICAgICAgcGFkZGluZzogMCAxNnB4IDZweCAxNnB4O1xuICAgICAgfVxuICAgIH1cblxuICAgIC5yaWNoLXRhYi1oZWFkZXIsIC5yaWNoLXRhYnBhbmVsLWNvbnRlbnQge1xuICAgICAgZm9udC1mYW1pbHk6IGluaGVyaXQgIWltcG9ydGFudDtcbiAgICAgIGZvbnQtc2l6ZTogaW5oZXJpdCAhaW1wb3J0YW50O1xuICAgIH1cblxuICAgIC5yaWNoLXRhYnBhbmVsLWNvbnRlbnQge1xuICAgICAgYmFja2dyb3VuZDogbm9uZSAhaW1wb3J0YW50O1xuICAgICAgYm9yZGVyOiAwICFpbXBvcnRhbnQ7XG4gICAgfVxuXG4gICAgLmxhYmVsQ29sLCAuZGF0YUNvbCB7XG4gICAgICBwYWRkaW5nLXRvcDogOHB4O1xuICAgICAgcGFkZGluZy1ib3R0b206IDhweDtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgfVxuXG4gICAgLmxhYmVsQ29sLCAuZGF0YTJDb2wge1xuICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgIH1cblxuICAgIGlucHV0Om5vdChbdHlwZT1zdWJtaXRdKTpub3QoW3R5cGU9Y2hlY2tib3hdKSwgc2VsZWN0IHtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgd2lkdGg6IDIyMHB4ICFpbXBvcnRhbnQ7XG4gICAgfVxuXG4gICAgLnNiQnRuIHtcbiAgICAgIGZvbnQtc2l6ZTogaW5oZXJpdDtcbiAgICB9XG4gIH1cbn1cbiIsIkBzYkZpZWxkU2V0SGVhZGVyQW5kRm9vdGVyQmdDb2xvcjogcmdiKDE1OSwgMTcwLCAxODEpO1xuXG4vL3NldFZhcmlhYmxlIHNhbXBsZSBzd2F0Y2hlcyBpdCB3aWxsIHJlYWQgZGVmYXVsdHMgZnJvbSBvbiBUaGVtZS5wYWdlXG4udGhlbWVQYWdle1xuICAuc2JIZWFkZXJCZ0NvbG9ye2NvbG9yOkBzYkhlYWRlckJnQ29sb3I7fVxuICAuc2JIZWFkZXJTZWNvbmRhcnlCZ0NvbG9ye2NvbG9yOkBzYkhlYWRlclNlY29uZGFyeUJnQ29sb3I7fVxuICAuc2JIZWFkZXJCb3JkZXJDb2xvcntjb2xvcjpAc2JIZWFkZXJCb3JkZXJDb2xvcjt9XG4gIC5zYkhlYWRlckZvbnRDb2xvcntjb2xvcjpAc2JIZWFkZXJGb250Q29sb3I7fVxuICAuc2JIZWFkZXJTdXBwb3J0Rm9udENvbG9ye2NvbG9yOkBzYkhlYWRlclN1cHBvcnRGb250Q29sb3I7fVxuICAuc2JCZ0NvbG9ye2NvbG9yOkBzYkJnQ29sb3I7fVxuICAuc2JEZXRhaWxCZ0NvbG9ye2NvbG9yOkBzYkRldGFpbEJnQ29sb3J9O1xuICAuc2JGb250Q29sb3J7Y29sb3I6QHNiRm9udENvbG9yO31cbiAgLnNiU2Vjb25kYXJ5Rm9udENvbG9ye2NvbG9yOkBzYlNlY29uZGFyeUZvbnRDb2xvcjt9XG4gIC5zYkJvcmRlckNvbG9ye2NvbG9yOkBzYkJvcmRlckNvbG9yO31cbiAgLnNiVGFibGVIZWFkZXJGb250Q29sb3J7Y29sb3I6QHNiVGFibGVIZWFkZXJGb250Q29sb3I7fVxuICAuc2JUYWJsZVJvd0hvdmVyQ29sb3J7Y29sb3I6QHNiVGFibGVSb3dIb3ZlckNvbG9yO31cbiAgLnNiR3JvdXBCdG5CZ0NvbG9ye2NvbG9yOkBzYkdyb3VwQnRuQmdDb2xvcjt9XG4gIC5zYkdyb3VwQnRuQm9yZGVyQ29sb3J7Y29sb3I6QHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjt9XG4gIC5zYkdyb3VwQnRuRm9udENvbG9ye2NvbG9yOkBzYkdyb3VwQnRuRm9udENvbG9yO31cbiAgLnNiR3JvdXBCdG5Ib3ZlckJnQ29sb3J7Y29sb3I6QHNiR3JvdXBCdG5Ib3ZlckJnQ29sb3I7fVxuICAuc2JHcm91cEJ0bkhvdmVyRm9udENvbG9ye2NvbG9yOkBzYkdyb3VwQnRuSG92ZXJGb250Q29sb3I7fVxuICAuc2JHcm91cEJ0bkRpc2FibGVkRm9udENvbG9ye2NvbG9yOkBzYkdyb3VwQnRuRGlzYWJsZWRGb250Q29sb3I7fVxuICAuc2JQcmltYXJ5QnRuQmdDb2xvcntjb2xvcjpAc2JQcmltYXJ5QnRuQmdDb2xvcjt9XG4gIC5zYlByaW1hcnlCdG5Gb250Q29sb3J7Y29sb3I6QHNiUHJpbWFyeUJ0bkZvbnRDb2xvcjt9XG4gIC5zYlByaW1hcnlCdG5Ib3ZlckJnQ29sb3J7Y29sb3I6QHNiUHJpbWFyeUJ0bkhvdmVyQmdDb2xvcjt9XG4gIC5zYkFjY2VudEljb25Db2xvcntjb2xvcjpAc2JBY2NlbnRJY29uQ29sb3I7fVxuICAuc2JBY2NlbnRJY29uSG92ZXJDb2xvcntjb2xvcjpAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjt9XG4gIC5zYkFjY2VudEljb25EaXNhYmxlZENvbG9ye2NvbG9yOkBzYkFjY2VudEljb25EaXNhYmxlZENvbG9yO31cbiAgLnNiSWNvbkNvbG9ye2NvbG9yOkBzYkljb25Db2xvcjt9XG4gIC5zYlRhYlNlbGVjdGVkQ29sb3J7Y29sb3I6QHNiVGFiU2VsZWN0ZWRDb2xvcjt9XG59XG4vL3N0YXJ0IFRoZW1lLnBhZ2Ugc3R5bGluZyBoZXJlXG4udGhlbWVQYWdle1xuICBjb2xvcjogQHNiRm9udENvbG9yO1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JCZ0NvbG9yO1xuICAuc2JUaXRsZXMgaDJ7XG4gICAgY29sb3I6IEBzYkhlYWRlclN1cHBvcnRGb250Q29sb3I7XG4gIH1cbiAgLnNiQnRuIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gICAgY29sb3I6IEBzYkdyb3VwQnRuRm9udENvbG9yO1xuICAgIGJvcmRlci1jb2xvcjogQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICAmOmhvdmVyOm5vdChbZGlzYWJsZWRdKSB7XG4gICAgICBiYWNrZ3JvdW5kOiBAc2JHcm91cEJ0bkhvdmVyQmdDb2xvcjtcbiAgICAgIGNvbG9yOiBAc2JHcm91cEJ0bkhvdmVyRm9udENvbG9yXG4gICAgfVxuICAgICYuc2JQcmltYXJ5QWN0aW9uIHtcbiAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgICAgYm9yZGVyLWNvbG9yOiBAc2JQcmltYXJ5QnRuQmdDb2xvcjtcbiAgICAgIGNvbG9yOiBAc2JQcmltYXJ5QnRuRm9udENvbG9yO1xuICAgICAgJjpob3ZlciB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlByaW1hcnlCdG5Ib3ZlckJnQ29sb3I7XG4gICAgICB9XG4gICAgfVxuICB9XG4gIC5ub3JtYWwuc2YtaWNvbi1jb3B5OmJlZm9yZXtcbiAgICBjb2xvcjogQHNiSWNvbkNvbG9yXG4gIH1cbiAgLmFjY2VudC5zZi1pY29uLWNvcHk6YmVmb3Jle1xuICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gIH1cbiAgLmFjY2VudC5zZi1pY29uLWNvcHk6aG92ZXI6OmJlZm9yZSB7XG4gICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICB9XG4gIC5kaXNhYmxlZC5zZi1pY29uLWNvcHk6YmVmb3Jle1xuICAgY29sb3I6IEBzYkFjY2VudEljb25EaXNhYmxlZENvbG9yO1xuICB9XG5cdC5zZi1pY29uLWNvcHl7XG5cdFx0Zm9udC1zaXplOiAyNHB4O1xuXHRcdHBhZGRpbmctcmlnaHQ6NDBweDtcblx0fVxuXHQuc2JUYWJsZT50Ym9keT50cj50ZCB7XG5cdCAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcblx0fVxuXHQuYm90dG9tUGFkZGluZ3tcblx0XHRwYWRkaW5nLWJvdHRvbTo0MHB4O1xuXHR9XG5cdC50aGVtZUhlYWRlcntcblx0XHRwYWRkaW5nLXRvcDo0MHB4O1xuXHRcdHBhZGRpbmctbGVmdDo2MHB4O1xuXHRcdHBhZGRpbmctYm90dG9tOjEwcHg7XG5cdFx0Ym9yZGVyLWJvdHRvbS1zdHlsZTogc29saWQgIWltcG9ydGFudDtcblx0XHRib3JkZXItYm90dG9tLXdpZHRoOiAxcHggIWltcG9ydGFudDtcblx0XHRib3JkZXItYm90dG9tLWNvbG9yOiBAc2JCb3JkZXJDb2xvciAhaW1wb3J0YW50O1xuXG5cdFx0aDJ7XG5cdFx0ICBjb2xvcjogQHNiRm9udENvbG9yICFpbXBvcnRhbnQ7XG5cdFx0fVxuXHR9XG5cdC50aGVtZVN1YkhlYWRlciB7XG5cdFx0cGFkZGluZy10b3A6IDEwcHg7XG5cdFx0cGFkZGluZy1sZWZ0OjYwcHg7XG5cblx0XHRoMyB7XG5cdFx0XHRjb2xvcjogQHNiRm9udENvbG9yICFpbXBvcnRhbnQ7XG5cdFx0fVxuXHR9XG5cdHNlbGVjdCB7XG5cdFx0d2lkdGg6IDE0MHB4O1xuXHR9XG5cdC50aGVtZVNlbGVjdG9yV3JhcHBlcntcblx0XHR3aWR0aDozMDBweDtcblx0XHRkaXNwbGF5OmlubGluZS1ibG9jaztcblx0XHRtYXJnaW4tbGVmdDo1NXB4O1xuXHRcdG1hcmdpbi1yaWdodDo1NXB4O1xuXHRcdG1hcmdpbi10b3A6NDBweDtcblx0fVxuXHQudGhlbWVTZWxlY3RvcldyYXBwZXIgLnRoZW1lQ29udGFpbmVyIHtcblx0XHRkaXNwbGF5OiBmbGV4O1xuXHRcdGZsZXgtZGlyZWN0aW9uOiBjb2x1bW47XG5cdH1cblx0LnRoZW1lU2VsZWN0b3JXcmFwcGVyID4gLnJlcXVpcmVkSW5wdXQge1xuXHRcdG1hcmdpbi10b3A6IDhweDtcblx0XHRmbG9hdDogcmlnaHQ7XG5cdH1cblx0LnRvb2x0aXAge1xuXHRcdGNvbG9yOiAjNTQ2OThkICFpbXBvcnRhbnQ7XG5cdH1cblx0LnRvb2x0aXA6aG92ZXIge1xuXHRcdGNvbG9yOiAjMDA1ZmIyICFpbXBvcnRhbnQ7XG5cdH1cblx0LnRvb2x0aXBUZXh0IHtcblx0XHRkaXNwbGF5OiBub25lO1xuXHRcdHBvc2l0aW9uOiBhYnNvbHV0ZTtcblx0XHR6LWluZGV4OiAxMDtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmO1xuXHRcdHdpZHRoOiAxNDBweDtcblx0XHRwYWRkaW5nOiA2cHg7XG5cdFx0Y29sb3I6ICMxNjMyNUM7XG5cdFx0Zm9udC1mYW1pbHk6IGluaGVyaXQ7XG5cdFx0Zm9udC1zaXplOiAxNHB4O1xuXHRcdGJvcmRlci1yYWRpdXM6IDRweDtcblx0XHRib3gtc2hhZG93OiAwIDJweCAzcHggMCByZ2JhKDAsIDAsIDAsIDAuMTYpO1xuXHRcdGJvcmRlcjogMXB4IHNvbGlkICNkOGRkZTY7XG5cdH1cblx0LnRoZW1lQ29udGFpbmVyID4gLmlucHV0IHtcblx0XHRtYXJnaW4tdG9wOiAxMHB4O1xuXHRcdHdpZHRoOiAxNDBweDtcblx0fVxuXHQudGhlbWVDb250YWluZXIgPiAucmVxdWlyZWRJbnB1dCB7XG5cdFx0bWFyZ2luLXRvcDogMTBweDtcblx0fVxuXHQudGhlbWVDb250YWluZXIgPiAuZnVsbC1zcGVjdHJ1bSB7XG5cdFx0bWFyZ2luLXRvcDogMTBweDtcblx0XHR3aWR0aDogNTJweDtcblx0fVxuXHQudGhlbWVTZWxlY3RvcldyYXBwZXIgPiBzcGFue1xuXHRcdHBvc2l0aW9uOnJlbGF0aXZlO1xuXHRcdHRvcDoxMXB4O1xuXHR9XG5cdC50aGVtZVNlbGVjdG9yV3JhcHBlciA+IC5pbnB1dCB7XG5cdFx0ZmxvYXQ6IHJpZ2h0O1xuXHRcdG1hcmdpbi10b3A6IDhweDtcblx0XHR3aWR0aDogMTQwcHg7XG5cdH1cblx0LmZpZWxkV3JhcHBlcntcblx0XHR3aWR0aDozMDBweDtcblx0XHRkaXNwbGF5OmlubGluZS1ibG9jaztcblx0XHRtYXJnaW4tbGVmdDo1NXB4O1xuXHRcdG1hcmdpbi1yaWdodDo1NXB4O1xuXHRcdG1hcmdpbi10b3A6NDBweDtcblxuXHRcdCYgPiBpbnB1dCB7XG5cdFx0XHRmbG9hdDogcmlnaHQ7XG5cdFx0XHRtYXJnaW4tcmlnaHQ6IDI1cHg7XG5cdFx0XHRtYXJnaW4tdG9wOiA5cHg7XG5cdFx0fVxuXHR9XG5cdC5maWVsZFdyYXBwZXIgc3Bhbntcblx0XHRwb3NpdGlvbjpyZWxhdGl2ZTtcblx0XHR0b3A6MTFweDtcblx0fVxuXHQuYmFja2dyb3VuZEhpZGV7XG5cdFx0ZGlzcGxheTpub25lO1xuXHR9XG5cdC5zcC1yZXBsYWNlci5zcC1saWdodC5mdWxsLXNwZWN0cnVtIHtcblx0ICAgIGZsb2F0OiByaWdodDtcblx0ICAgIG1hcmdpbi1yaWdodDoxMHB4O1xuXHR9XG5cdC5jb250ZW50e1xuXHRcdCAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcblx0fVxuXHQuc2JCdXR0b25ze1xuXHRcdG1hcmdpbi1sZWZ0OjEwcHg7XG5cdH1cblx0LnNwLXJlcGxhY2VyIHtcblx0ICBib3JkZXItY29sb3I6ICNkOGRkZTYgIWltcG9ydGFudDtcblx0ICBwYWRkaW5nOiAwICFpbXBvcnRhbnQ7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogaW5oZXJpdCAhaW1wb3J0YW50O1xuXHRcdGJvcmRlci1yYWRpdXM6NXB4O1xuXHR9XG5cdC5zcC1kZCB7XG5cdCAgbGluZS1oZWlnaHQ6NDBweCAhaW1wb3J0YW50O1xuXHQgIGhlaWdodDo0MHB4IWltcG9ydGFudDtcblx0fVxuXHQuc3AtcHJldmlld3tcblx0ICBtYXJnaW4tcmlnaHQ6MHB4ICFpbXBvcnRhbnQ7XG5cdCAgd2lkdGg6NDBweCAhaW1wb3J0YW50O1xuXHQgIGhlaWdodDo0MHB4ICFpbXBvcnRhbnQ7XG5cdCAgYm9yZGVyLXdpZHRoOjBweCAhaW1wb3J0YW50O1xuXHR9XG5cdC5zcC1jb250YWluZXJ7XG5cdCAgYmFja2dyb3VuZC1jb2xvcjojZmZmZmZmICFpbXBvcnRhbnQ7XG5cdCAgYm9yZGVyOiAxcHggc29saWQgI2Q4ZGRlNiAhaW1wb3J0YW50O1xuXHQgIGJvcmRlci1yYWRpdXM6NXB4IWltcG9ydGFudDtcblx0fVxuXG5cdCN0b2FzdCB7XG5cdFx0dHJhbnNpdGlvbjogb3BhY2l0eSAuMjVzIGVhc2UtaW4tb3V0O1xuXHRcdG9wYWNpdHk6IDA7XG5cdFx0ZGlzcGxheTogbm9uZTtcblx0XHRwb3NpdGlvbjogYWJzb2x1dGU7XG5cdFx0dG9wOiAwO1xuXHRcdGxlZnQ6IDA7XG5cdFx0d2lkdGg6IDEwMCU7XG5cdH1cblxuXHQjdG9hc3QudmlzaWJsZSB7XG5cdFx0b3BhY2l0eTogMTtcblx0XHRkaXNwbGF5OiBmbGV4O1xuXHRcdGp1c3RpZnktY29udGVudDogY2VudGVyO1xuXHR9XG5cblx0I2FsZXJ0IHtcblx0XHRkaXNwbGF5OiBmbGV4O1xuXHRcdGJvcmRlci1yYWRpdXM6IC4yNXJlbTtcblx0XHRtYXJnaW46IDAuNXJlbSAwLjVyZW0gMCAwLjVyZW07XG5cdFx0cGFkZGluZzogMC43NXJlbSAxLjVyZW07XG5cdFx0bWluLXdpZHRoOiAzMHJlbTtcblx0XHR0ZXh0LWFsaWduOiBsZWZ0O1xuXHR9XG5cblxuXHQjYWxlcnQuc3VjY2VzcyB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogcmdiYSg0LDEzMiw3NSwuOTUpO1xuXHRcdGNvbG9yOiAjRkZGO1xuXHR9XG5cblx0I2FsZXJ0LmVycm9yIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjYzIzOTM0O1xuXHRcdGNvbG9yOiAjRkZGO1xuXHR9XG5cblx0I2FsZXJ0IC5ub3RpZnkge1xuXHRcdGRpc3BsYXk6IGZsZXg7XG5cdFx0cGFkZGluZy10b3A6IDAuMjVyZW07XG5cblx0XHQuY29udGVudCB7XG5cdFx0XHRkaXNwbGF5OiBmbGV4O1xuXG5cdFx0XHRpIHtcblx0XHRcdFx0bWFyZ2luLXRvcDogLTAuMjVyZW07XG5cdFx0XHRcdG1hcmdpbi1yaWdodDogLjUwcmVtO1xuXHRcdFx0XHRvdmVyZmxvdzogaGlkZGVuO1xuXHRcdFx0XHRmb250LXNpemU6IDEuMjVyZW07XG5cdFx0XHR9XG5cblx0XHRcdGgyIHtcblx0XHRcdFx0bGluZS1oZWlnaHQ6IDEuMjU7XG5cdFx0XHRcdHBhZGRpbmctYm90dG9tOiAwO1xuXHRcdFx0XHRjb2xvcjogI0ZGRjtcblx0XHRcdFx0Zm9udC13ZWlnaHQ6IDMwMDtcblxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdCNhbGVydCAuYnRuIHtcblx0XHRib3JkZXI6IG5vbmU7XG5cdFx0Y3Vyc29yOiBwb2ludGVyO1xuXHRcdHBhZGRpbmc6IDA7XG5cdFx0bWFyZ2luOiAwO1xuXHRcdG1hcmdpbi1sZWZ0OiAwLjI1cmVtO1xuXHRcdHRyYW5zZm9ybTogdHJhbnNsYXRlM2QoMC4yNXJlbSwgMCwgMCk7XG5cblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiB0cmFuc3BhcmVudDtcblx0XHRiYWNrZ3JvdW5kLWltYWdlOiBub25lO1xuXHRcdGNvbG9yOiAjRkZGO1xuXHRcdGZvbnQtc2l6ZTogMTRweDtcblxuXHRcdGkge1xuXHRcdFx0Zm9udC1zaXplOiAxLjI1cmVtO1xuXHRcdFx0bWFyZ2luLXJpZ2h0OiAwO1xuXHRcdH1cblxuXHRcdCY6Zm9jdXMgeyBvdXRsaW5lOiAwO31cblx0fVxufVxuXG5cbmRpdi5jb250ZW50IHtcblx0ZGlzcGxheTogZmxleDtcbn1cblxudGFibGUgZGl2LmNvbnRlbnQge1xuXHRtYXJnaW46IDAgMXJlbTtcbn1cblxuI3JvdzEge1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiB0cmFuc3BhcmVudDtcblx0ZmxleC1ncm93OiAxO1xuXG5cdGgxIHtcblx0XHRtYXJnaW46IDMwcHggMDtcblx0fVxuXG5cdD4gZGl2IHtcblx0XHRmaWVsZHNldCB7XG5cdFx0XHRwb3NpdGlvbjogcmVsYXRpdmU7XG5cdFx0XHRtYXJnaW46IDAgMCAyLjVyZW0gMDtcblx0XHRcdGJvcmRlcjogbm9uZTtcblx0XHRcdHBhZGRpbmc6IDA7XG5cdFx0XHRjb2xvcjogI2ZmZjtcblxuXHRcdFx0bGVnZW5kIHtcblx0XHRcdFx0Y3Vyc29yOiBwb2ludGVyO1xuXHRcdFx0XHRiYWNrZ3JvdW5kLWNvbG9yOiBAc2JGaWVsZFNldEhlYWRlckFuZEZvb3RlckJnQ29sb3I7XG5cdFx0XHRcdGNvbG9yOiBpbmhlcml0O1xuXHRcdFx0XHR3aWR0aDogMTAwJTtcblx0XHRcdFx0Ym9yZGVyLXRvcC1sZWZ0LXJhZGl1czogMC41cmVtO1xuXHRcdFx0XHRib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogMC41cmVtO1xuXHRcdFx0XHRwYWRkaW5nOiAwLjc1cmVtIDAuNzVyZW0gMC41MHJlbSAwLjc1cmVtO1xuXG5cdFx0XHRcdC5jYXRlZ29yeS1oZWFkZXIge1xuXHRcdFx0XHRcdGRpc3BsYXk6IGZsZXg7XG5cdFx0XHRcdFx0anVzdGlmeS1jb250ZW50OiBzcGFjZS1iZXR3ZWVuO1xuXG5cdFx0XHRcdFx0aDIge1xuXHRcdFx0XHRcdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdFx0XHRcdFx0XHRjb2xvcjogaW5oZXJpdDtcblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRwIHtcblx0XHRcdFx0XHRcdG1hcmdpbjogMDtcblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblxuXHRcdFx0XHRwIHtcblx0XHRcdFx0XHRmb250LXdlaWdodDogbm9ybWFsO1xuXHRcdFx0XHRcdGNvbG9yOiBpbmhlcml0O1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cblx0XHRcdC5maWVsZHNldC1ib2R5IHtcblx0XHRcdFx0YmFja2dyb3VuZC1jb2xvcjogcmdiKDI0NCwgMjQ2LCAyNDkpO1xuXHRcdFx0XHRjb2xvcjogaW5oZXJpdDtcblx0XHRcdFx0b3ZlcmZsb3c6IGhpZGRlbjtcblx0XHRcdFx0bWF4LWhlaWdodDogMDtcblx0XHRcdFx0dHJhbnNpdGlvbjogbWF4LWhlaWdodCAwLjNzIGVhc2UtaW4tb3V0O1xuXG5cdFx0XHRcdD4gZGl2IHtcblx0XHRcdFx0XHRwYWRkaW5nOiAxLjI1cmVtO1xuXG5cdFx0XHRcdFx0cCB7XG5cdFx0XHRcdFx0XHR3aWR0aDogMjkwcHg7XG5cdFx0XHRcdFx0XHRoZWlnaHQ6IDY4cHg7XG5cdFx0XHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHRcdFx0XHRtYXJnaW4tcmlnaHQ6IDFyZW07XG5cblx0XHRcdFx0XHRcdGxhYmVsIHtcblx0XHRcdFx0XHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0XHRcdFx0XHRcdGNvbG9yOiAjNTQ2OThkO1xuXG5cdFx0XHRcdFx0XHRcdGEudG9vbHRpcCB7XG5cdFx0XHRcdFx0XHRcdFx0cG9zaXRpb246IHN0YXRpYztcblx0XHRcdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0XHRcdGkge1xuXHRcdFx0XHRcdFx0XHRcdHBvc2l0aW9uOiBzdGF0aWM7XG5cdFx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdFx0PiBpbnB1dCB7XG5cdFx0XHRcdFx0XHRcdG1hcmdpbi10b3A6IDAuNXJlbTtcblx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQuc3AtbGlnaHQge1xuXHRcdGZsb2F0OiBub25lO1xuXHRcdG1hcmdpbi1yaWdodDogMDtcblx0XHRtYXJnaW4tdG9wOiAwLjVyZW07XG5cdH1cblxuXHRmb290ZXIge1xuXHRcdGN1cnNvcjogcG9pbnRlcjtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiBAc2JGaWVsZFNldEhlYWRlckFuZEZvb3RlckJnQ29sb3I7XG5cdFx0Y29sb3I6IGluaGVyaXQ7XG5cdFx0cGFkZGluZzogMC41MHJlbSAwLjc1cmVtIDAuNzVyZW0gMC43NXJlbTtcblx0XHRib3JkZXItdG9wOiAycHggc29saWQgI2VhZWFlYTtcblx0XHRib3JkZXItYm90dG9tLWxlZnQtcmFkaXVzOiAwLjVyZW07XG5cdFx0Ym9yZGVyLWJvdHRvbS1yaWdodC1yYWRpdXM6IDAuNXJlbTtcblxuXHRcdGkge1xuXHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0dHJhbnNpdGlvbjogdHJhbnNmb3JtIDAuM3MgZWFzZS1pbi1vdXQ7XG5cdFx0fVxuXHR9XG5cblx0c2VsZWN0IHtcblx0XHRtYXJnaW4tdG9wOiAxMHB4O1xuXHR9XG59XG5cblxuLy8gU2lkZSBuYXZiYXJcbiNyb3cyIHtcblx0ZmxleDogMCAwIDIwJTtcblxuXHR1bCB7XG5cdFx0cG9zaXRpb246IGZpeGVkO1xuXHRcdHdpZHRoOiAyMCU7XG5cdH1cbn1cblxuLnNiQnRuW2Rpc2FibGVkXSB7XG5cdGJhY2tncm91bmQ6ICNlMGU1ZWU7XG5cdGJvcmRlci1jb2xvcjogdHJhbnNwYXJlbnQ7XG5cdGNvbG9yOiAjZmZmO1xuXHRjdXJzb3I6IGRlZmF1bHQ7XG59XG5cbmlucHV0LmJ0bkRpc2FibGVkLnNiQnRuIHtcblx0bWFyZ2luOiAwO1xuXHRmb250LXdlaWdodDogbm9ybWFsO1xuXHRmb250LXNpemU6IDE0cHg7XG5cdHBhZGRpbmc6IDhweCAxMnB4O1xufVxuXG5pbnB1dC5idG5EaXNhYmxlZC5zYkJ0bjpob3ZlciB7XG5cdGNvbG9yOiAjZmZmO1xuXHRib3JkZXItY29sb3I6ICNkOGRkZTY7XG59IiwiI3NiVHJhbnNsYXRlIHtcblxuICAuc2JEZXNjcmlwdGlvbiB7XG4gICAgd2lkdGg6IDkwJTtcbiAgfVxuXG4gIC5zYkxvbmdUZXh0QXJlYSB7XG4gICAgd2lkdGg6IDkwJTtcbiAgICBib3JkZXI6IEBzYlRleHRib3hCb3JkZXI7XG4gIH1cbiAgXG4gIC5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuICAgIGJhY2tncm91bmQ6IG5vbmU7XG4gICAgYm9yZGVyOiBub25lO1xuXG4gICAgc2VsZWN0IHtcbiAgICAgIG1pbi13aWR0aDogMjAwcHg7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB9XG5cbiAgICA+IHNwYW4ge1xuICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICBwYWRkaW5nOiAwIDIwcHggMCA0MHB4O1xuICAgIH1cbiAgfVxuXG5cbiAgLnNiRmllbGRzVGFibGUge1xuICAgIG1hcmdpbi10b3A6IDA7XG4gICAgcGFkZGluZy10b3A6IDA7XG5cbiAgICA+IC5zYlRhYmxlIHtcbiAgICAgID4gdGJvZHkgPiB0ciA+IHRkIHtcblxuICAgICAgICBoZWlnaHQ6IEBzYlRhYmxlQ2VsbEhlaWdodDtcbiAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuXG4gICAgICAgICY6bnRoLWNoaWxkKDEpLCAmOm50aC1jaGlsZCgyKSB7XG4gICAgICAgICAgd2lkdGg6IDIwJTtcbiAgICAgICAgfVxuXG4gICAgICAgICY6bnRoLWNoaWxkKDMpIHtcbiAgICAgICAgICB3aWR0aDogNjAlO1xuICAgICAgICB9XG5cbiAgICAgICAgPiBpbnB1dCwgdGV4dGFyZWEge1xuICAgICAgICAgIHdpZHRoOiAxMDAlO1xuICAgICAgICB9XG5cbiAgICAgICAgPiB0ZXh0YXJlYSB7XG4gICAgICAgICAgYm9yZGVyOiBAc2JUZXh0Ym94Qm9yZGVyO1xuICAgICAgICAgIGJvcmRlci1yYWRpdXM6IEBzYlRleHRib3hSYWRpdXM7XG4gICAgICAgICAgcGFkZGluZzogMCA1cHg7XG4gICAgICAgICAgbWluLWhlaWdodDogMzVweDtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC5zYlVzZXJEZWZpbmVkRmllbGRzVGFibGUge1xuICAgID4gLnNiVGFibGUge1xuICAgICAgPiB0Ym9keSA+IHRyID4gdGQge1xuICAgICAgICAmOm50aC1jaGlsZCgxKSB7XG4gICAgICAgICAgd2lkdGg6IDE1JTtcbiAgICAgICAgfVxuXG4gICAgICAgICY6bnRoLWNoaWxkKDIpIHtcbiAgICAgICAgICB3aWR0aDogMzAlO1xuICAgICAgICB9XG5cbiAgICAgICAgJjpudGgtY2hpbGQoMykge1xuICAgICAgICAgIHdpZHRoOiA1NSU7XG4gICAgICAgIH1cblxuICAgICAgICA+IGlucHV0LCB0ZXh0YXJlYSB7XG4gICAgICAgICAgd2lkdGg6IDEwMCU7XG4gICAgICAgIH1cblxuICAgICAgICA+IHRleHRhcmVhIHtcbiAgICAgICAgICBib3JkZXI6IEBzYlRleHRib3hCb3JkZXI7XG4gICAgICAgICAgYm9yZGVyLXJhZGl1czogQHNiVGV4dGJveFJhZGl1cztcbiAgICAgICAgICBwYWRkaW5nOiAwIDVweDtcbiAgICAgICAgICBtaW4taGVpZ2h0OiAzNXB4O1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG4gIC5zYlRhYmxlIHtcbiAgICAuc2JCdXR0b25zIHtcbiAgICAgIGJhY2tncm91bmQ6IG5vbmU7XG4gICAgICAuc2JCdG4ge1xuICAgICAgICB3aWR0aDogMzVweDtcbiAgICAgICAgaGVpZ2h0OiA0MHB4O1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC5ja2VfdGV4dGFyZWFfaW5saW5lIHtcbiAgICBib3JkZXI6IEBzYlRleHRib3hCb3JkZXI7XG4gICAgYm9yZGVyLXJhZGl1czogQHNiVGV4dGJveFJhZGl1cztcbiAgICBwYWRkaW5nOiAwIDVweDtcbiAgICBtaW4taGVpZ2h0OiA3MHB4O1xuICB9XG59XG4iLCIvLyBTZWFyY2ggcmVzdWx0cyBkaXNwbGF5ZWRcbiNzYkFzc2V0U2VhcmNoIHtcbiAgLnNiU2VhcmNoUmVzdWx0cztcblxuICAuc2JQYWdlVGl0bGUge1xuXG4gICAgJi5zcXVlZXplZCB7XG4gICAgICAuc2JUb29scyB7XG4gICAgICAgIHBhZGRpbmc6IDA7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiVG9vbHMge1xuICAgICAgbWFyZ2luLXJpZ2h0OiAxMHB4O1xuICAgICAgcGFkZGluZzogN3B4IDA7XG4gICAgICAvLyBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS40O1xuXG4gICAgICA+IC5zYlRvb2wge1xuICAgICAgICAvLyBiYWNrZ3JvdW5kOiBAc2JCdG5CZ0NvbG9yO1xuICAgICAgICBwYWRkaW5nOiA4cHg7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiUGFnZUJsb2NrU2VjdGlvbiB7XG4gICAgICBiYWNrZ3JvdW5kOiBub25lO1xuICAgICAgYm9yZGVyOiBub25lO1xuXG4gICAgaGVhZGVyIHtcbiAgICAgIG1hcmdpbi1ib3R0b206IDEwcHg7XG4gICAgfVxuICB9XG5cbiAgdGFibGUuc2JUYWJsZXtcbiAgICBtYXJnaW4tYm90dG9tOjUwcHg7XG4gIH1cblxuICAucGFnaW5hdGlvbkNvbnRyb2xzV3JhcHBlcntcbiAgICBwb3NpdGlvbjogZml4ZWQ7XG4gICAgbGVmdDogMDtcbiAgICByaWdodDogMDtcbiAgICBib3R0b206MDtcbiAgICBwb2ludGVyLWV2ZW50czogbm9uZTtcbiAgfVxuICAucGFnaW5hdGlvbkNvbnRyb2xzIHtcbiAgICBwYWRkaW5nOiA0cHg7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgbWFyZ2luLWxlZnQ6YXV0bztcbiAgICBtYXJnaW4tcmlnaHQ6YXV0bztcbiAgICB3aWR0aDoyNTBweDtcbiAgICBwb2ludGVyLWV2ZW50czogYXV0bztcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOkBzYkJnQ29sb3I7XG4gICAgLXdlYmtpdC1ib3JkZXItdG9wLWxlZnQtcmFkaXVzOiA0cHg7XG4gICAgLXdlYmtpdC1ib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogNHB4O1xuICAgIC1tb3otYm9yZGVyLXJhZGl1cy10b3BsZWZ0OiA0cHg7XG4gICAgLW1vei1ib3JkZXItcmFkaXVzLXRvcHJpZ2h0OiA0cHg7XG4gICAgYm9yZGVyLXRvcC1sZWZ0LXJhZGl1czogNHB4O1xuICAgIGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiA0cHg7XG4gICAgLXdlYmtpdC1ib3gtc2hhZG93OiAzcHggMHB4IDVweCAwcHggcmdiYSgxNzAsMTcwLDE3MCwxKTtcbiAgICAtbW96LWJveC1zaGFkb3c6IDNweCAwcHggNXB4IDBweCByZ2JhKDE3MCwxNzAsMTcwLDEpO1xuICAgIGJveC1zaGFkb3c6IDNweCAwcHggNXB4IDBweCByZ2JhKDE3MCwxNzAsMTcwLDEpO1xuXG4gICAgc3BhbiB7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgIH1cblxuICAgIGlucHV0IHtcbiAgICAgIGhlaWdodDogYXV0bztcbiAgICAgIHdpZHRoOiAzMHB4O1xuICAgICAgbWFyZ2luOiAwIDVweDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gICAgICBwYWRkaW5nOiAycHg7XG4gICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgfVxuXG4gICAgW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMjtcbiAgICAgIG1hcmdpbi1yaWdodDogLTVweDtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cbiAgICAgICYuZGlzYWJsZWQge1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkRpc2FibGVkQ29sb3I7XG4gICAgICB9XG5cbiAgICAgICY6bm90KC5kaXNhYmxlZCkge1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiLWljb24tbGVmdC1kaXIsXG4gICAgLnNiLWljb24tcmlnaHQtZGlyIHtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAyO1xuICAgIH1cbiAgfVxufVxuXG4vLyBTaWRlIFBhbmVsXG4uc2JBc3NldEZpbHRlciB7XG4gIC5zYlBhbmVsO1xuICB0b3A6IDExM3B4O1xuXG4gIGlucHV0IHtcbiAgICBkaXNwbGF5OiBpbmxpbmU7XG4gIH1cblxuICBkaXYge1xuICAgID4gYSB7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgIGRpc3BsYXk6IGZsZXg7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB9XG4gIH1cbn1cbiIsIi8qXG5Eb2N1bWVudCBHZW5lcmF0aW9uIFByZXZpZXcgcGFnZVxuXG5QcmV2aWV3cyBhIGRvY3VtZW50IGluIHRoZSBicm93c2VyIHdpdGggY2hvc2VuIHRlbXBsYXRlLCBhZGRpdGlvbmFsIGRvY3MsIGV0Yy5cbiovXG4jc2JEb2NHZW5QcmV2aWV3IHtcblx0LnNiUGFnZUJsb2NrU2VjdGlvbiB7XG5cdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdHBhZGRpbmc6IDA7XG5cdFx0YmFja2dyb3VuZDogbm9uZTtcblx0XHRib3JkZXI6IG5vbmU7XG5cdFx0bWFyZ2luLXJpZ2h0OiA0NHB4O1xuXG5cdFx0JjpsYXN0LW9mLXR5cGUge1xuXHRcdFx0bWFyZ2luLXJpZ2h0OiBpbmhlcml0O1xuXHRcdH1cblx0fVxuXG5cdC5zYkR1YWxMaXN0Qm94IHNlbGVjdCB7XG5cdFx0d2lkdGg6IDMyMHB4O1xuXHR9XG59XG5cbi8qXG5Eb2N1bWVudCBHZW5lcmF0aW9uIG9wdGlvbnNcblxuQ2hvaWNlcyBmb3IgZG9jdW1lbnQgZ2VuZXJhdGlvbiBzdWNoIGFzIHRlbXBsYXRlLCBvdXRwdXQgZm9ybWF0LCBldGMuXG4qL1xuI3NiRG9jR2VuT3B0aW9ucyB7XG5cdG1hcmdpbjogMCAwIDAgNDBweDtcblx0bGFiZWwge1xuXHRcdGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXHR9XG5cblx0PiB0Ym9keSA+IHRyID4gdGQge1xuXHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdFx0cGFkZGluZy1ib3R0b206IDhweDtcblx0fVxuXG5cdD4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuXHRcdHRleHQtYWxpZ246IHJpZ2h0O1xuXG5cdFx0PiBbY2xhc3NePXNiLWljb25dIHtcblx0XHRcdGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjU7XG5cdFx0XHRjb2xvcjogQHNiSWNvbkNvbG9yO1xuXHRcdH1cblx0fVxuXG5cdGlucHV0LCBzZWxlY3Qge1xuXHRcdHdpZHRoOiAzMjVweDtcblx0fVxuXG5cdC5zYkR1YWxMaXN0Qm94IHNlbGVjdCB7XG5cdFx0d2lkdGg6IDMyMHB4O1xuXHR9XG59XG4iLCIjc2JJbXBvcnRMaW5lc3tcblxuXHQjc2JJbXBvcnRPcHRpb25ze1xuXHRcdG1hcmdpbjogMCAwIDAgNDBweDtcblxuXHRcdGZpZWxkc2V0IHtcblx0XHRcdGJvcmRlcjogMDtcblx0XHRcdHBhZGRpbmc6IDVweDtcblxuXHRcdFx0PiBsYWJlbCB7XG5cdFx0XHRcdG1hcmdpbi1yaWdodDogMTBweDtcblx0XHRcdFx0Zm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0d2lkdGg6IDE3NXB4O1xuXHRcdFx0XHR0ZXh0LWFsaWduOiByaWdodDtcblx0XHRcdH1cblxuXHRcdFx0PiBpbnB1dCwgc2VsZWN0IHtcblx0XHQgICAgXHR3aWR0aDogMjAwcHg7XG5cdFx0ICBcdH1cblx0XHR9XG5cdH1cblxuXHQuc2JQYWdlQmxvY2tTZWN0aW9uIHtcblx0ICAgIGJhY2tncm91bmQ6IG5vbmU7XG5cdCAgICBib3JkZXI6IG5vbmU7XG5cblx0XHRoZWFkZXIge1xuXHRcdFx0bWFyZ2luLWJvdHRvbTogMTBweDtcblx0XHR9XG4gIFx0fVxufVxuIiwiLy8gTGluZSBFZGl0b3JcbiNzYkxpbmVFZGl0b3Ige1xuXG4gIC8vIHRvb2wgYmFycyBpbiB0aGUgcGFnZSB0aXRsZVxuICAuc2JQYWdlVGl0bGUge1xuXG4gICAgLnNiUGFnZVRpdGxlUmlnaHQge1xuICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgfVxuXG4gICAgJi5zcXVlZXplZCB7XG4gICAgICAuc2JUb29scyB7XG4gICAgICAgIHBhZGRpbmc6IDA7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiVG9vbHMge1xuICAgICAgbWFyZ2luLWxlZnQ6IDE2cHg7XG4gICAgICBwYWRkaW5nOiA3cHggMDtcbiAgICAgIHRyYW5zaXRpb246IGFsbCAuMjVzIGVhc2UtaW47XG5cbiAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXG4gICAgICAgICYuaWNvbiB7XG4gICAgICAgICAgcGFkZGluZzogOHB4IDdweDtcbiAgICAgICAgfVxuXG4gICAgICAgICYuc2YtaWNvbi1kb3duIHtcbiAgICAgICAgICBwYWRkaW5nLXRvcDogOHB4O1xuICAgICAgICB9XG5cbiAgICAgICAgLnNmLWljb24tcmVmcmVzaDpiZWZvcmUge1xuICAgICAgICAgIGZvbnQtc2l6ZTogMS4xZW07XG4gICAgICAgICAgbWFyZ2luLXRvcDogMC4zZW07XG4gICAgICAgICAgbWFyZ2luLWJvdHRvbTogMC4zZW07XG4gICAgICAgIH1cblxuICAgICAgICA+IG1lbnUgLnNlcGFyYXRvciB7XG4gICAgICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuICAgICAgICAgIG1hcmdpbi1ib3R0b206IDZweDtcbiAgICAgICAgfVxuXG4gICAgICAgID4gW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgIH1cblxuICAgICAgfVxuXG5cbiAgICAgID4gLnNiVG9vbFNlcGFyYXRvciB7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgaGVpZ2h0OiAxcHg7XG4gICAgICAgIHdpZHRoOiAxMHB4O1xuICAgICAgICBmbG9hdDogbGVmdDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAjc2JSb2xsdXBNZW51UXVvdGUgPiB1bC5zYlRvb2xzID4gbGkuc2JUb29sU2VwYXJhdG9yIHtcblx0ICBkaXNwbGF5OiBub25lO1xuXHR9XG5cblx0I3NiUm9sbHVwTWVudVF1b3RlID4gc3Bhbi5zZi1pY29uLWRvd24ge1xuXHQgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0ICBwYWRkaW5nOiA4cHggMTJweDtcblx0fVxuICB9XG5cbiAgLnNiUXVvdGVBY3Rpb25zLFxuICAuc2JHcm91cEFjdGlvbnMge1xuICAgIC5yZW5ld1N1YnNjcmlwdGlvbnNCdG4sXG4gICAgLnVwZ3JhZGVBc3NldHNCdG4sXG4gICAgLnJlc2V0RGlzY0J0bixcbiAgICAub3B0aW9uYWxBbGxCdG4sXG4gICAgLm9wdGlvbmFsTm9uZUJ0bixcbiAgICAuZGVsZXRlTGluZXNCdG4sXG4gICAgLmFkZEdyb3VwQnRuLFxuICAgIC51bmdyb3VwQnRuIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuXG4gICAgLnNiVG9vbCB7XG5cblxuICAgICAgJi5maXJzdCB7XG4gICAgICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IDNweDtcbiAgICAgICAgYm9yZGVyLXRvcC1sZWZ0LXJhZGl1czogM3B4O1xuICAgICAgfVxuXG4gICAgICAmLmVuZCxcbiAgICAgICYubGFzdCB7XG4gICAgICAgIGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiAzcHg7XG4gICAgICAgIGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiAzcHg7XG4gICAgICB9XG5cbiAgICAgICYuc2JUb29sU2VwYXJhdG9yIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgICAgYm9yZGVyOiBub25lO1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBpbmhlcml0O1xuXG4gICAgICAgICsgLnNiVG9vbCB7XG4gICAgICAgICAgYm9yZGVyLWxlZnQ6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICAgICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IDNweDtcbiAgICAgICAgICBib3JkZXItdG9wLWxlZnQtcmFkaXVzOiAzcHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IC5zYlRvb2xzID4gLnNiVG9vbDpub3QoI3NiUm9sbHVwTWVudVF1b3RlKTpub3QoLnNiUHJpbWFyeUFjdGlvbikge1xuICAgICAgcGFkZGluZzogMDtcblxuICAgICAgJjpob3ZlciB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6ICNmZmY7XG4gICAgICB9XG5cbiAgICAgID4gc3BhbiwgaSB7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblxuICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JDb250ZW50QmdDb2xvcjtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICA+IHNwYW4uc2YtaWNvbi1kb3duIHtcbiAgICAgICAgYm9yZGVyLWxlZnQ6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICAgfVxuICAgIH1cblxuICAgID4gLnNiVG9vbHMgPiAuc2JQcmltYXJ5QWN0aW9uIHtcbiAgICAgIHBhZGRpbmc6IDA7XG5cbiAgICAgID4gc3BhbiwgaSB7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgIH1cblxuICAgICAgPiBzcGFuLnNmLWljb24tZG93biB7XG4gICAgICAgIGJvcmRlci1sZWZ0OiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICAgIH1cbiAgICB9XG5cbiAgfVxuICAuc2JRdW90ZUFjdGlvbnMge1xuICAgID4gLnNiVG9vbHMgPiAuc2JUb29sOm5vdCgjc2JSb2xsdXBNZW51UXVvdGUpIHtcblxuICAgICAgPiBzcGFuLmxhYmVsLFxuICAgICAgPiBpIHtcbiAgICAgICAgcGFkZGluZzogOHB4IDEycHg7XG4gICAgICB9XG5cbiAgICAgID4gc3Bhbi5zZi1pY29uLWRvd24ge1xuICAgICAgICBwYWRkaW5nOiA4cHggNHB4O1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gICYudXBncmFkYWJsZSBsaS51cGdyYWRlQXNzZXRzQnRuIHtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgfVxuICAmLnJlbmV3YWJsZSBsaS5yZW5ld1N1YnNjcmlwdGlvbnNCdG4ge1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICB9XG4gICYuZGlzY291bnRhYmxlIGxpLnJlc2V0RGlzY0J0biB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cbiAgJi5vcHRpb25hbDpub3QoLmFsbFNlbGVjdGVkKSAuc2JRdW90ZUFjdGlvbnMgbGkub3B0aW9uYWxBbGxCdG4sXG4gICYub3B0aW9uYWwuYWxsU2VsZWN0ZWQgLnNiUXVvdGVBY3Rpb25zIGxpLm9wdGlvbmFsTm9uZUJ0biB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cbiAgJi5vcHRpb25hbCAuc2JHcm91cEFjdGlvbnMgbGkub3B0aW9uYWxBbGxCdG4sXG4gICYub3B0aW9uYWwgLnNiR3JvdXBBY3Rpb25zIGxpLm9wdGlvbmFsTm9uZUJ0biB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cbiAgJi5tdWx0aURlbGV0ZSAuc2JRdW90ZUFjdGlvbnMgLmRlbGV0ZUxpbmVzQnRuIHtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgfVxuICAmLmdyb3VwYWJsZSBsaS5hZGRHcm91cEJ0biB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cbiAgJi51bmdyb3VwYWJsZSBsaSB7XG5cbiAgICAmLmFkZEdyb3VwQnRuIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuXG4gICAgJi5hZGRHcm91cEJ0bixcbiAgICAmLnVuZ3JvdXBCdG4ge1xuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgfVxuICB9XG5cbiAgLy8gY3VzdG9tIGFjdGlvbnMgb24gdGhlIGxpbmUgZWRpdG9yXG4gIC5zYlF1b3RlQWN0aW9ucyxcbiAgLnNiR3JvdXBBY3Rpb25zIHtcbiAgICB1bCB7XG4gICAgICBsaXN0LXN0eWxlLXR5cGU6IG5vbmU7XG5cbiAgICAgICYuc2JUb29scyB7XG4gICAgICAgIHBhZGRpbmc6IDA7XG4gICAgICAgIG1hcmdpbjogMDtcbiAgICAgIH1cblxuICAgICAgbGk6bm90KC5zYlByaW1hcnlBY3Rpb24pIHtcbiAgICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICAgICAgY29sb3I6IEBzYkxpbmtDb2xvcjtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cbiAgICAgICAgJi5hY3Rpb24gPiAubGFiZWw6aG92ZXIge1xuICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICBjb2xvcjogQHNiR3JvdXBCdG5Ib3ZlckZvbnRDb2xvcjtcbiAgICAgICAgfVxuXG4gICAgICAgIHNwYW4uc2YtaWNvbi1yaWdodCxcbiAgICAgICAgc3Bhbi5zZi1pY29uLWRvd24ge1xuICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcblxuICAgICAgICAgICYub3BlbiArIHVsIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuXG4gICAgICAgICAgICAmLnNiU29sdXRpb25Hcm91cHMge1xuICAgICAgICAgICAgICBtYXgtaGVpZ2h0OiA0NTBweDtcbiAgICAgICAgICAgICAgb3ZlcmZsb3cteTogYXV0bztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgdWwge1xuICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgICAgIHRvcDogMTAwJTtcbiAgICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICBib3JkZXItcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gICAgICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgICAgIHotaW5kZXg6IDQ7XG4gICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG5cbiAgICAgICAgbGkge1xuICAgICAgICAgIHBhZGRpbmc6IDVweCAxMHB4O1xuICAgICAgICB9XG5cbiAgICAgICAgdWwge1xuICAgICAgICAgIHRvcDogLTFweDtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICAgID4gdWwge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgY3Vyc29yOiBhdXRvO1xuXG4gICAgICA+IGxpIHtcbiAgICAgICAgPiB1bCB7XG4gICAgICAgICAgcmlnaHQ6IC0xcHg7XG4gICAgICAgIH1cblxuICAgICAgICAmLmFjdGlvbiA+IC5sYWJlbDpob3ZlciB7XG4gICAgICAgICAgY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiUXVvdGVBY3Rpb25zIHtcbiAgICB1bCBsaSB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB9XG5cbiAgICA+IHVsID4gbGkge1xuICAgICAgbWFyZ2luLWJvdHRvbTogMTBweDtcblxuICAgICAgJi5sYXN0IHVsIHVsIHtcbiAgICAgICAgcmlnaHQ6IDEwMCU7XG4gICAgICB9XG5cbiAgICAgICY6bm90KC5sYXN0KSB1bCB1bCB7XG4gICAgICAgIGxlZnQ6IDEwMCU7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLy8gVGhlIFF1b3RlIEZpZWxkcyBzZWN0aW9uLCBpZiBzaG93blxuICAuc2JRdW90ZUZpZWxkcyB7XG5cbiAgICBtYXJnaW46IEBzYlBhZ2VIZWFkZXJUb3AgQHNiUGFnZUhlYWRlckxlZnQ7XG5cbiAgICBoZWFkZXIge1xuICAgICAgbWFyZ2luLWJvdHRvbTogMTBweDtcbiAgICB9XG5cbiAgICB0YWJsZSA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICBwYWRkaW5nOiA1cHggMDtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cbiAgICAgIGlucHV0LCBzZWxlY3Qge1xuICAgICAgICBmb250LXNpemU6IGluaGVyaXQ7XG4gICAgICAgIHdpZHRoOiAxNDBweDtcbiAgICAgIH1cblxuICAgICAgW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG4gICAgICAgIGNvbG9yOiBAc2JJY29uQ29sb3I7XG4gICAgICB9XG5cbiAgICAgIFtjbGFzcz1zYi1pY29uLXNlYXJjaF0ge1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgICBtYXJnaW4tbGVmdDogM3B4O1xuICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXG4gICAgICAgICY6aG92ZXIge1xuICAgICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAmLnNiTGFiZWwge1xuICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgICAgcGFkZGluZy1yaWdodDogMTJweDtcbiAgICAgICAgd2lkdGg6IDE1JTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyBBIHRhYmxlIG9mIHF1b3RlIGxpbmVzIGluIHRoZSBlZGl0b3IgKGNhbiBoYXZlIG11bHRpcGxlLCBlLmcuIGdyb3VwZWQgcXVvdGUpXG4gIC5zYlRhYmxlIHtcbiAgICBAcm93SGVpZ2h0OiBAc2JUYWJsZUNlbGxIZWlnaHQ7XG4gICAgQGluZGVudDogMTBweCArIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXG4gICAgLy8gZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cbiAgICBpbnB1dCwgc2VsZWN0IHtcbiAgICAgIGZvbnQtc2l6ZTogaW5oZXJpdDtcblxuICAgICAgJi5zYlNtYWxsIHtcbiAgICAgICAgbWF4LXdpZHRoOiA4MHB4O1xuICAgICAgfVxuXG4gICAgICAmOmRpc2FibGVkIHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiSGVhZGVyQmdDb2xvcjtcbiAgICAgIH1cblxuICAgICAgJi5oYXNEYXRlcGlja2VyIHtcbiAgICAgICAgbWluLXdpZHRoOiA5NXB4O1xuICAgICAgICB3aWR0aDogODUlO1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIHBhZGRpbmcgZm9yIGZpcnN0IGFuZCBsYXN0IGNvbHVtbnNcbiAgICA+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuICAgID4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICB9XG4gICAgPiB0aGVhZCA+IHRyID4gdGg6bGFzdC1vZi10eXBlLFxuICAgID4gdGJvZHkgPiB0ciA+IHRkOmxhc3Qtb2YtdHlwZSB7XG4gICAgICBwYWRkaW5nLXJpZ2h0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICB9XG5cbiAgICBzZWxlY3QgeyAgLy8gZG9lcyB0aGlzIG5lZWQgdG8gYmUgbW9yZSBzcGVjaWZpYz8gIGl0IGlzIGp1c3QgZm9yIEFkZGl0aW9uYWwgRGlzYyBjb2x1bW5cbiAgICAgIG1pbi13aWR0aDogMjBweDtcbiAgICAgIG1hcmdpbi1sZWZ0OiA0cHg7XG4gICAgfVxuXG4gICAgLy8gdGFibGUgY2VsbHNcbiAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAvLyBoZWlnaHQ6IEByb3dIZWlnaHQ7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXG4gICAgICAmLnJpZ2h0IGlucHV0IHtcbiAgICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICB9XG5cbiAgICAgIGEgPiBzcGFuW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gICAgICAgIGNvbG9yOiBAc2JJY29uQ29sb3I7XG5cbiAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC5zZi1pY29uLWVkaXQge1xuICAgICAgICB2aXNpYmlsaXR5OiBoaWRkZW47XG4gICAgICAgICYuc2JNRFFpY29uIHtcbiAgICAgICAgICBtYXJnaW4tcmlnaHQ6IC0xMWVtO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC8vIEFjdGlvbnMgY29sdW1uXG4gICAgICAmLnNiQWN0aW9ucyB7XG4gICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gICAgICAgIHdpZHRoOiAxJTtcbiAgICAgICAgcGFkZGluZy1sZWZ0OiAxNXB4O1xuXG4gICAgICAgIC5hY3Rpb24sXG4gICAgICAgIC51cmwge1xuICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgID4gdWwge1xuICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICBjdXJzb3I6IGF1dG87XG5cbiAgICAgICAgICA+IGxpLm1lbnUge1xuICAgICAgICAgICAgcGFkZGluZzogNXB4O1xuICAgICAgICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkdyb3VwQnRuQmdDb2xvcjtcbiAgICAgICAgICAgIGJvcmRlci1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICAgICAgICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG5cbiAgICAgICAgICAgIC5zYkFjdGlvbiB7XG4gICAgICAgICAgICAgIHBhZGRpbmc6IDVweDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICB1bCB7XG4gICAgICAgICAgcGFkZGluZzogMDtcbiAgICAgICAgICBtYXJnaW46IDA7XG4gICAgICAgICAgbGlzdC1zdHlsZS10eXBlOiBub25lO1xuXG4gICAgICAgICAgbGkge1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICAgICAgcG9zaXRpb246IHJlbGF0aXZlO1xuICAgICAgICAgICAgY29sb3I6IEBzYkxpbmtDb2xvcjtcblxuICAgICAgICAgICAgJi5hY3Rpb24gPiAubGFiZWw6aG92ZXIge1xuICAgICAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgICAgIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgIHNwYW4uc2YtaWNvbi1yaWdodCB7XG4gICAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcblxuICAgICAgICAgICAgICAmLm9wZW4gKyB1bCB7XG4gICAgICAgICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgIHVsIGxpIHtcbiAgICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgdWwge1xuICAgICAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgICAgICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICAgICAgICAgIHRvcDogLTFweDtcbiAgICAgICAgICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gICAgICAgICAgICBib3JkZXItcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gICAgICAgICAgICBib3JkZXI6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICAgICAgICAgei1pbmRleDogNDtcbiAgICAgICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG5cbiAgICAgICAgICAgIGxpIHtcbiAgICAgICAgICAgICAgcGFkZGluZzogNXB4IDEwcHg7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLy8gaW5pdGlhbGx5IGhpZGUgYWxsIGN1c3RvbSBhY3Rpb25zIHRoYXQgZG9lcyBoYXZlIGFuIGFjdGlvbiBzZWxlY3RlZCAobWVudSB0eXBlIG9yIHVybCBjdXN0b20gYWN0aW9ucyBzaG91bGQgYmUgZGlzcGxheWVkIGF0IGFsbCB0aW1lcylcbiAgICAgICAgLnNiQWN0aW9uIHtcbiAgICAgICAgICBwYWRkaW5nOiAycHg7XG5cbiAgICAgICAgICAmLmFjdGlvbiB7XG4gICAgICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgICY6bm90KC5yZW1vdmFibGUpIHtcbiAgICAgICAgICAuc2ItaWNvbi1pbmZvLWNpcmNsZWQge1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXG4gICAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgICAgY3Vyc29yOiBhdXRvO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIElmIGxpbmUgaXMgZGVsZXRhYmxlIGZyb20gdGhlIHF1b3RlLCBkaXNwbGF5IEFkZCBUbyBGYXZvcml0ZXMsIFJlbW92ZSBGcm9tIEZhdm9yaXRlcywgYW5kIERlbGV0ZSBhY3Rpb25zXG4gICAgICAgICYucmVtb3ZhYmxlIHtcbiAgICAgICAgICAuYWRkVG9GYXZCdG4sXG4gICAgICAgICAgLnJlbW92ZUZyb21GYXZCdG4sXG4gICAgICAgICAgLmRlbGV0ZUJ0biB7XG4gICAgICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgLy8gYXMgYSBsaXN0IGl0ZW0gd2l0aGluIGEgbWVudVxuICAgICAgICAgIHVsIHVsIHtcbiAgICAgICAgICAgIC5hZGRUb0ZhdkJ0bixcbiAgICAgICAgICAgIC5yZW1vdmVGcm9tRmF2QnRuLFxuICAgICAgICAgICAgLmRlbGV0ZUJ0biB7XG4gICAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cblxuXG4gICAgICAgICAgJi5mYXZvcml0ZSAuYWRkVG9GYXZCdG4sXG4gICAgICAgICAgJjpub3QoLmZhdm9yaXRlKSAucmVtb3ZlRnJvbUZhdkJ0biB7XG4gICAgICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIC8vIGFzIGEgbGlzdCBpdGVtIHdpdGhpbiBhIG1lbnVcbiAgICAgICAgICAmLmZhdm9yaXRlIHVsIHVsIC5hZGRUb0ZhdkJ0bixcbiAgICAgICAgICAmOm5vdCguZmF2b3JpdGUpIHVsIHVsIC5yZW1vdmVGcm9tRmF2QnRuIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLy8gSWYgdGhlIGxpbmUgaXMgYSBzdGFuZGFsb25lIGxpbmUsIGRpc3BsYXkgQ0xvbmUgaWNvbiAoYm90aCBmb3IgZXhpc3RpbmcgYW5kIG5ldyBsaW5lcylcbiAgICAgICAgJjpub3QoLmNvbXBvbmVudCkge1xuICAgICAgICAgIC5jbG9uZUJ0biB7XG4gICAgICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgLy8gYXMgYSBsaXN0IGl0ZW0gd2l0aGluIGEgbWVudVxuICAgICAgICAgIHVsIHVsIHtcbiAgICAgICAgICAgIC5jbG9uZUJ0biB7XG4gICAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIElmIGxpbmUgaXMgYnVuZGxlIHBhcmVudCwgZGlzcGxheSB0aGUgUmVjb25maWd1cmUgTGluZSBhY3Rpb25cbiAgICAgICAgJi5jb25maWd1cmFibGUge1xuICAgICAgICAgIC5yZWNvbmZpZ3VyZUJ0biB7XG4gICAgICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgLy8gYXMgYSBsaXN0IGl0ZW0gd2l0aGluIGEgbWVudVxuICAgICAgICAgIHVsIHVsIHtcbiAgICAgICAgICAgIC5yZWNvbmZpZ3VyZUJ0biB7XG4gICAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIElmIGxpbmUgY2FuIGJlIGRpc3BsYXllZCBpbiBlaXRoZXIgdGFibGUsIGRpc3BsYXkgRGVzZWdtZW50IG9yIFJlc2VnbWVudCBMaW5lIGFjdGlvbnNcbiAgICAgICAgJi5jb252ZXJ0YWJsZSB7XG4gICAgICAgICAgLmRlc2VnbWVudEJ0bixcbiAgICAgICAgICAucmVzZWdtZW50QnRuIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICB9XG5cbiAgICAgICAgICAvLyBhcyBhIGxpc3QgaXRlbSB3aXRoaW4gYSBtZW51XG4gICAgICAgICAgdWwgdWwge1xuICAgICAgICAgICAgLmRlc2VnbWVudEJ0bixcbiAgICAgICAgICAgIC5yZXNlZ21lbnRCdG4ge1xuICAgICAgICAgICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG5cbiAgICAgICAgICAvLyBEaXNwbGF5IGVpdGhlciBEZXNlZ21lbnQgb3IgUmVzZWdtZW50IGRlcGVuZGluZyBvbiB3aGV0aGVyIHRoZSBsaW5lIGlzIGEgc3RhbmRhcmQgb3Igc2VnbWVudGVkIGxpbmUgaXRlbVxuICAgICAgICAgICYuc2VnbWVudGVkIC5yZXNlZ21lbnRCdG4sXG4gICAgICAgICAgJjpub3QoLnNlZ21lbnRlZCkgLmRlc2VnbWVudEJ0biB7XG4gICAgICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIElmIGxpbmUgaGFzIGEgZGlzY291bnQgc2NoZWR1bGUsIGRpc3BsYXkgRWRpdCBEaXNjb3VudCBTY2hlZHVsZSBidXR0b25cbiAgICAgICAgJi5kc0VkaXRhYmxlIHtcbiAgICAgICAgICAudmlld0RTQnRuIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICB9XG5cbiAgICAgICAgICAvLyBhcyBhIGxpc3QgaXRlbSB3aXRoaW4gYSBtZW51XG4gICAgICAgICAgdWwgdWwge1xuICAgICAgICAgICAgLnZpZXdEU0J0biB7XG4gICAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAvLyBNdWx0aSBEZWxldGUgY29sdW1uXG4gICAgICAmLnNiRGVsZXRlQ2hlY2tib3gge1xuICAgICAgICB3aWR0aDogMSU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gZXhwYW5kIGxpbmUgYWN0aW9uIG1lbnVzIHRvIHRoZSByaWdodFxuICAgIHRib2R5ID4gdHIgPiB0ZDpmaXJzdC1vZi10eXBlIHtcbiAgICAgICYuc2JBY3Rpb25zIHVsIHVse1xuICAgICAgICBsZWZ0OiAxMDAlO1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIGV4cGFuZCBsaW5lIGFjdGlvbiBtZW51cyB0byB0aGUgbGVmdFxuICAgIHRib2R5ID4gdHIgPiB0ZDpsYXN0LW9mLXR5cGUge1xuICAgICAgJi5zYkFjdGlvbnMgdWwgdWx7XG4gICAgICAgIHJpZ2h0OiAxMDAlO1xuICAgICAgfVxuICAgIH1cblxuICAgID4gdGJvZHkgPiB0ciA+IHRkOmhvdmVyIHtcbiAgICAgIC5zZi1pY29uLWVkaXQge1xuICAgICAgICB2aXNpYmlsaXR5OiB2aXNpYmxlO1xuICAgICAgfVxuICAgIH1cblxuICAgID4gdGZvb3QgPiB0ciB7XG5cbiAgICAgICYuc2JUb3RhbFJvdyB0ZCB7XG4gICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXG4gICAgICAgICY6bGFzdC1vZi10eXBlIHtcbiAgICAgICAgICBwYWRkaW5nLXJpZ2h0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICA+IHRkIHtcbiAgICAgICAgLy8gaGVpZ2h0OiBAcm93SGVpZ2h0O1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIENsYXNzZXMgZm9yIHByb2R1Y3QgaGllcmFyY2h5IHZpc3VhbGl6YXRpb25cbiAgICAuc2JCdW5kbGVPcHRpb24ge1xuICAgICAgY29sb3I6IEBzYlNlY29uZGFyeUZvbnRDb2xvcjtcbiAgICB9XG4gICAgLnNiSW5kZW50MiB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiAxO1xuICAgIH1cbiAgICAuc2JJbmRlbnQzIHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDI7XG4gICAgfVxuICAgIC5zYkluZGVudDQge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAaW5kZW50ICogMztcbiAgICB9XG4gICAgLnNiSW5kZW50NSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiA0O1xuICAgIH1cbiAgICAuc2JJbmRlbnQ2IHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDU7XG4gICAgfVxuICAgIC5zYkluZGVudDcge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAaW5kZW50ICogNjtcbiAgICB9XG4gICAgLnNiSW5kZW50OCB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiA3O1xuICAgIH1cbiAgICAuc2JJbmRlbnQ5IHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDg7XG4gICAgfVxuICAgIC5zYkluZGVudDEwIHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDk7XG4gICAgfVxuXG5cbiAgICAvLyBEZXNjcmlwdGlvbiBmaWVsZFxuICAgIC5zYkRlc2NyaXB0aW9uRmllbGQge1xuICAgICAgc3BhbiB7XG4gICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICB9XG5cbiAgICAgIC5zYi1pY29uLXBlbmNpbCB7XG4gICAgICAgIHZpc2liaWxpdHk6IGhpZGRlbjtcbiAgICAgIH1cblxuICAgICAgJjpob3ZlciB7XG4gICAgICAgIC5zYi1pY29uLXBlbmNpbCB7XG4gICAgICAgICAgdmlzaWJpbGl0eTogdmlzaWJsZTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIFF1b3RlIFRvdGFsIGFtb3VudCBpbiBsb3dlciByaWdodCBjb3JuZXJcbiAgLnNiUXVvdGVUb3RhbCB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgZmxvYXQ6IHJpZ2h0O1xuICAgIG1hcmdpbjogMTJweCAyMnB4IDI2cHggMDtcblxuICAgID4gc3BhbiB7XG4gICAgICBtYXJnaW4tbGVmdDogMTBweDtcbiAgICB9XG4gIH1cblxuICAvLyBHcm91cCB0YWJzL2xpbmtzXG4gIC5zYkdyb3VwcywgLnNiRGltZW5zaW9uVGFicyB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgbWFyZ2luOiAxOHB4IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG4gICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuXG4gICAgPiBhIHtcbiAgICAgIGN1cnNvcjogbW92ZTtcbiAgICAgIGNvbG9yOiBpbmhlcml0O1xuICAgICAgcGFkZGluZzogNnB4IDE2cHggNnB4O1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXG4gICAgICA+IC5zZi1pY29uLWVkaXQge1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgICB2aXNpYmlsaXR5OiBoaWRkZW47XG4gICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgICAgICByaWdodDogLTZweDtcbiAgICAgICAgdG9wOiA2cHg7XG4gICAgICAgICY6aG92ZXIge1xuICAgICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgICAgICAgfVxuXG4gICAgICAgICYudmlzaWJsZSB7XG4gICAgICAgICAgdmlzaWJpbGl0eTogdmlzaWJsZTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgICA+IGEuc2VsZWN0ZWQge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMnB4IHNvbGlkIEBzYlRhYlNlbGVjdGVkQ29sb3I7XG4gICAgfVxuICAgID4gYTpob3ZlciB7XG4gICAgICBib3JkZXItYm90dG9tOiAycHggc29saWQgQHNiVGFiU2VsZWN0ZWRDb2xvcjtcbiAgICAgID4gLnNmLWljb24tZWRpdCB7XG4gICAgICAgIHZpc2liaWxpdHk6IHZpc2libGU7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLy8gQSBHcm91cCBvbiB0aGUgcXVvdGUuICBUaGVzZSBzdHlsZXMgYXJlIGZvciBtdWx0aXBsZSBncm91cHMgd2l0aCBvdmVycmlkZXMgbGF0ZXIgb24gZm9yIGEgc2luZ2xlIGdyb3VwLlxuICAuc2JHcm91cCB7XG4gICAgLy8gR3JvdXAgbmFtZSAtIGRpc3BsYXllZCBvbmx5IHdoZW4gdGhlIHF1b3RlIGlzIGdyb3VwZWRcbiAgICA+IGhlYWRlciB7XG4gICAgICBkaXNwbGF5OiBub25lO1xuICAgIH1cblxuICAgIC8vIEdyb3Vwc1xuICAgICYuc2JHcm91cGVkIHtcbiAgICAgIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gICAgICBtYXJnaW46IEBzYlBhZ2VIZWFkZXJUb3AgQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgICBib3JkZXI6IEBzYkNvbnRlbnRCb3JkZXI7XG4gICAgICBib3JkZXItcmFkaXVzOiA0cHg7XG5cbiAgICAgID4gaGVhZGVyIHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjpAc2JIZWFkZXJTZWNvbmRhcnlCZ0NvbG9yO1xuICAgICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgICAgbWFyZ2luOiAwO1xuICAgICAgICBib3JkZXI6IDA7XG4gICAgICAgIHBhZGRpbmc6IEBzYlBhZ2VIZWFkZXJUb3AgLSA1cHggQHNiUGFnZUhlYWRlckxlZnQgQHNiUGFnZUhlYWRlclRvcCAtIDEwcHg7XG4gICAgICAgIGJvcmRlci1ib3R0b206IEBzYkNvbnRlbnRCb3JkZXI7XG5cbiAgICAgICAgJi5zYkhpZGRlbkhlYWRlcntcbiAgICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICB9XG5cbiAgICAgICAgPiAuc2JHcm91cEVkaXRvciA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAgICAgd2lkdGg6IDUwJTtcbiAgICAgICAgICBtYXJnaW46IDEwcHg7XG4gICAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuICAgICAgICAgICY6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICAgICAgICBib3JkZXItcmlnaHQ6IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcblxuICAgICAgICAgICAgPiB0YWJsZSA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgID4gdGFibGUgPiB0Ym9keSA+IHRyOmZpcnN0LW9mLXR5cGUgPiB0ZDpsYXN0LW9mLXR5cGUge1xuICAgICAgICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgICAgICAgICAgcGFkZGluZy1yaWdodDogMTBweDtcbiAgICAgICAgICAgICAgbWluLXdpZHRoOiAyMDVweDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG5cbiAgICAgICAgICAuc2JGYXZvcml0ZSB7XG4gICAgICAgICAgICB3aWR0aDogNSU7XG5cbiAgICAgICAgICAgID4gaSB7XG4gICAgICAgICAgICAgIGZvbnQtc2l6ZTogMmVtO1xuICAgICAgICAgICAgICBkaXNwbGF5OmlubGluZS1ibG9jaztcbiAgICAgICAgICAgICAgdmVydGljYWwtYWxpZ246IHN1cGVyO1xuXG4gICAgICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC5zZi1pY29uLWVkaXQge1xuICAgICAgICAgIHZpc2liaWxpdHk6aGlkZGVuO1xuICAgICAgICB9XG5cbiAgICAgICAgLnNiR3JvdXBIZWFkZXIge1xuICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblxuICAgICAgICAgID4gaW5wdXQge1xuICAgICAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLnNiR3JvdXBIZWFkZXI6aG92ZXIge1xuICAgICAgICAgIC5zZi1pY29uLWVkaXQge1xuICAgICAgICAgICAgdmlzaWJpbGl0eTp2aXNpYmxlO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIGgyIHtcbiAgICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXG4gICAgICAgICAgJjpub3QoLnNiR3JvdXBEcmFnSGFuZGxlKSB7XG4gICAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgPiBbY2xhc3M9c2ItaWNvbi1wZW5jaWxdIHtcbiAgICAgICAgICAgIHZpc2liaWxpdHk6IGhpZGRlbjtcbiAgICAgICAgICB9XG5cbiAgICAgICAgICAmOmhvdmVyID4gW2NsYXNzPXNiLWljb24tcGVuY2lsXSB7XG4gICAgICAgICAgICB2aXNpYmlsaXR5OiB2aXNpYmxlO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC5zYkdyb3VwTmFtZSB7XG4gICAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgICAgICBtYXJnaW4tcmlnaHQ6IDE1cHg7XG4gICAgICAgICAgaGVpZ2h0OkBzYlRleHRib3hIZWlnaHQ7XG4gICAgICAgIH1cblxuICAgICAgICAvLyBHcm91cCBBY3Rpb25zIChpLmUuIEFkZCBQcm9kdWN0cywgQWRkIEZhdm9yaXRlcywgUmVzZXQgRGlzY291bnRzLCBPcHRpb25hbCwgQ2xvbmUsIERlbGV0ZSlcbiAgICAgICAgLnNiR3JvdXBBY3Rpb25zIHtcbiAgICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cbiAgICAgICAgICBtZW51IHtcbiAgICAgICAgICAgIG1heC1oZWlnaHQ6IDEyNXB4O1xuICAgICAgICAgICAgb3ZlcmZsb3cteTogYXV0bztcbiAgICAgICAgICB9XG5cbiAgICAgICAgICB1bCB1bCB1bCB7XG4gICAgICAgICAgICBsZWZ0OiAxMDAlO1xuICAgICAgICAgIH1cblxuICAgICAgICAgID4gdWwuc2JUb29scyA+IGxpLnNiVG9vbCB7XG4gICAgICAgICAgICBtYXJnaW4tYm90dG9tOiA1cHg7XG5cbiAgICAgICAgICAgID4gc3BhbixcbiAgICAgICAgICAgID4gaSB7XG4gICAgICAgICAgICAgIHBhZGRpbmc6IDZweCA4cHg7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLy8gR3JvdXAgbGV2ZWwgY3VzdG9tIGFjdGlvbnNcbiAgICAgICAgLnNiVG9vbHMge1xuICAgICAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgICAgICBoZWlnaHQ6IDMycHg7XG5cbiAgICAgICAgICAgID4gc3Bhbi5sYWJlbCxcbiAgICAgICAgICAgID4gaSB7XG4gICAgICAgICAgICAgIHBhZGRpbmc6IDZweCA4cHg7XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgID4gc3Bhbi5zZi1pY29uLWRvd24ge1xuICAgICAgICAgICAgICBwYWRkaW5nOiA2cHggNHB4O1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIEdyb3VwIGRlc2NyaXB0aW9uLCBpZiBpbmNsdWRlZCBpbiB0aGUgUXVvdGUgTGluZSBHcm91cCBmaWVsZCBzZXRcbiAgICAgICAgLnNiRGVzY3JpcHRpb24ge1xuICAgICAgICAgIG1hcmdpbi10b3A6IDEwcHg7XG4gICAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgZGlzcGxheTogdGFibGU7XG5cbiAgICAgICAgICA+IGRpdixcbiAgICAgICAgICA+IGRpdiA+IHAge1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lO1xuICAgICAgICAgIH1cblxuICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgY29sb3I6IGluaGVyaXQ7XG4gICAgICAgICAgICBbY2xhc3M9c2YtaWNvbi1lZGl0XSB7XG4gICAgICAgICAgICAgIHZpc2liaWxpdHk6IHZpc2libGU7XG4gICAgICAgICAgICAgIHBhZGRpbmctbGVmdDogNXB4O1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAuc2JUYWJsZSB7XG4gICAgICAgIG1hcmdpbi10b3A6IDEwcHg7XG4gICAgICB9XG4gICAgfVxuXG5cbiAgICAvLyBHcm91cC1sZXZlbCBmaWVsZHMgKGUuZy4gT3B0aW9uYWwsIFN1YnNjcmlwdGlvbiBUZXJtLCBBZGQgRGlzYylcbiAgICAuc2JHcm91cEZpZWxkcyB7XG4gICAgICBwYWRkaW5nOiAwIDEwcHg7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblxuICAgICAgPiB0YWJsZSA+IHRib2R5ID4gdHIge1xuXG4gICAgICAgIC5zYkxhYmVsIHtcbiAgICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgICAgICBwYWRkaW5nLXJpZ2h0OiA1cHg7XG4gICAgICAgIH1cblxuICAgICAgICA+IHRkIHtcblxuICAgICAgICAgIHBhZGRpbmctYm90dG9tOiAxMHB4O1xuICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgICAgY29sb3I6IEBzYkZvbnRDb2xvcjtcblxuICAgICAgICAgIC5zYkZpZWxkUm93IHtcbiAgICAgICAgICAgIHBhZGRpbmctYm90dG9tOiAxMHB4O1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGxhYmVsIHtcbiAgICAgICAgICAgIG1hcmdpbi1yaWdodDogNHB4O1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGlucHV0Om5vdChbdHlwZT1jaGVja2JveF0pIHtcbiAgICAgICAgICAgIGhlaWdodDogMmVtO1xuICAgICAgICAgICAgd2lkdGg6IDEwMHB4O1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGlucHV0W3R5cGU9Y2hlY2tib3hdIHtcbiAgICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gR3JvdXAgdG90YWwgLSBkaXNwbGF5cyBvbmx5IHdoZW4gdGhlcmUgYXJlIGJvdGggTURRIGFuZCBzdGFuZGFyZCBwcm9kdWN0cyBvbiBhIGdyb3VwXG4gICAgLnNiR3JvdXBUb3RhbCB7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgIG1hcmdpbjogMTVweCAyMnB4IDIwcHggMDtcbiAgICB9XG4gIH1cblxuICAvLyBFbXB0eSBncm91cCBvciBxdW90ZSBtZXNhZ2VzXG4gIC5zYkVtcHR5R3JvdXBNc2csXG4gIC5zYkVtcHR5UXVvdGVNc2csXG4gIC5lbXB0eU1TVGFibGVNZXNzYWdlLFxuICAuZW1wdHlTdGFuZGFyZFRhYmxlTWVzc2FnZSB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgcGFkZGluZzogQHNiUGFnZUhlYWRlckxlZnQ7XG4gIH1cblxuICAuZW1wdHlNU1RhYmxlTWVzc2FnZSB7XG4gICAgY2xlYXI6IGJvdGg7XG4gIH1cblxuICAuZW1wdHlNU1RhYmxlTWVzc2FnZSxcbiAgLmVtcHR5U3RhbmRhcmRUYWJsZU1lc3NhZ2Uge1xuICAgIHBhZGRpbmc6IEBzYlBhZ2VIZWFkZXJMZWZ0IDAgMCBAc2JQYWdlSGVhZGVyTGVmdCAqIDI7XG4gIH1cblxuICAjc2JQcmljZWJvb2tNYXNrLCAjc2JTZWdtZW50c01hc2ssICNzYkZhdm9yaXRlc01hc2ssICNzYkFsZXJ0TWFzayB7XG4gICAgLnNiTW9kYWxNYXNrO1xuXG4gICAgJi5jbG9zZSB7XG4gICAgICBkaXNwbGF5OiBub25lO1xuICAgIH1cbiAgfVxuXG4gICNzYlNlZ21lbnRzTW9kYWwsICNzYlByb2R1Y3RSdWxlQWxlcnQge1xuICAgIC5zYk1vZGFsRGlhbG9nO1xuICAgIG1heC13aWR0aDogNjAwcHg7XG5cbiAgICAmLmFtZW5kbWVudCB7XG4gICAgICBjdXJzb3I6IGRlZmF1bHQ7XG4gICAgICAuc2JNb2RhbENvbnRlbnRDb250YWluZXIge1xuICAgICAgICBvdmVyZmxvdzogYXV0bztcbiAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgaVtjbGFzc149c2YtaWNvbl0ge1xuICAgICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gICAgICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgIGN1cnNvcjogZGVmYXVsdDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cblxuXG4gICAgICAjc2JDdXN0b21TZWdtZW50cyB7XG4gICAgICAgID4gdGJvZHkgPiB0ciB7XG4gICAgICAgICAgJjpmaXJzdC1vZi10eXBlID4gdGQge1xuICAgICAgICAgICAgcGFkZGluZy10b3A6IDE0cHg7XG4gICAgICAgICAgfVxuICAgICAgICAgID4gdGQge1xuICAgICAgICAgICAgY3Vyc29yOiBkZWZhdWx0O1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAuc2JNb2RhbEZvb3RlciB7XG4gICAgICAgID4gLnNiQnV0dG9ucyB7XG4gICAgICAgICAgPiAuc2JCdG4ge1xuICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICAgICAgY29sb3I6IEBzYkdyb3VwQnRuRm9udENvbG9yO1xuICAgICAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgICAgIGN1cnNvcjogZGVmYXVsdDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgICY6Zm9jdXMge1xuICAgICAgICAgICAgICBvdXRsaW5lOiBub25lO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgJi5zYlByaW1hcnlBY3Rpb24ge1xuICAgICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuQmdDb2xvcjtcbiAgICAgICAgICAgICAgY29sb3I6IEBzYlByaW1hcnlCdG5Gb250Q29sb3I7XG4gICAgICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9yO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgJi5jbG9zZSB7XG4gICAgICBkaXNwbGF5OiBub25lO1xuICAgIH1cblxuICAgIC5zYlZhbGlkYXRpb25FcnJvcnMge1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgIHBhZGRpbmc6IDVweCAxNXB4IDA7XG5cbiAgICAgID4gZGl2IHtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgIGNvbG9yOiAjYzAwO1xuICAgICAgICBwYWRkaW5nLWJvdHRvbTogNXB4O1xuXG4gICAgICAgID4gc3BhbiwgPiBkaXYge1xuICAgICAgICAgIGRpc3BsYXk6IGlubGluZTtcbiAgICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgICB9XG5cbiAgICAgICAgPiBbY2xhc3NePXNiLWljb25dIHtcbiAgICAgICAgICBjb2xvcjogI2MwMDtcbiAgICAgICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMjtcbiAgICAgICAgICBwYWRkaW5nOiAwIDEwcHggMCAwO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgLm1lc3NhZ2Uge1xuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICAgYm9yZGVyOiBub25lO1xuICAgICAgbWFyZ2luOiAwIDAgMCA3cHg7XG4gICAgfVxuXG4gICAgLnNiQ3VzdG9tU2VnbWVudHNDb250YWluZXIge1xuICAgICAgaGVpZ2h0OiA0NDFweDtcbiAgICAgIG92ZXJmbG93OiBhdXRvO1xuICAgIH1cblxuICAgICNzYkN1c3RvbVNlZ21lbnRzIHtcbiAgICAgIG1hcmdpbi10b3A6IDA7XG5cbiAgICAgID4gdGhlYWQgPiB0ciA+IHRoIHtcbiAgICAgICAgcGFkZGluZy1ib3R0b206IDA7XG4gICAgICAgIC8vIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCAjYzAwO1xuICAgICAgfVxuXG4gICAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAgIHRleHQtYWxpZ246IGluaXRpYWw7XG4gICAgICAgIGhlaWdodDogMzBweDtcbiAgICAgICAgY3Vyc29yOiBtb3ZlO1xuXG4gICAgICAgID4gW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Db2xvcjtcbiAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgcGFkZGluZzogMCA1cHggMCAwO1xuICAgICAgICB9XG5cbiAgICAgICAgLnNmLWljb24tY2xvc2Uge1xuICAgICAgICAgIGNvbG9yOiAjNGQ0ZDRkO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgI3NiRmF2b3JpdGVzTW9kYWwge1xuICAgICNzYlNlZ21lbnRzTW9kYWw7XG5cbiAgICAuc2JNb2RhbENvbnRlbnRDb250YWluZXIgLnNiVGFibGUge1xuICAgICAgPiB0Ym9keSA+IHRyIHtcbiAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgYmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgICAgICAgfVxuXG4gICAgICAgID4gdGQge1xuICAgICAgICAgIHBhZGRpbmctdG9wOiAyMHB4O1xuXG4gICAgICAgICAgI3NiRmF2b3JpdGVOYW1lIHtcbiAgICAgICAgICAgIHdpZHRoOiAzMDBweDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyBQcm9kdWN0IFJ1bGUgQWxlcnQgc3R5bGVcbiAgI3NiUHJvZHVjdFJ1bGVBbGVydCB7XG4gICAgbWluLWhlaWdodDogYXV0bztcbiAgICBsaSB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB9XG4gIH1cblxuICAvLyBNRFEgcGFnZSBzdHlsZVxuICAmLnNiTURRIC5zYlBhZ2VCbG9jayB7XG5cbiAgICAuc2JUYWJsZSB7XG4gICAgICA+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuICAgICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICAgIHBhZGRpbmctbGVmdDogQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgICB9XG5cbiAgICAgID4gdGhlYWQgPiB0ciA+IHRoOmxhc3Qtb2YtdHlwZSxcbiAgICAgID4gdGJvZHkgPiB0ciA+IHRkOmxhc3Qtb2YtdHlwZSB7XG4gICAgICAgIHBhZGRpbmctcmlnaHQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIE1EUSBTZWdtZW50ZWQgUHJvZHVjdHMgdGFibGVcbiAgLnNiTXVsdGlTZWdtZW50IC5zYlRhYmxlIHtcbiAgICBtYXJnaW4tdG9wOiAxMHB4O1xuXG4gICAgLnNiTGluZU51bWJlciB7XG4gICAgICA+IHNwYW4ge1xuICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiRXhwYW5kQ29sbGFwc2Uge1xuICAgICAgPiBbY2xhc3NePVwic2ItaWNvbi1cIl0ge1xuICAgICAgICBmb250LXNpemU6IDEuNWVtO1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgfVxuXG4gICAgICA+IDpudGgtb2YtdHlwZSgyKSB7XG4gICAgICAgIGZvbnQtc2l6ZTogMS4zZW07XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gdGhlIGNlbGwgd2l0aCB0aGUgZXhwYW5kL2NvbGxhcHNlIGljb25cbiAgICAuc2JFeHBhbmQge1xuICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcblxuICAgICAgaSB7XG4gICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgZm9udC1zaXplOiAxNHB4O1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gICAgICAgIHRvcDogMnB4O1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIGEgXCJkZXRhaWxcIiByb3cgb2YgYSBzZWdtZW50XG4gICAgPiB0Ym9keSB7XG4gICAgICA+IHRyLmV4cGFuZGVkID4gdGQge1xuICAgICAgICBib3JkZXItYm90dG9tOiAwO1xuICAgICAgfVxuXG4gICAgICA+IC5zYkRldGFpbCB7XG4gICAgICAgID4gdGQge1xuICAgICAgICAgIGhlaWdodDogMzBweDtcbiAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JEZXRhaWxCZ0NvbG9yO1xuICAgICAgICB9XG5cbiAgICAgICAgJjpub3QoLmxhc3REZXRhaWxSb3cpe1xuICAgICAgICAgID4gdGQge1xuICAgICAgICAgICAgYm9yZGVyLWJvdHRvbTogMDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAvLyBsYWJlbCBjb2x1bW4gZm9yIGRldGFpbCByb3dzXG4gICAgICAgID4gdGQ6bnRoLWNoaWxkKDIpIHtcbiAgICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgICAgICBwYWRkaW5nLXJpZ2h0OiA0MHB4O1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgPiB0Zm9vdCA+IHRyPiB0ZDpmaXJzdC1vZi10eXBlIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgIH1cblxuICAgID4gdGZvb3QgPiB0cj4gdGQ6bGFzdC1vZi10eXBlIHtcbiAgICAgIHBhZGRpbmctcmlnaHQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgIH1cbiAgfVxuXG4gIC8vIE1EUSBTdGFuZGFyZCBQcm9kdWN0cyBhbmQgU2VnbWVudGVkIFByb2R1Y3RzIGNvbnRhaW5lciBlbGVtZW50c1xuICAuc2JTdGFuZGFyZCB7XG4gICAgcGFkZGluZy10b3A6IDQwcHg7XG5cbiAgICAmLnNiRW1wdHlUYWJsZSB7XG4gICAgICBwYWRkaW5nLXRvcDowO1xuICAgIH1cblxuICAgID4gaDIge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICB9XG4gIH1cblxuICAuc2JNdWx0aVNlZ21lbnQge1xuICAgIHBhZGRpbmctdG9wOiBAc2JQYWdlSGVhZGVyTGVmdDtcblxuICAgICYuc2JFbXB0eVRhYmxlIHtcbiAgICAgIHBhZGRpbmctdG9wOjA7XG4gICAgfVxuXG4gICAgLnNiU2VnbWVudGVkVGFibGVIZWFkZXIge1xuICAgICAgb3ZlcmZsb3c6IGF1dG87XG5cbiAgICAgID4gaDIge1xuICAgICAgICBwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgfVxuXG4gICAgfVxuXG4gICAgLnNiRGltZW5zaW9uSGVhZGVyIHtcbiAgICAgIG1hcmdpbjogMCBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICAgIGNsZWFyOiBib3RoO1xuXG4gICAgICA+IGgyLCBpIHtcbiAgICAgICAgZmxvYXQ6IGxlZnQ7XG4gICAgICB9XG5cbiAgICAgIGkge1xuICAgICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS4yO1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgICBwYWRkaW5nOiA1cHggMCAwIDVweDtcbiAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC5zYlRvb2x0aXAgPiAuc2JUb29sdGlwQ29udGVudCB7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgfVxuXG4gIC5zYk1EUVJpZ2h0IHtcbiAgICBmbG9hdDogcmlnaHQ7XG4gICAgPiAuc2JUb29sdGlwIHtcbiAgICAgIHdpZHRoOiAxJTtcbiAgICB9XG4gIH1cblxuICAvLyBEcmFnICYgRHJvcCBIb3ZlciBzdHlsZXNcbiAgLnNiR3JvdXBEcmFnSGFuZGxlIHtcbiAgICBjdXJzb3I6IG1vdmU7XG4gIH1cblxuICAuc2JEcmFnZ2VkTGluZSxcbiAgLnNiRHJhZ2dlZERpbWVuc2lvbixcbiAgLnNiRHJhZ2dlZFNlZ21lbnQsXG4gIC5zYkRyYWdnZWRHcm91cCB7XG4gICAgY29sb3I6IEBzYkxpbmtDb2xvcjtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgfVxuXG4gIC5zYkRyb3BSb3dIb3ZlciB7XG4gICAgYmFja2dyb3VuZDogQHNiVGFibGVSb3dIb3ZlckNvbG9yO1xuICB9XG5cbiAgLnNiRW1wdHlUYWJsZUhvdmVyIHtcbiAgICBwYWRkaW5nLWJvdHRvbTogMjJweDtcbiAgfVxuXG4gIC5zYkVtcHR5VGFibGVIb3ZlcixcbiAgLnNiRW1wdHlHcm91cEhvdmVyIHtcbiAgICBib3JkZXI6IDJweCBzb2xpZCBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICB9XG5cbiAgLnNiR3JvdXAuc2JHcm91cGVkLnNiRHJvcEdyb3VwSG92ZXIge1xuICAgIGJvcmRlcjogM3B4IHNvbGlkIEBzYkFjY2VudEljb25Db2xvcjtcbiAgICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIH1cblxuICBhLnNiRHJvcERpbWVuc2lvbkhvdmVyIHtcbiAgICBjb2xvcjogI2ZmZjtcbiAgICBjdXJzb3I6IG1vdmU7XG4gICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3I7XG4gIH1cblxuICAuc2JQYWdlcyB7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIHBhZGRpbmc6IDA7XG4gICAgYmFja2dyb3VuZDogI2ZmZjtcblxuICAgIC5zYkJ0biB7XG4gICAgICBmbG9hdDogbm9uZTtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICB9XG5cbiAgICAuc2JEaXNwbGF5ZWRQYWdlIHtcbiAgICAgIGNvbG9yOiBAc2JMaW5rQ29sb3I7XG4gICAgfVxuICB9XG5cbiAgLnNiRHJvcFBhZ2VIb3ZlciB7XG4gICAgY29sb3I6ICNmZmY7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICB9XG5cbiAgdGggPiAubXVsdGlTZWdtZW50QXJyb3cge1xuICAgIGZvbnQtc2l6ZTogMS4yZW0gIWltcG9ydGFudDtcbiAgICAmOmhvdmVyIHtcbiAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICB9XG4gIH1cblxuICAjc2JUaWVyc01vZGFsIHtcbiAgICAgLnNiTW9kYWxEaWFsb2c7XG4gICAgIG1heC13aWR0aDogODAlO1xuXG4gICAgIC5zYk1vZGFsQ29udGVudENvbnRhaW5lciB7XG4gICAgICAgcGFkZGluZzogMTVweDtcbiAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgICAgbWluLWhlaWdodDogMTAwcHg7XG4gICAgICAgbWF4LWhlaWdodDogNDAwcHg7XG4gICAgICAgb3ZlcmZsb3c6IGF1dG87XG5cbiAgICAgICBpbnB1dCB7XG4gICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICAgIH1cbiAgICAgfVxuXG4gICAgLmRhdGFDZWxsIHtcbiAgICAgIHRleHQtYWxpZ246bGVmdFxuICAgIH1cblxuICAgICNyZXZlcnRUaWVySWNvbiB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB9XG5cbiAgICAjcmV2ZXJ0SWNvbkNvbnRhaW5lciB7XG4gICAgICBwYWRkaW5nOiA4cHg7XG4gICAgICBtYXJnaW4tbGVmdDogMTZweDtcbiAgICAgIGJhY2tncm91bmQtY29sb3I6ICNmZmY7XG4gICAgfVxuXG5cdCAjZGlzY291bnRVbml0U2VsZWN0IHtcblx0IFx0bWFyZ2luLWxlZnQ6IDEwcHg7XG5cdCBcdHBhZGRpbmctbGVmdDogMTVweDtcblx0IH1cblxuICAgICAjZGlzY291bnRTY2hlZHVsZU5hbWUge1xuICAgICAgIHBhZGRpbmctbGVmdDogMzBweDtcblxuICAgICAgIGlucHV0IHtcbiAgICAgICAgIG1pbi13aWR0aDogMzAwcHg7XG4gICAgICAgICBtYXJnaW4tbGVmdDogMTBweDtcbiAgICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgICAgICBwYWRkaW5nLWxlZnQ6IDEwcHg7XG4gICAgICAgfVxuICAgICB9XG5cbiAgICAgLnNmLWljb24tZXJyb3Ige1xuICAgICAgIGNvbG9yOiAjYzAwICFpbXBvcnRhbnQ7XG4gICAgIH1cblxuICAgICNkZWxldGVBbGxDaGVja2JveCB7XG4gICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgfVxuXG4gICAgICNkaXNjb3VudFVuaXRTZWxlY3Qge1xuICAgICAgcGFkZGluZy1yaWdodDogMjBweDtcbiAgICAgfVxuXG4gICAgICNlcnJvck1lc3NhZ2Uge1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgfVxuXG4gICAgIC5oaWRlSW5wdXRCb3JkZXJzIHtcbiAgICAgICAgaW5wdXQge1xuICAgICAgICAgIGJvcmRlcjogbm9uZTtcbiAgICAgICAgICBiYWNrZ3JvdW5kOiAjZmZmO1xuICAgICAgICB9XG4gICAgIH1cblxuICAgICAuZGlzY291bnRTY2hlZHVsZVJvdyB7XG4gICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgIH1cblxuICAgIC5yZXZlcnRCdXR0b24ge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgYm9yZGVyOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICAgIGJvcmRlci1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICAgIGNvbG9yOiBAc2JHcm91cEJ0bkZvbnRDb2xvcjtcbiAgICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICB9XG5cbiAgICAgLmRpc2NvdW50U2NoZWR1bGVIZWFkZXIge1xuICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICB9XG5cbiAgICAuYWRkQm90dG9tQm9yZGVyIHtcbiAgICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNkOGRkZTY7XG4gICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgfVxuXG4gICAgIC5kaXNjb3VudFNjaGVkdWxlTG9hZGVyIHtcbiAgICBtYXJnaW4tbGVmdDogYXV0bztcbiAgICBtYXJnaW4tcmlnaHQ6IGF1dG87XG4gICAgbWFyZ2luLXRvcDogMjBweDtcbiAgICAgfVxuICAgfVxufVxuXG4jZWRpdERlc2NyaXB0aW9uQ29udGFpbmVyIC5zYkxpbmVFZGl0b3JEZXNjcmlwdGlvbkVkaXRGb290ZXIge1xuXHRtYXJnaW4tdG9wOiAxNnB4O1xufVxuXG4ucmVtb3ZlQm94U2hhZG93IHtcbiAgYm94LXNoYWRvdzogbm9uZTtcbn1cblxuLmFkZEJveFNoYWRvdyB7XG4gIGJveC1zaGFkb3c6IDAgMCAwIDE1cHggI0QxRDREODtcbn1cblxuLmhpZGRlbiB7XG4gIGRpc3BsYXk6IG5vbmU7XG59XG5cbi8vIExpbmUgRWRpdG9yIHRvb2x0aXBzIGZvciBNRFEuICBIYXZlIHRvIG1ha2UgdGhpcyBnbG9iYWwgYXMgalFVSSBwdXRzIGF0IGVuZCBvZiBkb2N1bWVudCwgbm90IHdpdGhpbiBvcmlnaW5hbCBwYXJlbnQgZWxlbWVudFxuLnNiTGluZUVkaXRvclRvb2x0aXAge1xuICBwYWRkaW5nOiAxMnB4O1xuICB0YWJsZSB0ZCB7XG4gICAgcGFkZGluZzogM3B4IDJweDtcbiAgICAmOm50aC1jaGlsZCgyKSB7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICB9XG4gIH1cbn1cblxuLnNiQnRuVG9vbHRpcCB7XG4gIHBhZGRpbmc6IDNweDtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiQmdDb2xvcjtcbiAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgLXdlYmtpdC1ib3gtc2hhZG93OiAxcHggMXB4IDExcHggI0QxRDREODtcbiAgLW1vei1ib3gtc2hhZG93OiAxcHggMXB4IDExcHggI0QxRDREODtcbiAgYm94LXNoYWRvdzogMXB4IDFweCAxMXB4ICNEMUQ0RDg7XG59XG4iLCIjc2JOZXdSZWxhdGVkQ29udGVudHtcblxuICAjc2JOZXdSZWxhdGVkQ29udGVudE9wdGlvbnN7XG4gICAgbWFyZ2luOiAwO1xuXG4gICAgZmllbGRzZXQge1xuICAgICAgYm9yZGVyOiAwO1xuICAgICAgcGFkZGluZzogNXB4O1xuXG4gICAgICA+IGxhYmVsIHtcbiAgICAgICAgbWFyZ2luLXJpZ2h0OiAxMHB4O1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICB3aWR0aDogMTc1cHg7XG4gICAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgfVxuXG4gICAgICA+IGlucHV0LCBzZWxlY3Qge1xuICAgICAgICB3aWR0aDogMjAwcHg7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiUGFnZUJsb2NrU2VjdGlvbiB7XG4gICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICBib3JkZXI6IG5vbmU7XG4gIH1cbn1cbiIsIiNzYlByb2R1Y3RDb25maWd1cmF0b3Ige1xuXG4gIC5zYkNvbmZpZ1Byb2R1Y3ROYW1lIHtcbiAgICBtYXJnaW46IEBzYlBhZ2VIZWFkZXJUb3AgMCAwIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICB9XG5cbiAgLy8gdG9vbCBiYXJzIGluIHRoZSBwYWdlIHRpdGxlXG4gIC5zYlBhZ2VUaXRsZSB7XG5cbiAgICAmLnNxdWVlemVkIHtcbiAgICAgIC5zYlRvb2xzIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JQYWdlVGl0bGVMZWZ0IHtcbiAgICAgIC5zZi1pY29uLWN1c3RvbV9hcHBzIHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogIzgxOTlhZjtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JCdXR0b25zIHtcbiAgICAgIGZsb2F0OiByaWdodDtcbiAgICB9XG5cbiAgICAuc2JUb29scyB7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDEwcHg7XG4gICAgICBwYWRkaW5nOiA3cHggMDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICB0cmFuc2l0aW9uOiBhbGwgLjI1cyBlYXNlLWluO1xuXG4gICAgICA+IC5zYlRvb2wge1xuICAgICAgICBwYWRkaW5nOiA4cHg7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiVG9vbFNlcGFyYXRvciB7XG4gICAgICBib3JkZXItcmlnaHQ6IEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgaGVpZ2h0OiAxcHg7XG4gICAgICB3aWR0aDogMTBweDtcbiAgICAgIGZsb2F0OiBsZWZ0O1xuICAgIH1cblxuICAgIC5zYkJ0biB7XG4gICAgICAmOmRpc2FibGVkIHtcbiAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25EaXNhYmxlZENvbG9yO1xuICAgICAgICBjdXJzb3I6IGRlZmF1bHQ7XG4gICAgICB9XG5cbiAgICAgICYuc2JBZGRPcHRpb24ge1xuICAgICAgICBtYXJnaW46IDE2cHg7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiRmVhdHVyZUljb24ge1xuICAgIGNvbG9yOiBAc2JIaWdobGlnaHRDb2xvcjtcbiAgICBmb250LXNpemU6IDMwcHg7XG4gIH1cblxuICAuc2JBZGRPcHRpb25Db250YWluZXIge1xuICAgIC5zYkFkZE9wdGlvbiB7XG4gICAgICBib3JkZXI6IDA7XG4gICAgICBtYXJnaW46IDRweCAwIDRweCAwO1xuXG4gICAgICAmOmhvdmVyIHtcbiAgICAgICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgaGVhZGVyIHtcbiAgICBwYWRkaW5nOiBAc2JQYWdlSGVhZGVyVG9wIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXG4gICAgJi5zYlNlY3Rpb24ge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICAgICAgYmFja2dyb3VuZDogQHNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcjtcbiAgICB9XG5cbiAgICAmLnNiRm9vdGVyIHtcbiAgICAgIG1hcmdpbjogMDtcbiAgICAgIGJvcmRlci10b3A6IEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICAgICAgYmFja2dyb3VuZDogQHNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcjtcbiAgICB9XG5cbiAgICAmLm9wdGlvbkxvb2t1cE1vZGUge1xuICAgICAgYm9yZGVyOiBub25lO1xuICAgICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICB9XG5cblxuICAgIC5zYlRpdGxlQ29udGFpbmVyIHtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgIHBhZGRpbmctcmlnaHQ6IDUwcHg7XG4gICAgICBwYWRkaW5nLXRvcDogNXB4O1xuICAgICAgdmVydGljYWwtYWxpZ246IHRvcDtcblxuICAgICAgPiAuc2JGZWF0dXJlSW5zdHJ1Y3Rpb25zIHtcbiAgICAgICAgcGFkZGluZzogMTBweCAwIDAgMDtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiRmVhdHVyZUFkZGl0aW9uYWxJbnN0cnVjdGlvbnMge1xuICAgICAgZGlzcGxheTogaW5saW5lO1xuICAgICAgZmxvYXQ6IHJpZ2h0O1xuICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICBwYWRkaW5nLXRvcDogM3B4O1xuICAgIH1cblxuICB9XG5cbiAgLmZlYXR1cmVDb250ZW50IHtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuICB9XG5cbiAgLnNiVG9wQ29uZmlndXJhdGlvbkF0dHJpYnV0ZXMsIC5zYkJvdHRvbUNvbmZpZ3VyYXRpb25BdHRyaWJ1dGVzIHtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICBwYWRkaW5nLXRvcDogMTBweDtcblxuICAgICYuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICAgIGJvcmRlcjowIDtcblxuICAgICAgJi5zYkJvdHRvbSB7XG4gICAgICAgIGJvcmRlci10b3A6IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcbiAgICAgICAgcGFkZGluZy10b3A6IDMwcHg7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiQ29uZmlnQXR0cmlidXRlQ29sdW1uIHtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiB0b3A7XG4gICAgfVxuXG4gICAgbGFiZWwge1xuICAgICAgcGFkZGluZzo1cHg7XG4gICAgfVxuXG4gICAgdGQge1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICB9XG5cbiAgICBpbnB1dCB7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDMwcHg7XG5cbiAgICAgICYuaGFzRGF0ZXBpY2tlciB7XG4gICAgICAgIHdpZHRoOiA0NSU7XG4gICAgICB9XG5cbiAgICB9XG5cbiAgICAuc2JMYWJlbENvbCB7XG4gICAgICBwYWRkaW5nLXJpZ2h0OiAxMHB4O1xuICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgfVxuXG4gICAgLnNiRGF0YUNvbCB7XG4gICAgICBwYWRkaW5nOiA2cHggMDtcbiAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG5cbiAgICAgID4gZGl2IHtcblxuICAgICAgICA+IGRpdiB7XG4gICAgICAgICAgcGFkZGluZy1sZWZ0OiA1cHg7XG4gICAgICAgIH1cblxuICAgICAgICA+IC5yZXF1aXJlZENvbmZpZ3VyYXRpb25BdHRyaWJ1dGUge1xuICAgICAgICAgIGJvcmRlci1sZWZ0OiAjYzAwIHNvbGlkO1xuICAgICAgICAgIHBhZGRpbmctbGVmdDogMnB4O1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnJlcXVpcmVzQ29uZmlndXJhdGlvbiB7XG4gICAgYm9yZGVyLWxlZnQ6ICNjMDAgc29saWQ7XG4gIH1cblxuICAuY2VudGVyIHtcbiAgICB3aWR0aDogMTAwJTtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICB9XG5cbiAgLnNiU2VsZWN0aW9uQ29sdW1uIHtcbiAgICB3aWR0aDogMSU7XG4gICAgY3Vyc29yOiBwb2ludGVyO1xuICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgfVxuXG4gIC8vIFNpZGUgUGFuZWxcbiAgLnNiT3B0aW9uc0ZpbHRlciB7XG4gICAgLnNiUGFuZWw7XG4gICAgdG9wOiA5MXB4O1xuXG4gICAgaW5wdXQge1xuICAgICAgZGlzcGxheTogaW5saW5lO1xuICAgIH1cblxuICAgIGRpdiB7XG4gICAgICA+IGEge1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyBPcHRpb24gTWV0aG9kIEFkZCBTaWRlIFBhbmVsXG4gIC5zYkFkZE9wdGlvbnNGaWx0ZXIge1xuICAgIC5zYlBhbmVsO1xuICAgIHRvcDogOTFweDtcblxuICAgIGlucHV0IHtcbiAgICAgIGRpc3BsYXk6IGlubGluZTtcbiAgICB9XG5cbiAgICBkaXYge1xuICAgICAgPiBhIHtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLy8gdGhlIFwiWCBQcm9kdWN0cyBGb3VuZFwiIGxhYmVsXG4gIC5zYlJlc3VsdHMge1xuICAgIG1hcmdpbjogMTRweCAwIC04cHggMDtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgfVxuXG4gIFx0Ly8gUGFnZSBCbG9jayBTZWN0aW9uIG92ZXJyaWRlc1xuICAuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JCZ0NvbG9yO1xuICAgIHBhZGRpbmc6IDA7XG4gIH1cblxuICAuc2JHcm91cHMge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIG1hcmdpbjogMThweCBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuICAgIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcblxuICAgID4gYSwgc3BhbiB7XG4gICAgICBjb2xvcjogaW5oZXJpdDtcbiAgICAgIHBhZGRpbmc6IDZweCAxNnB4O1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgIH1cbiAgICA+IGEuc2VsZWN0ZWQsIHNwYW4uc2VsZWN0ZWQge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMnB4IHNvbGlkIEBzYlRhYlNlbGVjdGVkQ29sb3I7XG4gICAgfVxuICAgID4gYTpob3Zlciwgc3Bhbjpob3ZlciB7XG4gICAgICBib3JkZXItYm90dG9tOiAycHggc29saWQgQHNiVGFiU2VsZWN0ZWRDb2xvcjtcbiAgICB9XG4gIH1cblxuICAvLyBBIHRhYmxlIG9mIG9wdGlvbnMgKHJvd3MpXG4gIC5zYlRhYmxlIHtcbiAgICBAcm93SGVpZ2h0OiBAc2JUYWJsZUNlbGxIZWlnaHQ7XG4gICAgbWFyZ2luLXRvcDogNXB4O1xuXG4gICAgLy8gZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cbiAgICA+IHRoZWFkID4gdHIgPiB0aDpudGgtY2hpbGQoMiksXG4gICAgPiB0Ym9keSA+IHRyID4gdGQ6bnRoLWNoaWxkKDIpIHtcbiAgICAgIHdpZHRoOiA2MHB4O1xuICAgIH1cblxuICAgIC8vIEFkZCBPcHRpb24gYnV0dG9uIG9uIHRoZSBsb3dlciBsZWZ0IHJvdyBvZiB0aGUgdGFibGVcblxuICAgIC8vIHRhYmxlIGNlbGxzXG4gICAgPiB0aGVhZCA+IHRyID4gdGgge1xuICAgICAgcGFkZGluZy1yaWdodDogMTJweDtcbiAgICAgIHBhZGRpbmctbGVmdDogMTJweDtcbiAgICB9XG4gICAgPiB0Ym9keSA+IHRyID4gdGQge1xuICAgICAgaGVpZ2h0OiBAcm93SGVpZ2h0O1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgIHBhZGRpbmc6IDAgMTJweDtcblxuXG4gICAgICBbY2xhc3NePXNiLWljb25dIHtcbiAgICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuMjtcbiAgICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICAgIH1cblxuICAgICAgJi5yaWdodCB7XG4gICAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgfVxuXG5cbiAgICAgICYuc2JRdWFudGl0eUNlbGwge1xuICAgICAgICB3aWR0aDogNzVweDtcbiAgICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuXG4gICAgICAgIGlucHV0IHtcbiAgICAgICAgICB3aWR0aDogMTAwcHg7XG4gICAgICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICB9XG5cbiAgICAuc2JDdXJyZW5jeUNlbGwge1xuICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG5cbiAgICAgIGlucHV0IHtcbiAgICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICB9XG4gICAgfVxuXG4gICAgPiB0Ym9keSB0cjpsYXN0LWNoaWxkIHtcbiAgICAgID4gdGQge1xuICAgICAgICBib3JkZXItYm90dG9tOiBub25lO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC53aXphcmRDb25maWd1cmF0b3IgPiB0YWJsZSA+IHRib2R5ID4gdHI6aG92ZXIge1xuICAgIGJhY2tncm91bmQ6ICNmZmY7XG4gIH1cblxuICAuc2JMb2FkTW9yZSB7XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIGhlaWdodDogNjVweDtcbiAgICB0b3A6IDk0JTtcbiAgICB3aWR0aDogMTAwJTtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNTtcbiAgICBwYWRkaW5nLXRvcDogMTVweDtcbiAgICBiYWNrZ3JvdW5kOiBAc2JCZ0NvbG9yO1xuICAgIGRpc3BsYXk6IG5vbmU7XG5cbiAgICAmLnNiU2hvd0xvYWRpbmcge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgIH1cbiAgfVxuICAuc2YtaWNvbi13YXJuaW5nIHtcbiAgICBjb2xvcjogIzU4NzZhMztcbiAgICBmb250LXNpemU6IDIwcHg7XG4gIH1cbn1cbiIsIi8vIFByb2R1Y3QgU2VhcmNoXG4jc2JQcm9kdWN0U2VhcmNoIHtcbiAgLnNiU2VhcmNoUmVzdWx0cztcblxuICAuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICBiYWNrZ3JvdW5kOiBub25lO1xuICAgIG1hcmdpbjogMDtcbiAgICBwYWRkaW5nOiAwO1xuICB9XG5cbiAgLnNiUGFnZVRpdGxlIHtcbiAgICAuc2JUb29scyB7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDEwcHg7XG4gICAgICAvLyBwYWRkaW5nOiA3cHggMDtcbiAgICAgIC8vIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG5cbiAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgIGJhY2tncm91bmQ6IEBzYkdyb3VwQnRuQmdDb2xvcjtcbiAgICAgICAgcGFkZGluZzogN3B4O1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC5zYlRhYmxlIHtcbiAgICA+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuICAgID4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgfVxuXG4gICAgLnNiU2VsZWN0aW9uSGVhZGVyIHtcbiAgICAgIHdpZHRoOiAxJVxuICAgIH1cblxuICAgIHRib2R5IHtcbiAgICAgICYuY2xvc2UgPiAuc2JHcm91cFJvd3tcbiAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgIH1cbiAgICAgIFxuICAgICAgLnNiR3JvdXBOYW1lIHtcbiAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgIGZvbnQtd2VpZ2h0OiBib2xkO1xuICAgICAgfVxuXG4gICAgICAuc2JHcm91cE5hbWVSb3cge1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JIZWFkZXJCZ0NvbG9yO1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgIFxuICAgICAgICBpIHtcbiAgICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZSAqIDEuMjU7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICB0Zm9vdCA+IHRyLnNiUHJvZHVjdFBhZ2VzIHtcblxuICAgICAgPiB0ZCB7XG4gICAgICAgIGJvcmRlci1ib3R0b206IG5vbmU7XG5cbiAgICAgICAgLnNiUGFnZXMge1xuICAgICAgICAgIGZvbnQtc2l6ZTogMC45ZW07XG4gICAgICAgICAgbWFyZ2luLXRvcDogMTBweDtcbiAgICAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG5cbiAgICAgICAgICA+IC5zYkJ1dHRvbnMge1xuICAgICAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3I7XG5cbiAgICAgICAgICAgID4gLnNiQnRuIHtcbiAgICAgICAgICAgICAgcGFkZGluZy10b3A6IDZweDtcbiAgICAgICAgICAgICAgY29sb3I6IEBzYkdyb3VwQnRuRm9udENvbG9yO1xuXG4gICAgICAgICAgICAgICYuc2ItaWNvbi1sZWZ0LWRpcixcbiAgICAgICAgICAgICAgJi5zYi1pY29uLXJpZ2h0LWRpciB7XG4gICAgICAgICAgICAgICAgZm9udC1zaXplOiAxLjdlbTtcbiAgICAgICAgICAgICAgICBwYWRkaW5nLXRvcDogM3B4O1xuICAgICAgICAgICAgICB9XG5cbiAgICAgICAgICAgICAgJi5kaXNhYmxlZCB7XG4gICAgICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICAgICAgICAgIGNvbG9yOiBAc2JHcm91cEJ0bkRpc2FibGVkRm9udENvbG9yO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgLnNiUGFnZVNlbGVjdG9yIHtcbiAgICAgICAgICAgIHBhZGRpbmc6IDAgMTBweDtcbiAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblxuICAgICAgICAgICAgPiBpbnB1dCB7XG4gICAgICAgICAgICAgIHdpZHRoOiA0NXB4O1xuICAgICAgICAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgICBcbiAgICAgICY6aG92ZXIge1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JUYWJsZVJvd0hvdmVyQ29sb3I7XG5cbiAgICAgICAgPiB0ZCAuc2JQYWdlcyA+IC5zYkJ1dHRvbnN7XG4gICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiVGFibGVSb3dIb3ZlckNvbG9yO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG59XG5cbi8vIEZpbHRlZCBhbmQgR3VpZGVkIFNlbGxpbmcgcGFuZWxzIG9uIHJpZ2h0IHNpZGUgb2YgcGFnZVxuLnNiUHJvZHVjdEZpbHRlciwgI3NiR3VpZGVkTW9kYWwuc2JHdWlkZWQge1xuICAuc2JQYW5lbDtcblxuICBkaXYge1xuICAgID4gYSB7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgIGRpc3BsYXk6IGZsZXg7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB9XG4gIH1cblxuICBmaWVsZHNldD5zcGFuIHtcbiAgICA+IGlucHV0W3R5cGU9Y2hlY2tib3hdIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuICB9XG5cbiAgbGFiZWw+c3BhbiB7XG4gICAgPiBpbnB1dFt0eXBlPWNoZWNrYm94XSB7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgIH1cbiAgfVxufVxuXG4uc2JQcm9kdWN0cyB7XG4gIHRyYW5zaXRpb246IC4wMnM7XG59XG5cbi8vIEd1aWRlZCBTZWxsaW5nXG4jc2JHdWlkZWRNYXNrIHtcbiAgLnNiTW9kYWxNYXNrO1xuXG4gICYuY2xvc2Uge1xuICAgIGRpc3BsYXk6IG5vbmU7XG4gIH1cbn1cblxuI3NiR3VpZGVkTW9kYWwuc2JHdWlkZWRNb2RhbCB7XG4gIC5zYk1vZGFsRGlhbG9nO1xuICBtYXgtd2lkdGg6IDQ4MHB4O1xuXG4gICYuY2xvc2Uge1xuICAgIGRpc3BsYXk6IG5vbmU7XG4gIH1cblxuICA+IC5zYkZpZWxkQ29ue1xuICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgb3ZlcmZsb3c6IGF1dG87XG4gIH1cblxuICBmaWVsZHNldCB7XG4gICAgcGFkZGluZzogMTBweDtcbiAgICBib3JkZXI6IDA7XG4gICAgZm9udC1zaXplOiAxLjRlbTtcblxuICAgID4gbGFiZWwge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgIHBhZGRpbmc6IDAgMCA1cHggN3B4O1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICB9XG5cbiAgICA+IHNwYW4ge1xuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICA+IGlucHV0W3R5cGU9Y2hlY2tib3hdIHtcbiAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICBpbnB1dCwgc2VsZWN0IHtcbiAgICAgIGZvbnQtc2l6ZTogaW5oZXJpdCAhaW1wb3J0YW50O1xuICAgICAgbWFyZ2luLWxlZnQ6IDZweDtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICBtaW4td2lkdGg6IDEwMHB4O1xuICAgIH1cblxuICAgID4gKltjbGFzc149c2ItaWNvbl0ge1xuICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICB9XG4gIH1cblxufVxuXG5kaXYuY2hhdHRlckZvbGxvdyB7XG4gIHdoaXRlLXNwYWNlOiBub3dyYXA7XG59XG5cbi5jaGF0dGVyRm9sbG93IGEge1xuICB0ZXh0LWRlY29yYXRpb246IG5vbmU7XG4gIGNvbG9yOiAjMDAwMDAwO1xuICBjdXJzb3I6IHBvaW50ZXI7XG59XG5cbi5jaGF0dGVyRm9sbG93IC5mb2xsb3dJY29uIHtcbiAgYmFja2dyb3VuZC1pbWFnZTogdXJsKC9pbWcvZmVlZHMvZm9sbG93X3Nwcml0ZS5wbmcpO1xuICBiYWNrZ3JvdW5kLXJlcGVhdDogbm8tcmVwZWF0O1xuICBiYWNrZ3JvdW5kLXBvc2l0aW9uOiAwIDA7XG4gIHdpZHRoOiBhdXRvO1xuICBoZWlnaHQ6IDIwcHg7XG4gIG1hcmdpbi10b3A6IDdweDtcbiAgbWFyZ2luLWxlZnQ6IDNweDsgIFxufVxuXG4uY2hhdHRlckZvbGxvdyAuY2hlY2tJY29uIHtcbiAgYmFja2dyb3VuZC1pbWFnZTogdXJsKC9pbWcvZmVlZHMvZm9sbG93X3Nwcml0ZS5wbmcpO1xuICBiYWNrZ3JvdW5kLXJlcGVhdDogbm8tcmVwZWF0O1xuICBiYWNrZ3JvdW5kLXBvc2l0aW9uOiAwIC0yN3B4O1xuICB3aWR0aDogYXV0bztcbiAgaGVpZ2h0OiAyMHB4O1xuICBtYXJnaW4tdG9wOiA3cHg7XG4gIG1hcmdpbi1sZWZ0OiAzcHg7XG59XG5cbi5jaGF0dGVyRm9sbG93IC51bmZvbGxvd0ljb24ge1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoL2ltZy9mZWVkcy9mb2xsb3dfc3ByaXRlLnBuZyk7XG4gIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gIGJhY2tncm91bmQtcG9zaXRpb246IDAgLTU0cHg7XG4gIHdpZHRoOiBhdXRvO1xuICBoZWlnaHQ6IDIwcHg7XG4gIG1hcmdpbi10b3A6IDdweDtcbiAgbWFyZ2luLWxlZnQ6IDNweDtcbn1cblxuLmNoYXR0ZXJGb2xsb3cgLmhpb24ge1xuICBiYWNrZ3JvdW5kLXBvc2l0aW9uOiAwIC03NXB4O1xufSIsIi8vIFNlYXJjaCByZXN1bHRzIGRpc3BsYXllZFxuI3NiU3Vic2NyaXB0aW9uU2VhcmNoIHtcbiAgLnNiU2VhcmNoUmVzdWx0cztcblxuICAuc2JQYWdlVGl0bGUge1xuXG4gICAgJi5zcXVlZXplZCB7XG4gICAgICAuc2JUb29scyB7XG4gICAgICAgIHBhZGRpbmc6IDA7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiVG9vbHMge1xuICAgICAgbWFyZ2luLXJpZ2h0OiAxMHB4O1xuICAgICAgcGFkZGluZzogN3B4IDA7XG5cbiAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgIHBhZGRpbmc6IDhweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cblxuLy8gU2lkZSBwYW5lbFxuLnNiU3Vic2NyaXB0aW9uRmlsdGVyIHtcbiAgLnNiUGFuZWw7XG5cbiAgaW5wdXQge1xuICAgIGRpc3BsYXk6IGlubGluZTtcbiAgfVxuXG4gIGRpdiB7XG4gICAgPiBhIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgZGlzcGxheTogZmxleDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIH1cbiAgfVxufVxuIiwiLy8gVXNlZCBmb3IgdGhlIENsb25lUHJvZHVjdENoaWxkcmVuLCBDbG9uZUxpbmVJdGVtcywgYW5kIENsb25lUXVvdGVUZW1wbGF0ZVJlbGF0ZWQgcGFnZXNcbi8vIEFsc28gYWRkZWQgUmVmcmVzaFByaWNpbmcgUGFnZXNcbi8vIEFsc28gYWRkZWQgUHJldmlld09wcG9ydHVuaXR5IHBhZ2VcbiNzYkNsb25lUmVsYXRlZCwgI3NiUmVmcmVzaFByaWNlcywgI3NiUHJldmlld0FwcHJvdmFscywgI3NiTGlzdEFwcHJvdmFscyB7XG5cblx0YmFja2dyb3VuZDogQHNiUGFnZUJnQ29sb3I7XG5cdGNvbG9yOiBAc2JGb250Q29sb3I7XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcblx0Zm9udC1mYW1pbHk6IEBzYkZvbnQ7XG5cblx0LnNiUGFnZVRpdGxlIHtcblx0XHR0ZXh0LWFsaWduOiBsZWZ0O1xuXG5cdFx0aDEge1xuXHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDI7XG5cdFx0ICBcdGZvbnQtd2VpZ2h0OiAzMDA7XG5cdFx0ICAgIGZvbnQtZmFtaWx5OiBAc2JGb250O1xuXHRcdCAgICBjb2xvcjogQHNiRm9udENvbG9yO1xuXHRcdH1cblx0XHRoMiB7XG5cdFx0ICBcdGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG4gICAgICAgICAgICBjb2xvcjogQHNiRm9udENvbG9yO1xuXHRcdH1cblxuXHRcdC5zZi1pY29uLWNvcHk6YmVmb3JlLCAuc2YtaWNvbi1yZWZyZXNoOmJlZm9yZSwgLnNmLWljb24tYXBwcm92YWw6YmVmb3JlIHtcblx0XHRcdG1hcmdpbi10b3A6IDEwcHg7XG5cdFx0XHRwb3NpdGlvbjogaW5oZXJpdDtcblx0XHR9XG5cblx0XHQuc2YtaWNvbi1wb3N0OmJlZm9yZSB7XG5cdFx0XHRwb3NpdGlvbjogaW5oZXJpdDtcblx0XHR9XG5cblx0XHQuc2YtaWNvbi1hcHByb3ZhbDpiZWZvcmUge1xuXHRcdFx0bWFyZ2luLXRvcDogMHB4O1xuXHRcdH1cblxuXHRcdC5yZXNpemUge1xuXHRcdFx0cGFkZGluZzogMnB4IDEwcHg7XG5cdFx0fVxuXHR9XG5cblx0Lm1lc3NhZ2Uge1xuXHRcdHBhZGRpbmc6IDEwcHg7XG5cdFx0bWFyZ2luOiAxOHB4IDI0cHg7XG5cdFx0Lm1lc3NhZ2VUZXh0IHtcblx0XHRcdGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG5cdFx0XHRoNCB7XG5cdFx0XHRcdHBhZGRpbmc6IDAgNHB4O1xuXHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHRcdGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG5cdFx0XHRcdGZvbnQtd2VpZ2h0OiAzMDA7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0LnNiQnRucyB7XG5cdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDAuOTtcblx0XHRib3JkZXItcmFkaXVzOiAwO1xuXHRcdHZlcnRpY2FsLWFsaWduOiB0b3A7XG5cdFx0ZmxvYXQ6IHJpZ2h0O1xuXG5cdFx0LnNiQnRuIHtcblx0XHRcdGJvcmRlci1yYWRpdXM6IDA7XG5cblx0XHRcdCY6Zmlyc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdGJvcmRlci10b3AtbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcblx0XHRcdFx0Ym9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuXHRcdFx0fVxuXG5cdFx0XHQmOmxhc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdGJvcmRlci1sZWZ0OiAwO1xuXHRcdFx0XHRib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuXHRcdFx0XHRib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC8vIENvbnRhaW5lciBmb3IgZWFjaCByZWxhdGVkIGxpc3Rcblx0LnNiR3JvdXAge1xuXHQgICAgPiBoZWFkZXIge1xuXHQgICAgICAgIG1hcmdpbjogMDtcblx0ICAgICAgICBib3JkZXI6IDA7XG5cdCAgICAgICAgcGFkZGluZzogQHNiUGFnZUhlYWRlclRvcCAtIDVweCBAc2JQYWdlSGVhZGVyTGVmdCBAc2JQYWdlSGVhZGVyVG9wIC0gMTBweDtcblx0ICAgICAgICBib3JkZXItYm90dG9tOiBAc2JDb250ZW50Qm9yZGVyO1xuICAgICAgXHR9XG5cbiAgICAgIFx0LnNiUGFnZUJsb2NrU2VjdGlvbiB7XG4gICAgICBcdFx0cGFkZGluZy1ib3R0b206IDZweDtcblx0XHQgIFx0dGV4dC1hbGlnbjogbGVmdDtcblxuICAgICAgXHRcdD4gaDMge1xuXHRcdCAgICBcdGZvbnQtZmFtaWx5OiBAc2JGb250O1xuXHRcdFx0ICBcdGZvbnQtd2VpZ2h0OiAzMDA7XG5cdFx0XHR9XG4gICAgICBcdH1cblxuXHQgICAgbWFyZ2luOiBAc2JQYWdlSGVhZGVyVG9wIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXHQgICAgYm9yZGVyOiBAc2JDb250ZW50Qm9yZGVyO1xuXHQgICAgYm9yZGVyLXJhZGl1czogM3B4O1xuICBcdH1cblxuXHQvLyBCdXR0b25zIHRvIGV4cGFuZCBhbmQgY29udHJhY3QgcmVsYXRlZCBsaXN0XG5cdC50b2dnbGVCdXR0b24ge1xuXHRcdGZsb2F0OiByaWdodDtcblx0fVxuXG5cdC8vIFRhYmxlIGZvciBlYWNoIHJlbGF0ZWQgbGlzdFxuXHQudGFibGVDb250YWluZXIge1xuXHRcdGRpc3BsYXk6IG5vbmU7XG5cdH1cblxuXHQuc2JUYWJsZSB7XG5cdCAgICBAcm93SGVpZ2h0OiBAc2JUYWJsZUNlbGxIZWlnaHQ7XG5cdCAgICBAaW5kZW50OiAxMHB4ICsgQHNiUGFnZUhlYWRlckxlZnQ7XG5cblx0ICAgIC5yZkhlYWQge1xuXHQgICAgXHRiYWNrZ3JvdW5kOiBAc2JDb250ZW50QmdDb2xvcjtcblx0ICAgIH1cblxuXHQgICAgLy8gcGFkZGluZyBmb3IgZmlyc3QgYW5kIGxhc3QgY29sdW1uc1xuXHQgICAgPiB0aGVhZCA+IHRyID4gdGg6Zmlyc3Qtb2YtdHlwZSxcblx0ICAgID4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuXHQgICAgICBcdHBhZGRpbmctbGVmdDogQHNiUGFnZUhlYWRlckxlZnQ7XG5cdCAgICB9XG5cdCAgICA+IHRoZWFkID4gdHIgPiB0aDpsYXN0LW9mLXR5cGUsXG5cdCAgICA+IHRib2R5ID4gdHIgPiB0ZDpsYXN0LW9mLXR5cGUge1xuXHQgICAgICBcdHBhZGRpbmctcmlnaHQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXHQgICAgfVxuXHQgICAgPiB0Ym9keSA+IHRyOmxhc3Qtb2YtdHlwZSA+IHRkIHtcblx0ICAgICAgXHRib3JkZXItYm90dG9tOiBub25lO1xuXHQgICAgfVxuXG5cdCAgICA+IHRoZWFkID4gdHIgPiB0aCB7XG5cdCAgICAgIFx0aGVpZ2h0OiBAcm93SGVpZ2h0ICogMC41O1xuXHQgICAgfVxuXG5cdCAgICAvLyB0YWJsZSBjZWxsc1xuXHQgICAgPiB0Ym9keSA+IHRyID4gdGQge1xuXHQgICAgXHRwYWRkaW5nOiBAcm93SGVpZ2h0ICogMC4xIEByb3dIZWlnaHQgKiAwLjI7XG5cdCAgICAgIFx0aGVpZ2h0OiBAcm93SGVpZ2h0ICogMC41O1xuXHQgICAgICBcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdCAgICAgIFx0dGV4dC1hbGlnbjogbGVmdDtcblx0XHR9XG5cblx0XHQ+IHRmb290ID4gdHIge1xuXHRcdFx0PiB0ZCB7XG5cdFx0XHRcdHRleHQtYWxpZ246IGxlZnQ7XG5cdFx0ICAgIFx0cGFkZGluZy10b3A6IEByb3dIZWlnaHQgKiAwLjE7XG5cdFx0ICAgIFx0cGFkZGluZy1ib3R0b206IEByb3dIZWlnaHQgKiAwLjE7XG5cdFx0ICAgIFx0cGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcblx0XHRcdFx0aGVpZ2h0OiBAcm93SGVpZ2h0ICogMC40O1xuXHRcdFx0fVxuXHRcdH1cblxuXHRcdHRib2R5ID4gdHI6aG92ZXIge1xuXHRcdCAgXHRiYWNrZ3JvdW5kOiBub25lO1xuXHRcdH1cblx0fVxuXG59XG4iLCIvLyBGYXZvcml0ZSBNYW5hZ2VyXG4jc2JGYXZvcml0ZXNNYW5hZ2VyIHtcblxuICAuc2JQYWdlVGl0bGUge1xuICAgIC5zYlRvb2xzIHtcbiAgICAgIG1hcmdpbi1yaWdodDogMTBweDtcblxuICAgICAgPiAuc2JUb29sIHtcbiAgICAgICAgYmFja2dyb3VuZDogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICBwYWRkaW5nOiA3cHg7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnRvcE1zZyB7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIHBhZGRpbmc6IDMycHhcbiAgfVxuXG4gIC5ib3RNc2cge1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgfVxuXG4gIC5zYlRhYmxlIHtcbiAgICA+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuICAgID4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgfVxuXG4gICAgLnNiU2VsZWN0aW9uSGVhZGVyIHtcbiAgICAgIHdpZHRoOiAxJVxuICAgIH1cblxuICAgIC5zYkZhdm9yaXRlSGVhZGVyIHtcbiAgICAgIHdpZHRoOiAxNjBweDtcbiAgICB9XG5cbiAgICAgIC5zYkRlc2NyaXB0aW9uIHtcbiAgICAgICAgd2lkdGg6IDUwJTtcbiAgICAgIH1cblxuICAgIHRib2R5IHtcbiAgICAgIHRyIHtcbiAgICAgICAgdGQge1xuICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cbiAgICAgICAgICBpIHtcbiAgICAgICAgICAgIGNvbG9yOiBAc2JMaW5rQ29sb3I7XG4gICAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgICAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgICAgICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gICNzYkZhdm9yaXRlc01hbmFnZXJNYXNrIHtcbiAgICAuc2JNb2RhbE1hc2s7XG5cbiAgICAmLmNsb3NlIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuICB9XG5cbiAgI3NiRmF2b3JpdGVzTWFuYWdlck1vZGFsIHtcbiAgICAuc2JNb2RhbERpYWxvZztcblxuICAgIG1pbi1oZWlnaHQ6IDE2MHB4O1xuICAgIG1heC13aWR0aDogNDAwcHg7XG5cbiAgICAuc2JNb2RhbENvbnRlbnRDb250YWluZXIge1xuICAgICAgdWwge1xuICAgICAgICAtd2Via2l0LXBhZGRpbmctZW5kOiAwcHg7XG4gICAgICB9XG5cbiAgICAgIC5zYlRhYmxlIHtcbiAgICAgICAgLnNiQWN0aW9ucyB7XG4gICAgICAgICAgd2lkdGg6IDElO1xuICAgICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC5mb3JtLWNvbnRyb2wge1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIHdpZHRoOiAxMDAlO1xuICAgIGhlaWdodDogMzRweDtcbiAgICBwYWRkaW5nOiA2cHggMTJweDtcbiAgICBmb250LXNpemU6IDE0cHg7XG4gICAgbGluZS1oZWlnaHQ6IDEuNDI4NTcxNDM7XG4gICAgY29sb3I6ICM1NTU7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZjtcbiAgICBiYWNrZ3JvdW5kLWltYWdlOiBub25lO1xuICAgIGJvcmRlcjogMXB4IHNvbGlkICNjY2M7XG4gICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICB9XG5cbiAgLnNiVmFsaWRhdGlvbkVycm9ycyB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgcGFkZGluZzogNXB4IDE1cHg7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICBjb2xvcjogI2MwMDtcbiAgfVxuXG4gIC5pbnZhbGlkIHtcbiAgICBib3JkZXItY29sb3I6ICNjMDA7XG4gIH1cblxuICAuZHJvcGRvd24tbWVudSB7XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIHRvcDogMTAwJTtcbiAgICBsZWZ0OiAwO1xuICAgIHotaW5kZXg6IDEwMDA7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgICBmbG9hdDogbGVmdDtcbiAgICBtaW4td2lkdGg6IDE2MHB4O1xuICAgIHBhZGRpbmc6IDVweCAwO1xuICAgIG1hcmdpbjogMnB4IDAgMDtcbiAgICBmb250LXNpemU6IDE0cHg7XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICBsaXN0LXN0eWxlOiBub25lO1xuICAgIGJhY2tncm91bmQtY29sb3I6ICNmZmY7XG4gICAgYm9yZGVyOiAxcHggc29saWQgcmdiYSgwLDAsMCwuMTUpO1xuICAgIGJvcmRlci1yYWRpdXM6IDRweDtcbiAgICBib3gtc2hhZG93OiAwIDZweCAxMnB4IHJnYmEoMCwwLDAsLjE3NSk7XG4gICAgYmFja2dyb3VuZC1jbGlwOiBwYWRkaW5nLWJveDtcbiAgfVxuXG4gIC5kcm9wZG93bi1tZW51ID4gbGkgPiBhIHtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgICBwYWRkaW5nOiAzcHggMjBweDtcbiAgICBjbGVhcjogYm90aDtcbiAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgIGxpbmUtaGVpZ2h0OiAxLjQyODU3MTQzO1xuICAgIGNvbG9yOiAjMzMzO1xuICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gIH1cbiAgLmRyb3Bkb3duLW1lbnUgPiBsaSA+IGE6aG92ZXIsXG4gIC5kcm9wZG93bi1tZW51ID4gbGkgPiBhOmZvY3VzIHtcbiAgICBjb2xvcjogIzI2MjYyNjtcbiAgICB0ZXh0LWRlY29yYXRpb246IG5vbmU7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogI2Y1ZjVmNTtcbiAgfVxuXG4gIC5kcm9wZG93bi1tZW51ID4gLmFjdGl2ZSA+IGEsXG4gIC5kcm9wZG93bi1tZW51ID4gLmFjdGl2ZSA+IGE6aG92ZXIsXG4gIC5kcm9wZG93bi1tZW51ID4gLmFjdGl2ZSA+IGE6Zm9jdXMge1xuICAgIGNvbG9yOiAjZmZmO1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjMzM3YWI3O1xuICAgIG91dGxpbmU6IDA7XG4gIH1cblxufVxuXG5cbiIsIi8vIFVzZWQgZm9yIHRoZSBibG9jayBwcmljZSBhbmQgY29zdCBzY2hlZHVsZSBwYWdlc1xuI3NiQmxvY2tQcmljZSB7XG5cblx0YmFja2dyb3VuZDogQHNiUGFnZUJnQ29sb3I7XG5cdGNvbG9yOiBAc2JGb250Q29sb3I7XG5cdGZvbnQtZmFtaWx5OiBAc2JGb250O1xuXHRwYWRkaW5nLXRvcDogMTBweDtcbiAgICBwYWRkaW5nLWJvdHRvbTogMTBweDtcblxuXHQjc2JQcmljZUJvb2tHcm91cCB7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0fVxuXG4gICAgI3NiQ2xvbmVQcmljZUJvb2tHcm91cCB7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgcGFkZGluZy1sZWZ0OiAxMDBweDtcblx0fVxuXG4gICAgLnNiUHJpY2VCb29rVGV4dCB7XG4gICAgICAgIHBhZGRpbmc6IDEwcHg7XG5cdH1cblxuXHQuc2JDbG9uZUZyb21QcmljZUJvb2sge1xuXHQgICAgbWFyZ2luLWxlZnQ6IDE1cHg7XG5cdCAgICBwYWRkaW5nLWJvdHRvbTogNHB4O1xuXHR9XG5cblx0LnNiUHJpY2VCb29rU2VsZWN0IHtcblx0ICAgIHBhZGRpbmctYm90dG9tOiAycHg7XG5cdH1cbn0iXSwiZmlsZSI6InNiLmNzcyJ9 */
