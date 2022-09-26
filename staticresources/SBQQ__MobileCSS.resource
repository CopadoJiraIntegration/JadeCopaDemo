/*** Common ***/
@-webkit-keyframes loading-rotate {
  0% {
    -webkit-transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
  }
}
@-moz-keyframes loading-rotate {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
@keyframes loading-rotate {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
* {
  font-family: ProximaNova, Arial, sans-serif;
  color: #3c3d3e;
  -webkit-font-smoothing: antialiased;
}
*,
*:before,
*:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}
body {
  padding: 0px;
  margin: 0px;
}
.pbSubsection header {
  *zoom: 1;
  margin-left: -7px;
  margin-right: -7px;
  margin-bottom: 5px;
  padding: 14px;
  vertical-align: middle;
  border-bottom-width: 1px;
  border-bottom-style: solid;
  border-color: #eceef0;
}
.pbSubsection header h1 {
  margin: 0px;
  /*font-weight: 300;*/
  font-size: 14px;
  color: #3c3d3e;
}
.pbSubsection label {
  text-align: left;
}
header.pageHeader {
  margin: 0px;
  background-color: white;
  border-bottom-width: 1px;
  border-bottom-style: solid;
  border-color: #cfd4d9;
  padding-top: 3px;
  padding-bottom: 3px;
  width: 100%;
}
header.pageHeader h1 {
  display: inline-block;
  font-weight: 100;
  vertical-align: middle;
}
header.pageHeader h1 .title {
  display: block;
  font-size: 12px;
}
header.pageHeader h1 .subtitle {
  display: block;
  font-size: 14px;
}
.icon {
  display: inline-block;
  background-position: 50%;
  background-repeat: no-repeat;
  border-radius: 5px;
  width: 30px;
  height: 30px;
  background-size: 100%;
  vertical-align: middle;
  margin-left: 14px;
  margin-right: 14px;
}
.iconCustom18 {
  background-color: #4dca76;
  background-image: url('/img/icon/t4/custom/custom18_60.png');
}
input,
textarea,
keygen,
select,
button,
isindex {
  margin: 0;
  font: -webkit-small-control;
  font-size: 15px;
  font-family: inherit;
  color: initial;
  letter-spacing: normal;
  word-spacing: normal;
  text-transform: none;
  text-indent: 0px;
  text-shadow: none;
  display: inline-block;
  vertical-align: middle;
  text-align: start;
  box-sizing: border-box;
  color: #3c3d3e;
  padding: 7px 14px;
  line-height: 25px;
  border-radius: 5px;
  border: 1px solid #cfd0d2;
  -webkit-writing-mode: horizontal-tb;
  -moz-appearance: none;
  -webkit-appearance: none;
  -ms-appearance: none;
}
input {
  border: 1px solid #cfd0d2;
  border-radius: 3px;
  background-color: #fff;
  box-shadow: inset 0 2px 2px rgba(0, 0, 0, 0.07);
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
label {
  font-size: 13px;
  color: #696e71;
  margin: 0;
  padding-bottom: 5px;
  display: block;
}
textarea {
  -webkit-rtl-ordering: logical;
  -webkit-user-select: text;
  flex-direction: column;
  cursor: auto;
  white-space: pre-wrap;
  word-wrap: break-word;
  background-color: #fff;
  box-shadow: inset 0 2px 2px rgba(0, 0, 0, 0.07);
}
input[type="checkbox"],
input[type="radio"] {
  padding: 0px;
  border-style: solid;
  border-width: 1px;
  height: 22px;
  width: 22px;
  border-color: #bbc0c4;
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.02), inset 0 0 0 2px rgba(255, 255, 255, 0.5);
}
input[type="checkbox"]:disabled,
input[type="radio"]:disabled {
  opacity: 0.4;
}
input[type="checkbox"]:focus,
input[type="checkbox"]:active,
input[type="radio"]:focus,
input[type="radio"]:active {
  background: #e8eaeb;
}
input[type="checkbox"]:checked,
input[type="radio"]:checked {
  border-color: #1c78b1;
  background: #2a94d6 !important;
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.02);
}
input[type="checkbox"]:checked::after {
  display: block;
  position: relative;
  content: '';
  left: 3px;
  top: 4px;
  height: 8px;
  width: 14px;
  border-bottom: 4px solid white;
  border-left: 4px solid white;
  -webkit-transform: rotate(-45deg);
}
input[type="radio"]:checked::after {
  display: block;
  position: relative;
  content: '';
  left: 5px;
  top: 5px;
  height: 10px;
  width: 10px;
  border-radius: 100%;
  background: white;
}
input.invalidDate {
  border-color: #c00;
}
select {
  min-width: 50px;
  padding: 7px 14px;
  margin-left: 3px;
  background-image: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2ZXJzaW9uPSIxLjEiIGlkPSJMYXllcl8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDI3LjYgMjEiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDI3LjYgMjEiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KICA8Zz4NCiAgICA8ZGVmcz4NCiAgICAgIDxwYXRoIGlkPSJTVkdJRF8xXyIgZD0iTTUuNiA1aDE2LjRjMC40IDAgMC44IDAuNiAwLjQgMWwtOCA5LjhjLTAuMyAwLjMtMC45IDAuMy0xLjIgMGwtOC05LjhDNC44IDUuNiA1LjEgNSA1LjYgNXoiLz4NCiAgICA8L2RlZnM+DQogICAgPGNsaXBQYXRoIGlkPSJTVkdJRF8yXyI+DQogICAgICA8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8xXyIgb3ZlcmZsb3c9InZpc2libGUiLz4NCiAgICA8L2NsaXBQYXRoPg0KICAgIDxyZWN0IHg9IjAiIHk9IjAiIGNsaXAtcGF0aD0idXJsKCNTVkdJRF8yXykiIGZpbGw9IiM1NTY5OEQiIHdpZHRoPSIyNy42IiBoZWlnaHQ9IjIxIi8+DQogIDwvZz4NCjwvc3ZnPg0K');
  background-color: #fff;
  background-position: 95% 50%;
  background-repeat: no-repeat;
  background-size: 14px 14px;
  border: 1px solid #cfd0d2;
  border-radius: 3px;
}
select[multiple] {
  min-height: 74px;
}
select[size="1"] {
  align-items: center;
  white-space: pre;
}
button.btn {
  background-color: white;
  border-color: #bbc0c4;
  padding-top: 6px;
  padding-bottom: 7px;
  padding-left: 6px;
  padding-right: 7px;
  margin-bottom: 14px;
  text-align: center;
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#f1f1f1));
  background-image: -webkit-linear-gradient(top, #ffffff, #f1f1f1);
  background-image: -moz-linear-gradient(top, #ffffff, #f1f1f1);
  background-image: -ms-linear-gradient(top, #ffffff, #f1f1f1);
  background-image: -o-linear-gradient(top, #ffffff, #f1f1f1);
}
button.btn span {
  font-size: 16px;
  font-weight: 700;
  color: #44596c;
}
button.primary {
  width: 200px;
}
button.single {
  max-width: 250px;
  width: 100%;
}
button {
  color: buttontext;
}
button.btn span.icon-utility-down {
  margin-left: 10px;
  margin-right: 10px;
}
.pbHeader {
  width: 100%;
  padding-top: 15px;
  text-align: center;
}
.pbTitle {
  display: none;
}
.pbButton {
  width: 100%;
}
table.list {
  width: 100%;
}
table.list td,
table.list th {
  padding: 5px 3px;
}
table.list th {
  color: #696e71;
  font-size: 12px;
  text-align: left;
  padding-right: 10px;
}
table.list td {
  font-size: 14px;
  color: #3c3d3e;
  padding-right: 10px;
}
td.dataCell {
  border-top: 1px solid #cfd4d9;
}
.labelCol {
  text-align: right;
  padding-right: 10px;
}
.instructionsCol {
  padding-left: 10px;
  padding-top: 5px;
}
.buttonContainer {
  width: 100%;
  margin-top: 7px;
  margin-bottom: 7px;
  text-align: center;
}
.recordEditorForm {
  margin-left: 10px;
  margin-right: 10px;
  padding-top: 85px;
}
.recordEditorForm td {
  padding-bottom: 3px;
}
.recordEditorForm select,
.recordEditorForm input[type="text"] {
  width: 100%;
}
.statusContainer {
  position: fixed;
  right: 0;
  left: 0;
  top: 0;
  bottom: 0;
  z-index: 1001;
  text-align: center;
  padding: 0px;
  opacity: 0.6;
  background-color: #354452;
}
.statusIcon {
  width: 30px;
  height: 30px;
  color: #afb5b9;
  position: absolute;
  top: 50%;
  margin: -15px auto auto;
  -webkit-animation: loading-rotate linear 0.8s infinite;
  -moz-animation: loading-rotate linear 0.8s infinite;
  animation: loading-rotate linear 0.8s infinite;
  -webkit-animation-fill-mode: forwards;
  -moz-animation-fill-mode: forwards;
  animation-fill-mode: forwards;
  background: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2M3B4IiBoZWlnaHQ9IjYzcHgiIHZpZXdCb3g9IjAgMCA2MyA2MyI+PHBhdGggZmlsbD0iI2FmYjViOSIgZD0iTTMxLjUwMSwxNi43ODF2LTQuODg2Yy0xMC43ODksMC0xOS41MzYsOC43NDUtMTkuNTM2LDE5LjUzNWMwLDEwLjc4OSw4Ljc0NywxOS41MzUsMTkuNTM2LDE5LjUzNWMxMC43ODgsMCwxOS41MzQtOC43NDYsMTkuNTM0LTE5LjUzNWMwLTUuMjE0LTIuMDQ5LTkuOTQ4LTUuMzc3LTEzLjQ1Mmw0LjcxOS00LjQ4M2M0LjQ0LDQuNjcxLDcuMTY4LDEwLjk4Myw3LjE2OCwxNy45MzdjMCwxNC4zODUtMTEuNjYyLDI2LjA0My0yNi4wNDIsMjYuMDQzYy0xNC4zODYsMC0yNi4wNDctMTEuNjU4LTI2LjA0Ny0yNi4wNDNjMC0xNC4zODgsMTEuNjYxLTI2LjA0NywyNi4wNDctMjYuMDQ3VjAuNWw5Ljc2Nyw4LjEzOUwzMS41MDEsMTYuNzgxeiIvPjwvc3ZnPg==') no-repeat center center;
  background-size: 100%;
}
.modalDialogWrapper {
  z-index: 22;
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
}
.modalDialogBackground {
  z-index: 21;
  opacity: .6;
  background-color: #354452;
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  -webkit-transition: opacity 300ms;
}
.modalDialog {
  z-index: 22;
  position: fixed;
  top: 100px;
  left: 0;
  right: 0;
  margin: auto;
  height: auto;
  max-height: 70%;
  width: 100%;
  max-width: 292px;
  border-radius: 5px;
  background-color: #ffffff;
  -webkit-transition: -webkit-transform 0.3s ease-in;
  overflow: scroll;
}
.closeBtn {
  position: fixed;
  z-index: 22;
  right: 0px;
  left: 0px;
  top: 70px;
  color: #ffffff;
  width: 100%;
  max-width: 292px;
  font-family: Arial;
  font-weight: 600;
  font-size: 25px;
  display: block;
  margin: auto;
  text-align: right;
}
.modalDialog .body {
  max-height: 70%;
  overflow: scroll;
  padding: 1px 14px;
  -webkit-flex: 1;
  border-radius: 5px;
}
.modalDialog .scrollWrapper {
  overflow: scroll;
  position: inherit;
  height: 70%;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
  -webkit-user-drag: none;
}
.modalDialog .scrollContent {
  -webkit-transition: -webkit-transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1);
  transition: -webkit-transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1);
  -webkit-transform-origin: 0px 0px;
}
.modalDialog button,
.modalDialog input {
  display: block;
  margin-top: 14px;
  width: 100%;
}
.documentPreviewContainer {
  position: absolute;
  width: 100%;
  top: 135px;
  bottom: 0px;
  overflow: scroll;
  text-align: center;
  -webkit-overflow-scrolling: touch;
}
iframe.documentPreviewFrame {
  width: 100%;
  height: 100%;
  text-align: center;
}
img.pagination {
  background-image: url('/img/paginationArrows.gif');
  background-repeat: no-repeat;
  margin: 0 2px;
  zoom: 1.4;
  -moz-transform: scale(1.4);
  -moz-transform-origin: 0 0;
}
img.warning {
  background-image: url('/img/msg_icons/warning16.gif');
  background-repeat: no-repeat;
  background-position: 0 0;
  width: 16px;
  height: 16px;
}
.message {
  border-radius: 4px;
  background-color: #ffc;
  border-style: solid;
  border-width: 1px;
  color: #000;
  padding: 6px 8px 6px 6px;
  margin: 4px 20px;
  font-size: 10px;
}
.message .messageTable .messageCell {
  vertical-align: middle;
}
.message .messageText {
  margin-left: 8px;
}
.msgIcon,
.errorLarge {
  background-image: url(/img/msg_icons/error32.png);
  background-position: 0 0;
  width: 32px;
  height: 32px;
}
.messageText h1,
.messageText h2,
.messageText h3,
.messageText h4,
.messageText h5,
.messageText h6 {
  font-weight: 400;
  font-family: inherit;
  display: inline-block;
  margin: 0;
  padding: 0;
}
.requiredConfigurationAttribute {
  border-left: #c00 solid;
  padding-left: 2px;
  margin-left: 1px;
}
.mobile {
  display: initial;
}
.desktop {
  display: none;
}
/* Mobile Reskinning*/
body {
  background-color: white;
}
/*** Phone styles ***/
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  .phone {
    display: initial;
  }
  .tablet {
    display: none;
  }
  .instructionsCol {
    padding-left: 3px;
    padding-top: 10px;
  }
  .searchPanel td {
    padding: 0px;
  }
  .searchPanel label {
    margin: 0px;
    padding: 0px;
    padding-bottom: 2px;
  }
  .searchPanel div.searchField {
    margin-bottom: 5px;
  }
  .groupContainer {
    margin-bottom: 10px;
  }
  .groupName {
    font-weight: bold;
    text-decoration: none;
  }
  .list {
    margin: 10px 0;
  }
  .unpaginatedHeader,
  .invisibleText {
    display: none;
  }
  .pageSelector {
    width: 50px;
    margin-right: 5px;
    text-align: center;
  }
  .groupList {
    text-align: center;
    padding: 10px 5px;
  }
  .groupList a {
    text-decoration: none;
  }
  .groupList .groupLinkName {
    white-space: nowrap;
    font-weight: bold;
    padding: 0 15px 3px;
  }
  .groupList .displayedGroup {
    border-bottom: 2px solid black;
    font-weight: bold;
  }
  .tableHeader {
    display: inline;
  }
  .quoteTotal,
  .groupTotal {
    text-align: right;
  }
  .quoteTotal {
    font-size: 20px;
    margin-right: 15px;
  }
  header .groupTotal {
    font-size: 14px;
    margin-right: 5px;
  }
  /*Custom actions on the group*/
  customActions input {
    margin-right: 5px;
  }
  /*Quote & Group Editor - fields and buttons*/
  .customActions input {
    display: block;
    margin-bottom: 5px;
  }
  /*Tables*/
  .tableHeader {
    font-size: 1.2em;
  }
  .tableContainer.standard {
    margin-top: 20px;
  }
  /*Multi-segment table*/
  .detailRow td.dataCell {
    border-top: none;
  }
  .footerRow {
    font-weight: bold;
  }
  /*Pagination Controls*/
  .paginationControls {
    text-align: center;
  }
}
/* Tablet styles */
@media only screen and (min-device-width: 641px) and (max-device-width: 1025px) {
  .tablet {
    display: initial;
  }
  .phone {
    display: none;
  }
  .searchPanel td {
    padding-left: 5px;
    padding-right: 5px;
    vertical-align: top;
  }
  .groupContainer {
    margin-bottom: 10px;
  }
  .groupName {
    font-weight: bold;
    text-decoration: none;
  }
  .list {
    margin: 10px 0;
  }
  .unpaginatedHeader,
  .invisibleText {
    display: none;
  }
  .pageSelector {
    width: 60px;
    margin-right: 5px;
    text-align: center;
  }
  .groupList {
    text-align: center;
    padding: 10px 5px;
  }
  .groupList a {
    text-decoration: none;
  }
  .groupList .groupLinkName {
    white-space: nowrap;
    font-weight: bold;
    padding: 0 15px 3px;
  }
  .groupList .displayedGroup {
    border-bottom: 2px solid #3c3d3e;
    font-weight: bold;
  }
  .tableHeader {
    display: inline;
  }
  .quoteTotal,
  .groupTotal {
    text-align: right;
  }
  .quoteTotal {
    font-size: 20px;
    margin-right: 15px;
  }
  header .groupTotal {
    font-size: 16px;
    margin-right: 5px;
  }
  /*Custom actions on the group*/
  .customActions {
    margin-left: 5px;
  }
  .customActions {
    margin-bottom: 5px;
  }
  .customActions input {
    margin-right: 5px;
  }
  /*Tables*/
  .tableHeader {
    font-size: 1.2em;
  }
  .tableContainer {
    padding-left: 5px;
  }
  .tableContainer.standard {
    margin-top: 20px;
  }
  /*Multi-segment table*/
  .detailRow td.dataCell {
    border-top: none;
  }
  .footerRow {
    font-weight: bold;
  }
  /*Pagination Controls*/
  .paginationControls {
    text-align: center;
  }
  /* Mobile Reskinning*/
  .sbBtn {
    font-size: 16px;
    margin: 0 0 0 10px;
  }
}
/*** Icons ***/
@font-face {
  font-family: 'icomoon';
  src: url('fonts/icomoon.eot');
}
@font-face {
  font-family: 'icomoon';
  src: url(data:application/x-font-ttf;charset=utf-8;base64,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) format('truetype'), url(data:application/font-woff;charset=utf-8;base64,d09GRgABAAAAAD9EAAsAAAAAPvgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABPUy8yAAABCAAAAGAAAABgDq/zLGNtYXAAAAFoAAAARAAAAETgfOaMZ2FzcAAAAawAAAAIAAAACAAAABBnbHlmAAABtAAAOlgAADpYVEwXGmhlYWQAADwMAAAANgAAADYASAk3aGhlYQAAPEQAAAAkAAAAJAfCA/tobXR4AAA8aAAAAOgAAADo4gAMxWxvY2EAAD1QAAAAdgAAAHadD5AIbWF4cAAAPcgAAAAgAAAAIABDAS1uYW1lAAA96AAAATkAAAE5RBe01nBvc3QAAD8kAAAAIAAAACAAAwAAAAMEAAGQAAUAAAKZAswAAACPApkCzAAAAesAMwEJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAg5gIDwP/A/8ADwABAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAgAAAAMAAAAUAAMAAQAAABQABAAwAAAACAAIAAIAAAAg4DTmAv//AAAAIOAA5gD////hIAIaNwABAAAAAAAAAAAAAQAB//8ADwABAAAAAAAAAAAAAgAANzkBAAAAAAEAUQARA64DbgBTAAABLgEiBgcBDgEUFhceATI2NwE+ATQmJy4BIgYPAQ4BFBYXHgEyNj8BPgEyFhceARQGBwEOASImJy4BNDY3AT4BMhYXHgEUBg8BHgMXNz4BNCYnA64oZmpmKf4rKCgoKClmamYoASAZGRkZGT9CPxm0CgoKCgkXGBcJtQYQEBAGBgYGBv7gFjc5NxYWFhYWAdUWNzk3FhYWFhYECxEMBwEuKSkpKQNuKSkpKf4rKGZqZikoKCgoASAZP0I/GRkZGRm1CRcYFwkKCgoKtAYGBgYGEBAQBv7hFhYWFhY3OTcWAdUWFhYWFjc5NxYEDyAiIxIuKWZqZigAAQEQ/8ADEAPAACgAAAEhIg4CFREUHgIXFjI+AT8BFx4DMzoDMz4DNRE0LgIjAtD+gA0XEQoCAwUDAwcGBgLb2wIEBAQCAQICAgEDBQMCChEXDQPAChEXDfxVAwYFBAEBAQMC29sBAgIBAQQFBgMDqw0XEQoAAAAAAQBe/+ID3gOeAE8AACUnMC4CIyIOAg8BDgImJy4DJy4DJy4BPgE/AT4DNTQuAi8BLgMjDgMHDgEeARceAzMyPgI3PgM3NC4CJwPL7QQGBgIECAcGAmUECwsLBRIjIiEQEB0bGAsDAgEFBGUDBQMCAQECAYICBggJBRYtKiUOMhUwcVU5e3t4NhoxLScQDhcRCwIDBQcE3ncCAgICBAUDXAQFAQIDCxgbHhAQISIjEgULCwsEZAMGBwgEAwUFBALtBAcFAwIJDxUOMpqzvlU5WDwfCBAYEA4jKCsWBQoIBwIAAAAAAQAi//ID3gOMAE0AAAEuAycuAyMiDgIHDgMHDgMVFB4CFx4DFx4DFxUUHgIXMh4BMjMyPgI/ATI+Ajc+Azc+AzU0LgInA9AEIjE7HSRISEgkJEhISCQdOzIjBQMFAwICAwUDBSMyOx0KFRUVCgMFCAUCAwMEAgMGBgYCzB06OjodHTsxIgQEBQMCAgMFBALcHTcsHQMEBgQCAgQGBAMdLDcdFy4vLxgXLi4tFh03LB0DAQIBAQGvBQoIBwIBAQECBALFAgMEAwMcKzYdFi4uLhcXLy8uFwAAAgCJ/98DdwPAABkALgAAASIOAhUUHgIxHgI2NzA+AjU0LgIjESIuAjU0PgIzMh4CFRQOAiMCAE6JZjtjd2MQGxocEWR4ZDtmiU4lQTAcHDBBJSVBMBwcMEElA8A+a49RbteqaQ8QAQ8QaarXblGPaz791xwwQSUlQTAcHDBBJSVBMBwAAQCRADYDMwNqAC4AAAkBPgM1PAEuAScuAyMhIg4CBwEOARQWFwEeAzMhMj4CNz4BLgEnAQHcAU4CBAIBAQEBAgcICgX+9wQHBwYC/qMEBAQEAV0CBgcHBAEJBQoIBwICAQIEBP6yAdABYAIGBgYDAgQEBAIEBwUDAgMEA/6JBQwMDAX+iQIEAwIDBQgFBQoJCQQBYQAAAAABAM0ANgNuA2oALgAACQEuAyMhIg4CBw4BHgEXCQEOAxUcAR4BFx4DMyEyPgI3AT4BNCYnA27+pAIGBwcE/vcFCggHAgIBAgQDAU7+sgIDAgEBAQECBwgKBQEJBAcHBgIBXAUFBQUB5gF3AwQDAgMFBwQFCgoJBP6g/p8CBQYGAwIEBAQCBQgFAwIDBAIBdwUMDAwFAAAAAAEAkQBhA28DPwBEAAABNz4CJicuAycuAQ4BDwEnLgIGBw4DBw4BHgEfAQcOAhYXHgMXHgE+AT8BFx4CNjc+Azc+AS4BLwECnsoHCAIEBQwYGhwPBg8QEAfKywYQEBAGDhsaGAwFBAIIB8rLBggCBAUMGBobDgYQEBAGy8oHEBAPBg8cGhgMBQQCCAfKAdDKBxAQDwYPHBoYDAUEAggHwcEHCAIEBQwYGhwPBg8QEAfKywYQEBAGDhsaGAwFBAIHBsvLBggCBAUMGBocDwYPEBAGywAAAQCPAM8DcQLPAC0AAAEuAyMiLgIjIg4CIyIOAgcOARQWFx4DFx4BMjY3PgM3PgE0JicDcQMJCgwGAThcdj4+dlw4AQYMCwkDAwMDAzByZEYDBxISEgcDRmRyMAMDAwMCqwYJBwQDBAMDBAMEBwkGBgwMDAZUmXVHAwYGBgYDR3WZVAYMDAwGAAIAAP/QBAADrgA+AGEAAAEeAzMyPgI3PgM3PgImJy4DKwEuAycuAyMiDgIHDgMHIyIOAgcOAR4BFx4DFyUUDgIHIS4DNSMUHgIVHgMzITI+Ajc0PgI1IwHnAwYGBgMDBgYGAwM6U18oAwMBAgIDCAkKBosGDg8NBAUPFBkPDxkUDwUFDg4OBYsGCgkHAwICAQMDKF9TOgMBcgQGBwP9dQMHBgSmDA4MBBAWGg4DDg4bFhAEDA4MpgFQAgMCAQECAwICM1RtOwQKCwsFBQgGAyBCOCkICA0JBQUJDQgJKjhBIAMGCAUFCwsKBDttVDMCXjZdTT0WFjxNXTdnmmc1Ag4XEAkJERcOAjVnmmYAAAAAAgAH/8AD/AO5ADkAYgAABS4DJy4DJwEuAgYHDgMHDgMHDgEeARcBHgMXHgMXHgIyMzI+Ajc+AiYnJy4DJwE+AzcBHgMzMj4CNz4CJicBPgM3AR4DFwcD/A8dHR0PAQIDBAL9zAYQEREIFCYkIhAQHRsaDAUEAggGAjQCBQUFAy5bW1osAgQEBAIFCAgHBAUGAgID8BIlJSUR/fEFCwwNBwIABAkJCgUFCAgHBAgIAQcH/gIHDg4OBwIPBgwMDAZMAixZWlouAwYFBQICNwYHAgQEDBocHhAPICIkEwgREQ8G/ckCBAMDAQ8eHh8QAQEBAgQGBAULCw0HbAYMDAwGAhEIEA8PB/3/BAUDAQIEBgQIEhISCAH+BgwMDAX96xIjIyMSTAAAAAACADIAJgPuA1oAIgBPAAABIi4CJwERFB4CFx4DMzI+Ajc+AzURAQ4DIwEuAyMiDgIHDgMdAR4DFwEeAzMyPgI3AT4DNzU0LgInAhATJSQhD/6uBAgKBjhwcXE4OHFwcDcGCwgF/q4PISQlEwHAN29wcTg4cXBwOAYKCAQBBQkNCgFsCBIUFQsLFRQSCAFsCg0JBQEFCAsGARUFChALAQP+JAYLCQYBCAwIBAQIDAgBBgkLBgHc/v0LEAoFAiQIDAgEBAgMCAEGCQsGMQQMDhEJ/u0GCQYDAwYJBgETCREODAQxBgsJBgEABwAi/8AD3gPAAAQACQAOABMAdgCEAIkAAAEjFTM1FyMVMzU1IxUzNQcjFTM1ASIuAic1NC4CIyIOAh0BFB4CFyIuAj0BKgMjKgEOAQc1NC4CIyIOAh0BFB4CFyIuAj0BDgMjDgMVERQeAhcyHgIzMj4CMz4DNRE0LgInAw4DIyIuAicRIRElIxUzNQJEiYnNiYmJic2JiQFxAhgqOyULExkODhkTCwMGCAUSIRkPCBEREQkSIyIhEAsTGQ4OGRMLAwYIBRIhGQ8WIhkOAQkPCwYGCw8JA0Fyn2Bgn3JBAwkPCwYGCw8JPhhKYHRCQnRgShgC7/4AiYkB4omJzYmJzYmJzYmJAh8EBwgEMA4ZEwsLExkOiQgODQsFDBYfE0MBAQElDhkTCwsTGQ6JCA4NCwUMFh8TLgMFBAMCCQ0QCf0WCRANCQIMDgwMDgwCCQ0QCQLqCRANCQL9CwQKCQYGCQoEAef+GdaJiQAAAAEAA//AA/0DwABzAAABLgMnLgMnLgMnLgMjIg4CBw4DBw4DBw4DBw4BHgEXHgMXDgMHFB4CFx4CNjc+Azc+AzceAxceAxceAzMyPgI3PgM1LgMnPgM3PgImJwP9AgUHCQUTQlJbLA4jJicSBAgJCQUFCgkJBBInJiMOLFtSQhMFCQcFAgICAQMDDCs6RigLEg4JAgMGCQYGDQ0NBgcODw8IFS4zNx4eNzMuFQgPDw4HAwYGBgMEBwcHAwYJBgMCCQ4SCyhGOisMAwMBAgICOwUJCAYCCAwIBQIoXVdHEgQGBAICBAYEEkdXXSgCBQgMCAIGCAkFBQsLCwUXOD5DIixTS0IcBw0MCgQEBAEDAwQIBwcEChYaHxMTHxoWCgQHBwgEAQIBAQECAwIECgwNBxxCS1MsIkM+OBcFCwsLBQAAAwABAAQD/wN8AFAAmADfAAAlLgMnLgI2Nz4CJicuAyMiDgIHDgEeARceAQ4BBw4DBw4DBwYUHgEXHgMzMh4CMzI+AjMyPgI3PgI0Jy4DJyUzPgM3LgI2Nz4DNzQuAicuAyMiDgIHDgEeARceAQ4BBw4DBw4DBwYUHgEXHgMzMh4CFz4DNyUuAycuAycuAjY3PgImJy4DIyIOAgcOAxUeAxceAQ4BBx4DFx4DFz4DMzI+Ajc+AjQnAu4TKSUeCAYLBAYLHB8LCAwLIigrFBQrKCILDAgLHxwLBgQLBggeJikTFhcMBgUBAQICAgQFBgMBG0BsU1JsQBsBAwYFBAICAgEBBQcMFxX+QwEECAgIBCMfBQ8LDikwNBoCBAYECyIoKxQUKygiCwwICx8cCwYECwYIHiYpExYXDAYFAQECAgIEBQYDARUxUj4IEREQCALOBQcMFxUTKSUeCAYLBAYLHB8LCAwLIigrFBQrKCILBAYEAho0LygODA8FHyMECAkJBAgQEREIPlExFQEDBgUEAgICAQGtDhgWEwgHEBMWDSA8OTYaGCEVCQkVIRgaNjk8IA0WExAHCBMWGA4PGRsgFwMGBgUCAgQDAgQEBAQEBAIDBAICBgYGAxcgGxkPcAIFBQUCLlVLQBkfLR8SBAoUExMJGCEVCQkVIRgaNjk8IA0WExAHCBMWGA4PGRsgFwMGBgUCAgQDAgMEBAEGCwoKBQUXIBsZDw4YFhMIBxATFg0gPDk2GhghFQkJFSEYCRMTFAoEEh8tHxlAS1UuAgUFBQIFCgoLBgEEBAMCAwQCAgUGBgMAAwAAAFAEAANQABgALQAzAAABISIOAhURFB4CMyEyPgI1ETQuAiMFMh4CFRQOAiMiLgI1ND4CMwM3FxMBIQPA/IANFxEKChEXDQOADRcRCgoRFw39IBQjGg8PGiMUFCMaDw8aIxRggJXrAQD9AANQChEXDf2ADRcRCgoRFw0CgA0XEQqADxojFBQjGg8PGiMUFCMaD/4AwGsBK/6AAAAAAAEA7wBvAu8DUQAtAAABNC4CJy4BIgYHDgMHDgEUFhceAxceATI2Nz4DNTQ+AjU0LgI1AuUEBwkGBgwMDAZVmXVHAwYGBgYDR3WZVQYMDAwGBgkHBAMEAwMEAwMpBgwKCQMDAwMDMHJkRgMHEhISBwNGZHIwAwMDAwMJCwwGAThcdj4+dlw4AQACAAD/4gP/A54AMQA2AAABLgMjIT4BLgEnLgMjIg4CBw4DBxEzMh4CFx4DMzI+Aj8BNi4CJwEzESMRA+QKGBkXCf71BQYEEBEFDA0PCBYcEQoEBhMwWU0mICwhGg4RJzZLNniFQxYKBQECBwsI/ByrqwIqCwwGAjhiUD0TBgoHBBMeJhIgR0Q6Ev4LBgsPCQoWEgwjXJ98Sg8cGRYJ/bkCZv2aAAIAUQARA64DbgAxAGMAAAEOARQWFx4BFAYPAQ4BIiYnLgE0Nj8BLgM3Bw4BFBYXHgEyNj8BPgE0JicuASIGBwEuASIGDwEOARQWFx4BMjY3PgE0JicuATQ2PwE+ATIWFx4BFAYPAR4DBzc+ATQmJwIeCQkJCRYWFhafFjc5NxYWFhYWTAcKBQECkigoKCgpZmpmKKAoKCgoCRgZGAkBkShmamYpnygoKCgJFxgXCQoKCgoWFhYWoBY3OTcWFhYWFkwHCgUBApEpKSkpAjkJGBkYCRY3OTcWnxYWFhYWNzk3FkwTJygpFJIoZmpmKSgoKCigKGZqZikJCQkJATUpKSkpnyhmamYpCQkJCQkXGBcJFjc5NxafFhYWFhY3OTcWTRMnKCgUkSlmamYoAAYAEABJA+sDWgAcADEARgBjAIAAlQAAASEyPgI3PgE0JicuAyMhIg4CHQEUHgIzByIOAhUUHgIzMj4CNTQuAiMRIg4CFRQeAjMyPgI1NC4CIwEhIg4CHQEUHgIzITI+Ajc+ATQmJy4DIxEhIg4CHQEUHgIzITI+Ajc+ATQmJy4DIwEiDgIVFB4CMzI+AjU0LgIjAWQCWwgPDAgBAgICAgEIDA8I/aUHDAkFBgkMBv8SHxcNDRcfEhIfFw0NFx8SEh8XDQ0XHxISHxcNDRcfEgNa/aUHDAkFBgkMBgJbCA8MCAECAgICAQgMDwj9pQcMCQUGCQwGAlsIDwwIAQICAgIBCAwPCPymEh8XDQ0XHxISHxcNDRcfEgKvBQkNCBEXFRcRCA0JBQYKDQdkCA0JBYkNFx8SEh8XDQ0XHxISHxcN/s0NFx8SEh8XDQ0XHxISHxcNATMGCg0HZAgNCQUFCQ0IERcVFxEIDQkF/s0GCg0HZAgNCQUFCQ0IERcVFxEIDQkFAmYNFx8SEh8XDQ0XHxISHxcNAAAAAAMAAP/iBAADngA7AKwA0gAAASUuAiIjByIOAg8BJS4BDgEHDgMVERQeAhcFHgIyMzI+Aj8BBR4BPgE3PgM1ETQuAicBDgMHDgMHDgEuAScuAzEwLgInLgI2MS4DIyIuAicRFx4DFxYOAicuAgYHDgIWFx4BPgE3PgIWFx4DFx4DMzI+ATIXFj4CMzIeAjEeAxceAxUUDgIHJQ4DIyIuAicuAzc2LgInLgMnLgE0Njc+AzcXEQPh/rYDBgcHAwECBAQEAvL+zgYNDAwFBgkGAwQICwcBSQMFBQUDAwYGBgPyATIGDQwMBQYJBgMFCAsH/l4GCQgJBgUICxENDA8KBgICBQQCAwgPDB4VAQkIGSEoFw4dHRsM3gcPDgsDBwcPEQMGGyAgCxEXCQcNDQsFAgQECAgIBAQMDAoBAQIGCwoMCwcHCAgQDw4GBhEQCxMaEg0GBgwKBgMIDgsBWwcODQoDCA4LBwEDBwYDAQIFEh8XChcWFAcZGBgWCBgbHAypAw2NAgIBAQEBAgGChAICAQQEBAkLDAb9OQgODAoDjgECAQECAgKCgwICAQQDBAkLDAYCxwgODAoD/gcFCw4RCwoQERQODQQHDgYGFhYQCg0MAgUrMCYGEhEMAwUHBAFQYA4TEBELGCISAggODAIFBAYPEA8GBgQBBQQEBQEDBAMGCAwJCQ0IBAMCAgIBAwMGCAYCAwQFBAQQFBcKCREQEQkjCA0JBAgKCQIHHiIfCB0jFAoEAgUHCwgdLyklEwYODQwFSf58AAAAAgAQ/8ED5QO+ADQAcwAAEzQ+Ajc+Azc1DgMHDgMHFA4CFRQeAhUeAxceAxc1LgMnLgM1JS4DJy4BIgYHDgMdAQ4DBw4DFRQeAhceAxcVFB4CFx4DMzI+Ajc+Azc+ATQmJ7YFBwkEGUNSXzRQk3JGAwwUEAwDCw0KCgwKAwwRFQwDRnKTUDRfUkMZBAkHBQMvAjVVbjsECgsLBQUHBAIrYlY/CAoQDAYGDBAKCD5WYisCBAcFAgQFBQIDBgYFAjtuVTUCBAQEBAHENFxNPRUFDAwJAqMDEhMPAQMLEBQLAjZjjltbkWY4AgwUEAsDAQ8TEgSkAgkMDAUWP09eNRMDOlNfKAMDAgIDCAkKBoYEDxEPBAUPFBgPDxgTDwYEDxEQBYYFCgkIAwECAQEBAgICKF9TOgMGDQ0MBQAAAAIAAQAZA/8DhwBaAKYAACUuAycuAycmPgI3PgImJy4DIyIOAgcOAR4BFx4DBw4DBw4DBw4DBwYUHgEXHgMzMh4CMzI+AjMyPgI3PgI0Jy4DJwUuAycuAycuAycmPgI3PgImJy4DIyIOAgceAxceAQ4BBx4DFx4DFx4DFz4DMzI+Ajc+AjQnAnIGDg4PCA4cGBEDAgMHCgUaHwkMEQ0kKzEaGjErJA0RDAkfGgUKBwMCAxEYHA4IDw4OBhgpIBYGAQECAgIFBgYEASZTg15ehFMnAQQGBgUCAgMBAQYXICkYAY0GFiApGAYNDg8IDhwYEQMCAwgLBhoeCQ0RDSQrMRoYJR8bDhMgGxgLEBQFJCgCBQQEAgkSEREIGCokHQswRSwWAQMGBgUCAgIBAfYEBwYGAwYMDQ8JCBITEggoS0U/HBYiGA0NGCIWHD9FSygIEhMSCAkPDQwGAwYGBwQPJSswGgQHBgYDAwUEAgQFBAQFBAIEBQMDBgYHBBowKyUPIBowKyUPBAcGBgMGDA0PCQgSExIIKEtFPxwWIhgNChMcEgkVGh8TG0lcbT8BAgICAQMHCAgFDyMoLBgBBAQDAgQFAwMGBgcEAAMAQwA2A8IDagAUAGUAegAAASIOAhUUHgIzMj4CNTQuAiMlLgMnLgMnLgMnLgMjLgMjIg4CByIOAgcOAwcOAwcOAwcOARQWFx4DFx4DMzI+Ajc+Azc+ATQmJwEiLgI1ND4CMzIeAhUUDgIjAgAjPi4bGy4+IyM+LhsbLj4jAcICCAsNBxQoKCgUAwYGBwQCCg0PBxYsLCwWFisrKxUHDw0KAgQHBgYDFCgoKBQHDgsIAREQERABCAsOBzJlZWUyM2ZmZjMHDQsIAg4ODg7+PjllSywsS2U5OWVLLCxLZTkCWRsuPiMjPi4bGy4+IyM+LhteBw0KBwECBAMDAgkVFRUKBw4LBwICAgEBAgICBwsOBwoVFRUJAgMDBAIBBwoNB1aMhYlUBw0KBwEGCAYDAwYIBgEHCg0HSZGRkUj94yxLZTk5ZUssLEtlOTllSywAAAEALf/kA94DbwBDAAABNTQuAicuAQ4BBw4DBw4BFBYXHgMXHgMzMj4CNz4DPQEeAxcWFA4BBw4BHgEzMj4CNTQuAicB3gIFCAYGDQ0NBkqBYToCBQUFBQI6YYFKAwcHBwQDBgYGAwYIBQIvXlA6DA0XLiEjHQcoIiRlXUFZkbhfAoy5Bw0LCQMEAwEEBDJ2aEgDBxAQDwYESGh2MQIDAgEBAQIBAwkLDQe3AQsWIBYYLyojDA4rKR0uVnxOXH9RKAUAAAABAREAbwMQA1EALQAAAS4DJy4BIgYHDgMVFA4CFRQeAhUUHgIXHgEyNjc+Azc+ATQmJwMQA0d1mVUGDAwMBgYJBwQDBAMDBAMEBwkGBgwMDAZVmXVHAwcHBwcCAgNGZHIwAwMDAwMJCgwGAThcdj4+dlw4AQYMCwkDAwMDAzByZEYDBxISEgcAAwANAFAD8AMwABYALQBEAAATITI+AjU0LgIjISIOAhUUHgIzBSEiDgIVFB4CMyEyPgI1NC4CIxEhIg4CFRQeAjMhMj4CNTQuAiNXA1APGhQLCxQaD/ywDxoUCwsUGg8DUPywDxoUCwsUGg8DUA8aFAsLFBoP/K4PGhQLCxQaDwNSDxoUCwsUGg8CmQ0VHA8PGxQMDBQbDw8cFQ2KDBQbDw8bFAsLFBsPDxsUDP7UDBUbDw8aEwsLExoPDxsVDAAAAgAA/8AD5wPAACoAPwAAExQeAjMyPgI3AR4DMzI+Ajc+ATQmJwE+AzU0LgIjIg4CFTM0PgIzMh4CFRQOAiMiLgI1ADxojFAcNzQwFgEhBg4QEAgIEA8OBgwMDAz+3g4WDwg8aIxQUIxoPIAoRl01NV1GKChGXTU1XUYoAkBQjGg8CA8WDv7eBgkGAwMGCQYMICEgDAEhFjA0NxxQjGg8PGiMUDVdRigoRl01NV1GKChGXTUAAgAC/8AD/gO+AQMBGAAAAS4DJy4DMS4DNTQ+AjcwPgIxPgE0JicuAycuASIGBw4DMQ4DIyIuAi8BLgMnLgEiBgcOAw8BDgMjIi4CLwEuASIGBw4DBw4BFBYXHgMxHgMVFA4CDwEOAwcOARQWFx4DHwEeAxUUDgIPAQ4BFBYXHgMXHgMzMj4CPwE+AzMyHgIXMB4CMR4DFzIeATIzOgE+ATM+Az8BPgMzMh4CHwEeAzMyPgI3PgM3PgE0JicuAzEuAzU0PgI3MD4CNz4DNz4BNCYnBSIuAjU0PgIzMh4CFRQOAiMD/gEIDA8JCx4bEwoQDAcBAgQCERQRBgUGBggQERIKBxAREAcJGBYPBAgICAQKEg8KAgsBCAwQCQwZGRgMCRAMCAELAgoPEwoFCQkIBEMHEBEQBwoSERAIBgYGBgYSEAsDBAMCCA0SClMJEAwIAQEBAQEBCAwPCVMKEg0IAgMEAzMGBQYGCBAREgoECAgIBAQICAcDQwQICQkFChMPCgIDBAMBCAwQCQYMDAwGBgwMDAYJEAwIAQsCCg8SCgQJCAgDRQMHCAgEBAgICAQKEhEQCAYGBQYHEhEMAgQCAQcMEAoTGx4LCQ8MCAEBAQEB/gIkPy8bGy8/JCQ/LxsbLz8kAfEJEAwIAQEEAwICCg8SCgQICAcDFhoWBxAREAcKEhEQCAYGBQYHEhEMAgQDAgcNEQpVCQ8MCAEBAQEBAQgMDwlVChENBwIDBAI0BgUGBggQERIKBxAREAcIFxUPBAgICQQLEw8KAgsBCAwQCQwZGRgMCRAMCAELAQoPEwsFCQkIBEMHEBEQBwoSERAIAwQDAgEDBAM0AgQDAgcNEQobIBoJDwwIAQEBAQEBCAwPCVUKEQ0HAQIEAjUDBAMBAQMEAwgQERIKBxAREAcJGBYPAwcICAQKEg8KAgIDBAEBCAwQCQwZGRgM3xsvPyQkPy8bGy8/JCQ/LxsAAgAA//QEAANsAD4AbgAAAS4DJy4CBgcOAx0BIg4CBwYeAhcWMj4BNz4DMxUUHgIXHgE+ATc+Azc+AzU0LgInASERITUiLgEiIyIOAgcOAxURFB4CFx4DMzI+Ajc+Az0BDgMHFQP3AjJTbDwFCgsLBQUIBgNXj2g+BgQBChMOECAdGAgaLjhJNAMGCAUFCwsKBDxsUzICAgMCAQECAwL+9/2aAbwPIyQjDylTU1MpGCkeEREeKRgpU1NTKSlTU1MpGCkeEQ4iJCQRAkADP1ljKAMDAQICAwgJCgalNUlOGRIeGBMGCAgNBQ4aFAypBgoJBwMCAgEDAyhkWT8CAwYGBgMDBgYGA/49AmaGAQECBAYEAhUhKxj9oBgrIRUCBAYEAgIEBgQCFSErGIkOHBsbDCAAAAABAJ8A4QOBAuEALQAAAS4DJy4BIgYHDgMHDgEUFhceAzMyHgIzMj4CMzI+Ajc+ATQmJwOBMHJkRgMHEhISBwNGZHIwAwMDAwMJCwwGAThcdj4+dlw4AQYMCgkDAwMDAwE1VJl1RwMGBgYGA0d1mVQGDAwMBgYJBwQDBAMDBAMEBwkGBgwMDAYAAgAA/9AEAAOuAD4AYQAAEzMeAxceAzMyPgI3PgM3MzI+Ajc+AS4BJy4DJy4DIyIOAgcOAwcOAhYXHgMzBRQOAgchLgM1IxQeAhUeAzMhMj4CNzQ+AjUj8osFDg4OBQUPFBkPDxkUDwUEDQ8OBosGCgkIAwICAQMDKF9TOgMDBgYGAwMGBgYDAzpTXygDAwECAgMICQoGAmcEBgcD/XUDBwYEpgwODAQQFhoOAw4OGxYQBAwODKYCNiBBOCoJCA0JBQUJDQgIKThCIAMGCAUFCwsLBTtsVDMCAgMCAQECAwICM1RsOwULCwsFBQgGA4k2XU09FhY8TV03Z5pnNQIOFxAJCREXDgI1Z5pmAAEAI//QA90DrgBVAAAlLgMnLgMnLgMnJj4CNz4CJicuAyMiDgIHDgEeARceAwcOAwcOAwcOAwcGHgIXMh4CMzI+Ajc+AzM+AycD3QgcJzEcCBITFAoUKCIZBQMBCA8LIScMEBYRLTU7IB87NS0RFhAMKCILDwgBAwUZIigTCxUTEQgcMSccCAICBgoGAjFrrHw+aFZFGxsnGQ0BBgoGAgIcJjswJxIFCQkIBAgRFBgPChcaHhE2ZFxTJR0uIBERIC4dJVNcZDYRHhoXCg8YFBEIBAgJCQUSJzA7JgcNCwgCCw0LAwUGAwMGBQMCCAsNBwAAAAACAAD/wQQAA8EAGABcAAABFA4CBxEjESIuAjU0PgI7ATIeAhUBDgMjKgEuAScuAycmDgIxETA+AjMyHgIXHgMXHgMzOgE+ATcyPgI3PgMzMh4CFREOAwcBEQwTGQ2JDhkTCwsTGQ6JDhkTCwLUCx8lKhYIERERCCk6NDkoJ1xQNiA0QiIKFRUUCSg5NDopBg0NDQYLFhUVCgQJCQkEBAgICAQHDAkGAQUHCQUDfQ4YEgsB/IkDdwsSGQ4OGRMLCxMZDvzrBAgHBQECAggqMS4LCgMMDQI5CAoIAQIEAgsnKSQIAQICAQIDAgECAgEBAgIBBQkMB/31BgoHBQEAAAAABAAM//sEAANwABYALQBEAHQAABMhMj4CNTQuAiMhIg4CFRQeAjMFISIOAhUUHgIzITI+AjU0LgIjESMiDgIVFB4COwEyPgI1NC4CIyUjNTQuAisBIg4CHQEjIg4CBxwBHgEfAR4CMjM6AT4BPwE+AjQ1LgMj8gK4EiAYDg4YIBL9SBIgGA4OGCASArj+uRIgGA4OGCASAUcSIBgODhggEvkSIBgODhggEvkSIBgODhggEv5gkwIDBAK1AgQDApMCAwMCAQEBAfkBAgICAQECAgIB+QEBAQECAwMCArwPGiESEiAYDg4YIBISIRoPpQ4YIBISIBcNDRcgEhIgGA7+mg8ZIRISHxcNDRcfEhIhGQ9V/wIEAwICAwQC/wECAwICAwMDAfQBAQEBAQH0AQMDAwICAwIBAAAAAwAA/8AEAAPAABQAKQCBAAABIg4CFRQeAjMyPgI1NC4CIxEiLgI1ND4CMzIeAhUUDgIjEw4DBw4DBxQOAisBIi4CNT4DNz4DNTQuAicuAyMiDgIHDgMrASIuAjU8AzUwPgIxPgMzMh4CFx4DFRQOAgcCAGq7i1BQi7tqaruLUFGLumoQHBUNDRUcEBAcFQ0NFRwQ2QURGB4SCBAOCwIFCQwHRQcNCgYBJjQ4EwQFAwEDBgkGBg4REwoRHhgQAwEGCQsGRwcMCQUBAQEJJTdJLhktKCMPDxcQCAMGCQYDwFCLumpqu4tQUIu7amq6i1D8fw0VHBAQHBUNDRUcEBAcFQ0ByQoWGRwQBxASFAsHDQoGBQkMByg7MSsYBQoLDAYIDQwLBgYJBgMMFBgMBgkHAwUIDAcBAgICAQICAhw5Lh0HDhUODiAjJRMLFRQTCQAAAgAA/8AEAAPAABQANQAAASIOAhUUHgIzMj4CNTQuAiMBFA4CIyEiLgInLgE0Njc+AzMhMh4CFR4BFAYHAgBqu4tQUIu7amq7i1BRi7pqAVkGCg0H/ZcHDQoGAQEBAQEBBgoNBwJpBw0KBgICAgIDwFCLumpqu4tQUIu7amq6i1D9vQgNCQUFCQ0IESIiIhEIDQkFBQkNCBEiIiIRAAAAAAMACf/iBAADngAhADYAWwAAJQEuAyMiDgIHAQ4BFBYXHgMzITI+AjU0LgInBSIuAjU0PgIzMh4CFRQOAiMTDgMrASIuAicuAyc0PgI3PgEyFhceAxUOAwcD8/5JBA0QEgkKEg8NBP5EBAQFBQUNDxEJA3cOGRMLAgMFA/4NEBwVDAwVHBAQHBUMDBUcECwBCAwOCAMHDgsIAQYKCAcDBQkMBw0WFRYNCAwIBAMHCAoGTgMtCA0JBQUJDQj8zAgREREICAwJBQsSGQ4GCwoJBA8MFRwQEBwVDAwVHBAQHBUMARsIDwsHBwsPCCJFREEeBw4MCQICAgICAgkMDgceQURFIgAAAwAB/8AEAAPAAFEAZgCbAAABPgM3PgImJy4DJy4DIyIOAgcOAR4BFx4DBw4DBw4DBw4DBwYUHgEXHgMzMh4COwEuAzU0PgI3PgM3FyIOAhUUHgIzMj4CNTQuAiMTFA4CKwEVFA4CKwEiLgI9ASMiLgI9ATQ+AjsBNTQ+AjsBMh4CHQEzMh4CHQECRQwYFhQIDRMIAwgCBQYHBBAuNz4hIT43LhEVDwwnIQsPCQIDBBcgJhIKExIRCB4vIhcHAQEDAgIFBgcEAitjonklDhYPCAgRGhIIExQVCrs1XUUoKEVdNTVdRigoRl01mgMFBgRVAwUGBEQEBgUDVQQGBQMDBQYEVQMFBgREBAYFA1UEBgUDAdcLFRYZDxg3OTkbBw4ODgYcLB8QEB8sHCRRWWE0EB0ZFgkNFhMQCAQICAkFEyw0OyIDBwcHAwMFBAMGBwYULC8yGhw2My8VChUUEwgXKEVdNTVdRSgoRV01NV1FKP7eBAYFA1UEBgUDAwUGBFUDBQYERAQGBQNVBAYFAwMFBgRVAwUGBEQAAQBZABkDpQNlAEQAAAEuAyMhETQuAicuASIGBw4DFREhIg4CBw4BFBYXHgMzIREUHgIXHgEyNjc+AzURITI+Ajc+ATQmJwOlAQgMEAn+/gYLDwgUKCgoFAgPCwb+/wkQDAgBAgICAgEIDBAJAQEGCw8IFCgoKBQIDwsGAQIJEAwIAQICAgICDQkPCwYBAQkQDAgBAgICAgEIDBAJ/v8GCw8JFCcnJxQJDwsG/v4JEAwIAQICAgIBCAwQCQECBgsPCRQnJycUAAABAAIANQQAA08AVgAAEwE+AzMyHgIXHgMXHgMVFA4CBw4DDwEhMh4CFx4DFRQOAgcOAyMhFx4DFx4DFx4DFRQOAgcOAyMiLgInAQIBfQgREhQLCxQSEQgEBwYFAgIDAgEECAsIBAkKCgVcAgoLFBIRCAgLCAQECAsICBESFAv99lwFCgoJBAQHBgUCAgMCAQQICwgIERIUCwsUEhEI/oMBwwFyBwoHAwMHCgcECAkJBQUJCQkFCxMREAcFCgoKBVgEBwsHBxASEwsKExIQBwcLBwRYBQoKCgUECAgJBQUJCQkECxMSEAcICwgEBAgLCAFwAAAAAgCJ/9IDeAOwAC4APAAAATQuAisBNTQuAiMiDgIdASMiDgIVERQeAhceAzMyPgI3PgM1ESU1ND4CMzIeAh0BIwN4CxMZDiEnSGU9PWVIJyQOGBIKCA4UDChQUVEoKFBQTygMFQ8J/iIGFSkiIikVBs0Bqw4bFAyrPmVIJydIZT6rDRYcDv6SDBYSDAIJDgkEBAkOCQIMEhYMAXFKqxAkHhQUHiQQqwAAAQAGACsD+QNPACQAAAE+ATQmLwEuASIGBwEnLgEiBg8BDgEUFhcBHgMzMj4CNwED+QMDAwOVAwgICAP+O8YDCAgIA5UDAwMDAWoCBAQEAgIEBAQCAmoCmwMICAgDlQMDAwP+OccDAwMDlQMICAgD/pYBAgIBAQICAQJqAAEAXwAiA6ADsQAtAAABNSIOAhUUHgIzMj4CNTQuAic3HgMVFA4CIyIuAjU0PgIzNRcHAgBBclUxMVVyQUFyVTEMFiAUTBsqHhBCcZhWVphxQUFxmFacnAKtTjFVckFBclUxMVVyQR87NzEVSBxBSU8qVphxQUFxmFZWmHFBToKCAAAAAAEAJP/GA94DwAA8AAAlLgM1NC4CIyIOAhUUDgIHDgMXHgMXHgMXHgMzMj4CNz4DNz4DNzYuAicDxgIvNi04WGw0NGxYOC02LwIHCgcDAQEHCw4IAilLakIHHCYvGhovJhwHQmpLKgIIDQoHAQECBgoH6gItWIRZdJFQHBxQkXRYhFktAgYOEBEJCREOCwQBEBUWBxgoHRERHSgYBxYVEAEECw4QCQkSEA4GAAADAAD/wAQAA8AAFAApAFEAAAEiDgIVFB4CMzI+AjU0LgIjFTIeAhUUDgIjIi4CNTQ+AjMTIyIuAjU0PgI3NS4DNTQ+AjsBMh4CFQceAxUUDgIjAgBqu4tQUIu7amq7i1BQi7tqER0WDQ0WHRERHRYNDRYdETt4CxMOCAUJDAcHDAkFCA4TC1gLEw4IAQcMCAUIDhMLA8BQi7tqaruLUFCLu2pqu4tQtw0WHRERHRYNDRYdEREdFg39kAgOEwsIDw0KA7gDCg0PCAsTDggIDhML6QMKDA8ICxMOCAAAAQAV/9ED8wOvAKcAAAEUDgIrARceARQGBw4DIyIuAi8BIxUXHgEUBgcOAyMiLgIvARUUDgIjIi4CPQEHDgEiJicuATQ2PwE1IwcOAyMiLgInLgE0Nj8BIyIuAjU0PgI7AScuATQ2Nz4BMhYfATM1Jy4BNDY3PgEyFh8BNTQ+AjMyHgIdATc+ATIWFx4BFAYPARUzNz4BMhYXHgEUBg8BMzIeAhUD8wgOEwqQcQgICAgECQoKBQULCgkEu2C/CAgICAQJCgsFBQoKCQRyCA4TCgsTDghyCBQVFAgICAgIv2C8BAkKCgUFCgoJBAgICAhwjwsTDggIDhMLj3AICAgICBQVFAi6Yb8ICAgICBQVFAhyCA4TCwoTDghyCBQVFAgICAgIv2C7CBQVFAgICAgIcI8KEw4IAcALEw4IcggUFRQIBAYEAgIEBgS/YbsIFBUUCAQGBAICBAYEcI8LEw4ICA4TC49wCAgICAgUFRQIvGC/BAYEAgIEBgQIFBUUCHIIDhMLChMOCHIIFBUUCAgICAi/YLsIFBUUCAgICAhxkAoTDggIDhMKj3AICAgICBQVFAi7YL8ICAgICBQVFAhyCA4TCgAIAAAAFwQAA2kAOgA/AEQASQBOAFMAWABdAAABBycHJwcnBycHJwcnBycHJwcnBxEUDgIjIi4CNTwBEDQxIg4CFREUHgIzITI+AjURMC4CJwEhNSEVNSE1IRU1ITUhFQUhNSEVNSE1IRU3ITUhFTUhNSEVA9ArLzEyJy0pKSssMi8sKiQsJy0mBgkLBQgPDAcKGRYPCA0SCgOcChINCA0REAL+Sv7ZASf+2QEn/tkBJwGG/sMBPf7DAT0B/sIBPv1SAq4DZigqKioqKiosLCoqKSknJyoqKir9QwsQCgQIDA4HB90BA9YFCg8K/TMKEg0ICA0SCgL3Cw4NAv0oSEh7SUl5S0v0SEh7SUl7SUmSk5MAAAABAAIBWgP9AiYAIAAAATQuAiMhIg4CBw4BFBYXHgMzITI+AjU+ATQmJwP9BgoNB/xPBw0KBgEBAQEBAQYKDQcDsQcNCgYCAgICAgMIDQkFBQkNCBEiIiIRCA0JBQUJDQgRIiIiEQAAAAIAx//AAzkDwAAUAGwAACUiDgIVFB4CMzI+AjU0LgIjEy4DIyIOAgcUDgIxHAEGFBUUHgI7ATI+Ajc+AzMyHgIXHgMVFA4CBw4DBxQeAjsBMj4CNT4DNz4DNz4DNTQuAicB5xYoHhISHigWFigeEhIeKBb6FTE4PyNAZ00zDAEBAQEHDREKZAgPDAkCBBchKhgPGhcUCAgMCAQCBAcGGk5KNgIIDRIKYQoSDQcDDxQXCxkqIRgHCA0JBQwWIRWbEh4oFhYoHhISHigWFigeEgLYFB0TCilBUCcBAwMCAgMDAwIKEQwGBQkNCBEiHBEFCQ0ICBAREgsIEA8PByE9RFM4ChENBwgOEgoPHBkWChYoIx8NDRscHQ8aNDEuFAAAAAMAbQFdA5MCJQAUACkAPgAAExQeAjMyPgI1NC4CIyIOAhUhFB4CMzI+AjU0LgIjIg4CFSUyHgIVFA4CIyIuAjU0PgIzbRAbJRUVJRsQEBslFRUlGxABLxAbJRUVJRsQEBslFRUlGxABkxUlGxAQGyUVFSUbEBAbJRUBwRUlGxAQGyUVFSUbEBAbJRUVJRsQEBslFRUlGxAQGyUVZBAbJRUVJRsQEBslFRUlGxAAAAAAAQAb//kD4wOJAIoAAAEOAyMwKgIjIi4CJy4DJyY+Aj8BLgMnLgMHDgMHDgMHBh4CFx4DFxY+Ajc+AR4BFx4BDgEPAQ4DBwYuAicuAycuAjQ3PgM3PgM3PgM3PgIyMzIeAhceAxc3PgIyFx4DFRYOAgcDzQEGCQsGAwUIBRpbcX8+BQkHBQEBAQQHBIYGDA0NBw0cHR0PDx0cGw0OFxIOBAkDFyseDyMmKBUVKikpFAwZFxMGBQIFDAkBGDg8Px8gQD89HR43MSkQEBYMBgMICw4ICRQVFwwYPkVKJQkREREJHTk3NRgRIB4cDGUECQoKBQUJBwQKBA0PAQGJBgoIBAIKFBIBBQgJBQUKCQgDWQYMCwoECAwHAgIBCA0SCwwZGx0QHkdGQBcMEw4KAgIBBg0KBgEIEQwKFhUTBwESHxcOAQEIERoRESoxNx4eQUVIJBIjIiEQEB4cGgwZKiAWBQECAQgPFg8KFxkcD3YEBgMCAgYICQVOnoBTBAABAAD/wQQAA8EAQgAABSIuAiclDgMjIi4CNTQ+AjMyHgIXJTU0PgIzMh4CFRQOAiMiLgInBRUFPgMzMh4CFRQOAiMDRCM+MSEG/pwLGRsdDydEMx4eM0QnDx0bGQsBYR4zRCcnRDMeHjNEJw8dGxkL/p8BRw0eIiUUJ0QzHh4zRCc/Fyk5IbsIDQkFHjNEJydEMx4FCQ0IugInRDMeHjNEJydEMx4FCQ0IugStDRUOCB4zRCcnRDMeAAAAAAIAAP/ABAADwAAUADkAAAEiDgIVFB4CMzI+AjU0LgIjCQEOAyMiLgIvAS4BNDY/AT4BMhYfAQE+ATIWHwEeARQGBwIAaruLUFCLu2pqu4tQUIu7agE+/nsBAgIDAQEDAgIB5AICAgJeAgUFBQJ8AR4CBQUFAl4CAgICA8BQi7tqaruLUFCLu2pqu4tQ/or+ewEBAQEBAQEB5AIFBQUCXgICAgJ9AR4CAgICXgIFBQUCAAAAAAQAIv/zA94DjQBNAJ4A2QEqAAABLgMnLgMjIg4CBw4DBw4DFRQeAhceAxceAxcVFB4CFzIeATIzMj4CPwEyPgI3PgM3PgM1NC4CJwEiLgInLgI0NTQ+AjM6AR4BFx4DMzI+AjU0LgI1ND4CMzIeAhceAhQVFA4CIyoBLgEnLgMjIg4CFRQeAhUUDgIjJRQOAiMiLgI9AQcOAyMiLgIvARUUDgIjIi4CPQE0PgIzNh4CHwE3PgMzNh4CHQEXIi4CJy4CNDU0PgIzOgEeARceAzMyPgI1NC4CNTQ+AjMyHgIXHgIUFRQOAiMqAS4BJy4DIyIOAhUUHgIVFA4CIwPQBCIxOx0kSEhIJCRISEgkHTsyIwUDBQMCAgMFAwUjMjsdChUVFQoDBQgFAgMDBAIDBgYGAswdOjo6HR07MSIEBAUDAgIDBQT9SgwZFhIEAQEBBAYIBAIDAwMBBQwNDwgJDgkFJi4mCxUeEwkWFREEAQEBBAYIBAEDAwMBBgwMDAYHCwgEJi4mChUgFgFcBAYIBQUIBgQ6AQIDBAICBAMCAToEBggFBQgGBAQHCQUIDgwJAywsAgYICgUIDwwHdgwZFhIEAQEBBAYIBAIDAwMBBQwNDwgJDgkFJi4mCxUeEwkWFREEAQEBBAYIBAEDAwMBBgwMDAYHCwgEJi4mChUgFgLdHTcsHQMEBgQCAgQGBAMdLDcdFy4vLxgXLi4tFh03LB0DAQIBAQGvBQoIBwIBAQECBALFAgMEAwMcKzYdFi4uLhcXLy8uF/7fBAcKBwEDAwMBBQgGAwEBAQQGBAIEBwkFDgoMGh4NGBIKAwYJBgEDAwMBBQgFAwEBAQMFAwEDBggFDQkNGh4PGRIKGQUIBgQEBggFgY8CAwIBAQIDAo+BBQgGBAQGCAWnBQkHBAEBBQkHbGwFCAUDAQIGCwinGQQHCgcBAwMDAQUIBgMBAQEEBgQCBAcJBQ4KDBoeDRgSCgMGCQYBAwMDAQUIBQMBAQEDBQMBAwYIBQ0JDRoeDxkSCgAAAAADAMD/vwNAA78AGAAdADIAAAERFA4CIyEiLgI1ETQ+AjMhMh4CFQchESERAzQuAiMiDgIVFB4CMzI+AjUDQAoRFw3+AA0XEQoKERcNAgANFxEKa/5VAauVChEXDQ0XEQoKERcNDRcRCgN//IANFxEKChEXDQOADRcRCgoRFw1r/asCVf0rDRcRCgoRFw0NFxEKChEXDQAAAAEAAAABAAAgU6pGXw889QALBAAAAAAAzpRiXQAAAADOlGJdAAD/vwQAA8EAAAAIAAIAAAAAAAAAAQAAA8D/wAAABAAAAAAABAAAAQAAAAAAAAAAAAAAAAAAADoAAAAAAgAAAAQAAFEEAAEQBAAAXgQAACIEAACJBAAAkQQAAM0EAACRBAAAjwQAAAAEAAAHBAAAMgQAACIEAAADBAAAAQQAAAAEAADvBAAAAAQAAFEEAAAQBAAAAAQAABAEAAABBAAAQwQAAC0EAAERBAAADQQAAAAEAAACBAAAAAQAAJ8EAAAABAAAIwQAAAAEAAAMBAAAAAQAAAAEAAAJBAAAAQQAAFkEAAACBAAAiQQAAAYEAABfBAAAJAQAAAAEAAAVBAAAAAQAAAIEAADHBAAAbQQAABsEAAAABAAAAAQAACIEAADAAAAAAAAKAIwAyAE6AaYB6AI0AoAC6gMuA7YESgS+BXQGFAdGB5YH2ggsCMIJjgqyC1AMNAzcDT4Ngg3iDjwPqhBEEIgRDhGIEggSpBNME5wUHhTqFU4VyBYcFloWnBbyF2AYQhjMGQAZkBnoGqYbBBteHOAdLAAAAAEAAAA6ASsACAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAOAK4AAQAAAAAAAQAOAAAAAQAAAAAAAgAOAEcAAQAAAAAAAwAOACQAAQAAAAAABAAOAFUAAQAAAAAABQAWAA4AAQAAAAAABgAHADIAAQAAAAAACgAoAGMAAwABBAkAAQAOAAAAAwABBAkAAgAOAEcAAwABBAkAAwAOACQAAwABBAkABAAOAFUAAwABBAkABQAWAA4AAwABBAkABgAOADkAAwABBAkACgAoAGMAaQBjAG8AbQBvAG8AbgBWAGUAcgBzAGkAbwBuACAAMAAuADAAaQBjAG8AbQBvAG8Abmljb21vb24AaQBjAG8AbQBvAG8AbgBSAGUAZwB1AGwAYQByAGkAYwBvAG0AbwBvAG4ARwBlAG4AZQByAGEAdABlAGQAIABiAHkAIABJAGMAbwBNAG8AbwBuAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=) format('woff');
  font-weight: normal;
  font-style: normal;
}
[class*="icon-utility-"] {
  font-family: 'icomoon';
  speak: none;
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  text-transform: none;
  line-height: 1;
  /* Better Font Rendering =========== */
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.icon-utility-success:before {
  content: "\e600";
}
.icon-utility-attach:before {
  content: "\e000";
}
.icon-utility-bookmark:before {
  content: "\e001";
}
.icon-utility-call:before {
  content: "\e002";
}
.icon-utility-chat:before {
  content: "\e003";
}
.icon-utility-checkin:before {
  content: "\e004";
}
.icon-utility-chevronleft:before {
  content: "\e005";
}
.icon-utility-chevronright:before {
  content: "\e006";
}
.icon-utility-close:before {
  content: "\e007";
}
.icon-utility-down:before {
  content: "\e008";
}
.icon-utility-download:before {
  content: "\e009";
}
.icon-utility-email:before {
  content: "\e00b";
}
.icon-utility-groups:before {
  content: "\e00e";
}
.icon-utility-image:before {
  content: "\e00f";
}
.icon-utility-left:before {
  content: "\e010";
}
.icon-utility-like:before {
  content: "\e011";
}
.icon-utility-link:before {
  content: "\e012";
}
.icon-utility-list:before {
  content: "\e013";
}
.icon-utility-location:before {
  content: "\e014";
}
.icon-utility-logout:before {
  content: "\e015";
}
.icon-utility-people:before {
  content: "\e016";
}
.icon-utility-photo:before {
  content: "\e017";
}
.icon-utility-reply:before {
  content: "\e018";
}
.icon-utility-right:before {
  content: "\e019";
}
.icon-utility-up:before {
  content: "\e01e";
}
.icon-utility-upload:before {
  content: "\e01f";
}
.icon-utility-user:before {
  content: "\e020";
}
.icon-utility-filter:before {
  content: "\e022";
}
.icon-utility-help:before {
  content: "\e023";
}
.icon-utility-error:before {
  content: "\e024";
}
.icon-utility-warning:before {
  content: "\e025";
}
.icon-utility-adduser:before {
  content: "\e026";
}
.icon-utility-add:before {
  content: "\e027";
}
.icon-utility-edit:before {
  content: "\e00a";
}
.icon-utility-back:before {
  content: "\e028";
}
.icon-utility-lock:before {
  content: "\e029";
}
.icon-utility-info:before {
  content: "\e02d";
}
.icon-utility-frozen:before {
  content: "\e02e";
}
.icon-utility-spinner:before {
  content: "\e02b";
}
.icon-utility-news:before {
  content: "\e02f";
}
.icon-utility-dash:before {
  content: "\e030";
}
.icon-utility-question:before {
  content: "\e031";
}
.icon-utility-3dots:before {
  content: "\e032";
}
.icon-utility-refresh:before {
  content: "\e033";
}
.icon-utility-socialshare:before {
  content: "\e034";
}
.icon-utility-priority:before {
  content: "\e021";
}
.icon-utility-search:before {
  content: "\e01b";
}
.icon-utility-rows:before {
  content: "\e01a";
}
.icon-utility-event:before {
  content: "\e00c";
}
.icon-utility-settings:before {
  content: "\e01c";
}
.icon-utility-check:before {
  content: "\e02a";
}
.icon-utility-notification:before {
  content: "\e02c";
}
.icon-utility-share:before {
  content: "\e01d";
}
.icon-utility-favorite:before {
  content: "\e00d";
}
.icon-utility-sms:before {
  content: "\e601";
}
.icon-utility-push:before {
  content: "\e602";
}
@font-face {
  font-family: 'icomoon';
  src: url('fonts/icomoon.eot');
}
@font-face {
  font-family: 'icomoon';
  src: url(data:application/x-font-ttf;charset=utf-8;base64,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) format('truetype'), url(data:application/font-woff;charset=utf-8;base64,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) format('woff');
  font-weight: normal;
  font-style: normal;
}
[class^="sb-icon-"],
[class*=" sb-icon-"] {
  font-family: 'icomoon';
  speak: none;
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  text-transform: none;
  line-height: 1;
  font-size: 1.2em;
  color: #166bbf;
  /* Better Font Rendering =========== */
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.sb-icon-jump-left:before {
  content: "\f0a5";
}
.sb-icon-jump-right:before {
  content: "\f0a6";
}
.sb-icon-triangle-left:before {
  content: "\f044";
}
.sb-icon-triangle-right3:before {
  content: "\f05a";
}
.sb-icon-triangle-right:before {
  content: "\e601";
}
.sb-icon-triangle-down:before {
  content: "\e602";
}
.sb-icon-info:before {
  content: "\e604";
}
.sb-icon-cog:before {
  content: "\e603";
}
.sb-icon-copy:before {
  content: "\e92c";
}
.sb-icon-spinner11:before {
  content: "\e984";
}
.sb-icon-plus:before {
  content: "\ea0a";
}
.sb-icon-cross:before {
  content: "\ea0f";
}
.sb-icon-radio-checked2:before {
  content: "\ea55";
}
.sb-icon-radio-unchecked:before {
  content: "\ea56";
}
/*Multi-segment line expand/collapse link*/
.sb-icon-triangle-right,
.sb-icon-triangle-down {
  color: black;
  vertical-align: text-bottom;
  cursor: pointer;
}
/*Action links on the actions column*/
.sb-icon-cross.line,
.sb-icon-cog.line {
  font-size: 1em;
}
/*Pagination controls*/
.sb-icon-jump-left,
.sb-icon-triangle-left,
.sb-icon-triangle-right3,
.sb-icon-jump-right {
  vertical-align: middle;
  margin-right: 5px;
  cursor: pointer;
}
.sb-icon-jump-left.disabled,
.sb-icon-triangle-left.disabled,
.sb-icon-triangle-right3.disabled,
.sb-icon-jump-right.disabled {
  color: #d3d3d3;
  cursor: default;
}
/*** jQuery UI Calendar ***/
.ui-datepicker {
  background-image: url('/img/alohaSkin/cal_sprite.png');
  background-position: left -109px;
  background-repeat: repeat-x;
  background-color: #ededed;
  z-index: 100 !important;
  width: auto;
  padding: 7px 5px 6px;
  border-left: 1px solid #d6d6d6;
  border-right: 1px solid #d6d6d6;
  -moz-box-shadow: 0 2px 6px #111;
  -webkit-box-shadow: 0 2px 6px #111;
  box-shadow: 0 2px 6px #111;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 5px;
}
.ui-datepicker,
.ui-datepicker-header,
.ui-datepicker-calendar,
.ui-datepicker-week-end,
.ui-datepicker-buttonpane {
  text-align: center;
  overflow: hidden;
  white-space: nowrap;
}
.ui-datepicker-header {
  padding: 0 0 3px;
}
.ui-datepicker-title {
  display: inline-block;
}
.ui-datepicker-month {
  float: left;
}
.ui-datepicker-year {
  float: right;
}
.ui-datepicker-prev,
.ui-datepicker-next {
  margin-top: 4px;
  display: inline-block;
  width: 19px;
  height: 16px;
  margin: 2px 4px 0 0;
  background-repeat: no-repeat;
  line-height: 400%;
}
.ui-datepicker-prev {
  float: left;
  background-image: url('/img/func_icons/cal/leftArrow.gif');
}
.ui-datepicker-next {
  float: left;
  background-image: url('/img/func_icons/cal/rightArrow.gif');
}
.ui-datepicker-calendar {
  padding: 0 5px;
  margin-left: auto;
  margin-right: auto;
}
.ui-datepicker-calendar > thead > tr > th {
  text-align: center;
  font-weight: normal;
  font-size: .9em;
  width: 14%;
}
.ui-datepicker-calendar td {
  padding: 2px;
}
.ui-datepicker-calendar a {
  width: auto;
  border-bottom: none;
  text-decoration: none;
  font-size: .95em;
}
.ui-datepicker-other-month a {
  color: #999;
}
.ui-datepicker-today,
.ui-datepicker-today > a {
  background-color: #1797c0;
  color: #fff;
  font-weight: bold;
  text-decoration: none;
}
.ui-datepicker-current-day {
  background-color: #c6e1ff;
  border: 1px solid #9cf;
  font-weight: bold;
  text-decoration: none;
}
.ui-datepicker-current-day > a {
  background-color: #c6e1ff;
  color: #333;
}
.ui-datepicker-buttonpane {
  padding: 1px;
  clear: both;
}
.ui-datepicker-buttonpane > button {
  background: transparent;
  border: none !important;
  color: #015ba7;
  cursor: pointer;
  font-weight: normal;
  padding: 0;
  margin: 0;
}
.ui-datepicker-close {
  display: none;
}
#ui-datepicker-div {
  display: none;
}
/*
Rotates an element

$r - the rotate function paramter, e.g. 90deg
 */
@font-face {
  font-family: 'sf-icons';
  src: url('../font/sf-icons.eot?87742446');
  src: url('../font/sf-icons.eot?87742446#iefix') format('embedded-opentype'), url('../font/sf-icons.svg?87742446#sf-icons') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'sf-icons';
  src: url('data:application/octet-stream;base64,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') format('woff'), url('data:application/octet-stream;base64,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6D0AAOg9AAAAPgAA6D4AAOg+AAAAPwAA6D8AAOg/AAAAQAAA6EAAAOhAAAAAQQAA6EEAAOhBAAAAQgAA6EIAAOhCAAAAQwAA6EMAAOhDAAAARAAA6EQAAOhEAAAARQAA6EUAAOhFAAAARgAA6EYAAOhGAAAARwAA6EcAAOhHAAAASAAA6EgAAOhIAAAASQAA6EkAAOhJAAAASgAA6EoAAOhKAAAASwAA6EsAAOhLAAAATAAA6EwAAOhMAAAATQAA6E0AAOhNAAAATgAA6E4AAOhOAAAATwAA6E8AAOhPAAAAUAAA6FAAAOhQAAAAUQAA6FEAAOhRAAAAUgAA6FIAAOhSAAAAUwAA6FMAAOhTAAAAVAAA6FQAAOhUAAAAVQAA6FUAAOhVAAAAVgAA6FYAAOhWAAAAVwAA6FcAAOhXAAAAWAAA6FgAAOhYAAAAWQAA6FkAAOhZAAAAWgAA6FoAAOhaAAAAWwAA6FsAAOhbAAAAXAAA6FwAAOhcAAAAXQAA6F0AAOhdAAAAXgAA6F4AAOheAAAAXwAA6F8AAOhfAAAAYAAA6GAAAOhgAAAAYQAA6GEAAOhhAAAAYgAA6GIAAOhiAAAAYwAA6GMAAOhjAAAAZAAA6GQAAOhkAAAAZQAA6GUAAOhlAAAAZgAA6GYAAOhmAAAAZwAA6GcAAOhnAAAAaAAA6GgAAOhoAAAAaQAA6GkAAOhpAAAAagAA6GoAAOhqAAAAawAA6GsAAOhrAAAAbAAA6GwAAOhsAAAAbQAA6G0AAOhtAAAAbgAA6G4AAOhuAAAAbwAA6G8AAOhvAAAAcAAA6HAAAOhwAAAAcQAA6HEAAOhxAAAAcgAA6HIAAOhyAAAAcwAA6HMAAOhzAAAAdAAA6HQAAOh0AAAAdQAA6HUAAOh1AAAAdgAA6HYAAOh2AAAAdwAA6HcAAOh3AAAAeAAA6HgAAOh4AAAAeQAA6HkAAOh5AAAAegAA6HoAAOh6AAAAewAA6HsAAOh7AAAAfAAA6HwAAOh8AAAAfQAA6H0AAOh9AAAAfgAA6H4AAOh+AAAAfwAA6H8AAOh/AAAAgAAA6IAAAOiAAAAAgQAA6IEAAOiBAAAAggAA6IIAAOiCAAAAgwAA6IMAAOiDAAAAhAAA6IQAAOiEAAAAhQAA6IUAAOiFAAAAhgAA6IYAAOiGAAAAhwAA6IcAAOiHAAAAiAAA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cgBpAGcAaAB0ACAAKABDACkAIAAyADAAMQA5ACAAYgB5ACAAbwByAGkAZwBpAG4AYQBsACAAYQB1AHQAaABvAHIAcwAgAEAAIABmAG8AbgB0AGUAbABsAG8ALgBjAG8AbQBzAGYALQBpAGMAbwBuAHMAUgBlAGcAdQBsAGEAcgBzAGYALQBpAGMAbwBuAHMAcwBmAC0AaQBjAG8AbgBzAFYAZQByAHMAaQBvAG4AIAAxAC4AMABzAGYALQBpAGMAbwBuAHMARwBlAG4AZQByAGEAdABlAGQAIABiAHkAIABzAHYAZwAyAHQAdABmACAAZgByAG8AbQAgAEYAbwBuAHQAZQBsAGwAbwAgAHAAcgBvAGoAZQBjAHQALgBoAHQAdABwADoALwAvAGYAbwBuAHQAZQBsAGwAbwAuAGMAbwBtAAAAAAIAAAAAAAAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjAECAQMBBAEFAQYBBwEIAQkBCgELAQwBDQEOAQ8BEAERARIBEwEUARUBFgEXARgBGQEaARsBHAEdAR4BHwEgASEBIgEjASQBJQEmAScBKAEpASoBKwEsAS0BLgEvATABMQEyATMBNAE1ATYBNwE4ATkBOgE7ATwBPQE+AT8BQAFBAUIBQwFEAUUBRgFHAUgBSQFKAUsBTAFNAU4BTwFQAVEBUgFTAVQBVQFWAVcBWAFZAVoBWwFcAV0BXgFfAWABYQFiAWMBZAFlAWYBZwFoAWkBagFrAWwBbQFuAW8BcAFxAXIBcwF0AXUBdgF3AXgBeQF6AXsBfAF9AX4BfwGAAYEBggGDAYQBhQGGAYcBiAGJAYoBiwGMAY0ABTNkb3RzA2FkZAVjbG9zZQlwcmljZWJvb2sEaGVscAhub3RlYm9vawRyb3dzBnVwbG9hZAVjbG9jawZncm91cHMLb3Blbl9mb2xkZXIQcmlnaHRfYWxpZ25fdGV4dAdwcm9kdWN0DXF1ZXN0aW9uX2ZlZWQHd2FybmluZwR1c2VyBXJpZ2h0DG5vdGlmaWNhdGlvbgRob21lCGNvbnRyYWN0B2FkZHVzZXIEYXBwcwRjb3B5BWltYWdlBG9wZW4Ic2V0dGluZ3MGem9vbWluBnJlY29yZAlhcnJvd2Rvd24DY3V0D2luc2VydF90ZW1wbGF0ZQ1vcGVuZWRfZm9sZGVyCXNpZGVfbGlzdAd6b29tb3V0BnF1b3RlcwxyZWxhdGVkX2xpc3QEZ2RvYwdzbmlwcGV0BHBhZ2ULY3VzdG9tX2FwcHMHYXJyb3d1cAZhdHRhY2gHZGF5dmlldwRpbmZvEGluc2VydF90YWdfZmllbGQFcGFzdGUEc29ydANwZGYGcmVwb3J0BHRhc2sIYXBwcm92YWwLc29jaWFsc2hhcmUGcGVvcGxlBml0YWxpYwZkZWxldGUEYmFjawNiYW4FZW1haWwEYm9sZAdwcmV2aWV3BXNoYXJlCWRhc2hib2FyZAZ0aGFua3MFdG9kYXkKY29udHJhY3QtMQdzcGlubmVyBXBob3RvBWV2ZW50B2J1aWxkZXIManVzdGlmeV90ZXh0EWNlbnRlcl9hbGlnbl90ZXh0BGVkaXQGbGF5b3V0CHByaW9yaXR5EHN0YW5kYXJkX29iamVjdHMHY29udGFjdAhjdXN0b205MwdlbWFpbC0xB3N1Y2Nlc3MHcmVmcmVzaA9sZWZ0X2FsaWduX3RleHQEZG93bgVjaGFydARjaGF0BWVycm9yBGxlZnQLcmVtb3ZlX2xpbmsHc3VtbWFyeQhkb2N1bWVudAZkcmFmdHMNc3VtbWFyeWRldGFpbAdyZXBsYWNlBGxpa2UIZG93bmxvYWQFY2hlY2sLY2hldnJvbmxlZnQGZXhwYW5kBGxpbmsFcmVwbHkFdGFibGUEZmVlZAdldmVudC0xDnRpbGVfY2FyZF9saXN0FHJpY2h0ZXh0YnVsbGV0ZWRsaXN0BGxpc3QIZmF2b3JpdGUMY2hldnJvbnJpZ2h0C2NoZXZyb25kb3duBmZpbHRlcgRtb3ZlDnJpY2h0ZXh0aW5kZW50CXVuZGVybGluZQhmZWVkYmFjawRmaWxlBHVuZG8UcmljaHRleHRudW1iZXJlZGxpc3QEbG9jawpmaWx0ZXJsaXN0CWNoZXZyb251cAVjbGVhcgdmb3J3YXJkCm5ld193aW5kb3cPcmljaHRleHRvdXRkZW50BnVubG9jawtvcHBvcnR1bml0eQRwb3N0AnVwBnNlYXJjaANuZXcGZnJvemVuCGNvbW1lbnRzBnJlY2VudAltYWdpY3dhbmQYZGlzY291bnRzY2hlZHVsZWljb25zLTAyCGN1c3RvbTkwCGN1c3RvbTI2CHRyZW5kaW5nBnRhcmdldARjdWJlAAAAAAEAAf//AA8AAAAAAAAAAAAAAAAAAAAAABgAGAAYABgDU/9qA1P/arAALCCwAFVYRVkgIEu4AA5RS7AGU1pYsDQbsChZYGYgilVYsAIlYbkIAAgAY2MjYhshIbAAWbAAQyNEsgABAENgQi2wASywIGBmLbACLCBkILDAULAEJlqyKAEKQ0VjRVJbWCEjIRuKWCCwUFBYIbBAWRsgsDhQWCGwOFlZILEBCkNFY0VhZLAoUFghsQEKQ0VjRSCwMFBYIbAwWRsgsMBQWCBmIIqKYSCwClBYYBsgsCBQWCGwCmAbILA2UFghsDZgG2BZWVkbsAErWVkjsABQWGVZWS2wAywgRSCwBCVhZCCwBUNQWLAFI0KwBiNCGyEhWbABYC2wBCwjISMhIGSxBWJCILAGI0KxAQpDRWOxAQpDsAFgRWOwAyohILAGQyCKIIqwASuxMAUlsAQmUVhgUBthUllYI1khILBAU1iwASsbIbBAWSOwAFBYZVktsAUssAdDK7IAAgBDYEItsAYssAcjQiMgsAAjQmGwAmJmsAFjsAFgsAUqLbAHLCAgRSCwC0NjuAQAYiCwAFBYsEBgWWawAWNgRLABYC2wCCyyBwsAQ0VCKiGyAAEAQ2BCLbAJLLAAQyNEsgABAENgQi2wCiwgIEUgsAErI7AAQ7AEJWAgRYojYSBkILAgUFghsAAbsDBQWLAgG7BAWVkjsABQWGVZsAMlI2FERLABYC2wCywgIEUgsAErI7AAQ7AEJWAgRYojYSBksCRQWLAAG7BAWSOwAFBYZVmwAyUjYUREsAFgLbAMLCCwACNCsgsKA0VYIRsjIVkqIS2wDSyxAgJFsGRhRC2wDiywAWAgILAMQ0qwAFBYILAMI0JZsA1DSrAAUlggsA0jQlktsA8sILAQYmawAWMguAQAY4ojYbAOQ2AgimAgsA4jQiMtsBAsS1RYsQRkRFkksA1lI3gtsBEsS1FYS1NYsQRkRFkbIVkksBNlI3gtsBIssQAPQ1VYsQ8PQ7ABYUKwDytZsABDsAIlQrEMAiVCsQ0CJUKwARYjILADJVBYsQEAQ2CwBCVCioogiiNhsA4qISOwAWEgiiNhsA4qIRuxAQBDYLACJUKwAiVhsA4qIVmwDENHsA1DR2CwAmIgsABQWLBAYFlmsAFjILALQ2O4BABiILAAUFiwQGBZZrABY2CxAAATI0SwAUOwAD6yAQEBQ2BCLbATLACxAAJFVFiwDyNCIEWwCyNCsAojsAFgQiBgsAFhtRAQAQAOAEJCimCxEgYrsHIrGyJZLbAULLEAEystsBUssQETKy2wFiyxAhMrLbAXLLEDEystsBgssQQTKy2wGSyxBRMrLbAaLLEGEystsBsssQcTKy2wHCyxCBMrLbAdLLEJEystsB4sALANK7EAAkVUWLAPI0IgRbALI0KwCiOwAWBCIGCwAWG1EBABAA4AQkKKYLESBiuwcisbIlktsB8ssQAeKy2wICyxAR4rLbAhLLECHistsCIssQMeKy2wIyyxBB4rLbAkLLEFHistsCUssQYeKy2wJiyxBx4rLbAnLLEIHistsCgssQkeKy2wKSwgPLABYC2wKiwgYLAQYCBDI7ABYEOwAiVhsAFgsCkqIS2wKyywKiuwKiotsCwsICBHICCwC0NjuAQAYiCwAFBYsEBgWWawAWNgI2E4IyCKVVggRyAgsAtDY7gEAGIgsABQWLBAYFlmsAFjYCNhOBshWS2wLSwAsQACRVRYsAEWsCwqsAEVMBsiWS2wLiwAsA0rsQACRVRYsAEWsCwqsAEVMBsiWS2wLywgNbABYC2wMCwAsAFFY7gEAGIgsABQWLBAYFlmsAFjsAErsAtDY7gEAGIgsABQWLBAYFlmsAFjsAErsAAWtAAAAAAARD4jOLEvARUqLbAxLCA8IEcgsAtDY7gEAGIgsABQWLBAYFlmsAFjYLAAQ2E4LbAyLC4XPC2wMywgPCBHILALQ2O4BABiILAAUFiwQGBZZrABY2CwAENhsAFDYzgtsDQssQIAFiUgLiBHsAAjQrACJUmKikcjRyNhIFhiGyFZsAEjQrIzAQEVFCotsDUssAAWsAQlsAQlRyNHI2GwCUMrZYouIyAgPIo4LbA2LLAAFrAEJbAEJSAuRyNHI2EgsAQjQrAJQysgsGBQWCCwQFFYswIgAyAbswImAxpZQkIjILAIQyCKI0cjRyNhI0ZgsARDsAJiILAAUFiwQGBZZrABY2AgsAErIIqKYSCwAkNgZCOwA0NhZFBYsAJDYRuwA0NgWbADJbACYiCwAFBYsEBgWWawAWNhIyAgsAQmI0ZhOBsjsAhDRrACJbAIQ0cjRyNhYCCwBEOwAmIgsABQWLBAYFlmsAFjYCMgsAErI7AEQ2CwASuwBSVhsAUlsAJiILAAUFiwQGBZZrABY7AEJmEgsAQlYGQjsAMlYGRQWCEbIyFZIyAgsAQmI0ZhOFktsDcssAAWICAgsAUmIC5HI0cjYSM8OC2wOCywABYgsAgjQiAgIEYjR7ABKyNhOC2wOSywABawAyWwAiVHI0cjYbAAVFguIDwjIRuwAiWwAiVHI0cjYSCwBSWwBCVHI0cjYbAGJbAFJUmwAiVhuQgACABjYyMgWGIbIVljuAQAYiCwAFBYsEBgWWawAWNgIy4jICA8ijgjIVktsDossAAWILAIQyAuRyNHI2EgYLAgYGawAmIgsABQWLBAYFlmsAFjIyAgPIo4LbA7LCMgLkawAiVGUlggPFkusSsBFCstsDwsIyAuRrACJUZQWCA8WS6xKwEUKy2wPSwjIC5GsAIlRlJYIDxZIyAuRrACJUZQWCA8WS6xKwEUKy2wPiywNSsjIC5GsAIlRlJYIDxZLrErARQrLbA/LLA2K4ogIDywBCNCijgjIC5GsAIlRlJYIDxZLrErARQrsARDLrArKy2wQCywABawBCWwBCYgLkcjRyNhsAlDKyMgPCAuIzixKwEUKy2wQSyxCAQlQrAAFrAEJbAEJSAuRyNHI2EgsAQjQrAJQysgsGBQWCCwQFFYswIgAyAbswImAxpZQkIjIEewBEOwAmIgsABQWLBAYFlmsAFjYCCwASsgiophILACQ2BkI7ADQ2FkUFiwAkNhG7ADQ2BZsAMlsAJiILAAUFiwQGBZZrABY2GwAiVGYTgjIDwjOBshICBGI0ewASsjYTghWbErARQrLbBCLLA1Ky6xKwEUKy2wQyywNishIyAgPLAEI0IjOLErARQrsARDLrArKy2wRCywABUgR7AAI0KyAAEBFRQTLrAxKi2wRSywABUgR7AAI0KyAAEBFRQTLrAxKi2wRiyxAAEUE7AyKi2wRyywNCotsEgssAAWRSMgLiBGiiNhOLErARQrLbBJLLAII0KwSCstsEossgAAQSstsEsssgABQSstsEwssgEAQSstsE0ssgEBQSstsE4ssgAAQistsE8ssgABQistsFAssgEAQistsFEssgEBQistsFIssgAAPistsFMssgABPistsFQssgEAPistsFUssgEBPistsFYssgAAQCstsFcssgABQCstsFgssgEAQCstsFkssgEBQCstsFossgAAQystsFsssgABQystsFwssgEAQystsF0ssgEBQystsF4ssgAAPystsF8ssgABPystsGAssgEAPystsGEssgEBPystsGIssDcrLrErARQrLbBjLLA3K7A7Ky2wZCywNyuwPCstsGUssAAWsDcrsD0rLbBmLLA4Ky6xKwEUKy2wZyywOCuwOystsGgssDgrsDwrLbBpLLA4K7A9Ky2waiywOSsusSsBFCstsGsssDkrsDsrLbBsLLA5K7A8Ky2wbSywOSuwPSstsG4ssDorLrErARQrLbBvLLA6K7A7Ky2wcCywOiuwPCstsHEssDorsD0rLbByLLMJBAIDRVghGyMhWUIrsAhlsAMkUHiwARUwLQBLuADIUlixAQGOWbABuQgACABjcLEABUKyAAEAKrEABUKzCgIBCCqxAAVCsw4AAQgqsQAGQroCwAABAAkqsQAHQroAQAABAAkqsQMARLEkAYhRWLBAiFixA2REsSYBiFFYugiAAAEEQIhjVFixAwBEWVlZWbMMAgEMKrgB/4WwBI2xAgBEAAA=') format('truetype');
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
.pbSubsection header {
  *zoom: 1;
  margin: 0;
  padding: 0;
  vertical-align: middle;
  border: none;
}
/*a table that displays a list of entities/rows/etc, a la a "list page"*/
.sbTable {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  /*center aligned cells*/
  /*right aligned cells*/
  /*a standard table header cell*/
  /*a standard table body cell*/
  /*table footer cells*/
}
.sbTable tbody .sbActions [class^="sf-icon-"]:before,
.sbTable tbody .sbActions [class*=" sf-icon-"]:before {
  color: #0070D2;
  font-size: 20px;
}
.sbTable tbody .sbActions [class^="sf-icon-"]:before:hover,
.sbTable tbody .sbActions [class*=" sf-icon-"]:before:hover {
  color: #16325C;
  cursor: pointer;
}
.sbTable > th,
.sbTable > tr > td {
  height: 46px;
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
.sbTable > a {
  color: inherit;
}
.sbTable > input,
.sbTable select {
  font-size: inherit;
}
.sbTable > thead > tr > th {
  border-bottom: 1px solid #c0c0c0;
  padding: 8px 6px 6px;
  font-weight: normal;
  text-transform: uppercase;
  color: #777;
  text-align: left;
  white-space: nowrap;
}
.sbTable > tbody > tr > td {
  border-bottom: 1px solid #d0d0d0;
  padding: 8px 6px 6px;
  color: #222;
}
.sbTable > tbody > tr > td.right input {
  text-align: right;
}
.sbTable > tbody > tr > td input:disabled {
  background-color: #F4F6F9;
}
.sbTable > tfoot > tr > td {
  padding: 8px 6px 6px;
  color: #222;
}
/*A container/row of buttons, a la a button "bar"*/
.sbButtons {
  text-align: center;
  display: inline-block;
}
.sbModalFooter > .sbButtons {
  padding: 10px 0;
}
/*A standard, standalone button*/
.sbBtn {
  background: #fff;
  color: #166bbf;
  border: 1px solid #c0c0c0;
  border-radius: 3px;
  vertical-align: middle;
  text-align: center;
  height: 40px;
  font-size: 16px;
  margin: 0 0 0 4px;
}
.sbBtn > span {
  color: #0070D2;
}
.sbMobileTabs {
  font-size: 14px;
  margin: 18px 0;
  text-transform: uppercase;
  border-bottom: 1px solid #d0d0d0;
  margin-bottom: 10px;
}
.sbMobileTabs > a {
  color: inherit;
  padding: 6px 16px 6px;
  display: inline-block;
}
.sbMobileTabs > a.custom {
  position: relative;
}
.sbMobileTabs > a > .sf-icon-edit {
  visibility: hidden;
  color: #0070d2;
  position: absolute;
  top: 6px;
  right: -6px;
}
.sbMobileTabs > a > .sf-icon-edit.visible {
  visibility: visible;
}
.sbMobileTabs > a.selected {
  border-bottom: 4px solid #166bbf;
}
.sbPageTitleMobile {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  height: 75px;
  z-index: 5;
  background-color: #F4F6F9;
  border-bottom: 1px solid #d0d0d0;
}
.sbPageTitleMobile > .sbPageTitleTable > div {
  display: inline-block;
  vertical-align: middle;
  margin-top: 21px;
}
.sbPageTitleMobile > .sbPageTitleTable > .icon {
  margin-right: 10px;
}
.sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleLeft h1,
.sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleLeft h2 {
  font-size: 12px;
  font-weight: normal;
  margin: 0;
}
.sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight {
  margin: 7px;
  float: right;
}
.sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight > .sbPageButtons {
  margin-top: 7px;
  margin-bottom: 7px;
}
div.message {
  border-radius: 3px;
  margin: 10px 0;
  padding: 12px;
  font-size: 14px;
  color: #16325C;
  display: inline-block;
  background: none;
}
div.message.top {
  margin: 75px 0 -60px 40px;
}
div.message .msgIcon {
  background: none;
  width: 0;
  height: 0;
}
div.message .messageText {
  margin: 0 0 0 30px;
}
div.message .messageText > h4,
div.message .messageText > div {
  color: #c00;
  display: inline-block;
  vertical-align: top;
  line-height: 20px;
}
div.message .messageText h4 {
  margin-left: 10px;
  margin-right: 6px;
}
div.message .messageText > div:not(:first-of-type) {
  display: block;
}
div.message .messageText:before {
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
div.message.errorM2,
div.message.errorM3,
div.message.errorM4,
div.message.errorM5,
div.message.errorM6 {
  border-color: #c00;
}
div.message.errorM2 .messageText,
div.message.errorM3 .messageText,
div.message.errorM4 .messageText,
div.message.errorM5 .messageText,
div.message.errorM6 .messageText {
  color: #c00;
}
div.message.errorM2 .messageText:before,
div.message.errorM3 .messageText:before,
div.message.errorM4 .messageText:before,
div.message.errorM5 .messageText:before,
div.message.errorM6 .messageText:before {
  content: '\e821';
}
div.message.warningM2 .messageText,
div.message.warningM3 .messageText,
div.message.warningM4 .messageText,
div.message.warningM5 .messageText,
div.message.warningM6 .messageText {
  color: #d98633;
}
div.message.warningM2 .messageText:before,
div.message.warningM3 .messageText:before,
div.message.warningM4 .messageText:before,
div.message.warningM5 .messageText:before,
div.message.warningM6 .messageText:before {
  content: '\e820';
}
div.message.infoM2 .messageText,
div.message.infoM3 .messageText,
div.message.infoM4 .messageText,
div.message.infoM5 .messageText,
div.message.infoM6 .messageText {
  color: #0000cc;
}
div.message.infoM2 .messageText:before,
div.message.infoM3 .messageText:before,
div.message.infoM4 .messageText:before,
div.message.infoM5 .messageText:before,
div.message.infoM6 .messageText:before {
  content: '\e80f';
}
/** Custom Lookup */
span.lookupInput {
  white-space: nowrap;
}
#customLookupComponent div.lookupResult {
  padding-top: 10px;
  cursor: pointer;
  color: blue;
  text-decoration: underline;
}
#customLookupComponent div.lookupResult:hover {
  text-decoration: none;
  text-shadow: 1px 1px 1px #555;
}
#customLookupComponent span.resultHeader {
  display: block;
  padding-top: 20px !important;
  padding-bottom: 4px !important;
  font-style: italic;
}
#customLookupComponent div.body {
  padding-bottom: 20px;
}
#customLookupComponent input {
  width: 85% !important;
}
#customLookupComponent .sb-icon-search {
  padding-left: 7px;
}
/** Modal for additional button options in line editor */
.modalDialogWrapper input.sbBtn,
.modalDialogWrapper button.sbBtn {
  margin-bottom: 15px;
  margin-left: 0px;
}
.modalDialogWrapper input.sbBtn:first-of-type,
.modalDialogWrapper button.sbBtn:first-of-type {
  margin-top: 15px;
}
.modalDialogWrapper input.sbBtn:last-of-type,
.modalDialogWrapper button.sbBtn:last-of-type {
  margin-bottom: 15px;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  .sbBtn {
    font-size: 14px;
    padding: 5px 10px;
  }
  .sbBtn > span[class^="sb-icon-"],
  .sbBtn > span[class^="icon-utility-"],
  .icon-utility-down {
    vertical-align: middle;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .icon {
    float: left;
    margin-left: 10px;
    margin-right: 5px;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleLeft {
    float: left;
  }
  .sbPageTitleMobile > .sbPageTitleTable > div {
    margin-top: 15px;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight {
    display: block;
    float: right;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight .sbBack {
    float: left;
    margin-left: 0;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight .sbClose {
    float: right;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight .sbClose > .sf-icon-close {
    font-size: 16.8px;
    display: inline-block;
    vertical-align: middle;
  }
  .sbPageTitleMobile > .sbPageTitleTable > .sbPageTitleRight .modalDialogWrapper {
    margin: 0 auto;
  }
  div.message.top {
    margin: 115px 0 -100px 0;
  }
  div.message .messageText > div {
    display: inline;
    margin-left: -15px;
  }
}
#easyXDM_SBQQ_provider {
  width: 100%;
  min-height: 200px;
}
.sf-icon-close {
  color: #fff;
  font-family: Arial;
  font-weight: 600;
  font-size: 25px;
  display: block;
  text-align: right;
  z-index: 22;
  right: 0;
  margin: auto;
  width: 100%;
  left: 0;
}
#sbLineEditor {
  padding: 15px;
  font-size: 14px;
}
#sbLineEditor .sbEmptyQuoteMsg,
#sbLineEditor .sbEmptyGroupMsg,
#sbLineEditor .emptyMSTableMessage,
#sbLineEditor .emptyStandardTableMessage {
  padding: 25px 0;
}
#sbLineEditor .sbQuoteFields {
  margin: 0 15px;
}
#sbLineEditor .sbQuoteFields header {
  border: none;
}
#sbLineEditor .sbQuoteFields header > h1 {
  font-size: 14px;
}
#sbLineEditor .sbQuoteFields .sbTable > tbody > tr .sbLabel label {
  text-align: right;
  font-size: 14px;
}
#sbLineEditor .sbQuoteFields .sbTable > tbody > tr > td {
  border: none;
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
#sbLineEditor .sbQuoteActions ul,
#sbLineEditor .sbGroupActions ul {
  margin: 0;
  padding: 0;
  list-style-type: none;
}
#sbLineEditor .sbQuoteActions ul ul,
#sbLineEditor .sbGroupActions ul ul {
  display: none;
}
#sbLineEditor .sbQuoteActions ul li span.sf-icon-down,
#sbLineEditor .sbGroupActions ul li span.sf-icon-down {
  padding: 10px;
  font-size: 18px;
}
#sbLineEditor .sbQuoteActions ul li span.sf-icon-down.open + ul,
#sbLineEditor .sbGroupActions ul li span.sf-icon-down.open + ul {
  display: block;
}
#sbLineEditor .sbQuoteActions li,
#sbLineEditor .sbGroupActions li {
  margin: 10px 0;
  padding: 10px;
  display: block;
}
#sbLineEditor .sbQuoteActions li.sbBtn,
#sbLineEditor .sbGroupActions li.sbBtn {
  height: auto;
}
#sbLineEditor .sbQuoteActions li.menu,
#sbLineEditor .sbGroupActions li.menu {
  border: 1px solid #c0c0c0;
}
#sbLineEditor .sbQuoteActions li.menu li,
#sbLineEditor .sbGroupActions li.menu li {
  border: none;
  margin: 0;
}
#sbLineEditor .sbQuoteActions li.menu li:first-of-type,
#sbLineEditor .sbGroupActions li.menu li:first-of-type {
  margin-top: 10px;
}
#sbLineEditor .sbQuoteActions .sbToolSeparator,
#sbLineEditor .sbGroupActions .sbToolSeparator {
  height: 0;
  padding: 0;
  border: none;
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
#sbLineEditor.optional li.optionalAllBtn,
#sbLineEditor.optional li.optionalNoneBtn {
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
#sbLineEditor .sbGroups,
#sbLineEditor .sbLineItems,
#sbLineEditor .sbCustomSegmentsEditor,
#sbLineEditor .sbDiscountScheduleModal,
#sbLineEditor #sbPricebookModal,
#sbLineEditor #sbFavoritesModal,
#sbLineEditor .sbProductRuleAlertPopup,
#sbLineEditor .recordEditorForm {
  padding-top: 75px;
}
#sbLineEditor .sbDiscountScheduleModal .message {
  margin-top: 5px;
  margin-bottom: 5px;
}
#sbLineEditor .sbQuoteFields,
#sbLineEditor .msStandardTableContainer,
#sbLineEditor .sbMultiSegmentTableContainer,
#sbLineEditor .sbGroupFieldsContainer,
#sbLineEditor .sbCustomSegmentsContainer {
  overflow-x: auto;
}
#sbLineEditor .sbModalContentContainer {
  overflow-x: auto;
}
#sbLineEditor .discountScheduleLoader {
  margin-left: auto;
  margin-right: auto;
  margin-top: 20px;
}
#sbLineEditor .discountScheduleProperty {
  white-space: nowrap;
}
#sbLineEditor .hideInputBorders {
  border: 0px;
}
#sbLineEditor .sbGroupNames {
  text-align: center;
  margin: 30px;
}
#sbLineEditor .sbGroupNames > div {
  text-transform: uppercase;
  padding: 15px;
  margin-bottom: 10px;
}
#sbLineEditor .sbGroupNames > div > span {
  display: inline-block;
  vertical-align: middle;
  font-weight: normal;
  font-size: 14px;
}
#sbLineEditor .sbGroupNames > div > span:last-of-type {
  padding-left: 30px;
}
#sbLineEditor .sbQuoteTotalContainer,
#sbLineEditor .sbGroupTotalContainer {
  margin-top: 25px;
  text-align: right;
}
#sbLineEditor .sbQuoteTotalContainer header,
#sbLineEditor .sbGroupTotalContainer header {
  border-bottom: none;
  border-top: 1px solid #d0d0d0;
}
#sbLineEditor .sbQuoteTotalContainer header > h1,
#sbLineEditor .sbGroupTotalContainer header > h1 {
  font-size: 14px;
  margin-top: 15px;
}
#sbLineEditor .sbGroupTotalContainer {
  margin-top: 50px;
}
#sbLineEditor .sbGroup {
  margin-top: 10px;
}
#sbLineEditor .sbGroup .sbGroupHeader {
  height: 50px;
  float: left;
}
#sbLineEditor .sbGroup .sbGroupHeader > h2,
#sbLineEditor .sbGroup .sbGroupHeader > input {
  display: inline-block;
  vertical-align: middle;
}
#sbLineEditor .sbGroup .sbGroupHeader > h2 {
  margin: 0;
  font-size: 21px;
}
#sbLineEditor .sbGroup .sbGroupHeader > input {
  display: none;
  height: 40px;
  width: 200px;
  padding: 5px;
}
#sbLineEditor .sbGroup .sbGroupHeader > span {
  font-size: 1.3em;
  display: inline-block;
  vertical-align: bottom;
}
#sbLineEditor .sbGroup .sbGroupButtons {
  float: right;
}
#sbLineEditor .sbGroup .sbDescriptionField {
  margin: 20px 0 40px;
  font-size: 14px;
}
#sbLineEditor .sbGroup .sbGroupFieldsContainer {
  padding: 5px;
}
#sbLineEditor .sbGroup .sbGroupFieldsContainer .sbGroupFields .sbGroupField {
  display: block;
  white-space: nowrap;
  margin-bottom: 15px;
}
#sbLineEditor .sbGroup .sbGroupFieldsContainer .sbGroupFields .sbGroupField label {
  display: inline;
  font-size: 14px;
  color: #16325C;
}
#sbLineEditor .sbGroup .sbGroupFieldsContainer .sbGroupFields .sbGroupField input[type='checkbox'] {
  vertical-align: middle;
}
#sbLineEditor .sbGroup .multiSegment.sbTable,
#sbLineEditor .sbGroup .standard.sbTable {
  margin-top: 30px;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > thead > th span,
#sbLineEditor .sbGroup .standard.sbTable > thead > th span {
  color: #16325C;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td {
  height: 55px;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions {
  white-space: nowrap;
  text-align: left;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions .icon-utility-chevronright,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions .icon-utility-chevronright,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions .icon-utility-down,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions .icon-utility-down {
  width: 30px;
  font-size: 17px;
  color: #0070D2;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions ul,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions ul {
  margin: 0;
  padding: 0;
  list-style-type: none;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions ul ul,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions ul ul {
  display: none;
  top: 100%;
  left: 0;
  width: 100%;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions ul li span.sf-icon-down.open + ul,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions ul li span.sf-icon-down.open + ul {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li {
  margin: 10px 0;
  padding: 10px;
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li.sbBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li.sbBtn {
  height: auto;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li.menu,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li.menu {
  border: 1px solid #c0c0c0;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li.menu li,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li.menu li {
  border: none;
  margin: 0;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions li.menu li:first-of-type,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions li.menu li:first-of-type {
  margin-top: 10px;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions .sbAction.action,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions .sbAction.action {
  display: none;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable .addToFavBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable .addToFavBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable .removeFromFavBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable .removeFromFavBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable .deleteBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable .deleteBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable .cloneBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable .cloneBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable.favorite .addToFavBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable.favorite .addToFavBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.removable:not(.favorite) .removeFromFavBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.removable:not(.favorite) .removeFromFavBtn {
  display: none;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions:not(.component) .cloneBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions:not(.component) .cloneBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.configurable .reconfigureBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.configurable .reconfigureBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.convertable .desegmentBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.convertable .desegmentBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.convertable .resegmentBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.convertable .resegmentBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.convertable.segmented .resegmentBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.convertable.segmented .resegmentBtn,
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.convertable:not(.segmented) .desegmentBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.convertable:not(.segmented) .desegmentBtn {
  display: none;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td.sbActions.dsEditable .viewDSBtn,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td.sbActions.dsEditable .viewDSBtn {
  display: block;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tbody > tr > td .sb-icon-level-down,
#sbLineEditor .sbGroup .standard.sbTable > tbody > tr > td .sb-icon-level-down {
  color: #888;
}
#sbLineEditor .sbGroup .multiSegment.sbTable > tfoot > tr.sbTotalRow > td,
#sbLineEditor .sbGroup .standard.sbTable > tfoot > tr.sbTotalRow > td {
  font-weight: bold;
}
#sbLineEditor .sbBundleOption {
  color: #696969;
}
#sbLineEditor .sbIndent2 {
  padding-left: 15px;
}
#sbLineEditor .sbIndent3 {
  padding-left: 30px;
}
#sbLineEditor .sbIndent4 {
  padding-left: 45px;
}
#sbLineEditor .sbIndent5 {
  padding-left: 60px;
}
#sbLineEditor .sbIndent6 {
  padding-left: 75px;
}
#sbLineEditor .sbIndent7 {
  padding-left: 90px;
}
#sbLineEditor .sbIndent8 {
  padding-left: 105px;
}
#sbLineEditor .sbIndent9 {
  padding-left: 120px;
}
#sbLineEditor .sbIndent10 {
  padding-left: 135px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal {
  overflow: auto;
  margin: 0;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header {
  margin-bottom: 25px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header > h3,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header > h3 {
  font-size: 21px;
  width: 100%;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header .sbButtons,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header .sbButtons {
  width: 100%;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header .sbButtons > .sbBtn,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header .sbButtons > .sbBtn {
  display: inline-block;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal header .sbButtons > .sbBtn:not(:first-of-type),
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal header .sbButtons > .sbBtn:not(:first-of-type) {
  margin-top: 0;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbValidationErrors,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbValidationErrors {
  margin-bottom: 25px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbValidationErrors > div,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbValidationErrors > div {
  padding-top: 10px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbValidationErrors > div > span,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbValidationErrors > div > span,
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbValidationErrors > div > div,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbValidationErrors > div > div {
  display: inline;
  color: #c00;
  font-size: 14px;
}
#sbLineEditor .sbCustomSegmentsEditor #sbSegmentsModal .sbTable i,
#sbLineEditor .sbProductRuleAlertPopup #sbSegmentsModal .sbTable i {
  padding-right: 10px;
  display: inline-block;
  vertical-align: middle;
}
#sbLineEditor #sbFavoritesModal header {
  margin-bottom: 25px;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors {
  margin-bottom: 25px;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div {
  padding-top: 10px;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > span,
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > div {
  display: inline;
  color: #c00;
  font-size: 14px;
}
#sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td {
  border-bottom: none;
}
#sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td:first-of-type {
  width: 15%;
  padding-left: 15px;
}
#sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td #sbFavoriteName {
  width: 300px;
}
#sbLineEditor .editedMSLine.sbTable {
  width: 75%;
  margin: 30px auto 0;
}
#sbLineEditor .editedMSLine.sbTable tbody > tr > td {
  height: 55px;
}
#sbLineEditor .editedMSLine.sbTable > thead > tr > th:first-of-type,
#sbLineEditor .editedMSLine.sbTable > tbody > tr > td:first-of-type {
  padding-left: 150px;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.msSummaryRow i {
  padding-left: 25px;
  font-size: 21px;
  vertical-align: text-bottom;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.msDetailRow > td {
  background-color: #f7f7f7;
  border: none;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.msDetailRow > td select {
  width: inherit;
  margin-left: 5px;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.msDetailRow > td.label {
  padding-left: 150px;
}
#sbLineEditor .editedMSLine.sbTable > tbody > tr.sbTotalRow > td {
  padding-top: 10px;
  text-transform: uppercase;
  font-weight: bold;
}
#sbLineEditor .recordEditorForm > header > h3 {
  font-size: 21px;
}
#sbLineEditor .recordEditorForm .sbLineActions {
  display: inline;
}
#sbLineEditor .recordEditorForm > .buttonContainer {
  margin: 0;
}
#sbLineEditor .sbLineNumber.dataCell {
  white-space: nowrap;
}
#sbLineEditor .sbLineNumber.dataCell span {
  display: inline-block;
  vertical-align: middle;
}
#sbLineEditor .sbLineNumber.dataCell .sbLineError span {
  white-space: initial;
  margin: 20px 5px;
}
#sbLineEditor #sbPricebookModal {
  text-align: center;
}
#sbLineEditor #sbPricebookModal select {
  width: 250px;
  margin: 25px 0;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbLineEditor {
    padding: 5px;
  }
  #sbLineEditor .sbMobileTabs {
    font-size: 10px;
    margin: 10px 0;
  }
  #sbLineEditor .sbPhoneTab.sbBtn {
    padding: 10px;
    margin: 0 0 15px 0;
  }
  #sbLineEditor .sbPhoneTab.sbBtn.selected {
    background-color: #F4F6F9;
  }
  #sbLineEditor .sbPhoneTab.sbBtn > span {
    text-transform: uppercase;
    display: inline-block;
    vertical-align: middle;
  }
  #sbLineEditor .sbPhoneTab.sbBtn > span.sf-icon-edit {
    position: absolute;
    right: 15px;
    visibility: hidden;
  }
  #sbLineEditor .sbPhoneTab.sbBtn > span.sf-icon-edit.visible {
    visibility: visible;
  }
  #sbLineEditor .sbGroupNames > div {
    padding: 10px;
  }
  #sbLineEditor .sbGroup .sbGroupHeader,
  #sbLineEditor .sbGroup .sbGroupButtons {
    display: inline-block;
  }
  #sbLineEditor .sbGroup .sbGroupHeader {
    float: left;
  }
  #sbLineEditor .sbGroup .sbGroupHeader > h2 {
    padding-top: 5px;
  }
  #sbLineEditor .recordEditorForm > header {
    text-align: center;
  }
  #sbLineEditor .multiSegment.sbTable,
  #sbLineEditor .standard.sbTable {
    margin-bottom: 15px;
  }
  #sbLineEditor .editedMSLine.sbTable {
    width: 90%;
  }
  #sbLineEditor .editedMSLine.sbTable > thead > tr > th:first-of-type,
  #sbLineEditor .editedMSLine.sbTable > tbody > tr > td:first-of-type {
    padding-left: 15px;
  }
  #sbLineEditor .editedMSLine.sbTable > tbody > tr.msDetailRow > td.label {
    padding-left: 15px;
  }
  #sbLineEditor .sbDiscountScheduleModal .sbButtons {
    width: 100%;
  }
  #sbLineEditor .sbDiscountScheduleModal .message {
    margin-top: 5px;
    margin-bottom: 5px;
  }
  #sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td:first-of-type {
    white-space: nowrap;
    padding-left: 0;
  }
  #sbLineEditor #sbFavoritesModal .sbTable > tbody > tr > td #sbFavoriteName {
    width: 200px;
  }
}
#sbProductSearch {
  padding: 15px;
  font-size: 14px;
}
#sbProductSearch .sbPageBlock {
  padding-top: 85px;
}
#sbProductSearch .sbProductFilters > button,
#sbProductSearch .sbProductFilters > .sbTable {
  display: inline-block;
}
#sbProductSearch .sbProductFilters > button {
  vertical-align: bottom;
  margin-bottom: 3px;
}
#sbProductSearch .sbProductFilters > .sbTable {
  width: inherit;
}
#sbProductSearch .sbProductFilters > .sbTable > thead > tr > td {
  padding: 0 5px;
}
#sbProductSearch .sbProductFilters > .sbTable > tbody > tr > td {
  border: none;
  padding: 0 5px;
}
#sbProductSearch .sbGuidedSelling > button,
#sbProductSearch .sbGuidedSelling > .sbTable {
  display: inline-block;
}
#sbProductSearch .sbGuidedSelling > button {
  vertical-align: bottom;
  margin-bottom: 3px;
}
#sbProductSearch .sbGuidedSelling > .sbTable {
  width: inherit;
}
#sbProductSearch .sbGuidedSelling > .sbTable > tbody > tr > td {
  border: none;
  padding: 0 5px;
}
#sbProductSearch .sbProductsTableContainer {
  overflow-x: auto;
}
#sbProductSearch .sbProductsTableContainer .sbProducts {
  margin-top: 20px;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td {
  border-bottom: none;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages {
  margin-top: 25px;
  text-align: center;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages > .sbBtn {
  font-size: 1.4em;
  padding: 9px 10px 11px;
  color: #0070D2;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages > .sbBtn.sb-icon-left-dir,
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages > .sbBtn.sb-icon-right-dir {
  font-size: 1.6em;
  padding: 8px 8px 9px;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages > .sbBtn.disabled {
  background-color: #fff;
  color: #888;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages .sbPageSelector {
  padding: 0 10px;
  display: inline-block;
  vertical-align: middle;
}
#sbProductSearch .sbProductsTableContainer .sbProducts > tfoot > tr.sbProductPages > td .sbPages .sbPageSelector > input {
  width: 45px;
  text-align: center;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbProductSearch .sbProductFilters {
    margin-top: 30px;
  }
  #sbProductSearch .sbProductFilters label {
    margin-top: 5px;
  }
  #sbProductSearch .sbProductFilters button {
    margin: 20px 0 0 0;
  }
  #sbProductSearch .sbGuidedSelling {
    margin-top: 30px;
  }
  #sbProductSearch .sbGuidedSelling label {
    margin-top: 5px;
  }
  #sbProductSearch .sbGuidedSelling button {
    margin: 20px 0 0 0;
  }
  #sbProductSearch .sbProductsTableContainer table.sbProducts > tfoot > tr.sbProductPages > td {
    padding-left: 0;
  }
  #sbProductSearch .sbProductsTableContainer table.sbProducts > tfoot > tr.sbProductPages > td .sbPages {
    text-align: left;
  }
  #sbProductSearch .sbProductsTableContainer table.sbProducts > tfoot > tr.sbProductPages > td .sbPages .sbBtn:first-of-type {
    margin-left: 0;
  }
}
#sbProductConfigurator {
  padding: 15px;
  font-size: 14px;
}
#sbProductConfigurator .sbPageTitleTable > .sbPageTitleRight {
  margin-top: 7px;
}
#sbProductConfigurator .sbPageTitleTable > .sbPageTitleLeft .sf-icon-custom_apps {
  background-color: #8199af;
}
#sbProductConfigurator .sbFeatures,
#sbProductConfigurator .sbAddOptionDialog {
  margin-top: 75px;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .sbConfigProductName {
  margin-bottom: 0;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct:not(:first-of-type) .sbConfigProductName {
  margin-top: 45px;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .group h3 {
  margin-top: 25px;
  margin-bottom: 3px;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .group .featureInstructions {
  padding-bottom: 15px;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .group .sbFeatureOptions {
  overflow-x: auto;
}
#sbProductConfigurator .sbFeatures .sbConfiguredProduct .group .sbAddOptionContainer {
  margin-top: 15px;
}
#sbProductConfigurator .sbFeatures .requiresConfiguration {
  border-left: #c00 solid;
}
#sbProductConfigurator .sbAddOptionDialog > .sbTitleContainer > h2 {
  margin-bottom: 5px;
}
#sbProductConfigurator .sbDataCol {
  padding: 5px 0;
}
#sbProductConfigurator .configTable.sbTable {
  margin-top: 15px;
}
#sbProductConfigurator .configTable.sbTable td {
  padding: 15px;
  border-bottom: none;
}
#sbProductConfigurator .configTable.sbTable td.sbLabelCol {
  text-align: right;
}
#sbProductConfigurator .configTable.sbTable td.sbLabelCol > label {
  padding-bottom: 0;
}
#sbProductConfigurator .configTable.sbTable td.sbDataCol select {
  width: 150px;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbProductConfigurator .sbFeatures,
  #sbProductConfigurator .sbAddOptionDialog {
    margin-top: 115px;
  }
}
#sbAssetSearch .sbPageBlock {
  padding-top: 100px;
}
#sbAssetSearch .sbProductFilters > .sbTable {
  width: inherit;
}
#sbAssetSearch .sbAssets {
  margin-top: 20px;
}
#sbAssetSearch .sbProductFilters > .sbTable {
  display: inline-block;
}
#sbAssetSearch .sbProductFilters > .sbTable > tbody > tr > td {
  border: none;
  padding: 0 5px;
}
#sbAssetSearch .sbProductFilters > button {
  display: inline-block;
  margin-bottom: 5px;
  vertical-align: bottom;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbAssetSearch .sbAssetFilter {
    margin-top: 30px;
  }
  #sbAssetSearch .sbAssetFilter label {
    margin-top: 5px;
  }
  #sbAssetSearch .sbAssetFilter button {
    margin: 20px 0 0 0;
  }
}
#sbSubscriptionSearch .sbPageBlock {
  padding-top: 100px;
}
#sbSubscriptionSearch .sbProductFilters > .sbTable {
  width: inherit;
}
#sbSubscriptionSearch .sbSubscriptions {
  margin-top: 20px;
}
#sbSubscriptionSearch .sbProductFilters > .sbTable {
  display: inline-block;
}
#sbSubscriptionSearch .sbProductFilters > .sbTable > tbody > tr > td {
  border: none;
  padding: 0 5px;
}
#sbSubscriptionSearch .sbProductFilters > button {
  display: inline-block;
  margin-bottom: 5px;
  vertical-align: bottom;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbSubscriptionSearch .sbSubscriptionFilter {
    margin-top: 30px;
  }
  #sbSubscriptionSearch .sbSubscriptionFilter label {
    margin-top: 5px;
  }
  #sbSubscriptionSearch .sbSubscriptionFilter button {
    margin: 20px 0 0 0;
  }
}
/*
Document Generation Preview page

Previews a document in the browser with chosen template, additional docs, etc.
*/
#sbDocGenPreview,
#sbDocGenOptions {
  padding: 15px;
  font-size: 14px;
  /** Phone Styles */
}
#sbDocGenPreview .sbPreview,
#sbDocGenOptions .sbPreview {
  margin-top: 75px;
}
#sbDocGenPreview .sbPreview [class^=sf-icon],
#sbDocGenOptions .sbPreview [class^=sf-icon] {
  font-size: 17px;
  padding: 5px;
}
#sbDocGenPreview .sbPreview > .buttonContainer,
#sbDocGenOptions .sbPreview > .buttonContainer,
#sbDocGenPreview .sbPreview .sf-icon-zoomout,
#sbDocGenOptions .sbPreview .sf-icon-zoomout {
  padding-left: 15px;
}
#sbDocGenPreview .sbPreview > .documentPreviewContainer,
#sbDocGenOptions .sbPreview > .documentPreviewContainer {
  margin-left: -15px;
  top: 145px;
}
#sbDocGenPreview .sbDocOptionsContainer,
#sbDocGenOptions .sbDocOptionsContainer {
  margin-top: 75px;
}
#sbDocGenPreview .sbDocOptionsContainer .pbSubsection,
#sbDocGenOptions .sbDocOptionsContainer .pbSubsection {
  margin-top: 15px;
}
#sbDocGenPreview .sbDocOptionsContainer .pbSubsection > header > h1,
#sbDocGenOptions .sbDocOptionsContainer .pbSubsection > header > h1 {
  font-size: 28px;
  margin-bottom: 15px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox {
  padding: 15px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > thead > tr > th,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > thead > tr > th {
  text-align: center;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(3),
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(3) {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul {
  width: 250px;
  min-height: 300px;
  overflow: auto;
  padding-left: 8px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li {
  padding: 8px;
  white-space: nowrap;
  list-style-type: none;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li.required,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li.required {
  color: #af2626;
  font-weight: bold;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li.selected,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul > li.selected {
  color: #fff;
  background-color: #0070D2;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a {
  color: inherit;
  padding: 5px;
  margin: 0 8px;
  display: block;
  border: 1px solid #D8DDE6;
  border-bottom: 0px;
  text-align: center;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sf-icon],
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sf-icon] {
  font-size: 17px;
  padding: 5px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon],
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon] {
  font-size: 22px;
  padding: 5px;
  color: #3d3e3f;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon-to-end]:before,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon-to-end]:before {
  -webkit-transform: rotate(-90deg);
  -moz-transform: rotate(-90deg);
  -ms-transform: rotate(-90deg);
  transform: rotate(-90deg);
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:nth-child(4) [class^=sb-icon-to-end]:before,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:nth-child(4) [class^=sb-icon-to-end]:before {
  -webkit-transform: rotate(90deg);
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:first-of-type,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:first-of-type {
  border-top-right-radius: 3px;
  border-top-left-radius: 3px;
}
#sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:last-of-type,
#sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a:last-of-type {
  border-bottom: 1px solid #D8DDE6;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbDocGenPreview .sbPreview,
  #sbDocGenOptions .sbPreview,
  #sbDocGenPreview .sbDocOptionsContainer,
  #sbDocGenOptions .sbDocOptionsContainer {
    margin-top: 115px;
  }
  #sbDocGenPreview .sbPreview > .documentPreviewContainer,
  #sbDocGenOptions .sbPreview > .documentPreviewContainer,
  #sbDocGenPreview .sbDocOptionsContainer > .documentPreviewContainer,
  #sbDocGenOptions .sbDocOptionsContainer > .documentPreviewContainer {
    top: 185px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .pbSubsection > header > h1,
  #sbDocGenOptions .sbDocOptionsContainer .pbSubsection > header > h1 {
    font-size: 24px;
    margin-bottom: 0;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox,
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox {
    padding-top: 5px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td,
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td {
    display: block;
    padding: 10px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(3),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(3) {
    border: none;
    text-align: center;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(1),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(4),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(4) {
    text-align: center;
    font-weight: bold;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(2),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(2),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(5),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(5) {
    border: 1px solid #D8DDE6;
    border-radius: 3px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul,
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td ul {
    margin: 0;
    text-align: left;
    height: 120px;
    min-height: 120px;
    overflow: auto;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a,
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a {
    display: inline-block;
    margin: 0 2px;
    border: 1px solid #D8DDE6;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon],
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td a [class^=sb-icon] {
    font-size: 17px;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(2),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(2),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(4),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:nth-child(4) {
    text-align: center;
  }
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:last-child a:nth-child(1),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:last-child a:nth-child(1),
  #sbDocGenPreview .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:last-child a:nth-child(4),
  #sbDocGenOptions .sbDocOptionsContainer .sbDualListBox > tbody > tr > td:last-child a:nth-child(4) {
    padding-bottom: 7px;
  }
}
/*
Document Generation options

Choices for document generation such as template, output format, etc.
*/
#sbDocGenOptions td {
  padding-bottom: 5px;
}
#sbDocGenOptions td > label {
  padding-bottom: 0;
}
#sbNewRelatedContent .sbBody {
  margin-top: 85px;
}
#sbNewRelatedContent .sbBody fieldset {
  border: none;
}
/** Phone Styles */
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbNewRelatedContent .sbBody {
    margin-top: 125px;
  }
}
#sbFavoritesManager {
  padding: 15px;
  font-size: 14px;
}
#sbFavoritesManager .sbPageBlock {
  padding-top: 85px;
}
#sbFavoritesManager .topMsg {
  text-align: center;
  display: block;
  font-weight: normal;
  padding: 32px;
}
#sbFavoritesManager .botMsg {
  text-align: center;
  display: block;
  font-weight: normal;
  padding: 0 32px;
}
#sbFavoritesManager .sbFavoritesTableContainer {
  overflow-x: auto;
}
#sbFavoritesManager .sbFavoritesTableContainer .sbFavorites {
  margin-top: 20px;
}
#sbFavoritesManager .modalDialog {
  top: 100px;
  max-width: 440px;
  overflow: visible;
}
#sbFavoritesManager .modalDialog header {
  text-align: center;
  border-bottom: 2px solid #D8DDE6;
}
#sbFavoritesManager .modalDialog header .sb-icon-star {
  display: inline-block;
  color: black;
  margin: 0 0;
}
#sbFavoritesManager .modalDialog header h2 {
  display: inline-block;
}
#sbFavoritesManager .modalDialog .sbModalContentContainer {
  padding: 1px 14px;
}
#sbFavoritesManager .modalDialog .sbModalContentContainer input {
  margin: 0 0;
}
#sbFavoritesManager .modalDialog .sbModalContentContainer .sbTable > tbody > tr > td {
  border: 0;
}
#sbFavoritesManager .modalDialog .sbModalContentContainer .sbTable .sbActions {
  width: 1%;
  text-align: left;
  white-space: nowrap;
}
#sbFavoritesManager .modalDialog .sbModalFooter {
  border-top: 2px solid #D8DDE6;
  background-color: #F4F6F9;
  padding: 12px 16px;
  text-align: right;
}
#sbFavoritesManager .modalDialog .sbModalFooter .sbButtons {
  padding: 0 2px;
}
#sbFavoritesManager .modalDialog .sbModalFooter input {
  margin: 0;
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
}
#sbFavoritesManager .sbValidationErrors span {
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
/** Phone Styles */

/*# sourceMappingURL=data:application/json;charset=utf8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIm1vYmlsZU9sZC5sZXNzIiwiaWNvbnMubGVzcyIsIm1peGlucy5sZXNzIiwiYmFzZU1vYmlsZS5sZXNzIiwiLi4vLi4vcXVvdGVzL2xpbmVFZGl0b3JNb2JpbGUubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RMb29rdXBNb2JpbGUubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RDb25maWd1cmF0b3JNb2JpbGUubGVzcyIsIi4uLy4uL2Fzc2V0cy9hc3NldExvb2t1cE1vYmlsZS5sZXNzIiwiLi4vLi4vc3Vic2NyaXB0aW9ucy9zdWJzY3JpcHRpb25Mb29rdXBNb2JpbGUubGVzcyIsIi4uLy4uL2RvY2dlbi9wcmV2aWV3TW9iaWxlLmxlc3MiLCIuLi8uLi9xdW90ZXMvbmV3UmVsYXRlZENvbnRlbnRNb2JpbGUubGVzcyIsIi4uLy4uL2Zhdm9yaXRlcy9mYXZvcml0ZXNNYW5hZ2VyTW9iaWxlLmxlc3MiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUVBO0VBQ0M7SUFBSSxtQkFBa0IsWUFBbEI7O0VBQ0o7SUFBTSxtQkFBa0IsY0FBbEI7OztBQUdQO0VBQ0M7SUFBSSxXQUFVLFlBQVY7O0VBQ0o7SUFBTSxXQUFVLGNBQVY7OztBQUdQO0VBQ0M7SUFBSSxXQUFVLFlBQVY7O0VBQ0o7SUFBTSxXQUFVLGNBQVY7OztBQUdQO0VBQ0MsMkNBQUE7RUFDQSxjQUFBO0VBQ0EsbUNBQUE7O0FBR0Q7QUFBRyxDQUFDO0FBQVMsQ0FBQztFQUNiLDJCQUFBO0VBQ0EsOEJBQUE7RUFDQSxzQkFBQTs7QUFHRDtFQUNDLFlBQUE7RUFDQSxXQUFBOztBQUdELGFBQWM7RUFDYixRQUFBO0VBQ0EsaUJBQUE7RUFDQSxrQkFBQTtFQUNBLGtCQUFBO0VBQ0EsYUFBQTtFQUNBLHNCQUFBO0VBQ0Esd0JBQUE7RUFDQywwQkFBQTtFQUNBLHFCQUFBOztBQUdGLGFBQWMsT0FBTztFQUNwQixXQUFBOztFQUVBLGVBQUE7RUFDQSxjQUFBOztBQUdELGFBQWM7RUFDYixnQkFB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SUFBRztFQUNyQixjQUFBO0VBQ0EscUJBQUE7RUFDQSx5QkFBQTs7QUFuSkosbUJBc0pFLGVBQWUsVUFBVTtBQXRKM0IsbUJBdUpFLGVBQWUsVUFBVSxJQUFHO0FBdko5QixtQkF3SkUsZUFBZSxVQUFVLElBQUc7RUFDMUIsV0FBQTtFQUNBLHFCQUFBO0VBQ0EseUJBQUE7RUFDQSxVQUFBIiwic291cmNlc0NvbnRlbnQiOlsiLyoqKiBDb21tb24gKioqL1xuXG5ALXdlYmtpdC1rZXlmcmFtZXMgbG9hZGluZy1yb3RhdGUge1xuXHQwJSB7LXdlYmtpdC10cmFuc2Zvcm06cm90YXRlKDBkZWcpO31cblx0MTAwJSB7LXdlYmtpdC10cmFuc2Zvcm06cm90YXRlKDM2MGRlZyk7fVxufVxuXG5ALW1vei1rZXlmcmFtZXMgbG9hZGluZy1yb3RhdGUge1xuXHQwJSB7dHJhbnNmb3JtOnJvdGF0ZSgwZGVnKTt9XG5cdDEwMCUge3RyYW5zZm9ybTpyb3RhdGUoMzYwZGVnKTt9XG59XG5cbkBrZXlmcmFtZXMgbG9hZGluZy1yb3RhdGUge1xuXHQwJSB7dHJhbnNmb3JtOnJvdGF0ZSgwZGVnKTt9XG5cdDEwMCUge3RyYW5zZm9ybTpyb3RhdGUoMzYwZGVnKTt9XG59XG5cbioge1xuXHRmb250LWZhbWlseTogUHJveGltYU5vdmEsIEFyaWFsLCBzYW5zLXNlcmlmO1xuXHRjb2xvcjogIzNjM2QzZTtcblx0LXdlYmtpdC1mb250LXNtb290aGluZzogYW50aWFsaWFzZWQ7XG59XG5cbiosICo6YmVmb3JlLCAqOmFmdGVyIHtcblx0LW1vei1ib3gtc2l6aW5nOiBib3JkZXItYm94O1xuXHQtd2Via2l0LWJveC1zaXppbmc6IGJvcmRlci1ib3g7XG5cdGJveC1zaXppbmc6IGJvcmRlci1ib3g7XG59XG5cbmJvZHkge1xuXHRwYWRkaW5nOiAwcHg7XG5cdG1hcmdpbjogMHB4O1xufVxuXG4ucGJTdWJzZWN0aW9uIGhlYWRlciB7XG5cdCp6b29tOiAxO1xuXHRtYXJnaW4tbGVmdDogLTdweDtcblx0bWFyZ2luLXJpZ2h0OiAtN3B4O1xuXHRtYXJnaW4tYm90dG9tOiA1cHg7XG5cdHBhZGRpbmc6IDE0cHg7XG5cdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdGJvcmRlci1ib3R0b20td2lkdGg6IDFweDtcblx0XHRib3JkZXItYm90dG9tLXN0eWxlOiBzb2xpZDtcblx0XHRib3JkZXItY29sb3I6ICNlY2VlZjA7XG59XG5cbi5wYlN1YnNlY3Rpb24gaGVhZGVyIGgxIHtcblx0bWFyZ2luOiAwcHg7XG5cdC8qZm9udC13ZWlnaHQ6IDMwMDsqL1xuXHRmb250LXNpemU6IDE0cHg7XG5cdGNvbG9yOiAjM2MzZDNlO1xufVxuXG4ucGJTdWJzZWN0aW9uIGxhYmVsIHtcblx0dGV4dC1hbGlnbjogbGVmdDtcbn1cblxuaGVhZGVyLnBhZ2VIZWFkZXIge1xuXHRtYXJnaW46IDBweDtcblx0YmFja2dyb3VuZC1jb2xvcjogd2hpdGU7XG5cdGJvcmRlci1ib3R0b20td2lkdGg6IDFweDtcblx0Ym9yZGVyLWJvdHRvbS1zdHlsZTogc29saWQ7XG5cdGJvcmRlci1jb2xvcjogI2NmZDRkOTtcblx0cGFkZGluZy10b3A6IDNweDtcblx0cGFkZGluZy1ib3R0b206IDNweDtcblx0d2lkdGg6IDEwMCU7XG59XG5cbmhlYWRlci5wYWdlSGVhZGVyIGgxIHtcblx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRmb250LXdlaWdodDogMTAwO1xuXHR2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xufVxuXG5oZWFkZXIucGFnZUhlYWRlciBoMSAudGl0bGUge1xuXHRkaXNwbGF5OiBibG9jaztcblx0Zm9udC1zaXplOiAxMnB4O1xufVxuXG5oZWFkZXIucGFnZUhlYWRlciBoMSAuc3VidGl0bGUge1xuXHRkaXNwbGF5OiBibG9jaztcblx0Zm9udC1zaXplOiAxNHB4O1xufVxuXG4uaWNvbiB7XG5cdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRiYWNrZ3JvdW5kLXBvc2l0aW9uOiA1MCU7XG5cdGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG5cdGJvcmRlci1yYWRpdXM6IDVweDtcblx0d2lkdGg6IDMwcHg7XG5cdFx0aGVpZ2h0OiAzMHB4O1xuXHRiYWNrZ3JvdW5kLXNpemU6IDEwMCU7XG5cdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdG1hcmdpbi1sZWZ0OiAxNHB4O1xuXHRcdG1hcmdpbi1yaWdodDogMTRweDtcbn1cblxuLmljb25DdXN0b20xOCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzRkY2E3Njtcblx0XHRiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJy9pbWcvaWNvbi90NC9jdXN0b20vY3VzdG9tMThfNjAucG5nJyk7XG5cdH1cblxuaW5wdXQsIHRleHRhcmVhLCBrZXlnZW4sIHNlbGVjdCwgYnV0dG9uLCBpc2luZGV4IHtcblx0bWFyZ2luOiAwO1xuXHRmb250OiAtd2Via2l0LXNtYWxsLWNvbnRyb2w7XG5cdGZvbnQtc2l6ZTogMTVweDtcblx0Zm9udC1mYW1pbHk6IGluaGVyaXQ7XG5cdGNvbG9yOiBpbml0aWFsO1xuXHRsZXR0ZXItc3BhY2luZzogbm9ybWFsO1xuXHR3b3JkLXNwYWNpbmc6IG5vcm1hbDtcblx0dGV4dC10cmFuc2Zvcm06IG5vbmU7XG5cdHRleHQtaW5kZW50OiAwcHg7XG5cdHRleHQtc2hhZG93OiBub25lO1xuXHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdHRleHQtYWxpZ246IHN0YXJ0O1xuXHRib3gtc2l6aW5nOiBib3JkZXItYm94O1xuXHRjb2xvcjogIzNjM2QzZTtcblx0cGFkZGluZzogN3B4IDE0cHg7XG5cdGxpbmUtaGVpZ2h0OiAyNXB4O1xuXHRib3JkZXItcmFkaXVzOiA1cHg7XG5cdGJvcmRlcjogMXB4IHNvbGlkICNjZmQwZDI7XG5cdC13ZWJraXQtd3JpdGluZy1tb2RlOiBob3Jpem9udGFsLXRiO1xuXHQtbW96LWFwcGVhcmFuY2U6IG5vbmU7XG5cdC13ZWJraXQtYXBwZWFyYW5jZTogbm9uZTtcblx0LW1zLWFwcGVhcmFuY2U6IG5vbmU7XG5cbn1cblxuaW5wdXQge1xuXHRib3JkZXI6IDFweCBzb2xpZCAjY2ZkMGQyO1xuXHRib3JkZXItcmFkaXVzOiAzcHg7XG5cdGJhY2tncm91bmQtY29sb3I6IEBzYlBhZ2VCZ0NvbG9yO1xuXHRib3gtc2hhZG93OiBpbnNldCAwIDJweCAycHggcmdiYSgwLDAsMCwuMDcpO1xuXHQtd2Via2l0LXRhcC1oaWdobGlnaHQtY29sb3I6IHJnYmEoMCwgMCwgMCwgMCk7XG59XG5cbmxhYmVsIHtcblx0Zm9udC1zaXplOiAxM3B4O1xuXHRjb2xvcjogIzY5NmU3MTtcblx0bWFyZ2luOiAwO1xuXHRwYWRkaW5nLWJvdHRvbTogNXB4O1xuXHRkaXNwbGF5OiBibG9jaztcbn1cblxudGV4dGFyZWEge1xuXHQtd2Via2l0LXJ0bC1vcmRlcmluZzogbG9naWNhbDtcblx0LXdlYmtpdC11c2VyLXNlbGVjdDogdGV4dDtcblx0ZmxleC1kaXJlY3Rpb246IGNvbHVtbjtcblx0Y3Vyc29yOiBhdXRvO1xuXHR3aGl0ZS1zcGFjZTogcHJlLXdyYXA7XG5cdHdvcmQtd3JhcDogYnJlYWstd29yZDtcblx0YmFja2dyb3VuZC1jb2xvcjogQHNiUGFnZUJnQ29sb3I7XG5cdGJveC1zaGFkb3c6IGluc2V0IDAgMnB4IDJweCByZ2JhKDAsMCwwLC4wNyk7XG59XG5cbmlucHV0W3R5cGU9XCJjaGVja2JveFwiXSwgaW5wdXRbdHlwZT1cInJhZGlvXCJdIHtcblx0cGFkZGluZzogMHB4O1xuXHRcdGJvcmRlci1zdHlsZTogc29saWQ7XG5cdFx0Ym9yZGVyLXdpZHRoOiAxcHg7XG5cdFx0aGVpZ2h0OiAyMnB4O1xuXHRcdHdpZHRoOiAyMnB4O1xuXHRcdGJvcmRlci1jb2xvcjogI2JiYzBjNDtcblx0XHRib3gtc2hhZG93OiAwIDFweCAwIHJnYmEoMCwgMCwgMCwgMC4wMiksIGluc2V0IDAgMCAwIDJweCByZ2JhKDI1NSwgMjU1LCAyNTUsIDAuNSk7XG59XG5cbmlucHV0W3R5cGU9XCJjaGVja2JveFwiXTpkaXNhYmxlZCwgaW5wdXRbdHlwZT1cInJhZGlvXCJdOmRpc2FibGVkIHtcblx0b3BhY2l0eTogMC40O1xufVxuXG5pbnB1dFt0eXBlPVwiY2hlY2tib3hcIl06Zm9jdXMsIGlucHV0W3R5cGU9XCJjaGVja2JveFwiXTphY3RpdmUsIGlucHV0W3R5cGU9XCJyYWRpb1wiXTpmb2N1cywgaW5wdXRbdHlwZT1cInJhZGlvXCJdOmFjdGl2ZSB7XG5cdGJhY2tncm91bmQ6ICNlOGVhZWI7XG59XG5cbmlucHV0W3R5cGU9XCJjaGVja2JveFwiXTpjaGVja2VkLCBpbnB1dFt0eXBlPVwicmFkaW9cIl06Y2hlY2tlZCB7XG5cdGJvcmRlci1jb2xvcjogIzFjNzhiMTtcblx0YmFja2dyb3VuZDogIzJhOTRkNiAhaW1wb3J0YW50O1xuXHRib3gtc2hhZG93OiAwIDFweCAwIHJnYmEoMCwgMCwgMCwgMC4wMik7XG59XG5cbmlucHV0W3R5cGU9XCJjaGVja2JveFwiXTpjaGVja2VkOjphZnRlciB7XG5cdGRpc3BsYXk6IGJsb2NrO1xuXHRwb3NpdGlvbjogcmVsYXRpdmU7XG5cdGNvbnRlbnQ6ICcnO1xuXHRsZWZ0OiAzcHg7XG5cdHRvcDogNHB4O1xuXHRoZWlnaHQ6IDhweDtcblx0d2lkdGg6IDE0cHg7XG5cdGJvcmRlci1ib3R0b206IDRweCBzb2xpZCB3aGl0ZTtcblx0Ym9yZGVyLWxlZnQ6IDRweCBzb2xpZCB3aGl0ZTtcblx0LXdlYmtpdC10cmFuc2Zvcm06IHJvdGF0ZSgtNDVkZWcpO1xufVxuXG5pbnB1dFt0eXBlPVwicmFkaW9cIl06Y2hlY2tlZDo6YWZ0ZXIge1xuXHRkaXNwbGF5OiBibG9jaztcblx0cG9zaXRpb246IHJlbGF0aXZlO1xuXHRjb250ZW50OiAnJztcblx0bGVmdDogNXB4O1xuXHR0b3A6IDVweDtcblx0aGVpZ2h0OiAxMHB4O1xuXHR3aWR0aDogMTBweDtcblx0Ym9yZGVyLXJhZGl1czogMTAwJTtcblx0YmFja2dyb3VuZDogd2hpdGU7XG59XG5cbmlucHV0LmludmFsaWREYXRlIHtcblx0Ym9yZGVyLWNvbG9yOiAjYzAwO1xufVxuXG5zZWxlY3Qge1xuICAgIG1pbi13aWR0aDogNTBweDtcbiAgICBwYWRkaW5nOiA3cHggMTRweDtcbiAgICBtYXJnaW4tbGVmdDogM3B4O1xuICAgIGJhY2tncm91bmQtaW1hZ2U6IHVybCgnZGF0YTppbWFnZS9zdmcreG1sO2Jhc2U2NCxQSE4yWnlCNGJXeHVjejBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TWpBd01DOXpkbWNpSUhodGJHNXpPbmhzYVc1clBTSm9kSFJ3T2k4dmQzZDNMbmN6TG05eVp5OHhPVGs1TDNoc2FXNXJJaUIyWlhKemFXOXVQU0l4TGpFaUlHbGtQU0pNWVhsbGNsOHhJaUI0UFNJd2NIZ2lJSGs5SWpCd2VDSWdkbWxsZDBKdmVEMGlNQ0F3SURJM0xqWWdNakVpSUdWdVlXSnNaUzFpWVdOclozSnZkVzVrUFNKdVpYY2dNQ0F3SURJM0xqWWdNakVpSUhodGJEcHpjR0ZqWlQwaWNISmxjMlZ5ZG1VaVBnMEtJQ0E4Wno0TkNpQWdJQ0E4WkdWbWN6NE5DaUFnSUNBZ0lEeHdZWFJvSUdsa1BTSlRWa2RKUkY4eFh5SWdaRDBpVFRVdU5pQTFhREUyTGpSak1DNDBJREFnTUM0NElEQXVOaUF3TGpRZ01Xd3RPQ0E1TGpoakxUQXVNeUF3TGpNdE1DNDVJREF1TXkweExqSWdNR3d0T0MwNUxqaEROQzQ0SURVdU5pQTFMakVnTlNBMUxqWWdOWG9pTHo0TkNpQWdJQ0E4TDJSbFpuTStEUW9nSUNBZ1BHTnNhWEJRWVhSb0lHbGtQU0pUVmtkSlJGOHlYeUkrRFFvZ0lDQWdJQ0E4ZFhObElIaHNhVzVyT21oeVpXWTlJaU5UVmtkSlJGOHhYeUlnYjNabGNtWnNiM2M5SW5acGMybGliR1VpTHo0TkNpQWdJQ0E4TDJOc2FYQlFZWFJvUGcwS0lDQWdJRHh5WldOMElIZzlJakFpSUhrOUlqQWlJR05zYVhBdGNHRjBhRDBpZFhKc0tDTlRWa2RKUkY4eVh5a2lJR1pwYkd3OUlpTTFOVFk1T0VRaUlIZHBaSFJvUFNJeU55NDJJaUJvWldsbmFIUTlJakl4SWk4K0RRb2dJRHd2Wno0TkNqd3ZjM1puUGcwSycpO1xuICAgIGJhY2tncm91bmQtY29sb3I6ICNmZmY7XG4gICAgYmFja2dyb3VuZC1wb3NpdGlvbjogOTUlIDUwJTtcbiAgICBiYWNrZ3JvdW5kLXJlcGVhdDogbm8tcmVwZWF0O1xuICAgIGJhY2tncm91bmQtc2l6ZTogMTRweCAxNHB4O1xuICAgIGJvcmRlcjogMXB4IHNvbGlkICNjZmQwZDI7XG4gICAgYm9yZGVyLXJhZGl1czogM3B4O1xuXG4gICAgJlttdWx0aXBsZV0ge1xuICAgICAgbWluLWhlaWdodDogNzRweDtcbiAgICB9XG4gIH1cblxuc2VsZWN0W3NpemU9XCIxXCJdIHtcblx0YWxpZ24taXRlbXM6IGNlbnRlcjtcblx0d2hpdGUtc3BhY2U6IHByZTtcbn1cblxuYnV0dG9uLmJ0biB7XG5cdGJhY2tncm91bmQtY29sb3I6IHdoaXRlO1xuXHRib3JkZXItY29sb3I6ICNiYmMwYzQ7XG5cdHBhZGRpbmctdG9wOiA2cHg7XG5cdFx0cGFkZGluZy1ib3R0b206IDdweDtcblx0XHRwYWRkaW5nLWxlZnQ6IDZweDtcblx0XHRwYWRkaW5nLXJpZ2h0OiA3cHg7XG5cdFx0bWFyZ2luLWJvdHRvbTogMTRweDtcblx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0YmFja2dyb3VuZC1pbWFnZTogLXdlYmtpdC1ncmFkaWVudChsaW5lYXIsIDAgMCwgMCAxMDAlLCBmcm9tKCNmZmZmZmYpLCB0bygjZjFmMWYxKSk7XG5cdFx0YmFja2dyb3VuZC1pbWFnZTogLXdlYmtpdC1saW5lYXItZ3JhZGllbnQodG9wLCAjZmZmZmZmLCAjZjFmMWYxKTtcblx0XHRiYWNrZ3JvdW5kLWltYWdlOiAtbW96LWxpbmVhci1ncmFkaWVudCh0b3AsICNmZmZmZmYsICNmMWYxZjEpO1xuXHRcdGJhY2tncm91bmQtaW1hZ2U6IC1tcy1saW5lYXItZ3JhZGllbnQodG9wLCAjZmZmZmZmLCAjZjFmMWYxKTtcblx0XHRiYWNrZ3JvdW5kLWltYWdlOiAtby1saW5lYXItZ3JhZGllbnQodG9wLCAjZmZmZmZmLCAjZjFmMWYxKTtcblx0fVxuXG5cdGJ1dHRvbi5idG4gc3BhbiB7XG5cdFx0Zm9udC1zaXplOiAxNnB4O1xuXHRcdGZvbnQtd2VpZ2h0OiA3MDA7XG5cdFx0Y29sb3I6ICM0NDU5NmM7XG5cdH1cblxuXHRidXR0b24ucHJpbWFyeSB7XG5cdFx0d2lkdGg6IDIwMHB4O1xuXHR9XG5cblx0YnV0dG9uLnNpbmdsZSB7XG5cdFx0bWF4LXdpZHRoOiAyNTBweDtcblx0XHR3aWR0aDogMTAwJTtcblx0fVxuXG5cdGJ1dHRvbiB7XG5cdFx0Y29sb3I6IGJ1dHRvbnRleHQ7XG5cdH1cblxuYnV0dG9uLmJ0biBzcGFuLmljb24tdXRpbGl0eS1kb3duIHtcblx0XHRtYXJnaW4tbGVmdDogMTBweDtcblx0XHRtYXJnaW4tcmlnaHQ6IDEwcHg7XG5cdH1cblxuLnBiSGVhZGVyIHtcblx0d2lkdGg6IDEwMCU7XG5cdHBhZGRpbmctdG9wOiAxNXB4O1xuXHR0ZXh0LWFsaWduOiBjZW50ZXI7XG59XG5cbi5wYlRpdGxlIHtcblx0ZGlzcGxheTogbm9uZTtcbn1cblxuLnBiQnV0dG9uIHtcblx0d2lkdGg6IDEwMCU7XG59XG5cbnRhYmxlLmxpc3Qge1xuXHR3aWR0aDogMTAwJTtcbn1cblxudGFibGUubGlzdCB0ciB7XG59XG5cbnRhYmxlLmxpc3QgdGQsIHRhYmxlLmxpc3QgdGgge1xuXHRwYWRkaW5nOiA1cHggM3B4O1xufVxuXG50YWJsZS5saXN0IHRoIHtcblx0Y29sb3I6ICM2OTZlNzE7XG5cdGZvbnQtc2l6ZTogMTJweDtcblx0dGV4dC1hbGlnbjogbGVmdDtcblx0cGFkZGluZy1yaWdodDogMTBweDtcbn1cblxudGFibGUubGlzdCB0ZCB7XG5cdGZvbnQtc2l6ZTogMTRweDtcblx0Y29sb3I6ICMzYzNkM2U7XG5cdHBhZGRpbmctcmlnaHQ6IDEwcHg7XG59XG5cbnRkLmRhdGFDZWxse1xuXHRib3JkZXItdG9wOiAxcHggc29saWQgI2NmZDRkOTtcbn1cblxuLmxhYmVsQ29sIHtcblx0dGV4dC1hbGlnbjogcmlnaHQ7XG5cdHBhZGRpbmctcmlnaHQ6IDEwcHg7XG59XG5cbi5pbnN0cnVjdGlvbnNDb2wge1xuXHRwYWRkaW5nLWxlZnQ6IDEwcHg7XG5cdHBhZGRpbmctdG9wOiA1cHg7XG59XG5cbi5idXR0b25Db250YWluZXIge1xuXHR3aWR0aDogMTAwJTtcblx0bWFyZ2luLXRvcDogN3B4O1xuXHRtYXJnaW4tYm90dG9tOiA3cHg7XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcbn1cblxuLnJlY29yZEVkaXRvckZvcm0ge1xuXHRtYXJnaW4tbGVmdDogMTBweDtcblx0bWFyZ2luLXJpZ2h0OiAxMHB4O1xuXHRwYWRkaW5nLXRvcDogODVweDtcbn1cblxuLnJlY29yZEVkaXRvckZvcm0gdGQge1xuXHRwYWRkaW5nLWJvdHRvbTogM3B4O1xufVxuXG4ucmVjb3JkRWRpdG9yRm9ybSBzZWxlY3QsIC5yZWNvcmRFZGl0b3JGb3JtIGlucHV0W3R5cGU9XCJ0ZXh0XCJdIHtcblx0d2lkdGg6IDEwMCU7XG59XG5cbi5zdGF0dXNDb250YWluZXIge1xuXHRwb3NpdGlvbjogZml4ZWQ7XG5cdHJpZ2h0OiAwO1xuXHRsZWZ0OiAwO1xuXHR0b3A6IDA7XG5cdGJvdHRvbTogMDtcblx0ei1pbmRleDogMTAwMTtcblx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRwYWRkaW5nOiAwcHg7XG5cdG9wYWNpdHk6IDAuNjtcblx0YmFja2dyb3VuZC1jb2xvcjogIzM1NDQ1Mjtcbn1cblxuLnN0YXR1c0ljb24ge1xuXHR3aWR0aDogMzBweDtcblx0aGVpZ2h0OiAzMHB4O1xuXHRjb2xvcjogI2FmYjViOTtcblx0cG9zaXRpb246IGFic29sdXRlO1xuXHR0b3A6NTAlO1xuXHRtYXJnaW46IC0xNXB4IGF1dG8gYXV0bztcblx0LXdlYmtpdC1hbmltYXRpb246IGxvYWRpbmctcm90YXRlIGxpbmVhciAuOHMgaW5maW5pdGU7XG5cdC1tb3otYW5pbWF0aW9uOiBsb2FkaW5nLXJvdGF0ZSBsaW5lYXIgLjhzIGluZmluaXRlO1xuXHRhbmltYXRpb246IGxvYWRpbmctcm90YXRlIGxpbmVhciAuOHMgaW5maW5pdGU7XG5cdC13ZWJraXQtYW5pbWF0aW9uLWZpbGwtbW9kZTogZm9yd2FyZHM7XG5cdC1tb3otYW5pbWF0aW9uLWZpbGwtbW9kZTogZm9yd2FyZHM7XG5cdGFuaW1hdGlvbi1maWxsLW1vZGU6IGZvcndhcmRzO1xuXHRiYWNrZ3JvdW5kOiB1cmwoJ2RhdGE6aW1hZ2Uvc3ZnK3htbDtiYXNlNjQsUEhOMlp5QjRiV3h1Y3owaWFIUjBjRG92TDNkM2R5NTNNeTV2Y21jdk1qQXdNQzl6ZG1jaUlIZHBaSFJvUFNJMk0zQjRJaUJvWldsbmFIUTlJall6Y0hnaUlIWnBaWGRDYjNnOUlqQWdNQ0EyTXlBMk15SStQSEJoZEdnZ1ptbHNiRDBpSTJGbVlqVmlPU0lnWkQwaVRUTXhMalV3TVN3eE5pNDNPREYyTFRRdU9EZzJZeTB4TUM0M09Ea3NNQzB4T1M0MU16WXNPQzQzTkRVdE1Ua3VOVE0yTERFNUxqVXpOV013TERFd0xqYzRPU3c0TGpjME55d3hPUzQxTXpVc01Ua3VOVE0yTERFNUxqVXpOV014TUM0M09EZ3NNQ3d4T1M0MU16UXRPQzQzTkRZc01Ua3VOVE0wTFRFNUxqVXpOV013TFRVdU1qRTBMVEl1TURRNUxUa3VPVFE0TFRVdU16YzNMVEV6TGpRMU1tdzBMamN4T1MwMExqUTRNMk0wTGpRMExEUXVOamN4TERjdU1UWTRMREV3TGprNE15dzNMakUyT0N3eE55NDVNemRqTUN3eE5DNHpPRFV0TVRFdU5qWXlMREkyTGpBME15MHlOaTR3TkRJc01qWXVNRFF6WXkweE5DNHpPRFlzTUMweU5pNHdORGN0TVRFdU5qVTRMVEkyTGpBME55MHlOaTR3TkROak1DMHhOQzR6T0Rnc01URXVOall4TFRJMkxqQTBOeXd5Tmk0d05EY3RNall1TURRM1ZqQXVOV3c1TGpjMk55dzRMakV6T1V3ek1TNDFNREVzTVRZdU56Z3hlaUl2UGp3dmMzWm5QZz09Jykgbm8tcmVwZWF0IGNlbnRlciBjZW50ZXI7XG5cdGJhY2tncm91bmQtc2l6ZTogMTAwJTtcbn1cblxuLm1vZGFsRGlhbG9nV3JhcHBlciB7XG5cdHotaW5kZXg6IDIyO1xuXHRwb3NpdGlvbjogYWJzb2x1dGU7XG5cdHRvcDogMDtcblx0bGVmdDogMDtcblx0cmlnaHQ6IDA7XG5cdGJvdHRvbTogMDtcbn1cblxuLm1vZGFsRGlhbG9nQmFja2dyb3VuZCB7XG5cdHotaW5kZXg6IDIxO1xuXHRvcGFjaXR5OiAuNjtcblx0YmFja2dyb3VuZC1jb2xvcjogIzM1NDQ1Mjtcblx0cG9zaXRpb246IGZpeGVkO1xuXHR0b3A6IDA7XG5cdHJpZ2h0OiAwO1xuXHRib3R0b206IDA7XG5cdGxlZnQ6IDA7XG5cdC13ZWJraXQtdHJhbnNpdGlvbjogb3BhY2l0eSAzMDBtcztcbn1cblxuLm1vZGFsRGlhbG9nIHtcblx0ei1pbmRleDogMjI7XG5cdHBvc2l0aW9uOiBmaXhlZDtcblx0dG9wOjEwMHB4O1xuXHRsZWZ0OjA7XG5cdHJpZ2h0OjA7XG5cdG1hcmdpbjphdXRvO1xuXHRoZWlnaHQ6IGF1dG87XG5cdG1heC1oZWlnaHQ6IDcwJTtcblx0d2lkdGg6IDEwMCU7XG5cdG1heC13aWR0aDogMjkycHg7XG5cdGJvcmRlci1yYWRpdXM6IDVweDtcblx0YmFja2dyb3VuZC1jb2xvcjogI2ZmZmZmZjtcblx0LXdlYmtpdC10cmFuc2l0aW9uOiAtd2Via2l0LXRyYW5zZm9ybSAuM3MgZWFzZS1pbjtcblx0b3ZlcmZsb3c6IHNjcm9sbDtcbn1cblxuLmNsb3NlQnRuIHtcblx0cG9zaXRpb246IGZpeGVkO1xuXHR6LWluZGV4OiAyMjtcblx0cmlnaHQ6IDBweDtcblx0bGVmdDogMHB4O1xuXHR0b3A6IDcwcHg7XG5cdGNvbG9yOiAjZmZmZmZmO1xuXHR3aWR0aDogMTAwJTtcblx0bWF4LXdpZHRoOiAyOTJweDtcblx0Zm9udC1mYW1pbHk6IEFyaWFsO1xuXHRmb250LXdlaWdodDogNjAwO1xuXHRmb250LXNpemU6IDI1cHg7XG5cdGRpc3BsYXk6IGJsb2NrO1xuXHRtYXJnaW46IGF1dG87XG5cdHRleHQtYWxpZ246IHJpZ2h0O1xufVxuXG4ubW9kYWxEaWFsb2cgLmJvZHkge1xuXHRtYXgtaGVpZ2h0OiA3MCU7XG5cdG92ZXJmbG93OiBzY3JvbGw7XG5cdHBhZGRpbmc6IDFweCAxNHB4O1xuXHQtd2Via2l0LWZsZXg6IDE7XG5cdGJvcmRlci1yYWRpdXM6IDVweDtcbn1cblxuLm1vZGFsRGlhbG9nIC5zY3JvbGxXcmFwcGVyIHtcblx0b3ZlcmZsb3c6IHNjcm9sbDtcblx0cG9zaXRpb246IGluaGVyaXQ7XG5cdGhlaWdodDogNzAlO1xuXHQtd2Via2l0LXRhcC1oaWdobGlnaHQtY29sb3I6IHJnYmEoMCwgMCwgMCwgMCk7XG5cdC13ZWJraXQtdXNlci1kcmFnOiBub25lO1xufVxuXG5cbi5tb2RhbERpYWxvZyAuc2Nyb2xsQ29udGVudCB7XG5cdC13ZWJraXQtdHJhbnNpdGlvbjogLXdlYmtpdC10cmFuc2Zvcm0gMG1zIGN1YmljLWJlemllcigwLjMzLCAwLjY2LCAwLjY2LCAxKTtcblx0dHJhbnNpdGlvbjogLXdlYmtpdC10cmFuc2Zvcm0gMG1zIGN1YmljLWJlemllcigwLjMzLCAwLjY2LCAwLjY2LCAxKTtcblx0LXdlYmtpdC10cmFuc2Zvcm0tb3JpZ2luOiAwcHggMHB4O1xufVxuXG4ubW9kYWxEaWFsb2cgYnV0dG9uLFxuLm1vZGFsRGlhbG9nIGlucHV0IHtcblx0ZGlzcGxheTogYmxvY2s7XG5cdG1hcmdpbi10b3A6IDE0cHg7XG5cdHdpZHRoOiAxMDAlO1xufVxuXG4uZG9jdW1lbnRQcmV2aWV3Q29udGFpbmVyIHtcblx0cG9zaXRpb246IGFic29sdXRlO1xuXHR3aWR0aDogMTAwJTtcblx0dG9wOiAxMzVweDtcblx0Ym90dG9tOiAwcHg7XG5cdG92ZXJmbG93OiBzY3JvbGw7XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcblx0LXdlYmtpdC1vdmVyZmxvdy1zY3JvbGxpbmc6IHRvdWNoO1xufVxuXG5pZnJhbWUuZG9jdW1lbnRQcmV2aWV3RnJhbWUge1xuXHR3aWR0aDogMTAwJTtcblx0aGVpZ2h0OiAxMDAlO1xuXHR0ZXh0LWFsaWduOiBjZW50ZXI7XG59XG5cbmltZy5wYWdpbmF0aW9uIHtcblx0YmFja2dyb3VuZC1pbWFnZTogdXJsKCcvaW1nL3BhZ2luYXRpb25BcnJvd3MuZ2lmJyk7XG5cdGJhY2tncm91bmQtcmVwZWF0Om5vLXJlcGVhdDtcblx0bWFyZ2luOiAwIDJweDtcblx0em9vbTogMS40O1xuXHQtbW96LXRyYW5zZm9ybTogc2NhbGUoMS40KTtcblx0LW1vei10cmFuc2Zvcm0tb3JpZ2luOiAwIDA7XG59XG5cbmltZy53YXJuaW5nIHtcblx0YmFja2dyb3VuZC1pbWFnZTogdXJsKCcvaW1nL21zZ19pY29ucy93YXJuaW5nMTYuZ2lmJyk7XG5cdGJhY2tncm91bmQtcmVwZWF0Om5vLXJlcGVhdDtcblx0YmFja2dyb3VuZC1wb3NpdGlvbjogMCAwO1xuXHR3aWR0aDogMTZweDtcblx0aGVpZ2h0OiAxNnB4O1xufVxuXG4ubWVzc2FnZXtcblx0Ym9yZGVyLXJhZGl1czo0cHg7XG5cdGJhY2tncm91bmQtY29sb3I6ICNmZmM7XG5cdGJvcmRlci1zdHlsZTogc29saWQ7XG5cdGJvcmRlci13aWR0aDogMXB4O1xuXHRjb2xvcjogIzAwMDtcblx0cGFkZGluZzogNnB4IDhweCA2cHggNnB4O1xuXHRtYXJnaW46IDRweCAyMHB4O1xuXHRmb250LXNpemU6MTBweDtcbn1cblxuLm1lc3NhZ2UgLm1lc3NhZ2VUYWJsZSAubWVzc2FnZUNlbGwge1xuXHR2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xufVxuXG4ubWVzc2FnZSAubWVzc2FnZVRleHR7XG5cdG1hcmdpbi1sZWZ0OiA4cHg7XG59XG5cbi5tc2dJY29uLCAuZXJyb3JMYXJnZXtcblx0YmFja2dyb3VuZC1pbWFnZTogdXJsKC9pbWcvbXNnX2ljb25zL2Vycm9yMzIucG5nKTtcblx0YmFja2dyb3VuZC1wb3NpdGlvbjogMCAwO1xuXHR3aWR0aDogMzJweDtcblx0aGVpZ2h0OiAzMnB4O1xufVxuXG4ubWVzc2FnZVRleHQgaDEsIC5tZXNzYWdlVGV4dCBoMiwgLm1lc3NhZ2VUZXh0IGgzLCAubWVzc2FnZVRleHQgaDQsIC5tZXNzYWdlVGV4dCBoNSwgLm1lc3NhZ2VUZXh0IGg2IHtcbiAgZm9udC13ZWlnaHQ6IDQwMDtcbiAgZm9udC1mYW1pbHk6IGluaGVyaXQ7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgbWFyZ2luOiAwO1xuICBwYWRkaW5nOiAwO1xufVxuXG4ucmVxdWlyZWRDb25maWd1cmF0aW9uQXR0cmlidXRle1xuICAgIGJvcmRlci1sZWZ0OiAjYzAwIHNvbGlkO1xuICAgIHBhZGRpbmctbGVmdDogMnB4O1xuICAgIG1hcmdpbi1sZWZ0OiAxcHg7XG59XG5cbi5tb2JpbGUge1xuXHRkaXNwbGF5OiBpbml0aWFsO1xufVxuXG4uZGVza3RvcCB7XG5cdGRpc3BsYXk6IG5vbmU7XG59XG5cbi8qIE1vYmlsZSBSZXNraW5uaW5nKi9cblxuYm9keSB7XG5cdGJhY2tncm91bmQtY29sb3I6IHdoaXRlO1xufVxuXG5cbi8qKiogUGhvbmUgc3R5bGVzICoqKi9cblxuQG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAobWluLWRldmljZS13aWR0aCA6IDMyMHB4KSBhbmQgKG1heC1kZXZpY2Utd2lkdGggOiA2NDBweCkge1xuXHQucGhvbmUge1xuXHRcdGRpc3BsYXk6IGluaXRpYWw7XG5cdH1cblxuXHQudGFibGV0IHtcblx0XHRkaXNwbGF5OiBub25lO1xuXHR9XG5cblx0Lmluc3RydWN0aW9uc0NvbCB7XG5cdFx0cGFkZGluZy1sZWZ0OiAzcHg7XG5cdFx0cGFkZGluZy10b3A6IDEwcHg7XG5cdH1cblxuXHQuc2VhcmNoUGFuZWwgdGQge1xuXHRcdHBhZGRpbmc6IDBweDtcblx0fVxuXG5cdC5zZWFyY2hQYW5lbCBsYWJlbCB7XG5cdFx0bWFyZ2luOiAwcHg7XG5cdFx0cGFkZGluZzogMHB4O1xuXHRcdHBhZGRpbmctYm90dG9tOiAycHg7XG5cdH1cblxuXHQuc2VhcmNoUGFuZWwgZGl2LnNlYXJjaEZpZWxkIHtcblx0XHRtYXJnaW4tYm90dG9tOiA1cHg7XG5cdH1cblxuXHQuZ3JvdXBDb250YWluZXIge1xuXHRcdG1hcmdpbi1ib3R0b206IDEwcHg7XG5cdH1cblxuXHQuZ3JvdXBOYW1lIHtcblx0XHRmb250LXdlaWdodDogYm9sZDtcblx0XHR0ZXh0LWRlY29yYXRpb246IG5vbmU7XG5cdH1cblxuXHQubGlzdCB7XG5cdFx0bWFyZ2luOiAxMHB4IDA7XG5cdH1cblxuXHQudW5wYWdpbmF0ZWRIZWFkZXIsXG5cdC5pbnZpc2libGVUZXh0IHtcblx0XHRkaXNwbGF5OiBub25lO1xuXHR9XG5cblx0LnBhZ2VTZWxlY3RvciB7XG5cdFx0d2lkdGg6IDUwcHg7XG5cdFx0bWFyZ2luLXJpZ2h0OiA1cHg7XG5cdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHR9XG5cblx0Lmdyb3VwTGlzdCB7XG5cdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRcdHBhZGRpbmc6IDEwcHggNXB4O1xuXHR9XG5cblx0Lmdyb3VwTGlzdCBhIHtcblx0XHR0ZXh0LWRlY29yYXRpb246IG5vbmU7XG5cdH1cblxuXHQuZ3JvdXBMaXN0IC5ncm91cExpbmtOYW1lIHtcblx0XHR3aGl0ZS1zcGFjZTogbm93cmFwO1xuXHRcdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHRcdHBhZGRpbmc6IDAgMTVweCAzcHg7XG5cdH1cblxuXHQuZ3JvdXBMaXN0IC5kaXNwbGF5ZWRHcm91cCB7XG5cdFx0Ym9yZGVyLWJvdHRvbTogMnB4IHNvbGlkIGJsYWNrO1xuXHRcdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHR9XG5cblx0LnRhYmxlSGVhZGVyIHtcblx0XHRkaXNwbGF5OiBpbmxpbmU7XG5cdH1cblxuXHQucXVvdGVUb3RhbCwgLmdyb3VwVG90YWwge1xuXHRcdHRleHQtYWxpZ246IHJpZ2h0O1xuXHR9XG5cblx0LnF1b3RlVG90YWwge1xuXHRcdGZvbnQtc2l6ZTogMjBweDtcblx0XHRtYXJnaW4tcmlnaHQ6IDE1cHg7XG5cdH1cblxuXHQgaGVhZGVyIC5ncm91cFRvdGFsIHtcblx0XHRmb250LXNpemU6IDE0cHg7XG5cdFx0bWFyZ2luLXJpZ2h0OiA1cHg7XG5cdH1cblxuXHQvKkN1c3RvbSBhY3Rpb25zIG9uIHRoZSBncm91cCovXG5cdGN1c3RvbUFjdGlvbnMgaW5wdXQge1xuXHRcdG1hcmdpbi1yaWdodDogNXB4O1xuXHR9XG5cblx0LypRdW90ZSAmIEdyb3VwIEVkaXRvciAtIGZpZWxkcyBhbmQgYnV0dG9ucyovXG5cdC5jdXN0b21BY3Rpb25zIGlucHV0IHtcblx0XHRkaXNwbGF5OiBibG9jaztcblx0XHRtYXJnaW4tYm90dG9tOiA1cHg7XG5cdH1cblxuXHQvKlRhYmxlcyovXG5cdC50YWJsZUhlYWRlciB7XG5cdFx0Zm9udC1zaXplOiAxLjJlbTtcblx0fVxuXG5cdC50YWJsZUNvbnRhaW5lci5zdGFuZGFyZCB7XG5cdFx0bWFyZ2luLXRvcDogMjBweDtcblx0fVxuXG5cblx0LypNdWx0aS1zZWdtZW50IHRhYmxlKi9cblx0LmRldGFpbFJvdyB0ZC5kYXRhQ2VsbCB7XG5cdFx0Ym9yZGVyLXRvcDogbm9uZTtcblx0fVxuXG5cdC5mb290ZXJSb3cge1xuXHRcdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHR9XG5cblx0LypQYWdpbmF0aW9uIENvbnRyb2xzKi9cblx0LnBhZ2luYXRpb25Db250cm9scyB7XG5cdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHR9XG5cbn1cblxuLyogVGFibGV0IHN0eWxlcyAqL1xuXG5AbWVkaWEgb25seSBzY3JlZW4gYW5kIChtaW4tZGV2aWNlLXdpZHRoIDogNjQxcHgpIGFuZCAobWF4LWRldmljZS13aWR0aCA6IDEwMjVweCkge1xuXHQudGFibGV0IHtcblx0XHRkaXNwbGF5OiBpbml0aWFsO1xuXHR9XG5cblx0LnBob25lIHtcblx0XHRkaXNwbGF5OiBub25lO1xuXHR9XG5cblx0LnNlYXJjaFBhbmVsIHRkIHtcblx0XHRwYWRkaW5nLWxlZnQ6IDVweDtcblx0XHRwYWRkaW5nLXJpZ2h0OiA1cHg7XG5cdFx0dmVydGljYWwtYWxpZ246IHRvcDtcblx0fVxuXG5cdC5ncm91cENvbnRhaW5lciB7XG5cdFx0bWFyZ2luLWJvdHRvbTogMTBweDtcblx0fVxuXG5cdC5ncm91cE5hbWUge1xuXHRcdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHRcdHRleHQtZGVjb3JhdGlvbjogbm9uZTtcblx0fVxuXG5cdC5saXN0IHtcblx0XHRtYXJnaW46IDEwcHggMDtcblx0fVxuXG5cdC51bnBhZ2luYXRlZEhlYWRlcixcblx0LmludmlzaWJsZVRleHQge1xuXHRcdGRpc3BsYXk6IG5vbmU7XG5cdH1cblxuXHQucGFnZVNlbGVjdG9yIHtcblx0XHR3aWR0aDogNjBweDtcblx0XHRtYXJnaW4tcmlnaHQ6IDVweDtcblx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdH1cblxuXHQuZ3JvdXBMaXN0IHtcblx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0cGFkZGluZzogMTBweCA1cHg7XG5cdH1cblxuXHQuZ3JvdXBMaXN0IGEge1xuXHRcdHRleHQtZGVjb3JhdGlvbjogbm9uZTtcblx0fVxuXG5cdC5ncm91cExpc3QgLmdyb3VwTGlua05hbWUge1xuXHRcdHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdFx0cGFkZGluZzogMCAxNXB4IDNweDtcblx0fVxuXG5cdC5ncm91cExpc3QgLmRpc3BsYXllZEdyb3VwIHtcblx0XHRib3JkZXItYm90dG9tOiAycHggc29saWQgIzNjM2QzZTtcblx0XHRmb250LXdlaWdodDogYm9sZDtcblx0fVxuXG5cdC50YWJsZUhlYWRlciB7XG5cdFx0ZGlzcGxheTogaW5saW5lO1xuXHR9XG5cblx0LnF1b3RlVG90YWwsIC5ncm91cFRvdGFsIHtcblx0XHR0ZXh0LWFsaWduOiByaWdodDtcblx0fVxuXG5cdC5xdW90ZVRvdGFsIHtcblx0XHRmb250LXNpemU6IDIwcHg7XG5cdFx0bWFyZ2luLXJpZ2h0OiAxNXB4O1xuXHR9XG5cblx0aGVhZGVyIC5ncm91cFRvdGFsIHtcblx0XHRmb250LXNpemU6IDE2cHg7XG5cdFx0bWFyZ2luLXJpZ2h0OiA1cHg7XG5cdH1cblxuXHQvKkN1c3RvbSBhY3Rpb25zIG9uIHRoZSBncm91cCovXG5cdC5jdXN0b21BY3Rpb25zIHtcblx0XHRtYXJnaW4tbGVmdDogNXB4O1xuXHR9XG5cblx0LmN1c3RvbUFjdGlvbnMge1xuXHRcdG1hcmdpbi1ib3R0b206IDVweDtcblx0fVxuXG5cdC5jdXN0b21BY3Rpb25zIGlucHV0IHtcblx0XHRtYXJnaW4tcmlnaHQ6IDVweDtcblx0fVxuXG5cdC8qVGFibGVzKi9cblx0LnRhYmxlSGVhZGVyIHtcblx0XHRmb250LXNpemU6IDEuMmVtO1xuXHR9XG5cblx0LnRhYmxlQ29udGFpbmVyIHtcblx0XHRwYWRkaW5nLWxlZnQ6IDVweDtcblx0fVxuXG5cdC50YWJsZUNvbnRhaW5lci5zdGFuZGFyZCB7XG5cdFx0bWFyZ2luLXRvcDogMjBweDtcblx0fVxuXG5cdC8qTXVsdGktc2VnbWVudCB0YWJsZSovXG5cdC5kZXRhaWxSb3cgdGQuZGF0YUNlbGwge1xuXHRcdGJvcmRlci10b3A6IG5vbmU7XG5cdH1cblxuXHQuZm9vdGVyUm93IHtcblx0XHRmb250LXdlaWdodDogYm9sZDtcblx0fVxuXG5cdC8qUGFnaW5hdGlvbiBDb250cm9scyovXG5cdC5wYWdpbmF0aW9uQ29udHJvbHMge1xuXHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0fVxuXG5cdC8qIE1vYmlsZSBSZXNraW5uaW5nKi9cblx0LnNiQnRuIHtcblx0XHRmb250LXNpemU6IDE2cHg7XG5cdFx0bWFyZ2luOiAwIDAgMCAxMHB4O1xuXHR9XG5cbn1cblxuXG5cbi8qKiogSWNvbnMgKioqL1xuXG5AZm9udC1mYWNlIHtcblx0Zm9udC1mYW1pbHk6ICdpY29tb29uJztcblx0c3JjOiB1cmwoJ2ZvbnRzL2ljb21vb24uZW90Jyk7XG59XG5AZm9udC1mYWNlIHtcblx0Zm9udC1mYW1pbHk6ICdpY29tb29uJztcblx0c3JjOiB1cmwoZGF0YTphcHBsaWNhdGlvbi94LWZvbnQtdHRmO2NoYXJzZXQ9dXRmLTg7YmFzZTY0LEFBRUFBQUFMQUlBQUF3QXdUMU12TWc2djh5d0FBQUM4QUFBQVlHTnRZWERnZk9hTUFBQUJIQUFBQUVSbllYTndBQUFBRUFBQUFXQUFBQUFJWjJ4NVpsUk1GeG9BQUFGb0FBQTZXR2hsWVdRQVNBazNBQUE3d0FBQUFEWm9hR1ZoQjhJRCt3QUFPL2dBQUFBa2FHMTBlT0lBRE1VQUFEd2NBQUFBNkd4dlkyR2RENUFJQUFBOUJBQUFBSFp0WVhod0FFTUJMUUFBUFh3QUFBQWdibUZ0WlVRWHROWUFBRDJjQUFBQk9YQnZjM1FBQXdBQUFBQSsyQUFBQUNBQUF3UUFBWkFBQlFBQUFwa0N6QUFBQUk4Q21RTE1BQUFCNndBekFRa0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFCQUFDRG1BZ1BBLzhEL3dBUEFBRUFBQUFBQUFBQUFBQUFBQUFBQUFBQWdBQUFBQUFBQ0FBQUFBd0FBQUJRQUF3QUJBQUFBRkFBRUFEQUFBQUFJQUFnQUFnQUFBQ0RnTk9ZQy8vOEFBQUFnNEFEbUFQLy8vK0VnQWhvM0FBRUFBQUFBQUFBQUFBQUJBQUgvL3dBUEFBRUFBQUFBQUFBQUFBQUNBQUEzT1FFQUFBQUFBUUJSQUJFRHJnTnVBRk1BQUFFdUFTSUdCd0VPQVJRV0Z4NEJNalkzQVQ0Qk5DWW5MZ0VpQmc4QkRnRVVGaGNlQVRJMlB3RStBVElXRng0QkZBWUhBUTRCSWlZbkxnRTBOamNCUGdFeUZoY2VBUlFHRHdFZUF4YzNQZ0UwSmljRHJpaG1hbVlwL2lzb0tDZ29LV1pxWmlnQklCa1pHUmtaUDBJL0diUUtDZ29LQ1JjWUZ3bTFCaEFRRUFZR0JnWUcvdUFXTnprM0ZoWVdGaFlCMVJZM09UY1dGaFlXRmdRTEVRd0hBUzRwS1NrcEEyNHBLU2twL2lzb1ptcG1LU2dvS0NnQklCay9RajhaR1JrWkdiVUpGeGdYQ1FvS0NncTBCZ1lHQmdZUUVCQUcvdUVXRmhZV0ZqYzVOeFlCMVJZV0ZoWVdOemszRmdRUElDSWpFaTRwWm1wbUtBQUJBUkQvd0FNUUE4QUFLQUFBQVNFaURnSVZFUlFlQWhjV01qNEJQd0VYSGdNek9nTXpQZ00xRVRRdUFpTUMwUDZBRFJjUkNnSURCUU1EQndZR0F0dmJBZ1FFQkFJQkFnSUNBUU1GQXdJS0VSY05BOEFLRVJjTi9GVURCZ1VFQVFFQkF3TGIyd0VDQWdFQkJBVUdBd09yRFJjUkNnQUFBQUFCQUY3LzRnUGVBNTRBVHdBQUpTY3dMZ0lqSWc0Q0R3RU9BaVluTGdNbkxnTW5MZ0UrQVQ4QlBnTTFOQzRDTHdFdUF5TU9Bd2NPQVI0QkZ4NERNekkrQWpjK0F6YzBMZ0luQTh2dEJBWUdBZ1FJQndZQ1pRUUxDd3NGRWlNaUlSQVFIUnNZQ3dNQ0FRVUVaUU1GQXdJQkFRSUJnZ0lHQ0FrRkZpMHFKUTR5RlRCeFZUbDdlM2cyR2pFdEp4QU9GeEVMQWdNRkJ3VGVkd0lDQWdJRUJRTmNCQVVCQWdNTEdCc2VFQkFoSWlNU0JRc0xDd1JrQXdZSENBUURCUVVFQXUwRUJ3VURBZ2tQRlE0eW1yTytWVGxZUEI4SUVCZ1FEaU1vS3hZRkNnZ0hBZ0FBQUFBQkFDTC84Z1BlQTR3QVRRQUFBUzRESnk0REl5SU9BZ2NPQXdjT0F4VVVIZ0lYSGdNWEhnTVhGUlFlQWhjeUhnRXlNekkrQWo4Qk1qNENOejRETno0RE5UUXVBaWNEMEFRaU1Uc2RKRWhJU0NRa1NFaElKQjA3TWlNRkF3VURBZ0lEQlFNRkl6STdIUW9WRlJVS0F3VUlCUUlEQXdRQ0F3WUdCZ0xNSFRvNk9oMGRPekVpQkFRRkF3SUNBd1VFQXR3ZE55d2RBd1FHQkFJQ0JBWUVBeDBzTngwWExpOHZHQmN1TGkwV0hUY3NIUU1CQWdFQkFhOEZDZ2dIQWdFQkFRSUVBc1VDQXdRREF4d3JOaDBXTGk0dUZ4Y3ZMeTRYQUFBQ0FJbi8zd04zQThBQUdRQXVBQUFCSWc0Q0ZSUWVBakVlQWpZM01ENENOVFF1QWlNUklpNENOVFErQWpNeUhnSVZGQTRDSXdJQVRvbG1PMk4zWXhBYkdod1JaSGhrTzJhSlRpVkJNQndjTUVFbEpVRXdIQnd3UVNVRHdENXJqMUZ1MTZwcER4QUJEeEJwcXRkdVVZOXJQdjNYSERCQkpTVkJNQndjTUVFbEpVRXdIQUFCQUpFQU5nTXpBMm9BTGdBQUNRRStBelU4QVM0Qkp5NERJeUVpRGdJSEFRNEJGQllYQVI0RE15RXlQZ0kzUGdFdUFTY0JBZHdCVGdJRUFnRUJBUUVDQndnS0JmNzNCQWNIQmdMK293UUVCQVFCWFFJR0J3Y0VBUWtGQ2dnSEFnSUJBZ1FFL3JJQjBBRmdBZ1lHQmdNQ0JBUUVBZ1FIQlFNQ0F3UUQvb2tGREF3TUJmNkpBZ1FEQWdNRkNBVUZDZ2tKQkFGaEFBQUFBQUVBelFBMkEyNERhZ0F1QUFBSkFTNERJeUVpRGdJSERnRWVBUmNKQVE0REZSd0JIZ0VYSGdNeklUSStBamNCUGdFMEppY0RidjZrQWdZSEJ3VCs5d1VLQ0FjQ0FnRUNCQU1CVHY2eUFnTUNBUUVCQVFJSENBb0ZBUWtFQndjR0FnRmNCUVVGQlFIbUFYY0RCQU1DQXdVSEJBVUtDZ2tFL3FEK253SUZCZ1lEQWdRRUJBSUZDQVVEQWdNRUFnRjNCUXdNREFVQUFBQUFBUUNSQUdFRGJ3TS9BRVFBQUFFM1BnSW1KeTRESnk0QkRnRVBBU2N1QWdZSERnTUhEZ0VlQVI4QkJ3NENGaGNlQXhjZUFUNEJQd0VYSGdJMk56NEROejRCTGdFdkFRS2V5Z2NJQWdRRkRCZ2FIQThHRHhBUUI4ckxCaEFRRUFZT0d4b1lEQVVFQWdnSHlzc0dDQUlFQlF3WUdoc09CaEFRRUFiTHlnY1FFQThHRHh3YUdBd0ZCQUlJQjhvQjBNb0hFQkFQQmc4Y0doZ01CUVFDQ0FmQndRY0lBZ1FGREJnYUhBOEdEeEFRQjhyTEJoQVFFQVlPR3hvWURBVUVBZ2NHeThzR0NBSUVCUXdZR2h3UEJnOFFFQWJMQUFBQkFJOEF6d054QXM4QUxRQUFBUzRESXlJdUFpTWlEZ0lqSWc0Q0J3NEJGQllYSGdNWEhnRXlOamMrQXpjK0FUUW1Kd054QXdrS0RBWUJPRngyUGo1MlhEZ0JCZ3dMQ1FNREF3TURNSEprUmdNSEVoSVNCd05HWkhJd0F3TURBd0tyQmdrSEJBTUVBd01FQXdRSENRWUdEQXdNQmxTWmRVY0RCZ1lHQmdOSGRabFVCZ3dNREFZQUFnQUEvOUFFQUFPdUFENEFZUUFBQVI0RE16SStBamMrQXpjK0FpWW5MZ01yQVM0REp5NERJeUlPQWdjT0F3Y2pJZzRDQnc0QkhnRVhIZ01YSlJRT0FnY2hMZ00xSXhRZUFoVWVBek1oTWo0Q056UStBalVqQWVjREJnWUdBd01HQmdZREF6cFRYeWdEQXdFQ0FnTUlDUW9HaXdZT0R3MEVCUThVR1E4UEdSUVBCUVVPRGc0Rml3WUtDUWNEQWdJQkF3TW9YMU02QXdGeUJBWUhBLzExQXdjR0JLWU1EZ3dFRUJZYURnTU9EaHNXRUFRTURneW1BVkFDQXdJQkFRSURBZ0l6VkcwN0JBb0xDd1VGQ0FZRElFSTRLUWdJRFFrRkJRa05DQWtxT0VFZ0F3WUlCUVVMQ3dvRU8yMVVNd0plTmwxTlBSWVdQRTFkTjJlYVp6VUNEaGNRQ1FrUkZ3NENOV2VhWmdBQUFBQUNBQWYvd0FQOEE3a0FPUUJpQUFBRkxnTW5MZ01uQVM0Q0JnY09Bd2NPQXdjT0FSNEJGd0VlQXhjZUF4Y2VBakl6TWo0Q056NENKaWNuTGdNbkFUNEROd0VlQXpNeVBnSTNQZ0ltSndFK0F6Y0JIZ01YQndQOER4MGRIUThCQWdNRUF2M01CaEFSRVFnVUppUWlFQkFkR3hvTUJRUUNDQVlDTkFJRkJRVURMbHRiV2l3Q0JBUUVBZ1VJQ0FjRUJRWUNBZ1B3RWlVbEpSSDk4UVVMREEwSEFnQUVDUWtLQlFVSUNBY0VDQWdCQndmK0FnY09EZzRIQWc4R0RBd01Ca3dDTEZsYVdpNERCZ1VGQWdJM0JnY0NCQVFNR2h3ZUVBOGdJaVFUQ0JFUkR3Yjl5UUlFQXdNQkR4NGVIeEFCQVFFQ0JBWUVCUXNMRFFkc0Jnd01EQVlDRVFnUUR3OEgvZjhFQlFNQkFnUUdCQWdTRWhJSUFmNEdEQXdNQmYzckVpTWpJeEpNQUFBQUFBSUFNZ0FtQSs0RFdnQWlBRThBQUFFaUxnSW5BUkVVSGdJWEhnTXpNajRDTno0RE5SRUJEZ01qQVM0REl5SU9BZ2NPQXgwQkhnTVhBUjRETXpJK0FqY0JQZ00zTlRRdUFpY0NFQk1sSkNFUC9xNEVDQW9HT0hCeGNUZzRjWEJ3TndZTENBWCtyZzhoSkNVVEFjQTNiM0J4T0RoeGNIQTRCZ29JQkFFRkNRMEtBV3dJRWhRVkN3c1ZGQklJQVd3S0RRa0ZBUVVJQ3dZQkZRVUtFQXNCQS80a0Jnc0pCZ0VJREFnRUJBZ01DQUVHQ1FzR0FkeisvUXNRQ2dVQ0pBZ01DQVFFQ0F3SUFRWUpDd1l4QkF3T0VRbis3UVlKQmdNREJna0dBUk1KRVE0TUJERUdDd2tHQVFBSEFDTC93QVBlQThBQUJBQUpBQTRBRXdCMkFJUUFpUUFBQVNNVk16VVhJeFV6TlRVakZUTTFCeU1WTXpVQklpNENKelUwTGdJaklnNENIUUVVSGdJWElpNENQUUVxQXlNcUFRNEJCelUwTGdJaklnNENIUUVVSGdJWElpNENQUUVPQXlNT0F4VVJGQjRDRnpJZUFqTXlQZ0l6UGdNMUVUUXVBaWNERGdNaklpNENKeEVoRVNVakZUTTFBa1NKaWMySmlZbUp6WW1KQVhFQ0dDbzdKUXNUR1E0T0dSTUxBd1lJQlJJaEdROElFUkVSQ1JJaklpRVFDeE1aRGc0WkV3c0RCZ2dGRWlFWkR4WWlHUTRCQ1E4TEJnWUxEd2tEUVhLZllHQ2Zja0VEQ1E4TEJnWUxEd2srR0VwZ2RFSkNkR0JLR0FMdi9nQ0ppUUhpaVluTmlZbk5pWW5OaVlrQ0h3UUhDQVF3RGhrVEN3c1RHUTZKQ0E0TkN3VU1GaDhUUXdFQkFTVU9HUk1MQ3hNWkRva0lEZzBMQlF3V0h4TXVBd1VFQXdJSkRSQUovUllKRUEwSkFnd09EQXdPREFJSkRSQUpBdW9KRUEwSkF2MExCQW9KQmdZSkNnUUI1LzRaMW9tSkFBQUFBUUFELzhBRC9RUEFBSE1BQUFFdUF5Y3VBeWN1QXljdUF5TWlEZ0lIRGdNSERnTUhEZ01IRGdFZUFSY2VBeGNPQXdjVUhnSVhIZ0kyTno0RE56NEROeDRERng0REZ4NERNekkrQWpjK0F6VXVBeWMrQXpjK0FpWW5BLzBDQlFjSkJSTkNVbHNzRGlNbUp4SUVDQWtKQlFVS0NRa0VFaWNtSXc0c1cxSkNFd1VKQndVQ0FnSUJBd01NS3pwR0tBc1NEZ2tDQXdZSkJnWU5EUTBHQnc0UER3Z1ZMak0zSGg0M015NFZDQThQRGdjREJnWUdBd1FIQndjREJna0dBd0lKRGhJTEtFWTZLd3dEQXdFQ0FnSTdCUWtJQmdJSURBZ0ZBaWhkVjBjU0JBWUVBZ0lFQmdRU1IxZGRLQUlGQ0F3SUFnWUlDUVVGQ3dzTEJSYzRQa01pTEZOTFFod0hEUXdLQkFRRUFRTURCQWdIQndRS0Zob2ZFeE1mR2hZS0JBY0hDQVFCQWdFQkFRSURBZ1FLREEwSEhFSkxVeXdpUXo0NEZ3VUxDd3NGQUFBREFBRUFCQVAvQTN3QVVBQ1lBTjhBQUNVdUF5Y3VBalkzUGdJbUp5NERJeUlPQWdjT0FSNEJGeDRCRGdFSERnTUhEZ01IQmhRZUFSY2VBek15SGdJek1qNENNekkrQWpjK0FqUW5MZ01uSlRNK0F6Y3VBalkzUGdNM05DNENKeTRESXlJT0FnY09BUjRCRng0QkRnRUhEZ01IRGdNSEJoUWVBUmNlQXpNeUhnSVhQZ00zSlM0REp5NERKeTRDTmpjK0FpWW5MZ01qSWc0Q0J3NERGUjRERng0QkRnRUhIZ01YSGdNWFBnTXpNajRDTno0Q05DY0M3aE1wSlI0SUJnc0VCZ3NjSHdzSURBc2lLQ3NVRkNzb0lnc01DQXNmSEFzR0JBc0dDQjRtS1JNV0Z3d0dCUUVCQWdJQ0JBVUdBd0ViUUd4VFVteEFHd0VEQmdVRUFnSUNBUUVGQnd3WEZmNURBUVFJQ0FnRUl4OEZEd3NPS1RBMEdnSUVCZ1FMSWlnckZCUXJLQ0lMREFnTEh4d0xCZ1FMQmdnZUppa1RGaGNNQmdVQkFRSUNBZ1FGQmdNQkZURlNQZ2dSRVJBSUFzNEZCd3dYRlJNcEpSNElCZ3NFQmdzY0h3c0lEQXNpS0NzVUZDc29JZ3NFQmdRQ0dqUXZLQTRNRHdVZkl3UUlDUWtFQ0JBUkVRZytVVEVWQVFNR0JRUUNBZ0lCQWEwT0dCWVRDQWNRRXhZTklEdzVOaG9ZSVJVSkNSVWhHQm8yT1R3Z0RSWVRFQWNJRXhZWURnOFpHeUFYQXdZR0JRSUNCQU1DQkFRRUJBUUVBZ01FQWdJR0JnWURGeUFiR1E5d0FnVUZCUUl1VlV0QUdSOHRIeElFQ2hRVEV3a1lJUlVKQ1JVaEdCbzJPVHdnRFJZVEVBY0lFeFlZRGc4Wkd5QVhBd1lHQlFJQ0JBTUNBd1FFQVFZTENnb0ZCUmNnR3hrUERoZ1dFd2dIRUJNV0RTQThPVFlhR0NFVkNRa1ZJUmdKRXhNVUNnUVNIeTBmR1VCTFZTNENCUVVGQWdVS0Nnc0dBUVFFQXdJREJBSUNCUVlHQXdBREFBQUFVQVFBQTFBQUdBQXRBRE1BQUFFaElnNENGUkVVSGdJeklUSStBalVSTkM0Q0l3VXlIZ0lWRkE0Q0l5SXVBalUwUGdJekF6Y1hFd0VoQThEOGdBMFhFUW9LRVJjTkE0QU5GeEVLQ2hFWERmMGdGQ01hRHc4YUl4UVVJeG9QRHhvakZHQ0FsZXNCQVAwQUExQUtFUmNOL1lBTkZ4RUtDaEVYRFFLQURSY1JDb0FQR2lNVUZDTWFEdzhhSXhRVUl4b1AvZ0RBYXdFci9vQUFBQUFBQVFEdkFHOEM3d05SQUMwQUFBRTBMZ0luTGdFaUJnY09Bd2NPQVJRV0Z4NERGeDRCTWpZM1BnTTFORDRDTlRRdUFqVUM1UVFIQ1FZR0RBd01CbFdaZFVjREJnWUdCZ05IZFpsVkJnd01EQVlHQ1FjRUF3UURBd1FEQXlrR0RBb0pBd01EQXdNd2NtUkdBd2NTRWhJSEEwWmtjakFEQXdNREF3a0xEQVlCT0Z4MlBqNTJYRGdCQUFJQUFQL2lBLzhEbmdBeEFEWUFBQUV1QXlNaFBnRXVBU2N1QXlNaURnSUhEZ01IRVRNeUhnSVhIZ016TWo0Q1B3RTJMZ0luQVRNUkl4RUQ1QW9ZR1JjSi92VUZCZ1FRRVFVTURROElGaHdSQ2dRR0V6QlpUU1lnTENFYURoRW5Oa3MyZUlWREZnb0ZBUUlIQ3dqOEhLdXJBaW9MREFZQ09HSlFQUk1HQ2djRUV4NG1FaUJIUkRvUy9nc0dDdzhKQ2hZU0RDTmNuM3hLRHh3WkZnbjl1UUptL1pvQUFnQlJBQkVEcmdOdUFERUFZd0FBQVE0QkZCWVhIZ0VVQmc4QkRnRWlKaWN1QVRRMlB3RXVBemNIRGdFVUZoY2VBVEkyUHdFK0FUUW1KeTRCSWdZSEFTNEJJZ1lQQVE0QkZCWVhIZ0V5TmpjK0FUUW1KeTRCTkRZL0FUNEJNaFlYSGdFVUJnOEJIZ01ITno0Qk5DWW5BaDRKQ1FrSkZoWVdGcDhXTnprM0ZoWVdGaFpNQndvRkFRS1NLQ2dvS0NsbWFtWW9vQ2dvS0NnSkdCa1lDUUdSS0dacVppbWZLQ2dvS0FrWEdCY0pDZ29LQ2hZV0ZoYWdGamM1TnhZV0ZoWVdUQWNLQlFFQ2tTa3BLU2tDT1FrWUdSZ0pGamM1TnhhZkZoWVdGaFkzT1RjV1RCTW5LQ2tVa2lobWFtWXBLQ2dvS0tBb1ptcG1LUWtKQ1FrQk5Ta3BLU21mS0dacVppa0pDUWtKQ1JjWUZ3a1dOemszRnA4V0ZoWVdGamM1TnhaTkV5Y29LQlNSS1dacVppZ0FCZ0FRQUVrRDZ3TmFBQndBTVFCR0FHTUFnQUNWQUFBQklUSStBamMrQVRRbUp5NERJeUVpRGdJZEFSUWVBak1ISWc0Q0ZSUWVBak15UGdJMU5DNENJeEVpRGdJVkZCNENNekkrQWpVMExnSWpBU0VpRGdJZEFSUWVBak1oTWo0Q056NEJOQ1luTGdNakVTRWlEZ0lkQVJRZUFqTWhNajRDTno0Qk5DWW5MZ01qQVNJT0FoVVVIZ0l6TWo0Q05UUXVBaU1CWkFKYkNBOE1DQUVDQWdJQ0FRZ01Ed2o5cFFjTUNRVUdDUXdHL3hJZkZ3ME5GeDhTRWg4WERRMFhIeElTSHhjTkRSY2ZFaElmRncwTkZ4OFNBMXI5cFFjTUNRVUdDUXdHQWxzSUR3d0lBUUlDQWdJQkNBd1BDUDJsQnd3SkJRWUpEQVlDV3dnUERBZ0JBZ0lDQWdFSURBOEkvS1lTSHhjTkRSY2ZFaElmRncwTkZ4OFNBcThGQ1EwSUVSY1ZGeEVJRFFrRkJnb05CMlFJRFFrRmlRMFhIeElTSHhjTkRSY2ZFaElmRnczK3pRMFhIeElTSHhjTkRSY2ZFaElmRncwQk13WUtEUWRrQ0EwSkJRVUpEUWdSRnhVWEVRZ05DUVgrelFZS0RRZGtDQTBKQlFVSkRRZ1JGeFVYRVFnTkNRVUNaZzBYSHhJU0h4Y05EUmNmRWhJZkZ3MEFBQUFBQXdBQS8rSUVBQU9lQURzQXJBRFNBQUFCSlM0Q0lpTUhJZzRDRHdFbExnRU9BUWNPQXhVUkZCNENGd1VlQWpJek1qNENQd0VGSGdFK0FUYytBelVSTkM0Q0p3RU9Bd2NPQXdjT0FTNEJKeTRETVRBdUFpY3VBall4TGdNaklpNENKeEVYSGdNWEZnNENKeTRDQmdjT0FoWVhIZ0UrQVRjK0FoWVhIZ01YSGdNek1qNEJNaGNXUGdJek1oNENNUjRERng0REZSUU9BZ2NsRGdNaklpNENKeTRETnpZdUFpY3VBeWN1QVRRMk56NEROeGNSQStIK3RnTUdCd2NEQVFJRUJBUUM4djdPQmcwTURBVUdDUVlEQkFnTEJ3RkpBd1VGQlFNREJnWUdBL0lCTWdZTkRBd0ZCZ2tHQXdVSUN3ZitYZ1lKQ0FrR0JRZ0xFUTBNRHdvR0FnSUZCQUlEQ0E4TUhoVUJDUWdaSVNnWERoMGRHd3plQnc4T0N3TUhCdzhSQXdZYklDQUxFUmNKQncwTkN3VUNCQVFJQ0FnRUJBd01DZ0VCQWdZTENnd0xCd2NJQ0JBUERnWUdFUkFMRXhvU0RRWUdEQW9HQXdnT0N3RmJCdzROQ2dNSURnc0hBUU1IQmdNQkFnVVNIeGNLRnhZVUJ4a1lHQllJR0JzY0RLa0REWTBDQWdFQkFRRUNBWUtFQWdJQkJBUUVDUXNNQnYwNUNBNE1DZ09PQVFJQkFRSUNBb0tEQWdJQkJBTUVDUXNNQmdMSENBNE1DZ1ArQndVTERoRUxDaEFSRkE0TkJBY09CZ1lXRmhBS0RRd0NCU3N3SmdZU0VRd0RCUWNFQVZCZ0RoTVFFUXNZSWhJQ0NBNE1BZ1VFQmc4UUR3WUdCQUVGQkFRRkFRTUVBd1lJREFrSkRRZ0VBd0lDQWdFREF3WUlCZ0lEQkFVRUJCQVVGd29KRVJBUkNTTUlEUWtFQ0FvSkFnY2VJaDhJSFNNVUNnUUNCUWNMQ0IwdktTVVRCZzROREFWSi9ud0FBQUFDQUJEL3dRUGxBNzRBTkFCekFBQVRORDRDTno0RE56VU9Bd2NPQXdjVURnSVZGQjRDRlI0REZ4NERGelV1QXljdUF6VWxMZ01uTGdFaUJnY09BeDBCRGdNSERnTVZGQjRDRng0REZ4VVVIZ0lYSGdNek1qNENOejRETno0Qk5DWW50Z1VIQ1FRWlExSmZORkNUY2tZRERCUVFEQU1MRFFvS0RBb0REQkVWREFOR2NwTlFORjlTUXhrRUNRY0ZBeThDTlZWdU93UUtDd3NGQlFjRUFpdGlWajhJQ2hBTUJnWU1FQW9JUGxaaUt3SUVCd1VDQkFVRkFnTUdCZ1VDTzI1Vk5RSUVCQVFFQWNRMFhFMDlGUVVNREFrQ293TVNFdzhCQXdzUUZBc0NObU9PVzF1UlpqZ0NEQlFRQ3dNQkR4TVNCS1FDQ1F3TUJSWS9UMTQxRXdNNlUxOG9Bd01DQWdNSUNRb0doZ1FQRVE4RUJROFVHQThQR0JNUEJnUVBFUkFGaGdVS0NRZ0RBUUlCQVFFQ0FnSW9YMU02QXdZTkRRd0ZBQUFBQWdBQkFCa0Qvd09IQUZvQXBnQUFKUzRESnk0REp5WStBamMrQWlZbkxnTWpJZzRDQnc0QkhnRVhIZ01IRGdNSERnTUhEZ01IQmhRZUFSY2VBek15SGdJek1qNENNekkrQWpjK0FqUW5MZ01uQlM0REp5NERKeTRESnlZK0FqYytBaVluTGdNaklnNENCeDRERng0QkRnRUhIZ01YSGdNWEhnTVhQZ016TWo0Q056NENOQ2NDY2dZT0RnOElEaHdZRVFNQ0F3Y0tCUm9mQ1F3UkRTUXJNUm9hTVNza0RSRU1DUjhhQlFvSEF3SURFUmdjRGdnUERnNEdHQ2tnRmdZQkFRSUNBZ1VHQmdRQkpsT0RYbDZFVXljQkJBWUdCUUlDQXdFQkJoY2dLUmdCalFZV0lDa1lCZzBPRHdnT0hCZ1JBd0lEQ0FzR0doNEpEUkVOSkNzeEdoZ2xIeHNPRXlBYkdBc1FGQVVrS0FJRkJBUUNDUklSRVFnWUtpUWRDekJGTEJZQkF3WUdCUUlDQWdFQjlnUUhCZ1lEQmd3TkR3a0lFaE1TQ0NoTFJUOGNGaUlZRFEwWUloWWNQMFZMS0FnU0V4SUlDUThOREFZREJnWUhCQThsS3pBYUJBY0dCZ01EQlFRQ0JBVUVCQVVFQWdRRkF3TUdCZ2NFR2pBckpROGdHakFySlE4RUJ3WUdBd1lNRFE4SkNCSVRFZ2dvUzBVL0hCWWlHQTBLRXh3U0NSVWFIeE1iU1Z4dFB3RUNBZ0lCQXdjSUNBVVBJeWdzR0FFRUJBTUNCQVVEQXdZR0J3UUFBd0JEQURZRHdnTnFBQlFBWlFCNkFBQUJJZzRDRlJRZUFqTXlQZ0kxTkM0Q0l5VXVBeWN1QXljdUF5Y3VBeU11QXlNaURnSUhJZzRDQnc0REJ3NERCdzREQnc0QkZCWVhIZ01YSGdNek1qNENOejRETno0Qk5DWW5BU0l1QWpVMFBnSXpNaDRDRlJRT0FpTUNBQ00rTGhzYkxqNGpJejR1R3hzdVBpTUJ3Z0lJQ3cwSEZDZ29LQlFEQmdZSEJBSUtEUThIRml3c0xCWVdLeXNyRlFjUERRb0NCQWNHQmdNVUtDZ29GQWNPQ3dnQkVSQVJFQUVJQ3c0SE1tVmxaVEl6Wm1abU13Y05Dd2dDRGc0T0R2NCtPV1ZMTEN4TFpUazVaVXNzTEV0bE9RSlpHeTQrSXlNK0xoc2JMajRqSXo0dUcxNEhEUW9IQVFJRUF3TUNDUlVWRlFvSERnc0hBZ0lDQVFFQ0FnSUhDdzRIQ2hVVkZRa0NBd01FQWdFSENnMEhWb3lGaVZRSERRb0hBUVlJQmdNREJnZ0dBUWNLRFFkSmtaR1JTUDNqTEV0bE9UbGxTeXdzUzJVNU9XVkxMQUFBQVFBdC8rUUQzZ052QUVNQUFBRTFOQzRDSnk0QkRnRUhEZ01IRGdFVUZoY2VBeGNlQXpNeVBnSTNQZ005QVI0REZ4WVVEZ0VIRGdFZUFUTXlQZ0kxTkM0Q0p3SGVBZ1VJQmdZTkRRMEdTb0ZoT2dJRkJRVUZBanBoZ1VvREJ3Y0hCQU1HQmdZREJnZ0ZBaTllVURvTURSY3VJU01kQnlnaUpHVmRRVm1SdUY4Q2pMa0hEUXNKQXdRREFRUUVNblpvU0FNSEVCQVBCZ1JJYUhZeEFnTUNBUUVCQWdFRENRc05CN2NCQ3hZZ0ZoZ3ZLaU1NRGlzcEhTNVdmRTVjZjFFb0JRQUFBQUVCRVFCdkF4QURVUUF0QUFBQkxnTW5MZ0VpQmdjT0F4VVVEZ0lWRkI0Q0ZSUWVBaGNlQVRJMk56NEROejRCTkNZbkF4QURSM1daVlFZTURBd0dCZ2tIQkFNRUF3TUVBd1FIQ1FZR0RBd01CbFdaZFVjREJ3Y0hCd0lDQTBaa2NqQURBd01EQXdrS0RBWUJPRngyUGo1MlhEZ0JCZ3dMQ1FNREF3TURNSEprUmdNSEVoSVNCd0FEQUEwQVVBUHdBekFBRmdBdEFFUUFBQk1oTWo0Q05UUXVBaU1oSWc0Q0ZSUWVBak1GSVNJT0FoVVVIZ0l6SVRJK0FqVTBMZ0lqRVNFaURnSVZGQjRDTXlFeVBnSTFOQzRDSTFjRFVBOGFGQXNMRkJvUC9MQVBHaFFMQ3hRYUR3TlEvTEFQR2hRTEN4UWFEd05RRHhvVUN3c1VHZy84cmc4YUZBc0xGQm9QQTFJUEdoUUxDeFFhRHdLWkRSVWNEdzhiRkF3TUZCc1BEeHdWRFlvTUZCc1BEeHNVQ3dzVUd3OFBHeFFNL3RRTUZSc1BEeG9UQ3dzVEdnOFBHeFVNQUFBQ0FBRC93QVBuQThBQUtnQS9BQUFURkI0Q016SStBamNCSGdNek1qNENOejRCTkNZbkFUNEROVFF1QWlNaURnSVZNelErQWpNeUhnSVZGQTRDSXlJdUFqVUFQR2lNVUJ3M05EQVdBU0VHRGhBUUNBZ1FEdzRHREF3TURQN2VEaFlQQ0R4b2pGQlFqR2c4Z0NoR1hUVTFYVVlvS0VaZE5UVmRSaWdDUUZDTWFEd0lEeFlPL3Q0R0NRWURBd1lKQmd3Z0lTQU1BU0VXTURRM0hGQ01hRHc4YUl4UU5WMUdLQ2hHWFRVMVhVWW9LRVpkTlFBQ0FBTC93QVArQTc0QkF3RVlBQUFCTGdNbkxnTXhMZ00xTkQ0Q056QStBakUrQVRRbUp5NERKeTRCSWdZSERnTXhEZ01qSWk0Q0x3RXVBeWN1QVNJR0J3NEREd0VPQXlNaUxnSXZBUzRCSWdZSERnTUhEZ0VVRmhjZUF6RWVBeFVVRGdJUEFRNERCdzRCRkJZWEhnTWZBUjRERlJRT0FnOEJEZ0VVRmhjZUF4Y2VBek15UGdJL0FUNERNekllQWhjd0hnSXhIZ01YTWg0Qk1qTTZBVDRCTXo0RFB3RStBek15SGdJZkFSNERNekkrQWpjK0F6YytBVFFtSnk0RE1TNEROVFErQWpjd1BnSTNQZ00zUGdFMEppY0ZJaTRDTlRRK0FqTXlIZ0lWRkE0Q0l3UCtBUWdNRHdrTEhoc1RDaEFNQndFQ0JBSVJGQkVHQlFZR0NCQVJFZ29IRUJFUUJ3a1lGZzhFQ0FnSUJBb1NEd29DQ3dFSURCQUpEQmtaR0F3SkVBd0lBUXNDQ2c4VENnVUpDUWdFUXdjUUVSQUhDaElSRUFnR0JnWUdCaElRQ3dNRUF3SUlEUklLVXdrUURBZ0JBUUVCQVFFSURBOEpVd29TRFFnQ0F3UURNd1lGQmdZSUVCRVNDZ1FJQ0FnRUJBZ0lCd05EQkFnSkNRVUtFdzhLQWdNRUF3RUlEQkFKQmd3TURBWUdEQXdNQmdrUURBZ0JDd0lLRHhJS0JBa0lDQU5GQXdjSUNBUUVDQWdJQkFvU0VSQUlCZ1lGQmdjU0VRd0NCQUlCQnd3UUNoTWJIZ3NKRHd3SUFRRUJBUUgrQWlRL0x4c2JMejhrSkQ4dkd4c3ZQeVFCOFFrUURBZ0JBUVFEQWdJS0R4SUtCQWdJQndNV0doWUhFQkVRQndvU0VSQUlCZ1lGQmdjU0VRd0NCQU1DQncwUkNsVUpEd3dJQVFFQkFRRUJDQXdQQ1ZVS0VRMEhBZ01FQWpRR0JRWUdDQkFSRWdvSEVCRVFCd2dYRlE4RUNBZ0pCQXNURHdvQ0N3RUlEQkFKREJrWkdBd0pFQXdJQVFzQkNnOFRDd1VKQ1FnRVF3Y1FFUkFIQ2hJUkVBZ0RCQU1DQVFNRUF6UUNCQU1DQncwUkNoc2dHZ2tQREFnQkFRRUJBUUVJREE4SlZRb1JEUWNCQWdRQ05RTUVBd0VCQXdRRENCQVJFZ29IRUJFUUJ3a1lGZzhEQndnSUJBb1NEd29DQWdNRUFRRUlEQkFKREJrWkdBemZHeTgvSkNRL0x4c2JMejhrSkQ4dkd3QUNBQUQvOUFRQUEyd0FQZ0J1QUFBQkxnTW5MZ0lHQnc0REhRRWlEZ0lIQmg0Q0Z4WXlQZ0UzUGdNekZSUWVBaGNlQVQ0Qk56NEROejRETlRRdUFpY0JJUkVoTlNJdUFTSWpJZzRDQnc0REZSRVVIZ0lYSGdNek1qNENOejREUFFFT0F3Y1ZBL2NDTWxOc1BBVUtDd3NGQlFnR0ExZVBhRDRHQkFFS0V3NFFJQjBZQ0JvdU9FazBBd1lJQlFVTEN3b0VQR3hUTWdJQ0F3SUJBUUlEQXY3My9ab0J2QThqSkNNUEtWTlRVeWtZS1I0UkVSNHBHQ2xUVTFNcEtWTlRVeWtZS1I0UkRpSWtKQkVDUUFNL1dXTW9Bd01CQWdJRENBa0tCcVUxU1U0WkVoNFlFd1lJQ0EwRkRob1VES2tHQ2drSEF3SUNBUU1ES0dSWlB3SURCZ1lHQXdNR0JnWUQvajBDWm9ZQkFRSUVCZ1FDRlNFckdQMmdHQ3NoRlFJRUJnUUNBZ1FHQkFJVklTc1lpUTRjR3hzTUlBQUFBQUVBbndEaEE0RUM0UUF0QUFBQkxnTW5MZ0VpQmdjT0F3Y09BUlFXRng0RE16SWVBak15UGdJek1qNENOejRCTkNZbkE0RXdjbVJHQXdjU0VoSUhBMFprY2pBREF3TURBd2tMREFZQk9GeDJQajUyWERnQkJnd0tDUU1EQXdNREFUVlVtWFZIQXdZR0JnWURSM1daVkFZTURBd0dCZ2tIQkFNRUF3TUVBd1FIQ1FZR0RBd01CZ0FDQUFELzBBUUFBNjRBUGdCaEFBQVRNeDRERng0RE16SStBamMrQXpjek1qNENOejRCTGdFbkxnTW5MZ01qSWc0Q0J3NERCdzRDRmhjZUF6TUZGQTRDQnlFdUF6VWpGQjRDRlI0RE15RXlQZ0kzTkQ0Q05TUHlpd1VPRGc0RkJROFVHUThQR1JRUEJRUU5EdzRHaXdZS0NRZ0RBZ0lCQXdNb1gxTTZBd01HQmdZREF3WUdCZ01ET2xOZktBTURBUUlDQXdnSkNnWUNad1FHQndQOWRRTUhCZ1NtREE0TUJCQVdHZzRERGc0YkZoQUVEQTRNcGdJMklFRTRLZ2tJRFFrRkJRa05DQWdwT0VJZ0F3WUlCUVVMQ3dzRk8yeFVNd0lDQXdJQkFRSURBZ0l6Vkd3N0JRc0xDd1VGQ0FZRGlUWmRUVDBXRmp4TlhUZG5tbWMxQWc0WEVBa0pFUmNPQWpWbm1tWUFBUUFqLzlBRDNRT3VBRlVBQUNVdUF5Y3VBeWN1QXljbVBnSTNQZ0ltSnk0REl5SU9BZ2NPQVI0QkZ4NERCdzREQnc0REJ3NERCd1llQWhjeUhnSXpNajRDTno0RE16NERKd1BkQ0J3bk1Sd0lFaE1VQ2hRb0loa0ZBd0VJRHdzaEp3d1FGaEV0TlRzZ0h6czFMUkVXRUF3b0lnc1BDQUVEQlJraUtCTUxGUk1SQ0J3eEp4d0lBZ0lHQ2dZQ01XdXNmRDVvVmtVYkd5Y1pEUUVHQ2dZQ0Fod21PekFuRWdVSkNRZ0VDQkVVR0E4S0Z4b2VFVFprWEZNbEhTNGdFUkVnTGgwbFUxeGtOaEVlR2hjS0R4Z1VFUWdFQ0FrSkJSSW5NRHNtQncwTENBSUxEUXNEQlFZREF3WUZBd0lJQ3cwSEFBQUFBQUlBQVAvQkJBQUR3UUFZQUZ3QUFBRVVEZ0lIRVNNUklpNENOVFErQWpzQk1oNENGUUVPQXlNcUFTNEJKeTRESnlZT0FqRVJNRDRDTXpJZUFoY2VBeGNlQXpNNkFUNEJOekkrQWpjK0F6TXlIZ0lWRVE0REJ3RVJEQk1aRFlrT0dSTUxDeE1aRG9rT0dSTUxBdFFMSHlVcUZnZ1JFUkVJS1RvME9TZ25YRkEySURSQ0lnb1ZGUlFKS0RrME9pa0dEUTBOQmdzV0ZSVUtCQWtKQ1FRRUNBZ0lCQWNNQ1FZQkJRY0pCUU45RGhnU0N3SDhpUU4zQ3hJWkRnNFpFd3NMRXhrTy9Pc0VDQWNGQVFJQ0NDb3hMZ3NLQXd3TkFqa0lDZ2dCQWdRQ0N5Y3BKQWdCQWdJQkFnTUNBUUlDQVFFQ0FnRUZDUXdIL2ZVR0NnY0ZBUUFBQUFBRUFBei8rd1FBQTNBQUZnQXRBRVFBZEFBQUV5RXlQZ0kxTkM0Q0l5RWlEZ0lWRkI0Q013VWhJZzRDRlJRZUFqTWhNajRDTlRRdUFpTVJJeUlPQWhVVUhnSTdBVEkrQWpVMExnSWpKU00xTkM0Q0t3RWlEZ0lkQVNNaURnSUhIQUVlQVI4QkhnSXlNem9CUGdFL0FUNENORFV1QXlQeUFyZ1NJQmdPRGhnZ0V2MUlFaUFZRGc0WUlCSUN1UDY1RWlBWURnNFlJQklCUnhJZ0dBNE9HQ0FTK1JJZ0dBNE9HQ0FTK1JJZ0dBNE9HQ0FTL21DVEFnTUVBclVDQkFNQ2t3SURBd0lCQVFFQitRRUNBZ0lCQVFJQ0FnSDVBUUVCQVFJREF3SUN2QThhSVJJU0lCZ09EaGdnRWhJaEdnK2xEaGdnRWhJZ0Z3ME5GeUFTRWlBWUR2NmFEeGtoRWhJZkZ3ME5GeDhTRWlFWkQxWC9BZ1FEQWdJREJBTC9BUUlEQWdJREF3TUI5QUVCQVFFQkFmUUJBd01EQWdJREFnRUFBQUFEQUFEL3dBUUFBOEFBRkFBcEFJRUFBQUVpRGdJVkZCNENNekkrQWpVMExnSWpFU0l1QWpVMFBnSXpNaDRDRlJRT0FpTVREZ01IRGdNSEZBNENLd0VpTGdJMVBnTTNQZ00xTkM0Q0p5NERJeUlPQWdjT0F5c0JJaTRDTlR3RE5UQStBakUrQXpNeUhnSVhIZ01WRkE0Q0J3SUFhcnVMVUZDTHUycHF1NHRRVVl1NmFoQWNGUTBORlJ3UUVCd1ZEUTBWSEJEWkJSRVlIaElJRUE0TEFnVUpEQWRGQncwS0JnRW1ORGdUQkFVREFRTUdDUVlHRGhFVENoRWVHQkFEQVFZSkN3WkhCd3dKQlFFQkFRa2xOMGt1R1Mwb0l3OFBGeEFJQXdZSkJnUEFVSXU2YW1xN2kxQlFpN3RxYXJxTFVQeC9EUlVjRUJBY0ZRME5GUndRRUJ3VkRRSEpDaFlaSEJBSEVCSVVDd2NOQ2dZRkNRd0hLRHN4S3hnRkNnc01CZ2dOREFzR0Jna0dBd3dVR0F3R0NRY0RCUWdNQndFQ0FnSUJBZ0lDSERrdUhRY09GUTRPSUNNbEV3c1ZGQk1KQUFBQ0FBRC93QVFBQThBQUZBQTFBQUFCSWc0Q0ZSUWVBak15UGdJMU5DNENJd0VVRGdJaklTSXVBaWN1QVRRMk56NERNeUV5SGdJVkhnRVVCZ2NDQUdxN2kxQlFpN3RxYXJ1TFVGR0x1bW9CV1FZS0RRZjlsd2NOQ2dZQkFRRUJBUUVHQ2cwSEFta0hEUW9HQWdJQ0FnUEFVSXU2YW1xN2kxQlFpN3RxYXJxTFVQMjlDQTBKQlFVSkRRZ1JJaUlpRVFnTkNRVUZDUTBJRVNJaUloRUFBQUFBQXdBSi8rSUVBQU9lQUNFQU5nQmJBQUFsQVM0REl5SU9BZ2NCRGdFVUZoY2VBek1oTWo0Q05UUXVBaWNGSWk0Q05UUStBak15SGdJVkZBNENJeE1PQXlzQklpNENKeTRESnpRK0FqYytBVElXRng0REZRNERCd1B6L2trRURSQVNDUW9TRHcwRS9rUUVCQVVGQlEwUEVRa0RkdzRaRXdzQ0F3VUQvZzBRSEJVTURCVWNFQkFjRlF3TUZSd1FMQUVJREE0SUF3Y09Dd2dCQmdvSUJ3TUZDUXdIRFJZVkZnMElEQWdFQXdjSUNnWk9BeTBJRFFrRkJRa05DUHpNQ0JFUkVRZ0lEQWtGQ3hJWkRnWUxDZ2tFRHd3VkhCQVFIQlVNREJVY0VCQWNGUXdCR3dnUEN3Y0hDdzhJSWtWRVFSNEhEZ3dKQWdJQ0FnSUNDUXdPQng1QlJFVWlBQUFEQUFIL3dBUUFBOEFBVVFCbUFKc0FBQUUrQXpjK0FpWW5MZ01uTGdNaklnNENCdzRCSGdFWEhnTUhEZ01IRGdNSERnTUhCaFFlQVJjZUF6TXlIZ0k3QVM0RE5UUStBamMrQXpjWElnNENGUlFlQWpNeVBnSTFOQzRDSXhNVURnSXJBUlVVRGdJckFTSXVBajBCSXlJdUFqMEJORDRDT3dFMU5ENENPd0V5SGdJZEFUTXlIZ0lkQVFKRkRCZ1dGQWdORXdnRENBSUZCZ2NFRUM0M1BpRWhQamN1RVJVUERDY2hDdzhKQWdNRUZ5QW1FZ29URWhFSUhpOGlGd2NCQVFNQ0FnVUdCd1FDSzJPaWVTVU9GZzhJQ0JFYUVnZ1RGQlVLdXpWZFJTZ29SVjAxTlYxR0tDaEdYVFdhQXdVR0JGVURCUVlFUkFRR0JRTlZCQVlGQXdNRkJnUlZBd1VHQkVRRUJnVURWUVFHQlFNQjF3c1ZGaGtQR0RjNU9Sc0hEZzRPQmh3c0h4QVFIeXdjSkZGWllUUVFIUmtXQ1EwV0V4QUlCQWdJQ1FVVExEUTdJZ01IQndjREF3VUVBd1lIQmhRc0x6SWFIRFl6THhVS0ZSUVRDQmNvUlYwMU5WMUZLQ2hGWFRVMVhVVW8vdDRFQmdVRFZRUUdCUU1EQlFZRVZRTUZCZ1JFQkFZRkExVUVCZ1VEQXdVR0JGVURCUVlFUkFBQkFGa0FHUU9sQTJVQVJBQUFBUzRESXlFUk5DNENKeTRCSWdZSERnTVZFU0VpRGdJSERnRVVGaGNlQXpNaEVSUWVBaGNlQVRJMk56NEROUkVoTWo0Q056NEJOQ1luQTZVQkNBd1FDZjcrQmdzUENCUW9LQ2dVQ0E4TEJ2Ny9DUkFNQ0FFQ0FnSUNBUWdNRUFrQkFRWUxEd2dVS0Nnb0ZBZ1BDd1lCQWdrUURBZ0JBZ0lDQWdJTkNROExCZ0VCQ1JBTUNBRUNBZ0lDQVFnTUVBbisvd1lMRHdrVUp5Y25GQWtQQ3diKy9na1FEQWdCQWdJQ0FnRUlEQkFKQVFJR0N3OEpGQ2NuSnhRQUFBRUFBZ0ExQkFBRFR3QldBQUFUQVQ0RE16SWVBaGNlQXhjZUF4VVVEZ0lIRGdNUEFTRXlIZ0lYSGdNVkZBNENCdzRESXlFWEhnTVhIZ01YSGdNVkZBNENCdzRESXlJdUFpY0JBZ0Y5Q0JFU0ZBc0xGQklSQ0FRSEJnVUNBZ01DQVFRSUN3Z0VDUW9LQlZ3Q0Nnc1VFaEVJQ0FzSUJBUUlDd2dJRVJJVUMvMzJYQVVLQ2drRUJBY0dCUUlDQXdJQkJBZ0xDQWdSRWhRTEN4UVNFUWorZ3dIREFYSUhDZ2NEQXdjS0J3UUlDUWtGQlFrSkNRVUxFeEVRQndVS0Nnb0ZXQVFIQ3djSEVCSVRDd29URWhBSEJ3c0hCRmdGQ2dvS0JRUUlDQWtGQlFrSkNRUUxFeElRQndnTENBUUVDQXNJQVhBQUFBQUNBSW4vMGdONEE3QUFMZ0E4QUFBQk5DNENLd0UxTkM0Q0l5SU9BaDBCSXlJT0FoVVJGQjRDRng0RE16SStBamMrQXpVUkpUVTBQZ0l6TWg0Q0hRRWpBM2dMRXhrT0lTZElaVDA5WlVnbkpBNFlFZ29JRGhRTUtGQlJVU2dvVUZCUEtBd1ZEd24rSWdZVktTSWlLUlVHelFHckRoc1VES3MrWlVnbkowaGxQcXNORmh3Ty9wSU1GaElNQWdrT0NRUUVDUTRKQWd3U0Znd0JjVXFyRUNRZUZCUWVKQkNyQUFBQkFBWUFLd1A1QTA4QUpBQUFBVDRCTkNZdkFTNEJJZ1lIQVNjdUFTSUdEd0VPQVJRV0Z3RWVBek15UGdJM0FRUDVBd01EQTVVRENBZ0lBLzQ3eGdNSUNBZ0RsUU1EQXdNQmFnSUVCQVFDQWdRRUJBSUNhZ0tiQXdnSUNBT1ZBd01EQS80NXh3TURBd09WQXdnSUNBUCtsZ0VDQWdFQkFnSUJBbW9BQVFCZkFDSURvQU94QUMwQUFBRTFJZzRDRlJRZUFqTXlQZ0kxTkM0Q0p6Y2VBeFVVRGdJaklpNENOVFErQWpNMUZ3Y0NBRUZ5VlRFeFZYSkJRWEpWTVF3V0lCUk1HeW9lRUVKeG1GWldtSEZCUVhHWVZweWNBcTFPTVZWeVFVRnlWVEV4VlhKQkh6czNNUlZJSEVGSlR5cFdtSEZCUVhHWVZsYVljVUZPZ29JQUFBQUFBUUFrLzhZRDNnUEFBRHdBQUNVdUF6VTBMZ0lqSWc0Q0ZSUU9BZ2NPQXhjZUF4Y2VBeGNlQXpNeVBnSTNQZ00zUGdNM05pNENKd1BHQWk4MkxUaFliRFEwYkZnNExUWXZBZ2NLQndNQkFRY0xEZ2dDS1V0cVFnY2NKaThhR2k4bUhBZENha3NxQWdnTkNnY0JBUUlHQ2dmcUFpMVloRmwwa1ZBY0hGQ1JkRmlFV1MwQ0JnNFFFUWtKRVE0TEJBRVFGUllIR0NnZEVSRWRLQmdIRmhVUUFRUUxEaEFKQ1JJUURnWUFBQU1BQVAvQUJBQUR3QUFVQUNrQVVRQUFBU0lPQWhVVUhnSXpNajRDTlRRdUFpTVZNaDRDRlJRT0FpTWlMZ0kxTkQ0Q014TWpJaTRDTlRRK0FqYzFMZ00xTkQ0Q093RXlIZ0lWQng0REZSUU9BaU1DQUdxN2kxQlFpN3RxYXJ1TFVGQ0x1Mm9SSFJZTkRSWWRFUkVkRmcwTkZoMFJPM2dMRXc0SUJRa01Cd2NNQ1FVSURoTUxXQXNURGdnQkJ3d0lCUWdPRXdzRHdGQ0x1MnBxdTR0UVVJdTdhbXE3aTFDM0RSWWRFUkVkRmcwTkZoMFJFUjBXRGYyUUNBNFRDd2dQRFFvRHVBTUtEUThJQ3hNT0NBZ09Fd3ZwQXdvTUR3Z0xFdzRJQUFBQkFCWC8wUVB6QTY4QXB3QUFBUlFPQWlzQkZ4NEJGQVlIRGdNaklpNENMd0VqRlJjZUFSUUdCdzRESXlJdUFpOEJGUlFPQWlNaUxnSTlBUWNPQVNJbUp5NEJORFkvQVRVakJ3NERJeUl1QWljdUFUUTJQd0VqSWk0Q05UUStBanNCSnk0Qk5EWTNQZ0V5Rmg4Qk16VW5MZ0UwTmpjK0FUSVdId0UxTkQ0Q016SWVBaDBCTno0Qk1oWVhIZ0VVQmc4QkZUTTNQZ0V5RmhjZUFSUUdEd0V6TWg0Q0ZRUHpDQTRUQ3BCeENBZ0lDQVFKQ2dvRkJRc0tDUVM3WUw4SUNBZ0lCQWtLQ3dVRkNnb0pCSElJRGhNS0N4TU9DSElJRkJVVUNBZ0lDQWkvWUx3RUNRb0tCUVVLQ2drRUNBZ0lDSENQQ3hNT0NBZ09Fd3VQY0FnSUNBZ0lGQlVVQ0xwaHZ3Z0lDQWdJRkJVVUNISUlEaE1MQ2hNT0NISUlGQlVVQ0FnSUNBaS9ZTHNJRkJVVUNBZ0lDQWh3andvVERnZ0J3QXNURGdoeUNCUVZGQWdFQmdRQ0FnUUdCTDlodXdnVUZSUUlCQVlFQWdJRUJnUndqd3NURGdnSURoTUxqM0FJQ0FnSUNCUVZGQWk4WUw4RUJnUUNBZ1FHQkFnVUZSUUljZ2dPRXdzS0V3NEljZ2dVRlJRSUNBZ0lDTDlndXdnVUZSUUlDQWdJQ0hHUUNoTU9DQWdPRXdxUGNBZ0lDQWdJRkJVVUNMdGd2d2dJQ0FnSUZCVVVDSElJRGhNS0FBZ0FBQUFYQkFBRGFRQTZBRDhBUkFCSkFFNEFVd0JZQUYwQUFBRUhKd2NuQnljSEp3Y25CeWNISndjbkJ5Y0hFUlFPQWlNaUxnSTFQQUVRTkRFaURnSVZFUlFlQWpNaE1qNENOUkV3TGdJbkFTRTFJUlUxSVRVaEZUVWhOU0VWQlNFMUlSVTFJVFVoRlRjaE5TRVZOU0UxSVJVRDBDc3ZNVEluTFNrcEt5d3lMeXdxSkN3bkxTWUdDUXNGQ0E4TUJ3b1pGZzhJRFJJS0E1d0tFZzBJRFJFUUF2NUsvdGtCSi83WkFTZisyUUVuQVliK3d3RTkvc01CUFFIK3dnRSsvVklDcmdObUtDb3FLaW9xS2l3c0tpb3BLU2NuS2lvcUt2MURDeEFLQkFnTURnY0gzUUVEMWdVS0R3cjlNd29TRFFnSURSSUtBdmNMRGcwQy9TaElTSHRKU1hsTFMvUklTSHRKU1h0SlNaS1Rrd0FBQUFFQUFnRmFBLzBDSmdBZ0FBQUJOQzRDSXlFaURnSUhEZ0VVRmhjZUF6TWhNajRDTlQ0Qk5DWW5BLzBHQ2cwSC9FOEhEUW9HQVFFQkFRRUJCZ29OQndPeEJ3MEtCZ0lDQWdJQ0F3Z05DUVVGQ1EwSUVTSWlJaEVJRFFrRkJRa05DQkVpSWlJUkFBQUFBZ0RILzhBRE9RUEFBQlFBYkFBQUpTSU9BaFVVSGdJek1qNENOVFF1QWlNVExnTWpJZzRDQnhRT0FqRWNBUVlVRlJRZUFqc0JNajRDTno0RE16SWVBaGNlQXhVVURnSUhEZ01IRkI0Q093RXlQZ0kxUGdNM1BnTTNQZ00xTkM0Q0p3SG5GaWdlRWhJZUtCWVdLQjRTRWg0b0Z2b1ZNVGcvSTBCblRUTU1BUUVCQVFjTkVRcGtDQThNQ1FJRUZ5RXFHQThhRnhRSUNBd0lCQUlFQndZYVRrbzJBZ2dORWdwaENoSU5Cd01QRkJjTEdTb2hHQWNJRFFrRkRCWWhGWnNTSGlnV0ZpZ2VFaEllS0JZV0tCNFNBdGdVSFJNS0tVRlFKd0VEQXdJQ0F3TURBZ29SREFZRkNRMElFU0ljRVFVSkRRZ0lFQkVTQ3dnUUR3OEhJVDFFVXpnS0VRMEhDQTRTQ2c4Y0dSWUtGaWdqSHcwTkd4d2REeG8wTVM0VUFBQUFBd0J0QVYwRGt3SWxBQlFBS1FBK0FBQVRGQjRDTXpJK0FqVTBMZ0lqSWc0Q0ZTRVVIZ0l6TWo0Q05UUXVBaU1pRGdJVkpUSWVBaFVVRGdJaklpNENOVFErQWpOdEVCc2xGUlVsR3hBUUd5VVZGU1ViRUFFdkVCc2xGUlVsR3hBUUd5VVZGU1ViRUFHVEZTVWJFQkFiSlJVVkpSc1FFQnNsRlFIQkZTVWJFQkFiSlJVVkpSc1FFQnNsRlJVbEd4QVFHeVVWRlNVYkVCQWJKUlZrRUJzbEZSVWxHeEFRR3lVVkZTVWJFQUFBQUFBQkFCdi8rUVBqQTRrQWlnQUFBUTRESXpBcUFpTWlMZ0luTGdNbkpqNENQd0V1QXljdUF3Y09Bd2NPQXdjR0hnSVhIZ01YRmo0Q056NEJIZ0VYSGdFT0FROEJEZ01IQmk0Q0p5NERKeTRDTkRjK0F6YytBemMrQXpjK0FqSXpNaDRDRng0REZ6YytBaklYSGdNVkZnNENCd1BOQVFZSkN3WURCUWdGR2x0eGZ6NEZDUWNGQVFFQkJBY0VoZ1lNRFEwSERSd2RIUThQSFJ3YkRRNFhFZzRFQ1FNWEt4NFBJeVlvRlJVcUtTa1VEQmtYRXdZRkFnVU1DUUVZT0R3L0h5QkFQejBkSGpjeEtSQVFGZ3dHQXdnTERnZ0pGQlVYREJnK1JVb2xDUkVSRVFrZE9UYzFHQkVnSGh3TVpRUUpDZ29GQlFrSEJBb0VEUThCQVlrR0NnZ0VBZ29VRWdFRkNBa0ZCUW9KQ0FOWkJnd0xDZ1FJREFjQ0FnRUlEUklMREJrYkhSQWVSMFpBRnd3VERnb0NBZ0VHRFFvR0FRZ1JEQW9XRlJNSEFSSWZGdzRCQVFnUkdoRVJLakUzSGg1QlJVZ2tFaU1pSVJBUUhod2FEQmtxSUJZRkFRSUJDQThXRHdvWEdSd1BkZ1FHQXdJQ0JnZ0pCVTZlZ0ZNRUFBRUFBUC9CQkFBRHdRQkNBQUFGSWk0Q0p5VU9BeU1pTGdJMU5ENENNekllQWhjbE5UUStBak15SGdJVkZBNENJeUl1QWljRkZRVStBek15SGdJVkZBNENJd05FSXo0eElRYituQXNaR3gwUEowUXpIaDR6UkNjUEhSc1pDd0ZoSGpORUp5ZEVNeDRlTTBRbkR4MGJHUXYrbndGSERSNGlKUlFuUkRNZUhqTkVKejhYS1RraHV3Z05DUVVlTTBRbkowUXpIZ1VKRFFpNkFpZEVNeDRlTTBRbkowUXpIZ1VKRFFpNkJLME5GUTRJSGpORUp5ZEVNeDRBQUFBQUFnQUEvOEFFQUFQQUFCUUFPUUFBQVNJT0FoVVVIZ0l6TWo0Q05UUXVBaU1KQVE0REl5SXVBaThCTGdFME5qOEJQZ0V5Rmg4QkFUNEJNaFlmQVI0QkZBWUhBZ0JxdTR0UVVJdTdhbXE3aTFCUWk3dHFBVDcrZXdFQ0FnTUJBUU1DQWdIa0FnSUNBbDRDQlFVRkFud0JIZ0lGQlFVQ1hnSUNBZ0lEd0ZDTHUycHF1NHRRVUl1N2FtcTdpMUQraXY1N0FRRUJBUUVCQVFIa0FnVUZCUUplQWdJQ0FuMEJIZ0lDQWdKZUFnVUZCUUlBQUFBQUJBQWkvL01EM2dPTkFFMEFuZ0RaQVNvQUFBRXVBeWN1QXlNaURnSUhEZ01IRGdNVkZCNENGeDRERng0REZ4VVVIZ0lYTWg0Qk1qTXlQZ0kvQVRJK0FqYytBemMrQXpVMExnSW5BU0l1QWljdUFqUTFORDRDTXpvQkhnRVhIZ016TWo0Q05UUXVBalUwUGdJek1oNENGeDRDRkJVVURnSWpLZ0V1QVNjdUF5TWlEZ0lWRkI0Q0ZSUU9BaU1sRkE0Q0l5SXVBajBCQnc0REl5SXVBaThCRlJRT0FpTWlMZ0k5QVRRK0FqTTJIZ0lmQVRjK0F6TTJIZ0lkQVJjaUxnSW5MZ0kwTlRRK0FqTTZBUjRCRng0RE16SStBalUwTGdJMU5ENENNekllQWhjZUFoUVZGQTRDSXlvQkxnRW5MZ01qSWc0Q0ZSUWVBaFVVRGdJakE5QUVJakU3SFNSSVNFZ2tKRWhJU0NRZE96SWpCUU1GQXdJQ0F3VURCU015T3gwS0ZSVVZDZ01GQ0FVQ0F3TUVBZ01HQmdZQ3pCMDZPam9kSFRzeElnUUVCUU1DQWdNRkJQMUtEQmtXRWdRQkFRRUVCZ2dFQWdNREF3RUZEQTBQQ0FrT0NRVW1MaVlMRlI0VENSWVZFUVFCQVFFRUJnZ0VBUU1EQXdFR0RBd01CZ2NMQ0FRbUxpWUtGU0FXQVZ3RUJnZ0ZCUWdHQkRvQkFnTUVBZ0lFQXdJQk9nUUdDQVVGQ0FZRUJBY0pCUWdPREFrRExDd0NCZ2dLQlFnUERBZDJEQmtXRWdRQkFRRUVCZ2dFQWdNREF3RUZEQTBQQ0FrT0NRVW1MaVlMRlI0VENSWVZFUVFCQVFFRUJnZ0VBUU1EQXdFR0RBd01CZ2NMQ0FRbUxpWUtGU0FXQXQwZE55d2RBd1FHQkFJQ0JBWUVBeDBzTngwWExpOHZHQmN1TGkwV0hUY3NIUU1CQWdFQkFhOEZDZ2dIQWdFQkFRSUVBc1VDQXdRREF4d3JOaDBXTGk0dUZ4Y3ZMeTRYL3Q4RUJ3b0hBUU1EQXdFRkNBWURBUUVCQkFZRUFnUUhDUVVPQ2d3YUhnMFlFZ29EQmdrR0FRTURBd0VGQ0FVREFRRUJBd1VEQVFNR0NBVU5DUTBhSGc4WkVnb1pCUWdHQkFRR0NBV0Jqd0lEQWdFQkFnTUNqNEVGQ0FZRUJBWUlCYWNGQ1FjRUFRRUZDUWRzYkFVSUJRTUJBZ1lMQ0tjWkJBY0tCd0VEQXdNQkJRZ0dBd0VCQVFRR0JBSUVCd2tGRGdvTUdoNE5HQklLQXdZSkJnRURBd01CQlFnRkF3RUJBUU1GQXdFREJnZ0ZEUWtOR2g0UEdSSUtBQUFBQUFNQXdQKy9BMEFEdndBWUFCMEFNZ0FBQVJFVURnSWpJU0l1QWpVUk5ENENNeUV5SGdJVkJ5RVJJUkVETkM0Q0l5SU9BaFVVSGdJek1qNENOUU5BQ2hFWERmNEFEUmNSQ2dvUkZ3MENBQTBYRVFwci9sVUJxNVVLRVJjTkRSY1JDZ29SRncwTkZ4RUtBMy84Z0EwWEVRb0tFUmNOQTRBTkZ4RUtDaEVYRFd2OXF3SlYvU3NORnhFS0NoRVhEUTBYRVFvS0VSY05BQUFBQVFBQUFBRUFBQ0JUcWtaZkR6ejFBQXNFQUFBQUFBRE9sR0pkQUFBQUFNNlVZbDBBQVArL0JBQUR3UUFBQUFnQUFnQUFBQUFBQUFBQkFBQUR3UC9BQUFBRUFBQUFBQUFFQUFBQkFBQUFBQUFBQUFBQUFBQUFBQUFBT2dBQUFBQUNBQUFBQkFBQVVRUUFBUkFFQUFCZUJBQUFJZ1FBQUlrRUFBQ1JCQUFBelFRQUFKRUVBQUNQQkFBQUFBUUFBQWNFQUFBeUJBQUFJZ1FBQUFNRUFBQUJCQUFBQUFRQUFPOEVBQUFBQkFBQVVRUUFBQkFFQUFBQUJBQUFFQVFBQUFFRUFBQkRCQUFBTFFRQUFSRUVBQUFOQkFBQUFBUUFBQUlFQUFBQUJBQUFud1FBQUFBRUFBQWpCQUFBQUFRQUFBd0VBQUFBQkFBQUFBUUFBQWtFQUFBQkJBQUFXUVFBQUFJRUFBQ0pCQUFBQmdRQUFGOEVBQUFrQkFBQUFBUUFBQlVFQUFBQUJBQUFBZ1FBQU1jRUFBQnRCQUFBR3dRQUFBQUVBQUFBQkFBQUlnUUFBTUFBQUFBQUFBb0FqQURJQVRvQnBnSG9BalFDZ0FMcUF5NER0Z1JLQkw0RmRBWVVCMFlIbGdmYUNDd0l3Z21PQ3JJTFVBdzBETndOUGcyQ0RlSU9QQStxRUVRUWlCRU9FWWdTQ0JLa0Uwd1RuQlFlRk9vVlRoWElGaHdXV2hhY0Z2SVhZQmhDR013WkFCbVFHZWdhcGhzRUcxNGM0QjBzQUFBQUFRQUFBRG9CS3dBSUFBQUFBQUFDQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUE0QXJnQUJBQUFBQUFBQkFBNEFBQUFCQUFBQUFBQUNBQTRBUndBQkFBQUFBQUFEQUE0QUpBQUJBQUFBQUFBRUFBNEFWUUFCQUFBQUFBQUZBQllBRGdBQkFBQUFBQUFHQUFjQU1nQUJBQUFBQUFBS0FDZ0FZd0FEQUFFRUNRQUJBQTRBQUFBREFBRUVDUUFDQUE0QVJ3QURBQUVFQ1FBREFBNEFKQUFEQUFFRUNRQUVBQTRBVlFBREFBRUVDUUFGQUJZQURnQURBQUVFQ1FBR0FBNEFPUUFEQUFFRUNRQUtBQ2dBWXdCcEFHTUFid0J0QUc4QWJ3QnVBRllBWlFCeUFITUFhUUJ2QUc0QUlBQXdBQzRBTUFCcEFHTUFid0J0QUc4QWJ3QnVhV052Ylc5dmJnQnBBR01BYndCdEFHOEFid0J1QUZJQVpRQm5BSFVBYkFCaEFISUFhUUJqQUc4QWJRQnZBRzhBYmdCSEFHVUFiZ0JsQUhJQVlRQjBBR1VBWkFBZ0FHSUFlUUFnQUVrQVl3QnZBRTBBYndCdkFHNEFBQUFBQXdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBPT0pIGZvcm1hdCgndHJ1ZXR5cGUnKSxcblx0XHQgdXJsKGRhdGE6YXBwbGljYXRpb24vZm9udC13b2ZmO2NoYXJzZXQ9dXRmLTg7YmFzZTY0LGQwOUdSZ0FCQUFBQUFEOUVBQXNBQUFBQVB2Z0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFCUFV5OHlBQUFCQ0FBQUFHQUFBQUJnRHEvekxHTnRZWEFBQUFGb0FBQUFSQUFBQUVUZ2ZPYU1aMkZ6Y0FBQUFhd0FBQUFJQUFBQUNBQUFBQkJuYkhsbUFBQUJ0QUFBT2xnQUFEcFlWRXdYR21obFlXUUFBRHdNQUFBQU5nQUFBRFlBU0FrM2FHaGxZUUFBUEVRQUFBQWtBQUFBSkFmQ0EvdG9iWFI0QUFBOGFBQUFBT2dBQUFEbzRnQU14V3h2WTJFQUFEMVFBQUFBZGdBQUFIYWRENUFJYldGNGNBQUFQY2dBQUFBZ0FBQUFJQUJEQVMxdVlXMWxBQUE5NkFBQUFUa0FBQUU1UkJlMDFuQnZjM1FBQUQ4a0FBQUFJQUFBQUNBQUF3QUFBQU1FQUFHUUFBVUFBQUtaQXN3QUFBQ1BBcGtDekFBQUFlc0FNd0VKQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFnNWdJRHdQL0EvOEFEd0FCQUFBQUFBQUFBQUFBQUFBQUFBQUFBSUFBQUFBQUFBZ0FBQUFNQUFBQVVBQU1BQVFBQUFCUUFCQUF3QUFBQUNBQUlBQUlBQUFBZzREVG1Bdi8vQUFBQUlPQUE1Z0QvLy8vaElBSWFOd0FCQUFBQUFBQUFBQUFBQVFBQi8vOEFEd0FCQUFBQUFBQUFBQUFBQWdBQU56a0JBQUFBQUFFQVVRQVJBNjREYmdCVEFBQUJMZ0VpQmdjQkRnRVVGaGNlQVRJMk53RStBVFFtSnk0QklnWVBBUTRCRkJZWEhnRXlOajhCUGdFeUZoY2VBUlFHQndFT0FTSW1KeTRCTkRZM0FUNEJNaFlYSGdFVUJnOEJIZ01YTno0Qk5DWW5BNjRvWm1wbUtmNHJLQ2dvS0NsbWFtWW9BU0FaR1JrWkdUOUNQeG0wQ2dvS0Nna1hHQmNKdFFZUUVCQUdCZ1lHQnY3Z0ZqYzVOeFlXRmhZV0FkVVdOemszRmhZV0ZoWUVDeEVNQndFdUtTa3BLUU51S1NrcEtmNHJLR1pxWmlrb0tDZ29BU0FaUDBJL0dSa1pHUm0xQ1JjWUZ3a0tDZ29LdEFZR0JnWUdFQkFRQnY3aEZoWVdGaFkzT1RjV0FkVVdGaFlXRmpjNU54WUVEeUFpSXhJdUtXWnFaaWdBQVFFUS84QURFQVBBQUNnQUFBRWhJZzRDRlJFVUhnSVhGakkrQVQ4QkZ4NERNem9ETXo0RE5SRTBMZ0lqQXREK2dBMFhFUW9DQXdVREF3Y0dCZ0xiMndJRUJBUUNBUUlDQWdFREJRTUNDaEVYRFFQQUNoRVhEZnhWQXdZRkJBRUJBUU1DMjlzQkFnSUJBUVFGQmdNRHF3MFhFUW9BQUFBQUFRQmUvK0lEM2dPZUFFOEFBQ1VuTUM0Q0l5SU9BZzhCRGdJbUp5NERKeTRESnk0QlBnRS9BVDRETlRRdUFpOEJMZ01qRGdNSERnRWVBUmNlQXpNeVBnSTNQZ00zTkM0Q0p3UEw3UVFHQmdJRUNBY0dBbVVFQ3dzTEJSSWpJaUVRRUIwYkdBc0RBZ0VGQkdVREJRTUNBUUVDQVlJQ0JnZ0pCUll0S2lVT01oVXdjVlU1ZTN0NE5ob3hMU2NRRGhjUkN3SURCUWNFM25jQ0FnSUNCQVVEWEFRRkFRSURDeGdiSGhBUUlTSWpFZ1VMQ3dzRVpBTUdCd2dFQXdVRkJBTHRCQWNGQXdJSkR4VU9NcHF6dmxVNVdEd2ZDQkFZRUE0aktDc1dCUW9JQndJQUFBQUFBUUFpLy9JRDNnT01BRTBBQUFFdUF5Y3VBeU1pRGdJSERnTUhEZ01WRkI0Q0Z4NERGeDRERnhVVUhnSVhNaDRCTWpNeVBnSS9BVEkrQWpjK0F6YytBelUwTGdJbkE5QUVJakU3SFNSSVNFZ2tKRWhJU0NRZE96SWpCUU1GQXdJQ0F3VURCU015T3gwS0ZSVVZDZ01GQ0FVQ0F3TUVBZ01HQmdZQ3pCMDZPam9kSFRzeElnUUVCUU1DQWdNRkJBTGNIVGNzSFFNRUJnUUNBZ1FHQkFNZExEY2RGeTR2THhnWExpNHRGaDAzTEIwREFRSUJBUUd2QlFvSUJ3SUJBUUVDQkFMRkFnTUVBd01jS3pZZEZpNHVMaGNYTHk4dUZ3QUFBZ0NKLzk4RGR3UEFBQmtBTGdBQUFTSU9BaFVVSGdJeEhnSTJOekErQWpVMExnSWpFU0l1QWpVMFBnSXpNaDRDRlJRT0FpTUNBRTZKWmp0amQyTVFHeG9jRVdSNFpEdG1pVTRsUVRBY0hEQkJKU1ZCTUJ3Y01FRWxBOEErYTQ5UmJ0ZXFhUThRQVE4UWFhclhibEdQYXo3OTF4d3dRU1VsUVRBY0hEQkJKU1ZCTUJ3QUFRQ1JBRFlETXdOcUFDNEFBQWtCUGdNMVBBRXVBU2N1QXlNaElnNENCd0VPQVJRV0Z3RWVBek1oTWo0Q056NEJMZ0VuQVFIY0FVNENCQUlCQVFFQkFnY0lDZ1grOXdRSEJ3WUMvcU1FQkFRRUFWMENCZ2NIQkFFSkJRb0lCd0lDQVFJRUJQNnlBZEFCWUFJR0JnWURBZ1FFQkFJRUJ3VURBZ01FQS82SkJRd01EQVgraVFJRUF3SURCUWdGQlFvSkNRUUJZUUFBQUFBQkFNMEFOZ051QTJvQUxnQUFDUUV1QXlNaElnNENCdzRCSGdFWENRRU9BeFVjQVI0QkZ4NERNeUV5UGdJM0FUNEJOQ1luQTI3K3BBSUdCd2NFL3ZjRkNnZ0hBZ0lCQWdRREFVNytzZ0lEQWdFQkFRRUNCd2dLQlFFSkJBY0hCZ0lCWEFVRkJRVUI1Z0YzQXdRREFnTUZCd1FGQ2dvSkJQNmcvcDhDQlFZR0F3SUVCQVFDQlFnRkF3SURCQUlCZHdVTURBd0ZBQUFBQUFFQWtRQmhBMjhEUHdCRUFBQUJOejRDSmljdUF5Y3VBUTRCRHdFbkxnSUdCdzREQnc0QkhnRWZBUWNPQWhZWEhnTVhIZ0UrQVQ4QkZ4NENOamMrQXpjK0FTNEJMd0VDbnNvSENBSUVCUXdZR2h3UEJnOFFFQWZLeXdZUUVCQUdEaHNhR0F3RkJBSUlCOHJMQmdnQ0JBVU1HQm9iRGdZUUVCQUd5OG9IRUJBUEJnOGNHaGdNQlFRQ0NBZktBZERLQnhBUUR3WVBIQm9ZREFVRUFnZ0h3Y0VIQ0FJRUJRd1lHaHdQQmc4UUVBZkt5d1lRRUJBR0Roc2FHQXdGQkFJSEJzdkxCZ2dDQkFVTUdCb2NEd1lQRUJBR3l3QUFBUUNQQU04RGNRTFBBQzBBQUFFdUF5TWlMZ0lqSWc0Q0l5SU9BZ2NPQVJRV0Z4NERGeDRCTWpZM1BnTTNQZ0UwSmljRGNRTUpDZ3dHQVRoY2RqNCtkbHc0QVFZTUN3a0RBd01EQXpCeVpFWURCeElTRWdjRFJtUnlNQU1EQXdNQ3F3WUpCd1FEQkFNREJBTUVCd2tHQmd3TURBWlVtWFZIQXdZR0JnWURSM1daVkFZTURBd0dBQUlBQVAvUUJBQURyZ0ErQUdFQUFBRWVBek15UGdJM1BnTTNQZ0ltSnk0REt3RXVBeWN1QXlNaURnSUhEZ01ISXlJT0FnY09BUjRCRng0REZ5VVVEZ0lISVM0RE5TTVVIZ0lWSGdNeklUSStBamMwUGdJMUl3SG5Bd1lHQmdNREJnWUdBd002VTE4b0F3TUJBZ0lEQ0FrS0Jvc0dEZzhOQkFVUEZCa1BEeGtVRHdVRkRnNE9CWXNHQ2drSEF3SUNBUU1ES0Y5VE9nTUJjZ1FHQndQOWRRTUhCZ1NtREE0TUJCQVdHZzRERGc0YkZoQUVEQTRNcGdGUUFnTUNBUUVDQXdJQ00xUnRPd1FLQ3dzRkJRZ0dBeUJDT0NrSUNBMEpCUVVKRFFnSktqaEJJQU1HQ0FVRkN3c0tCRHR0VkRNQ1hqWmRUVDBXRmp4TlhUZG5tbWMxQWc0WEVBa0pFUmNPQWpWbm1tWUFBQUFBQWdBSC84QUQvQU81QURrQVlnQUFCUzRESnk0REp3RXVBZ1lIRGdNSERnTUhEZ0VlQVJjQkhnTVhIZ01YSGdJeU16SStBamMrQWlZbkp5NERKd0UrQXpjQkhnTXpNajRDTno0Q0ppY0JQZ00zQVI0REZ3Y0QvQThkSFIwUEFRSURCQUw5ekFZUUVSRUlGQ1lrSWhBUUhSc2FEQVVFQWdnR0FqUUNCUVVGQXk1Ylcxb3NBZ1FFQkFJRkNBZ0hCQVVHQWdJRDhCSWxKU1VSL2ZFRkN3d05Cd0lBQkFrSkNnVUZDQWdIQkFnSUFRY0gvZ0lIRGc0T0J3SVBCZ3dNREFaTUFpeFpXbG91QXdZRkJRSUNOd1lIQWdRRURCb2NIaEFQSUNJa0V3Z1JFUThHL2NrQ0JBTURBUThlSGg4UUFRRUJBZ1FHQkFVTEN3MEhiQVlNREF3R0FoRUlFQThQQi8zL0JBVURBUUlFQmdRSUVoSVNDQUgrQmd3TURBWDk2eElqSXlNU1RBQUFBQUFDQURJQUpnUHVBMW9BSWdCUEFBQUJJaTRDSndFUkZCNENGeDRETXpJK0FqYytBelVSQVE0REl3RXVBeU1pRGdJSERnTWRBUjRERndFZUF6TXlQZ0kzQVQ0RE56VTBMZ0luQWhBVEpTUWhELzZ1QkFnS0JqaHdjWEU0T0hGd2NEY0dDd2dGL3E0UElTUWxFd0hBTjI5d2NUZzRjWEJ3T0FZS0NBUUJCUWtOQ2dGc0NCSVVGUXNMRlJRU0NBRnNDZzBKQlFFRkNBc0dBUlVGQ2hBTEFRUCtKQVlMQ1FZQkNBd0lCQVFJREFnQkJna0xCZ0hjL3YwTEVBb0ZBaVFJREFnRUJBZ01DQUVHQ1FzR01RUU1EaEVKL3UwR0NRWURBd1lKQmdFVENSRU9EQVF4QmdzSkJnRUFCd0FpLzhBRDNnUEFBQVFBQ1FBT0FCTUFkZ0NFQUlrQUFBRWpGVE0xRnlNVk16VTFJeFV6TlFjakZUTTFBU0l1QWljMU5DNENJeUlPQWgwQkZCNENGeUl1QWowQktnTWpLZ0VPQVFjMU5DNENJeUlPQWgwQkZCNENGeUl1QWowQkRnTWpEZ01WRVJRZUFoY3lIZ0l6TWo0Q016NEROUkUwTGdJbkF3NERJeUl1QWljUklSRWxJeFV6TlFKRWlZbk5pWW1KaWMySmlRRnhBaGdxT3lVTEV4a09EaGtUQ3dNR0NBVVNJUmtQQ0JFUkVRa1NJeUloRUFzVEdRNE9HUk1MQXdZSUJSSWhHUThXSWhrT0FRa1BDd1lHQ3c4SkEwRnluMkJnbjNKQkF3a1BDd1lHQ3c4SlBoaEtZSFJDUW5SZ1NoZ0M3LzRBaVlrQjRvbUp6WW1KelltSnpZbUpBaDhFQndnRU1BNFpFd3NMRXhrT2lRZ09EUXNGREJZZkUwTUJBUUVsRGhrVEN3c1RHUTZKQ0E0TkN3VU1GaDhUTGdNRkJBTUNDUTBRQ2YwV0NSQU5DUUlNRGd3TURnd0NDUTBRQ1FMcUNSQU5DUUw5Q3dRS0NRWUdDUW9FQWVmK0dkYUppUUFBQUFFQUEvL0FBLzBEd0FCekFBQUJMZ01uTGdNbkxnTW5MZ01qSWc0Q0J3NERCdzREQnc0REJ3NEJIZ0VYSGdNWERnTUhGQjRDRng0Q05qYytBemMrQXpjZUF4Y2VBeGNlQXpNeVBnSTNQZ00xTGdNblBnTTNQZ0ltSndQOUFnVUhDUVVUUWxKYkxBNGpKaWNTQkFnSkNRVUZDZ2tKQkJJbkppTU9MRnRTUWhNRkNRY0ZBZ0lDQVFNRERDczZSaWdMRWc0SkFnTUdDUVlHRFEwTkJnY09EdzhJRlM0ek54NGVOek11RlFnUER3NEhBd1lHQmdNRUJ3Y0hBd1lKQmdNQ0NRNFNDeWhHT2lzTUF3TUJBZ0lDT3dVSkNBWUNDQXdJQlFJb1hWZEhFZ1FHQkFJQ0JBWUVFa2RYWFNnQ0JRZ01DQUlHQ0FrRkJRc0xDd1VYT0Q1RElpeFRTMEljQncwTUNnUUVCQUVEQXdRSUJ3Y0VDaFlhSHhNVEh4b1dDZ1FIQndnRUFRSUJBUUVDQXdJRUNnd05CeHhDUzFNc0lrTStPQmNGQ3dzTEJRQUFBd0FCQUFRRC93TjhBRkFBbUFEZkFBQWxMZ01uTGdJMk56NENKaWN1QXlNaURnSUhEZ0VlQVJjZUFRNEJCdzREQnc0REJ3WVVIZ0VYSGdNek1oNENNekkrQWpNeVBnSTNQZ0kwSnk0REp5VXpQZ00zTGdJMk56NEROelF1QWljdUF5TWlEZ0lIRGdFZUFSY2VBUTRCQnc0REJ3NERCd1lVSGdFWEhnTXpNaDRDRno0RE55VXVBeWN1QXljdUFqWTNQZ0ltSnk0REl5SU9BZ2NPQXhVZUF4Y2VBUTRCQng0REZ4NERGejRETXpJK0FqYytBalFuQXU0VEtTVWVDQVlMQkFZTEhCOExDQXdMSWlnckZCUXJLQ0lMREFnTEh4d0xCZ1FMQmdnZUppa1RGaGNNQmdVQkFRSUNBZ1FGQmdNQkcwQnNVMUpzUUJzQkF3WUZCQUlDQWdFQkJRY01GeFgrUXdFRUNBZ0lCQ01mQlE4TERpa3dOQm9DQkFZRUN5SW9LeFFVS3lnaUN3d0lDeDhjQ3dZRUN3WUlIaVlwRXhZWERBWUZBUUVDQWdJRUJRWURBUlV4VWo0SUVSRVFDQUxPQlFjTUZ4VVRLU1VlQ0FZTEJBWUxIQjhMQ0F3TElpZ3JGQlFyS0NJTEJBWUVBaG8wTHlnT0RBOEZIeU1FQ0FrSkJBZ1FFUkVJUGxFeEZRRURCZ1VFQWdJQ0FRR3REaGdXRXdnSEVCTVdEU0E4T1RZYUdDRVZDUWtWSVJnYU5qazhJQTBXRXhBSENCTVdHQTRQR1JzZ0Z3TUdCZ1VDQWdRREFnUUVCQVFFQkFJREJBSUNCZ1lHQXhjZ0d4a1BjQUlGQlFVQ0xsVkxRQmtmTFI4U0JBb1VFeE1KR0NFVkNRa1ZJUmdhTmprOElBMFdFeEFIQ0JNV0dBNFBHUnNnRndNR0JnVUNBZ1FEQWdNRUJBRUdDd29LQlFVWElCc1pEdzRZRmhNSUJ4QVRGZzBnUERrMkdoZ2hGUWtKRlNFWUNSTVRGQW9FRWg4dEh4bEFTMVV1QWdVRkJRSUZDZ29MQmdFRUJBTUNBd1FDQWdVR0JnTUFBd0FBQUZBRUFBTlFBQmdBTFFBekFBQUJJU0lPQWhVUkZCNENNeUV5UGdJMUVUUXVBaU1GTWg0Q0ZSUU9BaU1pTGdJMU5ENENNd00zRnhNQklRUEEvSUFORnhFS0NoRVhEUU9BRFJjUkNnb1JGdzM5SUJRakdnOFBHaU1VRkNNYUR3OGFJeFJnZ0pYckFRRDlBQU5RQ2hFWERmMkFEUmNSQ2dvUkZ3MENnQTBYRVFxQUR4b2pGQlFqR2c4UEdpTVVGQ01hRC80QXdHc0JLLzZBQUFBQUFBRUE3d0J2QXU4RFVRQXRBQUFCTkM0Q0p5NEJJZ1lIRGdNSERnRVVGaGNlQXhjZUFUSTJOejRETlRRK0FqVTBMZ0kxQXVVRUJ3a0dCZ3dNREFaVm1YVkhBd1lHQmdZRFIzV1pWUVlNREF3R0Jna0hCQU1FQXdNRUF3TXBCZ3dLQ1FNREF3TURNSEprUmdNSEVoSVNCd05HWkhJd0F3TURBd01KQ3d3R0FUaGNkajQrZGx3NEFRQUNBQUQvNGdQL0E1NEFNUUEyQUFBQkxnTWpJVDRCTGdFbkxnTWpJZzRDQnc0REJ4RXpNaDRDRng0RE16SStBajhCTmk0Q0p3RXpFU01SQStRS0dCa1hDZjcxQlFZRUVCRUZEQTBQQ0JZY0VRb0VCaE13V1UwbUlDd2hHZzRSSnpaTE5uaUZReFlLQlFFQ0J3c0kvQnlycXdJcUN3d0dBamhpVUQwVEJnb0hCQk1lSmhJZ1IwUTZFdjRMQmdzUENRb1dFZ3dqWEo5OFNnOGNHUllKL2JrQ1p2MmFBQUlBVVFBUkE2NERiZ0F4QUdNQUFBRU9BUlFXRng0QkZBWVBBUTRCSWlZbkxnRTBOajhCTGdNM0J3NEJGQllYSGdFeU5qOEJQZ0UwSmljdUFTSUdCd0V1QVNJR0R3RU9BUlFXRng0Qk1qWTNQZ0UwSmljdUFUUTJQd0UrQVRJV0Z4NEJGQVlQQVI0REJ6YytBVFFtSndJZUNRa0pDUllXRmhhZkZqYzVOeFlXRmhZV1RBY0tCUUVDa2lnb0tDZ3BabXBtS0tBb0tDZ29DUmdaR0FrQmtTaG1hbVlwbnlnb0tDZ0pGeGdYQ1FvS0Nnb1dGaFlXb0JZM09UY1dGaFlXRmt3SENnVUJBcEVwS1NrcEFqa0pHQmtZQ1JZM09UY1dueFlXRmhZV056azNGa3dUSnlncEZKSW9abXBtS1Nnb0tDaWdLR1pxWmlrSkNRa0pBVFVwS1NrcG55aG1hbVlwQ1FrSkNRa1hHQmNKRmpjNU54YWZGaFlXRmhZM09UY1dUUk1uS0NnVWtTbG1hbVlvQUFZQUVBQkpBK3NEV2dBY0FERUFSZ0JqQUlBQWxRQUFBU0V5UGdJM1BnRTBKaWN1QXlNaElnNENIUUVVSGdJekJ5SU9BaFVVSGdJek1qNENOVFF1QWlNUklnNENGUlFlQWpNeVBnSTFOQzRDSXdFaElnNENIUUVVSGdJeklUSStBamMrQVRRbUp5NERJeEVoSWc0Q0hRRVVIZ0l6SVRJK0FqYytBVFFtSnk0REl3RWlEZ0lWRkI0Q016SStBalUwTGdJakFXUUNXd2dQREFnQkFnSUNBZ0VJREE4SS9hVUhEQWtGQmdrTUJ2OFNIeGNORFJjZkVoSWZGdzBORng4U0VoOFhEUTBYSHhJU0h4Y05EUmNmRWdOYS9hVUhEQWtGQmdrTUJnSmJDQThNQ0FFQ0FnSUNBUWdNRHdqOXBRY01DUVVHQ1F3R0Fsc0lEd3dJQVFJQ0FnSUJDQXdQQ1B5bUVoOFhEUTBYSHhJU0h4Y05EUmNmRWdLdkJRa05DQkVYRlJjUkNBMEpCUVlLRFFka0NBMEpCWWtORng4U0VoOFhEUTBYSHhJU0h4Y04vczBORng4U0VoOFhEUTBYSHhJU0h4Y05BVE1HQ2cwSFpBZ05DUVVGQ1EwSUVSY1ZGeEVJRFFrRi9zMEdDZzBIWkFnTkNRVUZDUTBJRVJjVkZ4RUlEUWtGQW1ZTkZ4OFNFaDhYRFEwWEh4SVNIeGNOQUFBQUFBTUFBUC9pQkFBRG5nQTdBS3dBMGdBQUFTVXVBaUlqQnlJT0FnOEJKUzRCRGdFSERnTVZFUlFlQWhjRkhnSXlNekkrQWo4QkJSNEJQZ0UzUGdNMUVUUXVBaWNCRGdNSERnTUhEZ0V1QVNjdUF6RXdMZ0luTGdJMk1TNERJeUl1QWljUkZ4NERGeFlPQWljdUFnWUhEZ0lXRng0QlBnRTNQZ0lXRng0REZ4NERNekkrQVRJWEZqNENNekllQWpFZUF4Y2VBeFVVRGdJSEpRNERJeUl1QWljdUF6YzJMZ0luTGdNbkxnRTBOamMrQXpjWEVRUGgvcllEQmdjSEF3RUNCQVFFQXZMK3pnWU5EQXdGQmdrR0F3UUlDd2NCU1FNRkJRVURBd1lHQmdQeUFUSUdEUXdNQlFZSkJnTUZDQXNIL2w0R0NRZ0pCZ1VJQ3hFTkRBOEtCZ0lDQlFRQ0F3Z1BEQjRWQVFrSUdTRW9GdzRkSFJzTTNnY1BEZ3NEQndjUEVRTUdHeUFnQ3hFWENRY05EUXNGQWdRRUNBZ0lCQVFNREFvQkFRSUdDd29NQ3djSENBZ1FEdzRHQmhFUUN4TWFFZzBHQmd3S0JnTUlEZ3NCV3djT0RRb0RDQTRMQndFREJ3WURBUUlGRWg4WENoY1dGQWNaR0JnV0NCZ2JIQXlwQXcyTkFnSUJBUUVCQWdHQ2hBSUNBUVFFQkFrTERBYjlPUWdPREFvRGpnRUNBUUVDQWdLQ2d3SUNBUVFEQkFrTERBWUN4d2dPREFvRC9nY0ZDdzRSQ3dvUUVSUU9EUVFIRGdZR0ZoWVFDZzBNQWdVck1DWUdFaEVNQXdVSEJBRlFZQTRURUJFTEdDSVNBZ2dPREFJRkJBWVBFQThHQmdRQkJRUUVCUUVEQkFNR0NBd0pDUTBJQkFNQ0FnSUJBd01HQ0FZQ0F3UUZCQVFRRkJjS0NSRVFFUWtqQ0EwSkJBZ0tDUUlISGlJZkNCMGpGQW9FQWdVSEN3Z2RMeWtsRXdZT0RRd0ZTZjU4QUFBQUFnQVEvOEVENVFPK0FEUUFjd0FBRXpRK0FqYytBemMxRGdNSERnTUhGQTRDRlJRZUFoVWVBeGNlQXhjMUxnTW5MZ00xSlM0REp5NEJJZ1lIRGdNZEFRNERCdzRERlJRZUFoY2VBeGNWRkI0Q0Z4NERNekkrQWpjK0F6YytBVFFtSjdZRkJ3a0VHVU5TWHpSUWszSkdBd3dVRUF3REN3MEtDZ3dLQXd3UkZRd0RSbktUVURSZlVrTVpCQWtIQlFNdkFqVlZianNFQ2dzTEJRVUhCQUlyWWxZL0NBb1FEQVlHREJBS0NENVdZaXNDQkFjRkFnUUZCUUlEQmdZRkFqdHVWVFVDQkFRRUJBSEVORnhOUFJVRkRBd0pBcU1ERWhNUEFRTUxFQlFMQWpaampsdGJrV1k0QWd3VUVBc0RBUThURWdTa0Fna01EQVVXUDA5ZU5STURPbE5mS0FNREFnSURDQWtLQm9ZRUR4RVBCQVVQRkJnUER4Z1REd1lFRHhFUUJZWUZDZ2tJQXdFQ0FRRUJBZ0lDS0Y5VE9nTUdEUTBNQlFBQUFBSUFBUUFaQS84RGh3QmFBS1lBQUNVdUF5Y3VBeWNtUGdJM1BnSW1KeTRESXlJT0FnY09BUjRCRng0REJ3NERCdzREQnc0REJ3WVVIZ0VYSGdNek1oNENNekkrQWpNeVBnSTNQZ0kwSnk0REp3VXVBeWN1QXljdUF5Y21QZ0kzUGdJbUp5NERJeUlPQWdjZUF4Y2VBUTRCQng0REZ4NERGeDRERno0RE16SStBamMrQWpRbkFuSUdEZzRQQ0E0Y0dCRURBZ01IQ2dVYUh3a01FUTBrS3pFYUdqRXJKQTBSREFrZkdnVUtCd01DQXhFWUhBNElEdzRPQmhncElCWUdBUUVDQWdJRkJnWUVBU1pUZzE1ZWhGTW5BUVFHQmdVQ0FnTUJBUVlYSUNrWUFZMEdGaUFwR0FZTkRnOElEaHdZRVFNQ0F3Z0xCaG9lQ1EwUkRTUXJNUm9ZSlI4YkRoTWdHeGdMRUJRRkpDZ0NCUVFFQWdrU0VSRUlHQ29rSFFzd1JTd1dBUU1HQmdVQ0FnSUJBZllFQndZR0F3WU1EUThKQ0JJVEVnZ29TMFUvSEJZaUdBME5HQ0lXSEQ5RlN5Z0lFaE1TQ0FrUERRd0dBd1lHQndRUEpTc3dHZ1FIQmdZREF3VUVBZ1FGQkFRRkJBSUVCUU1EQmdZSEJCb3dLeVVQSUJvd0t5VVBCQWNHQmdNR0RBMFBDUWdTRXhJSUtFdEZQeHdXSWhnTkNoTWNFZ2tWR2g4VEcwbGNiVDhCQWdJQ0FRTUhDQWdGRHlNb0xCZ0JCQVFEQWdRRkF3TUdCZ2NFQUFNQVF3QTJBOElEYWdBVUFHVUFlZ0FBQVNJT0FoVVVIZ0l6TWo0Q05UUXVBaU1sTGdNbkxnTW5MZ01uTGdNakxnTWpJZzRDQnlJT0FnY09Bd2NPQXdjT0F3Y09BUlFXRng0REZ4NERNekkrQWpjK0F6YytBVFFtSndFaUxnSTFORDRDTXpJZUFoVVVEZ0lqQWdBalBpNGJHeTQrSXlNK0xoc2JMajRqQWNJQ0NBc05CeFFvS0NnVUF3WUdCd1FDQ2cwUEJ4WXNMQ3dXRmlzckt4VUhEdzBLQWdRSEJnWURGQ2dvS0JRSERnc0lBUkVRRVJBQkNBc09CekpsWldVeU0yWm1aak1IRFFzSUFnNE9EZzcrUGpsbFN5d3NTMlU1T1dWTExDeExaVGtDV1JzdVBpTWpQaTRiR3k0K0l5TStMaHRlQncwS0J3RUNCQU1EQWdrVkZSVUtCdzRMQndJQ0FnRUJBZ0lDQndzT0J3b1ZGUlVKQWdNREJBSUJCd29OQjFhTWhZbFVCdzBLQndFR0NBWURBd1lJQmdFSENnMEhTWkdSa1VqOTR5eExaVGs1WlVzc0xFdGxPVGxsU3l3QUFBRUFMZi9rQTk0RGJ3QkRBQUFCTlRRdUFpY3VBUTRCQnc0REJ3NEJGQllYSGdNWEhnTXpNajRDTno0RFBRRWVBeGNXRkE0QkJ3NEJIZ0V6TWo0Q05UUXVBaWNCM2dJRkNBWUdEUTBOQmtxQllUb0NCUVVGQlFJNllZRktBd2NIQndRREJnWUdBd1lJQlFJdlhsQTZEQTBYTGlFakhRY29JaVJsWFVGWmtiaGZBb3k1QncwTENRTUVBd0VFQkRKMmFFZ0RCeEFRRHdZRVNHaDJNUUlEQWdFQkFRSUJBd2tMRFFlM0FRc1dJQllZTHlvakRBNHJLUjB1Vm54T1hIOVJLQVVBQUFBQkFSRUFid01RQTFFQUxRQUFBUzRESnk0QklnWUhEZ01WRkE0Q0ZSUWVBaFVVSGdJWEhnRXlOamMrQXpjK0FUUW1Kd01RQTBkMW1WVUdEQXdNQmdZSkJ3UURCQU1EQkFNRUJ3a0dCZ3dNREFaVm1YVkhBd2NIQndjQ0FnTkdaSEl3QXdNREF3TUpDZ3dHQVRoY2RqNCtkbHc0QVFZTUN3a0RBd01EQXpCeVpFWURCeElTRWdjQUF3QU5BRkFEOEFNd0FCWUFMUUJFQUFBVElUSStBalUwTGdJaklTSU9BaFVVSGdJekJTRWlEZ0lWRkI0Q015RXlQZ0kxTkM0Q0l4RWhJZzRDRlJRZUFqTWhNajRDTlRRdUFpTlhBMUFQR2hRTEN4UWFEL3l3RHhvVUN3c1VHZzhEVVB5d0R4b1VDd3NVR2c4RFVBOGFGQXNMRkJvUC9LNFBHaFFMQ3hRYUR3TlNEeG9VQ3dzVUdnOENtUTBWSEE4UEd4UU1EQlFiRHc4Y0ZRMktEQlFiRHc4YkZBc0xGQnNQRHhzVURQN1VEQlViRHc4YUV3c0xFeG9QRHhzVkRBQUFBZ0FBLzhBRDV3UEFBQ29BUHdBQUV4UWVBak15UGdJM0FSNERNekkrQWpjK0FUUW1Kd0UrQXpVMExnSWpJZzRDRlRNMFBnSXpNaDRDRlJRT0FpTWlMZ0kxQUR4b2pGQWNOelF3RmdFaEJnNFFFQWdJRUE4T0Jnd01EQXorM2c0V0R3ZzhhSXhRVUl4b1BJQW9SbDAxTlYxR0tDaEdYVFUxWFVZb0FrQlFqR2c4Q0E4V0R2N2VCZ2tHQXdNR0NRWU1JQ0VnREFFaEZqQTBOeHhRakdnOFBHaU1VRFZkUmlnb1JsMDFOVjFHS0NoR1hUVUFBZ0FDLzhBRC9nTytBUU1CR0FBQUFTNERKeTRETVM0RE5UUStBamN3UGdJeFBnRTBKaWN1QXljdUFTSUdCdzRETVE0REl5SXVBaThCTGdNbkxnRWlCZ2NPQXc4QkRnTWpJaTRDTHdFdUFTSUdCdzREQnc0QkZCWVhIZ014SGdNVkZBNENEd0VPQXdjT0FSUVdGeDRESHdFZUF4VVVEZ0lQQVE0QkZCWVhIZ01YSGdNek1qNENQd0UrQXpNeUhnSVhNQjRDTVI0REZ6SWVBVEl6T2dFK0FUTStBejhCUGdNek1oNENId0VlQXpNeVBnSTNQZ00zUGdFMEppY3VBekV1QXpVMFBnSTNNRDRDTno0RE56NEJOQ1luQlNJdUFqVTBQZ0l6TWg0Q0ZSUU9BaU1EL2dFSURBOEpDeDRiRXdvUURBY0JBZ1FDRVJRUkJnVUdCZ2dRRVJJS0J4QVJFQWNKR0JZUEJBZ0lDQVFLRWc4S0Fnc0JDQXdRQ1F3WkdSZ01DUkFNQ0FFTEFnb1BFd29GQ1FrSUJFTUhFQkVRQndvU0VSQUlCZ1lHQmdZU0VBc0RCQU1DQ0EwU0NsTUpFQXdJQVFFQkFRRUJDQXdQQ1ZNS0VnMElBZ01FQXpNR0JRWUdDQkFSRWdvRUNBZ0lCQVFJQ0FjRFF3UUlDUWtGQ2hNUENnSURCQU1CQ0F3UUNRWU1EQXdHQmd3TURBWUpFQXdJQVFzQ0NnOFNDZ1FKQ0FnRFJRTUhDQWdFQkFnSUNBUUtFaEVRQ0FZR0JRWUhFaEVNQWdRQ0FRY01FQW9UR3g0TENROE1DQUVCQVFFQi9nSWtQeThiR3k4L0pDUS9MeHNiTHo4a0FmRUpFQXdJQVFFRUF3SUNDZzhTQ2dRSUNBY0RGaG9XQnhBUkVBY0tFaEVRQ0FZR0JRWUhFaEVNQWdRREFnY05FUXBWQ1E4TUNBRUJBUUVCQVFnTUR3bFZDaEVOQndJREJBSTBCZ1VHQmdnUUVSSUtCeEFSRUFjSUZ4VVBCQWdJQ1FRTEV3OEtBZ3NCQ0F3UUNRd1pHUmdNQ1JBTUNBRUxBUW9QRXdzRkNRa0lCRU1IRUJFUUJ3b1NFUkFJQXdRREFnRURCQU0wQWdRREFnY05FUW9iSUJvSkR3d0lBUUVCQVFFQkNBd1BDVlVLRVEwSEFRSUVBalVEQkFNQkFRTUVBd2dRRVJJS0J4QVJFQWNKR0JZUEF3Y0lDQVFLRWc4S0FnSURCQUVCQ0F3UUNRd1pHUmdNM3hzdlB5UWtQeThiR3k4L0pDUS9MeHNBQWdBQS8vUUVBQU5zQUQ0QWJnQUFBUzRESnk0Q0JnY09BeDBCSWc0Q0J3WWVBaGNXTWo0Qk56NERNeFVVSGdJWEhnRStBVGMrQXpjK0F6VTBMZ0luQVNFUklUVWlMZ0VpSXlJT0FnY09BeFVSRkI0Q0Z4NERNekkrQWpjK0F6MEJEZ01IRlFQM0FqSlRiRHdGQ2dzTEJRVUlCZ05YajJnK0JnUUJDaE1PRUNBZEdBZ2FMamhKTkFNR0NBVUZDd3NLQkR4c1V6SUNBZ01DQVFFQ0F3TCs5LzJhQWJ3UEl5UWpEeWxUVTFNcEdDa2VFUkVlS1JncFUxTlRLU2xUVTFNcEdDa2VFUTRpSkNRUkFrQURQMWxqS0FNREFRSUNBd2dKQ2dhbE5VbE9HUkllR0JNR0NBZ05CUTRhRkF5cEJnb0pCd01DQWdFREF5aGtXVDhDQXdZR0JnTURCZ1lHQS80OUFtYUdBUUVDQkFZRUFoVWhLeGo5b0JncklSVUNCQVlFQWdJRUJnUUNGU0VyR0lrT0hCc2JEQ0FBQUFBQkFKOEE0UU9CQXVFQUxRQUFBUzRESnk0QklnWUhEZ01IRGdFVUZoY2VBek15SGdJek1qNENNekkrQWpjK0FUUW1Kd09CTUhKa1JnTUhFaElTQndOR1pISXdBd01EQXdNSkN3d0dBVGhjZGo0K2RsdzRBUVlNQ2drREF3TURBd0UxVkpsMVJ3TUdCZ1lHQTBkMW1WUUdEQXdNQmdZSkJ3UURCQU1EQkFNRUJ3a0dCZ3dNREFZQUFnQUEvOUFFQUFPdUFENEFZUUFBRXpNZUF4Y2VBek15UGdJM1BnTTNNekkrQWpjK0FTNEJKeTRESnk0REl5SU9BZ2NPQXdjT0FoWVhIZ016QlJRT0FnY2hMZ00xSXhRZUFoVWVBek1oTWo0Q056UStBalVqOG9zRkRnNE9CUVVQRkJrUER4a1VEd1VFRFE4T0Jvc0dDZ2tJQXdJQ0FRTURLRjlUT2dNREJnWUdBd01HQmdZREF6cFRYeWdEQXdFQ0FnTUlDUW9HQW1jRUJnY0QvWFVEQndZRXBnd09EQVFRRmhvT0F3NE9HeFlRQkF3T0RLWUNOaUJCT0NvSkNBMEpCUVVKRFFnSUtUaENJQU1HQ0FVRkN3c0xCVHRzVkRNQ0FnTUNBUUVDQXdJQ00xUnNPd1VMQ3dzRkJRZ0dBNGsyWFUwOUZoWThUVjAzWjVwbk5RSU9GeEFKQ1JFWERnSTFaNXBtQUFFQUkvL1FBOTBEcmdCVkFBQWxMZ01uTGdNbkxnTW5KajRDTno0Q0ppY3VBeU1pRGdJSERnRWVBUmNlQXdjT0F3Y09Bd2NPQXdjR0hnSVhNaDRDTXpJK0FqYytBek0rQXljRDNRZ2NKekVjQ0JJVEZBb1VLQ0laQlFNQkNBOExJU2NNRUJZUkxUVTdJQjg3TlMwUkZoQU1LQ0lMRHdnQkF3VVpJaWdUQ3hVVEVRZ2NNU2NjQ0FJQ0Jnb0dBakZyckh3K2FGWkZHeHNuR1EwQkJnb0dBZ0ljSmpzd0p4SUZDUWtJQkFnUkZCZ1BDaGNhSGhFMlpGeFRKUjB1SUJFUklDNGRKVk5jWkRZUkhob1hDZzhZRkJFSUJBZ0pDUVVTSnpBN0pnY05Dd2dDQ3cwTEF3VUdBd01HQlFNQ0NBc05Cd0FBQUFBQ0FBRC93UVFBQThFQUdBQmNBQUFCRkE0Q0J4RWpFU0l1QWpVMFBnSTdBVEllQWhVQkRnTWpLZ0V1QVNjdUF5Y21EZ0l4RVRBK0FqTXlIZ0lYSGdNWEhnTXpPZ0UrQVRjeVBnSTNQZ016TWg0Q0ZSRU9Bd2NCRVF3VEdRMkpEaGtUQ3dzVEdRNkpEaGtUQ3dMVUN4OGxLaFlJRVJFUkNDazZORGtvSjF4UU5pQTBRaUlLRlJVVUNTZzVORG9wQmcwTkRRWUxGaFVWQ2dRSkNRa0VCQWdJQ0FRSERBa0dBUVVIQ1FVRGZRNFlFZ3NCL0lrRGR3c1NHUTRPR1JNTEN4TVpEdnpyQkFnSEJRRUNBZ2dxTVM0TENnTU1EUUk1Q0FvSUFRSUVBZ3NuS1NRSUFRSUNBUUlEQWdFQ0FnRUJBZ0lCQlFrTUIvMzFCZ29IQlFFQUFBQUFCQUFNLy9zRUFBTndBQllBTFFCRUFIUUFBQk1oTWo0Q05UUXVBaU1oSWc0Q0ZSUWVBak1GSVNJT0FoVVVIZ0l6SVRJK0FqVTBMZ0lqRVNNaURnSVZGQjRDT3dFeVBnSTFOQzRDSXlVak5UUXVBaXNCSWc0Q0hRRWpJZzRDQnh3QkhnRWZBUjRDTWpNNkFUNEJQd0UrQWpRMUxnTWo4Z0s0RWlBWURnNFlJQkw5U0JJZ0dBNE9HQ0FTQXJqK3VSSWdHQTRPR0NBU0FVY1NJQmdPRGhnZ0V2a1NJQmdPRGhnZ0V2a1NJQmdPRGhnZ0V2NWdrd0lEQkFLMUFnUURBcE1DQXdNQ0FRRUJBZmtCQWdJQ0FRRUNBZ0lCK1FFQkFRRUNBd01DQXJ3UEdpRVNFaUFZRGc0WUlCSVNJUm9QcFE0WUlCSVNJQmNORFJjZ0VoSWdHQTcrbWc4WklSSVNIeGNORFJjZkVoSWhHUTlWL3dJRUF3SUNBd1FDL3dFQ0F3SUNBd01EQWZRQkFRRUJBUUgwQVFNREF3SUNBd0lCQUFBQUF3QUEvOEFFQUFQQUFCUUFLUUNCQUFBQklnNENGUlFlQWpNeVBnSTFOQzRDSXhFaUxnSTFORDRDTXpJZUFoVVVEZ0lqRXc0REJ3NERCeFFPQWlzQklpNENOVDRETno0RE5UUXVBaWN1QXlNaURnSUhEZ01yQVNJdUFqVThBelV3UGdJeFBnTXpNaDRDRng0REZSUU9BZ2NDQUdxN2kxQlFpN3RxYXJ1TFVGR0x1bW9RSEJVTkRSVWNFQkFjRlEwTkZSd1EyUVVSR0I0U0NCQU9Dd0lGQ1F3SFJRY05DZ1lCSmpRNEV3UUZBd0VEQmdrR0JnNFJFd29SSGhnUUF3RUdDUXNHUndjTUNRVUJBUUVKSlRkSkxoa3RLQ01QRHhjUUNBTUdDUVlEd0ZDTHVtcHF1NHRRVUl1N2FtcTZpMUQ4ZncwVkhCQVFIQlVORFJVY0VCQWNGUTBCeVFvV0dSd1FCeEFTRkFzSERRb0dCUWtNQnlnN01Tc1lCUW9MREFZSURRd0xCZ1lKQmdNTUZCZ01CZ2tIQXdVSURBY0JBZ0lDQVFJQ0FodzVMaDBIRGhVT0RpQWpKUk1MRlJRVENRQUFBZ0FBLzhBRUFBUEFBQlFBTlFBQUFTSU9BaFVVSGdJek1qNENOVFF1QWlNQkZBNENJeUVpTGdJbkxnRTBOamMrQXpNaE1oNENGUjRCRkFZSEFnQnF1NHRRVUl1N2FtcTdpMUJSaTdwcUFWa0dDZzBIL1pjSERRb0dBUUVCQVFFQkJnb05Cd0pwQncwS0JnSUNBZ0lEd0ZDTHVtcHF1NHRRVUl1N2FtcTZpMUQ5dlFnTkNRVUZDUTBJRVNJaUloRUlEUWtGQlFrTkNCRWlJaUlSQUFBQUFBTUFDZi9pQkFBRG5nQWhBRFlBV3dBQUpRRXVBeU1pRGdJSEFRNEJGQllYSGdNeklUSStBalUwTGdJbkJTSXVBalUwUGdJek1oNENGUlFPQWlNVERnTXJBU0l1QWljdUF5YzBQZ0kzUGdFeUZoY2VBeFVPQXdjRDgvNUpCQTBRRWdrS0VnOE5CUDVFQkFRRkJRVU5EeEVKQTNjT0dSTUxBZ01GQS80TkVCd1ZEQXdWSEJBUUhCVU1EQlVjRUN3QkNBd09DQU1IRGdzSUFRWUtDQWNEQlFrTUJ3MFdGUllOQ0F3SUJBTUhDQW9HVGdNdENBMEpCUVVKRFFqOHpBZ1JFUkVJQ0F3SkJRc1NHUTRHQ3dvSkJBOE1GUndRRUJ3VkRBd1ZIQkFRSEJVTUFSc0lEd3NIQndzUENDSkZSRUVlQnc0TUNRSUNBZ0lDQWdrTURnY2VRVVJGSWdBQUF3QUIvOEFFQUFQQUFGRUFaZ0NiQUFBQlBnTTNQZ0ltSnk0REp5NERJeUlPQWdjT0FSNEJGeDREQnc0REJ3NERCdzREQndZVUhnRVhIZ016TWg0Q093RXVBelUwUGdJM1BnTTNGeUlPQWhVVUhnSXpNajRDTlRRdUFpTVRGQTRDS3dFVkZBNENLd0VpTGdJOUFTTWlMZ0k5QVRRK0Fqc0JOVFErQWpzQk1oNENIUUV6TWg0Q0hRRUNSUXdZRmhRSURSTUlBd2dDQlFZSEJCQXVOejRoSVQ0M0xoRVZEd3duSVFzUENRSURCQmNnSmhJS0V4SVJDQjR2SWhjSEFRRURBZ0lGQmdjRUFpdGpvbmtsRGhZUENBZ1JHaElJRXhRVkNyczFYVVVvS0VWZE5UVmRSaWdvUmwwMW1nTUZCZ1JWQXdVR0JFUUVCZ1VEVlFRR0JRTURCUVlFVlFNRkJnUkVCQVlGQTFVRUJnVURBZGNMRlJZWkR4ZzNPVGtiQnc0T0RnWWNMQjhRRUI4c0hDUlJXV0UwRUIwWkZna05GaE1RQ0FRSUNBa0ZFeXcwT3lJREJ3Y0hBd01GQkFNR0J3WVVMQzh5R2h3Mk15OFZDaFVVRXdnWEtFVmROVFZkUlNnb1JWMDFOVjFGS1A3ZUJBWUZBMVVFQmdVREF3VUdCRlVEQlFZRVJBUUdCUU5WQkFZRkF3TUZCZ1JWQXdVR0JFUUFBUUJaQUJrRHBRTmxBRVFBQUFFdUF5TWhFVFF1QWljdUFTSUdCdzRERlJFaElnNENCdzRCRkJZWEhnTXpJUkVVSGdJWEhnRXlOamMrQXpVUklUSStBamMrQVRRbUp3T2xBUWdNRUFuKy9nWUxEd2dVS0Nnb0ZBZ1BDd2IrL3drUURBZ0JBZ0lDQWdFSURCQUpBUUVHQ3c4SUZDZ29LQlFJRHdzR0FRSUpFQXdJQVFJQ0FnSUNEUWtQQ3dZQkFRa1FEQWdCQWdJQ0FnRUlEQkFKL3Y4R0N3OEpGQ2NuSnhRSkR3c0cvdjRKRUF3SUFRSUNBZ0lCQ0F3UUNRRUNCZ3NQQ1JRbkp5Y1VBQUFCQUFJQU5RUUFBMDhBVmdBQUV3RStBek15SGdJWEhnTVhIZ01WRkE0Q0J3NEREd0VoTWg0Q0Z4NERGUlFPQWdjT0F5TWhGeDRERng0REZ4NERGUlFPQWdjT0F5TWlMZ0luQVFJQmZRZ1JFaFFMQ3hRU0VRZ0VCd1lGQWdJREFnRUVDQXNJQkFrS0NnVmNBZ29MRkJJUkNBZ0xDQVFFQ0FzSUNCRVNGQXY5OWx3RkNnb0pCQVFIQmdVQ0FnTUNBUVFJQ3dnSUVSSVVDd3NVRWhFSS9vTUJ3d0Z5QndvSEF3TUhDZ2NFQ0FrSkJRVUpDUWtGQ3hNUkVBY0ZDZ29LQlZnRUJ3c0hCeEFTRXdzS0V4SVFCd2NMQndSWUJRb0tDZ1VFQ0FnSkJRVUpDUWtFQ3hNU0VBY0lDd2dFQkFnTENBRndBQUFBQWdDSi85SURlQU93QUM0QVBBQUFBVFF1QWlzQk5UUXVBaU1pRGdJZEFTTWlEZ0lWRVJRZUFoY2VBek15UGdJM1BnTTFFU1UxTkQ0Q016SWVBaDBCSXdONEN4TVpEaUVuU0dVOVBXVklKeVFPR0JJS0NBNFVEQ2hRVVZFb0tGQlFUeWdNRlE4Si9pSUdGU2tpSWlrVkJzMEJxdzRiRkF5clBtVklKeWRJWlQ2ckRSWWNEdjZTREJZU0RBSUpEZ2tFQkFrT0NRSU1FaFlNQVhGS3F4QWtIaFFVSGlRUXF3QUFBUUFHQUNzRCtRTlBBQ1FBQUFFK0FUUW1Md0V1QVNJR0J3RW5MZ0VpQmc4QkRnRVVGaGNCSGdNek1qNENOd0VEK1FNREF3T1ZBd2dJQ0FQK084WURDQWdJQTVVREF3TURBV29DQkFRRUFnSUVCQVFDQW1vQ213TUlDQWdEbFFNREF3UCtPY2NEQXdNRGxRTUlDQWdEL3BZQkFnSUJBUUlDQVFKcUFBRUFYd0FpQTZBRHNRQXRBQUFCTlNJT0FoVVVIZ0l6TWo0Q05UUXVBaWMzSGdNVkZBNENJeUl1QWpVMFBnSXpOUmNIQWdCQmNsVXhNVlZ5UVVGeVZURU1GaUFVVEJzcUhoQkNjWmhXVnBoeFFVRnhtRmFjbkFLdFRqRlZja0ZCY2xVeE1WVnlRUjg3TnpFVlNCeEJTVThxVnBoeFFVRnhtRlpXbUhGQlRvS0NBQUFBQUFFQUpQL0dBOTREd0FBOEFBQWxMZ00xTkM0Q0l5SU9BaFVVRGdJSERnTVhIZ01YSGdNWEhnTXpNajRDTno0RE56NEROell1QWljRHhnSXZOaTA0V0d3ME5HeFlPQzAyTHdJSENnY0RBUUVIQ3c0SUFpbExha0lISENZdkdob3ZKaHdIUW1wTEtnSUlEUW9IQVFFQ0Jnb0g2Z0l0V0lSWmRKRlFIQnhRa1hSWWhGa3RBZ1lPRUJFSkNSRU9Dd1FCRUJVV0J4Z29IUkVSSFNnWUJ4WVZFQUVFQ3c0UUNRa1NFQTRHQUFBREFBRC93QVFBQThBQUZBQXBBRkVBQUFFaURnSVZGQjRDTXpJK0FqVTBMZ0lqRlRJZUFoVVVEZ0lqSWk0Q05UUStBak1USXlJdUFqVTBQZ0kzTlM0RE5UUStBanNCTWg0Q0ZRY2VBeFVVRGdJakFnQnF1NHRRVUl1N2FtcTdpMUJRaTd0cUVSMFdEUTBXSFJFUkhSWU5EUllkRVR0NEN4TU9DQVVKREFjSERBa0ZDQTRUQzFnTEV3NElBUWNNQ0FVSURoTUxBOEJRaTd0cWFydUxVRkNMdTJwcXU0dFF0dzBXSFJFUkhSWU5EUllkRVJFZEZnMzlrQWdPRXdzSUR3MEtBN2dEQ2cwUENBc1REZ2dJRGhNTDZRTUtEQThJQ3hNT0NBQUFBUUFWLzlFRDh3T3ZBS2NBQUFFVURnSXJBUmNlQVJRR0J3NERJeUl1QWk4Qkl4VVhIZ0VVQmdjT0F5TWlMZ0l2QVJVVURnSWpJaTRDUFFFSERnRWlKaWN1QVRRMlB3RTFJd2NPQXlNaUxnSW5MZ0UwTmo4Qkl5SXVBalUwUGdJN0FTY3VBVFEyTno0Qk1oWWZBVE0xSnk0Qk5EWTNQZ0V5Rmg4Qk5UUStBak15SGdJZEFUYytBVElXRng0QkZBWVBBUlV6Tno0Qk1oWVhIZ0VVQmc4Qk16SWVBaFVEOHdnT0V3cVFjUWdJQ0FnRUNRb0tCUVVMQ2drRXUyQy9DQWdJQ0FRSkNnc0ZCUW9LQ1FSeUNBNFRDZ3NURGdoeUNCUVZGQWdJQ0FnSXYyQzhCQWtLQ2dVRkNnb0pCQWdJQ0Fod2p3c1REZ2dJRGhNTGozQUlDQWdJQ0JRVkZBaTZZYjhJQ0FnSUNCUVZGQWh5Q0E0VEN3b1REZ2h5Q0JRVkZBZ0lDQWdJdjJDN0NCUVZGQWdJQ0FnSWNJOEtFdzRJQWNBTEV3NEljZ2dVRlJRSUJBWUVBZ0lFQmdTL1lic0lGQlVVQ0FRR0JBSUNCQVlFY0k4TEV3NElDQTRUQzQ5d0NBZ0lDQWdVRlJRSXZHQy9CQVlFQWdJRUJnUUlGQlVVQ0hJSURoTUxDaE1PQ0hJSUZCVVVDQWdJQ0FpL1lMc0lGQlVVQ0FnSUNBaHhrQW9URGdnSURoTUtqM0FJQ0FnSUNCUVZGQWk3WUw4SUNBZ0lDQlFWRkFoeUNBNFRDZ0FJQUFBQUZ3UUFBMmtBT2dBL0FFUUFTUUJPQUZNQVdBQmRBQUFCQnljSEp3Y25CeWNISndjbkJ5Y0hKd2NuQnhFVURnSWpJaTRDTlR3QkVEUXhJZzRDRlJFVUhnSXpJVEkrQWpVUk1DNENKd0VoTlNFVk5TRTFJUlUxSVRVaEZRVWhOU0VWTlNFMUlSVTNJVFVoRlRVaE5TRVZBOUFyTHpFeUp5MHBLU3NzTWk4c0tpUXNKeTBtQmdrTEJRZ1BEQWNLR1JZUENBMFNDZ09jQ2hJTkNBMFJFQUwrU3Y3WkFTZisyUUVuL3RrQkp3R0cvc01CUGY3REFUMEIvc0lCUHYxU0FxNERaaWdxS2lvcUtpb3NMQ29xS1Nrbkp5b3FLaXI5UXdzUUNnUUlEQTRIQjkwQkE5WUZDZzhLL1RNS0VnMElDQTBTQ2dMM0N3NE5BdjBvU0VoN1NVbDVTMHYwU0VoN1NVbDdTVW1TazVNQUFBQUJBQUlCV2dQOUFpWUFJQUFBQVRRdUFpTWhJZzRDQnc0QkZCWVhIZ016SVRJK0FqVStBVFFtSndQOUJnb05CL3hQQncwS0JnRUJBUUVCQVFZS0RRY0RzUWNOQ2dZQ0FnSUNBZ01JRFFrRkJRa05DQkVpSWlJUkNBMEpCUVVKRFFnUklpSWlFUUFBQUFJQXgvL0FBemtEd0FBVUFHd0FBQ1VpRGdJVkZCNENNekkrQWpVMExnSWpFeTRESXlJT0FnY1VEZ0l4SEFFR0ZCVVVIZ0k3QVRJK0FqYytBek15SGdJWEhnTVZGQTRDQnc0REJ4UWVBanNCTWo0Q05UNEROejRETno0RE5UUXVBaWNCNXhZb0hoSVNIaWdXRmlnZUVoSWVLQmI2RlRFNFB5TkFaMDB6REFFQkFRRUhEUkVLWkFnUERBa0NCQmNoS2hnUEdoY1VDQWdNQ0FRQ0JBY0dHazVLTmdJSURSSUtZUW9TRFFjRER4UVhDeGtxSVJnSENBMEpCUXdXSVJXYkVoNG9GaFlvSGhJU0hpZ1dGaWdlRWdMWUZCMFRDaWxCVUNjQkF3TUNBZ01EQXdJS0VRd0dCUWtOQ0JFaUhCRUZDUTBJQ0JBUkVnc0lFQThQQnlFOVJGTTRDaEVOQndnT0Vnb1BIQmtXQ2hZb0l4OE5EUnNjSFE4YU5ERXVGQUFBQUFNQWJRRmRBNU1DSlFBVUFDa0FQZ0FBRXhRZUFqTXlQZ0kxTkM0Q0l5SU9BaFVoRkI0Q016SStBalUwTGdJaklnNENGU1V5SGdJVkZBNENJeUl1QWpVMFBnSXpiUkFiSlJVVkpSc1FFQnNsRlJVbEd4QUJMeEFiSlJVVkpSc1FFQnNsRlJVbEd4QUJreFVsR3hBUUd5VVZGU1ViRUJBYkpSVUJ3UlVsR3hBUUd5VVZGU1ViRUJBYkpSVVZKUnNRRUJzbEZSVWxHeEFRR3lVVlpCQWJKUlVWSlJzUUVCc2xGUlVsR3hBQUFBQUFBUUFiLy9rRDR3T0pBSW9BQUFFT0F5TXdLZ0lqSWk0Q0p5NERKeVkrQWo4QkxnTW5MZ01IRGdNSERnTUhCaDRDRng0REZ4WStBamMrQVI0QkZ4NEJEZ0VQQVE0REJ3WXVBaWN1QXljdUFqUTNQZ00zUGdNM1BnTTNQZ0l5TXpJZUFoY2VBeGMzUGdJeUZ4NERGUllPQWdjRHpRRUdDUXNHQXdVSUJScGJjWDgrQlFrSEJRRUJBUVFIQklZR0RBME5CdzBjSFIwUER4MGNHdzBPRnhJT0JBa0RGeXNlRHlNbUtCVVZLaWtwRkF3WkZ4TUdCUUlGREFrQkdEZzhQeDhnUUQ4OUhSNDNNU2tRRUJZTUJnTUlDdzRJQ1JRVkZ3d1lQa1ZLSlFrUkVSRUpIVGszTlJnUklCNGNER1VFQ1FvS0JRVUpCd1FLQkEwUEFRR0pCZ29JQkFJS0ZCSUJCUWdKQlFVS0NRZ0RXUVlNQ3dvRUNBd0hBZ0lCQ0EwU0N3d1pHeDBRSGtkR1FCY01FdzRLQWdJQkJnMEtCZ0VJRVF3S0ZoVVRCd0VTSHhjT0FRRUlFUm9SRVNveE54NGVRVVZJSkJJaklpRVFFQjRjR2d3WktpQVdCUUVDQVFnUEZnOEtGeGtjRDNZRUJnTUNBZ1lJQ1FWT25vQlRCQUFCQUFEL3dRUUFBOEVBUWdBQUJTSXVBaWNsRGdNaklpNENOVFErQWpNeUhnSVhKVFUwUGdJek1oNENGUlFPQWlNaUxnSW5CUlVGUGdNek1oNENGUlFPQWlNRFJDTStNU0VHL3B3TEdSc2REeWRFTXg0ZU0wUW5EeDBiR1FzQllSNHpSQ2NuUkRNZUhqTkVKdzhkR3hrTC9wOEJSdzBlSWlVVUowUXpIaDR6UkNjL0Z5azVJYnNJRFFrRkhqTkVKeWRFTXg0RkNRMEl1Z0luUkRNZUhqTkVKeWRFTXg0RkNRMEl1Z1N0RFJVT0NCNHpSQ2NuUkRNZUFBQUFBQUlBQVAvQUJBQUR3QUFVQURrQUFBRWlEZ0lWRkI0Q016SStBalUwTGdJakNRRU9BeU1pTGdJdkFTNEJORFkvQVQ0Qk1oWWZBUUUrQVRJV0h3RWVBUlFHQndJQWFydUxVRkNMdTJwcXU0dFFVSXU3YWdFKy9uc0JBZ0lEQVFFREFnSUI1QUlDQWdKZUFnVUZCUUo4QVI0Q0JRVUZBbDRDQWdJQ0E4QlFpN3RxYXJ1TFVGQ0x1MnBxdTR0US9vcitld0VCQVFFQkFRRUI1QUlGQlFVQ1hnSUNBZ0o5QVI0Q0FnSUNYZ0lGQlFVQ0FBQUFBQVFBSXYvekE5NERqUUJOQUo0QTJRRXFBQUFCTGdNbkxnTWpJZzRDQnc0REJ3NERGUlFlQWhjZUF4Y2VBeGNWRkI0Q0Z6SWVBVEl6TWo0Q1B3RXlQZ0kzUGdNM1BnTTFOQzRDSndFaUxnSW5MZ0kwTlRRK0FqTTZBUjRCRng0RE16SStBalUwTGdJMU5ENENNekllQWhjZUFoUVZGQTRDSXlvQkxnRW5MZ01qSWc0Q0ZSUWVBaFVVRGdJakpSUU9BaU1pTGdJOUFRY09BeU1pTGdJdkFSVVVEZ0lqSWk0Q1BRRTBQZ0l6Tmg0Q0h3RTNQZ016Tmg0Q0hRRVhJaTRDSnk0Q05EVTBQZ0l6T2dFZUFSY2VBek15UGdJMU5DNENOVFErQWpNeUhnSVhIZ0lVRlJRT0FpTXFBUzRCSnk0REl5SU9BaFVVSGdJVkZBNENJd1BRQkNJeE94MGtTRWhJSkNSSVNFZ2tIVHN5SXdVREJRTUNBZ01GQXdVak1qc2RDaFVWRlFvREJRZ0ZBZ01EQkFJREJnWUdBc3dkT2pvNkhSMDdNU0lFQkFVREFnSURCUVQ5U2d3WkZoSUVBUUVCQkFZSUJBSURBd01CQlF3TkR3Z0pEZ2tGSmk0bUN4VWVFd2tXRlJFRUFRRUJCQVlJQkFFREF3TUJCZ3dNREFZSEN3Z0VKaTRtQ2hVZ0ZnRmNCQVlJQlFVSUJnUTZBUUlEQkFJQ0JBTUNBVG9FQmdnRkJRZ0dCQVFIQ1FVSURnd0pBeXdzQWdZSUNnVUlEd3dIZGd3WkZoSUVBUUVCQkFZSUJBSURBd01CQlF3TkR3Z0pEZ2tGSmk0bUN4VWVFd2tXRlJFRUFRRUJCQVlJQkFFREF3TUJCZ3dNREFZSEN3Z0VKaTRtQ2hVZ0ZnTGRIVGNzSFFNRUJnUUNBZ1FHQkFNZExEY2RGeTR2THhnWExpNHRGaDAzTEIwREFRSUJBUUd2QlFvSUJ3SUJBUUVDQkFMRkFnTUVBd01jS3pZZEZpNHVMaGNYTHk4dUYvN2ZCQWNLQndFREF3TUJCUWdHQXdFQkFRUUdCQUlFQndrRkRnb01HaDROR0JJS0F3WUpCZ0VEQXdNQkJRZ0ZBd0VCQVFNRkF3RURCZ2dGRFFrTkdoNFBHUklLR1FVSUJnUUVCZ2dGZ1k4Q0F3SUJBUUlEQW8rQkJRZ0dCQVFHQ0FXbkJRa0hCQUVCQlFrSGJHd0ZDQVVEQVFJR0N3aW5HUVFIQ2djQkF3TURBUVVJQmdNQkFRRUVCZ1FDQkFjSkJRNEtEQm9lRFJnU0NnTUdDUVlCQXdNREFRVUlCUU1CQVFFREJRTUJBd1lJQlEwSkRSb2VEeGtTQ2dBQUFBQURBTUQvdndOQUE3OEFHQUFkQURJQUFBRVJGQTRDSXlFaUxnSTFFVFErQWpNaE1oNENGUWNoRVNFUkF6UXVBaU1pRGdJVkZCNENNekkrQWpVRFFBb1JGdzMrQUEwWEVRb0tFUmNOQWdBTkZ4RUthLzVWQWF1VkNoRVhEUTBYRVFvS0VSY05EUmNSQ2dOLy9JQU5GeEVLQ2hFWERRT0FEUmNSQ2dvUkZ3MXIvYXNDVmYwckRSY1JDZ29SRncwTkZ4RUtDaEVYRFFBQUFBRUFBQUFCQUFBZ1U2cEdYdzg4OVFBTEJBQUFBQUFBenBSaVhRQUFBQURPbEdKZEFBRC92d1FBQThFQUFBQUlBQUlBQUFBQUFBQUFBUUFBQThEL3dBQUFCQUFBQUFBQUJBQUFBUUFBQUFBQUFBQUFBQUFBQUFBQUFEb0FBQUFBQWdBQUFBUUFBRkVFQUFFUUJBQUFYZ1FBQUNJRUFBQ0pCQUFBa1FRQUFNMEVBQUNSQkFBQWp3UUFBQUFFQUFBSEJBQUFNZ1FBQUNJRUFBQURCQUFBQVFRQUFBQUVBQUR2QkFBQUFBUUFBRkVFQUFBUUJBQUFBQVFBQUJBRUFBQUJCQUFBUXdRQUFDMEVBQUVSQkFBQURRUUFBQUFFQUFBQ0JBQUFBQVFBQUo4RUFBQUFCQUFBSXdRQUFBQUVBQUFNQkFBQUFBUUFBQUFFQUFBSkJBQUFBUVFBQUZrRUFBQUNCQUFBaVFRQUFBWUVBQUJmQkFBQUpBUUFBQUFFQUFBVkJBQUFBQVFBQUFJRUFBREhCQUFBYlFRQUFCc0VBQUFBQkFBQUFBUUFBQ0lFQUFEQUFBQUFBQUFLQUl3QXlBRTZBYVlCNkFJMEFvQUM2Z011QTdZRVNnUytCWFFHRkFkR0I1WUgyZ2dzQ01JSmpncXlDMUFNTkF6Y0RUNE5nZzNpRGp3UHFoQkVFSWdSRGhHSUVnZ1NwQk5NRTV3VUhoVHFGVTRWeUJZY0Zsb1duQmJ5RjJBWVFoak1HUUFaa0Jub0dxWWJCQnRlSE9BZExBQUFBQUVBQUFBNkFTc0FDQUFBQUFBQUFnQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU9BSzRBQVFBQUFBQUFBUUFPQUFBQUFRQUFBQUFBQWdBT0FFY0FBUUFBQUFBQUF3QU9BQ1FBQVFBQUFBQUFCQUFPQUZVQUFRQUFBQUFBQlFBV0FBNEFBUUFBQUFBQUJnQUhBRElBQVFBQUFBQUFDZ0FvQUdNQUF3QUJCQWtBQVFBT0FBQUFBd0FCQkFrQUFnQU9BRWNBQXdBQkJBa0FBd0FPQUNRQUF3QUJCQWtBQkFBT0FGVUFBd0FCQkFrQUJRQVdBQTRBQXdBQkJBa0FCZ0FPQURrQUF3QUJCQWtBQ2dBb0FHTUFhUUJqQUc4QWJRQnZBRzhBYmdCV0FHVUFjZ0J6QUdrQWJ3QnVBQ0FBTUFBdUFEQUFhUUJqQUc4QWJRQnZBRzhBYm1samIyMXZiMjRBYVFCakFHOEFiUUJ2QUc4QWJnQlNBR1VBWndCMUFHd0FZUUJ5QUdrQVl3QnZBRzBBYndCdkFHNEFSd0JsQUc0QVpRQnlBR0VBZEFCbEFHUUFJQUJpQUhrQUlBQkpBR01BYndCTkFHOEFid0J1QUFBQUFBTUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUE9KSBmb3JtYXQoJ3dvZmYnKTtcblx0Zm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0Zm9udC1zdHlsZTogbm9ybWFsO1xufVxuXG5bY2xhc3MqPVwiaWNvbi11dGlsaXR5LVwiXSB7XG5cdGZvbnQtZmFtaWx5OiAnaWNvbW9vbic7XG5cdHNwZWFrOiBub25lO1xuXHRmb250LXN0eWxlOiBub3JtYWw7XG5cdGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdGZvbnQtdmFyaWFudDogbm9ybWFsO1xuXHR0ZXh0LXRyYW5zZm9ybTogbm9uZTtcblx0bGluZS1oZWlnaHQ6IDE7XG5cblx0LyogQmV0dGVyIEZvbnQgUmVuZGVyaW5nID09PT09PT09PT09ICovXG5cdC13ZWJraXQtZm9udC1zbW9vdGhpbmc6IGFudGlhbGlhc2VkO1xuXHQtbW96LW9zeC1mb250LXNtb290aGluZzogZ3JheXNjYWxlO1xufVxuXG4uaWNvbi11dGlsaXR5LXN1Y2Nlc3M6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGU2MDBcIjtcbn1cbi5pY29uLXV0aWxpdHktYXR0YWNoOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDAwXCI7XG59XG4uaWNvbi11dGlsaXR5LWJvb2ttYXJrOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDAxXCI7XG59XG4uaWNvbi11dGlsaXR5LWNhbGw6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMDJcIjtcbn1cbi5pY29uLXV0aWxpdHktY2hhdDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAwM1wiO1xufVxuLmljb24tdXRpbGl0eS1jaGVja2luOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDA0XCI7XG59XG4uaWNvbi11dGlsaXR5LWNoZXZyb25sZWZ0OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDA1XCI7XG59XG4uaWNvbi11dGlsaXR5LWNoZXZyb25yaWdodDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAwNlwiO1xufVxuLmljb24tdXRpbGl0eS1jbG9zZTpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAwN1wiO1xufVxuLmljb24tdXRpbGl0eS1kb3duOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDA4XCI7XG59XG4uaWNvbi11dGlsaXR5LWRvd25sb2FkOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDA5XCI7XG59XG4uaWNvbi11dGlsaXR5LWVtYWlsOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDBiXCI7XG59XG4uaWNvbi11dGlsaXR5LWdyb3VwczpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAwZVwiO1xufVxuLmljb24tdXRpbGl0eS1pbWFnZTpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAwZlwiO1xufVxuLmljb24tdXRpbGl0eS1sZWZ0OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDEwXCI7XG59XG4uaWNvbi11dGlsaXR5LWxpa2U6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMTFcIjtcbn1cbi5pY29uLXV0aWxpdHktbGluazpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxMlwiO1xufVxuLmljb24tdXRpbGl0eS1saXN0OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDEzXCI7XG59XG4uaWNvbi11dGlsaXR5LWxvY2F0aW9uOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDE0XCI7XG59XG4uaWNvbi11dGlsaXR5LWxvZ291dDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxNVwiO1xufVxuLmljb24tdXRpbGl0eS1wZW9wbGU6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMTZcIjtcbn1cbi5pY29uLXV0aWxpdHktcGhvdG86YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMTdcIjtcbn1cbi5pY29uLXV0aWxpdHktcmVwbHk6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMThcIjtcbn1cbi5pY29uLXV0aWxpdHktcmlnaHQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMTlcIjtcbn1cbi5pY29uLXV0aWxpdHktdXA6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMWVcIjtcbn1cbi5pY29uLXV0aWxpdHktdXBsb2FkOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDFmXCI7XG59XG4uaWNvbi11dGlsaXR5LXVzZXI6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMjBcIjtcbn1cbi5pY29uLXV0aWxpdHktZmlsdGVyOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDIyXCI7XG59XG4uaWNvbi11dGlsaXR5LWhlbHA6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMjNcIjtcbn1cbi5pY29uLXV0aWxpdHktZXJyb3I6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMjRcIjtcbn1cbi5pY29uLXV0aWxpdHktd2FybmluZzpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyNVwiO1xufVxuLmljb24tdXRpbGl0eS1hZGR1c2VyOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDI2XCI7XG59XG4uaWNvbi11dGlsaXR5LWFkZDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyN1wiO1xufVxuLmljb24tdXRpbGl0eS1lZGl0OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDBhXCI7XG59XG4uaWNvbi11dGlsaXR5LWJhY2s6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMjhcIjtcbn1cbi5pY29uLXV0aWxpdHktbG9jazpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyOVwiO1xufVxuLmljb24tdXRpbGl0eS1pbmZvOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDJkXCI7XG59XG4uaWNvbi11dGlsaXR5LWZyb3plbjpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyZVwiO1xufVxuLmljb24tdXRpbGl0eS1zcGlubmVyOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDJiXCI7XG59XG4uaWNvbi11dGlsaXR5LW5ld3M6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGUwMmZcIjtcbn1cbi5pY29uLXV0aWxpdHktZGFzaDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAzMFwiO1xufVxuLmljb24tdXRpbGl0eS1xdWVzdGlvbjpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAzMVwiO1xufVxuLmljb24tdXRpbGl0eS0zZG90czpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAzMlwiO1xufVxuLmljb24tdXRpbGl0eS1yZWZyZXNoOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDMzXCI7XG59XG4uaWNvbi11dGlsaXR5LXNvY2lhbHNoYXJlOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDM0XCI7XG59XG4uaWNvbi11dGlsaXR5LXByaW9yaXR5OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDIxXCI7XG59XG4uaWNvbi11dGlsaXR5LXNlYXJjaDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxYlwiO1xufVxuLmljb24tdXRpbGl0eS1yb3dzOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDFhXCI7XG59XG4uaWNvbi11dGlsaXR5LWV2ZW50OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDBjXCI7XG59XG4uaWNvbi11dGlsaXR5LXNldHRpbmdzOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDFjXCI7XG59XG4uaWNvbi11dGlsaXR5LWNoZWNrOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlMDJhXCI7XG59XG4uaWNvbi11dGlsaXR5LW5vdGlmaWNhdGlvbjpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAyY1wiO1xufVxuLmljb24tdXRpbGl0eS1zaGFyZTpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAxZFwiO1xufVxuLmljb24tdXRpbGl0eS1mYXZvcml0ZTpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTAwZFwiO1xufVxuLmljb24tdXRpbGl0eS1zbXM6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGU2MDFcIjtcbn1cbi5pY29uLXV0aWxpdHktcHVzaDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTYwMlwiO1xufVxuXG5AZm9udC1mYWNlIHtcblx0Zm9udC1mYW1pbHk6ICdpY29tb29uJztcblx0c3JjOiB1cmwoJ2ZvbnRzL2ljb21vb24uZW90Jyk7XG59XG5AZm9udC1mYWNlIHtcblx0Zm9udC1mYW1pbHk6ICdpY29tb29uJztcblx0c3JjOiB1cmwoZGF0YTphcHBsaWNhdGlvbi94LWZvbnQtdHRmO2NoYXJzZXQ9dXRmLTg7YmFzZTY0LEFBRUFBQUFMQUlBQUF3QXdUMU12TWc4U0RkQUFBQUM4QUFBQVlHTnRZWEN5UzNobEFBQUJIQUFBQUp4bllYTndBQUFBRUFBQUFiZ0FBQUFJWjJ4NVp1VnFtNThBQUFIQUFBQUcyR2hsWVdRRk5QWXpBQUFJbUFBQUFEWm9hR1ZoQjhNRDFBQUFDTkFBQUFBa2FHMTBlRFhxQUZvQUFBajBBQUFBVUd4dlkyRVJoZytxQUFBSlJBQUFBQ3B0WVhod0FCb0FWd0FBQ1hBQUFBQWdibUZ0WlZjWnB1NEFBQW1RQUFBQlJYQnZjM1FBQXdBQUFBQUsyQUFBQUNBQUF3UUFBWkFBQlFBQUFwa0N6QUFBQUk4Q21RTE1BQUFCNndBekFRa0FBQUFBQUFBQUFBQUFBQUFBQUFBQkVBQUFBQUFBQUFBQUFBQUFBQUFBQUFCQUFBRHdwZ1BBLzhBQVFBUEFBRUFBQUFBQkFBQUFBQUFBQUFBQUFBQWdBQUFBQUFBQ0FBQUFBd0FBQUJRQUF3QUJBQUFBRkFBRUFJZ0FBQUFlQUJBQUF3QU9BQUVBSU9ZRTZTenBoT29LNmcvcVZ2QkU4RXJ3VHZCYThLYi8vZi8vQUFBQUFBQWc1Z0hwTE9tRTZncnFEK3BWOEVUd1N2Qk84RnJ3cGYvOS8vOEFBZi9qR2dNVzNCYUZGZ0FWL0JXM0Q4b1B4US9DRDdjUGJRQURBQUVBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUIvLzhBRHdBQkFBQUFBQUFBQUFBQUFnQUFOemtCQUFBQUFBRUFBQUFBQUFBQUFBQUNBQUEzT1FFQUFBQUFBUUFBQUFBQUFBQUFBQUlBQURjNUFRQUFBQUFCQUFBQVFBR0FBMEFBQXdBQUV3a0JFUUFCZ1A2QUEwRCtnUDZBQXdBQUFBRUFBQURBQXdBQ1FBQURBQUFUQ1FFaEFBR0FBWC85QVFKQS9vQUJnQUFBQWdBUy84QUQ3Z1BBQURZQVN3QUFBUzRCUGdFM0p3NEJJeUl1QWpVakZBWUhEZ0ltSndjZUFSY2VBUTRCQnhjK0FUTXlIZ0lWTXpRMk56NENGaGMzTGdFbkJTSXVBalUwUGdJek1oNENGUlFPQWlNRHBoUUpFeThqWlJVeUd5aEhOUjdKRFEwVlBraE5JMlVXSlEwVUNSUXVJMlVWTWhvb1J6VWZ5UTBORkQ1SlRDUmtGU1VOL2xvclN6a2dJRGxMS3l0TE9TQWdPVXNyQVY0alRFaytGSzhORGg4MVJ5a1pNaGNqTGhNSkZLNE5KQmNqVEVnL0ZLNE1EaDgxUnlnWk1SY2pMaE1KRks4TUpCZHRJRGxMS3l0TE9TQWdPVXNySzBzNUlBQUFBQUFFQUFEL3dBUUFBOEFBRUFBYUFDOEFSQUFBQVRRMk93RXlGaDBCRkFZckFTSW1QUUVUSVRVek5TTTFNeEV6QXlJT0FoVVVIZ0l6TWo0Q05UUXVBaU1SSWk0Q05UUStBak15SGdJVkZBNENJd0hBSEJRZ0ZCd2NGQ0FVSE1EL0FFQkF3RUNBYXJ1TFVGQ0x1MnBxdTR0UVVJdTdhbGFZY1VGQmNaaFdWcGh4UVVGeG1GWUNrQlFjSEJRZ0ZCd2NGQ0QrTUVEQVFQOEFBc0JRaTd0cWFydUxVRkNMdTJwcXU0dFEvR0JCY1poV1ZwaHhRVUZ4bUZaV21IRkJBQVVBQVAvQUJBQUR3QUFKQUEwQUZnQWFBQ0VBQUFFUklRY1JJUkVoRVNFbEZTTTNBeEV6TlNFVkJ4RWhBUlVqTndFaEVUTTFJUkVDZ1A1QXdBR0FBb0QrZ1A1QVpXV0F3QUZBd1A3QUFnQmxaUUdBL2dEQUFVQUN3QUVBd1AzQS93QURBS1ZsWmYyYkFjREF3TUQvQUFGbFpXWDltd0hBd1AyQUFBQUJBQUQvd0FRQUE4QUFMZ0FBQVNFM0xnRWpJZ1lIRGdFVkZCWVhIZ0V6TWpZM1BnRTNGdzRESXlJdUFqVTBQZ0l6TWg0Q0Z6Y1JCQUQrZ0pBM2pFMU5qRGMyT2pvMk40eE5UWXczQkFrRVlDTldZbXc2YXJ1TFVGQ0x1Mm8xWkZ4U0k1WUNRSkEyT2pvMk40eE5UWXczTmpvNk5nVUpCVlFvUVMwWlVJdTdhbXE3aTFBVkp6Y2psdjZBQUFFQUFQL0FCQUFEd0FBa0FBQUJJUkUwSmlzQklnWVZFU0VpQmgwQkZCWXpJUkVVRmpzQk1qWTFFU0V5TmowQk5DWWpBK0Qrb0JNTndBMFQvcUFORXhNTkFXQVREY0FORXdGZ0RSTVREUUpBQVdBTkV4TU4vcUFURGNBTkUvNmdEUk1URFFGZ0V3M0FEUk1BQUFFQUF2L0NBLzREdmdCVUFBQWxPQUV4Q1FFNEFURStBVGMySmk4QkxnRUhEZ0VIT0FFeENRRTRBVEV1QVNjbUJnOEJEZ0VYSGdFWE9BRXhDUUU0QVRFT0FRY0dGaDhCSGdFM1BnRTNPQUV4Q1FFNEFURWVBUmNXTmo4QlBnRW5MZ0VuQS9mK3lRRTNBZ1FCQXdNSGt3Y1NDUU1HQXY3Si9za0NCZ01KRWdlVEJ3TURBUVFDQVRmK3lRSUVBUU1EQjVNSEVna0RCZ0lCTndFM0FnWURDUklIa3djREF3RUVBb2tCTndFM0FnWURDUklIa3djREF3RUVBdjdKQVRjQ0JBRURBd2VUQnhJSkF3WUMvc24reVFJR0F3a1NCNU1IQXdNQkJBSUJOLzdKQWdRQkF3TUhrd2NTQ1FNR0FnQUFBQUlBQVAvQUJBQUR3QUFVQUNFQUFBRWlEZ0lWRkI0Q016SStBalUwTGdJakVTSW1OVFEyTXpJV0ZSUUdJd0lBYXJ1TFVGQ0x1MnBxdTR0UVVJdTdhalZMU3pVMVMwczFBOEJRaTd0cWFydUxVRkNMdTJwcXU0dFEvWUJMTlRWTFN6VTFTd0FDQUFEL3dBUUFBOEFBRkFBcEFBQUJJZzRDRlJRZUFqTXlQZ0kxTkM0Q0l4RWlMZ0kxTkQ0Q016SWVBaFVVRGdJakFnQnF1NHRRVUl1N2FtcTdpMUJRaTd0cVVJdHBQRHhwaTFCUWkyazhQR21MVUFQQVVJdTdhbXE3aTFCUWk3dHFhcnVMVVB5QVBHbUxVRkNMYVR3OGFZdFFVSXRwUEFBQkFBQUFRQUdBQTBBQUF3QUFFd0VSQVFBQmdQNkFBY0QrZ0FNQS9vQUFBQUVBUmdBQUE3Y0RiZ0FlQUFBQk5oY1dGUkVVQndZbkFTWW5FUlFIQmljQkpqVTBOd0UyRnhZVkVUWTNBNTBMQndnSUJ3dithZ1FEQndnTC9tc0xDd0dWQ3dnSEF3UURaZ3NEQkEvOHR3OERBd29CbGdVRy9tb1BBd01LQVpZTER3OExBWlVMQXdRUC9tc0dCUUFBQUFBQkFBQUFBQU54QTI0QUhnQUFOd1luSmpVUk5EYzJGd0VXRnhFME56WVhBUllWRkFjQkJpY21OUkVHQnhvTENBY0hDQXNCbFFVREJ3Z0xBWlVMQy81ckN3Z0hBd1VIQ2dNRER3TkpEd1FEQy81ckJRWUJsUThFQXd2K2F3c1BEd3YrYWdvREF3OEJsZ1lGQUFBQkFBQUFRQUdBQTBBQUF3QUFFd2tCRVFBQmdQNkFBMEQrZ1A2QUF3QUFBQUlBQUFCQUFvQURRQUFEQUFnQUFBa0JFUUVCTXhFakVRRUFBWUQrZ1A4QWdJQUJ3UDZBQXdEK2dQNkFBd0Q5QUFBQUFBQUNBQUFBUUFLQUEwQUFBd0FJQUFBM0NRRVJBUkV6RVNNQUFZRCtnQUlBZ0lCQUFZQUJnUDBBQXdEOUFBTUFBQUFCQUFBQUFRQUFtV2hDUmw4UFBQVUFDd1FBQUFBQUFORUsyTnNBQUFBQTBRclkyd0FBLzhBRUFBUEFBQUFBQ0FBQ0FBQUFBQUFBQUFFQUFBUEEvOEFBQUFRQUFBRC8vd1FBQUFFQUFBQUFBQUFBQUFBQUFBQUFBQUFVQUFBQUFBQUFBQUFBQUFBQUFnQUFBQUYvQUFBQy93QUFCQUFBRWdRQUFBQUVBQUFBQkFBQUFBUUFBQUFFQUFBQ0JBQUFBQVFBQUFBQmZ3QUFBN2NBUmdPM0FBQUJmd0FBQW9BQUFBS0FBQUFBQUFBQUFBb0FGQUFlQUM0QVBnQ3VBUXdCU2dHUUFjWUNQZ0p3QXF3Q3ZBTDBBeW9ET2dOVUEyd0FBQUFCQUFBQUZBQlZBQVVBQUFBQUFBSUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFEZ0N1QUFFQUFBQUFBQUVBRGdBQUFBRUFBQUFBQUFJQURnQkhBQUVBQUFBQUFBTUFEZ0FrQUFFQUFBQUFBQVFBRGdCVkFBRUFBQUFBQUFVQUZnQU9BQUVBQUFBQUFBWUFCd0F5QUFFQUFBQUFBQW9BTkFCakFBTUFBUVFKQUFFQURnQUFBQU1BQVFRSkFBSUFEZ0JIQUFNQUFRUUpBQU1BRGdBa0FBTUFBUVFKQUFRQURnQlZBQU1BQVFRSkFBVUFGZ0FPQUFNQUFRUUpBQVlBRGdBNUFBTUFBUVFKQUFvQU5BQmpBR2tBWXdCdkFHMEFid0J2QUc0QVZnQmxBSElBY3dCcEFHOEFiZ0FnQURFQUxnQXdBR2tBWXdCdkFHMEFid0J2QUc1cFkyOXRiMjl1QUdrQVl3QnZBRzBBYndCdkFHNEFVZ0JsQUdjQWRRQnNBR0VBY2dCcEFHTUFid0J0QUc4QWJ3QnVBRVlBYndCdUFIUUFJQUJuQUdVQWJnQmxBSElBWVFCMEFHVUFaQUFnQUdJQWVRQWdBRWtBWXdCdkFFMEFid0J2QUc0QUxnQUFBQUFEQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQSkgZm9ybWF0KCd0cnVldHlwZScpLFxuXHRcdCB1cmwoZGF0YTphcHBsaWNhdGlvbi9mb250LXdvZmY7Y2hhcnNldD11dGYtODtiYXNlNjQsZDA5R1JnQUJBQUFBQUF0RUFBc0FBQUFBQ3ZnQUFRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJQVXk4eUFBQUJDQUFBQUdBQUFBQmdEeElOMEdOdFlYQUFBQUZvQUFBQW5BQUFBSnl5UzNobFoyRnpjQUFBQWdRQUFBQUlBQUFBQ0FBQUFCQm5iSGxtQUFBQ0RBQUFCdGdBQUFiWTVXcWJuMmhsWVdRQUFBamtBQUFBTmdBQUFEWUZOUFl6YUdobFlRQUFDUndBQUFBa0FBQUFKQWZEQTlSb2JYUjRBQUFKUUFBQUFGQUFBQUJRTmVvQVdteHZZMkVBQUFtUUFBQUFLZ0FBQUNvUmhnK3FiV0Y0Y0FBQUNid0FBQUFnQUFBQUlBQWFBRmR1WVcxbEFBQUozQUFBQVVVQUFBRkZWeG1tN25CdmMzUUFBQXNrQUFBQUlBQUFBQ0FBQXdBQUFBTUVBQUdRQUFVQUFBS1pBc3dBQUFDUEFwa0N6QUFBQWVzQU13RUpBQUFBQUFBQUFBQUFBQUFBQUFBQUFSQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUE4S1lEd1AvQUFFQUR3QUJBQUFBQUFRQUFBQUFBQUFBQUFBQUFJQUFBQUFBQUFnQUFBQU1BQUFBVUFBTUFBUUFBQUJRQUJBQ0lBQUFBSGdBUUFBTUFEZ0FCQUNEbUJPa3M2WVRxQ3VvUDZsYndSUEJLOEU3d1d2Q20vLzMvL3dBQUFBQUFJT1lCNlN6cGhPb0s2Zy9xVmZCRThFcndUdkJhOEtYLy9mLy9BQUgvNHhvREZ0d1doUllBRmZ3VnR3L0tEOFVQd2crM0QyMEFBd0FCQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBRUFBZi8vQUE4QUFRQUFBQUFBQUFBQUFBSUFBRGM1QVFBQUFBQUJBQUFBQUFBQUFBQUFBZ0FBTnprQkFBQUFBQUVBQUFBQUFBQUFBQUFDQUFBM09RRUFBQUFBQVFBQUFFQUJnQU5BQUFNQUFCTUpBUkVBQVlEK2dBTkEvb0QrZ0FNQUFBQUJBQUFBd0FNQUFrQUFBd0FBRXdrQklRQUJnQUYvL1FFQ1FQNkFBWUFBQUFJQUV2L0FBKzREd0FBMkFFc0FBQUV1QVQ0Qk55Y09BU01pTGdJMUl4UUdCdzRDSmljSEhnRVhIZ0VPQVFjWFBnRXpNaDRDRlRNME5qYytBaFlYTnk0Qkp3VWlMZ0kxTkQ0Q016SWVBaFVVRGdJakE2WVVDUk12STJVVk1oc29SelVleVEwTkZUNUlUU05sRmlVTkZBa1VMaU5sRlRJYUtFYzFIOGtORFJRK1NVd2taQlVsRGY1YUswczVJQ0E1U3lzclN6a2dJRGxMS3dGZUkweEpQaFN2RFE0Zk5VY3BHVElYSXk0VENSU3VEU1FYSTB4SVB4U3VEQTRmTlVjb0dURVhJeTRUQ1JTdkRDUVhiU0E1U3lzclN6a2dJRGxMS3l0TE9TQUFBQUFBQkFBQS84QUVBQVBBQUJBQUdnQXZBRVFBQUFFME5qc0JNaFlkQVJRR0t3RWlKajBCRXlFMU16VWpOVE1STXdNaURnSVZGQjRDTXpJK0FqVTBMZ0lqRVNJdUFqVTBQZ0l6TWg0Q0ZSUU9BaU1Cd0J3VUlCUWNIQlFnRkJ6QS93QkFRTUJBZ0dxN2kxQlFpN3RxYXJ1TFVGQ0x1MnBXbUhGQlFYR1lWbGFZY1VGQmNaaFdBcEFVSEJ3VUlCUWNIQlFnL2pCQXdFRC9BQUxBVUl1N2FtcTdpMUJRaTd0cWFydUxVUHhnUVhHWVZsYVljVUZCY1poV1ZwaHhRUUFGQUFEL3dBUUFBOEFBQ1FBTkFCWUFHZ0FoQUFBQkVTRUhFU0VSSVJFaEpSVWpOd01STXpVaEZRY1JJUUVWSXpjQklSRXpOU0VSQW9EK1FNQUJnQUtBL29EK1FHVmxnTUFCUU1EK3dBSUFaV1VCZ1A0QXdBRkFBc0FCQU1EOXdQOEFBd0NsWldYOW13SEF3TURBL3dBQlpXVmwvWnNCd01EOWdBQUFBUUFBLzhBRUFBUEFBQzRBQUFFaE55NEJJeUlHQnc0QkZSUVdGeDRCTXpJMk56NEJOeGNPQXlNaUxnSTFORDRDTXpJZUFoYzNFUVFBL29DUU40eE5UWXczTmpvNk5qZU1UVTJNTndRSkJHQWpWbUpzT21xN2kxQlFpN3RxTldSY1VpT1dBa0NRTmpvNk5qZU1UVTJNTnpZNk9qWUZDUVZVS0VFdEdWQ0x1MnBxdTR0UUZTYzNJNWIrZ0FBQkFBRC93QVFBQThBQUpBQUFBU0VSTkNZckFTSUdGUkVoSWdZZEFSUVdNeUVSRkJZN0FUSTJOUkVoTWpZOUFUUW1Jd1BnL3FBVERjQU5FLzZnRFJNVERRRmdFdzNBRFJNQllBMFRFdzBDUUFGZ0RSTVREZjZnRXczQURSUCtvQTBURXcwQllCTU53QTBUQUFBQkFBTC93Z1ArQTc0QVZBQUFKVGdCTVFrQk9BRXhQZ0UzTmlZdkFTNEJCdzRCQnpnQk1Ra0JPQUV4TGdFbkpnWVBBUTRCRng0QkZ6Z0JNUWtCT0FFeERnRUhCaFlmQVI0Qk56NEJOemdCTVFrQk9BRXhIZ0VYRmpZL0FUNEJKeTRCSndQMy9za0JOd0lFQVFNREI1TUhFZ2tEQmdMK3lmN0pBZ1lEQ1JJSGt3Y0RBd0VFQWdFMy9za0NCQUVEQXdlVEJ4SUpBd1lDQVRjQk53SUdBd2tTQjVNSEF3TUJCQUtKQVRjQk53SUdBd2tTQjVNSEF3TUJCQUwreVFFM0FnUUJBd01Ia3djU0NRTUdBdjdKL3NrQ0JnTUpFZ2VUQndNREFRUUNBVGYreVFJRUFRTURCNU1IRWdrREJnSUFBQUFDQUFEL3dBUUFBOEFBRkFBaEFBQUJJZzRDRlJRZUFqTXlQZ0kxTkM0Q0l4RWlKalUwTmpNeUZoVVVCaU1DQUdxN2kxQlFpN3RxYXJ1TFVGQ0x1Mm8xUzBzMU5VdExOUVBBVUl1N2FtcTdpMUJRaTd0cWFydUxVUDJBU3pVMVMwczFOVXNBQWdBQS84QUVBQVBBQUJRQUtRQUFBU0lPQWhVVUhnSXpNajRDTlRRdUFpTVJJaTRDTlRRK0FqTXlIZ0lWRkE0Q0l3SUFhcnVMVUZDTHUycHF1NHRRVUl1N2FsQ0xhVHc4YVl0UVVJdHBQRHhwaTFBRHdGQ0x1MnBxdTR0UVVJdTdhbXE3aTFEOGdEeHBpMUJRaTJrOFBHbUxVRkNMYVR3QUFRQUFBRUFCZ0FOQUFBTUFBQk1CRVFFQUFZRCtnQUhBL29BREFQNkFBQUFCQUVZQUFBTzNBMjRBSGdBQUFUWVhGaFVSRkFjR0p3RW1KeEVVQndZbkFTWTFORGNCTmhjV0ZSRTJOd09kQ3djSUNBY0wvbW9FQXdjSUMvNXJDd3NCbFFzSUJ3TUVBMllMQXdRUC9MY1BBd01LQVpZRkJ2NXFEd01EQ2dHV0N3OFBDd0dWQ3dNRUQvNXJCZ1VBQUFBQUFRQUFBQUFEY1FOdUFCNEFBRGNHSnlZMUVUUTNOaGNCRmhjUk5EYzJGd0VXRlJRSEFRWW5KalVSQmdjYUN3Z0hCd2dMQVpVRkF3Y0lDd0dWQ3d2K2F3c0lCd01GQndvREF3OERTUThFQXd2K2F3VUdBWlVQQkFNTC9tc0xEdzhML21vS0F3TVBBWllHQlFBQUFRQUFBRUFCZ0FOQUFBTUFBQk1KQVJFQUFZRCtnQU5BL29EK2dBTUFBQUFDQUFBQVFBS0FBMEFBQXdBSUFBQUpBUkVCQVRNUkl4RUJBQUdBL29EL0FJQ0FBY0QrZ0FNQS9vRCtnQU1BL1FBQUFBQUFBZ0FBQUVBQ2dBTkFBQU1BQ0FBQU53a0JFUUVSTXhFakFBR0Evb0FDQUlDQVFBR0FBWUQ5QUFNQS9RQURBQUFBQVFBQUFBRUFBSmxvUWtaZkR6ejFBQXNFQUFBQUFBRFJDdGpiQUFBQUFORUsyTnNBQVAvQUJBQUR3QUFBQUFnQUFnQUFBQUFBQUFBQkFBQUR3UC9BQUFBRUFBQUEvLzhFQUFBQkFBQUFBQUFBQUFBQUFBQUFBQUFBRkFBQUFBQUFBQUFBQUFBQUFBSUFBQUFCZndBQUF2OEFBQVFBQUJJRUFBQUFCQUFBQUFRQUFBQUVBQUFBQkFBQUFnUUFBQUFFQUFBQUFYOEFBQU8zQUVZRHR3QUFBWDhBQUFLQUFBQUNnQUFBQUFBQUFBQUtBQlFBSGdBdUFENEFyZ0VNQVVvQmtBSEdBajRDY0FLc0Fyd0M5QU1xQXpvRFZBTnNBQUFBQVFBQUFCUUFWUUFGQUFBQUFBQUNBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQTRBcmdBQkFBQUFBQUFCQUE0QUFBQUJBQUFBQUFBQ0FBNEFSd0FCQUFBQUFBQURBQTRBSkFBQkFBQUFBQUFFQUE0QVZRQUJBQUFBQUFBRkFCWUFEZ0FCQUFBQUFBQUdBQWNBTWdBQkFBQUFBQUFLQURRQVl3QURBQUVFQ1FBQkFBNEFBQUFEQUFFRUNRQUNBQTRBUndBREFBRUVDUUFEQUE0QUpBQURBQUVFQ1FBRUFBNEFWUUFEQUFFRUNRQUZBQllBRGdBREFBRUVDUUFHQUE0QU9RQURBQUVFQ1FBS0FEUUFZd0JwQUdNQWJ3QnRBRzhBYndCdUFGWUFaUUJ5QUhNQWFRQnZBRzRBSUFBeEFDNEFNQUJwQUdNQWJ3QnRBRzhBYndCdWFXTnZiVzl2YmdCcEFHTUFid0J0QUc4QWJ3QnVBRklBWlFCbkFIVUFiQUJoQUhJQWFRQmpBRzhBYlFCdkFHOEFiZ0JHQUc4QWJnQjBBQ0FBWndCbEFHNEFaUUJ5QUdFQWRBQmxBR1FBSUFCaUFIa0FJQUJKQUdNQWJ3Qk5BRzhBYndCdUFDNEFBQUFBQXdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBPT0pIGZvcm1hdCgnd29mZicpO1xuXHRmb250LXdlaWdodDogbm9ybWFsO1xuXHRmb250LXN0eWxlOiBub3JtYWw7XG59XG5cbltjbGFzc149XCJzYi1pY29uLVwiXSwgW2NsYXNzKj1cIiBzYi1pY29uLVwiXSB7XG5cdGZvbnQtZmFtaWx5OiAnaWNvbW9vbic7XG5cdHNwZWFrOiBub25lO1xuXHRmb250LXN0eWxlOiBub3JtYWw7XG5cdGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdGZvbnQtdmFyaWFudDogbm9ybWFsO1xuXHR0ZXh0LXRyYW5zZm9ybTogbm9uZTtcblx0bGluZS1oZWlnaHQ6IDE7XG5cdGZvbnQtc2l6ZTogMS4yZW07XG5cdGNvbG9yOiAjMTY2YmJmO1xuXG5cdC8qIEJldHRlciBGb250IFJlbmRlcmluZyA9PT09PT09PT09PSAqL1xuXHQtd2Via2l0LWZvbnQtc21vb3RoaW5nOiBhbnRpYWxpYXNlZDtcblx0LW1vei1vc3gtZm9udC1zbW9vdGhpbmc6IGdyYXlzY2FsZTtcbn1cblxuLnNiLWljb24tanVtcC1sZWZ0OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxmMGE1XCI7XG59XG5cbi5zYi1pY29uLWp1bXAtcmlnaHQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGYwYTZcIjtcbn1cblxuLnNiLWljb24tdHJpYW5nbGUtbGVmdDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZjA0NFwiO1xufVxuXG4uc2ItaWNvbi10cmlhbmdsZS1yaWdodDM6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGYwNWFcIjtcbn1cblxuLnNiLWljb24tdHJpYW5nbGUtcmlnaHQ6YmVmb3JlIHtcblx0Y29udGVudDogXCJcXGU2MDFcIjtcbn1cblxuLnNiLWljb24tdHJpYW5nbGUtZG93bjpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTYwMlwiO1xufVxuXG4uc2ItaWNvbi1pbmZvOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlNjA0XCI7XG59XG5cbi5zYi1pY29uLWNvZzpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTYwM1wiO1xufVxuXG4uc2ItaWNvbi1jb3B5OmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlOTJjXCI7XG59XG5cbi5zYi1pY29uLXNwaW5uZXIxMTpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZTk4NFwiO1xufVxuXG4uc2ItaWNvbi1wbHVzOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlYTBhXCI7XG59XG5cbi5zYi1pY29uLWNyb3NzOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlYTBmXCI7XG59XG5cbi5zYi1pY29uLXJhZGlvLWNoZWNrZWQyOmJlZm9yZSB7XG5cdGNvbnRlbnQ6IFwiXFxlYTU1XCI7XG59XG5cbi5zYi1pY29uLXJhZGlvLXVuY2hlY2tlZDpiZWZvcmUge1xuXHRjb250ZW50OiBcIlxcZWE1NlwiO1xufVxuXG4vKk11bHRpLXNlZ21lbnQgbGluZSBleHBhbmQvY29sbGFwc2UgbGluayovXG4uc2ItaWNvbi10cmlhbmdsZS1yaWdodCxcbi5zYi1pY29uLXRyaWFuZ2xlLWRvd24ge1xuXHRjb2xvcjogYmxhY2s7XG5cdHZlcnRpY2FsLWFsaWduOiB0ZXh0LWJvdHRvbTtcblx0Y3Vyc29yOiBwb2ludGVyO1xufVxuXG4vKkFjdGlvbiBsaW5rcyBvbiB0aGUgYWN0aW9ucyBjb2x1bW4qL1xuLnNiLWljb24tY3Jvc3MubGluZSxcbi5zYi1pY29uLWNvZy5saW5lIHtcblx0Zm9udC1zaXplOiAxZW07XG59XG5cbi8qUGFnaW5hdGlvbiBjb250cm9scyovXG4uc2ItaWNvbi1qdW1wLWxlZnQsXG4uc2ItaWNvbi10cmlhbmdsZS1sZWZ0LFxuLnNiLWljb24tdHJpYW5nbGUtcmlnaHQzLFxuLnNiLWljb24tanVtcC1yaWdodCB7XG5cdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdG1hcmdpbi1yaWdodDogNXB4O1xuXHRjdXJzb3I6IHBvaW50ZXI7XG59XG5cbi5zYi1pY29uLWp1bXAtbGVmdC5kaXNhYmxlZCxcbi5zYi1pY29uLXRyaWFuZ2xlLWxlZnQuZGlzYWJsZWQsXG4uc2ItaWNvbi10cmlhbmdsZS1yaWdodDMuZGlzYWJsZWQsXG4uc2ItaWNvbi1qdW1wLXJpZ2h0LmRpc2FibGVkIHtcblx0Y29sb3I6ICNkM2QzZDM7XG5cdGN1cnNvcjogZGVmYXVsdDtcbn1cblxuLyoqKiBqUXVlcnkgVUkgQ2FsZW5kYXIgKioqL1xuXG4udWktZGF0ZXBpY2tlciB7XG5cdGJhY2tncm91bmQtaW1hZ2U6IHVybCgnL2ltZy9hbG9oYVNraW4vY2FsX3Nwcml0ZS5wbmcnKTtcblx0YmFja2dyb3VuZC1wb3NpdGlvbjogbGVmdCAtMTA5cHg7XG5cdGJhY2tncm91bmQtcmVwZWF0OiByZXBlYXQteDtcblx0YmFja2dyb3VuZC1jb2xvcjogI2VkZWRlZDtcblx0ei1pbmRleDogMTAwICFpbXBvcnRhbnQ7XG5cdHdpZHRoOiBhdXRvO1xuXHRwYWRkaW5nOiA3cHggNXB4IDZweDtcblx0Ym9yZGVyLWxlZnQ6IDFweCBzb2xpZCAjZDZkNmQ2O1xuXHRib3JkZXItcmlnaHQ6IDFweCBzb2xpZCAjZDZkNmQ2O1xuXHQtbW96LWJveC1zaGFkb3c6IDAgMnB4IDZweCAjMTExO1xuXHQtd2Via2l0LWJveC1zaGFkb3c6IDAgMnB4IDZweCAjMTExO1xuXHRib3gtc2hhZG93OiAwIDJweCA2cHggIzExMTtcblx0LW1vei1ib3JkZXItcmFkaXVzOiA1cHg7XG5cdC13ZWJraXQtYm9yZGVyLXJhZGl1czogNXB4O1xuXHRib3JkZXItcmFkaXVzOiA1cHg7XG59XG5cbi51aS1kYXRlcGlja2VyLCAudWktZGF0ZXBpY2tlci1oZWFkZXIsIC51aS1kYXRlcGlja2VyLWNhbGVuZGFyLCAudWktZGF0ZXBpY2tlci13ZWVrLWVuZCwgLnVpLWRhdGVwaWNrZXItYnV0dG9ucGFuZSB7XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcblx0b3ZlcmZsb3c6IGhpZGRlbjtcblx0d2hpdGUtc3BhY2U6IG5vd3JhcDtcbn1cblxuLnVpLWRhdGVwaWNrZXItaGVhZGVyIHtcblx0cGFkZGluZzogMCAwIDNweDtcbn1cblxuLnVpLWRhdGVwaWNrZXItdGl0bGUge1xuXHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG59XG5cbi51aS1kYXRlcGlja2VyLW1vbnRoIHtcblx0ZmxvYXQ6IGxlZnQ7XG59XG5cbi51aS1kYXRlcGlja2VyLXllYXIge1xuXHRmbG9hdDogcmlnaHQ7XG59XG5cbi51aS1kYXRlcGlja2VyLXByZXYsIC51aS1kYXRlcGlja2VyLW5leHQge1xuXHRtYXJnaW4tdG9wOiA0cHg7XG5cdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0d2lkdGg6IDE5cHg7XG5cdGhlaWdodDogMTZweDtcblx0bWFyZ2luOiAycHggNHB4IDAgMDtcblx0YmFja2dyb3VuZC1yZXBlYXQ6IG5vLXJlcGVhdDtcblx0bGluZS1oZWlnaHQ6IDQwMCU7XG59XG5cbi51aS1kYXRlcGlja2VyLXByZXYge1xuXHRmbG9hdDogbGVmdDtcblx0YmFja2dyb3VuZC1pbWFnZTogdXJsKCcvaW1nL2Z1bmNfaWNvbnMvY2FsL2xlZnRBcnJvdy5naWYnKTtcbn1cblxuLnVpLWRhdGVwaWNrZXItbmV4dCB7XG5cdGZsb2F0OiBsZWZ0O1xuXHRiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJy9pbWcvZnVuY19pY29ucy9jYWwvcmlnaHRBcnJvdy5naWYnKTtcbn1cblxuLnVpLWRhdGVwaWNrZXItY2FsZW5kYXIge1xuXHRwYWRkaW5nOiAwIDVweDtcblx0bWFyZ2luLWxlZnQ6IGF1dG87XG5cdG1hcmdpbi1yaWdodDogYXV0bztcbn1cblxuLnVpLWRhdGVwaWNrZXItY2FsZW5kYXIgPiB0aGVhZCA+IHRyID4gdGgge1xuXHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdGZvbnQtc2l6ZTogLjllbTtcblx0d2lkdGg6IDE0JTtcbn1cblxuLnVpLWRhdGVwaWNrZXItY2FsZW5kYXIgdGQge1xuXHRwYWRkaW5nOiAycHg7XG59XG5cbi51aS1kYXRlcGlja2VyLWNhbGVuZGFyIGEge1xuXHR3aWR0aDogYXV0bztcblx0Ym9yZGVyLWJvdHRvbTogbm9uZTtcblx0dGV4dC1kZWNvcmF0aW9uOiBub25lO1xuXHRmb250LXNpemU6IC45NWVtO1xufVxuXG4udWktZGF0ZXBpY2tlci1vdGhlci1tb250aCBhIHtcblx0Y29sb3I6ICM5OTk7XG59XG5cbi51aS1kYXRlcGlja2VyLXRvZGF5LCAudWktZGF0ZXBpY2tlci10b2RheSA+IGEge1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiAjMTc5N2MwO1xuXHRjb2xvcjogI2ZmZjtcblx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbn1cblxuLnVpLWRhdGVwaWNrZXItY3VycmVudC1kYXkge1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiAjYzZlMWZmO1xuXHRib3JkZXI6IDFweCBzb2xpZCAjOWNmO1xuXHRmb250LXdlaWdodDogYm9sZDtcblx0dGV4dC1kZWNvcmF0aW9uOiBub25lO1xufVxuXG4udWktZGF0ZXBpY2tlci1jdXJyZW50LWRheSA+IGEge1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiAjYzZlMWZmO1xuXHRjb2xvcjogIzMzMztcbn1cblxuLnVpLWRhdGVwaWNrZXItYnV0dG9ucGFuZSB7XG5cdHBhZGRpbmc6IDFweDtcblx0Y2xlYXI6IGJvdGg7XG59XG5cbi51aS1kYXRlcGlja2VyLWJ1dHRvbnBhbmUgPiBidXR0b24ge1xuXHRiYWNrZ3JvdW5kOiB0cmFuc3BhcmVudDtcblx0Ym9yZGVyOiBub25lICFpbXBvcnRhbnQ7XG5cdGNvbG9yOiAjMDE1YmE3O1xuXHRjdXJzb3I6IHBvaW50ZXI7XG5cdGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdHBhZGRpbmc6IDA7XG5cdG1hcmdpbjogMDtcbn1cblxuLnVpLWRhdGVwaWNrZXItY2xvc2Uge1xuXHRkaXNwbGF5OiBub25lO1xufVxuXG4jdWktZGF0ZXBpY2tlci1kaXYge1xuXHRkaXNwbGF5OiBub25lO1xufVxuIiwiLy8gQGltcG9ydCBcImljb25zL3NhbGVzZm9yY2UvY3NzL3NmLWljb25zLWVtYmVkZGVkLmNzc1wiO1xuQGZvbnQtZmFjZSB7XG5cdGZvbnQtZmFtaWx5OiAnc2YtaWNvbnMnO1xuXHRzcmM6IHVybCgnLi4vZm9udC9zZi1pY29ucy5lb3Q/ODc3NDI0NDYnKTtcblx0c3JjOiB1cmwoJy4uL2ZvbnQvc2YtaWNvbnMuZW90Pzg3NzQyNDQ2I2llZml4JykgZm9ybWF0KCdlbWJlZGRlZC1vcGVudHlwZScpLFxuXHR1cmwoJy4uL2ZvbnQvc2YtaWNvbnMuc3ZnPzg3NzQyNDQ2I3NmLWljb25zJykgZm9ybWF0KCdzdmcnKTtcblx0Zm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0Zm9udC1zdHlsZTogbm9ybWFsO1xufVxuQGZvbnQtZmFjZSB7XG5cdGZvbnQtZmFtaWx5OiAnc2YtaWNvbnMnO1xuXHRzcmM6IHVybCgnZGF0YTphcHBsaWNhdGlvbi9vY3RldC1zdHJlYW07YmFzZTY0LGQwOUdSZ0FCQUFBQUFHUmdBQThBQUFBQXYzZ0FBUUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFCSFUxVkNBQUFCV0FBQUFEc0FBQUJVSUlzbGVrOVRMeklBQUFHVUFBQUFRd0FBQUZZK0lFb0NZMjFoY0FBQUFkZ0FBQUxrQUFBSkVoN0U3S2xqZG5RZ0FBQUV2QUFBQUJNQUFBQWdCdGYvQkdad1oyMEFBQVRRQUFBRmtBQUFDM0NLa1pCWloyRnpjQUFBQ21BQUFBQUlBQUFBQ0FBQUFCQm5iSGxtQUFBS2FBQUFVbm9BQUp3eTZ2T0Z1bWhsWVdRQUFGemtBQUFBTkFBQUFEWVVBREw3YUdobFlRQUFYUmdBQUFBZkFBQUFKQWRCQTlsb2JYUjRBQUJkT0FBQUFDRUFBQUl3SWVmLy9XeHZZMkVBQUYxY0FBQUJHZ0FBQVJyR2dhSkliV0Y0Y0FBQVhuZ0FBQUFnQUFBQUlBSXNES0J1WVcxbEFBQmVtQUFBQVlNQUFBTE52MXFsNFhCdmMzUUFBR0FjQUFBRHhnQUFCYy83a2N1UGNISmxjQUFBWStRQUFBQjZBQUFBaHVWQks3eDRuR05nWkdCZzRHSXdZTEJqWUhKeDh3bGg0TXRKTE1samtHSmdZWUFBa0R3eW16RW5NejJSZ1FQR0E4cXhnR2tPSUdhRGlBSUFKanNGU0FCNG5HTmdaSDdHT0lHQmxZR0JxWXBwRHdNRFF3K0VabnpBWU1qSUJCUmxZR1Ztd0FvQzBseFRHQnhlTUx6b1lRNzZuOFVReFJ6TU1BMG96QWlTQXdBVU5neWdBSGljN2RhTGxzMEZITVh4N3hualVKUkxLWldpWExwUWlWUjBvYXU3cnFRcktVcEpDTjBUa2pBUDRmSDJXK2o3bjltUDBhejFtVE56MXB4Wlo5YjY3YjBIbUEzTTBqcE53c1FaUm43RjZJVFBqcWFmbjhYdDA4OVBqcmI1L2RpZkdqR1JhNW02ZFF0Q2JneVB3MHNZajVaT1AwNzRta2wvODVnNXpPVTJYeitQK2R6Qm5TeGdJWXRZekYzY3pSTHU0VjZXY2gvMzh3RExlSkNIV000S0h1WVJWcktLMWF6aFVSN2pjWjVncmUvalNaN2lhZGJ6REJ2WXlMTnM0am1lNXdVMnM0VVhlWW1YZVlXdGJPTlZYdU4xM3VCTjNtSTdPOWpKTG5hemg3M3M0MjNlNFYzZTQzMCtZRDhIK0pDRGZNVEhmTUtuZk1ibkhPSXdYM0NFTC9tS294emphNzdoT04veUhTZjRucFA4d0NsT2M0WWZPY3M1enZNVFAvTUx2L0lidi9NSGYzS0J2N2pJSlM3ek4xZjRoNnY4eXpXdWM4Ty9oZEdZL3ovbUQ1L0dOL3ZkMUhCQk00WnJTM2xCcEliclRBMFhtaG91TitXbGtmTG1TSGw5cEx4RFVzTkZwN3hOVXNPN1MzbXZwTHhjVXQ0d0thK1psSGROeWdzbjVhMlQ4dXBKZWYra1RBSXBNMEhLZEpBeUo2Uk1EQ216UThvVWtUSlBwRXdXS1ROR3lyU1JNbmVrVENBcHMwaktWSkl5bjZTRzYwNlpXVkttbDVRNUptV2lTWmx0VWtNTHBjdzdLWk5QeWc0Z1pSdVFzaGRJMlJDazdBcFN0Z1lwKzRPVVRVTEtUaUZsdTVDeVowalpPS1RzSGxLMkVDbjdpSlROUk1xT0ltVmJrYkszU05sZ3BPd3lVcllhS2Z1TmxFMUh5czRqWmZ1UnNnZEoyWWlrN0VaU3RpUXArNUtVelVuS0RpVmxtNUt5VjBuWnNLVHNXbEsyTGluN2w1Uk5UTXBPSm1VN2s3S25TZG5ZcE94dVVyWTRLZnVjbE0xT3lvNG5aZHVUc3ZkSnVRQ2szQUpTcmdJcDk0R1VTMEhLelNEbGVwQnlSMGk1S0tUY0ZsS3VEQ24zaHBUTFE4b05JdVVha1hLWFNMbFFwTndxVXE0V0tmZUxsRXRHeWswajVicVJjdWRJdVhpazNENVNyaUFwOTVDVXkwaktqU1RsV3BKeU4wbTVvS1RjVWxLdUtpbjNsWlJMUzhyTkplWDZrbktIU2JuSS90OHlnK0Z4YWdaci9nT2VTS0xtZUp4allFQURFaERJSFB3L0M0UUJFbllEM3dCNG5LMVdhWGZUUmhRZGVVbWNoQ3dsQ3kxcVljVEVhYkJHSm16QmdBbEJzbU1nWFp5dGxhQ0xGRHZwdnZHSjMrQmY4MlRhYytnM2ZscnZHeThra0xUbmNKcVRvM2ZuemRYTTIyVVNXcExZQyt1UmxKc3Z4ZFRXSm8zc1BBbnBoazNMVVh3b08zc2haWXJKM3dWUkVLMlcycmNkaDBSRUlsQzFyckJFRVBzZVdacGtmT2hSUnN1MnBGZE55aTA5NlM1YjQwRzlWZDkrR2pyS3NUdWhwR1l6ZEdnOXNpVlZHRldpU0tZOVV0S21aYWo2SzBrcnZML0N6RmZOVU1LSVRpSnB2Qm5HMEVqZUcyZTB5bWcxdHVNb2lteXkzQ2hTSkpyaFFSUjVsTlVTNStTS0NRektCODJROHNxbkVlWEQvSWlzMktPY1ZyQkx0dFA4dmk5NXAzYzVQN0ZmYjFHMjVFQWZ5STdzNE94MEpWK0VXMXRoM0xTVDdTaFVFWGJYZDBKczJleFUvMmFQOHBwR0E3Y3JNcjNRakdDcGZJVVFLeitoelA0aFdTMmNUL21TUjZOYXNwRVRRZXRsVHV4TFBvSFc0NGdwY2MwWVdkRGQwUWtSMVAyU013ejJtRDRlL1BIZUtaWUxFd0o0SE10NlJ5V2NDQk1wWVhNMFNkb3djbUFsWllzcXFmV3VtRGpsZFZyRVc4Sis3ZHJSbDg1bzQxQjNZanhiRHgxYk9WSEo4V2hTcDVsTW5kcEp6YU1wRGFLVWRDWjR6SzhES0QraVNWNXRZeldKbFVmVE9HYkdoRVFpQWkzY1MxTkJMRHV4cENrRXphTVp2YmticHJsMkxWcWt5UVAxM0tQMzlPWld1TG5UVTlvTzlMTkdmMWFuWWpyWUM5UHBhZVF2OFduYTVTSkY2ZnJwR1g1TTRrSFdBaktSTFRiRGxJTUhiLzBPMHN2WGxoeUYxd2JZN3Uzeks2aDkxa1R3cEFIN0c5QWVUOVVwQ1V5Rm1GV0lWa0Jpcld0WmxzblZyQmFweU5SM1E1cFd2cXpUQklweUhCZkh2b3h4L1Y4ek01YVlFcjdmaWRPekl5NDljKzFMQ05NY2ZKdDFQWnJYcWNWeUFYRm1lVTZuV1pidjZ6VEg4Z09kNWxtZTEra0lTMXVub3l3LzFHbUI1VWM2SFdONVFRdWFkTi9Ca0lzdzVBSU9rRENFcFFORFdGNkNJU3dWREdHNUNFTllGbUVJeXlVWXd2SmpHTUp5R1lhd3ZLeGwxZFJUU2VQYW1WZ0diRUpnWW80ZXVjeEY1V29xdVZSQ3UyaFVha09lRW02VlZCVFBxbjlsb0Y0ODhvWTVzQlpJbDhpYVh6SE9sWTlHNWZqV0ZTMXZHanRYd0xIcWJ4K085am54VXRhTGhUOEYvOVhXVkNXOVlzM0RrNnZ3RzRhZWJDZXFOcWw0ZEUyWHoxVTl1djVmVkZSWUMvUWJTSVZZS01xeWJIQm5Jb1NQT3AyR2FxQ1ZROHhzekR5MDYzWExtcC9EL1RjeFFoWlEvZmczRkJvTDNJTk9XVWxaN2VDczFkZmJzdHc3ZzNJNEV5eEpNVGZ6K2xiNElpT3owbjZSV2NxZWozd2VjQVdNU21YWWFnT3RGYnpaSnpFUG1kNGt6d1J4VzFFMlNOcll6Z1NKRFJ6emdIbnpuUVFtWWVxcURlUk80WVlOK0FWaGJzRjVKMXlpZXFNc2grNUY3UE1vcFB4YnArSkU5cWhvak1DejJSdGhyKzlDeW05eERDUTArYVYrREZRVm9ha1lOUlhRTkZKdXFBWmZ4dG02YlVMR0R2UWpLbmJEc3F6aXc4Y1c5NVdTYlJtRWZLU0kxYU9qbjlaZW9rNnEzSDVtRkpmdm5iNEZ3U0ExTVg5NzMzUnhrTXE3V3NreVIyMERVN2NhbFZQWG1rUGpWWWZxNWxIMXZlUHNFemxybW02Nkp4NTZYOU9xMjhIRlhDeXc5bTBPMGxJbUY5VDFZWVVOb3N2RnBWRHFaVFJKNzdnSEdCWVkwTzlRaW8zL3EvcllmSjRyVllYUmNTVGZUdFMzMGVkZ0RQd1AySDlIOVFQUTkyUG9jZzB1ei9lYUU1OXU5T0ZzbWE2aUYrdW42RGN3YTYyNVdib0czTkIwQStJaFI2Mk91TW9OZktjR2NYcWt1UnpwSWVCajNSWGlBY0FtZ01YZ0U5MjFqT1pUQUtQNWpEayt3T2ZNWWRCa0RvTXQ1akRZWnM0YXdBNXpHT3d5aDhFZWN4aDh3WngxZ0MrWnd5QmtEb09JT1F5ZU1DY0FlTW9jQmw4eGg4SFh6R0h3RFhQdUEzekxIQVl4Y3hna3pHR3dyK25XTU13dFh0QmRvTFpCVmFBRFUwOVkzTVBpVUZObHlQNk9GNGI5dlVITS9zRWdwdjZvNmZhUStoTXZEUFZuZzVqNmkwRk0vVlhUblNIMU4xNFk2dThHTWZVUGc1ajZUTDhZeTJVR3Y0eDhsd29IbEYxc1B1ZnZpZmNQMjhWQXVRQUJBQUgvL3dBUGVKek12UW1jSEVkNU4xeFZmVldmTXozMzdESG56ckhIN0s1MmQvYVVkbWNsN1NGcGRhK2tsU3pMNjBPeWJGbUhieHREYkM3Yk1RWTd3akdPSUlHQURRUXdKc1NFSXdRTTVQMGdoaERDRVFpMk9YNEJEQ0VmY1lCZnZzU3YxSHhQVmZjY08xcFpOdVRONzlYUlhWMWQzZE5kWGZVOHovKzVDZ2tJL2dpZngxOUhCb3FqUEJxdmpGQlJJYktFTUVhTFhoSGhKVWtnR09HRjFoYkx4Q2lkYXNtMzVrTkJNMjdGRlJrWjJGQ2xVSGR3SUlGREZzNzA0cUZKbkw3Z3dabGtPWmtzVDdJTnZyMnhuR0s3S1Y3K0I2L3lBaHQ0Wkl6UWJ6NHV2RjJRVUI4YXFxeEJCSk9UU0VMU0tRR2VHK0ZGMkdHMEpNb0VXaTRRMUZYSUpGdWlBWittb0Q3U3A4RFR3a01OcjhORCtXdzZreS9iUS9sdW5KSERka2lHWTdrZGh5S0Q2WUVJSEVjbThNQXduQjhtMDNpZFlkdUc4d1ZWQytqamVrQlRuUyt3Q3J5dVdvRTd2Qk12MFJKNXovNWZ3ajd5T1hqMllpWEhPaGFkbExBZ0NxY1FGa1c4Q0gwdkxpRVJpd3ZCWURJWWpNaFNTemNlR1I3cXcvbU1EOHNaYng5SzRrakkydzlNNGVFQmI4L2FEWkhGRjFVMXIwYlZzNUpmT2d2N29ncEZ5Vkdod0N2bC8rMVd2aWpoYTgvU3B2UC9XL1pEMGEyVTViTzFpNkNMMlhneHlIMm9nRWJRSE5xSHJrWTNWYTVmM2xIcEZ3VjFhWDYwS0ZLUnpNRWJFUldUWlQ5R1BsTVhWQUdweTBoQUloWEVaY3ZRQkNvcGRCRnVKaXVTN0ZaUVpRa3BWSUZ2ZGRVVkJ3OHM3bHJZdkhIOTJ2R2hnWjZ1VExLdEpSb09CWHltb1NrU0twQ0N6YjhmKzA3WmpNdytVYmg1ejc4ZisyNTVISkxoMCtiaFV3L0RwNHlFbzYvd21QeWRjMis4SStTUHhmeWh4bTB1aG0rTDUzUE9GeVdwS01xeVdKU2tIWklVWXNXUUpGMjFhaTI1THh1TlJOT3hxN3ovZ1dpaE00NS9FRXM0UjFpTFp5WDQ4K3hMbGhDQnNmT2cwQzMwb1RWb0drMVdKaEFiUGdRZGx6R1M0Tjh4NkdWTUJMeU1KRkdVb0lzbE5wSWtFZnAxYXUzSVVEYmRFclY5YUExWncrWkFMdXUrNkFqLzI0c0xlVm1SRlF1ekRoaVp4UEF2bXNEd3hCRUxReTNNQ3ZtODNza3M2LzY1OFk2V2pDd1Y1cnFURTdHOFRIekdzbWxqdWIvUWUyTmwyOTNGVGtGWWMyalM5QWVEdHJHc0J3TDZzbUhmNnRmYjExMFZNbHU3K3JxMzltTWNDV2NIVkNOZ0RsOWU2QzVoWWVmNmpkdlgzMzR3S29XTmRzTittbDEwdVc3Yk9rSWlmLyszQ3oyMThYZGxaZG1DR1dVU1pDNnpZV2ZBc0FOaXBvdUd6b2VjQmtNT2FVaVZOSFdaWW0vSVFVRmlBMDVpQTI0UEgyenJ4c3VyRGpiZkt4aHNBcWNmdkhzNC9SaTV5TEd3N2R4bms3MWo4WFE2UHRhNDdVMlM2VlNwOUY1ZGRYNUZkWjFpVTlYek9uWGVxK3E2aWc5UXZRQm45dk16NzFOMW9hZVVHazhQcE02a0I5Si9CUC9IazcybGxFQlNwWE0zcUpvR1JBQTJON0VyZWVrTTI5eklEdmxVNXB1M2swOGdIMG9DUFpxdVRDSU1ZMG5BQ0hwUHdRUUlmK05Zb3BnTnBrd3E0R2RFTmRXWDZXdUorcE9CSkJCV0gvR3BibC9WWHBBTkdlRml4NzkzOWw4WmRSUkNiSHVCTXBteGpURjJCQnZuaDBCVk5adHZuTy9WNjcyNThYbWhCRyt5RWMxWFpwQW9peWVSTE1rbjJZZVhUaEtWSUFXZFJBcFdUaUlzQ0p6U0NrdndzZ0tiSDVQRGc3MmxyczVNMnVNVVNaTFUzRm5DT0VMMXkxVTVSWjNDNUROS0F4RmV3VFdxRkxrZ1BBYU13RGJPM1cyd0I5ZnRVcEo5b0lDemo4YW9jNWJTVHRoZko5bUdIMDZHSXRwMWpQWlM2Z1QwcDlqYlBjVm1nSE0yVmVwTllsRVBrRHhsRjhVb2tPZGpNb3lMbzNvZ3FPR0hUVGprcEpxeTc4cjdvZ2VGVUNlYVFoc3IwMGdVSkVHVWppT0pDQkk1Qmg4WkNTSVNsdUVqWTB3V1lVZndFaEFQdkJBSll6UStOdENYU29ZN0k1MjZoa0k0Uk5tbnpRQjVrRU9NSWd3d2lqRlV5QmZ5UW9adGg5anhBRHNUWW0yRVdrOUJ6OVU2QWYvNk5jZXVXVGMxdGU2YVl5OWVkM1J5YW1yeTZIV3Z1WFRudGo3NHMyM25wNnFGTm9XelRmb1dsd0VKUGF4ZDdRSmVPUHVkRlZmd0F0NUx6VSt5anZxWmFyekY1Vmg4ZlAvbWw4SlB5WmRSRVcxSGQ2QlNwV3RjSmlMQ2MwQTNSUmdMd0dWUGdyQWdZUkFmcENNM1hYL28wczF6SStWa2U2Y3NoYnR4dnN4ZURONHZtd0VLR0laWEQvUDNnNzhKekQ0eUo1MlRPQWROV05QeWtOdFdWaUp1VTloRjNaYmw0VUplY3B0Tll0N092V1drNFo3ZW9NcXpIc1VEblMzeEhuOXJlMGRuc2ozVjNhYWE2WFdwVGt4eWlZcGlpZUhPdGw1VEpsMXBRMnZyVHJZbnV6cmEyK3llZUV1bm9oaFhkWWlXVWtua2NDSGxmS3ZETXRMUmVDYVZQWkJOWmVMUnRHN2w1bE45dURlTkgwejM0a2d3RjhlajY3Wk9qd3hsV24xMk9MaXh1RDZYaU5tR2JiVzI1N3JUWFZUSkp5TXh1V1dOejJjRTJsb0tsZUxHWU5qMnRXYUdScWEzcmpQaWN2OEdoWGFsdTNQdDEvdHRLOUNlakV4a2VqYUhvOUh3NXA3TVJDUWJoOW5yVDhZNytySURBOWxVQzdBU3hPZnB4MkZzU2lnS1ZIeHRaUXptSWdZQkNJbndZY2h4Uk1nSkdhUWhVVmlFbmNENGx5QXV4R01FcFJPeFFyekE1MmFVUkJXUDJNREw0T1k1V1FDQ0RjTU9EcU1SOWxHRW01MHRvUTU5Zzk0UmZuMnFwNGRUeDFMSzZaY2tJU0ViK0gyWnVHeVV5RXpZdmlrUUtxWE9MYkN6K05lcDBobFZHdElOZ1NxcGtzdDduZ1phK1V1UFZrNmgzWlVkbEltYklHVXVnN2lEQkprSXl6cVdrU0xLeXJJR3RGSVNGMkVuU2t0QVE2V0ZnWDZYY282UDlFOE5USjFQUDQwYXIzRmZoVTBpcGVsWWFEb3VOSjlmUVU4WndiRU44cXJtY2lOdC9TV25TRGFiYzg4M2tObEJQZ3Y1NWlkd2tsVkRNMkFYQ3VjWktaQUJxLzJ3SFYwR1Ura3RsVGNkUDB4TVkySGoycUdlanZhd0tXa0lYN3FINkpvd1IyWFJSeVJzSW9BUHh3T3FyZmdsd2FKSU01RjJMSVFOcURiTTVTRFdkRjFiaEoybUx5RmQweGN1WDk2NW8xTHA3MCtsYkJBbHI3bDYrZVRsSi9mdjIzSFp6c3NxMnl2YjVtZjdwL29uUjRkVGZhbmVZajRPSFdrblZlaEk3QXREUjQ0TXVtT2hPallZLzI2Z3pYbTg4dlJFMC9GZ3R1bFl1c2lIZUhhQUdnWmxHekphS3pvT0s2MWxteWZaSnNRMkw5UksrTXk1cjdFOTZXZmJodkpuNE53d08zS2VwZ1krNU83ZE91ZmRqZWN1VkY3ci9RSnNDSzJYNnp3L1RXNUZiYWdIN1VWN0tydldZRkhPdFJNaWdPZ3VLVXhFT281a1VaSEZZMng4Z3lDa0xNUHdGNGdvTENQT0xWQ05XV0MwYy91bTJlbEtlYkN6a0U2R0FxZ050NmsxWnNGSUprQ1VDTkQvYUdUUTVScU1hVFRKa1NPdWVPblZnZWc1M0V2cW91Z3dsMFJKTkNMalgrK2EzVkRzekV0Q214Z3dsbFE2djVkWDdOb3dPMVIvU1NwSWZOL2FCY01zMHhzeUJhSXBZZFhBdE1VdXhaUGxGQ1lsY2tzK1Y1bGVtSittZEw5aGkwbEI2bUlWajd3MmwzY21hOS9uR0paRVB6Vk42by9rZkhvWTJHL0E5Q21xVDgzSDdRREdBRmtMRlNUOHhnRjY5bk5CUlJhbmFLTVYrQVZCeEhPTWNKMkU3aVlZaENqSkJhWVNCNllNQkM3NGZSMlo5cFpRMEJmMVI4Y1l1OGtCSlpOQmxraGdHRlBBVkRMNUlaQW5RdkpJVTI4Snp6bHplaTZuTy9PbW5Jb0twMkpwMlZGQmNCeElwOU02M2Nwa3U2MVVUNU12QmkwcmVHNHNNcERKRE15Q2dKanV6enpPcEw4WG1lU0lHdVNsZHRTRk9pcHBFWkFEd0dnUWgwQThRc0FSRVRxU1RPUTZFbDNKcnU1QlNZcDA1OEkxT1doazJQdW04RW1CMURMV2p4dHh2dkQ1a2Z5NVJHNWt4OWhOaHQ5YzJOKzlKMi82aksyOWxWVEJHWmk4ZHQyNmExL05OdEd1M09oSXZtdExwVFFvUzhwQVN3ekdYcnExbzlCSGZyRHg1dnR1M3NnM0xtYitWL0lNK1FxSTl0ckgyWU1GTWVzeEczNHBDakFZZWkyUFRTdWs0cmZCcEx2R2F0ZkkreldBTGM1ZjBLVHFQS0VCMjZtOWJ6L0tBdFdhcUl6eWx5UXlxUWxDbkY0cmRYcWQ3eUNvdTZ1akw5K1hhSTBFRFExbFNaYldnUk5qMDN5VWVtTjNCVG1RZ053QTYyZmRBK3hIYXkzMjlHemFzbS9uelBxdGhUWXRXYkoxNFFvOVVITCsrdE9xUVpUS1lvVmk0OXZGdHVmMmJwb0R4Q1NXdWgvWS9hMjJmRytxWGZmYlJudXk5QTBmTFlJSW9WcHVYendvL0EzSWRoblVVK2xrYW8rVFROTkJnQVl6UFFqVGZSekJxTDB0SFBKYnVxYUlLQU9Ua1UzSnJPMk9wTExkVU1yQVc0eUE0QXJkQ0lMYmg1YzE5U2xWLzRtdVBrWDFaVm5ISXNWL0pRVkUvQ2txQ25pTHM1OURrRG5uazN6L1Bsa3lOUHdwV1habXFRWHd6TU5uVE80TUEyM1pnQTZndDFiOHV6WlpFb2hjRXdNZHJhSkF5TnlXajZnN2xpcHhHYlArVnloL2NrbGwxT2VrQ0J6L1NPdVdqMmpRb0IzSldIWkg0bXFOWHVJRysvZFhXbU1SZ3ZidlhkaXlmcW84bEVsSGVtSTlobzdDSkt4NXlwOCtUNk1pK3hqdVpSUmU0VUtEVWhYbDRlTnhCaENGVTNERVpWZ1FOb0FXTWFXUlhJQlQ3RkpQRXdPamdIOTZNb2FMUGxrLzlEaWxjelNrUG42RkhnL2Q1WHlIVnlrS3EzcmlDdGsyd2xmRTllVW5hRVNaazdIeStDRktOTlg1dGhiWTJnSzFTb1RPS2NvVGg2aW9hVGl2UmZFYlY3UTFGT3VDVFpNcmZ1bnhLNVNBRWI2ci9rQkFCT0hYL1VhSXk4V1BDazhKTGFnYmphS0Q2SFJGRzhPaU1nbjBqbjBmRzdxL2w4MllreXBXcUVpVnd6S2ZIRmRxSU9WUWhWREFoQ0EwTTB5STkzUHhlV3RycGIveEF2RTR1NEtLMHJFTFg3Sy8wbExxT2JDMFo5ZjJyZk96R3lyckpnWUhla1pMbzRXT2RwM043YXBpQW5xOEY4TmNscU9jeWpDMkFuM09kcHhRRGhkNk1jNVlPQVNUYlJJUDlXS3VwQWhYYVdhMlNqakxMdlZzeDROQVF2RmpzWkJwYTZGV284TXNIYm5yOGxETU5BZmlocVhSdUM5bGJpNk02VXA4UEkvbmRGM3BLQUE1T3pZNWVlelZiRE5pcUtNR0lHbDFRbFg1SnE4YW82cnhwdnhpTmhveXcrMTIrVTAzcnhmbUp6WnUzTlFYYTBtMVJRS2FUMDRuU2hNZE05MFIyblVVdDA4QzRadUN1MTA3Q1hSNG5PcWFPcTZwQlZVYlZ6V2RqZ05oVm11NnpaWHkxWjNvQVhSdjVZMHhJeXdISkdRcUJNT2tXbTd4UjdXUUpObzZrWWdvTGNldENBMEN3aFBJb2xja3dwSlBoYWtoTEx6dXJodE9YYkc4YThmNlNsVVF2ZStldXg1NDNRT3Z1dlhVblRmY2VTMUlWMWVjUEFEUzFhN0xOczlWdHEvZmZpRXh0WlZwZTExVXpNVW1MZzFkNUJqL0gyNy80bzFNYzNLaERXNjlLWlpPeHk2MHdhMHZlYlVnMVEvTy9WRzlES092ZGc4ODlOL1RCbWlvVk5OeDJTak45WHc3MFhMbDB2RUJRaWdJRllRQ3hWT082MHljRUdBQXdGeVdKVUdHNllVMFZkS1dZZnhRb3NKMFUwUlJXVVNLd2hDVXdqU0EyeGZtTmpJdFlGOVBvU1BaRmcxeEZaZE43RHJzNEVwdlQyNFd1SEs4RHF1YU5hbkJpeXEzSENQWmk3K2FLdVVCVHIwVjRKYkJGUmdBcTV6MzZ1b2ZNUVlDbXpPNjZ2d2RaeWFEcXI0QVpQQXVmbkNYcWpHOVZnSFEyRTlLS2FZT2MzN0pVQmxUbU1GTi9xcW0yWExleTZTWkF0dmM2Rll5MVJhamI4OEpueWZmaHptVUJVNjBwVElQNkV5U0JlazRCUm9uUytJeGdKdXlTSTVCaDh2UWc2dW9RWElkQVg5bnNhTW4xNU5NUkNQK2JDQmJIbEJCQ01KTkhRTUlMRDhTWk9yM0JQYlU4TEpRbGQyRXo1ZFNaNTFreVZYNGZPbmMxMjFiL1RNNUxCK1JJdEp1MkQ5Q3pmWHdYcFZTaVp6bTcvY0k2NlN0Q1IrUWMrMEpsYWkzcXVvdnJUZyt3SnBVU3A3ODd2RllnZ2JRUG5Tb2Nva2ZIaDJHaGl4UVFhYkhnZHdDWkFYQ3F4QkJnVGRVc1hxS0RSZEJCaWxIZE45VDVPOHBzZXNXSkdIZjNtMWJabWZXVDQrUGxicHlJSlNHQTZZbURFZ0RiR1NNbE1NNFhjZElubUtIR1UyR1BTTkpUZmFwWWlpaGJxeTRzRjdzREhuRzdaam4yV2Q3VHgyYnZvY2RQdytkOFRlZGxQNkt4dWdMcWxxRTNmNjZmbXcvYmZsekkwYnVnZjdha2lweGNkYzI4QSs0MlNWbDJGd0k3azJTajZWSzU5N005R0cvb3ZUZlhSdkhFdE9YdlkvaFdyemZWTlVEaXR1ZnA0WEhoQzZRTFErNDlveXVkcUlTQzhTTG5SdUpRb1U1SmhtckFsR1BhNWoxSnNMSEVhWXFwc2VRUWlXcU1LV2FUQ1daYWQ5aDdLbkxPcWFLVEJkaFIrVWxKRk41NGVBbEdGMXgrU1ZYSDd4NnorNkZUZXNyZmFWY0poNXpyV2Q4L2pWeU1Gd1lIaW9BMjJPcWpXekdSMm82RHNiM29HT3p2QlJKUXZkR1FmQmdBMjhRT2puQ0NxeUxvYjlIdUdqT1JCYkpsY2RkMlJ6L1IyNnlvMk55TTl2Z2szT1NOQmRRalNSTjJJb3U3QitZOG92WjJHUXNLL3JIeDVaRVhiRVROR25RWUVNelUxMkNWbEltTmhudEVQMGJCM2RiS2pScU42bHpZUHp5c2JITGIySWIvTS93QytzNk90YkJ6L3dHclczWjFyTFcxeHNhdHZ3RXAwdWhTeUl0TFpIOWdUN0FTSDVyT05SbnJjM0NYN2VCQU9jdmpiWW5vNWRHKzlPaWJRMzRTbHZHbHZsTmIxb2U4OGIrQTN6c1o5RkdvSXRISzRkeldCWFhZVVZsVmljTndRYzZEcmhMRlVTVnpRTjZDc2xRSjJ2TFJDZUlHZGxnQ2hoWVZSUjFFWFlxTXdLb3lzTHNET0N4TFRNN1ozZFdwc1pIKzNvVGJiRkkwT2F5Y3hablRTNDdsNnNLelJybkNWZG54S0RIc3dyRFRBVlk0THE5cXFhVWcxNHVQVEpFMS9BcHlPS05mSnpleUVrWEg4T01nT0ZMbitzSWhzcUQrdzU4N2NDK3dTRW83RDg2dVhaMHpYTmNHNHJQL1hqVEhaczIzWEdhYmZDUE9jV0RheGRVdmFIbzBHY0dSaWNtajhMMTVlcU55cUZneDNPVUZ0WDRwNzJyWVlNUXJkbnpmRTJTeG9PVk43ZWJJRm5mZTlmU0RsSFRienMxWHhHcGVuUjV0RitVRlhGT0RCTFA4b1J3b0dvdnNMR3VDZnF5SDJzK3JGSk5YYll3TlVGd293cjB1U3hKTXZTNUxETndKVXNMVEtOei8zMXZlTjJyWDNYVERkZGR1OUxxNTlwci9YMTJuOGIxT1NIMkJRWnJ4SWYzZjFVdjd6R2w4L1h5VGZ5cWZKRmo2UlcyeDNjL1M0MXMvUDU0MXNDN1FxTGNsMzQyM1NkSm9YZzJHOGVmZ0szengzV1Z4R29iSERQb2wxajVBaHNTTUdpUjNhMUlqVmxKS3FiNyt0SkZTY3JHblYzOE56NGN6enE3YWpmY3NVcnAyWmM4VzdWRnYwZFlKOFJRRHFVckNZNzlPVk1BSUFVZm42c0FndUZ5TUJwbVJ1Z1JHTkpBdVVkdzNSYTl3bmpPTGRQS0p3MERwNHlrampPR1VZYjlKVXJJRi9WdDlVZDlJZVVTUGFrN2VrSjNmcXpydUJVS1E3cStYN0Ywb3ZpaU1ldmNmK21Xc2wvMzdIenZBSnBjQXZsbkhIRGtQalJXR2U1SStnU0NnTTh4eE12QkJtTm01S1FpeUFBb2pxd0YvREE3VTVtYTJMQjJ3OGp3d1BqZ2VDYk4wWHBlQWZMcEF3Z1JEVEtEZVY1aFlBS21Kck54RHVjTEk0eGxXNjZ0RTZvQVRraFY3cDEyQ3hZV1hQaFhHRkh5TG1hRW5oQjhwVjVubjJqTHZyZ1MvTElzSCs5YVUxNVFsSEwvNE5qZ05sMHhBanRwZ3U0TUdJcTJiV2hzc0wrc21Odk8vYVdycHNIUDhEM08vSmtjbE0vNGlaOFFZcG15WC9veldmNFAzU1pESUtnWXdja1c1NWRLU1BrRHY2YnZLSTh1eDFvMHVta3dPeDIvVHRldmE2dWtCemRSclNXMlBEcXkvZHZzbnRWLytPdUs4blI0S0V5SXFHc2c0L3hRQ1ZGUHBuVHA1amphREh6dVduUkg1VFlrbTRZcEd6Q0hEUlhJNFhHa1VrTUZyaVlLNGlta0lDQ0FPak9lK2l6TnQ0d3NaTXFXeVl5ckZCbDBHUjRhQ1FKYVpIc2tnQ2doSUdFQm82T0hMN3QwYWMvMnJYTXpVK3ZHUjh1RHZkM0ZmS0l0RHVUVThNaXB6VFVvRnllbk9UYlI3RVpoaTBPNFZ5eUhQcmFQSzdUM01hWmZMekxUWVQvSUR6OW1JZ2grdjYzdkE2bVUzc1NJTVd5ZTF6M0JFaDl3cGRLcXRWVzd0ZWsrWHZGUlBZRGZ4d1c0SDZkSy9ZWU5FbXJWNHVxOHR5YVgxczJ3cUdvSCtSTGd2RERLbzh0ZHBVZVdUVWw4SmZRbUVZa2dBaThUVDBCVGdoYlpGZnZnSXJLbHRaTGhXcEdYYkxTL1lzVWk2VVFrSDhzSHh3WmtLZXJKcllWOG53QU15dTM3ZERTZFlkUENCZElneE9hRmJTQ28vOFJ2bTRiV1R6WEREbTFLbGNpVG8yZWZEU1pNOFlTY0NwSE40YlI0UXNxUmdWUUpob2MycnVtS1Zrbzl2aldjQ1RqWEJhUFJJSDZvamN1cFVzM09VOGV4SUt2cVJCTThqWnNCQ0ZhU0FiV2F6R1pDWllVeERJenBJdXdvWGxLaGlCZnFhUFdsVVduVlVOL0lBOUpOS0ZGNWhjZkNZK2YraXd1bUNuenBjMWQvazVsSnZzaysra3VXQkdtbElidnE5ZkM4N2JveHdPWW52SUtmZXI1ZWRPbWVLOStvS0lpR0FQdk5WMmJDV0VFbExDa2c0UUNFT1FXTktCWmhBbUlNYkZjQnpxdGlSWktVUmRncGpMa3Ewc0p3ZWUxRWVYcDRPdHpabXJkektVMXFiZUNmYTJwditjb2tGbnljaStyUHV4SUwyZnJ5QlpYcnVWemlDaWV2ZXU1bENpY2lsMDFNY2hzS29Bd2duUWwwb0xMUEIrODhXN1ZScUZnV0ZGa0FzVnRVQkk3b0ZFQjBkWk5GazZsaWFKQ2cwWkhCaWFHSjNsSStsMmlQaEdFZUJraUFxd1N6K2FvVmZ3VGV1OENNaGdwbmFFTWVwZ3VOTkI5WHVRVDUyak5CMi9tMWJYL1RIZ2hnSHd6ZDdMOWJzbCsrVjViZDNlWVZSd1BoOXZhdTluWnlDN2FkWDhFVjM3UnQ3S2NSN2V2QXorY3RHVnI0WlhlM2VjWFJvK3lxcm5aUFptUDJ0d2pRaldFMGkvYWlJK2dXZERkNnFQSUh6TXd3TmRKWEVDWDVzbjNiNTBSVk16R3hicjJhbUVTYXUvTWs5TVVzQWxaakVmTzRYZFVnQkxCQU1kY2hLRmd5TU5jaTZGajFZNHVvMXJJUG02Sm9Mc0xPWkpvRVUxeUlSUWw2L1d2dnVQM0c2NDlkYytYbGwremZ2WFBMcGczVEUyT0RhN283VSszUmZDeG5NeHR0aEVTQ0t3MmFIQU42NmdWcDVVek5LaGR4eFBwZHo1TWZPVS9GczdLSU0yemIzcGwxV3JrVVZXSGJGK3BTMmJNR3ZaOFY3K2ZGbDExTDdzdkdOVkVHNGV4cFVlNXN4NXZqMmZ2aDRFUDhOeGJoWUJVWjhMYVhXZWZhWEg5enJYQk0ySVZNWkFPL2lLTjIxSXRHR0ZZdEdFUUhvYWdQb3huRGdxSUdiUHM0MGdqOE80YUlBUDhZTEJVbFFUemtlZHdkZ3R0UlZhR0hUQmdCeGp4U1ZUWkJzSWszSlJJWWpaUVR2WWxTS3RuZTF0b1Nqekh2aEdEQTl2c3NWVVltTmhtVkRUWitPaFdudy9XL2crRXNEbWNMM0lOaHhOWFhEZ3BoVGxZbThBNG13Wkl2cC91Y2YzSU80SjNPRTlYL1R6MUYvdTVML29BL2JQZ0FhRk10RUVrZVZMUmd0T05Md3E2KzlObFA4T3N1d2V2T2ZTTGR4ZjhTM1NjcW1obUl0bHUyR2RJdFBQVWpPeEN6QWdEMjZucWZ1dTcwbXNvUmt4aU02MGpBZFpCa2lRVEdPMTcyVTU4Z0kxV1QxV1ViYTRxaUxjSk9VNVowckdqS1FxT2k5T1dvUlFPY2pLeGtJSjFOVnFFR3QxTmUzOHh3bXRzM1cvOXh0TVpseU9zYmVkTXY4Q3pYZm53S3RuZXMzdVlyL0tUQkc1THZCL1FYMmRHTG5vbWZiNXl2Y0JzL3QvYWY4YzY5NlBrRDhNMVQ5YlpWZTlyTndLdWlnQjQ2SzNrUXdrVjhFdWkyeUx3NXVEbUtIQ0VvazJwdHFUcHR5RzRmNWRjMUs5R0FCSXdBRTZwMXhwQ3c5OXY1N29EcGZDNDNPcG9qOC9tUmdQRVZPV1FWV2g0RlNQbmo3dHgzekFBM01NSlovRTltNE9hdnlLYjZucGFDRmZMc1k0eUhkcVAyU2tzV2M4emdHalM5aDJydkNndE1JbUt3b0ViVXVldU96TTBNQUFjaXJ2RU91emloUENUOHBlQ243NkJ4OVFTbGZ5S0x0TmkxOCs1TWg2WVl6aU5oeXdyN080dWRmbnlrdFhmWC9Pd2l1Vm9WNUhkUWVrS04wM2VBVkc4c3pzN3Y2bWwzem9SSFIwSitHNUR2RVVBRkhabTdkM1o3R094Um9TakVQUXhXQnpZUzQvQW5RY3B1d0dEY2tlb2xYTTY0Ri9DSTBHWVl6ZzhBZkRuZjEvWGhPZ2p6eFFDRUhXRGc3RE5HTzBOZ0RJbTFHeDRLTy9kZnZtamNoTUhpb1REMzJlNFJ2aXdNb2psa1Y2eWFXVGhvRTJZT2pnd3pJWUdCS2d0ekpkVXdZNTVjRHlWendNVjZrYmZKRjdMY3VHMjVaM2xkTDNHQkZONU5vK3BUZWpKbS9Hdkx6R3dMYWJIdEZ2enUrT3dNRkFPQkZrS0pIRkNGY0VCWCt6T1pmckgvZGEvcmR5NWpSV0hOWGEvdC83ZEVLTHB1MTQ3MnY2YjBRWXFWejJrNG1qRit4dTVCV3VBVytFLzVQZURHY1VJRGFyTERrQUdKc0h1d096akwvYTk3N1JxUkZmL2Z4SzZkRThGbzh0UHcwVHdkSzlQQk15cXlIcjM5WXlOWTFmRGNsbytZSUtRUHVsN21Wd0xwb0pwS2o0dEVod3NrR1VtWEd5REphcXFzTFNPcU1CL25tbU56YTJWQTRQYktWM0xSL2tvNms4S29NalUrTmpSWXBUZ0J2d2tnVFJKUkVpZHJxaWt1elh2NzdFcWFFVzJhWjh3MnhtWWdpRE91TU1OMDljdVp2b3p6eTNSL1pqbFZjdVhXa3AvSnNMMUo4aVRVT0kvR0V0RjJHclcxTFhvbVJyNWNpR1V5c1lLN0xTWFhNSnF4SnRYem9xMDdSZVo5aXIrajI4NSt3UUJNLzdra0RVUzBMVWJVdjFKM0hRSU9Ob1V1cXh3Y2dHRXgza01rT1o4Z3dLWG1nRlZoU1dRYVZueEN4VWpEakljeEt3ZEllaURUY1RVU1lsb2tpcGthaVRrcnJsczdQTlRYMjFuTXBGcmk0ZlpJdSt1eXFGL0laVkZoUWhzVDNvSjFHY0h0cXJxOHdEcVFLWGwrL1h2SHJsazdOYlgybW1ObnJ6dktmQmVQWHZkN0xvYS9YVlBQS0lidTF6Vy9BWmhSTVdBdjlMQUd0WmE4OERQWDg4SzVqcW9xTFNpV1NyZFNrNWRNZW9hcUpxMzc1UHlVUE1UOU5jZVE5dkdobm82WVRvUlNOM2ZMRnVBZGdzeTh3SlRDSThONVNYQTFHc3hlRFJNcXdyRGJrTmV5ZXB6SDR5VXRRcjh2eXo5VW9scVBUdFFuLzFJV3lKLzhVSW1wN09qakgxZUkyZ010ZmlnN3Q0M3JVZktBWUFMbGp3aHZFUXh5ZFE1T09zOHJZZXI4VEJWb1RvblRILzVRamI2QW82cW9kdENZK3NNZjByaVNVMEJ5akd0QjNHTEJ0ZWUrWjRRRWl4Z0d5UmloUmp0V1hiZDR2SEx0MGc2aTZmTVZRbFV5SjVwMUxhSlIxU0lpcmtSa1B0dE1oUWppTGxjZ05ueDRyajVrWFBuZ0FlYTdQYk4rN1hpNXBqSU05TG5jMkdvSThtaFdHVjdJbGJmWmY3dDhrV084RTgvcGRpbjFFNWdoUk8zWEE0Q2Q3MHFWQW5vL00xS3hpVk42cTA0OW40bjNNZFMwZXBrY0MrajdtUEpnbng2NHFWNWsxZzAybTdnZDQ3S2E2dURHdXNHclZrS2VQdUVCN3MrVEJXcDlUMVdmQU4vaEpJSXB4ZnhDWkNBL3NpaWZaSzZXd0FnVmNoSXBDdk8zMEtGcGNrVlQ0T1F5WHRuc1pkMXMvLzZLSG8yTmhtS2owVENWMnJyeGVhYWc4eXhCSTU0YnhRcGRZdE5GZVdKVCtneEF5K2VZczNSVW5WRmpYQ0tKUVNtcTRyOW43cjRyNnFBVmZZNjN4eVRoWHVjaVV6aXBtcDdMOUNNbVAzVGVuM2VyOFR0WXRYUFVyZTZxWGhabm1Lc21meWVZanhlcW9HMkF1MDdpV3l2UnFBRWs2dmpWcy8waVZTN3ZJcklwekNWQkd0L3lFUi8wNmg0eHhBZ1lFcGhucXdMLzRGc1RCUVkxUFliOHFpVDdENGV4Wk1yU2xjaW5VdDh1cFBxcHVoaTNZa1pFb3NpVUtYT0xaRks2SGRVRVdjYjdYVUc5MWZYUjJQdlNOMWY5MHZIZjZ1NlZmUy92eHFwa0hudEZkNGJSTWJPMGI4ZDJabXJzTEZvV1J0ZGRjOVdWeTRjTzdOOTNjdW5rN3AzYjkrN1l1MlYrZXR2NmJlc214aXJqbGZKQXFhYzQyamxheUZrSnE5M3ZjMEZJeS9rZzVJS2dBMmM5ZHVmUzlaQmN5SVlCZ2dKYnpKNVhDMkxLSU50SFBBK1NXb053Ukc0QUw3andKVi9RRjlZOXNCSk9YdXFDbFhPL055UnJnQnpHVzFPcDlvRUJPeHcrM2FjQW51anJIaTczZEhhbUM3anc3SUg5ekk5bVA3VFNtWWV3dkJMZ09KODdIOWNFbzFiQW1hNUlzaUsrUzlIUy9hbEw1ME9wMFB0MTVZOFViWGpIOFB0UGQwMTFycE5WZVl2WFFoY2wxQkNuVmFPOVdLMUV1RVZuSHV2cUVsYjBIUlhQbHJQbEl4YU1wYlVOeEZoWEZWVS9ESVJYVmE1c3BNeXFMcWpMR3NoampCYXpmWlVhdzNoTXdqM1dyWDRQK2RqTHUwbGxzdmw2NWZncnVRR01yaXd6SzcyVUtjbjZiekFsWFN4bzdPS21vZjlWeC9kWHJWcDhPY2FmSTZ6dFZiWE5aMnFiaDduV1FPWmpJRUx1QkptaUF3MmhqV2dSWFlYdXFid2gweUlKZ3JoK2ZLQkxsT1FyRHV6YUxLb2F5RjBzREJHNUNJNzVyUklCaEFYNXVLMzdCVlZUVDVrMUpaRlBzUVJKMDZSRlhwQzBKUU5ya3Jhd2Q4L3N6SEE1bjR1RUR4M2NjOVhlcTdZdHpDek9MazZ1TFc4YzN0amJreHZLRHlYYXdoMlJqbWdvRUdEWWk5UDh3Z29pUHlRMUJRY3BUY2ZwN0FvSlRWYWFqanZ4eXZiNDYySFJrTjVRaGsxWUZEZXJNZldQUk56am5PVyswaUwzbFg2S2x5dk1WN3RTWk9XVkcveVJoaGJrY0ZpQ3Uwa1N1K3RtRlc1bXZxbmU5c25tYXk5WXlYazExK0U5aUVwb0hZdTZkVkVxbHVBRWwzZlBqNERvNnlWb3ROeTdybTlkSVpkcVJ5VlNVand3WGE0NnlqRUk2NGFwOEwvbk82VTJxeFBJajA3RXN3U291Q2JDTHczMTVEZDJ5cUp1U2lySnh1R002NHllalRrSnFzT1krNE40UnNmRDJYZzY3Z3Y3Vlo5ZG10ZG8rOXBjMkFZYTZJTmFkN1R5Y2Z1a0RuSWhHNmRVcitIeFhxQkVPeXBiWTFnZ2NRQzJNc3p6RG9HSUtBZml2alNuY2NYdVNnZGsyWXZSa1VRZW5ZTlJWMmMyM2RZU0Nsb0c2c004ampjSGlEM0hRanpLT2VZRXdkMG5Nc3dqVndJd3oxMHFCZ2RHcEhETnRVSUk1cWFqenZOQVplTFJEYm0rSGIyOU93N3Q2SE8rVjU3azViN3BmcHp0M2I2OEhjby9iNC9mcjRXbHNIUi9TNEszNnQzUnI1OHVzbUp2MTRObVAyc1BEV3QreFV6ZnNCL2xLOW1ncTNHb09lU2lLb3JmdldOOExKZnBGWGxvRVFzRkdxN0dBdkdZb1JDQVplQTZISy9BalBCMFFoY1BHMnI4cElXOFVNeFplc2dYYThsbE92cW11d3F5TmpMWlZSQUVyU05FcForbGV3SG5mYXhrbThYMlpIZG45NDNkeFo1RWU2Y1o2SjFJOThiYVNta1NUdmNQRi9GalZzQU0raEpHYUR6VFBSK09GUE1UbXBLOWVkUElaVmxCRlJSYkUvb1NSbSsyNVJmQm9DK1M3b2h2TEE3dWliVzB4UFlNRmpmR3M1bUlMMnpIQXZIV1ZEN092SmxhaDd1OG1HM29rMmZJWXpEbUM1VU94UHhCV2VRTWM2NFJYSThrRm94SGhJVnlybHpPRFhKdFI3bXVLd08rckFnOEpHREZHTTR5NzZ0Sjd2ZENub242blYvNUl4Ri9QQ25QaU8xMnJ6OGE5V096b1NZZFNaQWpjVlpSOEVjS1VlZkR3Umd2ZXNkNFZ6Q1dxUG5nM1F2Zk5BN1M5Q0RhZ0hZejJ4VUxiUkdweXRWSkl0REtaY2xWS3pMSEtoUExPbGFwREt3SmN4Z1B1eXFPejNkZ3RIUGJwdG5weWJIaDN1Nk9RUkF6TW9tMmtHc1NqZU80dGFxSFNmVU5jMVVDbDVXYW9YelZpN3R1QzExeExCeDdvWlM2S2RuN0FsUGFrVjh3cytkRzdtbHlFNzdxM0lmMHdHZ1JmN1U0YWpzUGV2Wkp3QmVmODFBR0hKUFRXeGtTMlZwWCtvMnhSbU9mQTVpL3RuTjB0QlAvRFlQNTNESnFjVVR6eTNyWjFSMzltL0I1OG5mUWc3MlZibGQzQkJQOGxJaTU0VmhrTG1ud3dSR0x2a3kwQmdNNmQ3Q1h2TGd1TDVLZGE3cWk5Y2oyNFZyOHpmdk92UmJrOUUrQW5NNkNLSitnRk85MFl5S2h5aVIzNmdFL2ZpUkdQd2xRb0p0UzUzR3ZFWXUwL0tRVzh3UFNEYTdVUjZSUkw2UEUrVnd5SVFvRXo3SG40N1JZZ3ZtTGhVV0poWXd1c2NtOGtNMWdsT25OOXJhMXVLb0crVUtxQnN3REkySGtSakh6VXM0WE1KdmlyT0Zxd1pCT0o0dG12SFQwY0xmVG5rampBMURBLzV4SXM4clZvaUNkQVI0OG1VNDQ3ZDJIbmUrbEUvaWZ1dytQOGpvUEQ3TGNEdVRMZ0ZrNlVGZWw0TkVoSkZRVm9hTEl6V09Nd1JCeFlTUVlMOXVTRk85MlhUeUFLRW5NT0N3Tk1jdFloaWtkNVhDK09pN0wrUHZRa2ZndkZFa09uMzFVRDRoVWVMalZjRDZVdmF6RCtiQVNOTEhyOE1pdFlRK1pwb1hOb1BvT242azUvMDhxZ2RmS3BpNCsreXlqRFo1TzZOK0ZNUGtFaXFFVUtySVk1TEFiUHdQelVFUVNDOHh3WTQ5azEzZFJydnRvWnRJdDhWdzJYY3dVMjF2anFaWlVlWkJ5RDgxZTNLQmRab1FUUGdaOENDRmI1dEo5YlI4ZXVYVFkrVHliL25oeStOSVJuNitseGVkNytudmZhKzNxYXVWYi9PUFJLOFlpL25OdjlFZkdyaGp0ekhlMEp6cnl6bCtkNlozc3hla3pmV3VocDRYZi9BWTJ2d0M2Rm9HUjNvL1dWNmJnaVZjRTJ5TFA0SDMrQytRNll0SHVybzcrWEgraVBacU5aVnREL0FWWU1INkcrNm1FdUYvS0FQZFZXZUhLSnpSNkRBby9LcjN0c2l2KzhZckwzbFlTeFZwUmRaVHg1VEhQZ1c2ODBmUHY0UDM1WWpGLy8wRWFWS3BGK3h0MVR6dDh3R3NKRzQrL2ZVRUFxZzJJZDM5bEwxSUY5YVNHRWFFRU1XOVRtVkFRME9HbFpIeE1oeGRXV0Nna1dXNU9adEZaSkdqcndzekd0V09EL2NXOW5YdHFLVGtLcEdEVWJTZXlsNUpqdU1IYmRDWFJ5N2hjanpOSTNpK00xdmxxMWx0WFFlNXF4eUp5dGlIMDJqYTJNa0wyQjFWMzNJRHp2VVA3Rm9kSEtRbVk0N3FmeURzbXB6Y2xnYWhjNDRaUlk3a1dhRTFZYUxXSjRSYmY0RWFVaDNRZXlCMXdIVDU2a3pocTJIaG9hR0RQdml1Tm9FK2J1ejNiRWFQWHdhV2RsRW1hTWJhaFRFa0JkVFY5SDdQaGhvQWJya1hyS3VNMWJ3NlpHZlZkcGFjSW5iZUlvQnVYbUdET2RaM0ZmQ2JkMWhvdVJVb1hDY3hXQmppcFlTWU5pMUVlNWtFS1lzUWtEa1pZbjRHd3lHT1hJdmpYTzJjM0ZqczdpeHRuMzEwdDdKdzRNa0gyS3pxUkozZE55bGluKzhuRWtZNUFNV2lhQ3FYSjl2WlVVQ2YzcmJpRUYzYkFkVnBJcFlYaDRZS2loVFE0ZEw2cm1kbitubUtYbUdqUDVyT0ZLalpsNzk2QkJsQUZiUVpjY25YbEtoMUxlQUFqcVFWbSt6d3dVbkZPTndrVlZlQzN4eldzcWlkZzZpaFlRbGhhbGdYZ3VxS0lGbmtCc2ZHRnhJWDEweGp0MnJsajI4eUc2YzNyTjY5Yk96TGMyNU5vaTRadG55S2hEdHpoTXRtYW1VZGhYY0xqdXFOTi9EYWRLZlFTbDJwSHdpUFFOTXVscjRGb1JJNW1iUTg3U3R4ZHlZWkx5WS8yQmNWb2F5Nll0d0RheTFZdTFORWFGWU5MTmZuWitTYzdFSTRTalJyK3FDemZaWVNDdGl6SFc2aEdYdi8xRDhVeWhpTm00eC80T2pYd3J4TXpzVmJiSjFFcStmMnRzWmxFWGFDV2xYaGFveTJSb0IwMkZWbTJnNUVXcXFlZWNYNlppUUUrQ1gwbW5zVWdGSzhZVjJsVVpuN3YyUXlSM0dERVZ4RCszOTlYeU1Fb1MwZlNGdzMvYnlCSmhmSnFRZityREsvcEU5UFRKMTdITmxtT2R0VmwxOHRodFRGMTdrZGVVOWljdll1YjIwMjY3RHBUdUdPSi9BTGUxMFE1dEFuazcydFlyRVFRaU5QR2RjTUNScFd4TE5Dakt3NFFXZG0xbVlpU05JZGN2MFlBdXhURFRKTXgweTBqRmhNQTh3M1FGcHR2VEN3UmhRVy9kZVNxUXdmM0xtNWJTTFhId2xiT255dXFUSFpmWWFqME1PaDVaQ28zaFFmSzNMY3dNZ2cwSE9oVEdBWVFTREJNMHptRnVTeURMK0s3UnY3bERhSkJZLzVyWlJwaTJnVDZKUTZxWGcxRjU5QWFnaU5FZ3Y5NERTR2tBMU5BanowRS9rbFE3QUJlUDJyUU90UXR3c0UzK1VFUE5RaDVnMGpsYS8weGF1ekl4dTlueWdvbnhXOE5KdzhwR0pjSUtSR1liVGlMaFRWRXdGRkNva0NmMWdnNFMwVG5MMnF1Q1ZjMU9DblFtaXpWSExkMFErVmtBRnVTQllCTzhra25rVS8wbldSTVhZUlBRTENHaVhiY2p6VUIvaDFUc2FERHYyTkkxMC9ZQnVGcHFOZ2U0U1dUbWM4VzNCQ21WVUtXTmtYNW4yQjVNQ2kxYytEUUdKWVFYYWxvS05RRlNsNGZ6VFdmYnpyT05SbnFtNCtiRGY5NHFPNFExZ0hrLzJFM0k4WER3QTE4S3c2ZE43aGE2WWM5WGpFR2U1QlhIM1pyblM5VVJlOEEvbjNQeXd5RStNdnJ0ZE8xNHBiYVZleGVUUEx5RGgrQ3cwL1hmcEFKd003ZnVudnZNVFlGcWg1c2dSZnJ3ajUrcUY1ZHRkMjV2aFVHanhyY1c5a3RzcUJMUlNES2NjcVlsc0lESTFnSU0zTTVVWkRBVlp4Y1MxZjMreTcxK0V5TTNGQy9mSllGMXByZHZtNDNFa0p2am9TQWJxN0hQbGpuNVhuQUs5elRmdDAxMTlrMXV6algyVG1IOTExVmJPblJlbG8vM1ZJeWVyUnM2TW9xenk4NWw5V2orZkEvZE03dG11dnFuRnVjN2J3cHN6SFcxaGJiNkdkV25BSE8wNythS2prR0Q5V2J2QmJhbytvWWYvdDVZL3dCOUhURk9qcGZCQXE3bzk4dnNFQjYxMVM4enNZK3kvSmRHZkNIQlFzRmtSVzhQSVNScVJJdTJRS0RFSFdGY09GV2t3bW54R3hmSmNXdGxiWHNldC9KMys3eS9aWEI2MCt4S0wvWDNmV2FWOTkrMjgwM25YcmcrZ2V1dS9id0ZZMkdzMUlYRDBNUHVHYXp5Q3BlbEJmenBBLytydWN2WXNCMlUxcDRsdWh6LzZ3eEFNdENKN1I2NlhQMXVQZDY2YW1tUnJ5MHZJcWxHLy9EU3NOMTdTWTMxZTdwUXR1WFU0bmZ1cnB4bk0rZlJuL1lTbVdkUW1TQm1kTmczckNvN1JQVURVR245UkQwbDBxMUZHekthTkc1U2hhVXhuNTg3b3h1OTZTdVplNC9uejczV2U0WFpJTVFQSEhXU2ZWNDhlaEV0dzBud2pxR3RQQ2NJVCtCN2tuaGZ6SHNGMHVwRFl3WWJHQ3BVRmJKaFRKY0dVUmVLaFRrWlVKQlhpSVV4RjhLMWQ2cDdQNFo0T2JCQnYwT2UreHcwN0Y5a1dQaDdSZE1HbldCTXZtV1M5L2dxenhlODIxeXJxdjVRZUcwNXdGbEcvOEgzMU5wZm8rbTQrQkx2dWVOQWYzYzE3bE9wMWNQRk55Z056Y0E3c3h2L2FvTnNWWHNYZGVnYkNYbHFXSUpVOXlJeEhYdFl1NC9pU2hBTjZZcVlIN0NJdzJLbWdhVzZWV3gxQjhObkZiNStBZGxuNHcvS0VsL3huSU03cGFKSkVrZmtQelNtbWowa3VoVTlOd01DVnRmMXhSUmxCK1gvTEFWdi9aQldjWWZnc1lma0ZoN2kvZ2tYdTZQcklNcm9tZi94SW9JQXdKYzRKY2VsK0VDSGRYMGQrNjdCRDBOM3RISzRlbXhOWjN3cGZDY2l1R0xpWXA4M0tRR2ZFTlJCb3lPa1FBWTdCQ1NkQ3dxa3NnK0x5SzdtRnY5RWdPN2FLRThsT3NJaHdpYW5CamFVTjdBOUhpNXdVUnJLQnZPTWcvSnV0dUJsRjRaSHBsTDIrbm10R2k0eVhMUmJOa1EzbjcybzB3dElXenp3enQrU1NCbkhYS0hZM0FDODJzZ1pjNHRyaGMya0IxODIvT3N5SHl6VDBYZEMveHdjWFNyUUp4ZjZ1cU5Yc0kzNXk1b3d4czJibXA1TVQ3TSsycUVlY3g1MnFHNktoNGY2ZXdwRDRoU3JEdllsRENIeGVHN2h0Y3NBNU9zSG9CVHhETkFSSGp3UHB1emo5ZDlDTW1QNThmNlNxMERROG5Cc1psOVZMZnA0c2FSd2NSUVBwUko1YnY3SnhRYUZIeHNkSjc5RTdZVjdEekFIUzJSTWtJNFFmeXFVOUYwc1EySGpHUk05WW1pYnFaRlM4R2YxWFJ2L040cmxGQ1V6MVNtYzNSTkI0SlVTOFBDd3l1WVVzSkx3aEpOdHJhMkJwaXFPU2ZKbVVLdTV0NWR6YWdaS2x5Z3ZvVHpReU81NFlHb0ZBa3AwRWE0M1huWXlsck9JN3ErUjlURloxSmJrcy9DZm8rdU45VnZUcm4xem5ibmJZYUJyL0ZsTFh5TllUaHZzN0pIdmtycFYrV28zQzhJcndrRVhpTUkvWEwwaDE5VjFhOUtNWW5WMlRhcmsyS2hyMHBSMlcwcmZWVng2VEhIZmYzd0Rmc0JVKzlBMzYzNE4wMEQ2aGxiQTZpbkY0T0lBQkpKSENTU05ZakZTeW1Ib1c4SUVROHpiM2xCUVVJTkJLa3VJRlFaSU56UDV2N1cxaTBmYVlFTEJ4b3VsRVJ5L09WY0NjU1NYeVFmZndWWHNmUWRqT3R0M1RLellkMUVlVENUOXZjSCt0MzVwYTBtbnpUWXdKaW1qM25sTXlWcjFSQjJYZ0tkWmdHRS9NaERQejlndHRtZmZjZ0N4R3NsL0xKb2hUUGptYkFseXY0S0pxRm5EWHFBUVowRE5Sc3JiRWcvWUtmdjhhc3o4YXp6b2JnL1pCdVdRaVhWTW9McmlzVkVLbUJZcWtUbDFweXZaWlpkbEtpRjRmR1NoOWxieVMyQVlKbFA5K1lLdzZqTWNSdEdxOGJ6ZXJMZ2ZrNlRnRzdKc2h2cElTOVJOdnNXTUJvdUQ2d3A5WFFXVSswdDBWREFaNmdLeXVHYzdqbEFNZWVaYkpxcmYwQ3lobWtiOVBJTDhkeTNoWEorV0FsRm1FTkVSbzVXQy9qOXVLRG9lRmd3TkdlVUNuNnQzd2lTZ05sMkNJcjRJQzg3WDlYOFJBb2szS0NFRjl3ZFBrU1Z6MmkrTnMzd3g0UE81L25PVUxFVis0a2I4eEIyZDFYZGRJWXNJQjJsV082aFJ2OWNaZzFDTldQUWFHeklacVRIMWUweHBiVE1kTktlNDI1OUlHVHc4NHl6dEVxS2RlNXJMSS9XN29EeWJHUXErcHdTY0w4c3hqMlNoR1hWeHJaNlVxUEtWOExocnloVWM4NnlqOWVRSDRqWkFucFlWbUdXVXhWVnlZY29WQjJkdUVXUFpkZ3BGanF5cVdRczZxcElsQXVwU0lKNFJkeElqWUNzNWx2NEJ1ZTdhbHo5VStaN0ZLZDdaRnYrTnV5N3RkWDhDcDNIbkgrazlGSGFRcnRVZGE4c2Y1OWY1UG5zZmt6NFk1QXo1OUNHU21XR3hYak1zWnlleUhzTkFoSW5jUjBzbTBVV2d0WlBqWStzNlV1bjRsRTBSK2FVQnIxc2dTbk11TTZRUlU4eXcrcXdGNk1PVmV3azRlU2VxODFnMGpYYTZjcDJMeForRDRpL3FhbjYvT2VPYmw2N2REa2hFeVBqRHk5dXVtZEV3MnFSUnRTaGUyWTdjc096RVo4YUtiNWhZZnphb3FHTFB1c2VQZURYOGJMbUl6YUxxN3Jib3RSUU5vMkZmSjFqSHoyODdROUgxMVVHZXFITGloUXJQVWxiamFTUDNESFZrWnRkNkNucWZ0MEk2R3QxdjAvRGh3ejdmMDZXYTVaUlgxcVdPM09oTEgyL2d5am4ybHFGSzhnTVlQVllKZXptbUdhamx1WGlRUVl4QklZZldHSnV6N1l6L0s2bWhGbGt4Z3BSNXlnd3FFZk1kajQzN2hVK0NMdzFnVXFJZnF4VURGRlM2c2FTM012NU94OFVYclpncnBJSE90eUxwZHdrZHFVRFBrMkZZODR0Wm1zZ2FpNy9ZVWRlMTY3ZXVldnlRMHVMcisvSXk2VFYrV044aDYzcTY1ZXZ2Q0dVQ3VNSC93bkl0NFcvWXdYRWxyc3ZYVDY2L09oZ1dkUGEyMjdkdWZ0Z05tTVpsejFOQy81TDFrNEd4TmFRczgzazc4eSs3MTl3Zk5XTzh2QjlSNWtsaWZKeHIwZ3NBYzVKWGRaRVZhcE80RFg5eFVJeWdWRjVxSDkweldoUGQ2R3YySmZOSlBMSmZDaUEybkc3Y1lFc2RsVlBpMEllVnlQQUJzOHJzTWw5ZE4za3FDYXZGVzNqdldibzVHdGZmZXpvMmlrOE5YbjBtUE9PWkcvdlZLbjB4UlU3UVJvYnZleUtHNDhjOFFYZVkvaUZLVmxiaDhlaDVxZFhMbytNT3daclVpbXg3VlN2dTIyaVdYbm1leUI2ODV3SWpaU0twZDUwcVpSMFFTcGxZYzRQV09abkpxUkdJNnRaS0k4U3YrNmMwbTBNTkJxbTVZTzZINmoxYXFaSlcvTlplamFwK1h4YXhxTkpMNUJueU5kVzVtL0ROdE1hTTBFS0QwZklNdzBqam56MDNCSWJqM2lybXFSNEowdmd4dVM3dDhDN0RnR1BQSUZPczh5aDk3MzJOdmpjTENrT0YxWTVqY1ppTlhzZEo5NHlFRzlaUHZMbSsrKzk1NDVYM1hMei9HeldyN0RRQlo2MmxpdVZHRm5qS1RPR1hhbVZaM0hwWXc0YUJSYXl3TnQ0Y1F6RGVSN0swSXQ1L2czVzJnMkFpUEo0aDZvc1hIWE45b1JnTmw2aXRZd285WXhodFVSalZaWGpWKzJBRlpWMFFZbFYxc2Zid25iTG5iRk1xRE1ZRDFCVkNpcjlMR3hBTk52eU8zYm00cTEzOUdSYXVucGVkVWR2RjlWd2Z5bVo3U3ZkZW5OUFhxVkdNU2szM2lLYzY4ckhnbFNCTy9US1dGS3BISWhrU29WZHVVVGtXL3RsZVJoNDV0N2RzQm1XNWQwNzNlT2RlOTNqMHpLaHpNVXhGdFFqOFpuWitKMHhWUktvR3RKTWxTajlobW1vc2htSytzeVFEbzl6eXkybHZtd0NIaWVDL2IxM3ZLcW5xeVVEanhNaEFuUGdWNnEzK0wwSTBHUWFvaFlsU3E5a3lab3UyNzZJU3MyUVAvS1RKZmRuTDlrTmp5SDU1VjA3M2VPZCt5U0pQVll6cm1NMGZBNWRocTZ0WEcxVXM3QnFKc0ExUVFWQzdzY3Ewa1ZWWDFZczRrVVorNWc5VDE2RW5VeVhFSlhwd3ViNWVvRFhydTN6bDIyK2pMRy8vcm1CdWZNMUx2YktXTWFYbFp4VmFYQTBiMnEzZXYxakFIcHNWeGNERVA4eXpncis5THh5d01zaVhXdllWQ0gwckFndnJvVjMzZGtReVFXc3RESCtDNy9XMXUvaDhWNk44VjJlYllYRmQvVlhTc3dQSXN6U1FzelZQUW5FRllGZTFUQXZxU0hNcTFsbnV6TE1pM3kzeWE1QmF4WVAvT0h6VEJPTE5iTUZxdG9SSS96NXF0bmdUMVdPc3dqWS9pS1JwUjN6aEVlL3FwVlJvaEJwcnBZeHk0QXRTd1hGbUwwYmRxUENPRmRVY2w3T3JKWVlRU3ZYSW9nVldtb1ppTTFWb2x1cnVqaWxDYU5JZFdqUFBYU2FYVWFiSVFyNWJtTzRxZ1lkOEJpcjhBSlduYitxcHdsNW9WNHNlcmxsWDJpS1IvVkNVQnZqVWV1R214ZFdNK2FvRjdEbDNJUGVpUjZ1dkRWVW5XK0JxQndSd3pKaEROYUdXZGVHYlJTa2RuRFoxMkxFdFpoTVRaMm9GbFdYVzdIbDkxdUxzTFA4UzhoditSZnV1N2M1RzkyWnQ1MSs0TjUzM3ZmTzE5MzVxbHRQM1hQRFBTOC9JMTM3S25OVGFyTElOT2NDYUQ1dXR1QmNyUDN2TkxmUGZaZlBQcmJCaE0rN2UvU0c0c3RvOEZ0VGdkVTJqWlJodGMzTG9CYlYzSjkveThkTWdZK1lvNVhEeUpDTms4aVVGTWxrdnR4RVVzZ3hFUk1xRVhwTXgxU1FLQTlQbGdSMERDRlZRdW94aG5sWjFpWVd0Z0F6VTlQVVJhU3EyaEpNVlcxaDYrYVo5ZXNtUUxvYzdJRFoxUkhLbGdjc3FiMDcxeXhoWjNuK2J4NDQwczFYdUJnc00wdS94Smt2ZkVJUU83SmhMdnlVQWNZVW1pVjAvTm9BaTV5RW5nUzVPdkRqUXo2ZG5nRU9kSWJxMWlVajNiMTllK1ptZHBKN3ZacEwxeXlON1ptZkxYYXhab1JmNkFya2dkZFdEWFk2ZG9MMFhhTDRMalhRdDcrdDdhYk96amNQd1JFTmp1M3JoNE9aK1QxQml2KzUxcnFhRzhUTkFUbk9jNlF6WXF0d1lpdFNRaVRpaHVFZ053cEhQc0xtejBCL1Y1R3Q4T0VmRDR4ZjJFb2daVmVNVCtiZTRKRXFUMTV4MHpTekprL3o0ZE9mS2dYSTdUY3k4MGkvSHVqcHlKY00yMmQwRm1KZGZTMDkvZnZXYk1nVVMvZ3pnRVptOVVCdkV0OW4yTUhlNUZQTWhuRGo0S1Z0Q1RoeEYrQVhWVEo5a3FwWnVlN3RMM0FUUW9Qc21rUWIwRnhsWXovQUNjeHpYSnhVM0FVYktLa2w2VDkvd1liSmRlV0JsY3MxcUM5anVRWnBSZjZpUEVPbXpTRkgwUXV0MXJERzgrTmhBVWpYMFJnT2FkQXVScTl6bzQwdXNGckRuYW9LMTNCRExIY2hPc05QSDNVWGEraGlpelhVOE5vWHlLUEF5NWcycE9hajBQemEwV0F3d3JRaHVRYUZ3b2luVUdCUURwOTB2a0JwRnlEaVg4aTJqTDhCaFM1S3ovMUFqYWZ4Rk5NbFVQcnZrb1MvemJ3bVcraTU3MnFldm9EOEc4L0h6Mko4cTFBeEdXRXh2cElyblZkL2dMbGlza1dITXVTMGN3cmU3RUZYLzhCK0ZJOVQycTFFTitENzRIZndtK0FBempsUDA3Z0tHMmlsbkpjZmVEMWFRdHNyQ3p2bkxRbmtpSW1CWEp0SVJETEhNdnJ5WitCalc1QWJ0QzhzeXk4NXduTDc3bHZjc25sNnNqeVV6VFRuOWwyWnhUZmlxZ2poNitmN2NJTVV6Z2RGcmltSnI4eUhDVzdJK0R2RXd5MFpjUkErNkh6TFVveGFHdDlEZXNRNit3RHVWRFZDcTlsMUgxODJvd0hoOXlNc0JXOVk1YWw1RFNBN1JkVThlN2lheEpmU3h3L3Bzcy81amhZU2VsWnJlWlVSVUpxYmhxTzRtLys0bDhXWC9iaHcvY3Bzdjh0bUxGaWRWM2NMWHhaWTVxeFRIdHJxNE5teU9haHB3angxeUZQSXU2QW43MkdlYUJYZ0RMTkZUdmlGTHVhNUlPVHg3alU4NHQ0NlQvU2l6MVlsUzFUYk5tMXBTOFdDN2FkYkMzMmxWQUNrcm9neXJLdXlwYlRiK1hMcFVERWJlL05Bd2Vmckg1amJlUDlRdjJ6Z0EwTXpHKzVlMDZOcFptZlJVclhXelp2YlV2Rmc0blJMb2IvVUZ1RTNLQU9lb2NGQVcrZkJTenV6OGRObE8xRHNsMFVSc0srb3RVV3NlT3UySFluVGNVdTNmUUhOQjE5cDJMQ3BqN2FxY1kyYWtSRDg0RDNyWndaSFFxSHMwQnJSYjVJbiszMis0a0NYMWtvRVExRFZ0b2daYjkwT2QyZ3hqSUFSMGkyUVpBQ1dVTk1PMlMyMkZRN0ZUdy9OemJ6Sm5UL1BDRGVUNzRHY05GWVo3bWJld25PSUV5NldVQjBMeDVFZ25KQ3dTSWk0Q0R1UkxERnIyZ0o4bHo3VU54S1B0c2xNdmNtNy9rSk96eU5lUkFlbjRnWG1IWXF2WjM1Y1JQSldmSEhPMXNuTU5TclZyajJ3TkR3cUEvVXlMYUxjZStwbS9CK0NvTWdxTkkrcWJMNnlKYjlxQzgvUWlDQU9sNWN1T2FiN0ErWjlQOTR3Zzh3TCtEbXd6SUR2UkUrZ3o2Sy9SMDlWL3JxbEtnZTJ5MjFpcThURlFBcGlZTXBJYWdtcEp2eGxBeGwvV3JLQ052R0ZMTjl5UHBhTGRFaWhjRGkwNkJWRDRhVjRsSVJENFlYUFAvWFJqN3o3WGFjZlBEOVg4ZE5mZk9ydlAvLzNuL3I0Uno3NzBjOSs0SDN2ZXVMZFQ1eDUyNFB2UFAzTzN5NkhjZUcvUVdMOHY2MzlpcVUvenIyWjZ3a2ZaejVDblY0UkJNZ2lxK0FxeFArQkJxOUFBbjNxcFU5LzdpTHk2VXRmWGVXdlEyUTc2bWR6TkdmQm9JMWpFYUJzU1NKNFJtTE9hS2VJdTBRRDRVczBDRXhseXVab1Arb2ZUdVNMYkk1eXBaSGdMVXZoUXJXUlNaekEwU0RmSlpudXU0cncrcGhXSFArTG9oaml0bW5CcDNLajBleEIwUi95a2UxSFJYL0FFb2Q0M1FuVko2WlBpZGJyUk5tUFIvOVExVGdHK3lhd0ZVTnovdVo1Mk92ME5sNm4wYTMvSDlWVzVPeGM2WVAwblVyYkczSFFNa0Y0T3JvOFh5bW1aRkZhMmpIYUgvUExRQlBudG53ay9IK0ZSeEpHdjkva2tkUzg1bDlIcHMzelNNSy9sVWRTTTdwK3BlZHJIa25aMVQyU3lIK2UrMCttbVdEQm5JYno0R294ZnZlLzdNcmlRRFFkZXhMK0QzQ1BZUW8zeGg5bTNwcFZyWWZ6MDFyenEycWxKMTltSFJaRGRqUnFoOXh0TnU0R21NYXppT2RLT2ovUC9MN0tvaVdheEpENHFwVEF2a0FJc3pVLzlVbkE2MC9xS2xHVUk3OXRacVJHR0pLK3lQRXJiaC85bmFtVkJGRGxreHowelhIcnlxcGx0aTZTODBudWJqUEhKZmxWeTJ5S3lsNzh6V01yK3BldHhNWVU4eXhXVEQzRkNKTWIxY3lXU3hCRWxvR05VbWtSZGhKZDBqQ1Y2TUtsQi9iczJycTVYTFZBR1lCM216M3EwazM0VlZycC9GcHV4c2NYTzMrbXZpU1VVR3hVUHA3OVR2ME1lUWJPZklpZldkUUQ1M0lYdW9ac3E1bW12RVdrYlAwYnF4RHExZW91M0krQWlRbUxDT2VMSUVEbnNZNFRKUlo3cDZwdTdKMjZ4UHQ0MWY3N0hmdm5mN2IvN3ExMTIvaHYwNEZNUG4wWFlLNVcxSTJDRlgvZEZqaVpHT1Jac0Z5SGdJanNwY2kxc0FlRWV6SExJc1BUT3NGNUZtUVpJYjRsNEdVNGJmbUovaTlVRWc2S1prei9tUktrUDlmanByUWtTTXJQZFdLYk9CMlJEb2pScUNBNHY2SnF1SlUrTGdkVTUrZG1SS1lma0tRUFVEbGk0ckFha0IrbnJXRmdKNlphZmM2L2JNQ2h0U1dJT0E1VlBZRGI1K0pSNXFITkFUQmV3bThCZWZZR2dKa2cxK0l4S1A4dER3a2s1NXhiR0FDOXhZVzZlTGk2NmFKVmVlRHRaRC84VnFyU0xtRFh4dzNBMHlKMytHSW9haUVZakFZWTFsWmRFeW4vdVdnRDNoYmVXdjhGQm5rYmZnR2ZkVzZBcDNtTGg0Ni9DT1VSL2xRZUJ2NUw0VnZrRTdXby9NMlZPU0FDVktWSVBZNklxcWxFTzQ1RVRUekZFdlpoaWVWbGhOTUkwMlVFcHhyMVlidTJiNTZEUVQwYURZWkhiWjFwd2x5MVJxT0NKOVBYN014K01hZkw1bVA4TFVBSlBMc0tqRDNETDgyNElJTGxVL2srNFA1dndXZ2RaWU9TZkluckllc3A1NEFpY3UwWFVNUi9vM1NXcXFiRDJqbXFKczB5L1VDTVBxZXFQSkR3V3pWeDduRnZFZ0JScm85aU5qYitBTVp3TjlyRXRXSGVPa2N3UWxoU0FnVjQwM0drS0NkRWpDVEpqU3lWbGxTbVExcVludW9JWlV2WmpuQTJwN0c0QU1DeDdhNXBna1dMZTEzRHN3L0xQR2pBNnlpZWhqakNHWDlka2NqekQ3TlljdGFMd3FmZlJZTlBxZHIxS3NoYkg1Yjgwb2VwWVIzWDFLZGNUWjk3empMVXh5VS9qSFBkeDA1cHB2Z3VHVi9IRGs5Nmg1SlVhMG92ZEJmNEJmbHh4WStxT1hWLzJzQ3o5N0RZTWFDUjhrbWtDTW9wTm84WVJRUytEKy9QVm9ScDlxZlp1cVZRSllXOFE4NTNSRjFCMnM1VGpUWjdBT2FiY2ppNzY1MytsUE5NL3UwTmUyczlsK0RXeHZyR05RYWRNMnJnTmF6OG1pQjlweVNSbTJzZjM3bXVOalp3cWtZQThVTjF0MTZ5UkhYckZEOXhBK3R4MTFqbzZsQnY1bXZiRHFIcjNJdzVIWHloYlZlWnhPSVVFYm1TSlNMQWFKRkZSREVITk1UYzFySk56Y2pKODF2dHIwUnRFSUI2T3JQcDFwaC95QjV5aFIyZWNyd0pXZWFZaHFRV2xXMkhtS1BFWkdNRlh6UjFDV1lSOCtsbHM4aDV3OXphc1kwOEtqMi92bGphMHVNR3FPY3I2N3ZxYkdDcldNaS9aZzdMekZIVStjL091UklSaXB0NjNIaDM1MWNMbGNsc1I4MU9Oa1N1UUhFdm0vb0N1cVFDekJFakcvTWwveGhEWU1tV1pSRGJzYmhzS0xxa2dlaEhoRVd2S0RDVmhVQlk4T2JFNEVCcnk2YjVqUXN6QzQycDFudTZXdGEwcmltWVBMVUJjLzlnc1hXeWtnQlFyN2dyeEEwWG1QOVowNEtBUE1oRHViQWJoUkFsWXV2RTRiWDV1ZmJKSzhmQ2lWWkZxbENUT0lmWEhwNW9FM0JZTU5VS0ZjdFRjRGh4K0VsL0xKYU9ScTllc2NQdFZGd3pQTFk4Rm8rWVcwOU1qZlJSdnloRTRUcWNoY3FSZmtYYW9KcndNMEp5YlBtRzViRVgyVFhwV09PMkxvTVE4aEFLb0M0dmcvcFJkSFBsaGhpV3hjRnVJcUFpMW9YZFc0aW1iNWdnVkpYbTJMSXlNaEtBanJQc2ZpTFFjSk9jbjlwTUlsUTZMMDl4T0hqNHluMWVDdldSTWxzcHBMMGwyQlh1eXBSdEMvaDF6bTRBUTFudXg3Q2FyWFZGNW9DWGFYVmNhWnRsdGtlR1FPTFpGN3J0aE9YSFg3bUtJWlIzVldzTjV4UGUycFpyZVM3Y0p6ME1VdlJXSG9ETndrRnV6VjB2MDJkeEpSdDMzc0N1Rldtc0RhL054cS9peGwxZTlRSmM5WklXeVVjUGlsUmV6eTIvcm4vYk80RUdUak9QRjhHVFo2RDdtSjZjalZSTUZnaGFPemEwQmsyVGFaSFpRRnhnN3ZvamN4MWxOTUlkMlhveGUvY1JOeUMyRjN2YVR6ZTJPTklZakh3dFREZlBlVzNUNUw3TENSa2ZHYnA3c3kva00yWnV6a1ZVWDJSdXBETzE5ZlN3NTdQbXQzVG5UelRmNmk1ckl4V1pCTXd4dzBma1RaTzVqcWs3anFTak5GZ2NiblpZUTFXTTFwaERmUkhkaGh5WGxoMUVXS01nNlI1SGlBb0NPZ3pDZ1U1VS9UalNRcGdpamZJVk9ZZ3FrTXZEV0VlR3BCdkxBWlp4M1dSY3dVUisyZlF2STU5aStSYURMUCs2eGR6ZWZENXJDVmsrQzREK3BZMjNwMndvLzNmZWYzOWxaTitlYVE5RzNuajlxUlBYSExuOHNrTUg5OXkyN3phMlRsVmxjWHJ4ZkRoWkhveXc2UGp3eWpESjVxUzZ6U3UxbnBkRWR6QzhjcjFYZHJLK29GbTRTYTBHZk4rTCtSVSszeWpkbkhzV0grRDg2YjBzb2liWUlQWjhnbGNaL1BTNVNuOUFEK2wyeEw4UDJOWVRqekxlOVpvYkdZWG1TeDY5NWlZb2ttOVZKZitBODcwNlMzeDhWUVVYdWZvRmZ2T29QMkliUVdDY2R3WDBJRERXcVArTVY3TTFBc1dvWjJ1NVdlaEhLWjQvZlJZdFZEWWxZTGJNVHJDVnIrYUlRbGhVT1dMckJ3Q0E0akY3REZHZGwycVI1UjNxTHhWekxUSGJBaGsxUlZMVW5WUHJXUEJkRkdoOE9RU2R0YTVoUlV3bGdRdGhxU25IYjQ0N2hlYW5BRkJNRWpmVnpUZTNCa2N2R3huWTJSZmFHdVFMWk83WU9MMk5FTjBrSDJOcllmRTBpa2RUSmVjN3hORHUxM1NTaVVTMDRrUTVGUTdpSDl0aytKSkJVUmc5TUNoRC8zc0xaL1owdldrblZXMzZIcjdBODJsMmc0b0tzL0ZHMzVyUm9oNHB0VWVMaG9jMVBpNThnV09OSnY5SVMyZStIWUtyZGJMWTZxSU5hZ1lRL1h1eDhLZG5QMkFGTU1VMzIwRmd3LzR3dnAzaWdDQUZXalJuSVpSd2ZzNi9UN2cxaXAvVVdnSWUxbmdIMmRlQU5VN1ZsMnRZWXNhK0d0YndWdUxrSmpZdnp5K0hQSHZ3ZlF4ZDNPZUNHVzVRNDZhMUx1V3BGZmhud2tVYlhXcDBoVy9nUnBiWmhISi9aZ1c3UG5IY3JrWUVMOVd3NnllNGRtSjBaR2lRZVRXM3RicitndW9GQTcrajdrTldGNEx4UEp5SFZ2TjBaakwxYXQ3T3FZZTVwNWYwc096K0g1WmxxSG5FZGY5NkJQNC9MTG1WNHFvTzBObjZOZTZOV0h0MkhhdDhSSUpieW1YM3psNHVtcy94WERTbFNwZnJMd2dmL1JUektoUVdXVDZhSmU0NmVWNHFtbUI2dGR3Uy9GaXVFcHhwY3FlWGlZWWxqZGdKbitBSjF4TERNdEdjZTYxdSszQkhqSDdTamV6RnV4bmUyZWxha2V1WmFCcnQ0Vm1RTDFnVWdDQVJpV2RnRkVHUzUrc2FBQjNGUEhKQzRPSHFpc0o5bEZtV0lWR0JSNTladjQ1SGRMSlhBR2tVWGtGdHNITXdubFpmNUdBNFVwUHhiYjdZUVhQdURUZHdvQ2xENnA4NUR4cUJnUEdJcFduT0o5M29ZVHlyUmtJNmlLN1dpOU1CMnhQWG56UEN5bnFHOTE3UEFtOUphNm9VRTNvc2VOVndSSFUrNWNZbDR6bG84SWdlRGhuNGhHazVhemY2WTg5VWsydW82clFhcXlYWGVJMnBObUtmTU1xaE1wb0I3TVBXOWFPRW5rU3FwSjZxUmszSUdrR0txeGhxZHVQR2FQZU9MZk1iS2hPamcvM2R4V3dLQkhjTGhYRllyeVpnYW9SL25najFPK0tqaVRzQTBJamlPOVhBSFVZd1NQNzBsUUlqL01IcmZUcDlIQWJ5NDZwaG5lRFMvOU92QUJ4NU9ZNFlIOENvQjFYWWlpS1ZNcEc1MjZ5YmExRUVUZ0RBeHVVQVpCVU9JSkNCdmtKSE1oR1AraTFWSVQxQ0QrY0FZU2xkNXF0MUo5anFTVFhUcE1zQndrMGo1M3ppL3hRNTZoaDl1d1o2ZDA0WVJGTzJVd1A3RHE3ZnVNQjVRSlgwbC80M0kvMjZMbVNpWWNNai9mOUI5eDRZWEJvVmhNeDBsNno1NktZYmswbEcrdS9mY2FoSzlQRUo0QnB2VkVHVXV0Ry9acVJHK1ltSGhlNENlV29lTFZaMnJva0FHMlRaTVFEb3lUb2hLbWJoN0N6bEUwam5BbDNXWE5pbnNibTN4Q2dHWDdkc1ptTmxjbUo4WkxpdjFKRnRpZm5uN1huWFZtR3NndjFZb3RKUUpHcXhoYVVLWGhZM3R5b1NabDd6K1lKWEZlSjVJZ1o1eUE0THd5RmZkQTRvaHV1dXAzZkNmODBjeVJUSENMSEQyWUZzMkNaa3JKZ1pOVFFkanJMeE5xd3IrQU9LUnRwQW5uNVhQZjBlUHBPTm0zR2F5R0pvYmxNbEVXUW5Ba21GMnV4ZUhRa0twN053aTM5VVZGWDVSeWpVL1ZIaTVGV29iU1YveE1oZDRsMTRxU1hldVgzNlgxZGZxaDN2M0RoTGJyL2c0dXUxM3o1U2pWMXdWK21HeWhXeEM5REx2ZGhqbHJJdzMrUXNmbXZEU3VDMXZNaUQxWFhPR1FPT1lHREFjMTVvcTdmUVdiR1FTY2RqN080U2MxOG85QW84cklHdFBEL0NWZ0xnSytMVTh3M0FBd2lmY3B5aUhkVDBTOTc4MkxZdDE3ZTErZmYrL3M3NW1mV2pHTG1yNEp6OXpvWWI3cjVoQTkrRU1ScGRQek8vNi9mMytOdmFidGk4N2IzM0g5UzFnRjM4RGVKTDMrRHZiZkFhcnIrQlAvT2R3ajhJRTV4M2x5c0RaU3lJSldCUTdUQWFCWGRsZWI3aTFzbjZwNW1lR2hzWjZHUDVUdVB1T2d0TUdLdkZaWENNVTJBcHJxdDZ3WVpzcDFVRU9OeVkvdHpOSURleC8vYWJiNzc5ejVQdzU4K2hkTnVmcDZCMFRLZmZWQXhEMmFycW12b05WVGVWYjZpYXFXeFZERTJGRStTeHBXcjcyeithU2lSU0gyVWw1MTlWWGFmZlVFd2RMdEYwdGRvYTdxVnFoc0o1OUduTy8yNUViNnk4TGdHalRpaXdGQ0NYenhKTlhkb09kRUNzdlRsbTNuQnNaUGl4cGhwdy9YRUxHNlpxbU1lUWFaNmdBTEJFcEtwbzBTMGhkY24yNllLS1ZPQUFKNjQ3Y3ZqS0t5NWhWb0dGbVkzcnB5ZkdoZ1o2dWp1TGFlQUdqUFBESUxzUjM4aVhyc25XSElheTVWcXhsbG1rNWpmRWtnOTd4UnAycUhrZ0RZWnJ4ZG9LWnpYZm92SmdyVmpGR0krOWFRK2xhU1VnUDNUOElVVmhoVVZPNnhlaGxGWVVWc3NMZTk3RUtQMmI5aWhLa3RyeVF5Y2ZZb1dndk1pWFNGMkVxaVNscDQ4L1JBTVNGSGEvaVptOUhtSFY3ajJnT2szcEhsYXR2OFFQSnFIeHNZZVVvSlJrUHdqTTIvMUJPUFBnOFlmY1g5NWJkUUJsWS9hN3d2OGl6OEU4bTBERlNvNHRvQnBtMHFXcllhb3EyY21SWkdLZ1B6R1JuT2hrbVRCeitlb1NWRHdKSmh1ckszUkdGNkF4cmhENk5rSHFMSFZ2M3JvME9UNVN1dUxkdmYydHJWbEx2Vm5WeWJrUExtM2QxRjBxS2xLWG9LczNXK3EyUy9ZdmJPNHVRZXNGeDlUbUYzYlB6M1oyUmNKNS9kaXVQY3VicHRTQUpQUVJYY1dmN3VxY25kKzliZGJVYmxZTm9VK1FTcXppc2ZtWnpxNXFmaVdiM0FMU1NCeHRSNGNyVi9RbW94R1FMZkFXNEI2SXpLa1lneXlHK2ZybklKV2hZOUF2RWlMU2NVUWxla3FET2F0Z3RvNEJWS0ZkVER1M3hKWXpYR2h0VWVUNTJjRTFwVzRZU3FtVzdhM2IvVDQ1cnNRRGJDbDBMSWV6UXlPZVoyTTl2cDZsQTJWZXJiNG1MZlVrNFRGNGlrVVlkOGx6dDYwRUhwa2tJM3l0OURoZWkzRStJYXZpb21TSVlVbWFWY09icHRadGxYQkpvL0lXeVJLM3lGVHJrZFpkUGxxNXRyVmRrY2IyOVpVdnp4cGFUQ0JTNTdHMWMzY3NTSEl1KzBaOGcyS2F5bTJxL0hxUUZVUzRrU0hPWFMrcjkyY3p0ODVydG5LSkpGMUMvZHJJd2ZLRzBiSHB2cjFqb3BUTFcyYTdLRXZkOEJTenQ4enRtTjI0cXlHbW80Uk1HRGxsdEJVZFJqT1Y5UWlFWDZhQUJla1hIV2ZLTnlRY0E5U2lDRnpYRDMySWovRUlSaUt1VUcrM3RyYUdvMjFobXdmcXVZNVVudUErMVpTS1BsZFByRGRVYUVpNGQ0SGtlMFBDQmRxVEJLQU9wMnhuK216OFpWbmVPZWw2VlUzeXFCV25jMlNYTGNEZm5hT1Uxb29LK2E4MWN6YnhDLzY1TllxeVpnNEt4SjViUTMrWUh6S3dpZlZ5WHBaend6b1VqWEpPeHArUlpXZkk3czJ3K3dPNG1YUlRCVTJ5OEJqcFV5dnY3QlgvLzlLdTVyZUpJNHJ2N081ODdQZmFYc2MydHZQbE9QNUljR0x3WW5CUk1DbUpvU0Vrb1JEVnBFU3FFSXJVTkVRY1VCVnhxYXBLU0loS2xGWlYvNEJVUXJtMGgxN2FBMEpBMVZON0JkRmVldXVoVXFVU3FaZkU3YnpaT0hHUVdnNzF3VE83cS8yTnRidCsrM3R2M3Z4ZTZ4NUhaa3dnN3cwU1JodG1CYUI5TWNxUkxDR0RQaDhsdUFkZktyOG9mVUlyb2M3dndSZG92dDdiRnpFMUdUTnBHRm4weG9wc1cvZG1aTmNjUU1STmNDK1NOS2ErRHMrK1ZaOHhFTGVzcTZvYzRxUUpTVmNpZWxpQk1uNVhKSXZhMUxKWEpCdWlRTXVTYXhMaVhvVjVHMm9oK2c3bllLYnJtQjFzc3dsc0U5YWJwempzdVU1WWFmVi9vKzcvbmY4TmFMcGs1WldJeldhOVBIN1NyeURwODg4KytuRHQvZXVyaTIrZmJweWNIcDkrclZhcCsvWFJVbjR3bll4NnJtUG9CRVBwUzFISE5oUHRFdVNoNnZmdDlqSXZrZVU5VDB3c0xNbUtOL1FZQ3FRaU9qZUVRQzdNTGdBMzRSNDZFTWZjcnJadzUrdjhjSmRRSVlPbHVtQm9QZGowZ0ttM3VZRHkwNkpzeEpOeGJqc2Y3WFFXQ1dWWStRWXplb2JoclJlUW1xQlltRzJuYk05TGVoSDVqaDNocmRmNmdPSnN2Nm9pSFJra200K25rajJqOGVSd1RpVU1KNkUrZGpxSk1hZldCdTdwVDVoNmVxQmNQRmpjT1NoLzY5Z0p4MG5ZVHJ2VnlMWUdJOGwvRVczN0RkRVQyemVqOWtVN3dwblhSVHZhMGQzZTRDaUtJelBNbjJ3bGhNSTlYWVliVFdRemgzUkVjUXJPalBGaGRBNHlRTEJzYWV4QTFBcU5uamtDVlJONytlRzkrSDVXdnNQNWJra3FTNjlMazFKVCtxcnV4cmpGaGp3bWlVNXpvcUcwYzZna21YRE9TQkJwaXpzekVGV2xxc1p0RjRQeWFsUXMyZGV3Q3BYMFlBMERielM5Q1pPMi9Fa2MrN2Z6S1VUalhnblFySHVuRzNNemplYnBaclFRQ1JkU3Vld0FwRFVnR21vTEFOTk1meW1vc25UNFVBd2NOQUpyR2t0QkRmRllXYVQ1NTJLWjdQNDkzS05Cc1F6dGYwbFRtaE5kc29seFhpVy9xMFpZY2N6dnJKRlVJZjI5R1ZXYzFtMkR6aXBPMkZGbkNUUERtZHl4NnRBOGVxeDI3RGxhTnVqeTBQeW54Ymx1YWpJVVp5YnRucFBQRGJUdXE0U29hQ2JqeEtJb0ZVK25VN0tUOEZvZk8rNERwdXZzZ1cySG5lNkhTMXQ3RzhjZDkrclNSanBCR1JLNVRScEpwSGUxMUc5THRqUUNFYmFEaGdxVEFvMU9yNFdUT2h2WmdkZkN6WG9JbEE3OEVQK3o0RjBGRTBvQytaS1hwRXVRbXNoNDhiNllsMEdidVVKZlBsNDYzbE1wV2E1ZUxLZVBqaVR5L1VWK1hYVDVkcVlTYmgxejQzRVgvUkN1Wk43enNFcXhGVkpJQ051dGxtNHFGbEZkUzJVWWQ4azZSZzRoZTM3V0UvNHNERW9qOWVFVVovbEptM0plTHdkTWQwZXRONWpnQ01oVFBCWWQ4SVJNNzJoWlRPN0RBbzdCRVc2UGc5eUlDTVRjcXFDQ1VlM3I1bjl1NVlubGthVS92S1IxZ0gzeXQwUThZbEM2NVZXOXUvY1dxYVdoNCtFRUlwcEZsMzcwREczOVYwSk1HcUtvNlhsMzc4L1RpQ1hMaVlnczNnL3ZLcjhwYjRyNlJHUFNsSFFCZEJhaGdDdGxxcWpiS21tRWFhS1NLNVloT0FVaE5WMlVBREYydENXaEFNajAyZnFKb1NKSVRNN05ucjB3ZldGeTRzUlVmY3F2Rk1lR3hucDdvb1d1UWhCM2RIYjlTeGZ1Umk5UVBqY1FuSVJ2SWF0OENJNEVVNmV2bEtaVXdMOEc0NGcyYjkyNFBqNHhNWDc5QnJMYnZWc3JseGY4YXRWZnVQeTgzVms1UHptUkx4YnpFNVByalZNRi9qblZtUElYZkg5aCtaTHZYenFTcjlYbWFqWGxQSnpkK25NLzR0Yk5mVWlpSXo4RWhQVjltSzNJRHRyeWdvL3lnRGRYazlvY1V4YlBjMW9haGx3WURjbmNEZVF1S3I5d2NHSEVOTHN3NzhEdWN0Vjl4SWFLRkFldkt3aGpWYUMrNlNNN3BPT251dmNNNDhkMnYvMFk0MmQ2L2luV1EvWWpyS05UbTl3dVhtTnA5MmZlcnRIYW1tSW9xNHl0OG1ZTmw5WVVRcDY3YVhhTnR5LzBmd0J3R3RvSUFBQjRuR05nWkdCZ0FPS2EyeXhKOGZ3Mlh4bTRtVjhBUlJodVZKV3ZnZEpyLy8vN244WDhqamtZeU9WZ1lBS0pBZ0J6S3czM2VKeGpZR1JnWUE3Nm53VWtYL3ovOS84WDh6c0dvQWdLNkFFQXR4Z0lId0I0bkdOK3djREFURGIrLzQ5OHZYaHdObzNVUXR6OG55WnVIaUVZQVBjR2c0WUFBQUFBQUFBQUFGd0F1Z0VZQWRnQ1dBTUFBMllEN0FSd0JUb0ZsZ1lhQnZvSG9nZitDRlFJZGdqYUNTZ0ovQXJLQzhvTWJBemFEWUlPV0E4QUVBQVFUQkQwRWI0U0xoTElFMDRUMmhUVUZXZ1dIaFpxRnNJWEVCZU1HRGdZeEJrdUdlWWFsQnZzSE80ZHZCNHlIcUlmTmgrTUlDNGdnQ0R1SVVJaG9pSVNJcndqT2lQb0pHQWxKaVlXSnBnbnRpZ2NLSkFwQmlsc0tnSXFaaXJrSzhJc1BDeUdMT290ZGkzc0xoUXVaaTdnTHpRdlZqQllNUTR4WGpJTU15WXp6RFErTk1RMUFqVTROZW8yb2pjTU9IUTQyam4rT3E0N1VqdnlQRVk4ZkR5NlBWUTkyRDV1UHZJL2xFQmFRTkJCN2tKOFFySkM3a04wUThaRVZrVHlSWGhHREVaS1JuSkd6RWRHU0NaSW1FbENTZ1JMaEV4aVRNQk5GRTNLVGhrQUFBQUJBQUFBakFEUUFBMEFBQUFBQUFJQVRnQmVBSE1BQUFEUkMzQUFBQUFBZUp4MWtNMUt3MEFVaGMvWUg3VUZGUVczemtvcTB2UUhYQ2dVQ3BWMm81c2kzVW9hODFmU1RKbVpGdm9hdm9NUDQwdjRMSjZtVTVHS0NaUDU3cm5uM3JrWkFPZjRnc0QydWVQYXNzQVJveTBmNEJBOXh5WHFqNDdMNUNmSEZkVHg0cmhLL2RWeERiZUlIZGR4Z1hkMkVPVmpSak44T0JZNEU2ZU9EM0Fpcmh5WHFEY2RsOGs5eHhWY2ltZkhWZXFCNHhvbXdqaXU0MXA4RHRSaXJkTTRzYkl4dUpIZGR1ZGVUdGRTVVVwelA1UCswaVpLRzltWGtjcHRtR1hLQzlUY1JNMDBVTGtaaC9FeTgvVXUzTzJUVUp0VTViTGp0WGZTS014RDdkdndiZFBkck9LdXRaR010SnJMb2VzckYxck53c0I2aWJXTGgxYnI5M2tZUUdHQk5UUlNYbFVDQzRrRzFSdnVYYlRSd1QxcFNvZWtjK3RLa2NOSFJzWEhraFZKa1RHTSsxd1JvNXhxU0VkRzloRHdPMmMrUXBPMVFaRTNHTk1Sc3o1akYvMG51eDlQNk42NDBpS1duTXZqZFB1dUVWMTU0ZlNMQ2Q1K1pqZFk4YlF1VmN1YXpaUzZtRXBpdURldjVIMXNjak1xQVhXdnVCVkw5UUV0dnYvODN6ZUx3b0pOQUhpY2JWUG5ueHMxRUwwWGI3R3ZCd0tFM2pzSGR4Y0loTjU3NzkzSTBxeFg4YTZrazdUMk9mVGV3di9NeUhmbWx3L3NCMjJiZWUvTm01bVZFeXRIMStySy8xOFhjUUk5Wk1oUm9FUWZBNnhpRGV2WXdDYTJzSTJUdUF5WDR4U3V3Slc0Q3FkeE5hN0J0YmdPMStNRzNJaWJjRE51d2EyNERiZmpEdHlKdTNBMzdzRzl1QTg3dUI4UFlCZDcyTWNaUElpSGNCWVA0eEdjdzZONERJL2pDVHlKcC9BMG5zR3plQTdQNHdXOGlKZndNbDdCcTNnTnIrTU52SW0zOERiZXdidDREKy9qQTN5SWovQXhQc0duK0F5ZjR3dDhpU0crZ3NBSUVncUVDbVBVMERpUENScTBNTEJ3T0lCSFFFU0hLV1k0eEJ3WDhEVyt3YmY0RHQvakIveUluL0F6ZnNHditBMi80dy84aWIvd055N2luNVg4akxJeDlJUlN1V3hzb0lIeld0TEkya2xXVStQNnhzYWpOMjlub2VoY1k4VWlVazZLc2JlZEMydldrUmxXdGxIa3Q3MGUxM0VvR2owMncwaUhzWFRlcWs3R2pZT09RdFNXQTRsVU9SUGVhRFBPdWtBK1grU3NNNCt1dEJRcEtLdHRTMzFwVGZSQ3hwSzFwY0JNT0JjeWFkMDgxNjBZVTVhSSs0RmlaS2hRWExDMjFhYndKSzFYQStGWnI3SXowNU5kM05LRzh5TXJhbDBqSW0ya1RGTEhvZ2RCS3hvMk9zUXlZZGd1RmdjZFZ4M1dQYVZvdGZpWGpaV1ZaVERhT1lxWlkvNDEyWVZvMjJHU1ZTNzRPbGVJR0lXc1N5WG1VMDJ6VEp2S2JpL1p4WGhZYVdwVTdrU0lsQVhyWTgrcGlpVTdmc3lpQ0pNK2czazdGYzFhc0ZLTEp0VENVK0hJdW9ZS0hkbFlXU2hxaU5OSFFrNTZJMkZ5YW9WdXNoSFh3bTVUb3MwWGFRTWxRajJ5d3FzaTFzSk1RaDR0NjFwZCtycXpWd2FuamVFV3VOcEdtOU9VVEN4SG5VNnVySi9uNm5RMVg3VHhwT1EvNUM5cGJFWkt4NklSYzdhcnp5Tmp2WTd6N1JDRlVVdzR0S1B6SkdNb0V4ZFQ5WStzT25lbVhJaE56SjJVRkVMcHFmSVU2cTJHcWt2bkprdXR5eVdYRVRNK1kwN3NyODlTMUpxbjFrNVR3OHlFWWRwVytIbWZlOU8xckxGUVhsUXhiQngvVnhTWmprbTQ3Wkt5Umsrb241Q1BocmdtT1ZuamMrcXRTY2dGSFRyV255WGtQT1hNOHloR0RXV0xtVjI0czdPM0dYVkRRNW1LVEdOeGlyZWxUb3BIWFpQYW9oYXprbzUrSmFiSkZWby9wbGpNK1pJdnFTZ3EzYkNyV1NwbmM0bWpqV0tlUWNjM3owS29uOGhUcnpPT3BveS8yLzg0VGRlT3lDODVlU1ZYanhEVCsrQ1lxSE84clNSOFdWblBhNmRXRGMyR001MEViQzF4dUllSnRPaE1BdUdGVHZQWUdlNW81bXlJSjNpdUEwUEl1c2ZKUmVYdEJWNDhhZHZrZUVnYmx4VHpTbW81WS85T0t4Mms3ZmdYUzFCZFE1cW5JT3pzN2krbllQZjRZZjlzUDNveWl0ZTNpTUtQZWE5a042S1ZsWDhCOGpqYWlnQUFlSnhqOE43QmNDSW9ZaU1qWTEva0JzYWRIQXdjRE1rRkd4bFluVFl4TURKb2dSaWJ1WmdZT1NBc1BnWXdpODFwRjlNQm9EUW5rTTN1dEl2QkFjSm1abkRacU1MWUVSaXh3YUVqWWlOemlzdEdOUkJ2RjBjREF5T0xRMGR5U0FSSVNTUVFiT1poWXVUUjJzSDR2M1VEUys5R0pnWVhBQXgySS9RQUFBPT0nKSBmb3JtYXQoJ3dvZmYnKSxcblx0dXJsKCdkYXRhOmFwcGxpY2F0aW9uL29jdGV0LXN0cmVhbTtiYXNlNjQsQUFFQUFBQVBBSUFBQXdCd1IxTlZRaUNMSlhvQUFBRDhBQUFBVkU5VEx6SStJRW9DQUFBQlVBQUFBRlpqYldGd0hzVHNxUUFBQWFnQUFBa1NZM1owSUFiWC93UUFBTE5nQUFBQUlHWndaMjJLa1pCWkFBQ3pnQUFBQzNCbllYTndBQUFBRUFBQXMxZ0FBQUFJWjJ4NVp1cnpoYm9BQUFxOEFBQ2NNbWhsWVdRVUFETDdBQUNtOEFBQUFEWm9hR1ZoQjBFRDJRQUFweWdBQUFBa2FHMTBlQ0huLy8wQUFLZE1BQUFDTUd4dlkySEdnYUpJQUFDcGZBQUFBUnB0WVhod0Fpd01vQUFBcXBnQUFBQWdibUZ0WmI5YXBlRUFBS3E0QUFBQ3pYQnZjM1Q3a2N1UEFBQ3RpQUFBQmM5d2NtVnc1VUVydkFBQXZ2QUFBQUNHQUFFQUFBQUtBREFBUGdBQ1JFWk1WQUFPYkdGMGJnQWFBQVFBQUFBQUFBQUFBUUFBQUFRQUFBQUFBQUFBQVFBQUFBRnNhV2RoQUFnQUFBQUJBQUFBQVFBRUFBUUFBQUFCQUFnQUFRQUdBQUFBQVFBQUFBRUQ1Z0dRQUFVQUFBSjZBcndBQUFDTUFub0N2QUFBQWVBQU1RRUNBQUFDQUFVREFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBRkJtUldRQVFPZ0E2SXdEVXY5cUFGb0RVd0NXQUFBQUFRQUFBQUFBQUFBQUFBVUFBQUFEQUFBQUxBQUFBQVFBQUFKeUFBRUFBQUFBQVd3QUF3QUJBQUFBTEFBREFBb0FBQUp5QUFRQlFBQUFBQVlBQkFBQkFBTG9pZWlNLy84QUFPZ0E2SXYvL3dBQUFBQUFBUUFHQVJnQUFBQUJBQUlBQXdBRUFBVUFCZ0FIQUFnQUNRQUtBQXNBREFBTkFBNEFEd0FRQUJFQUVnQVRBQlFBRlFBV0FCY0FHQUFaQUJvQUd3QWNBQjBBSGdBZkFDQUFJUUFpQUNNQUpBQWxBQ1lBSndBb0FDa0FLZ0FyQUN3QUxRQXVBQzhBTUFBeEFESUFNd0EwQURVQU5nQTNBRGdBT1FBNkFEc0FQQUE5QUQ0QVB3QkFBRUVBUWdCREFFUUFSUUJHQUVjQVNBQkpBRW9BU3dCTUFFMEFUZ0JQQUZBQVVRQlNBRk1BVkFCVkFGWUFWd0JZQUZrQVdnQmJBRndBWFFCZUFGOEFZQUJoQUdJQVl3QmtBR1VBWmdCbkFHZ0FhUUJxQUdzQWJBQnRBRzRBYndCd0FIRUFjZ0J6QUhRQWRRQjJBSGNBZUFCNUFIb0Fld0I4QUgwQWZnQi9BSUFBZ1FDQ0FJTUFoQUNGQUlZQWh3Q0lBSWtBaWdDTEFDWUFBQUVHQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQXdBQUFBQUJxQUFBQUFBQUFBQWpBQUE2QUFBQU9nQUFBQUFBUUFBNkFFQUFPZ0JBQUFBQWdBQTZBSUFBT2dDQUFBQUF3QUE2QU1BQU9nREFBQUFCQUFBNkFRQUFPZ0VBQUFBQlFBQTZBVUFBT2dGQUFBQUJnQUE2QVlBQU9nR0FBQUFCd0FBNkFjQUFPZ0hBQUFBQ0FBQTZBZ0FBT2dJQUFBQUNRQUE2QWtBQU9nSkFBQUFDZ0FBNkFvQUFPZ0tBQUFBQ3dBQTZBc0FBT2dMQUFBQURBQUE2QXdBQU9nTUFBQUFEUUFBNkEwQUFPZ05BQUFBRGdBQTZBNEFBT2dPQUFBQUR3QUE2QThBQU9nUEFBQUFFQUFBNkJBQUFPZ1FBQUFBRVFBQTZCRUFBT2dSQUFBQUVnQUE2QklBQU9nU0FBQUFFd0FBNkJNQUFPZ1RBQUFBRkFBQTZCUUFBT2dVQUFBQUZRQUE2QlVBQU9nVkFBQUFGZ0FBNkJZQUFPZ1dBQUFBRndBQTZCY0FBT2dYQUFBQUdBQUE2QmdBQU9nWUFBQUFHUUFBNkJrQUFPZ1pBQUFBR2dBQTZCb0FBT2dhQUFBQUd3QUE2QnNBQU9nYkFBQUFIQUFBNkJ3QUFPZ2NBQUFBSFFBQTZCMEFBT2dkQUFBQUhnQUE2QjRBQU9nZUFBQUFId0FBNkI4QUFPZ2ZBQUFBSUFBQTZDQUFBT2dnQUFBQUlRQUE2Q0VBQU9naEFBQUFJZ0FBNkNJQUFPZ2lBQUFBSXdBQTZDTUFBT2dqQUFBQUpBQUE2Q1FBQU9na0FBQUFKUUFBNkNVQUFPZ2xBQUFBSmdBQTZDWUFBT2dtQUFBQUp3QUE2Q2NBQU9nbkFBQUFLQUFBNkNnQUFPZ29BQUFBS1FBQTZDa0FBT2dwQUFBQUtnQUE2Q29BQU9ncUFBQUFLd0FBNkNzQUFPZ3JBQUFBTEFBQTZDd0FBT2dzQUFBQUxRQUE2QzBBQU9ndEFBQUFMZ0FBNkM0QUFPZ3VBQUFBTHdBQTZDOEFBT2d2QUFBQU1BQUE2REFBQU9nd0FBQUFNUUFBNkRFQUFPZ3hBQUFBTWdBQTZESUFBT2d5QUFBQU13QUE2RE1BQU9nekFBQUFOQUFBNkRRQUFPZzBBQUFBTlFBQTZEVUFBT2cxQUFBQU5nQUE2RFlBQU9nMkFBQUFOd0FBNkRjQUFPZzNBQUFBT0FBQTZEZ0FBT2c0QUFBQU9RQUE2RGtBQU9nNUFBQUFPZ0FBNkRvQUFPZzZBQUFBT3dBQTZEc0FBT2c3QUFBQVBBQUE2RHdBQU9nOEFBQUFQUUFBNkQwQUFPZzlBQUFBUGdBQTZENEFBT2crQUFBQVB3QUE2RDhBQU9nL0FBQUFRQUFBNkVBQUFPaEFBQUFBUVFBQTZFRUFBT2hCQUFBQVFnQUE2RUlBQU9oQ0FBQUFRd0FBNkVNQUFPaERBQUFBUkFBQTZFUUFBT2hFQUFBQVJRQUE2RVVBQU9oRkFBQUFSZ0FBNkVZQUFPaEdBQUFBUndBQTZFY0FBT2hIQUFBQVNBQUE2RWdBQU9oSUFBQUFTUUFBNkVrQUFPaEpBQUFBU2dBQTZFb0FBT2hLQUFBQVN3QUE2RXNBQU9oTEFBQUFUQUFBNkV3QUFPaE1BQUFBVFFBQTZFMEFBT2hOQUFBQVRnQUE2RTRBQU9oT0FBQUFUd0FBNkU4QUFPaFBBQUFBVUFBQTZGQUFBT2hRQUFBQVVRQUE2RkVBQU9oUkFBQUFVZ0FBNkZJQUFPaFNBQUFBVXdBQTZGTUFBT2hUQUFBQVZBQUE2RlFBQU9oVUFBQUFWUUFBNkZVQUFPaFZBQUFBVmdBQTZGWUFBT2hXQUFBQVZ3QUE2RmNBQU9oWEFBQUFXQUFBNkZnQUFPaFlBQUFBV1FBQTZGa0FBT2haQUFBQVdnQUE2Rm9BQU9oYUFBQUFXd0FBNkZzQUFPaGJBQUFBWEFBQTZGd0FBT2hjQUFBQVhRQUE2RjBBQU9oZEFBQUFYZ0FBNkY0QUFPaGVBQUFBWHdBQTZGOEFBT2hmQUFBQVlBQUE2R0FBQU9oZ0FBQUFZUUFBNkdFQUFPaGhBQUFBWWdBQTZHSUFBT2hpQUFBQVl3QUE2R01BQU9oakFBQUFaQUFBNkdRQUFPaGtBQUFBWlFBQTZHVUFBT2hsQUFBQVpnQUE2R1lBQU9obUFBQUFad0FBNkdjQUFPaG5BQUFBYUFBQTZHZ0FBT2hvQUFBQWFRQUE2R2tBQU9ocEFBQUFhZ0FBNkdvQUFPaHFBQUFBYXdBQTZHc0FBT2hyQUFBQWJBQUE2R3dBQU9oc0FBQUFiUUFBNkcwQUFPaHRBQUFBYmdBQTZHNEFBT2h1QUFBQWJ3QUE2RzhBQU9odkFBQUFjQUFBNkhBQUFPaHdBQUFBY1FBQTZIRUFBT2h4QUFBQWNnQUE2SElBQU9oeUFBQUFjd0FBNkhNQUFPaHpBQUFBZEFBQTZIUUFBT2gwQUFBQWRRQUE2SFVBQU9oMUFBQUFkZ0FBNkhZQUFPaDJBQUFBZHdBQTZIY0FBT2gzQUFBQWVBQUE2SGdBQU9oNEFBQUFlUUFBNkhrQUFPaDVBQUFBZWdBQTZIb0FBT2g2QUFBQWV3QUE2SHNBQU9oN0FBQUFmQUFBNkh3QUFPaDhBQUFBZlFBQTZIMEFBT2g5QUFBQWZnQUE2SDRBQU9oK0FBQUFmd0FBNkg4QUFPaC9BQUFBZ0FBQTZJQUFBT2lBQUFBQWdRQUE2SUVBQU9pQkFBQUFnZ0FBNklJQUFPaUNBQUFBZ3dBQTZJTUFBT2lEQUFBQWhBQUE2SVFBQU9pRUFBQUFoUUFBNklVQUFPaUZBQUFBaGdBQTZJWUFBT2lHQUFBQWh3QUE2SWNBQU9pSEFBQUFpQUFBNklnQUFPaUlBQUFBaVFBQTZJa0FBT2lKQUFBQWlnQUE2SXNBQU9pTEFBQUFpd0FBNkl3QUFPaU1BQUFBSmdBQUFBTUFBQUFBQThJQjBnQU1BQmtBSmdBNlFEY0lCQWNDQmdVQUFRRUFWQWdFQndJR0JRQUFBVmdGQXdJQkFBRk1HeG9PRFFFQUlTQWFKaHNtRkJNTkdRNFpCd1lBREFFTUNRVVVLeE15SGdFVURnRWlMZ0UwUGdFaE1oNEJGQTRCSWk0Qk5ENEJJVEllQVJRT0FTSXVBVFErQVpvZk5SOGZOVDQxSHg4MUFYa2ZOUjhmTlQ0MUh4ODFBWGtnTlI4Zk5UODFIeDgxQWRFZk5UNDFIeDgxUGpVZkh6VStOUjhmTlQ0MUh4ODFQalVmSHpVK05SOEFBQUFCQUFEL3R3T2JBd1VBTHdBMFFERUFBZ0VDYndBRkFBVndBd0VCQUFBQlZBTUJBUUVBV0FRR0FnQUJBRXdDQUNvbkloOGFGeElQQ2djQUx3SXZCd1VVS3dFaE1qWTlBVFFtSXlFaUpqVVJOQ1lyQVNJR0ZSRVVCaU1oSWdZZEFSUVdNeUV5RmhVUkZCWTdBVEkyTlJFME5nSkJBVDBNRVJFTS9zTUpDaElMT2dzU0Nnbit3d3dSRVF3QlBRa0tFZ3M2Q3hJS0FTUVNDem9MRWdvSkFUME1FUkVNL3NNSkNoSUxPZ3NTQ2duK3d3d1JFUXdCUFFrS0FBQUFBQUVBQVAvNUExY0N3UUF2QUNoQUpRSUJBQUVBYndVQkF3UURjQUFCQkFRQlZBQUJBUVJZQUFRQkJFd1RFeDhURXhZR0JSb3JBVGMyTkM4QkppSVBBUVlpTHdFbUlnOEJCaFFmQVJZVUR3RUdGQjhCRmpJL0FUWXlId0VXTWo4Qk5qUXZBU1kwQWxUNkNRa21DUmNKL0FVUUJmd0pGd2tvQ1FuOEJRWCtDUWtvQ1JjSi9BVVFCdnNKRndrb0NRbjZCUUZxL0FnWENTZ0pDZndGQmY0SkNTZ0pGd243QmhBRi9na1hDU2dKQ2Z3R0J2d0pDU2dKRnduOEJSQUFCUUFBQUFBRERBS0tBQ2NBTndCSEFGY0Fad0IwUUhGZ1VFQXdCQU1KV0VnNEtBUUlCQUpIQUFFQUFna0JBbUFRQVFBUERRc0RDUU1BQ1dBQUF3QUVDQU1FWUE0TUNnTUlCUWNJVkFBRkFBWUhCUVpnRGd3S0F3Z0lCMWdBQndnSFRBSUFaR0pjV2xSU1RFcEVRanc2TkRJc0tpSWZIQm9YRlJRU0R3ME1DZ2NGQUNjQ0p4RUZGQ3NCSVNJR0hRRWpJZ1lVRmpzQkZTTWlCaFFXT3dFVkl5SUdGQlk3QVJVVUZqTWhNalkxRVRRbUFSUUdLd0VpSmowQk5EWTdBVElXRlJjVUJpc0JJaVk5QVRRMk93RXlGaFVYRkFZckFTSW1QUUUwTmpzQk1oWVZGeFFHS3dFaUpqMEJORFk3QVRJV0ZRTE4vb2daSkJRUUdCZ1FGQlFRR0JnUUZCUVFHQmdRRkNVWUFYZ1pKaVgreHdVRktBUUdCZ1FvQlFWUUJRVVVCQVlHQkJRRkJXUUZCU2dFQmdZRUtBVUZVQVVGRkFRR0JnUVVCUVVDaWlNWEZoY2hHR1FYSVJoa0Z5RVlFaGNuS1JrQjRCZ2UvbVlFQmdZRTNBVUZCUVhjQkFZR0JOd0ZCUVVGM0FRR0JnVGNCUVVGQmR3RUJnWUUzQVVGQlFVQUFnQUEvNUFES3dNdkFERUFRUUErUURzQUFnRUFBUUlBYlFZQkFBVUJBQVZyQUFNQUFRSURBV0FBQlFRRUJWUUFCUVVFV0FBRUJRUk1BZ0EvUERjMEl5RWFGeEVQQURFQ01RY0ZGQ3NsSXlJbVBRRTBOamMyTnpZM05pNEJKeVlHQndZSERnRXJBU0ltTno0Qk56NEJGeDRCRnhZWEZnNEJCdzRCSFFFVUJoY1VCaXNCSWlZOUFUUTJPd0V5RmhVQ0ltQUxFRWM2SkJvaUJnVW5SeXNmT3hnbUJnSVBER0FORVFFR01DY3VjMEJPaGlncEF3TXhYajRORUJNVEVReGdDeElTQzJBTUVYY1FDeDA5WkJRTkd5b3ZLMDB3QVFFV0ZTTXlDUXdTRFRaaEp5c3RBUU5SUWtSUFFubGNGd1VWREIwTUVjb0xFaElMWVFzUkVRc0FBQVFBQVArUUE1c0RMQUFuQURjQVJ3QlhBR05BWUE0QkFBQU5BZ0FOWUFBQkFBSU1BUUpnQUF3QUN3UU1DMkFBQXdBRUNnTUVZQUFLQUFrRkNnbGdDQUVGQUFZSEJRWmdDQUVGQlFkWUFBY0ZCMHdDQUZWU1RFcEVRajA2TlRJc0tpSWZIQm9YRlJRU0R3ME1DZ2NGQUNjQ0p3OEZGQ3NCSVNJR0hRRWpJZ1lVRmpzQkZTTWlCaFFXT3dFVkl5SUdGQlk3QVJVVUZqTWhNalkxRVRRbUF4UUdJeUVpSmowQk5EWXpJVElXRlRjVUJpTWhJaVk5QVRRMk15RXlGaFUzRkFZaklTSW1QUUUwTmpNaE1oWVZBMDc5dng4dU9Sa2hJUms1T1JraElSazVPUmtoSVJrNUxoOENRU0F0TGFZTENmN3pDQXNMQ0FFTkNRc21Dd2orcGdrTEN3a0JXZ2dMSndzSi9sa0lDd3NJQWFjSkN3TXNMU0E2SVRJZ21pRXlJWmtoTWlFNkh5NHRJQU1DSUMzOWNna0tDZ2ttQ1FvS0NYUUpDd3NKSmdrS0NnbWFDUW9LQ1hNSkN3c0pBQUFBQUFNQUFBQUFBNXNDdUFBUEFCOEFMd0JCUUQ0QUFRWUJBQU1CQUdBQUF3Y0JBZ1VEQW1BQUJRUUVCVlFBQlFVRVdBZ0JCQVVFVENJZ0VoQUNBQ29uSUM4aUx4b1hFQjhTSHdvSEFBOENEd2tGRkNzQklTSW1QUUUwTmpNaE1oWWRBUlFHQXlFaUpqMEJORFl6SVRJV0hRRVVCZ01oSWlZOUFUUTJNeUV5RmgwQkZBWURmdnpzREJFUkRBTVVEQkVSRFB6c0RCRVJEQU1VREJFUkRQenNEQkVSREFNVURCRVJBa1VSRERrTUVSRU1PUXdSL3VFU0N6b0tFUklMT2dvUi90NFJERGtNRVJFTU9Rd1JBQUlBQVArUUE4SURMUUFmQUVRQVNFQkZBQVFHQkc4QUJnVUdid2dCQlFBRmJ3SUpBZ0FIQUc4QUJ3RUhid0FCQXdNQlZBQUJBUU5ZQUFNQkEwd0NBRDgrTmpNdUxTb3BJaUVhRnhJUENnY0FId0lmQ2dVVUt5VWpJZ1lkQVJRR0l5RWlKajBCTkNZckFTSUdGUkVVRmpNaE1qWTFFVFFtQVNZaUJ3RUdGQjhCRmpJL0FUWXlGaFVSRkJZN0FUSTJOUkUwTmg4QkZqSS9BVFkwSndPbE9nc1NFUXo5aGd3UkVnczZDeEV0SHdNQ0lDMFMvbGNJR0FqKy9BZ0lLUWdZQ0d3RkVRd1FDem9MRkJZS2JBa1hDU2dJQ1A0U0M4QU1FUkVNd0FzU0VndisvQ0F0TGg4QkJBc1NBaVlJQ1A3OENCZ0lLQWtKYXdZTENQNW9DeElUQ2dHV0RRa0phd2tKS0FrWENBQURBQUQva0FQQ0F5d0FGQUFwQUQ4QVJFQkJBQVFEQlFNRUJXMEFCUUlEQlFKckJnRUFBQU1FQUFOZ0J3RUNBUUVDVkFjQkFnSUJXQUFCQWdGTUZoVUJBRG81TWk4Z0h4VXBGaWtMQ2dBVUFSUUlCUlFyQVNJSEJnY0dGQmNXRnhZeU56WTNOalFuSmljbUF5SW5KaWNtTkRjMk56WXlGeFlYRmhRSEJnY0dBeVk5QVRRbUt3RWlCaDBCRkI4QkZqSS9BVFkwSndIMGZXdHBQVDgvUFdscitteG9QajgvUG1oc2ZWMVJUaTh2THk5T1VicFJUaTh2THk5T1VSd0hFZ3M2Q3hJSWpna1hDU2dKQ1FNc1B6NW9iUHBzYUQ0L1B6NW9iUHBzYUQ0Ly9OZ3ZMMDVSdWxGT0x5OHZMMDVSdWxGT0x5OEJWZ2dOdVFzU0VndnBDUXlPQ1Frb0NSY0pBQUFEQUFELzhnUG9Bc3NBS0FCUEFIc0FMVUFxT2dZQ0JBQUJSd0lCQUFRQWJ3QUVBUVJ2QXdFQkJRRnZBQVVGWm5SeFhsMUtSemMxSHgwcEJnVVZLd0VtTlRRM05qY21KeVlqSWdjT0FSVVVGeFlWRkFjR0J3WUhCZ2NlQVRzQk1qWTNOamMyTno0QkpTWW5KalUwTnpZMU5DWW5KaU1pQndZSEZoY1dGUlFIQmhZWEZoY2VBVHNCTWpZMU5pY21CU1luSmpVME56NEJOVFFtSnlZaUJ3NEJGUlFXRnhZVkZBY0dCd1lIQmdjVUZqTWhNalkxSmljbUp5WUJNaWthR1N3UUd4MGtLUjhkSUNzY0NRMGhQU0FwQVFJbEhrQUhEZ1FWS1J3dURRWUNLaUVNQ2h3ckh4MGZLaVFkSEJFc0dSb3BCd2NNWkNRRURnZEFIaVVCSnlEKzFTUU9EQ0VYR1NJZ0kxb2pJQ0laRnlFTERpVklJQzhCTGlFQmtDRXVBUllUSlJrQk9EMU5RVGMwSWhzUEVSVVRSQ2hDSlI0WUVRd1JEaHNkSlNzaEtnZ0hKaDhXR0FZYU1ROFBEQkljR2lkQUtFUVRGUkVQR3lJME4wRk5QUXdaQmpCREJ3Z3FJU3NsSFhFUUVRNFNIUjhXT3lJc1NoVVhGeFZLTENJN0ZpTVpGQXdSRUI4WkpDOGpNaklqSUJvWEZnNEFBQUlBQVArM0E4SURCUUFYQUNjQVBFQTVBQUVEQVc4RkFRQUVBZ1FBQW0wQUFnSnVCZ0VEQkFRRFZBWUJBd01FV0FBRUF3Uk1HUmdDQUNFZUdDY1pKeElQQ2djQUZ3SVhCd1VVS3dFaElpWXZBUzRCS3dFaUJoVVJGQll6SVRJMk5SRTBKaWNoSWdZZkFSWXpJVElYRmpZMU5DWURkZjVMRkNRTFF3c2tGWU1nTEN3Z0F3SWdMUzBnL2pBRkJRTWVCZ3dCcHlJWkJnd3RBa1VWRVhRU0ZDMGcvVXdnTFMwZ0FmUWdMWm9KQlRRTERBTUlCeUF0QUFBRUFBRC95Z09iQXZJQUR3QWZBQzhBUHdCVFFGQUlBUUFBQVFJQUFXQUpBUUlBQXdZQ0EyQUxBUVlBQndRR0IyQUtBUVFGQlFSVUNnRUVCQVZZQUFVRUJVd3lNQ0lnRWhBQ0FEbzNNRDh5UHlvbklDOGlMeG9YRUI4U0h3b0hBQThDRHd3RkZDc0JJU0lHSFFFVUZqTWhNalk5QVRRbUJ5RWlCaDBCRkJZeklUSTJQUUUwSmdNaElnWWRBUlFXTXlFeU5qMEJOQ1luSVNJR0hRRVVGak1oTWpZOUFUUW1BMzc4N0F3UkVRd0RGQXdSRVF6OWhnd1JFUXdDZWd3UkVRejloZ3dSRVF3Q2Vnd1JFUXo4N0F3UkVRd0RGQXdSRVFMeUVnczZDeEVSQ3pvTEV1Y1JERGtNRVJFTU9Rd1Ivak1TQ3pvTEVoSUxPZ3NTNWhFTE9nd1JFUXc2Q3hFQUFBQUhBQUFBQUFNZ0Fvb0FEd0FmQUM4QVB3QlBBRjhBYndDT1FJdHRaUUlOREV4RVBEUXNKQjBWRFFVS0FBRmRWUUlMQ2dOSENBWUVEd0lGQVEwQURRRUFiUklKRVFjUUJRTU9DQUFLRFFBS2F4UUJEQUFOQVF3TllCTUJDZ3NMQ2xRVEFRb0tDMWdBQ3dvTFRHRmdVVkJBUURBd0lDQVJFQUVBYVdkZ2IyRnZXVmRRWDFGZlFFOUFUa2hHTUQ4d1BqZzJJQzhnTGlnbUdSY1FIeEVmQ1FjQUR3RVBGUVVVS3pjek1qWTFFVFFtS3dFaUJoVVJGQllCSXlJR0ZSRVVGanNCTWpZMUVUUW1BVEkyTlJFMEppc0JJZ1lWRVJRV093RXlOalVSTkNZckFTSUdGUkVVRmpNak1qWTFFVFFtS3dFaUJoVVJGQll6QlNFaUJoMEJGQll6SVRJMlBRRTBKZ01oSWdZZEFSUVdNeUV5TmowQk5DYmNNZ2dNREFneUNBd01Bamd5Q0F3TUNESUlEQXorL2dnTURBZzhDQXdNQ0xRSURBd0lGQWdNREFqd0NBd01DQlFJREF3SUFacjkwQWdNREFnQ01BZ01EQWo5MEFnTURBZ0NNQWdNREw0TUNBRTJDQXdNQ1A3S0NBd0JYZ3dJL3NvSURBd0lBVFlJRFA2aURBZ0JOZ2dNREFqK3lnZ01EQWdCTmdnTURBait5Z2dNREFnQk5nZ01EQWoreWdnTVBBd0lGQWdNREFnVUNBd0NDQXdJRkFnTURBZ1VDQXdBQUFBQUF3QUFBQUFESVFKM0FCd0FMQUJXQUZWQVVqRUJCQVlsSFFJQ0F3SkhBQVVIQmdjRkJtMEFCZ1FIQmdSckNBRUFBQWNGQUFkZ0FBUUFBd0lFQTJBQUFnRUJBbFFBQWdJQldBQUJBZ0ZNQVFCUlQwbEdRVUExTXlrbklSOFVFZ0FjQVJ3SkJSUXJBU0lIQmdjR0ZSUVhGZzhCQmhZL0FUWVhGak15TnpZM05qUW1KeVlERkFZckFTSW1QUUUwTmpzQk1oWVZOdzRCSFFFVUJpc0JJaVk5QVRRK0FUYzJMZ0lIQmdjT0FTc0JJaVkzTmpjK0FSY2VBaGNXQmdIMFVrWkRLQ2ttQlFNY0JCSU1XQWtJU0ZaU1JrTW9LVkpEUmpRTUNCUUlEQXdJRkFnTUNBTUZEQWdVQ0F3YktnY1FCU0l1RkEwREFnb0hGUWtNQVFnYUVTMFpIelVnQVFJdEFuWW1KVUJCVEVoQkNBaFpEQkVFSHdNRktpWWxRRUdZZ1NVbS9qNElEQXdJRkFnTURBaHJBUVVFRUFnTkRRZ1FGaVVQQ3hVdUh3RVNEUThIQ1E4Skpoa1JFZ0VCSURVZkowQUFBLy8rLzdjRDZ3TUpBQTRBRndBbkFEaEFOU0FCQXdRQlJ3QUVBd1J2QUFNQUFnRURBbUFGQVFFQUFBRlVCUUVCQVFCWUFBQUJBRXdRRHlRaUhSb1VFdzhYRUJjNUJnVVZLeVVCTGdFR0J3RUdIZ0V6SVRJK0FTVWlKalEyTWhZVUJqY1VCaXNCSWlZOUFUUTJPd0V5RmhVRDNmNUhDeVVsQy81SURRWWdGd053R0NFRy9na1pJU0V5SVNFaEN3aE5DUXNMQ1UwSUN5RUN4eE1PRGhQOU9SWXlJaUl5UmlFeUlDRXdJcTBKQ2dvSitnZ0xDd2dBQUFJQUFQK1FBOElETFFBZEFDb0FKRUFoQkFFQ0F3SnZBQU1CQTI4QUFRQUJid0FBQUdZZkhpVWtIaW9mS2lzekJRVVdLeVVWRkFZaklTSW1QUUUwTnpZL0FUWVhGak15TmpjMkh3RVdGeFlYRmdFeUhnRVVEZ0VpTGdFMFBnRUR3amNtL1I0bE4xQTVkQXdRRFV4WksxVW1EUThNVFM1QUlDZitNajVxUFQxcWZHbzlQV29YS2lVNE55WXFTMEF0TXdZRkJ6SWFHQWNGQmlFYkpDY3ZBdUJFZFlwMVJFUjFpblZFQUFBQkFBRC83QUxiQXN3QURBQUt0d0FBQUdZVEFRVVZLeVVSTkQ0QkZ3RVdGQWNCQmlZQkRRNFVDUUdYREF6K2FRNGRDZ0tvQ2c0QkIvNnpDQjhKL3E4S0RnQUFBQUlBQVArUUE4SURNQUFqQUM4QU8wQTRBQUVBQVc4Q0JnSUFBQU1FQUFOZ0J3RUVCUVVFVkFjQkJBUUZXQUFGQkFWTUppUUNBQ3NxSkM4bUx4NGJGaE1NQ2dBakFpTUlCUlFySlNNaUpqMEJOQ2NtSnlZSEJnY09BUjBCRkFZckFTSUdIUUVVRmpNaE1qWTlBVFFtQlNNaUJoY2VBVEkyTnpZbUEzVUtHeWdzTEVsTFYxRkZRazBuSEFvZkxSRUxBMklMRWkzK3Zid0pEQUlIUUZSQUNBRU0xeWdjM1ZaSlJ5Z3BBd1F0SzQ5VDFSd21MaUFkQ3hBUkRCMGZMZE1QQ0NnMU5pY0pEZ0FBQVFBQS81QUR4QU1zQUNJQUxFQXBBQVVBQlc4RUJnSUFBZ0J2QUFJQkFtOERBUUVCWmdFQUhSd1ZGQkFPQ3dvSEJBQWlBU0lIQlJRckFTTVJGQVlyQVNJbU5SRWpFUlFHS3dFaUpqVVJJeUltSnlZM0FUWXlGd0VXQndZRHJtQUtDY0FKQytZTENjQUlDMkFHQ3dFRUNBRzdCUklFQWJvSUJBTUJTLzVaQ1FzTENRRkgvcmtKQ3dzSkFhY0dCUXdLQWJvR0J2NUdDQTRMQUFBQUJBQUEvNUFEd2dNc0FCVUFMQUJEQUZvQWswQVFVa2tPQlFRQUFUc3lKQnNFQXdJQ1IwdXdDVkJZUUJrR0FRRUFBVzhIQ0FJQUFnQnZCUWtDQWdNQ2J3UUJBd05tRzB1d0NsQllRQjBBQmdFR2J3QUJBQUZ2QndnQ0FBSUFid1VKQWdJREFtOEVBUU1EWmh0QUdRWUJBUUFCYndjSUFnQUNBRzhGQ1FJQ0F3SnZCQUVEQTJaWldVQWJHQllDQUZsV1RFdENQelUwSWlFV0xCZ3NEQXNBRlFJVkNnVVVLd0VoTWpZdkFUYzJOQzhCSmdZUEFTY21CaFVSRkJZSElTSUdId0VIQmhRZkFSWXlQd0VYSGdFMk5SRTBKaGNSRkJZL0FSY1dNajhCTmlZdkFUYytBU1lqSVNJR0p4RTBKZzhCSnlZaUR3RUdGQjhCQnc0QkZqTWhNallDT1FFb0R3WUxYcTBJQ0VjSUZBbXRZZ3NaRklEKzJBOEdDMTZ0QndkSENCUUpyMklHRVF3Vlloa0xZSzhJRmdkSEJnRUhyVjRJQWdvSi90Y0tFazBhQzJDdkJ4WUlSd2NIcjE0SUJBb0tBU1lLRndHRkdRdGdyd2dXQjBjR0FRZXRYZ3dIRHY3WENoSk5HZ3RncndjV0NFY0hCNjllQ0FRS0NnRW1DaGNmL3RnUEJndGVyUWNIUndnVUNhMWlCeElNRllBQktBOEdDMTZ0Q0FoSEJ4VUpyMklHRUF3VUFBTUFBUCtrQThBREdnQXJBRGdBWEFDU1FBbzVBUVFIUGdFRkJBSkhTN0FSVUZoQUxnQUFBZ0J2Q1FFSENBUUlCMlVHQVFRRkJRUmpDZ0VDQUFnSEFnaGdBQVVCQVFWVUFBVUZBVmtEQVFFRkFVMGJRREFBQUFJQWJ3a0JCd2dFQ0FjRWJRWUJCQVVJQkFWckNnRUNBQWdIQWdoZ0FBVUJBUVZVQUFVRkFWa0RBUUVGQVUxWlFCb3RMRnBZVlZKUFRVaEdRMEE5T3pNeUxEZ3RPQ2NrSFFzRkZTc2xORFkzTmpjMk56WTNQZ0V1QVE0QkJ3WVhGaGNXRnhZSEJnY0dEd0VHQndZSEJoNEJNeUV5TmljdUFRRWlEZ0VVSGdFeVBnRTBMZ0VYRkFZckFSVVVCaXNCSWlZOUFTTWlKajBCTkRZN0FUVTBOanNCTWhZZEFUTXlGaFVCcFJnVURSRUtGQnNNSkEwdFpvQmhGQmdORFRJWkRBNEtDQmtQSUExS0p6a0xCeGs2SmdGSEN3c0hKQ2NCTkQ1clBqNXJmR3MrUG1zM0RBazREQWttQ1FrN0NRa0pDVHNKQ1NZSkREZ0pESXNtVkNNWEZBMFZIUkUxaTNWQ0EwZzdSRVJKTHhnYUlCd1dFZ29QQmlFZUxUc2tSU3NXQ0Nwb0FSMCthbnhxUHo1cmZHbysrZ2dMT2dnTENnazZDZ2tuQ1FvNkNRb0xDRG9MQ0FBSkFBRC90d09iQXdVQUR3QWZBQzhBUHdCUEFGOEFid0IvQUk4QWlFQ0ZHQXdWQmhJRkFBMEhBZ0VFQUFGZ0doQVhDaFFGQkJFTEFnVUNCQVZnR1E0V0NCTUZBZ01EQWxRWkRoWUlFd1VDQWdOWUR3a0NBd0lEVElLQWNuQmlZRkpRUWtBeU1DSWdFaEFDQUlxSGdJK0NqM3AzY0g5eWYycG5ZRzlpYjFwWFVGOVNYMHBIUUU5Q1R6bzNNRDh5UHlvbklDOGlMeG9YRUI4U0h3b0hBQThDRHhzRkZDc1RJeUlHSFFFVUZqc0JNalk5QVRRbUF5TWlCaDBCRkJZN0FUSTJQUUUwSmdNaklnWWRBUlFXT3dFeU5qMEJOQ1lCSXlJR0hRRVVGanNCTWpZOUFUUW1BeU1pQmgwQkZCWTdBVEkyUFFFMEpnTWpJZ1lkQVJRV093RXlOajBCTkNZQkl5SUdIUUVVRmpzQk1qWTlBVFFtQXlNaUJoMEJGQlk3QVRJMlBRRTBKZ01qSWdZZEFSUVdPd0V5TmowQk5DYjZjeGtoSVJsekdTRWhHWE1aSVNFWmN4a2hJUmx6R1NFaEdYTVpJU0VCRzNRWUlTRVlkQmdoSVJoMEdDRWhHSFFZSVNFWWRCZ2hJUmgwR0NFaEFSdHpHU0VoR1hNWklTRVpjeGtoSVJsekdTRWhHWE1aSVNFWmN4a2hJUU1GSVJsekdTRWhHWE1aSWYyWklSbHpHU0VoR1hNWklRRXpJUmgwR0NFaEdIUVlJUUUwSVJsekdTRWhHWE1aSWYyWklSbHpHU0VoR1hNWklRRXpJUmgwR0NFaEdIUVlJUUUwSVJsekdTRWhHWE1aSWYyWklSbHpHU0VoR1hNWklRRXpJUmgwR0NFaEdIUVlJUUFBQUFVQUFQK1FBNXNETEFBUkFDRUFNUUJCQUZFQVlFQmRPaklDQWdnQlJ3QUNDQWNJQWdkdEN3RUFBQUVEQUFGZ0FBTUFCZ1VEQm1BQUJRQUtDUVVLWUFBSkFBZ0NDUWhnQUFjRUJBZFVBQWNIQkZnQUJBY0VUQUlBVDB4SFJEODhOelF2TENja0h4d1hGQXdLQndVQUVRSVJEQVVVS3dFaElnWWRBU0V5RmhVUk16STJOUkUwSmdNMEppTWhJZ1lWRVJRV015RXlOalVCRkFZckFTSW1QUUUwTmpzQk1oWVZFeFFHSXlFaUpqMEJORFl6SVRJV0ZUY1VCaU1oSWlZOUFUUTJNeUV5RmhVRFR2NE1IeTRCemlBdEppQXRMWk10SVA0TUlDMHVId0gwSUMzK3Bnc0ptUWtMQ3dtWkNRdWFDd24relFrTEN3a0JNd2tMVEFvSi9vQUpDd3NKQVlBSkNnTXNMU0FuTFNEOTVpMGdBa0VnTGY3eUlDMHRJUDIvSHk0dUh3RzdDUW9LQ1NZSkNnb0ovcVlJQ3dzSUp3Z0xDd2h6Q1FvS0NTWUpDd3NKQUFNQUFQL2RBOElDM3dBUEFDTUFMQUJMUUVnQUF3WUZCZ01GYlFnQkJRUUdCUVJyQUFRQ0JnUUNhd0FBQUFZREFBWmdCd0VDQVFFQ1ZBY0JBZ0lCV0FBQkFnRk1KU1FTRUNrb0pDd2xMQjhlRnhZUUl4SWpOVElKQlJZckFUUW1JeUVpQmhVUkZCWXpJVEkyTlNjaElpWTNFell5SHdFZUFUOEJOaklmQVJZR0F5SW1ORFl5RmhRR0E4SXRJUHorSHkwdEh3TUNJQzNJL2RJUkVRbXBCaFVHWmdVV0JWTUdGUWFZQ0ExQ0lDMHRRQzB0QXBJZ0xTMGcvWmdnTFM0ZlRSNFBBU1lLQ3E4SkFnbDNDUW55RGhrQldpMUFMUzFBTFFBQUFBQURBQUQva0FQQ0F5d0FBZ0F5QUZjQVhrQmJFQUVCQWdGSEFBWURDQU1HQ0cwQUNBY0RDQWRyQ2dFSEFnTUhBbXNBQ1FFSmNBc0JBQUFEQmdBRFlBUUJBZ0VCQWxRRUFRSUNBVmdGQVFFQ0FVd0ZBMWRXVGt0R1JVSkJPamt0S2lVaUhSb1ZFZzBLQXpJRk1nd0ZGQ3MzTlJVQklTSUdGUkVVRmpzQk1qWTlBVFFtS3dFaUpqVVJORFl6SVRJV0ZSRVVCaXNCSWdZZEFSUVdPd0V5TmpVUk5DWUROelkwTHdFbUlnOEJCaFFmQVJZeVB3RTJNaFlWRVJRV093RXlOalVSTkRZZkFSWXltZ0xiL1A0ZkxTMGY1d2tLQ2dtakRCRVJEQUo2REJFUkRLTUpDZ29KNXlBdExjUXBDQWp6Q0JnSThBa0pLQWdZQ0ZrRkVRd1FDem9MRkJZS1dRZ2FzUXdZQW9jdElQMUxJQzBMQ1UwSUN4RU1BZUFNRVJFTS9pQU1FUXNJVFFrTExoOEN0U0F0L1kwb0NSY0k4d2dJOFFnWENTZ0pDVmdHQ3dqK3B3c1NFZ3NCV1EwSkNWb0hBQUFEQUFEL2tnT2xBeW9BREFCYUFHY0FkRUJ4S2gwQ0NRSU9BUUVBVVVRQ0J3Z0RSd1FCQWdNSkF3SUpiUW9CQUFrQkNRQUJiUUFCQ0FrQkNHc0FCd2dGQ0FjRmJRQUZCZ2dGQm1zQUF3QUpBQU1KWUFzQkNBY0dDRlFMQVFnSUJsZ0FCZ2dHVEZ4YkFRQmlZVnRuWEdkVlUweEpRa0F2TFNVaUdSZ0hCZ0FNQVF3TUJSUXJBU0lPQVJRZUFUSStBVFF1QVFFbk5qUW5OejRCTHdFdUFTTWlEd0ltTHdFdUFTc0JJZ1lQQVFZSEx3RW1JeUlHRHdFR0ZoOEJCaFFYQnc0Qkh3RWVBVE15UHdFV0h3RWVBVHNCTWpZL0FUWTNGeFl6TWpZL0FUWW1CU0l1QVRRK0FUSWVBUlFPQVFIMkpUNGtKRDVLUGlRa1BnRnZSd1VGUnhJSkRCOElIaEVIQ3dOWk1qOFFCQ01ZUGhnakJCQTZPVmdFQ3djUkhnZ2ZEQWdUUndVRlJ4SUpEQjhJSGhFTkNWZ3lQeEFGSWhnK0Z5UUVFRVF6VXc0SkVSNElIUTBJL2xvNllUazVZWFJoT1RsaEFlTWtQa285SkNROVNqNGsvd0E4R2s0YVBBOHVGRFlPRUFJQklTMFVXeFlhR2haWkVpOGdBUU1RRGpZVUx3NDhJendqUEE4dUZEWU9FQU1oTFJSZEZ4MGZGMTBYTUNFRUVRNHlEeTFMT1dCMFlUazVZWFJnT1FBQUFBTUFBUCtQQThJRExBQWpBRVFBVVFCb1FHVWxBUWtFUFFFSENRSkhBQUVLQUFvQkFHMEFCQU1KQXdRSmJRQUlCd2h3QUFZQUNnRUdDbUFDQ3dJQUJRRURCQUFEWUF3QkNRY0hDVlFNQVFrSkIxZ0FCd2tIVEVaRkFRQk1TMFZSUmxGQVB6bzRMeTRlSEJnV0V4RUxDZ2NFQUNNQkl3MEZGQ3NCSXpVMEppc0JJZ1lkQVNNaUJoMEJGQlk3QVJVVUZqc0JNalk5QVRNeU5qMEJOQ1lCSnpZM05qVTBKeVluSmlJSEJnY0dGQmNXRnhZek1qYzJOeGNXTWo4QlBnRWxJaTRCTkQ0Qk1oNEJGQTRCQWxSekN3aE5DUXR6Q0FzTENITUxDVTBJQzNNSkNnb0JYZDBrRXhRMU0xZGEwRnBYTXpRMU0xZFphRDQ4T0RIZENSY0pLQWtCL2VWSmUwbEplNUo3U1VsN0FlVnpDUW9LQ1hNTENVd0pDM01KQ2dvSmN3c0pUQWtML2dqYk1qZzdQbWhhVnpNMU5UTlhXdEJhVnpNMUZCTWszUWdJS0FrWnZFbDdrbnRKU1h1U2Uwa0FBQWdBQUFBQUF3d0NpZ0FQQUM4QVB3QlBBRjhBYndCL0FJOEFrRUNOSFEwQ0FBS0lnRmhRQkFvTGVIQklRQVFJQ1doZ09EQUVCZ2NFUndRVEFnSUJBQUVDQUcwQUFSSUJBQU1CQUdBQUF4RUJDd29EQzJBUUFRb1BBUWtJQ2dsZ0RnRUlEUUVIQmdnSFlBd0JCZ1VGQmxRTUFRWUdCVmdBQlFZRlRCRVFBUUNNaW9TQ2ZIcDBjbXhxWkdKY1dsUlNURXBFUWp3Nk5ESXFKeUlmR2hjUUx4RXZDZ2NBRHdFUEZBVVVLd0V6TWpZOUFUUW1Ld0VpQmgwQkZCWWxJeUlHSFFFVUJpc0JJaVk5QVRRbUt3RWlCaFVSRkJZeklUSTJOUkUwSmdFVUJpc0JJaVk5QVRRMk93RXlGaFUxRkFZckFTSW1QUUUwTmpzQk1oWVZOUlFHS3dFaUpqMEJORFk3QVRJV0ZRVVVCaXNCSWlZOUFUUTJPd0V5RmhVMUZBWXJBU0ltUFFFME5qc0JNaFlWTlJRR0t3RWlKajBCTkRZN0FUSVdGUUdHM0FnTUl4bU1HU01NQVZJVUJBWXZJZHdoTHdVRkZCa2pJeGtCdUJrakkvNmREQWdVQ0F3TUNCUUlEQXdJRkFnTURBZ1VDQXdNQ0JRSURBd0lGQWdNQVJnTUNNZ0lEQXdJeUFnTURBaklDQXdNQ01nSURBd0l5QWdNREFqSUNBd0NFZ3dJS0Jrakl4a29DQXhHQlFVb0lTOHZJU2dGQlNNWi9sSVpJeU1aQWE0WkkvNVNDQXdNQ0JRSURBd0lVQWdNREFnVUNBd01DRkFJREF3SUZBZ01EQWpjQ0F3TUNCUUlEQXdJVUFnTURBZ1VDQXdNQ0ZBSURBd0lGQWdNREFnQUFBQUFBUUFBLzZNRFBRTVlBQ1VBSVVBZUFBTUJBMjhGQVFFQ0FXOEVBUUlBQW04QUFBQm1FeFUxRXhjVkJnVWFLemNHRkJjQkZqSTNBVFkwTHdFbUlnOEJCaUltTlJFMEppc0JJZ1lWRVJRR0lpOEJKaUlIdVF3TUFTQU1Id3NCSWd3TU5Rd2ZDMXNIRkE4WEQwMFFGdzhVQjFzTEh3ditDeDRML3VVTEN3RWJDeDRMTkFzTFdRY09Dd0lIRHhjWUR2MzVDdzRIV1FzTEFBQUVBQUQvbkFPbEF5MEFNUUE2QUVNQVZ3QTVRRFlrSHc4REFnQUJSd0FGQUFWdkFBQUNBRzhFQVFJQkFtOEhBd1lEQVFGbVBEc3pNa1pGUUQ4N1F6eEROell5T2pNNklpRUlCUlFySlNZSEFTNEJEd0VPQVJjVEZoUVBBU1lIRGdFSEJoWVhGamMrQVRjMkppYzNOaklmQVE0QkZ4NEJGeFkzUGdFbkxnRUZJaVkwTmpJV0ZBWWhJaVkwTmpJV0RnRURGakkvQVRZbUp6Y0hKaThCSmdZUEFRWVVGd01QTFM3K1Z3UVJCZzhaQnhQTEJnWnRLakUxVEFjSE5UQXpPVE5PQ3djTUVsRUlIZ2hSRWd3SENrNDBPVE13TlFjTlR2MjJHU0VoTWlFaEFkc1pJU0V5SVFFaXFRWVRCcG9RQWhBQ0FnSU9EUVlRQmFrR0J2WUxFUUkwQmdNRkRCTStHdjd5QnhRSGtSQUtDMUExT0dBWUdnb0lTVE1qUVJsc0N3dHNIRUFoTTBrSUNob1lZRGczVDljaE1pRWhNaUVoTWlFaE1pRUIwZ2NIeWhVMEZRSUNCQXNLQkFJRzRRY1VDQUFGQUFEL2tBUENBeXdBSXdBNkFFb0FXZ0JxQUh0QWVBQUdEUXdOQmd4dEFBRU1DUXdCQ1cwQUNRZ01DUWhyQUFRREJIQUFCd0FMQ2djTFlBQUtBQThPQ2c5Z0FBNEFEUVlPRFdBQURBQUlBQXdJWUFJUUFnQURBd0JVQWhBQ0FBQURXQVVCQXdBRFRBRUFhR1ZmWFZoVlQwMUhSVDg5T2pnMU15NHJLQ1llSEJrV0V4RU1DZ2NFQUNNQkl4RUZGQ3NsSXpVMEppc0JJZ1lkQVNNaUJoMEJGQlk3QVJVVUZqc0JNalk5QVRNeU5qMEJOQ1lsTkRZN0FSRTBKaU1oSWdZVkVSUVdNeUUxTkRZN0FRRVVCaXNCSWlZOUFUUTJPd0V5RmhVVEZBWWpJU0ltUFFFME5qTWhNaFlWTnhRR0l5RWlKajBCTkRZeklUSVdGUU9sVnhFTU9Rd1JWd3NTRWd0WEVRdzVEQkZYQ3hJUy90NFJEREF0SVAzbEh5MHRId0dvRVF0WC9xWUxDSFFJQ3dzSWRBZ0w1d3NKL3FZSUN3c0lBVm9KQzB3S0NmNVpDQXNMQ0FHbkNRcDNWd3NTRWd0WEVRdzVEQkZYQ3hJU0MxY1JERGtNRWFRTEVnR25JQzB0SVAzbElDMHdEQkVCdXdrTEN3a21DUW9LQ2Y2bUNRb0tDU1lKQ3dzSmRBa0xDd2ttQ1FvS0NRQUFBQUlBQVArM0E4Z0RCUUFWQUNZQVlVdXdDbEJZUUNNQUFRQUFBV01GQVFNQ0JBSURCRzBBQkFSdUFBQUNBZ0JVQUFBQUFsY0FBZ0FDU3h0QUlnQUJBQUZ2QlFFREFnUUNBd1J0QUFRRWJnQUFBZ0lBVkFBQUFBSlhBQUlBQWt0WlFBNFlGaUVlRmlZWUpoTTVNZ1lGRnlzQk5DWWpJU0luSmk4REppY21Ld0VpQmgwQklSY2hJZzRCRnhNZUFUTWhNalkzRXpZbUEwNHRJUDdtRUJFTkRBb3dDQW9NRVJSSklDMEN0RGo4M0JNZURRUnVCaUFVQWtvVklRUnVCU1VDTWlBdENnY0xDam9LQ3djS0xTQ3RUUlVpRXY1c0V4Y1hFd0dVSEMwQUFBQUFCUUFBLzdjRHdnTUZBQThBSHdBdkFEOEFUd0JlUUZzTEFnb0RBQUFEQkFBRFlBd0JCQUFGQmdRRllBMEJCZ0FIQ0FZSFlBNEJDQUVCQ0ZRT0FRZ0lBVmdKQVFFSUFVeENRREl3SWlBU0VBSUFTa2RBVDBKUE9qY3dQekkvS2ljZ0x5SXZHaGNRSHhJZkNnY0FEd0lQRHdVVUt3RWhJZ1lWRVJRV015RXlOalVSTkNZaEl5SUdIUUVVRmpzQk1qWTlBVFFtQnlNaUJoMEJGQlk3QVRJMlBRRTBKZ2NqSWdZZEFSUVdPd0V5TmowQk5DWUhJeUlHSFFFVUZqc0JNalk5QVRRbUE2WDkrUXdSRVF3Q0J3c1NFdjFuMUFzUkVRdlVDeElTQzlRTEVSRUwxQXNTRWd2VUN4RVJDOVFMRWhJTDFBc1JFUXZVQ3hJU0F3VVJEUHpzREJFUkRBTVVEQkVSREdBTEVoSUxZQXdSNXhFTFlRc1JFUXRoQ3hIbUVndGdEQkVSREdBTEV1Y1NDMkFNRVJFTVlBc1NBQUFFQUFEL2p3UENBeXdBQ1FBVEFEUUFRUUJJUUVVVkFRY0FMUUVGQndKSEFBWUZCbkFBQkFBSUFRUUlZQUlCQVFNQkFBY0JBR0FKQVFjRkJRZFVDUUVIQndWWUFBVUhCVXcyTlR3N05VRTJRUlVwR3lZUkpTQUtCUnNyQVRNeU5qMEJOQ1lyQVRFaklnWWRBUlFXT3dFQkp6WTNOalUwSnlZbkppSUhCZ2NHRkJjV0Z4WXpNamMyTnhjV01qOEJQZ0VsSWk0Qk5ENEJNaDRCRkE0QkFXM25DUW9LQ2VkekNBc0xDSE1DVGQwa0V4UTFNMWRhMEZwWE16UTFNMWRaYUQ0OE9ESGRDUmNKS0FrQi9lVkplMGxKZTVKN1NVbDdBWEVMQ1V3SkN3c0pUQWtML25yZE1qZzdQbWhhVnpNMU5UTlhXdEJhVnpNMUZCTWszUWdJS0FrWnZFbDdrbnRKU1h1U2Uwa0FCQUFBQUFBRERRSjRBQklBSWdBeUFEc0FXa0JYRHdFREFVWUFCUWNHQndVR2JRa0JCZ01IQmdOckFBTUVCd01FYXdBRUFnY0VBbXNJQVFBQUJ3VUFCMkFBQWdFQkFsUUFBZ0lCV0FBQkFnRk1ORE1DQURnM016czBPeTR0SmlVZUhSWVZDZ2tBRWdJU0NnVVVLd0VqSmdjQkJoUWZBUll5TndFK0FTYzFOQ1lEQndZaUx3RW1ORDhCTmpJZkFSWVVOd2NHSWk4QkpqUS9BVFl5SHdFV0ZEY2lKalEyTWhZVUJnTFEyeE1SL3ZRUkVkUVJNaElCRHdnSUFTUHhEZ1lRQm9nR0JnNEdFQWFJQmtvT0JoQUdpQVlHRGdZUUJvZ0dNaFVkSFNvZEhRSjJBUkgrOHhFeUV0UVJFUUVRQ0JZSzBoa2ova2dPQmdhSUJoQUdEZ1lHaUFZUVNnNEdCb2dHRUFZT0JnYUlCaENrSFNvZEhTb2RBQWdBQUFBQUF5QUNpZ0FXQUNZQU5nQkdBRllBWmdCMkFJWUFsRUNSQlFFQkFEODNMeWNFQlFaZlYwOUhCQWtLRFFFQ0RuZG5BZzBDQlVkL2J3SUNBVVlBQWc0TkRnSU5iUkVCQUFBQkF3QUJZQklCQXdnQkJnVURCbUFIQVFVTUFRb0pCUXBnQ3dFSkVBRU9BZ2tPWUE4QkRRUUVEVlFQQVEwTkJGZ0FCQTBFVEJnWEFnQ0RnWHQ1YzNGcmFXTmhXMWxUVVV0SlEwRTdPVE14S3lrZ0hSY21HQ1VSRHdvSEFCWUNGaE1GRkNzQklTSUdIUUVVRmpNaE1oWVZFUlFXTXpJMk5SRTBKZ1VpQmhVUkZCWXpJVEkyTlJFMEppTUhGQVlyQVNJbVBRRTBOanNCTWhZVkZ4UUdLd0VpSmowQk5EWTdBVElXRlFjVUJpc0JJaVk5QVRRMk93RXlGaFVYRkFZckFTSW1QUUUwTmpzQk1oWVZCeFFHS3dFaUpqMEJORFk3QVRJV0ZSY1VCaXNCSWlZOUFUUTJPd0V5RmhVQzVQN0FHU01HQkFFaUdTTUdCQjBwSS80YkdTTWpHUUZBR1NNakdmQU1DQlFJREF3SUZBZ00zQXdJakFnTURBaU1DQXpjREFnVUNBd01DQlFJRE53TUNJd0lEQXdJakFnTTNBd0lGQWdNREFnVUNBemNEQWlNQ0F3TUNJd0lEQUtLSXhrS0JBWWpHZjdLQkFZcEhRRktHU09NSXhuK3JCa2pJeGtCVkJrampBZ01EQWdVQ0F3TUNCUUlEQXdJRkFnTURBaDRDQXdNQ0JRSURBd0lGQWdNREFnVUNBd01DSGdJREF3SUZBZ01EQWdVQ0F3TUNCUUlEQXdJQUFBQUJ3QUEvMm9EYXdOU0FBMEFFUUFWQUJrQUhRQXVBRGNBZEVCeEp3d0NDd0FCUnk4QkFFVU1EZ0lMQUFvQUN3cHRBQW9DQUFvQ2F3QUNBd0FDQTJzQUF3QUVCUU1FWGdBRkFBWUhCUVplQUFjQUNBa0hDRjROQVFBQURFZ0FDUWtCV0FBQkFRMEJTUjRlQVFBM05SNHVIaTBnSHgwY0d4b1pHQmNXRlJRVEVoRVFEdzRKQmdBTkFRMFBCUlFyRXlJR0ZSRVVGak1oTWpZMUVRa0JJUlVoRlNFVklSVWhGU0VWTXhVakFSVWpKeVluSmljbU54Y1dGeFlYRmpNREZSUVhGaGNXT3dGUUlTOHZJUUxMSVMvKzJmNWFBVkgrcndGUi9xOEJVZjZ2d01BQ3pjZ1FFaEFWREE4QkFnTUlDaElXSDF3SENoTVhKTWdEVWk4aC9MZ2hMeThoQWxzQlBmMjRJU29oS2lFcUlRSUxEd1FIQ2cwU0Z4ME9FUTBVQ3c0QlArUVJFaGdPRWdBR0FBRC8zUVBDQXQ4QUR3QWZBQzhBUHdCUEFGOEFhVUJtRFFJTUF3QUFBd1VBQTJBQUJRNEVBZ0VHQlFGZ0VBZ1BBd1lBQ1FvR0NXQVJBUW9IQndwVUVRRUtDZ2RZQ3dFSENnZE1VbEJDUURJd0lpQVNFQUlBV2xkUVgxSmZTa2RBVDBKUE9qY3dQekkvS2ljZ0x5SXZHaGNRSHhJZkNnY0FEd0lQRWdVVUt3RWpJZ1lkQVJRV093RXlOajBCTkNZcEFTSUdIUUVVRmpNaE1qWTlBVFFtQVNFeU5qMEJOQ1lqSVNJR0hRRVVGZ2NqSWdZZEFSUVdPd0V5TmowQk5DWXBBU0lHSFFFVUZqTWhNalk5QVRRbUJ5RWlCaDBCRkJZeklUSTJQUUUwSmdFWDFBc1JFUXZVQ3hJU0FvUDkrUXdSRVF3Q0J3c1NFdjN1QVVZTUVSRU0vcm9NRVJGNzFBc1JFUXZVQ3hJU0FvUDkrUXdSRVF3Q0J3c1NFc3ordWd3UkVRd0JSZ3dSRVFMZkVndjZEQkVSRFBvTEVoSUxPZ3NTRWdzNkN4TCt6QkVNT2dzUkVRczZEQkdhRVF6NkN4SVNDL29NRVJFTU9Rd1JFUXc1REJIQUVnczZDeElTQ3pvTEVnQUFBZ0FBLzVBRGRRTXNBQmNBSlFBcFFDWURBUUVFQVc4QUJBQUVid1VCQUFJQWJ3QUNBbVlDQUNJZ0d4b1NEd29IQUJjQ0Z3WUZGQ3NCSXlJbVBRRTBKaU1oSWdZVkVSUVdNeUV5TmpVUk5DWTNKeVlpQmgwQkZCWTdBVEkyTkFOVzF5WXJFZzMrd1NVNE9DVUNTQ1kzRWd6TUJoUU9KeHFrQ0EwQjVTc2wyQTBTTnliOUhpVTRPQ1VCMlEwU2Rjd0dEUW1qR2ljT0ZBQUJBQUQva0FQQ0F5d0FLd0FkUUJvakFRSUFBVWNBQVFBQmJ3QUFBZ0J2QUFJQ1poMHFGUU1GRnlzQkxnRVBBUVlpTHdFbU5EOEJOaVluSmlNaUJnY0dGeFlYQVE0QkZoY2VBVEkyTndFV0Z4WTNQZ0UxTkFPMkF4QUluQWdaQ1c0SUNKNEdCQWdvS2xHR0lpUUtCd3orbUJVT0RoVVFLU2dwRUFGbUd5NVNTRVpVQW1jSkF3YWNDQWh1Q1JrSW5BWVFCUXhVUmtoU0xCMyttaFU0TnhRUUVSRVFBV1lNQndva0lvWlJLd0FBQUFFQUFQK2tBeWdER1FBbEFDRkFIZ0FBQWdCdkJBRUNBUUp2QlFFQkF3RnZBQU1EWmhNVk5STVhGUVlGR2lzQk5qUW5BU1lpQndFR0ZCOEJGakkvQVRZeUZoVVJGQlk3QVRJMk5SRTBOaklmQVJZeU53TWNEQXorNEF3ZkMvN2ZDd3MyREI4TFd3Y1VEeGNQVFE4WUR4UUhXZ3dmQ3dHK0RCMExBUnNMQy83bEN4ME1OQXNMV1FjT0MvMzVEeGNaRFFJSEN3NEhXUXNMQUFBQUFBRUFBUCtIQThzRE13QkhBQkZBRGdBQkFBRnZBQUFBWmhNUkFnVVdLeVVXTmo4QlBnRVdGQThCRGdFbUx3RXVBVFkzQVQ0QkZoOEJIZ0VHRHdFT0FSY1dGeDRCTmo4QlBnRW1KeU11QVFZSEFRNEJGaDhCSGdFMlB3RStBUzRDQmc4QkJoUVhBVk1JRnduQUN4OFlET3dhUlVZYUFob1JFUm9Cb2hsR1JSb0NHaElTR2dJSUFnWVNDUU1WRWdzSk1DSWlNQVF3Z29Jdy9sOHdJaUl3QXpHQWdURHZIaFFYUFZKUUhiMElDSkFJQVFmQkNnRVhJZ3pwR2hFUkdnSWFSa1VhQWFFYUVoSWFBaHBGUmhrQ0NCSUpIeVFNQmhFTUNqQ0NnakF3SWlJdy9tQXdnb0V4QkRBaUlqRHRIbEpST3hNWEg3d0pHUWdBQXdBQS81QURtd01zQUI4QUx3QkNBSnUxTndFSkNnRkhTN0FOVUZoQU13TUJBUUFBQVdNQUNRb0lDZ2tJYlFRQ0N3TUFBQVVHQUFWaERBRUdBQW9KQmdwZ0FBZ0hCd2hVQUFnSUIxZ0FCd2dIVEJ0QU1nTUJBUUFCYndBSkNnZ0tDUWh0QkFJTEF3QUFCUVlBQldFTUFRWUFDZ2tHQ21BQUNBY0hDRlFBQ0FnSFdBQUhDQWRNV1VBaElpQUJBRUEvT2prME15b25JQzhpTHhvWEVoQU5EQWtJQlFRQUh3RWZEUVVVS3dFak5UUW1JZ1lkQVNFMU5DWWlCaDBCSXlJR0hRRVVGak1oTWpZOUFUUW1GeUVpQmhVUkZCWXpJVEkyTlJFMEpnRVZGQVlpSmowQkJ3WWlKalEvQVRZeUZoVURUbUFpTHlMKzhpRXdJbUFnTFJFTUF4UU1FUzBRL093TUVTNGZBclFnTFJIK3BCZ2VGeDBJRnhFS1N3c2lHQUxMSnhnaUloZ25KeGdpSWhnbkxSOHhDeEVSQ3pFZ0xQb1JDLzRvSHk0dElBSFlDeEgrV1FNTUZ4Z093UjhJRWhZS1N3d1hFQUFBQUFBREFBRC9rQVBDQXl3QUZBQWRBRDhBWDBCY01nRUdCem9zQWdVR0poNENCQVVEUndBRUJRRUZCQUZ0QUFFQmJna0JBQW9CQWdNQUFtQUFBd0FIQmdNSFlBQUdCUVVHVkFBR0JnVllDQUVGQmdWTUZoVUJBRDA4TmpRdkxpa29JaUFhR1JVZEZoMExDZ0FVQVJRTEJSUXJBU0lIQmdjR0ZCY1dGeFl5TnpZM05qUW5KaWNtQnpJV0ZBWWlKalEyRXhRR0t3RWlKajBCTkRZeU5qMEJOQ1lpSmowQk5EWTdBVElXSFFFVUZqSVdGUUgwZm10cFBEOC9QR2xyL0d4b1BUOC9QV2hzZmhraElUSWhJWGtLQ1pvSERBc1FDd29RREFzSWRBY01DaEFNQXl3L1BXaHMvR3hvUFQ4L1BXaHMvR3hvUFQvcElUSWdJVEFpL213SUNRa0lKd2NPQ1FoTkNBMEpDQ2NIRGcwSW1nZ0pEUWdBQUFBQUF3QUFBQUFENkFLVUFCUUFLUUE1QUFxM05Dd2tHQXNDQXkwckFTY21CZ2NEQmhRWEV4NEJQd0UrQVM4Qk56WW1CUU11QVE4QkRnRWZBUWNHRmg4QkZqWTNFelkwQVNjbUJnY0RCaFlmQVJZMk54TTJKZ0U2TFFvV0NOOEdCdUVIRndvc0N3SUp0TFlHQXdLZTRRY1lDU3dMQWdtM3R3Y0NDU3dLRmdqaEJ2NTRPZ3NYQW84RERRczZEQllEamdNTUFtY2xCd0lKL3VjSEZRais2UWtEQ0NVSEdRamg0UWtYOEFFWENRUUpKQWdZQ2VIaENCa0hKUWNEQ0FFWkNoTUJHZzRERFF2OTNnd1VBdzRDREF3Q0lnd1VBQUFGQUFEL2tBT2JBeXdBRHdBdkFEOEFUd0JmQUcxQWFsaFFBZ29MU0VBQ0NBa0NSd1FOQWdJQkFBRUNBRzBBQVF3QkFBTUJBR0FBQXdBTENnTUxZQUFLQUFrSUNnbGdBQWdBQndZSUIyQUFCZ1VGQmxRQUJnWUZXQUFGQmdWTUVoQUNBRnhhVlZKTVNrVkNQRG8xTWlvbkloOGFGeEF2RWk4S0J3QVBBZzhPQlJRckFTRXlOajBCTkNZckFTSUdIUUVVRmlVaklnWWRBUlFHSXlFaUpqMEJOQ1lyQVNJR0ZSRVVGak1oTWpZMUVUUW1BeFFHSXlFaUpqMEJORFl6SVRJV0ZUVVVCaU1oSWlZOUFUUTJNeUV5RmhVMUZBWWpJU0ltUFFFME5qTWhNaFlWQVZFQlJ3c1JMU0RtSUMwUkFna3dDeEl0SVA2QUlDMFNDekFmTGk0ZkFyUWdMUzJUQ3dqK1dRa0xDd2tCcHdnTEN3aitXUWtMQ3drQnB3Z0xDd2orV1FrTEN3a0Jwd2dMQW1zU0MxY2dMUzBnVndzU2RCSUxWeUF0TFNCWEN4SXRJUDFMSHk0dElBSzFJQzM5WHdrTEN3a21DUW9LQ1hNSUN3c0lKd2dMQ3doekNBc0xDQ2NJQ3dzSUFBQUFBQUlBQVArUEE4SURMUUFqQUVjQWgwdXdDbEJZUUNNQUFBVUFid0FGQVFWdkF3RUJCZ0Z2QUFZRUJtOEFCQUlFYndBQ0J3SnZBQWNIWmh0THNBdFFXRUFmQUFBRkFHOEFCUUVGYndNQkFRUUJid1lCQkFJRWJ3QUNCd0p2QUFjSFpodEFJd0FBQlFCdkFBVUJCVzhEQVFFR0FXOEFCZ1FHYndBRUFnUnZBQUlIQW04QUJ3ZG1XVmxBQ3hjWU9CUVlPQmNWQ0FVY0t3RTJOQzhCSmlJUEFRWVVId0VXTWo4Qk5oWVZFUlFXT3dFeU5qVVJORFlmQVJZeU53RW5KaUlQQVFZbU5SRTBKaXNCSWdZVkVSUUdMd0VtSWc4QkJoUWZBUll5UHdFMkpnSVJDQWpiQ1JjSjNRZ0lLUWdYQ1VVSkdCRU1PUXdSR0FsRkNSY0pBYzhvQ1JjSlJRa1lFUXc1REJFWUNVVUpGd2dwQ0FqZENSY0ozUWdCQWg0SkZ3bmRDQWpkQ1JjSktBa0pSUWtKRGY1b0N4SVRDZ0dZRFFrSlJRa0ovcWdtQ1FsRkNRa05BWndMRWhNSy9tZ05DUWxGQ1FrcUNSY0ozUWdJM1FrWkFBZ0FBUDlxQTJzRFVnQU5BQjRBSndBNEFFQUFUZ0JXQUc4QmQwQVhGd3dDQXdCdFowWXdCQWdIWVNvQ0JnMERSeDhCQUVWTHNBOVFXRUJWQkJRQ0F3QUNBQU1DYlFBQ0J3QUNCMnNTQ3dJSENBQUhDR3NBRUFrRkJoQmxGUUVGRFFZRll3QVBDUWdQVWdBSkVBZ0pWQmtPR0F3V0JRZ0FEUVlJRFdBVEFRQUFERWdSRndvREJnWUJXUUFCQVEwQlNSdExzQkZRV0VCV0JCUUNBd0FDQUFNQ2JRQUNCd0FDQjJzU0N3SUhDQUFIQ0dzQUVBa0ZDUkFGYlJVQkJRMEdCV01BRHdrSUQxSUFDUkFJQ1ZRWkRoZ01GZ1VJQUEwR0NBMWdFd0VBQUF4SUVSY0tBd1lHQVZrQUFRRU5BVWtiUUZjRUZBSURBQUlBQXdKdEFBSUhBQUlIYXhJTEFnY0lBQWNJYXdBUUNRVUpFQVZ0RlFFRkRRa0ZEV3NBRHdrSUQxSUFDUkFJQ1ZRWkRoZ01GZ1VJQUEwR0NBMWdFd0VBQUF4SUVSY0tBd1lHQVZrQUFRRU5BVWxaV1VCRldGZFFUMEpCT2prcEtBNE9BUUJzYVdSallGNWFXVmR2V0c5VFVVOVdVRlpMU0VGT1FrNDlPemxBT2tBMU1pMHNLRGdwT0NjbERoNE9IUkFQQ1FZQURRRU5HZ1VVS3hNaUJoVVJGQll6SVRJMk5SRUpBUlVqSnlZbkppY21OeGNXRnhZWEZqTURGUlFYRmhjV093RUJJeFVVQmlJbVBRRTBOanNCTWhZVUJpY2pGVE15TmpRbUZ5TWlKajBCTkRZN0FUSVdGQVluSXhVek1qNEJKak1qRlRNeUZoUUdLd0VWRkFZaUpqMEJORFk3QVRJVkZnWlFJUzh2SVFMTElTLysyUUVueUE4VER4VUxEd0VDQXdnS0VoVWZYUWNLRXhja3lQMStOQVlLQndvSE9oc2dJQjB5TWhFVkZaSXZCd29LQnk4ck5qVXNLU2toSndFbjNGcFpCQVVGQkZrSENnY0xCMkFLQVFZRFVpOGgvTGdoTHk4aEFsc0JQZjdCRHdRSENnMFNGeDBPRVEwVUN3NEJQK1FSRXhjT0V2NUJRQVVHQndTZ0J3b2hNQ0JkU0JRZ0ZLZ0xCNWtIQ2paUU5xaVNLajhwUFFZSkJrc0ZCZ2NFb0FjS0N3UUZBQUFGQUFBQUFBTU1Bb29BRHdBdkFEOEFUd0JmQVFsQUZoME5BZ0FDU0FFTENWZ0JCd3RRUURnd0JBWUhCRWRMc0E1UVdFQThCQTBDQWdFQUFRSUFiUUFMQ1FjSkMyVUFCd1lKQjJNQUFRd0JBQU1CQUdBQUF3QUpDd01KWUFvSUFnWUZCUVpVQ2dnQ0JnWUZXQUFGQmdWTUcwdXdIMUJZUUQwRURRSUNBUUFCQWdCdEFBc0pCd2tMWlFBSEJna0hCbXNBQVF3QkFBTUJBR0FBQXdBSkN3TUpZQW9JQWdZRkJRWlVDZ2dDQmdZRldBQUZCZ1ZNRzBBK0JBMENBZ0VBQVFJQWJRQUxDUWNKQ3dkdEFBY0dDUWNHYXdBQkRBRUFBd0VBWUFBREFBa0xBd2xnQ2dnQ0JnVUZCbFFLQ0FJR0JnVllBQVVHQlV4WldVQWpFUkFCQUZ4YVZGSk1Ta1JDUERvME1pb25JaDhhRnhBdkVTOEtCd0FQQVE4T0JSUXJBVE15TmowQk5DWXJBU0lHSFFFVUZpVWpJZ1lkQVJRR0t3RWlKajBCTkNZckFTSUdGUkVVRmpNaE1qWTFFVFFtQVJRR0t3RWlKajBCTkRZN0FUSVdGUmNVQmlzQklpWTlBVFEyT3dFeUZoVVhGQVlyQVNJbVBRRTBOanNCTWhZVkFZYmNDQXdqR1l3Wkl3d0JVaFFFQmk4aDNDRXZCUVVVR1NNakdRRzRHU01qL3NVTUNCUUlEQXdJRkFnTVpBd0lGQWdNREFnVUNBeGtEQWdVQ0F3TUNCUUlEQUlTREFnb0dTTWpHU2dJREVZRkJTZ2hMeThoS0FVRkl4bitVaGtqSXhrQnJoa2ovbVlJREF3SVpBZ01EQWhrQ0F3TUNMNElEQXdJdmdnTURBaVdDQXdNQ0FBR0FBQUFBQU1XQW44QUZBQWtBRFFBUkFCVUFHUUFoMENFSWhvRkF3TUVRam95S2dRRkJtSmFVa29FQ1FvRFJ3QUFBUUJ2QUFFRUFXOEFCQU1FYndBQ0F3WURBZ1p0RVFzUUF3a0tDWEFOQVFNSUFRWUZBd1pnRHdjT0F3VUtDZ1ZVRHdjT0F3VUZDbGdNQVFvRkNreFdWVVpGTmpVbUpSWVZYbHhWWkZaa1RreEZWRVpVUGp3MVJEWkVMaXdsTkNZMEhod1ZKQllrRnhRU0VnVVhLd0VuSmlJUEFTY21JZzhCQmhRZkFSWXlQd0UyTkFVaElpWTlBVFEyTXlFeUZoMEJGQVlISVNJbVBRRTBOak1oTWhZZEFSUUdJU01pSmowQk5EWTdBVElXSFFFVUJnY2pJaVk5QVRRMk93RXlGaDBCRkFZcEFTSW1QUUUwTmpNaE1oWWRBUlFHQWRJVkJBd0ZoRFVFREFVVkJBUktDUmdKbVFRQkxQNzhDQXdNQ0FFRUNBd01DUDdBQ0F3TUNBRkFDQXdNL2tBb0NBd01DQ2dJREF3SUtBZ01EQWdvQ0F3TUFiRCt3QWdNREFnQlFBZ01EQUpsRlFVRmhEVUZCUlVFREFWS0NRbVpCQTJMREFnb0NBd01DQ2dJRExRTUNDZ0lEQXdJS0FnTURBZ29DQXdNQ0NnSURMUU1DQ2dJREF3SUtBZ01EQWdvQ0F3TUNDZ0lEQUFBQWdBQUFBQURJQUtRQUMwQVBRQTZRRGNqQVFJQUFVY0JCUUlBQUFJREFBSmdCZ0VEQkFRRFZBWUJBd01FV0FBRUF3Uk1MeTRDQURnMUxqMHZQU2NsSUIwQUxRSXRCd1VVS3dFaklpWTFOamMyTnpZM05qYzJKaWNtRGdFVkZCY1dGeFlYRmhjVUJpc0JJZ1lkQVJRV015RXlOajBCTkNZSElTSUdIUUVVRmpNaE1qWTlBVFFtQXVSdUdTTUNDUVVOQ2dRR0FRTTBMQ1pFS1FZRUN3MEZDUUlqR1c0Wkl3d0lBakFJRENNWS9oNElDeU1aQVpFWklnc0JOaU1aSVJrUEZSQUpEeEV0U0FvSUhUd2xGUkVLRWhVUEdTRVpJeU1aS0FnTURBZ29HU08wQ3dnQkdTTWpHUUVJQ3dBQkFBRC9rQVBDQXk0QUx3QlFRRTBZQVFNQ0dRRUJBd1lCQUFFa0F3SUVBQ1VCQlFRRlJ3b0JBd0ZHQUFJREFtOEFBd0VEYndBQkFBRnZCZ0VBQkFCdkFBUUZCRzhBQlFWbUFRQXFLU01oSEJvVUV3NE1BQzhCTHdjRkZDc2xJZ1lISlRZMU5DWTFKUjRCTXpJK0FUUXVBU0lPQVIwQkJTWWpJZzRCRkI0Qk16STNCUlVVSGdFeVBnRTBMZ0VERXlWQkYvN25BZ0lCR1JkREpTOVFMaTVRWGxBdi90NDFQaTlRTGk1UUwwRXdBU011VDJCUExpNVE2eDBaakFvVkJSVUZqQm9lTGxCZVVDOHVVREFMa2lndVVGNVFMaXFRRFRCUUxpNVFZRTh1QUFJQUFQK1FBOElETEFBckFGa0FKa0FqRXdFQ0FBRkhBQUFDQUc4QUFnRUNid0FCQXdGdkFBTURabE5RT2prbElpNEVCUlVyQVNZbkpqVTBOamMrQVRVMEppY21JeUlIQmdjVUZ4NEJGUlFHQndZVUZ4WWZBUlk3QVRJMlBRRTBKeVlGSmljbU5UUTNQZ0UxTkNZbkppSUhEZ0VWRkJZWEZoVVVCd1lIQmdjR0J3WWRBUlFXTXlFeU5qMEJOQ2NtQXlnbERnc1VEeGdhSlNJa0wwRXFKd1lLTno0cUp3TURDaVFVQ0FYcElTNHZJdjYxTFJFTktCMGZLeWtyY3lzb0xCNGRLUTBTTGpzaExoZ2NMU0VDRlNFd05pZ0JwUTRTRFJNUEhnd1VPaUlyU0JVV0tDWTdDZ2NqZFVrM1h5TURDUU1IRVFvREx4NE1MaU1hN2hNVER4WWhKQmxFS0ROVkdCb2FHRlV6S0VRWkl5SVdEeFVSR0JJWkd5QW1HU0F0TGg4Yk5pb2ZBQUFBQVFBQUFBQUMyd0tsQUMwQUowQWtBQUFGQVFFQ0FBRmdCQUVDQXdNQ1ZBUUJBZ0lEV0FBREFnTk1OU1UxTlNVekJnVWFLd0UxTkNZaklTSUdIUUVVRmpNeUZnY0REZ0VyQVNJR0hRRVVGak1oTWpZOUFUUW1JeUltTnhNK0FUc0JNallDMnhjUS92TVFGaFlRR1I4R1JRUWRFUzRRRnhjUUFRMFFGaFlRR1I4R1JRUWRFU0VXSGdKbUdSQVdGaEFuRUJZbkYvNnVFeGdXRUNjUUZoWVFKeEFXSnhjQlVoTVlIZ0FBQUFVQUFQK1FBNGdETEFBWkFDTUFNd0JEQUZNQVhrQmJURVE4TkFRSUNRRkhBQUVBQkFBQkJHQUZBZ3dEQUFBREJnQURZQTBCQmdzQkNRZ0dDV0FLQVFnSEJ3aFVDZ0VJQ0FkWUFBY0lCMHdtSkFFQVVVNUpSa0UrT1RZdUt5UXpKak1qSWg0Y0ZCRU1DZ2NFQUJrQkdRNEZGQ3NCSXpVMEppc0JJZ1lkQVNNaUJoMEJGQll6SVRJMlBRRTBKaVUwTmpzQk1oWWRBU01GSVNJR0ZSRVVGak1oTWpZMUVUUW1BUlFHS3dFaUpqVVJORFk3QVRJV0ZSTVVCaXNCSWlZMUVUUTJPd0V5RmhVRGEvQXRJSFFmTHZBTEVoSUxBdTRMRWhMK1JBc0pUUWdMZEFGay9hd0xFamdvQWM0b09CSCtrQW9KSmdrTEN3a21DUXJCQ3drbUNRb0tDU1lKQ3dLU1RTQXRMU0JORWdzNkN4SVNDem9MRWprSkN3c0pPY0VSQy80OEtUZzRLUUhFQ3hIK1dRZ0xDd2dCRGdnTEN3ais4Z2dMQ3dnQkRnZ0xDd2dBQUFFQUFQL3ZBOElDelFBakFDNUFLd0FCQUFGdkFBSURBbkFFQVFBREF3QlVCQUVBQUFOWUFBTUFBMHdDQUI0YkV4SUxDZ0FqQWlNRkJSUXJBU0VpSmo4Qk5qUXZBU1lpQndFR0ZCY0JGakkvQVRZMEx3RW1Oak1oTWpZOUFUUW1BNmY5Z1EwSkNiZ0pDU29JR0FqK3J3Z0lBVkVJR0Fnb0NRbTRDUWtOQW44TEVoQUJtQmdJdVFrWENDc0lDUDZ0Q0JnSS9xOElDQ2tJR0FpNUNoZ1FDem9NRXdBQUF3QUEvNUFEd2dNc0FCUUFJUUF1QURwQU55WWxIeDRFQXdJQlJ3UUJBQUFDQXdBQ1lBVUJBd0VCQTFRRkFRTURBVmdBQVFNQlRDTWlBUUFpTGlNdUhCb0xDZ0FVQVJRR0JSUXJBU0lIQmdjR0ZCY1dGeFl5TnpZM05qUW5KaWNtQVRRM05qYzJNeklXRndFdUFRRWlKaWNCSGdFVkZBY0dCd1lCOUgxcmFUMC9QejFwYS9wc2FENC9QejVvYlA0cEx5OU9VVjA0WlN2K0hSNGhBVm80WlNzQjR4NGhMeTlPVVFNc1B6NW9iUHBzYUQ0L1B6NW9iUHBzYUQ0Ly9qSmRVVTR2THlFZS9oMHJaZjdlSVI0QjR5dGxPRjFSVGk4dkFBQUFBQUlBQUFBQUE4SUN5d0FOQUNRQUtrQW5BQUVEQVc4QUF3QURid0FBQWdCdkFBSUVCQUpVQUFJQ0JGZ0FCQUlFVERjVEdUVVJCUVVaS3dFV01qY0JOaWNtSXdVaURnRVhCVFFtQndFR0lpY0JKaUlHRlNZZEFSUVdNeUV5TmpVQjN3Z1lDQUd6QndVR0ZmeWtDeElFQ0FPV0d3eityQ05mSlA2dUJ4TU5BUzBmQXdJZ0xRRVBDQWdCbEEwTkRnRU5Fd21jRHcwSy9zWWdIZ0U4QmcwTEJOemNJQzB1SHdBQUFBTUFBUC94QXhVQ3VBQVlBQ0FBS0FCQlFENFZBUU1FQVVjQUFBQUZCQUFGWUFjQkJBQURBZ1FEWUFZQkFnRUJBbFFHQVFJQ0FWZ0FBUUlCVENJaEdoa2xJeUVvSWlnZEd4a2dHaUExTXdnRkZpc0JOQzRCSXlFaUJoVVJGQll6SVRJK0FUVTBKeVluTmpjMkF5TTFNeklXRkFZREl6VXpNaFlVQmdNVk4xMDIvc0lRRmhZUUFUNDJYVGNQRHhvYUR3L0szdDRiS2lvYjN0NGJLaW9CNVRoaU9SWVEvWVVRRmpsaU9Da21KQjBlSkNiK3U1b3VQaTRCSVpvdlBDOEFBQVAvL3dBQUErNENwUUFXQUNNQU1BQkNRRDhIQVFRREJRTUVCVzBBQlFJREJRSnJBQUFBQXdRQUEyQUdBUUlCQVFKVUJnRUNBZ0ZZQUFFQ0FVd2xKQmdYS3lva01DVXdIaDBYSXhnakd4UUlCUllyQVM0Qkp5WWlCdzRCQndZVUZ4NEJGeFl5Tno0Qk56WUZJaTRCTkQ0Qk1oNEJGQTRCQXlJT0FSUWVBVEkrQVRRdUFRUGtMWmRmWXRaaVg1Y3RCQVF0bDE5aTFtSmZseTBKL2djNllEazVZSFJoT1RsaE9pVStKQ1ErU2o0a0pENEJiMXlNSmlnb0pveGNDQk1IWEl3bUtDZ21qRndSMHpsZ2RHRTVPV0YwWURrQldpUStTajRrSkQ1S1BpUUFBZ0FBLzVBRHd3TXRBQ2NBVmdCWlFGWUFDUU1KYndvQkFBSUlBZ0FJYlFBSUJnSUlCbXNBQmdFQ0JnRnJDd1VDQXdjQkFnQURBbUFBQVFRRUFWUUFBUUVFV0FBRUFRUk1LU2dDQUUxTVJVUThPVE13S0ZZcFZTSWZHaGNTRHdvSEFDY0NKd3dGRkNzQkl5SUdIUUVVQmlNaElpWTFFVFEyT3dFeU5qMEJOQ1lyQVNJR0ZSRVVGak1oTWpZMUVUUW1BU0lIQmdjR0J3WVdPd0V5TmpjK0FUYzJPd0V5Rmc4QkJoUWZBUll5TndFMk5DY0JKaUlQQVE0Qkh3RVdCaU1EcFRvTEVoRU0vWVlNRVJFTVRRc1NFZ3VSSHkwdEh3TUNJQzBTL3Q1ZVYxUTJPQWdDRWcwNkN4QUNCbEErUVVrZkRRa0phUWtKS0FrWENBRUdDQWorL0FnWUNDZ0pBZ2xyQ1FrTkFSRVJETk1NRVJFTUFaUUxFUklMT2dzU0xTRDk1U0F0TGg4QkZ3d1JBVFEwTWxWWFl3d1REd3BIZVNNa0dBaHNDQmdJS1FnSUFRUUlHQWdCQkFnSUtBa1hDV3dJR0FBQUFBTUFBQUFBQXlBQ2lnQVVBQzBBUEFBOVFEb0ZBUU1DQkFJREJHMEdBUUFIQVFJREFBSmdBQVFCQVFSVUFBUUVBVmdBQVFRQlRCWVZBUUFvSmlJaEhCc1ZMUll0Q3dvQUZBRVVDQVVVS3dFaUJ3WUhCaFFYRmhjV01qYzJOelkwSnlZbkpnY3lIZ0VWRkFjaklnWUhEZ0VpSmljdUFTc0JKalUwUGdFVEZqNEJOelkzTmlZSEJnY09BUllCOUZGR1JDZ3BLU2hFUnFKR1JDZ3BLU2hFUmxFN1pqc0NXUWNMQWdZK1VqNEdBUXNJV1FJN1ppUVNLQk1ORFFjSUNCOGRIU0FUQ3dLS0tTaEVScUpHUkNncEtTaEVScUpHUkNncFVEdG1Pd29VQ1Fnbk5qWW5Cd29VQ2p0bU8vN2FDZzBqTUN3b0tnUWVIU01tSXljQUFBVUFBQUFBQXlBQ2lnQWtBRElBUUFCS0FGUUFaMEJrQ3dFRkFUSUJBQVVhQVFRQVNBRUpDQVJIQ3cwQ0NBUUpCQWdKYlFvQkNRbHVBZ0VCQndFRkFBRUZZQVlEREFNQUJBUUFWQVlEREFNQUFBUllBQVFBQkV4Q1FRRUFVbEZRVGtWRFFVcENTajA4TnpZdUxCNGNGeFVSRHdjRkFDUUJKQTRGRkNzQkl6WW1KeVlqSWdZSEJnY21KeTRCSXlJSERnRVhJeUlHSFFFVUZqTWhNalk5QVRRbUlTSW5MZ0kzTmpNeUZoY1dGVGNHQndZak5UUTNQZ0V5RnhZR0Z5TVJNekkyUFFFMEpnVVZGQlk3QVJFaklnWUM1RmNUQkJjYkpSTW1EZ1VGQkFZT0pSUWtHeGNFRTFnWkl3d0lBakFJRENQKzJSRVNGUmNDQ2dnTUVCY0dCb0FNRkJNUkJnWVpHZ2dLQW9QU3JCZ2lEUDRFSXhtcTBnZ01BZlFlUlJnYkVROEZDQWdGRUJBYkdFVWVJeGtvQ0F3TUNDZ1pJd1lIR1NFS0NCb1dFeEVWRFFjR0JoRVRGaG9JQ3lEYi92SWlHTUFJREJTK0dTTUJEZ3dBQUFNQUFBQUFBeUFDaWdBVUFDRUFOUUJMUUVnaklnSUZCQUZIQUFRREJRTUVCVzBBQlFJREJRSnJCZ0VBQUFNRUFBTmdCd0VDQVFFQ1ZBY0JBZ0lCV0FBQkFnRk1GaFVCQURBdkp5VWNHeFVoRmlFTENnQVVBUlFJQlJRckFTSUhCZ2NHRkJjV0Z4WXlOelkzTmpRbkppY21BeUl1QVRRK0FUSWVBUlFPQVNjMU5DWXJBU0lHSFFFVUh3RVdNajhCTmpRbkFmUlJSa1FvS1Nrb1JFYWlSa1FvS1Nrb1JFWlJRVzVCUVc2Q2JrRkJiaU1NQ0JRSURBbGdCaEFHRGdZR0Fvb3BLRVJHb2taRUtDa3BLRVJHb2taRUtDbjk1RUZ1Z201QlFXNkNia0g4Z0FnTURBaU1EUWhnQmdZT0JoQUdBQVVBQUFBQUF1NENpZ0FOQUNVQVNRQlpBR2tBWUVCZEV3RUFBa1E5TmdNQkFFQTVJd01IQVdKYUFnWUhVa29DQkFVRlJ3QUNBQUp2QUFBQkFHOElBUUVBQndZQkIyQUFCZ0FGQkFZRllBQUVBd01FVkFBRUJBTllBQU1FQTB3UURtWmtYbHhXVkU1TUlCMFlGUTRsRUNVb0NRVVZLd0VuSmlJR0hRRVVGanNCTWpZMEJ5TWlKajBCTkNZckFTSUdGUkVVRmpNaE1qWTFFVFFtSlQ4Qk1qVTNOaklmQVJZekZ4NEJEd0VHRlJjV0JpOEJKZzhCQmlZL0FUUXZBU1kyQVJRR0l5RWlKajBCTkRZeklUSVdGVGNVQmlNaElpWTlBVFEyTXlFeUZoVUM2b1FFREFnWUVHb0dDQlNNR1NNTUNNZ1pJeU1aQVh3Wkl3eitYakVDQVJZQ0JRRVdBZ0V4QWdJQ0pBRUlBUVVDTEFJQ0xBSUZBUWdCSkFFREFUZ01DUDc4Q0F3TUNBRUVDQXdvREFqKzFBZ01EQWdCTEFnTUFnS0VCQWdHYWhBWUNBeFFJeG1NQ0F3akdmNGdHU01qR1FFc0NBeGVCd0VCTFFJQ0xRSUhBUVVCSXdFRE1RSURBUmNDQWhjQkF3SXhBd0VqQWdUK3N3Z01EQWdVQ0F3TUNHUUlEQXdJRkFnTURBZ0FBQWdBQVArUUE4SURMQUFQQUI4QUx3QS9BRThBWHdCdkFIOEFja0J2RWdFT0JRNXZCZ0VGRHdWdkFBOEVEMjhIQVFRQUJHOElBUUlCQ2dFQ0NtMFFBUW9EQVFvRGF3a0JBd3NCQXd0ckFBc0xiaEVNQWdBQkFRQlVFUXdDQUFBQldBMEJBUUFCVEhKd1ltQlNVSHAzY0g5eWYycG5ZRzlpYjFwWFVGOVNYMHBKRnhjWEZ4Y1hFelV6RXdVZEt3RTFOQ1lyQVNJR0hRRVVGanNCTWpZWEppSVBBUVlVSHdFV01qOEJOalFuQVJZeVB3RTJOQzhCSmlJUEFRWVVGeVVtSWc4QkJoUWZBUll5UHdFMk5DY0JKaUlQQVFZVUh3RVdNajhCTmpRbkpTTWlCaDBCRkJZN0FUSTJQUUUwSmlVaklnWWRBUlFXT3dFeU5qMEJOQ1lCSXlJR0hRRVVGanNCTWpZOUFUUW1BVFFTQzlRTEVSRUwxQXNTSkFnWUNKWUpDU2dKRndtV0NBZ0JEd2dZQ0pZSkNTZ0pGd21XQ0FqK2hBa1hDU2dKQ1pZSUdBZ3BDQWdCT1FnWUNDc0lDSllKRndrb0NRbit3em9MRWhJTE9nc1NFZ0dKMUFzU0VndlVDeElTL21FNkN4SVNDem9MRWhJQlFUb0xFaElMT2dzU0Vrc0lDSllKRndrb0NRbVdDQmdJQVE4SUNKWUpGd2tvQ1FtVUNCZ0l2QWtKS0FrWENaWUlDQ2tJR0FqK3lRZ0lLUWdZQ0pZSkNTZ0pGd2xKRWd2VUN4SVNDOVFMRXZvU0N6b0xFaElMT2dzU0FaUVNDOVFMRWhJTDFBc1NBQUFBQUFNQUFQL2RBOElDM3dBTUFDc0FPQUJXUUZNRUNRSUNBd2NEQWdkdENBRUFCd0VIQUFGdEFBRUdCd0VHYXdBREFBY0FBd2RnQ2dFR0JRVUdWQW9CQmdZRldBQUZCZ1ZNTFN3UERRRUFNeklzT0MwNEppTWVHeFlURFNzUEt3Y0dBQXdCREFzRkZDc0JJZzRCRkI0Qk1qNEJOQzRCSlNNaUx3RXVBU3NCSWdZUEFRNEJLd0VpQmhVUkZCWXpJVEkyTlJFMEpnRWlMZ0UwUGdFeUhnRVVEZ0VCOUNwSEtTcEdWRWNwS1VjQlYyUW9HaXdLTEJ1OEdpME1MQW9qRkdNZkxTMGZBd0lnTFMzK1h6NXJQajVyZkdzK1Btc0IwU2xIVWtjcUtVZFVSaWwwSWtRWUhCd1lSQkFTTFNEK01pQXRMaDhCemlBdC9ndythM3hxUGo1cWZHcytBQUFBQ0FBQS81QURtd01zQUE4QUh3QXZBRDhBVHdCZkFHOEFqd0RLUUE1b1NDZ0RCQVZRTUJBREFnTUNSMHV3RFZCWVFEMFJBUThPRGc5akVoQVZBdzRBRXdBT0UyRVVBUUFOQ1FJRkJBQUZZQXdJQWdRTEJ3SURBZ1FEWUFvR0FnSUJBUUpVQ2dZQ0FnSUJXQUFCQWdGTUcwQThFUUVQRGc5dkVoQVZBdzRBRXdBT0UyRVVBUUFOQ1FJRkJBQUZZQXdJQWdRTEJ3SURBZ1FEWUFvR0FnSUJBUUpVQ2dZQ0FnSUJXQUFCQWdGTVdVQXpjWEFDQUlxSGdvQjlmSGw0ZFhSd2ozR1BiR3BsWWx4YVZWSk1Ta1ZDUERvMU1pMHFKQ0lkR2hRU0NnY0FEd0lQRmdVVUt3RWhJZ1lWRVJRV015RXlOalVSTkNZQkZBWXJBU0ltUFFFME5qc0JNaFlWTlJRR0t3RWlKajBCTkRZN0FUSVdGUk1VQmlzQklpWTlBVFEyT3dFeUZoVTFGQVlyQVNJbVBRRTBOanNCTWhZVkV4UUdLd0VpSmowQk5EWTdBVElXRlRVVUJpc0JJaVk5QVRRMk93RXlGaFVUSXpVMEppSUdIUUVoTlRRbUlnWWRBU01pQmgwQkZCWXpJVEkyUFFFMEpnTisvT3dNRVM0ZkFyUWdMUkg5NHdvSlRRZ0xDd2hOQ1FvS0NVMElDd3NJVFFrS3dRc0lUUWtMQ3dsTkNBc0xDRTBKQ3dzSlRRZ0x3QXNJVFFrS0NnbE5DQXNMQ0UwSkNnb0pUUWdMWUdBaUx5TCs4aUV3SW1BZ0xSRU1BeFFNRVMwQjBSRUwvaWdmTGkwZ0FkZ0xFZjVaQ0FzTENFMEpDd3NKZEFrTEN3bE5DQXNMQ1A3eUNBc0xDRTBKQ3dzSmRBa0xDd2xOQ0FzTENQN3lDQXNMQ0UwSkN3c0pkQWtMQ3dsTkNBc0xDQUdUSnhnaUloZ25KeGdpSWhnbkxSOHhDeEVSQ3pFZ0xBQURBQUQvdHdQQ0F3VUFEd0FmQUM4QVFFQTlCd0lHQXdBRkFRVUFBVzBEQVFFQmJnZ0JCQVVGQkZRSUFRUUVCVmdBQlFRRlRDSWdFaEFDQUNvbklDOGlMeG9YRUI4U0h3b0hBQThDRHdrRkZDc1RJeUlHRlJFVUZqc0JNalkxRVRRbUtRRWlCaFVSRkJZeklUSTJOUkUwSmljaElnWWRBUlFXTXlFeU5qMEJOQ2JkbWdzUkxDQnFEQkVSQXJ6OXZ3d1JFUXdDRVNBdEVqdjgvaUFzRVFzRFlnc1NMUUlMRVF6K0ZpQXRFUXdDR2d3UkVRejk1Z3dSTFNBQjZnd1IraTBnUXdzU0VndERJQzBBQUFBRUFBRC95Z09iQXZJQUR3QWZBQzhBUHdBMlFETUFBQUFCQWdBQllBQUNBQU1HQWdOZ0FBWUFCd1FHQjJBQUJBVUZCRlFBQkFRRldBQUZCQVZNTlRVMU5UVTFOVElJQlJ3ckFUUW1JeUVpQmgwQkZCWXpJVEkyTlJVMEppTWhJZ1lkQVJRV015RXlOalVSTkNZaklTSUdIUUVVRmpNaE1qWTFFVFFtSXlFaUJoMEJGQll6SVRJMk5RT2JFUXo4N0F3UkVRd0RGQXdSRVF6ODdBd1JFUXdERkF3UkVRejg3QXdSRVF3REZBd1JFUXo4N0F3UkVRd0RGQXdSQXRVTEVoSUxPZ3NSRVF1dERCRVJERGtNRVJFTS9td0xFaElMT2dzU0Vnc0JJUXNSRVFzNkRCRVJEQUFBQkFBQS84b0Rtd0x5QUE4QUh3QXZBRDhBTmtBekFBQUFBUUlBQVdBQUFnQURCZ0lEWUFBR0FBY0VCZ2RnQUFRRkJRUlVBQVFFQlZnQUJRUUZURFUxTlRVMU5UVXlDQVVjS3dFMEppTWhJZ1lkQVJRV015RXlOalVITkNZaklTSUdIUUVVRmpNaE1qWTFBelFtSXlFaUJoMEJGQll6SVRJMk5STTBKaU1oSWdZZEFSUVdNeUV5TmpVRG14RU0vT3dNRVJFTUF4UU1FWE1TQy8zU0N4SVNDd0l1Q3hJbkVReitJQXdSRVF3QjRBd1JtaEVNL093TUVSRU1BeFFNRVFMVkN4SVNDem9MRVJFTHJRd1JFUXc1REJFUkRQNXNDeElTQ3pvTEVoSUxBU0VMRVJFTE9nd1JFUXdBQUFBREFBRC9qd1BDQXl3QUR3QWZBREVBSTBBZ0FBTUJBMjhBQVFJQmJ3QUNCQUp2QUFRQUJHOEFBQUJtSGhjYUZ4SUZCUmtyTnhjV01qY0JOalF2QVNZaUJ3RUdGQUVHRkI4QkZqSS9BVFkwTHdFbUlnY0JCaFkvQVRZL0FUWTBMd0VtSWc4QkJnZTNxd1lQQmdHckJRV3BCaEFGL2xNR0FnVUZCYW9GRUFVeEZ4ZGJGejhYL1VVQ0ZRN1NDZ2NFQkFhdEJSQUVCQVlFMEtzR0JnR3NCaEFGcWdVRi9sTUdEZ0lQQlJBRnFnVUZNQlk5RjFzWEYveWVEaFlETWdNSEJBUVFCYTBHQkFRR0N3QUFBQUFGQUFEL2tBUENBeXdBRHdBVEFDTUFNd0JEQUdoQVpVRTVNU2tFQmdjQlJ3a0JCd1FHQkFjR2JRMElEQU1HQWdRR0Ftc0FBUUFEQlFFRFhnQUZDd0VFQndVRVlBQUNBQUFDVWdBQ0FnQllDZ0VBQWdCTU5UUWxKQlVVQWdBK096UkROVU11S3lRekpUTWVHeFFqRlNNVEVoRVFDZ2NBRHdJUERnVVVLd1VoSWlZMUVUUTJNeUV5RmhVUkZBWWxJUkVoQVNFaUpqMEJORFl6SVRJV0hRRVVCZ0VqSWlZOUFUUTJPd0V5RmgwQkZBWWhJeUltUFFFME5qc0JNaFlkQVJRR0E1djhzaEFXRmhBRFRoQVhGL3pJQXdMOC9nSjcvZ3dJQ3dzSUFmUUpDZ3IrZG5NSUN3c0ljd2tMQ3dGNDV3Z0xDd2puQ1FvS2NCY1FBMDRRRnhjUS9MSVFGMDBEQXY3eUN3bHpDUW9LQ1hNSkMvNkFDd2puQ0FzTENPY0lDd3NJNXdnTEN3am5DQXNBQUFBQ0FBRC9rQU91QXl3QUR3QTNBQjFBR2dBQUFnQnZBQUlEQW04QUF3RURid0FCQVdZcExEVXlCQVVZS3hNMEppc0JJZ1lWRVJRV093RXlOalVCQmdjR0p5WW5KaWNtSXdZSERnRVZFUlFXTnpZekZoY1dGeFlYRmhjV056WTNQZ0UxRVRRbXJSRU1PUXdSRVF3NURCRUM1VWc1THkwYk1qUWZNemxGVndnTEVRaFVSRGN6SGpRbUZDSWdKaXN3T3djSUV3TVBDeElTQy95ZUN4SVNDd01SSmdZR0VRb2VJQXdVQVI0Q0VBbitRQW9MQkJ3QkZBd2ZHQWtQQkFRTERTRUVEZ2NCdndvTEFBTUFBUCtQQTRnRExRQVhBQzhBUHdBdVFDc0FCQVVFYndBRkF3VnZBQU1BQWdFREFtQUFBUUFBQVZRQUFRRUFXQUFBQVFCTUZ4OGJHeHNTQmdVYUt5VUZCaUluSlNZMFB3RTJNaDhCRmpJL0FUWXlId0VXRkNjRkJpSW5KU1kwUHdFMk1oOEJGakkvQVRZeUh3RVdGQzBCSmpRM0pUWXlGd1VXRkFjRkJpSURlZjZXRGlNTy9wZ0xDMVVFQ3dUYklFc2YzQVFMQkZVTEMvNldEaU1PL3BnTEMxVUVDd1RiSUVvZzNBUUxCRlVML2svK2x3d01BV2tQSXc0QmFRd00vcGNPSTJiT0NBak9CaGNHTUFNRGZSSVNmUU1ETUFZWDRjNEpDYzRGR0FVd0F3TjlFUkY5QXdNd0JSZ1V6Z1VYQnM0SUNNNEdGd1hPQndBQUFBUUFBQUFBQXlBQ01BQVBBREFBUUFCUUFOcEFFRWxCQWdZSE9URUNCQVV1QVFJRUEwZExzQmxRV0VBeEFBY0RCZ01IWlFBRUJRSUNCR1VJQVFBQUF3Y0FBMkFBQmdBRkJBWUZZQWtCQWdFQkFsUUpBUUlDQVZrQUFRSUJUUnRMc0JwUVdFQXlBQWNEQmdNSFpRQUVCUUlGQkFKdENBRUFBQU1IQUFOZ0FBWUFCUVFHQldBSkFRSUJBUUpVQ1FFQ0FnRlpBQUVDQVUwYlFETUFCd01HQXdjR2JRQUVCUUlGQkFKdENBRUFBQU1IQUFOZ0FBWUFCUVFHQldBSkFRSUJBUUpVQ1FFQ0FnRlpBQUVDQVUxWldVQWJFaEFDQUUxTFJVTTlPelV6SWlFUU1CSXdDZ2NBRHdJUENnVVVLd0VoSWdZVkVSUVdNeUV5TmpVUk5DWUJJeUltTlRZM05qYzJOelkxTkNjbU5EWXlGaFVVQndZVkZCY1dGeFlYRmdZM0ZBWXJBU0ltUFFFME5qc0JNaFlWTlJRR0t3RWlKajBCTkRZN0FUSVdGUUxrL2lBWkl5TVpBZUFaSXlQKzZhd09GQUVVRGg0UUJnUU9GU0k2SWhVT0JBWVFRQUVDRk53TUNGb0lEQXdJV2dnTURBaVdDQXdNQ0pZSURBSXdJeG4rM2hrakl4a0JJaGtqL3F3WkVCUVJEQTRIQ0FVSkRnd1RQU2dvSGlBU0RBNEpCUWdHR3lVUEdrWUlEQXdJSGdnTURBaFFDQXdNQ0I0SURBd0lBQU1BQUFBQUF4c0NkZ0FsQUM0QU53QktRRWNBQWdBREFBSURZQUFCQ2dFQUJRRUFZQUFGQUFRSEJRUmdDUUVIQmdZSFZBa0JCd2NHV0FnQkJnY0dUQUVBTmpVeU1TMHNLU2dnSFJvWEZCSVBEQWtIQUNVQkpRc0ZGQ3NCSVRJMlB3RTJKaU1oSnk0Qkt3RWlEZ0VXT3dFVEhnRXpJVEkrQVNZaklTSW1KelVtTmdjVUZqSTJOQ1lpQmhjVUZqSTJOQ1lpQmdHb0FTY0hDd0UyQXd3Sy9qZ0lBeEFLTUF3VEFoSU5IRjRERUFvQlhBd1RBaElOL3M0S0VBSUZFaDRkS2gwZEtoM3dIU29kSFNvZEFWNElCNzRLRHh3S0RCQVpFLzdDQ2d3UUdSTU1DUUVPR09ZVkhSMHFIUjBWRlIwZEtoMGRBQUFDQUFBQUFBTWlBa3dBQ3dBZ0FDUkFJUUFCQUFGdkFBQUNBRzhBQWdNREFsUUFBZ0lEV0FBREFnTk1PQmcwRVFRRkdDc0JGakkzQVRZbUl3VWlCaGNGTkNZUEFRWWlMd0VtQmhVUkZCWXpJVEkyTlNJQjV3WVBCZ0ViQlFjTy9kQU1EQWdDVXhJSDNCWS9GOTBIRWlNWkFlQVpJd0VCTEFVRkFRWUpFUUVSQ1c4S0NBZk1GUlhNQndnSy92d1pJeU1aQUFBQUFnQUEvNUFEd2dNc0FCUUFMQUEwUURFR0FRQUZBRzhBQlFNRmJ3QURCQU52QUFRQ0JHOEFBZ0VDYndBQkFXWUJBQ2duSkNNZ0h4Z1hDd29BRkFFVUJ3VVVLd0VpQndZSEJoUVhGaGNXTWpjMk56WTBKeVluSmhNQkJpSXZBU1kwUHdFMk1oOEJGakkvQVRZeUh3RVdGQUgwZm10cFBEOC9QR2xyL0d4b1BUOC9QV2hzaFA3YUNSa0pvUWtKS2drWkNGVUdFUWJYQ1JrSUt3b0RMRDg5YUd6OGJHZzlQejg5YUd6OGJHZzlQLzZsL3RZSUNLUUlHZ2dxQ1FsV0JnYmZDUWtxQ1JrQUFBQUJBQUQvdFFPZEF3VUFSd0JEUUVCRkFRTUFBVWNHQVFBREFHOEFBd1FEYndBQ0JRRUZBZ0Z0QUFFQmJnQUVCUVVFVkFBRUJBVllBQVVFQlV3Q0FFSS9PamN4THlFZ0dSY0FSd0pIQndVVUt3RWpJZ1lkQVJRR0p5WW5MZ0VIQmdjT0FRY0dGaGNlQVRNeU5qYytBUzhCTGdFSERnRW5KaWN1QWpjMk56NEJNeklXRnhZWEZnWXJBU0lHSFFFVUZqTWhNalkxRVM0QkEzNDVEQkVOQ2drTFNNRm9TanhZWVFJQ096YzZsbFJKaHpjS0FRa29DQllKTklkR0pDVTJSaFlQQ1JZb2hFdzZhaWdNQ3dRUERvY0xFaEFMQVdBS0R3SVJBd1VSRElZT0NBZ01CMGs1RkE4cE9iSmxUcFU0UFVBeUxna1pDU2dJQVFjc0h4RUpGaUZtZXo4a0pVWk1MQ2dMRUFzTUVnczhDeEFQQ2dGZURCRUFCQUFBLzhvRG13THlBQThBSHdBdkFEOEFOa0F6QUFBQUFRSUFBV0FBQWdBREJnSURZQUFHQUFjRUJnZGdBQVFGQlFSVUFBUUVCVmdBQlFRRlREVTFOVFUxTlRVeUNBVWNLd0UwSmlNaElnWWRBUlFXTXlFeU5qVUhOQ1lqSVNJR0hRRVVGak1oTWpZMUVUUW1JeUVpQmgwQkZCWXpJVEkyTlJNMEppTWhJZ1lkQVJRV015RXlOalVEbXhFTS9Pd01FUkVNQXhRTUVab1JEUDJHREJFUkRBSjZEQkVSRFAyR0RCRVJEQUo2REJHYUVRejg3QXdSRVF3REZBd1JBdFVMRWhJTE9nc1JFUXV0REJFUkREa01FUkVNL213TEVoSUxPZ3NTRWdzQklRc1JFUXM2REJFUkRBQUFBQUFCQUFBQUFBTmlBa1VBREFBWVFCVUNBUUFCQUc4QUFRRm1BZ0FJQndBTUFnd0RCUlFyRXlFeUhnRUhBUVlpSndFbU5xQUNxQW9PQVFmK3N3Z2ZDZjZ2Q2c0Q1JRNFVDUDVvREF3Qm1BMGRBQUlBQVArSUE2c0RMUUFlQUMwQUNMVXRLQlFJQWkwckFRVUdMZ0UxRVRRbUJ3NEJCd1lYSGdFWEZoY1dOejRCTnpZMU5DY3VBUVVsUGdFbkppY21KeVlHRlJFVUZnTnIvbllOR3hJWERXQ1ZKQ1lMQ21kUlVtRmVXRlNESkNZR0FodituUUY3RVFrTFFtQmpjaFFnRlFHUTJRY0dGUTRCMkE0U0JCcUdYV0JvWUtRek5Rb0tIUngzVVZOY0l5SU9ERi9LQ0NjUVd6dytFZ1FiRlA1T0RRd0FBQUFBQkFBQS83TUR3Z01GQUIwQUpnQXZBRGdBUVVBK0NBRUFBd0J2QndVQ0F3SURid3NHQ2dRSkJRSUJBbThBQVFGbU1UQW9KeDhlQVFBMU5EQTRNVGdzS3ljdktDOGpJaDRtSHlZVUVnQWRBUjBNQlJRckFTSUhCZ2NHRlJRWEZnOEJCaFkvQVRZWEZqTTJOelkzTmlZbkppY21BU0ltTkRZeUZoUUdNeUltTkRZeUZoUUdNeUltTkRZeUZoUUdBZlIrYTJnOVBqZ0tCandFRVF5bURSUnZnWHhyYUR3L0FUOCthR3YrbkI4dUxqOHRMY2NmTGk0L0xTM0hIeTR1UHkwdEF3VTVPRjlpYzJabUR4S2pEQkFEUHdZS1BRRTZPRjlpNkdOZ056citEQzQvTFMxQUxTNC9MUzAvTGk0L0xTMC9MZ0FBQUFJQUFQK1FBOElETEFBVUFDWUFKa0FqQkFFQUF3QnZBQU1DQTI4QUFnRUNid0FCQVdZQkFDTWdHaGNMQ2dBVUFSUUZCUlFyQVNJSEJnY0dGQmNXRnhZeU56WTNOalFuSmljbUV3NEJJeUVpSmljbU56NEJNeUV5RmhjV0FmUjlhMms5UHo4OWFXdjZiR2crUHo4K2FHeG9BaEFML25BTEVRRURBd0lRQ3dHUUN4QUNBd01zUHo1b2JQcHNhRDQvUHo1b2JQcHNhRDQvL2hFS0R3NExJeDhLRHc4S0lnQUFBQUVBQVAvd0F0c0MwQUFNQUFxM0FBQUFaaE1CQlJVckFSRVVEZ0VuQVNZME53RTJGZ0xiRGhRSS9tZ01EQUdZRFIwQ3N2MVlDZzRCQndGTkNSOElBVkVLRGdBQUF3QUEvNDREd2dNMEFEY0FiZ0NTQUR4QU9ZcUJlQU1GQUFGSEFBSURBbThBQXdRRGJ3QUVBUVJ2QUFFQUFXOEFBQVVBYndBRkJnVnZBQVlHWm8yTWlJZDdlbloxU0VZakVBY0ZGaXNsSWljbUp5WUdEd0VPQVNZbkxnRTJQd0UyTnpZV0Z4WVhGaGNlQVQ4Qk5pOEJKaWNtSnk0QkJnY0dEd0VPQVJZWEhnRTJQd0UySmdFK0FTWW5MZ0VHRHdFR0ZoY1dGeFkyUHdFK0FSWVhIZ0VHRHdFR0J3WW5KaWNtSnk0QkR3RU9BUjhCRmhjV0Z4WVhGalkzTmpjWE56WTBMd0VtSWc4Qkp5WWlEd0VHRkI4QkJ3WVVId0VXTWo4QkZ4WXlQd0UyTkNjQnpoRVNEaGNGQ3dNSEdFQkNHUndWRVJwL0dDSVVLUk1aRWdnSkJSTUhNQW9JQ2drRURSd21VRkVsR1J0N0xDSWFLaXg2ZXk0cUNBb0JNQzBmSXk4dGQzVXNKZ2tJRENnZkJnc0RCeGhBUWhrY0ZSRWFmeFVsS2lZWUV3Z0hCUk1ITGdZQkJRa0lCaElXSWkwblVpVWVGdFZaQmdZMkJnOEdWbE1HRHdZMkJnWlRVUVlHTmdZUEJsRldCZzhHTmdZR2tnWUNDQUVDQXdnWUV3c1dHVVZHR1g4WUNRVURDQWtVQ2cwSkFnY3dEQTBNQ1FZTkZCY1BEUlFMRzNzc2RuWXRMeU1lTGlvSUZnRVFMbnQ2TENvYUlpd21DUllDQXdvQkFnTUhHQk1MRmhsRlJobCtGZ3NNRWdnVUNBNElBZ2N1QlE0R0Nnc0dFUThXQ1FnTkZCQVc1bGdHRHdZMkJnWmJVd1lHTmdVUUJsSlJCZzhHTmdZR1VWY0ZCVFlHRHdZQUFBQUFCUUFBLzVBRHdnTXNBQThBSHdBdkFFY0FYd0JxUUdjTUFRQUFBUUlBQVdBS0RRSUNBQU1KQWdOZ0VBRUpBQXNFQ1F0Z0J3NENCQUFGQmdRRllBOEJCZ2dJQmxRUEFRWUdDRmdBQ0FZSVRFcElNakFpSUJJUUFnQmFWMUpQU0Y5S1gwSS9PamN3UnpKSEtpY2dMeUl2R2hjUUh4SWZDZ2NBRHdJUEVRVVVLd0VoSWdZZEFSUVdNeUV5TmowQk5DWUhJU0lHSFFFVUZqTWhNalk5QVRRbUF5RWlCaDBCRkJZeklUSTJQUUUwSmdjaElpWTlBVFFtS3dFaUJoMEJGQll6SVRJMlBRRTBKZ01oSWlZOUFUUW1Ld0VpQmgwQkZCWXpJVEkyUFFFMEpnT2wvSjRMRVJFTEEySUxFaElML1Y4TUVSRU1BcUVMRWhJTC9WOE1FUkVNQXFFTEVoSUwvUklNRVJJTE9nc1JFUXNEWWdzU0VndjlFZ3dSRWdzNkN4RVJDd05pQ3hJU0F5d1NDMkFNRVJFTVlBc1M1eElMT2dzU0VnczZDeEwrZnhFTU9Rd1JFUXc1REJIQUVReUdEQkVSRFBvTEVoSUxPZ3NTQVlFUkM0Y0xFaElMK2dzU0VnczZDeElBQUFJQUFBQUFBdTRDaWdBWEFDVUFNRUF0QlFFREFSVUJBZ0FDUndBQkF3RnZBQU1BQTI4RUFRQUNBRzhBQWdKbUFnQWlJQklQQ2djQUZ3SVhCUVVVS3dFaklpWTlBVFFtS3dFaUJoVVJGQll6SVRJMk5SRTBKamNuSmlJR0hRRVVGanNCTWpZMEF0cU1HU01NQ01nWkl5TVpBWHdaSXd3SWhBUU1DQmdRYWdZSUFhNGpHWXdJRENNWi9pQVpJeU1aQVN3SURGU0VCQWdHYWhBWUNBd0FBQUFGQUFBQUFBTVdBb29BRndBbkFEY0FSd0JYQUhCQWJRVUJBUUF3S0FJR0JWQklBZ2tLRFFFQ0NVQTRBZ2NDQlVjTEFRQUFBUU1BQVdBTUFRTUFCUVlEQldBQUJnQUtDUVlLWUFBSkNBRUNCd2tDWUFBSEJBUUhWQUFIQndSWUFBUUhCRXdhR0FJQVZGSk1Ta1JDUERvME1pd3FJaDhZSnhvbkVnOEtCd0FYQWhjTkJSUXJBU0VpQmgwQkZCWXpJVElXRlJFVUZqc0JNalkxRVRRbUJ5RWlCaFVSRkJZeklUSTJOUkUwSmdVME5qc0JNaFlkQVJRR0t3RWlKalVYRkFZckFTSW1QUUUwTmpzQk1oWVZOeFFHS3dFaUpqMEJORFk3QVRJV0ZRTGEvc0FaSXdZRUFTSVpJd1lFQ2hrakk2WCt3QmtqSXhrQlFCa2pJLzY3REFqSUNBd01DTWdJRFBBTUNNZ0lEQXdJeUFnTUtBd0k4QWdNREFqd0NBd0NpaU1aQ2dRR0l4bit5Z1FHSXhrQlZCa2pqQ01aL3F3Wkl5TVpBVlFaSTJRSURBd0lGQWdNREFqd0NBd01DQlFJREF3SVpBZ01EQWdVQ0F3TUNBQUpBQUQva0FQQ0F5d0FEd0FmQUM4QVB3QlBBRjhBYndDSEFKOEFsa0NURkFFQUFBRUNBQUZnRWhjR0ZnUVZCZ0lIQlFJREVRSURZQndCRVFBVENCRVRZQThhREJrS0dBWUlEUXNDQ1E0SUNXQWJBUTRRRUE1VUd3RU9EaEJZQUJBT0VFeUtpSEp3WW1CU1VFSkFNakFpSUJJUUFnQ2FsNUtQaUorS240Si9lbmR3aDNLSGFtZGdiMkp2V2xkUVgxSmZTa2RBVDBKUE9qY3dQekkvS2ljZ0x5SXZHaGNRSHhJZkNnY0FEd0lQSFFVVUt3RWhJZ1lkQVJRV015RXlOajBCTkNZRkl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWUJJeUlHSFFFVUZqc0JNalk5QVRRbUlTTWlCaDBCRkJZN0FUSTJQUUUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1lISVNJbVBRRTBKaXNCSWdZZEFSUVdNeUV5TmowQk5DWURJU0ltUFFFMEppc0JJZ1lkQVJRV015RXlOajBCTkNZRHBmeWVDeEVSQ3dOaUN4SVMvZHFHREJFUkRJWU1FUkVCQW9jTEVoSUxod3NSRVFFQ2h3c1NFZ3VIQ3hJUy9kcUdEQkVSRElZTUVSRUJBb2NMRWhJTGh3c1JFUUVDaHdzU0VndUhDeElTQy8wU0RCRVNDem9MRVJFTEEySUxFaElML1JJTUVSSUxPZ3NSRVFzRFlnc1NFZ01zRWd0Z0RCRVJER0FMRXVjU0N6b0xFaElMT2dzU0VnczZDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4TCtmeEVNT1F3UkVRdzVEQkVSRERrTUVSRU1PUXdSRVF3NURCRVJERGtNRWNBUkRJWU1FUkVNK2dzU0VnczZDeElCZ1JFTGh3c1NFZ3Y2Q3hJU0N6b0xFZ0FBQUFBRUFBRC9rQVBKQXl3QUR3QW5BRDhBVHdCb1FHVUFEQVlNYndBTkJRY0ZEUWR0QUFjQ0JRY0Nhd1FCQWdnRkFnaHJDd0VJQXdVSUEyc0FBd0FGQXdCckFBQUpCUUFKYXdBQkNnRndBQVlBQlEwR0JXQUFDUW9LQ1ZRQUNRa0tXQUFLQ1FwTVRVcEZRajA3TmpVME15UVZFUlFrRkNNMU1nNEZIU3NsTkNZaklTSUdIUUVVRmpNaE1qWTFBeU1pQmg4QkZqSS9BVFltS3dFME5qYzJNelVpQnc0QkJTWWlEd0VHRmpzQkZBNEJJeFV5TnpZM05qVXpNalluRXpRbUl5RWlCaDBCRkJZeklUSTJOUUdCRWd2KzN3c1JFUXNCSVFzUzVWNFBDd2lhQmc4R21nZ0xEbHMzS3k0dlZVZEZVUUtJQmc4R21nZ0xEbDB4V0RsVlNFWW9LbDRQQ3dnQ0Vndiszd3NTRWdzQklRc1NnUXNTRWd2VUN4SVNDd0grRXdpZ0JBU2dDUkl2V1J3Y2RDa3BqVFFFQktBSUV6bFhNSFFwS1VWSVZSTUlBZU1MRWhJTDFBc1NFZ3NBQUFJQUFQKzNBNXNEQlFBUEFEb0FQRUE1QUFNQUEyOEhBUUFDQUc4RUNBSUNCUUp2QUFVQkJXOEFBUVlCYndBR0JtWVNFQUlBTWpBcUtDTWhHaGNRT2hJNkNnY0FEd0lQQ1FVVUt4TWpJZ1lWRVJRV093RXlOalVSTkNZRkl5SW1QUUUwSmlzQklnWWRBUlFHQndZaklnWVZFUlFXTXhZWEZoY1dGeFl6TWpjMk56WTlBVFFteW1BTUVSRU1NQ0F0RWdKNWN4OHVMU0F3Q3hJc0pDWXREQkVQRENrbkdDb3ZHaXd3VnpGRElpZ3RBYjRSRFA1R0N4SXVId0dLREJFVExoL0FJQzBSREhNelhSd2VFUXorZ0F3UkFna0ZEUThGQ1FvT0pTdFA4Q0F0QUFBQUFBSUFBUCtRQThJRExBQWZBRU1BUjBCRU1BRUZCZ0ZIQUFZRkJtOEhBUVVBQlc4Q0NBSUFCQUJ2QUFRQkJHOEFBUU1EQVZRQUFRRURXQUFEQVFOTUFnQStQVFV5S2lraUlSb1hFZzhLQndBZkFoOEpCUlFySlNNaUJoMEJGQVlqSVNJbVBRRTBKaXNCSWdZVkVSUVdNeUV5TmpVUk5DWUZGakkzQVRZMEx3RW1JZzhCQmlZMUVTNEJLd0VpQmhVUkZBWXZBU1lpRHdFR0ZCY0RwVG9MRWhFTS9ZWU1FUklMT2dzUkxSOERBaUF0RXY0eENCZ0lBUVFJQ0NrSUZ3bHNDQmdCRkFvNkN4SVlDR3dKRndncENBaitFZ3ZBREJFUkRNQUxFaElML3Z3Z0xTNGZBUVFMRW44SkNRRUVDQmNKS0FrSmF3a0pEUUdhQ3hJU0MvNW9EUWtKYXdrSktna1hDQUFBQUFBQkFBQUFBQVBEQXFRQUZ3QWtRQ0VBQWdBQ2J3QUFBUUJ2QUFFREF3RlVBQUVCQTFnQUF3RURUQmNURXhZRUJSZ3JKUUVtTkQ4Qk5qSWZBUll5TndFMk1oOEJGaFFIQVFZaUFXLyt3d2dJS2drWkNlNEdFUVlCMHdrWkNTb0lDUDNnQ1JraEFUOEpHUWdyQ0FqeEJRVUIxd2tKS2dnYUNQM2FDZ0FBQVFBQS83VUM3d01GQUJjQUVVQU9BQUFCQUc4QUFRRm1IeFlDQlJZckJRRW1ORGNCTmpJZkFSWVVCd0VHRkJjQkZoUVBBUVlpQXBMK2NBa0pBWkFJR2dncUNRbit3d2dJQVRvSUNDc0hGME1CaWdrWkNBR0xDQWdyQ0JvSS9zb0lHUW4reWdnYUNDb0hBQUFBQkFBQS81QUR3Z01zQUJVQUxBQkNBRmdBVDBCTVVVZ09CUVFCQURzeUpSd0VBZ1FDUndjSUFnQUJBRzhBQVFZQmJ3QUdBd1p2QUFNRUEyOEFCQUlFYndVSkFnSUNaaGdXQWdCWFZFdEtRVDQxTkNNaUZpd1lMQXdMQUJVQ0ZRb0ZGQ3NCSVNJR0h3RUhCaFFmQVJZeVB3RVhGalkxRVRRbUFTRXlOaVl2QVRjMk5DOEJKaUlQQVNjbUJoVVJGQllsRVRRbUR3RW5KaUlQQVFZVUh3RUhCaFl6SVRJMkFSRVVGajhCRnhZeVB3RTJOQzhCTnpZbUl5RWlCZ09yL3RVT0J3eGVyUWNIUndnVUNhOWVDeFlPL0k4QktRa0tBZ2hlclFnSVJ3Y1ZDYTFnRFJjU0E0a1dDMTZ0QnhVSlJ3Y0hyMTRNQnc0QktBa04vR1VaQzJDdkNCWUhSd2dJclY0TEJnLysyQW9VQXl3V0MxNnRCeFVKUndjSHIxNE1CdzRCS0FrTi9HUU1FZ2RncndnV0IwY0lDSzFlQ3dZUC90Z0tGUmNCS3c0SERGNnRDQWhIQnhVSnIxNExGZzREY2Y3WUR3WUxYcTBIQjBjSUZBbXRZQTBZRXdBQUFBQUNBQUQvaGdQTEF6RUFPZ0J3QUFxM0FBQUFaaVFCQlJVckpTOEJKaWNtQmc4QkRnRW1KeTRCTmo4Qk5qYzJGeFlYRmhjZUFUOEJOaWNtTHdFbUp5WW5KZ1lIQmc4QkRnRVhGaGNXRnhZMlB3RTJOQ1lCSmljbUJnOEJCaFlYRmhjV1B3RStBUllYSGdFR0R3RUdCd1luSmljbUp5NEJEd0VPQVJjV0Z4WVhIZ0UyTnpZL0FUWTNOaVlDQ3lnUEVRa0ZEZ1FKSEVsTEhDQVlFeDJTR3ljdkxTQVNDZ2tHRmdjMkN3a0dEZ2NkRVNZMUxWNG9JeGlOTWljUER6QXlSMFNNTkRBR0RBRmFORVZEaGpFc0Nnb05LU2dPQ1FvYlNrb2NJQmtUSHBJYUp6QXRIQllLQ1FZV0J6VUdBUVVJRXhJY0tWeGRLU01aa2pVUkVpZ3dCZ1FFQXdJREJBb2NGZzRaRzA1UUhwSVpEZ3NSRHhJS0R3b0NDRFlNRVFnUENCc0pHUW9JRFJZVUdJMHloMEpGTXpjVUZDTTBNUVFRRFFLME1BOFBLRElxQ2hzQ0F3d0RDUWtjRmcwWkcwOVFIcElhREF3U0RCUUxEZ3NDQ1RZRkVBZ05FUlFSR2hFT0ZSUVpralJIUllzQUFBRUFBUC9iQTNVQzNnQXZBRGxBTmlzQkF3RUJSd0FBQkFCdkFBRUNBd0lCQTIwQUF3TnVCUUVFQWdJRVZBVUJCQVFDV0FBQ0JBSk1BQUFBTHdBdk54a1hIQVlGR0NzQkppY21KeVkvQVRZMEx3RW1JZ2NCQmhRWEFSWXlQd0UyTkM4QkpqWTNGaGNXRnhZWEZCWTdBVEkySnk0Qkp5WUJjUUlEQlFJQ0JXc0pDU2dKRndqKy9Ba0pBUVFJRndrb0NRbHBDUWdLYWxwWU5qZ0dFZ3M2RFE0Q0I0aHdkUUgyQXdNSEJna0Zhd2tYQ1NvSkNmNzhDQmNKL3Z3SUNDa0lHQWhzQ0JZREJEWTFXRnRyQ3hBU0RZcmxRMFVBRFFBQS81QURtd01zQUE4QUh3QXZBRDhBVHdCZkFHOEFmd0NQQUo4QXJ3Qy9BTThBd0VDOUdnRUFBQUVDQUFGZ0hRWWNCQnNGQWdjRkFnTUlBZ05nSUF3ZkNoNEZDQTBMQWdrT0NBbGdJeElpRUNFRkRoTVJBZzhVRGc5Z0poZ2xGaVFGRkJVVkZGUW1HQ1VXSkFVVUZCVllHUmNDRlJRVlRNTEFzckNpb0pLUWdvQnljR0pnVWxCQ1FESXdJaUFTRUFJQXlzZkF6OExQdXJld3Y3Sy9xcWVncjZLdm1wZVFuNUtmaW9lQWo0S1BlbmR3ZjNKL2FtZGdiMkp2V2xkUVgxSmZTa2RBVDBKUE9qY3dQekkvS2ljZ0x5SXZHaGNRSHhJZkNnY0FEd0lQSndVVUt3RWhJZ1lkQVJRV015RXlOajBCTkNZRkl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWUZJeUlHSFFFVUZqc0JNalk5QVRRbUlTTWlCaDBCRkJZN0FUSTJQUUUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1lGSXlJR0hRRVVGanNCTWpZOUFUUW1JU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZRkl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWURmdnpzREJFUkRBTVVEQkVSL1kydERCRVJESzBMRWhJQkthME1FUkVNclFzUkVRRW9yUXNTRWd1dERCRVIvWTJ0REJFUkRLMExFaElCS2EwTUVSRU1yUXNSRVFFb3JRc1NFZ3V0REJFUi9ZMnREQkVSREswTEVoSUJLYTBNRVJFTXJRc1JFUUVvclFzU0VndXREQkVSL1kydERCRVJESzBMRWhJQkthME1FUkVNclFzUkVRRW9yUXNTRWd1dERCRVJBeXdTQzJBTUVSRU1ZQXNTNXhJTE9nc1NFZ3M2Q3hJU0N6b0xFaElMT2dzU0VnczZDeElTQ3pvTEVzQVNDem9MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFaElMT2dzU0VnczZDeExCRVF3NURCRVJERGtNRVJFTU9Rd1JFUXc1REJFUkREa01FUkVNT1F3UndCSUxPZ3NTRWdzNkN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFZ0FBQVFBQUFBQUROQUpQQURBQU9VQTJKUTRDQUFFWkFRUUFBa2N0QlFJQlJRVUJCQUFFY0FJQkFRQUFBVlFDQVFFQkFGZ0RBUUFCQUV3QUFBQXdBREEySGlZb0JnVVlLeVVpSnlZbkF3Y09BU3NCSWlZOUFUUTJPd0UzUGdFZUFSY1ROejRCSGdFZkFUTXlGaDBCRkFZckFTSW1Md0VIRGdFQjZnY0hEQVJPUVFNUENWb0lEQXdJUmx3RUVCUVBBazlvQkJBU0RnUTBXZ2dNREFodUNROEVJWEFFRG9JRUJoQUJPSlVKQ2d3SUZBZ00xQWtLQWd3Sy9zVG5DUW9DQ3doNERBZ1VDQXdLQ0UzM0NBb0FDQUFBQUFBRERBS0tBQThBSHdBdkFEOEFUd0JmQUc4QWp3RFlRQnlGQVJNT0RRRUZBR2hnU0VBb0lBWUVCVmhRT0RBWUVBWUNBd1JIUzdBVlVGaEFQUkVCRHc0T0QyTVNFQlVERGdBVEFBNFRZUlFCQUEwSkFnVUVBQVZnREFnQ0JBc0hBZ01DQkFOZ0NnWUNBZ0VCQWxRS0JnSUNBZ0ZZQUFFQ0FVd2JRRHdSQVE4T0QyOFNFQlVERGdBVEFBNFRZUlFCQUEwSkFnVUVBQVZnREFnQ0JBc0hBZ01DQkFOZ0NnWUNBZ0VCQWxRS0JnSUNBZ0ZZQUFFQ0FVeFpRRE54Y0FFQWlZZUNnSDE4ZVhoMWRIQ1BjWTlzYW1SaVhGcFVVa3hLUkVJOE9qUXlMQ29rSWh3YUZCSUtCd0FQQVE4V0JSUXJBU0VpQmhVUkZCWXpJVEkyTlJFMEpnRVVCaXNCSWlZOUFUUTJPd0V5RmhVMUZBWXJBU0ltUFFFME5qc0JNaFlWRnhRR0t3RWlKajBCTkRZN0FUSVdGVFVVQmlzQklpWTlBVFEyT3dFeUZoVVhGQVlyQVNJbVBRRTBOanNCTWhZVk5SUUdLd0VpSmowQk5EWTdBVElXRlJNak5UUW1JZ1lkQVNNMU5DWWlCaDBCSXlJR0hRRVVGak1oTWpZOUFUUW1Bdmo5K0FnTUl4a0J1QmtqRFA2UURBZ29DQXdNQ0NnSURBd0lLQWdNREFnb0NBeU1EQWdvQ0F3TUNDZ0lEQXdJS0FnTURBZ29DQXlNREFnb0NBd01DQ2dJREF3SUtBZ01EQWdvQ0F3b01oY2hHTFFYSVJneUdTTU1DQUlJQ0F3akFhNE1DUDdVR1NNakdRRXNDQXorNkFnTURBZ29DQXdNQ0dRSURBd0lLQWdNREFpMENBd01DQ2dJREF3SVpBZ01EQWdvQ0F3TUNMUUlEQXdJS0FnTURBaGtDQXdNQ0NnSURBd0lBUVFVRVJjWEVSUVVFUmNYRVJRakdSUUlEQXdJRkJrakFBQUdBQUQvdHdPYkF3VUFEd0FmQUM4QVB3QlBBRjhBVjBCVURnUU5BZ3dGQUFFQWJ3VURBZ0VHQVc4UkNoQUlEd1VHQndadkN3a0NCd2RtVWxCQ1FESXdJaUFTRUFJQVdsZFFYMUpmU2tkQVQwSlBPamN3UHpJL0tpY2dMeUl2R2hjUUh4SWZDZ2NBRHdJUEVnVVVLd0VqSWdZVkVSUVdPd0V5TmpVUk5DWWhJeUlHRlJFVUZqc0JNalkxRVRRbUlTTWlCaFVSRkJZN0FUSTJOUkUwSmdFaklnWVZFUlFXT3dFeU5qVVJOQ1loSXlJR0ZSRVVGanNCTWpZMUVUUW1JU01pQmhVUkZCWTdBVEkyTlJFMEpnRVhyUXdSRVF5dEN4SVNBU210REJFUkRLMExFUkVCS0swTEVoSUxyUXdSRWYyTnJRd1JFUXl0Q3hJU0FTbXREQkVSREswTEVSRUJLSzBMRWhJTHJRd1JFUU1GRVF6K3VRc1JFUXNCUnd3UkVReit1UXNSRVFzQlJ3d1JFUXordVFzUkVRc0JSd3dSL2pNU0MvNjVEQkVSREFGSEN4SVNDLzY1REJFUkRBRkhDeElTQy82NURCRVJEQUZIQ3hJQUFBQUFCZ0FBQUFBRHdnS2xBQThBSHdBdkFEOEFUd0JmQUVSQVFRQUNBUUp2Q3dFSkNBbHdBQUVBQUFNQkFHQUFBd1lCQkFVREJHQUhBUVVJQ0FWVUJ3RUZCUWhZQ2dFSUJRaE1YVnBWVWsxS05UVTFOVFUxTlRVeURBVWRLeE1VQmlzQklpWTlBVFEyT3dFeUZoVWhOQ1lqSVNJR0hRRVVGak1oTWpZMUJUUW1Ld0VpQmgwQkZCWTdBVEkyTlNVMEppTWhJZ1lkQVJRV015RXlOalVGTkNZckFTSUdIUUVVRmpzQk1qWTFKVFFtSXlFaUJoMEJGQll6SVRJMk5ab1NDem9MRVJFTE9nc1NBeWdTQy8xZkRCRVJEQUtoQ3hMODJCSUxPZ3NSRVFzNkN4SUMyeElML2F3TUVSRU1BbFFMRXYwbEVnczZDeEVSQ3pvTEVnTW9FZ3Y5WHd3UkVRd0NvUXNTQWs0TEVSRUxPZ3dSRVF3TUVSRU1PZ3NSRVF2VEN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hJU0M5TUxFaElMT2dzU0VnczZDeElTQ3pvTEVoSUxBQUFBQUFZQUFBQUFBOElDcFFBUEFCOEFMd0EvQUU4QVh3QThRRGtDQVFBREFRRUVBQUZnQmdFRUJ3RUZDQVFGWUFvQkNBa0pDRlFLQVFnSUNWZ0xBUWtJQ1V4ZFdsVlNUVW8xTlRVMU5UVTFOVElNQlIwckV6UW1Ld0VpQmgwQkZCWTdBVEkyTlNVMEppTWhJZ1lkQVJRV015RXlOalVGTkNZckFTSUdIUUVVRmpzQk1qWTFKVFFtSXlFaUJoMEJGQll6SVRJMk5RVTBKaXNCSWdZZEFSUVdPd0V5TmpVbE5DWWpJU0lHSFFFVUZqTWhNalkxbWhJTE9nc1JFUXM2Q3hJREtCSUwvVjhNRVJFTUFxRUxFdnpZRWdzNkN4RVJDem9MRWdMYkVndjlyQXdSRVF3Q1ZBc1MvU1VTQ3pvTEVSRUxPZ3NTQXlnU0MvMWZEQkVSREFLaEN4SUNpQXdSRVF3NkN4RVJDem9NRVJFTU9nc1JFUXZUQ3hJU0N6b0xFaElMT2dzU0VnczZDeElTQzlNTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWhJTEFBQUFBUUFBLzZBRHdnTWJBQ3NBRTBBUUFnRUFBUUJ2QUFFQlpqNGVNd01GRnlzQkV4NEJNeUV5RmdZUEFRNEJGeE1XRGdFdkFTWWlEd0VHTGdFM0V6WW1Md0V1QVRZeklUSTNFejRCRmdJUFdBTVBDUUVoRGhBQ0Mrb0lCUU5jQkEwWUMra0hFd2pyQ3hrTkJWZ0RCUWZyQ3dJUkRRRWhGZ1ZhQkJjWEF3UCs4d2dKRlJzSXJRWVNDZjdyRFJZR0NLb0ZCYW9JQmhZTkFSVUpFZ2F0Q0JzVkVRRVBEUWtMQUFBQUFRQUEvN1lDN3dNRkFCY0FFVUFPQUFFQUFXOEFBQUJtSHhZQ0JSWXJDUUVXRkFjQkJpSXZBU1kwTndFMk5DY0JKalEvQVRZeUFWZ0JqZ2tKL25JSUdRa3FDUWtCT1FrSi9za0pDU29JR0FMOS9uWUlHZ2orZGdrSktnZ2FDQUUyQ0JvSUFUWUlHZ2dxQ0FBQUFRQUFBQUFEbXdKWkFCY0FJRUFkQXdFQkFnRnZBQUlBQUFKVUFBSUNBRmdBQUFJQVRCTVRGeElFQlJnckNRRUdJaWNCSmpRL0FUWXlGd0VXTWpjQk5qSWZBUllVQTVQK2RnZ2FDUDUyQ1FrcUNSa0lBVFlJR2dnQk5nZ2FDQ29JQWZ6K2Nna0pBWTRJR2dncUNRbit4d2tKQVRjSkNTb0lHQUFBQUFRQUFQKzJBOVVDdUFBa0FEUUFSQUJVQUVwQVJ3TUJBQWdKQ0FBSmJRQUNDUW9KQWdwdEFBUUtCSEFBQlFBR0FRVUdZQWNCQVFBSUFBRUlZQUFKQWdvSlZBQUpDUXBZQUFvSkNreFNUMHBITlRVMU9CY1RGVGdSQ3dVZEt5VW1JZzhCQmlZOUFUUW1Ld0VpQmgwQkZBWWlMd0VtSWc4QkJoUWZBUll5UHdFMk5DY0JOQ1lqSVNJR0hRRVVGak1oTWpZMUZUUW1JeUVpQmgwQkZCWXpJVEkyTlJVMEppTWhJZ1lkQVJRV015RXlOalVCMVFnWUNFVUpHQkVNT2dzUkRCQUZSUWtYQ1NvSkNkMEpGd25mQ0FnQjFSSUwvVGdMRVJFTEFzZ0xFaElML2ZrTUVSRU1BZ2NMRWhJTC9ya0xFaElMQVVjTEV1OElDRVlJQ1EzK0N4RVJDLzRKQ2dWR0NBZ3JDQmdJM1FrSjN3Z1lDQUhWREJFUkREa01FUkVNclFzUkVRczZDeElTQzYwTEVoSUxPZ3NTRWdzQUFRQUEvNUVEd2dNckFFa0FQRUE1QUFJQkFtOERBUUVBQVc4SUFRWUZCd1VHQjIwQUJ3ZHVCQUVBQlFVQVZBUUJBQUFGV0FrQkJRQUZURUUvSkJRakxTTWtGU01sQ2dVZEt3RW5KZ1lkQVNNaUpqMEJNekkrQVM4QkppSVBBUVlXT3dFVkZBWXJBVFUwSmc4QkJoUWZBUlkyUFFFek1oWWRBU01pQmg4QkZqSS9BVFltS3dFMU5EWTdBUlVVSGdFL0FUWTBBN3lnQ0JQQUNRcHhDUTBCQmE0RkVBV3VDQXdPYlFvSndCTUlvQVFFb0FnVHdBa0tjUTRNQ2EwRkVBYXRDQXNQYlFvSndBb05CS0FHQVd5dENBc1Bid29Kd0FvTkJLQUZCYUFJRThBSkNuRU9EQWl1QlJBRnJnZ01EbTBLQ2NBVENLQUVCS0FJRThBSkNuRUpEUUVHclFjUUFBQUFCUUFBLzdjRDZBTUZBQThBSHdBdkFEOEFWUUE5UURvQUJnQUdid0FIQXdkd0FBQUFBUVFBQVdBSUFRUUpBUVVDQkFWZ0FBSURBd0pVQUFJQ0ExZ0FBd0lEVEUxTEp6VTFOVFUxTlRVeUNnVWRLd0UwSmlNaElnWWRBUlFXTXlFeU5qVUROQ1lyQVNJR0hRRVVGanNCTWpZMUV6UW1JeUVpQmgwQkZCWXpJVEkyTlFFMEppc0JJZ1lWRVJRV093RXlOalVCSmdZZEFTTWlCaDBCRkJZN0FSVVVGajhCTmpRbkErZ1JEUDY1Q3hJU0N3RkhEQkZORVF6NkN4SVNDL29NRVUwUkRQNjVDeElTQ3dGSERCSCtNeElMT2dzU0VnczZDeEwrbWdrU2ZRc1NFZ3Q5RXdpZkJRVUNkUXNTRWdzNkN4SVNDLzVzREJFUkREa01FUkVNQVNBTUVSRU1PZ3NSRVFzQmxBd1JFUXo4N0F3UkVRd0NXQWdMRG5BUkREb0xFWElPREFtdEJnOEdBQUFBQWdBQS83Y0RkUUs0QUE4QU5BQnNTN0FSVUZoQUpBVUJBd1FEYndBRUFnUnZCd0VDQUFBQ1l3WUJBQUVCQUZRR0FRQUFBVmtBQVFBQlRSdEFJd1VCQXdRRGJ3QUVBZ1J2QndFQ0FBSnZCZ0VBQVFFQVZBWUJBQUFCV1FBQkFBRk5XVUFYRVJBQ0FDd3BJeUViR0JBMEVUUUtCd0FQQWc4SUJSUXJKU0VpQmgwQkZCWXpJVEkyUFFFMEppVW1KeTRCTlJFME5qc0JNaFlWRVJRZUFSY1dQZ0UxRVRRMk93RXlGaFVSRkFjR0J3WURXUDA0Q3hJU0N3TElDeElTL29SSFBEbEVGaEFuRUJZbVFpZ3RTeXdXRUNjUUZpY21RRUlxRVFzNkRCRVJERG9MRVUwRUp5WjlSd0VHRUJZV0VQNzRLVWN0QWdNb1NTd0JEUkFXRmhEKzgweEFQaU1rQUFBQUJRQUFBQUFETkFKaUFCa0FNUUE2QUVNQVRBQmJRRmdMQVFFQUVRRUNBd0pIQUFBQkFHOEpBUUVJQmdJRUF3RUVZQXdIQ3dVS0JRTUNBZ05VREFjTEJRb0ZBd01DV0FBQ0F3Sk1SVVE4T3pNeUd4cEpTRVJNUlV4QVB6dERQRU0zTmpJNk16b3NLaG94R3pFbkRRVVZLd0VtTnpZMU5DNEJJeUlHQng0Q0ZSUUhOamMySHdFV05pY0JJZzRCRlJRWEZnOEJCaFkvQVRZWEZqTXlQZ0UwTGdFSElpWTBOaklXRkFZeklpWTBOaklXRkFZeklpWTBOaklXRkFZREZ3SUVHenRsUENaSEhUNWpPUlVlR3djRlFBZ05BdjVsUEdVN0hBTUJGUU1OQ1VBSUJEVS9QR1U3TzJXMEVCZ1lJUmNYWnhBWUdDRVhGMmNRR0JnaEZ4Y0JIUWdFTVRZNVlEa1pGZzFOYmo4M0x3Z1FCQU1YQXcwSkFTTTVZRGszTUFjRlF3a05BeGNDQXg4NVlISmdPZm9ZSVJjWElSZ1lJUmNYSVJnWUlSY1hJUmdBQUFBQUJnQUFBQUFEQWdLVUFCSUFLZ0E2QUVvQVdnQm9BSFZBY2hnQkJnUXpLd0lEQUNnQkN3TlRTd0lLQzBNN0FnZ0pCVWNBQUFZREJnQURiUUFFREFFR0FBUUdZQWNOQWdNQUN3b0RDMkFBQ2dBSkNBb0pZQUFJQUFVQ0NBVmdBQUlCQVFKVUFBSUNBVmdBQVFJQlRCVVRaV05YVlU5TlIwVS9QVGMxTHkwbEloMGFFeW9WS2lJMUVRNEZGeXNsRVNJR0ZSRVVGak1oTWpZMUl5SW5KaWNtQVNNaUpqMEJOQ1lyQVNJR0ZSRVVGak1oTWpZOUFUUW1KVFEyT3dFeUZoMEJGQVlyQVNJbU5SY1VCaXNCSWlZOUFUUTJPd0V5RmhVM0ZBWXJBU0ltUFFFME5qc0JNaFlWTnljbUlnWWRBUlFXT3dFeU5qUUJJaGtqSXhrQkxCa2o4Q3NSSGc0UUFjeGtHU01NQ0tBWkl5TVpBU3daSXd6K3VBd0lQQWdNREFnOENBemNEQWkwQ0F3TUNMUUlEQ2dNQ053SURBd0kzQWdNVEZ3RURBZ1lFRUlHQ053QlFDTVovb1FaSXlNWkJBZ1lIQUU4SXhsa0NBd2pHZjZFR1NNakdmQUlEQ2dJREF3SUZBZ01EQWp3Q0F3TUNCUUlEQXdJWkFnTURBZ1VDQXdNQ0tSY0JBZ0dRaEFZQ0F3QUFRQUEvN1VEbndNRkFFRUFKa0FqQXdFQUFRQnZBQUVDQWdGVUFBRUJBbGdBQWdFQ1RBSUFQRGswTVFCQkFrRUVCUlFyRXpNeUZoMEJGQlkzTmpjK0FSY1dGeDRCRnhZR0J3NEJCeTRCUFFFME5qYytBVGMyTnpZdUFTY21KeVlHQndZSEJoWTdBVElXSFFFVUJpTWhJaVkxRVRRMmFqb0xFUTBLQ1F0SXdXaEpQbGRoQWdJNk56U0dTZzhVRHd4RmRTVVdDUThXUnpjcElFMlNOZ3dMQkE4T2h3c1FEZ3YrbmdvUEVRTUZFUXlHRGdnSURBZEpPUlFQS1RteVpVNlZPRGRBQmdJU0RUa01Ed0lHU1Q0bEpEOTdaaUVYQ0JNb05nc1FDd3dTQ3p3TEVBOEtBVjRNRVFBQUFBQUdBQUQvdHdQQ0F3VUFEd0FmQUM4QVB3QlVBSGdBL2t1d0VWQllRRndBQVFvSUNnRUliUUFBQ0FNREFHVUFDUUlMQWdrTGJRQUtGQUVJQUFvSVlBQURFUUVDQ1FNQ1lSVUJDd0FNQlFzTVlCSUJCQUFGRFFRRllBQU5BQkFHRFJCZ0FBOEhEZzlVRXdFR0FBY09CZ2RnQUE4UERsZ0FEZzhPVEJ0QVhRQUJDZ2dLQVFodEFBQUlBd2dBQTIwQUNRSUxBZ2tMYlFBS0ZBRUlBQW9JWUFBREVRRUNDUU1DWVJVQkN3QU1CUXNNWUJJQkJBQUZEUVFGWUFBTkFCQUdEUkJnQUE4SERnOVVFd0VHQUFjT0JnZGdBQThQRGxnQURnOE9URmxBTjFkVlFVQXlNQ0lnRWhCemNYQnVhV1poWDE1Y1ZYaFhlRTlNUjBSQVZFRlVPamN3UHpJL0tpY2dMeUl2R2hjUUh4SWZOVE1XQlJZckFSVVVCaU1oSWlZOUFUUTJNeUV5RmdFaE1qWTlBVFFtSXlFaUJoMEJGQllGSVNJR0hRRVVGak1oTWpZOUFUUW1CeUVpQmgwQkZCWXpJVEkyUFFFMEpnRXpGUlFXT3dFeU5qVVJOQ1lyQVNJR0hRRVVGaE1qSWdZZEFSUVdPd0VWSXlJR0hRRVVGanNCTWpZOUFUUW1Ld0UxTXpJMlBRRTBKZ1BDRWd2OStRd1JFUXdDQndzUy9kd0JXZ3NTRWd2K3Bnd1JFUUlUL2ZrTUVSRU1BZ2NMRWhLNC9xWU1FUkVNQVZvTEVoTDlRREFTQ3hRTEVSWVFWd3NSRWEra0N4RVJDMzF6RUJZV0VLTU1FUkVNZlhRUUZoWUMxVG9MRVJFTE9nc1NFdjdlRWdzNkN4SVNDem9MRXEwUkREa01FUkVNT1F3UndCSUxPZ3NTRWdzNkN4SUNaL0FNRVJFTUFSY1FGaEVNRXdzUy9vQVNDeE1NRVUwWEVKb1FGaEVNRXdzU1RSWVFtaEFYQUFRQUFQK1FBM1VETUFBZ0FDSUFNZ0JHQUV4QVNSNEJBQUZHT3dJR0JBSkhBZ2NDQUFFRUFRQUViUUFFQmdFRUJtc0FBd0FCQUFNQllBQUdCUVVHVkFBR0JnVllBQVVHQlV3Q0FEZzFNQzBvSlJvWUVRNEpDQUFnQWlBSUJSUXJFek15UFFFMFBnRVhIZ0lWTlJRN0FUSTlBVFFuSmljbUJ3WUhEZ0VISGdFbkZRVTBKaU1oSWdZVkVSUVdNeUV5TmpVbEZnWXJBU0ltUHdFdUFUNENIZ0VWRkFZSDFFMFRPRjgzTWxFdkZFMFRMQ3hKUzFkUVJFRk9BZ0lMRFFLMUxTRDltQjh1TGg4Q2FDQXQvdGdDREFxTUNnc0NJaFlXQ2lnN05TQVZFd0hsRVFJMld6TUVBemhhTXdZUkVRSldTVWNvS1FNRUxDcUxVUWdKRVFpaklDMHRJUDZTSHk0dUgwQUpFQTRMY3c4eE9DZ0xGaTBkRnlnTUFBQUFBUUFBLzdjRHd3TUZBQmNBR0VBVkFnRUFBUUJ2QUFFQlpnSUFEZ3NBRndJWEF3VVVLd0VoSWc0QkZ3RVdGUkVVRmpzQk1qWTFFVFEzQVRZdUFRT2gvS29PRWdFSUFYVVJFd3c2Q3hBVkFYa0lBUklEQlJJYUN2NU1GQjcrNnd3UkVRd0JGUnNYQWJRS0doSUFBUUFBQUFBRG5BSlhBQmNBSUVBZEF3RUJBZ0Z3QUFBQ0FnQlVBQUFBQWxnQUFnQUNUQk1URnhJRUJSZ3JOd0UyTWhjQkZoUVBBUVlpSndFbUlnY0JCaUl2QVNZMFZRR0tDQm9JQVlvSkNTb0lHZ2oreWdnYUNQN0tDQmtKS2dmQUFZNEpDZjV5Q0JrSktna0pBVHNKQ2Y3SENRa3FDUmNBQWdBQS81QUR3Z01zQUJRQVJBQTZRRGNJQVFBRkFHOEhBUVVHQlc4QUJnTUdid0FEQWdOdkJBRUNBUUp2QUFFQlpnRUFQRHM0TnpRekpDTWdIeHdiQ3dvQUZBRVVDUVVVS3dFaUJ3WUhCaFFYRmhjV01qYzJOelkwSnlZbkpnTVhGaFFQQVFZaUx3RW1JZzhCQmlJdkFTWTBQd0UyTkM4QkpqUS9BVFl5SHdFV01qOEJOaklmQVJZVUR3RUdGQUgwZm10cFBEOC9QR2xyL0d4b1BUOC9QV2hzSUpZR0JqWUZFQVdXQmhBRmxnWVFCVFlHQnBZR0JwZ0dCallGRUFhWUJSQUdsZ1VRQlRZR0JwWUVBeXcvUFdocy9HeG9QVDgvUFdocy9HeG9QVC8rSTVZR0VBVTJCZ2FXQmdhV0JnWTJCUkFHbGdVUUJwZ0ZFQVUyQmdhWUJRV1dCZ1kxQmhBRmxnWVFBQUVBQVAvdkE4RUN6UUFqQUMxQUtnQUNBd0p2QUFFQUFYQUFBd0FBQTFRQUF3TUFXQVFCQUFNQVRBSUFIaHNURWdzS0FDTUNJd1VGRkNzVElUSVdEd0VHRkI4QkZqSTNBVFkwSndFbUlnOEJCaFFmQVJZR0l5RWlCaDBCRkJaQkFuOE5DUW00Q1FrcUNSY0lBVkVKQ2Y2dkNCY0pLQWtKdUFrSkRmMkJDeEVQQVNRWUNMa0lHQWdyQ0FnQlV3Z1lDQUZSQ0FncENCY0p1UW9ZRUFzNkRCTUFBQUFBQWdBQS81QUR3Z01zQUNNQVNnQktRRWNBQXdVQ0JRTUNiUUFDQkFVQ0JHc0lBUUFBQVFZQUFXQUFCZ0FGQXdZRllBQUVCd2NFVkFBRUJBZFlBQWNFQjB3Q0FFVkNQVG8xTWkwcUhoc1RFZ29IQUNNQ0l3a0ZGQ3NCSVNJR0hRRVVGanNCTWhZSEFRWVVId0VXTWpjQk5oWWRBUlFXT3dFeU5qVVJOQ1lEQndZZEFSUUdJeUVpSmpVUk5EWTdBVEkyUHdFMkppTWhJZ1lWRVJRV015RXlOalVSTkNZRHFmNlFEQklTREpnT0Nncit1UWtKS0FrWENRRkdDUllVQ3pnTEVnNzZRUklSQy81c0RCRVJETjBNRlFkQ0NBa04vb01mTFMwZkFoc2dMUmdETEE0TE9nd1ZGZ24rdWdrWENTZ0pDUUZIQ0FrTm1Bc1ZGQXdCYmcwTy9qeEVFQmpiREJFUkRBR1VDeEVKQ1VFSkdDMGcvZVVnTFM0ZkFYME5DUUFBQlFBQS83Y0Q2QU1GQUJVQUpRQTFBRVVBVlFCTFFFZ0FDQUlJYndBSkJRbHdBQUlBQXdBQ0EyQUdDZ0lBQndFQkJBQUJZQUFFQlFVRVZBQUVCQVZZQUFVRUJVd0JBRk5RUzBoRFFEczRNekFyS0NNZ0d4Z1FEZ0FWQVJVTEJSUXJBU00xTkNZUEFRWVVId0VXTmowQk16STJQUUUwSmlVMEppTWhJZ1lkQVJRV015RXlOalVETkNZckFTSUdIUUVVRmpzQk1qWTFFelFtSXlFaUJoMEJGQll6SVRJMk5RRTBKaXNCSWdZVkVSUVdPd0V5TmpVQk8zc1RDSjhFQko4SkVuc01FeE1Db1JFTS9ya0xFaElMQVVjTUVVMFJEUG9MRWhJTCtnd1JUUkVNL3JrTEVoSUxBVWNNRWY0ekVnczZDeElTQ3pvTEVnR3JjUThMQ0swR0VBV3RDUXdPYmhFTE9nd1J5Z3NTRWdzNkN4SVNDLzVzREJFUkREa01FUkVNQVNBTUVSRU1PZ3NSRVFzQmxBd1JFUXo4N0F3UkVRd0FBd0FBLzVBRGRRTXdBQUVBTEFCQUFFaEFSVUExQWdZQUFVY0FBZ0VBQVFJQWJRUUhBZ0FHQVFBR2F3QURBQUVDQXdGZ0FBWUZCUVpVQUFZR0JWZ0FCUVlGVEFNQ01pOG5KQjhlR1JjUURna0hBaXdETEFnRkZDc1RGUVVoTlRRK0FUYzJIZ0VYSGdFN0FUSTJKeTRCSnlZSEJnY09BUWNWSWdZVkVSUVdNeUV5TmpVUk5DWURGZ1lyQVNJbVB3RXVBVDRDSGdFVkZBWUh3QUpvL2d3dlVqSXVVVHNNQWdvSFR3Z01BUTljUWtSTVVFUkJUZ0lmTGk0ZkFtZ2dMUzM3QWd3S2pBc0xBeUlYRlF3b096VWdGUk1COWdoV1dqTllPQU1ESWtFcUJnb1BDRWx6SHg4REJDd3FqRkJlTFNEK2toOHVMaDhCYmlBdC9vVUpFQThLY3hBeE55Z0xGaTBkRnlnTUFBSUFBQUFBQXpRQ2dBQVBBRWdBVkVCUk1SWUNCd0lCUndBRUFnUnZCZ3NDQWdrQkJ3TUNCMkFGQVFNQUNBQURDR0FLQVFBQkFRQlVDZ0VBQUFGWUFBRUFBVXdSRUFFQVJVUkFQanM2TnpZdkxTUWpHaGdRU0JGSUNnY0FEd0VQREFVVUt5VWhJZ1lkQVJRV015RXlOajBCTkNZVElnWVZGQllYRGdFbkxnRW5ORGMrQVRVMEppSUdGUlFXRnhZVkRnRUhCaVluUGdFMU5DWWlCaFFXTXhjZUFUTWhNalkvQVRJMk5DWUN4LzVhQnd3akdRRlVHU01MS1JrakN3b05OeUlvT1FJQ0VSVWpNaU1WRVFJQ09TZ2lPQXdLQ3lNeUl5TVpIQUVMQndHcUJ3b0NIQmtqSTZBTENBRVpJeU1aQVFnTEFab2pHUTBaQ0I0akFRSTVLQkVJQng0VEdTTWpHUklmQndnUktEa0NBaVFlQ0JrTkdTTWpNaVBXQndrSkI5WWpNaU1BQUFBQUFRQUFBQUFER1FKNkFCd0FHRUFWQWdFQUFRQnZBQUVCWmdFQUZCSUFIQUVjQXdVVUt3RWlCd1lIQmhVVUZ4WVBBUVlXUHdFMkZ4WXpNamMyTnpZdUFTY21BZXhTUmtNb0tTWUZBeHdFRWd4WUNRaElWbEpHUXlncEFWRkVSZ0o1SmlWQVFVeElRUWdJV1F3UkJCOERCU29tSlVCQm1JRWxKZ0FBQUFFQUFBQUFBMllDUlFBTUFCaEFGUUFCQUFGdkFnRUFBR1lDQUFnSEFBd0NEQU1GRkNzbElTSXVBVGNCTmpJWEFSWUdBMGo5V0FvT0FRY0JUUWtmQ0FGUkNnNTNEaFFKQVpjTURQNXBEaDBBQWdBQS80OER3Z016QUIwQUtnQWtRQ0VCQVFJQkZnRUFBZ0pIQUFFQ0FXOEFBZ0FDYndBQUFHWW9KeUloR1JnREJSUXJCUUUyTnpZbkxnTUhEZ0VIQmg0Q0Z4WTNOamNCRmpJL0FUNEJBVFErQVRJZUFSUU9BU0l1QVFPNi92NG9FUk1LQzF1TnBVNUxjUndjRUZhSlVVaEZRamdCQUFrWENTZ0pBZnpZUTNLR2NrTkRjb1p5UXhVQkFEaENSVWhTaVZVUUhCeHlTazZtakZ3TENoSVJLUDhBQ0Fnb0NSa0Iza055UTBOeWhuSkRRbklBQWdBQS8zOEQwUU03QUJRQVJBQTFRREkxQVFNRUxRRUFBeDBCQVFBRFJ3QUVBd1J2QlFFREFBTnZBZ0VBQVFCdkFBRUJaa0UvT1RjeUx5b25JaDhaRndZRkZDc0JKaWNtQnc0QkJ3WVhIZ0VYRmpjK0FUYzJKeVlERkFZckFTSUdIUUVVQmlzQklpWTlBVFFtS3dFaUpqMEJORFk3QVRJMlBRRTBOanNCTWhZZEFSUVdPd0V5RmhVRE8xbDVkWFY1c1I4Zkh4K3hlWFYxZUxFZ0h4OGZhd3NJMUFjTURBZE5DUXNLQ2RNSkN3MEgwd2tLRFFkTkJ3d0tDZFFIREFLbFdCOGZIeCt4ZVhWMWViSWdIaDRnc25sMWRYbis3QWtMQ3dqVEJ3MExDZE1KQ2dzSlRRY01DZ25VQnd3TENOUUpDZ3dIQUFFQUFQK1NBOElETEFCekFJVkFnaDRWQWdFREp3d0NBQUZoUmdJS0NWaFBBZ3dLQkVjQUJBTUVid1VCQXdFRGJ3Y0JBUUFCYnhBQkNna01DUW9NYlE0QkRBMEpEQTFyQUEwTmJnZ0dBaElFQUFrSkFGUUlCZ0lTQkFBQUNWZ1JEd3NEQ1FBSlRBRUFibXhtWldOaVcxcFZVazFNUlVSQ1FUczVORElzS3lrb0lTQWJHQk1TQ3dvSUJ3QnpBWE1UQlJRckFTTTNOalF2QVNZaUR3RWpOVGMyTkM4QkppSVBBVFUwSmlzQklnWWRBU2NtSWc4QkJoUWZBUlVqSnlZaUR3RUdGQjhCSXlJR0hRRVVGanNCQndZVUh3RVdNajhCTXhVSEJoUWZBUll5UHdFVkZCWTdBVEkyUFFFWEZqSS9BVFkwTHdFMU14Y1dNajhCTmpRdkFUTXlOajBCTkNZRHBZdFZDQWdoQnhJR2xHMlVCd2NoQnhJR1ZCSUxPZ3NTVkFjU0JpRUhCNVJ0bEFjU0JpRUhCMVdMQ3hFUkM0dFZCd2NmQ0JFR2xHK1VCd2NmQ0JNR1ZCQUxPZ3NVVkFnUkJoOElDSkp0bEFnU0JSOElDRk9MQ3hJU0FaaFVDQkVHSVFjSGxHMlVDQklGSVFnSVZZc0xFaElMaTFVSUNDRUhFZ2FVYlpRSEJ5RUhFZ1pVRWdzNkN4SlVCeElHSHdjSGxHdVVCeE1GSHdjSFZZc01GUllMaTFVSEJ4OEhFZ2FRYlpRSEJ4OElFUVpXRWdzNkN4SUFBQUFDQUFELzJnUEZBdDBBSFFBN0FDaEFKUTRCQVFBVkFRSUJBa2NBQUFFQWJ3TUJBUUlCYndBQ0FtWWZIakl3SGpzZk95a0VCUlVySlNZM05qVTBKeVluSmlNaUJ3WUhIZ0VYRmhVVUJ6WTNOaDhCRmpZbkFTSUhCZ2NHRlJRWEZnOEJCaFkvQVRZWEZqTXlOelkzTmpRbkppY21BNWNEQlNrdEswcE5XRDQ2TnkxaW9pNHdHeHNqRGdsMUNRc0MvYXRZVFVrckxTZ0hCU29EQ3dsMURnbE9XMWxNU2lzdExTdEtUUDROQ2toTVUwaEdLU29XRlNZTGExSlZZRWsvQ1JJRkF5OENDd2tCdkNvcFJraFRUa1lOQ25VSkRBTXZBd1V0S2lsR1NLVklSU2txQUFBREFBQUFBQU1SQW5ZQUJRQVpBRThBWlVCaUxoOFhGZ0FGQkFGTEN3SUNBQUpIQ1FFQkJ3UUhBUVJ0QmdFRUFBY0VBR3NBQWdBRkFBSUZiUUFJQlFod0NnRURBQWNCQXdkZ0FBQUNCUUJTQUFBQUJWZ0FCUUFGVEJzYUJ3WklSak14TFNzbkppSWdHazhiVHhBUEJoa0hHUklMQlJVckFRWVZJelEzSlNNaUJoMEJGQjhCRmpJL0FUWTBMd0UxTkNZbklnY09BUThCSXlJR0h3RVdNajhCTmlZckFUVStBak15RmhjV0J3NENCd1ltSnlZUEFRWVdGeDRCTno0Q056WW5MZ0VCR1FFOEFRRW1IZ1lKQkZRRkRBUVZCUVZHQ1JWSlB6MU5CUUV0Q2dnR1N3VU9CRXNHQ0Fvc0JUMWhPRUJxR3gwSEJUbFhMelZoSXd3S0dBTUNCU2xyUEVkN1RBVUdKU09GQVhJSERRMEhlQWtHZ3dVR1ZBUUVGUVVNQkVkeEJnbU1JeUozU0FvUkIxc0ZCVnNJRUFvM1hEVkRPRGxCTDFZNUJBVWxKZzROSFFRR0JTc3VBUUZHZGtkUVJrUlNBQUFBQlFBQS81QUR3Z010QUEwQUhRQTFBRTBBWlFCRlFFSUFCUUlGYndBRUFnQUNCQUJ0QUFBREFnQURhd0FHQXdjREJnZHRBQWNCQXdjQmF3QUJBVzRBQWdRREFsUUFBZ0lEV0FBREFnTk1HeHNiRlJjY0ZSRUlCUndyQVNZaUJ3RUdGQll5TndFMk5DYy9BVFkwTHdFbUlnOEJCaFFmQVJZeUpSNEJGeFl5Tno0Qk56WTBKeTRCSnlZaUJ3NEJCd1lVQVM0Qkp5WWlCdzRCQndZVUZ4NEJGeFl5Tno0Qk56WTBBeDRCRnhZeU56NEJOelkwSnk0Qkp5WWlCdzRCQndZVUFoNEZFQWIrTlJFaUx4RUJ5d1lHVVQ0SUNDa0lHQWcrQlFVMkJnLytLVGRTRVFNUkF4RlJPQWdJTjFJUkF4RURFVkU0QndMNU1VY1JBaEFERUVjeEJ3Y3hSeEFERUFJUlJ6RUk0U1kwREFFTkFRczFKZ1lHSlRZTEFRMEJERFVsQmdHK0JnYitOQkV1SWhFQnl3WVFCVFkrQ0JnSUtRZ0lQZ1lQQmpZRnVoRlJPQWdJTjFJUkF4RURFVkU0Q0FnM1VoRURFZjZTRUVjeENBZ3hSeEFERUFNUVJ6RUhCekZIRUFNU0Fhb01OQ1lHQmlVMURBRU5BUXMySlFZR0pqVUxBUTBBQUFVQUFQK2xBOXdESVFBakFETUFRQUJOQUpnQlZrQWdJUk1NQ1FJRkNBQXNBUTBIZFcwQ0RnMlNUd0lRRENRQkJoQVpBUVVHQmtkTHNCSlFXRUJQQ3dFSkFBbHZCQUlSQXdBSUFRQmpFd29TQXdnQkFRaGpBQTBIRGdjTkRtMEFEZzhIRGc5ckFCQU1CZ1lRWlFNQkFRQUhEUUVIWVFBUEFBd1FEd3hnQUFZRkJRWlVBQVlHQlZrQUJRWUZUUnRMc0J4UVdFQk9Dd0VKQUFsdkJBSVJBd0FJQUc4VENoSURDQUVCQ0dNQURRY09CdzBPYlFBT0R3Y09EMnNBRUF3R0JoQmxBd0VCQUFjTkFRZGhBQThBREJBUERHQUFCZ1VGQmxRQUJnWUZXUUFGQmdWTkcwQlBDd0VKQUFsdkJBSVJBd0FJQUc4VENoSURDQUVCQ0dNQURRY09CdzBPYlFBT0R3Y09EMnNBRUF3R0RCQUdiUU1CQVFBSERRRUhZUUFQQUF3UUR3eGdBQVlGQlFaVUFBWUdCVmtBQlFZRlRWbFpRREZDUVRVMEFRQ1dsSVNDZVhkeGIxNWNTRWRCVFVKTk96bzBRRFZBTUM0b0poMGJGUlFRRHdzS0JnVUFJd0VqRkFVVUt3RWpGUllPQVNJdUFUYzFJUlVXRGdFaUxnRTNOU01pQmhVUkZCWXpJVEkyTlJFMEpnTVVCaU1oSWlZMUVUUTJNeUV5RmhVbElpWTlBVFErQVJZZEFSUUdJU0ltUFFFMFBnRVdIUUVVQmdFMU5DWWpKaWN1QVQ4QlBnRVhGaGN5TmpRbUp5WW5KalUwTmpjK0FUMEJORFk3QVRJV0hRRVVGak1XRng0QkR3RU9BU2NtSXlJSEJoUVdGeDRCRkFZSERnRWRBUlFHS3dFaUpnUE9YZ0lMR0JzWUN3TDl3Z0lMR0JzWUN3SmVCZ2NJQlFPMEJRZ0hTUWdGL1BNRkNBZ0ZBdzBGQ1AwY0RoUVVHeFFUQW93T0V4UWJGQlQrZ0FjRkpTSUVCQUVLQVFzR0pTZ1lIQnNmTUJnYkxDY0VCZ2dGR3dVSUJ3VWRHd1VGQWdrQkN3VWZJaGtNQ2gwa01Tb3RLZ1FHQ0FVYkJRZ0N1UThPR1E4UEdRNFBEdzRaRHc4WkRnOEpCdjBKQlFnSUJRTDNCZ245U2dVSUNBVUNDUVVJQ0FWN0ZRNVZEaE1CRkE1VkRoVVZEbFVPRXdFVURsVU9GZjJxR3dVSUF3OENDQVVtQmdZREVRRVNIeFlMRUJVWkpTTXlDZ0VIQlJ3RkNBZ0ZGd1VJQWdvQ0NRVWtCZ1VDRFFrSUdoVU5FVEJKTmdrQkJ3VWdCUWdJQUFBQUFBWUFBQUFBQXlVQ2pBQWNBQzRBTVFCREFFWUFXUUN2UUJBWENnRURCZ0lDQVFBSFRRRUtDUU5IUzdBVlVGaEFQUUFDQmdKdkFBWUJCbThBQVFNQmJ3QURDQU52QUFBSEJBa0FaUUFJQUFjQUNBZGdBQVVBQkFrRkJHQUxBUWtLQ2dsVUN3RUpDUXBaQUFvSkNrMGJRRDRBQWdZQ2J3QUdBUVp2QUFFREFXOEFBd2dEYndBQUJ3UUhBQVJ0QUFnQUJ3QUlCMkFBQlFBRUNRVUVZQXNCQ1FvS0NWUUxBUWtKQ2xrQUNna0tUVmxBRkVoSFVVOUhXVWhaRlNrVEVpa2NKeVVrREFVZEt3RUhFUlFHS3dFaUpqVVJCeU1pTGdFMlB3RStBVE15RnpjMkhnRUdBVFl2QVM0QklnWVBBUVlYTVJZWEZqTXlKeGNqSlM0QklnWVBBUVlYTVJZWEZqTXlOell2QVJjakJ5SUdCd1lkQVJRV015RXlOajBCTkNjdUFRTUc5QVVGS0FRRzdBUUxFZ01QRExvTkx4d3BIY1VNRlFNUC9vb0xCMUFERHhJUEJGQUdDQXdTSXljNU55dFdBY01FRHhJUEJGQUdDQXdTSXljNE1Rc0hheXRXa3lwUkhnY01DQUVZQ0F3SEhsRUNUaVQrcUFRR0JnUUJUeU1QRnhVQkhCZ2RIUndDRHhrVS9vMFBFTDRJQ2dvSXZnNE9FZzhld0dmOENBb0tDTDRPRGhJUEhqd1BFR1ZucWgwWkJ3Z0JDQXdNQ0FFSkJoa2RBQUlBQUFBQUF5QUNpZ0FPQUM4QUlFQWRMUXNFQXdFQUFVY0NBUUFCQUc4QUFRRm1BUUFJQndBT0FRNERCUlFyQVNJR0ZCY1JGQll5TmpVUk5qUW1CUVlIQmljbUp5WW5KZ2NHRlJFVUZqYzJGeFlYRmhjV056WTNQZ0UxRVRRbUFRUVpJeFFZSVJjVUl3SDBKeWtoS0JndVBCODBMZzBRQ2lveEhUZ3ZHU2dpS2lnRUJnb0NpaU0wRXY0NUVCZ1lFQUhIRWpRamJCUUZCQWNGRFJFREJoRUZEdjcrQ2d3RERRWUVFQTBFQ0FVRkZnSUtCUUVQQmdZQUFBQUFBUUFBQUFBRHhBSnZBQ1lBTDBBc0hBRURCQnNPQndNQUF3SkhBQVFEQkc4QUF3QURid0FBQVFCdkFBRUNBVzhBQWdKbUdCY1ZKQlFGQlJrckFUQXhGQVlpTHdFSEJpTWlKaThCQlFZaUx3RW1ORGNUTmpJZkFUY25KalEyTnlFZUFSMEJBOFFORkFabjd4UWJEUm9Ja2Y4QUJoUUdDd2NIL0JRM0ZKQ1NYZ2NOQ1FFOEVoa0JCZ2tOQjJmTkZBc0pwT0VHQmd3SEVRY0JXUlFVa0toV0J4TU5BZ0laRXdJQUJRQUEvMm9ENkFOVEFCUUFLUUErQUVzQVZBQmdRRjBNQVFRQUJ3Z0VCMkFPQVFnQUNRWUlDV0FOQVFZQUJRSUdCV0FBQXdNQVdBb0JBQUFNU0FzQkFnSUJXQUFCQVEwQlNVMU1RRDhyS2hZVkFRQlJVRXhVVFZSR1JUOUxRRXMxTkNvK0t6NGdIeFVwRmlrTENnQVVBUlFQQlJRckFTSUhCZ2NHRUJjV0Z4WWdOelkzTmhBbkppY21BeUluSmljbU5EYzJOell5RnhZWEZoUUhCZ2NHQXlJSEJnY0dGQmNXRnhZeU56WTNOalFuSmljbUF5SXVBVFErQVRJZUFSUU9BUU1pQmhRV01qWTBKZ0gwaDNWeFFrVkZRbkYxQVE1MWNVSkZSVUp4ZFlkdFhWczFOemMxVzEzYVhWczFOemMxVzExdFVrWkZLQ29xS0VWR3BFZEVLU2twS1VSSFN6VmJOVFZiYTFvMU5WbzJLRG82VVRvNkExSkZRbkYxL3ZKMWNVSkZSVUp4ZFFFT2RYRkNSZng3TnpWYlhkcGRXelUzTnpWYlhkcGRXelUzQXNBcEtVUkhwRVpGS0NvcUtFVkdwRWRFS1NuK0V6VmJhMW8xTlZwcld6VUJLRHBST2pwUk9nQUFBQU1BQUFBQUF3SUNpZ0FPQUIwQUxBQVJRQTRKQVFJQVJBQUFBR1lXRlFFRkZDc0JGUlFXUHdFK0FUMEJOQ1lQQVFZbk56WTBMd0VtSWc4QkJoUWZBUllISnlZR0hRRVVGaDhCRmpZOUFUUUNFZ29Gd2c0UkNnWFhDaFRZQlFYRERpSU93d1VGMkFvbzF3VUtFUTdDQlFvQlJQUUdCUUp1Q0IwUTJ3WUZBbmtIT25rREN3TnZDQWh2QXdzRGVRVXVlUU1HQnRvUUhRaHVBd1lHOHdvQUFBQUJBQUFBQVFBQWZOc0VZbDhQUFBVQUN3UG9BQUFBQU5oNmQ2d0FBQUFBMkhwM3JmLysvMm9EN2dOVEFBQUFDQUFDQUFBQUFBQUFBQUVBQUFOUy8yb0FBQVBvLy83LytnUHVBQUVBQUFBQUFBQUFBQUFBQUFBQUFBQ01BK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErai8vZ1BvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFOckFBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQTJzQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErai8vd1BvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFBQUFBQUFGd0F1Z0VZQWRnQ1dBTUFBMllEN0FSd0JUb0ZsZ1lhQnZvSG9nZitDRlFJZGdqYUNTZ0ovQXJLQzhvTWJBemFEWUlPV0E4QUVBQVFUQkQwRWI0U0xoTElFMDRUMmhUVUZXZ1dIaFpxRnNJWEVCZU1HRGdZeEJrdUdlWWFsQnZzSE80ZHZCNHlIcUlmTmgrTUlDNGdnQ0R1SVVJaG9pSVNJcndqT2lQb0pHQWxKaVlXSnBnbnRpZ2NLSkFwQmlsc0tnSXFaaXJrSzhJc1BDeUdMT290ZGkzc0xoUXVaaTdnTHpRdlZqQllNUTR4WGpJTU15WXp6RFErTk1RMUFqVTROZW8yb2pjTU9IUTQyam4rT3E0N1VqdnlQRVk4ZkR5NlBWUTkyRDV1UHZJL2xFQmFRTkJCN2tKOFFySkM3a04wUThaRVZrVHlSWGhHREVaS1JuSkd6RWRHU0NaSW1FbENTZ1JMaEV4aVRNQk5GRTNLVGhrQUFBQUJBQUFBakFEUUFBMEFBQUFBQUFJQVRnQmVBSE1BQUFEUkMzQUFBQUFBQUFBQUVnRGVBQUVBQUFBQUFBQUFOUUFBQUFFQUFBQUFBQUVBQ0FBMUFBRUFBQUFBQUFJQUJ3QTlBQUVBQUFBQUFBTUFDQUJFQUFFQUFBQUFBQVFBQ0FCTUFBRUFBQUFBQUFVQUN3QlVBQUVBQUFBQUFBWUFDQUJmQUFFQUFBQUFBQW9BS3dCbkFBRUFBQUFBQUFzQUV3Q1NBQU1BQVFRSkFBQUFhZ0NsQUFNQUFRUUpBQUVBRUFFUEFBTUFBUVFKQUFJQURnRWZBQU1BQVFRSkFBTUFFQUV0QUFNQUFRUUpBQVFBRUFFOUFBTUFBUVFKQUFVQUZnRk5BQU1BQVFRSkFBWUFFQUZqQUFNQUFRUUpBQW9BVmdGekFBTUFBUVFKQUFzQUpnSEpRMjl3ZVhKcFoyaDBJQ2hES1NBeU1ERTVJR0o1SUc5eWFXZHBibUZzSUdGMWRHaHZjbk1nUUNCbWIyNTBaV3hzYnk1amIyMXpaaTFwWTI5dWMxSmxaM1ZzWVhKelppMXBZMjl1YzNObUxXbGpiMjV6Vm1WeWMybHZiaUF4TGpCelppMXBZMjl1YzBkbGJtVnlZWFJsWkNCaWVTQnpkbWN5ZEhSbUlHWnliMjBnUm05dWRHVnNiRzhnY0hKdmFtVmpkQzVvZEhSd09pOHZabTl1ZEdWc2JHOHVZMjl0QUVNQWJ3QndBSGtBY2dCcEFHY0FhQUIwQUNBQUtBQkRBQ2tBSUFBeUFEQUFNUUE1QUNBQVlnQjVBQ0FBYndCeUFHa0Fad0JwQUc0QVlRQnNBQ0FBWVFCMUFIUUFhQUJ2QUhJQWN3QWdBRUFBSUFCbUFHOEFiZ0IwQUdVQWJBQnNBRzhBTGdCakFHOEFiUUJ6QUdZQUxRQnBBR01BYndCdUFITUFVZ0JsQUdjQWRRQnNBR0VBY2dCekFHWUFMUUJwQUdNQWJ3QnVBSE1BY3dCbUFDMEFhUUJqQUc4QWJnQnpBRllBWlFCeUFITUFhUUJ2QUc0QUlBQXhBQzRBTUFCekFHWUFMUUJwQUdNQWJ3QnVBSE1BUndCbEFHNEFaUUJ5QUdFQWRBQmxBR1FBSUFCaUFIa0FJQUJ6QUhZQVp3QXlBSFFBZEFCbUFDQUFaZ0J5QUc4QWJRQWdBRVlBYndCdUFIUUFaUUJzQUd3QWJ3QWdBSEFBY2dCdkFHb0FaUUJqQUhRQUxnQm9BSFFBZEFCd0FEb0FMd0F2QUdZQWJ3QnVBSFFBWlFCc0FHd0Fid0F1QUdNQWJ3QnRBQUFBQUFJQUFBQUFBQUFBQ2dBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFqQUVDQVFNQkJBRUZBUVlCQndFSUFRa0JDZ0VMQVF3QkRRRU9BUThCRUFFUkFSSUJFd0VVQVJVQkZnRVhBUmdCR1FFYUFSc0JIQUVkQVI0Qkh3RWdBU0VCSWdFakFTUUJKUUVtQVNjQktBRXBBU29CS3dFc0FTMEJMZ0V2QVRBQk1RRXlBVE1CTkFFMUFUWUJOd0U0QVRrQk9nRTdBVHdCUFFFK0FUOEJRQUZCQVVJQlF3RkVBVVVCUmdGSEFVZ0JTUUZLQVVzQlRBRk5BVTRCVHdGUUFWRUJVZ0ZUQVZRQlZRRldBVmNCV0FGWkFWb0JXd0ZjQVYwQlhnRmZBV0FCWVFGaUFXTUJaQUZsQVdZQlp3Rm9BV2tCYWdGckFXd0JiUUZ1QVc4QmNBRnhBWElCY3dGMEFYVUJkZ0YzQVhnQmVRRjZBWHNCZkFGOUFYNEJmd0dBQVlFQmdnR0RBWVFCaFFHR0FZY0JpQUdKQVlvQml3R01BWTBBQlROa2IzUnpBMkZrWkFWamJHOXpaUWx3Y21salpXSnZiMnNFYUdWc2NBaHViM1JsWW05dmF3UnliM2R6Qm5Wd2JHOWhaQVZqYkc5amF3Wm5jbTkxY0hNTGIzQmxibDltYjJ4a1pYSVFjbWxuYUhSZllXeHBaMjVmZEdWNGRBZHdjbTlrZFdOMERYRjFaWE4wYVc5dVgyWmxaV1FIZDJGeWJtbHVad1IxYzJWeUJYSnBaMmgwREc1dmRHbG1hV05oZEdsdmJnUm9iMjFsQ0dOdmJuUnlZV04wQjJGa1pIVnpaWElFWVhCd2N3UmpiM0I1QldsdFlXZGxCRzl3Wlc0SWMyVjBkR2x1WjNNR2VtOXZiV2x1Qm5KbFkyOXlaQWxoY25KdmQyUnZkMjREWTNWMEQybHVjMlZ5ZEY5MFpXMXdiR0YwWlExdmNHVnVaV1JmWm05c1pHVnlDWE5wWkdWZmJHbHpkQWQ2YjI5dGIzVjBCbkYxYjNSbGN3eHlaV3hoZEdWa1gyeHBjM1FFWjJSdll3ZHpibWx3Y0dWMEJIQmhaMlVMWTNWemRHOXRYMkZ3Y0hNSFlYSnliM2QxY0FaaGRIUmhZMmdIWkdGNWRtbGxkd1JwYm1adkVHbHVjMlZ5ZEY5MFlXZGZabWxsYkdRRmNHRnpkR1VFYzI5eWRBTndaR1lHY21Wd2IzSjBCSFJoYzJzSVlYQndjbTkyWVd3TGMyOWphV0ZzYzJoaGNtVUdjR1Z2Y0d4bEJtbDBZV3hwWXdaa1pXeGxkR1VFWW1GamF3TmlZVzRGWlcxaGFXd0VZbTlzWkFkd2NtVjJhV1YzQlhOb1lYSmxDV1JoYzJoaWIyRnlaQVowYUdGdWEzTUZkRzlrWVhrS1kyOXVkSEpoWTNRdE1RZHpjR2x1Ym1WeUJYQm9iM1J2QldWMlpXNTBCMkoxYVd4a1pYSU1hblZ6ZEdsbWVWOTBaWGgwRVdObGJuUmxjbDloYkdsbmJsOTBaWGgwQkdWa2FYUUdiR0Y1YjNWMENIQnlhVzl5YVhSNUVITjBZVzVrWVhKa1gyOWlhbVZqZEhNSFkyOXVkR0ZqZEFoamRYTjBiMjA1TXdkbGJXRnBiQzB4QjNOMVkyTmxjM01IY21WbWNtVnphQTlzWldaMFgyRnNhV2R1WDNSbGVIUUVaRzkzYmdWamFHRnlkQVJqYUdGMEJXVnljbTl5Qkd4bFpuUUxjbVZ0YjNabFgyeHBibXNIYzNWdGJXRnllUWhrYjJOMWJXVnVkQVprY21GbWRITU5jM1Z0YldGeWVXUmxkR0ZwYkFkeVpYQnNZV05sQkd4cGEyVUlaRzkzYm14dllXUUZZMmhsWTJzTFkyaGxkbkp2Ym14bFpuUUdaWGh3WVc1a0JHeHBibXNGY21Wd2JIa0ZkR0ZpYkdVRVptVmxaQWRsZG1WdWRDMHhEblJwYkdWZlkyRnlaRjlzYVhOMEZISnBZMmgwWlhoMFluVnNiR1YwWldSc2FYTjBCR3hwYzNRSVptRjJiM0pwZEdVTVkyaGxkbkp2Ym5KcFoyaDBDMk5vWlhaeWIyNWtiM2R1Qm1acGJIUmxjZ1J0YjNabERuSnBZMmgwWlhoMGFXNWtaVzUwQ1hWdVpHVnliR2x1WlFobVpXVmtZbUZqYXdSbWFXeGxCSFZ1Wkc4VWNtbGphSFJsZUhSdWRXMWlaWEpsWkd4cGMzUUViRzlqYXdwbWFXeDBaWEpzYVhOMENXTm9aWFp5YjI1MWNBVmpiR1ZoY2dkbWIzSjNZWEprQ201bGQxOTNhVzVrYjNjUGNtbGphSFJsZUhSdmRYUmtaVzUwQm5WdWJHOWphd3R2Y0hCdmNuUjFibWwwZVFSd2IzTjBBblZ3Qm5ObFlYSmphQU51WlhjR1puSnZlbVZ1Q0dOdmJXMWxiblJ6Qm5KbFkyVnVkQWx0WVdkcFkzZGhibVFZWkdselkyOTFiblJ6WTJobFpIVnNaV2xqYjI1ekxUQXlDR04xYzNSdmJUa3dDR04xYzNSdmJUSTJDSFJ5Wlc1a2FXNW5CblJoY21kbGRBUmpkV0psQUFBQUFBRUFBZi8vQUE4QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJnQUdBQVlBQmdEVS85cUExUC9hckFBTENDd0FGVllSVmtnSUV1NEFBNVJTN0FHVTFwWXNEUWJzQ2haWUdZZ2lsVllzQUlsWWJrSUFBZ0FZMk1qWWhzaEliQUFXYkFBUXlORXNnQUJBRU5nUWkyd0FTeXdJR0JtTGJBQ0xDQmtJTERBVUxBRUpscXlLQUVLUTBWalJWSmJXQ0VqSVJ1S1dDQ3dVRkJZSWJCQVdSc2dzRGhRV0NHd09GbFpJTEVCQ2tORlkwVmhaTEFvVUZnaHNRRUtRMFZqUlNDd01GQllJYkF3V1JzZ3NNQlFXQ0JtSUlxS1lTQ3dDbEJZWUJzZ3NDQlFXQ0d3Q21BYklMQTJVRmdoc0RaZ0cyQlpXVmtic0FFcldWa2pzQUJRV0dWWldTMndBeXdnUlNDd0JDVmhaQ0N3QlVOUVdMQUZJMEt3QmlOQ0d5RWhXYkFCWUMyd0JDd2pJU01oSUdTeEJXSkNJTEFHSTBLeEFRcERSV094QVFwRHNBRmdSV093QXlvaElMQUdReUNLSUlxd0FTdXhNQVVsc0FRbVVWaGdVQnRoVWxsWUkxa2hJTEJBVTFpd0FTc2JJYkJBV1NPd0FGQllaVmt0c0FVc3NBZERLN0lBQWdCRFlFSXRzQVlzc0FjalFpTWdzQUFqUW1Hd0FtSm1zQUZqc0FGZ3NBVXFMYkFITENBZ1JTQ3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nUkxBQllDMndDQ3l5QndzQVEwVkNLaUd5QUFFQVEyQkNMYkFKTExBQVF5TkVzZ0FCQUVOZ1FpMndDaXdnSUVVZ3NBRXJJN0FBUTdBRUpXQWdSWW9qWVNCa0lMQWdVRmdoc0FBYnNEQlFXTEFnRzdCQVdWa2pzQUJRV0dWWnNBTWxJMkZFUkxBQllDMndDeXdnSUVVZ3NBRXJJN0FBUTdBRUpXQWdSWW9qWVNCa3NDUlFXTEFBRzdCQVdTT3dBRkJZWlZtd0F5VWpZVVJFc0FGZ0xiQU1MQ0N3QUNOQ3Nnc0tBMFZZSVJzaklWa3FJUzJ3RFN5eEFnSkZzR1JoUkMyd0RpeXdBV0FnSUxBTVEwcXdBRkJZSUxBTUkwSlpzQTFEU3JBQVVsZ2dzQTBqUWxrdHNBOHNJTEFRWW1hd0FXTWd1QVFBWTRvalliQU9RMkFnaW1BZ3NBNGpRaU10c0JBc1MxUllzUVJrUkZra3NBMWxJM2d0c0JFc1MxRllTMU5Zc1FSa1JGa2JJVmtrc0JObEkzZ3RzQklzc1FBUFExVllzUThQUTdBQllVS3dEeXRac0FCRHNBSWxRckVNQWlWQ3NRMENKVUt3QVJZaklMQURKVkJZc1FFQVEyQ3dCQ1ZDaW9vZ2lpTmhzQTRxSVNPd0FXRWdpaU5oc0E0cUlSdXhBUUJEWUxBQ0pVS3dBaVZoc0E0cUlWbXdERU5Ic0ExRFIyQ3dBbUlnc0FCUVdMQkFZRmxtc0FGaklMQUxRMk80QkFCaUlMQUFVRml3UUdCWlpyQUJZMkN4QUFBVEkwU3dBVU93QUQ2eUFRRUJRMkJDTGJBVExBQ3hBQUpGVkZpd0R5TkNJRVd3Q3lOQ3NBb2pzQUZnUWlCZ3NBRmh0UkFRQVFBT0FFSkNpbUN4RWdZcnNISXJHeUpaTGJBVUxMRUFFeXN0c0JVc3NRRVRLeTJ3Rml5eEFoTXJMYkFYTExFREV5c3RzQmdzc1FRVEt5MndHU3l4QlJNckxiQWFMTEVHRXlzdHNCc3NzUWNUS3kyd0hDeXhDQk1yTGJBZExMRUpFeXN0c0I0c0FMQU5LN0VBQWtWVVdMQVBJMElnUmJBTEkwS3dDaU93QVdCQ0lHQ3dBV0cxRUJBQkFBNEFRa0tLWUxFU0JpdXdjaXNiSWxrdHNCOHNzUUFlS3kyd0lDeXhBUjRyTGJBaExMRUNIaXN0c0NJc3NRTWVLeTJ3SXl5eEJCNHJMYkFrTExFRkhpc3RzQ1Vzc1FZZUt5MndKaXl4Qng0ckxiQW5MTEVJSGlzdHNDZ3NzUWtlS3kyd0tTd2dQTEFCWUMyd0tpd2dZTEFRWUNCREk3QUJZRU93QWlWaHNBRmdzQ2txSVMyd0t5eXdLaXV3S2lvdHNDd3NJQ0JISUNDd0MwTmp1QVFBWWlDd0FGQllzRUJnV1dhd0FXTmdJMkU0SXlDS1ZWZ2dSeUFnc0F0RFk3Z0VBR0lnc0FCUVdMQkFZRmxtc0FGallDTmhPQnNoV1Myd0xTd0FzUUFDUlZSWXNBRVdzQ3dxc0FFVk1Cc2lXUzJ3TGl3QXNBMHJzUUFDUlZSWXNBRVdzQ3dxc0FFVk1Cc2lXUzJ3THl3Z05iQUJZQzJ3TUN3QXNBRkZZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpzQUVyc0F0RFk3Z0VBR0lnc0FCUVdMQkFZRmxtc0FGanNBRXJzQUFXdEFBQUFBQUFSRDRqT0xFdkFSVXFMYkF4TENBOElFY2dzQXREWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUxBQVEyRTRMYkF5TEM0WFBDMndNeXdnUENCSElMQUxRMk80QkFCaUlMQUFVRml3UUdCWlpyQUJZMkN3QUVOaHNBRkRZemd0c0RRc3NRSUFGaVVnTGlCSHNBQWpRckFDSlVtS2lrY2pSeU5oSUZoaUd5RlpzQUVqUXJJekFRRVZGQ290c0RVc3NBQVdzQVFsc0FRbFJ5TkhJMkd3Q1VNclpZb3VJeUFnUElvNExiQTJMTEFBRnJBRUpiQUVKU0F1UnlOSEkyRWdzQVFqUXJBSlF5c2dzR0JRV0NDd1FGRllzd0lnQXlBYnN3SW1BeHBaUWtJaklMQUlReUNLSTBjalJ5TmhJMFpnc0FSRHNBSmlJTEFBVUZpd1FHQlpackFCWTJBZ3NBRXJJSXFLWVNDd0FrTmdaQ093QTBOaFpGQllzQUpEWVJ1d0EwTmdXYkFESmJBQ1lpQ3dBRkJZc0VCZ1dXYXdBV05oSXlBZ3NBUW1JMFpoT0JzanNBaERSckFDSmJBSVEwY2pSeU5oWUNDd0JFT3dBbUlnc0FCUVdMQkFZRmxtc0FGallDTWdzQUVySTdBRVEyQ3dBU3V3QlNWaHNBVWxzQUppSUxBQVVGaXdRR0JaWnJBQlk3QUVKbUVnc0FRbFlHUWpzQU1sWUdSUVdDRWJJeUZaSXlBZ3NBUW1JMFpoT0ZrdHNEY3NzQUFXSUNBZ3NBVW1JQzVISTBjallTTThPQzJ3T0N5d0FCWWdzQWdqUWlBZ0lFWWpSN0FCS3lOaE9DMndPU3l3QUJhd0F5V3dBaVZISTBjalliQUFWRmd1SUR3aklSdXdBaVd3QWlWSEkwY2pZU0N3QlNXd0JDVkhJMGNqWWJBR0piQUZKVW13QWlWaHVRZ0FDQUJqWXlNZ1dHSWJJVmxqdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nSXk0aklDQThpamdqSVZrdHNEb3NzQUFXSUxBSVF5QXVSeU5ISTJFZ1lMQWdZR2F3QW1JZ3NBQlFXTEJBWUZsbXNBRmpJeUFnUElvNExiQTdMQ01nTGthd0FpVkdVbGdnUEZrdXNTc0JGQ3N0c0R3c0l5QXVSckFDSlVaUVdDQThXUzZ4S3dFVUt5MndQU3dqSUM1R3NBSWxSbEpZSUR4Wkl5QXVSckFDSlVaUVdDQThXUzZ4S3dFVUt5MndQaXl3TlNzaklDNUdzQUlsUmxKWUlEeFpMckVyQVJRckxiQS9MTEEySzRvZ0lEeXdCQ05DaWpnaklDNUdzQUlsUmxKWUlEeFpMckVyQVJRcnNBUkRMckFyS3kyd1FDeXdBQmF3QkNXd0JDWWdMa2NqUnlOaHNBbERLeU1nUENBdUl6aXhLd0VVS3kyd1FTeXhDQVFsUXJBQUZyQUVKYkFFSlNBdVJ5TkhJMkVnc0FRalFyQUpReXNnc0dCUVdDQ3dRRkZZc3dJZ0F5QWJzd0ltQXhwWlFrSWpJRWV3QkVPd0FtSWdzQUJRV0xCQVlGbG1zQUZqWUNDd0FTc2dpb3BoSUxBQ1EyQmtJN0FEUTJGa1VGaXdBa05oRzdBRFEyQlpzQU1sc0FKaUlMQUFVRml3UUdCWlpyQUJZMkd3QWlWR1lUZ2pJRHdqT0JzaElDQkdJMGV3QVNzallUZ2hXYkVyQVJRckxiQkNMTEExS3k2eEt3RVVLeTJ3UXl5d05pc2hJeUFnUExBRUkwSWpPTEVyQVJRcnNBUkRMckFyS3kyd1JDeXdBQlVnUjdBQUkwS3lBQUVCRlJRVExyQXhLaTJ3UlN5d0FCVWdSN0FBSTBLeUFBRUJGUlFUTHJBeEtpMndSaXl4QUFFVUU3QXlLaTJ3Unl5d05Db3RzRWdzc0FBV1JTTWdMaUJHaWlOaE9MRXJBUlFyTGJCSkxMQUlJMEt3U0NzdHNFb3NzZ0FBUVNzdHNFc3NzZ0FCUVNzdHNFd3NzZ0VBUVNzdHNFMHNzZ0VCUVNzdHNFNHNzZ0FBUWlzdHNFOHNzZ0FCUWlzdHNGQXNzZ0VBUWlzdHNGRXNzZ0VCUWlzdHNGSXNzZ0FBUGlzdHNGTXNzZ0FCUGlzdHNGUXNzZ0VBUGlzdHNGVXNzZ0VCUGlzdHNGWXNzZ0FBUUNzdHNGY3NzZ0FCUUNzdHNGZ3NzZ0VBUUNzdHNGa3NzZ0VCUUNzdHNGb3NzZ0FBUXlzdHNGc3NzZ0FCUXlzdHNGd3NzZ0VBUXlzdHNGMHNzZ0VCUXlzdHNGNHNzZ0FBUHlzdHNGOHNzZ0FCUHlzdHNHQXNzZ0VBUHlzdHNHRXNzZ0VCUHlzdHNHSXNzRGNyTHJFckFSUXJMYkJqTExBM0s3QTdLeTJ3WkN5d055dXdQQ3N0c0dVc3NBQVdzRGNyc0QwckxiQm1MTEE0S3k2eEt3RVVLeTJ3Wnl5d09DdXdPeXN0c0dnc3NEZ3JzRHdyTGJCcExMQTRLN0E5S3kyd2FpeXdPU3N1c1NzQkZDc3RzR3Nzc0RrcnNEc3JMYkJzTExBNUs3QThLeTJ3YlN5d09TdXdQU3N0c0c0c3NEb3JMckVyQVJRckxiQnZMTEE2SzdBN0t5MndjQ3l3T2l1d1BDc3RzSEVzc0RvcnNEMHJMYkJ5TExNSkJBSURSVmdoR3lNaFdVSXJzQWhsc0FNa1VIaXdBUlV3TFFCTHVBRElVbGl4QVFHT1diQUJ1UWdBQ0FCamNMRUFCVUt5QUFFQUtyRUFCVUt6Q2dJQkNDcXhBQVZDc3c0QUFRZ3FzUUFHUXJvQ3dBQUJBQWtxc1FBSFFyb0FRQUFCQUFrcXNRTUFSTEVrQVloUldMQkFpRml4QTJSRXNTWUJpRkZZdWdpQUFBRUVRSWhqVkZpeEF3QkVXVmxaV2JNTUFnRU1LcmdCLzRXd0JJMnhBZ0JFQUFBPScpIGZvcm1hdCgndHJ1ZXR5cGUnKTtcbn1cbi8qIENocm9tZSBoYWNrOiBTVkcgaXMgcmVuZGVyZWQgbW9yZSBzbW9vdGggaW4gV2luZG96emUuIDEwMCUgbWFnaWMsIHVuY29tbWVudCBpZiB5b3UgbmVlZCBpdC4gKi9cbi8qIE5vdGUsIHRoYXQgd2lsbCBicmVhayBoaW50aW5nISBJbiBvdGhlciBPUy1lcyBmb250IHdpbGwgYmUgbm90IGFzIHNoYXJwIGFzIGl0IGNvdWxkIGJlICovXG4vKlxuQG1lZGlhIHNjcmVlbiBhbmQgKC13ZWJraXQtbWluLWRldmljZS1waXhlbC1yYXRpbzowKSB7XG4gIEBmb250LWZhY2Uge1xuICAgIGZvbnQtZmFtaWx5OiAnc2YtaWNvbnMnO1xuICAgIHNyYzogdXJsKCcuLi9mb250L3NmLWljb25zLnN2Zz84Nzc0MjQ0NiNzZi1pY29ucycpIGZvcm1hdCgnc3ZnJyk7XG4gIH1cbn1cbiovXG5cbltjbGFzc149XCJzZi1pY29uLVwiXTpiZWZvcmUsIFtjbGFzcyo9XCIgc2YtaWNvbi1cIl06YmVmb3JlIHtcblx0Zm9udC1mYW1pbHk6IFwic2YtaWNvbnNcIjtcblx0Zm9udC1zdHlsZTogbm9ybWFsO1xuXHRmb250LXdlaWdodDogbm9ybWFsO1xuXHRzcGVhazogbm9uZTtcblxuXHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdHRleHQtZGVjb3JhdGlvbjogaW5oZXJpdDtcblx0d2lkdGg6IDFlbTtcblx0bWFyZ2luLXJpZ2h0OiAuMmVtO1xuXHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdC8qIG9wYWNpdHk6IC44OyAqL1xuXG5cdC8qIEZvciBzYWZldHkgLSByZXNldCBwYXJlbnQgc3R5bGVzLCB0aGF0IGNhbiBicmVhayBnbHlwaCBjb2RlcyovXG5cdGZvbnQtdmFyaWFudDogbm9ybWFsO1xuXHR0ZXh0LXRyYW5zZm9ybTogbm9uZTtcblxuXHQvKiBmaXggYnV0dG9ucyBoZWlnaHQsIGZvciB0d2l0dGVyIGJvb3RzdHJhcCAqL1xuXHRsaW5lLWhlaWdodDogMWVtO1xuXG5cdC8qIEFuaW1hdGlvbiBjZW50ZXIgY29tcGVuc2F0aW9uIC0gbWFyZ2lucyBzaG91bGQgYmUgc3ltbWV0cmljICovXG5cdC8qIHJlbW92ZSBpZiBub3QgbmVlZGVkICovXG5cdG1hcmdpbi1sZWZ0OiAuMmVtO1xuXG5cdC8qIHlvdSBjYW4gYmUgbW9yZSBjb21mb3J0YWJsZSB3aXRoIGluY3JlYXNlZCBpY29ucyBzaXplICovXG5cdC8qIGZvbnQtc2l6ZTogMTIwJTsgKi9cblxuXHQvKiBVbmNvbW1lbnQgZm9yIDNEIGVmZmVjdCAqL1xuXHQvKiB0ZXh0LXNoYWRvdzogMXB4IDFweCAxcHggcmdiYSgxMjcsIDEyNywgMTI3LCAwLjMpOyAqL1xufVxuLnNmLWljb24tM2RvdHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMCc7IH0gLyogJ+6ggCcgKi9cbi5zZi1pY29uLWFkZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAxJzsgfSAvKiAn7qCBJyAqL1xuLnNmLWljb24tY2xvc2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMic7IH0gLyogJ+6ggicgKi9cbi5zZi1pY29uLXByaWNlYm9vazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAzJzsgfSAvKiAn7qCDJyAqL1xuLnNmLWljb24taGVscDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA0JzsgfSAvKiAn7qCEJyAqL1xuLnNmLWljb24tbm90ZWJvb2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNSc7IH0gLyogJ+6ghScgKi9cbi5zZi1pY29uLXJvd3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNic7IH0gLyogJ+6ghicgKi9cbi5zZi1pY29uLXVwbG9hZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA3JzsgfSAvKiAn7qCHJyAqL1xuLnNmLWljb24tY2xvY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwOCc7IH0gLyogJ+6giCcgKi9cbi5zZi1pY29uLWdyb3VwczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA5JzsgfSAvKiAn7qCJJyAqL1xuLnNmLWljb24tb3Blbl9mb2xkZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwYSc7IH0gLyogJ+6giicgKi9cbi5zZi1pY29uLXJpZ2h0X2FsaWduX3RleHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwYic7IH0gLyogJ+6giycgKi9cbi5zZi1pY29uLXByb2R1Y3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwYyc7IH0gLyogJ+6gjCcgKi9cbi5zZi1pY29uLXF1ZXN0aW9uX2ZlZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwZCc7IH0gLyogJ+6gjScgKi9cbi5zZi1pY29uLXdhcm5pbmc6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwZSc7IH0gLyogJ+6gjicgKi9cbi5zZi1pY29uLXVzZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwZic7IH0gLyogJ+6gjycgKi9cbi5zZi1pY29uLXJpZ2h0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTAnOyB9IC8qICfuoJAnICovXG4uc2YtaWNvbi1ub3RpZmljYXRpb246YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMSc7IH0gLyogJ+6gkScgKi9cbi5zZi1pY29uLWhvbWU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMic7IH0gLyogJ+6gkicgKi9cbi5zZi1pY29uLWNvbnRyYWN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTMnOyB9IC8qICfuoJMnICovXG4uc2YtaWNvbi1hZGR1c2VyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTQnOyB9IC8qICfuoJQnICovXG4uc2YtaWNvbi1hcHBzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTUnOyB9IC8qICfuoJUnICovXG4uc2YtaWNvbi1jb3B5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTYnOyB9IC8qICfuoJYnICovXG4uc2YtaWNvbi1pbWFnZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE3JzsgfSAvKiAn7qCXJyAqL1xuLnNmLWljb24tb3BlbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE4JzsgfSAvKiAn7qCYJyAqL1xuLnNmLWljb24tc2V0dGluZ3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxOSc7IH0gLyogJ+6gmScgKi9cbi5zZi1pY29uLXpvb21pbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFhJzsgfSAvKiAn7qCaJyAqL1xuLnNmLWljb24tcmVjb3JkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWInOyB9IC8qICfuoJsnICovXG4uc2YtaWNvbi1hcnJvd2Rvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYyc7IH0gLyogJ+6gnCcgKi9cbi5zZi1pY29uLWN1dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFkJzsgfSAvKiAn7qCdJyAqL1xuLnNmLWljb24taW5zZXJ0X3RlbXBsYXRlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWUnOyB9IC8qICfuoJ4nICovXG4uc2YtaWNvbi1vcGVuZWRfZm9sZGVyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWYnOyB9IC8qICfuoJ8nICovXG4uc2YtaWNvbi1zaWRlX2xpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMCc7IH0gLyogJ+6goCcgKi9cbi5zZi1pY29uLXpvb21vdXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMSc7IH0gLyogJ+6goScgKi9cbi5zZi1pY29uLXF1b3RlczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIyJzsgfSAvKiAn7qCiJyAqL1xuLnNmLWljb24tcmVsYXRlZF9saXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjMnOyB9IC8qICfuoKMnICovXG4uc2YtaWNvbi1nZG9jOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjQnOyB9IC8qICfuoKQnICovXG4uc2YtaWNvbi1zbmlwcGV0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjUnOyB9IC8qICfuoKUnICovXG4uc2YtaWNvbi1wYWdlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjYnOyB9IC8qICfuoKYnICovXG4uc2YtaWNvbi1jdXN0b21fYXBwczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI3JzsgfSAvKiAn7qCnJyAqL1xuLnNmLWljb24tYXJyb3d1cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODI4JzsgfSAvKiAn7qCoJyAqL1xuLnNmLWljb24tYXR0YWNoOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjknOyB9IC8qICfuoKknICovXG4uc2YtaWNvbi1kYXl2aWV3OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MmEnOyB9IC8qICfuoKonICovXG4uc2YtaWNvbi1pbmZvOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MmInOyB9IC8qICfuoKsnICovXG4uc2YtaWNvbi1pbnNlcnRfdGFnX2ZpZWxkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MmMnOyB9IC8qICfuoKwnICovXG4uc2YtaWNvbi1wYXN0ZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJkJzsgfSAvKiAn7qCtJyAqL1xuLnNmLWljb24tc29ydDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODJlJzsgfSAvKiAn7qCuJyAqL1xuLnNmLWljb24tcGRmOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MmYnOyB9IC8qICfuoK8nICovXG4uc2YtaWNvbi1yZXBvcnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzMCc7IH0gLyogJ+6gsCcgKi9cbi5zZi1pY29uLXRhc2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzMSc7IH0gLyogJ+6gsScgKi9cbi5zZi1pY29uLWFwcHJvdmFsOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzInOyB9IC8qICfuoLInICovXG4uc2YtaWNvbi1zb2NpYWxzaGFyZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODMzJzsgfSAvKiAn7qCzJyAqL1xuLnNmLWljb24tcGVvcGxlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzQnOyB9IC8qICfuoLQnICovXG4uc2YtaWNvbi1pdGFsaWM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzNSc7IH0gLyogJ+6gtScgKi9cbi5zZi1pY29uLWRlbGV0ZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM2JzsgfSAvKiAn7qC2JyAqL1xuLnNmLWljb24tYmFjazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM3JzsgfSAvKiAn7qC3JyAqL1xuLnNmLWljb24tYmFuOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzgnOyB9IC8qICfuoLgnICovXG4uc2YtaWNvbi1lbWFpbDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM5JzsgfSAvKiAn7qC5JyAqL1xuLnNmLWljb24tYm9sZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODNhJzsgfSAvKiAn7qC6JyAqL1xuLnNmLWljb24tcHJldmlldzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODNiJzsgfSAvKiAn7qC7JyAqL1xuLnNmLWljb24tc2hhcmU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzYyc7IH0gLyogJ+6gvCcgKi9cbi5zZi1pY29uLWRhc2hib2FyZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODNkJzsgfSAvKiAn7qC9JyAqL1xuLnNmLWljb24tdGhhbmtzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2UnOyB9IC8qICfuoL4nICovXG4uc2YtaWNvbi10b2RheTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODNmJzsgfSAvKiAn7qC/JyAqL1xuLnNmLWljb24tY29udHJhY3QtMTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQwJzsgfSAvKiAn7qGAJyAqL1xuLnNmLWljb24tc3Bpbm5lcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQxJzsgfSAvKiAn7qGBJyAqL1xuLnNmLWljb24tcGhvdG86YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Mic7IH0gLyogJ+6hgicgKi9cbi5zZi1pY29uLWV2ZW50OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDMnOyB9IC8qICfuoYMnICovXG4uc2YtaWNvbi1idWlsZGVyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDQnOyB9IC8qICfuoYQnICovXG4uc2YtaWNvbi1qdXN0aWZ5X3RleHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0NSc7IH0gLyogJ+6hhScgKi9cbi5zZi1pY29uLWNlbnRlcl9hbGlnbl90ZXh0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDYnOyB9IC8qICfuoYYnICovXG4uc2YtaWNvbi1lZGl0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDcnOyB9IC8qICfuoYcnICovXG4uc2YtaWNvbi1sYXlvdXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0OCc7IH0gLyogJ+6hiCcgKi9cbi5zZi1pY29uLXByaW9yaXR5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDknOyB9IC8qICfuoYknICovXG4uc2YtaWNvbi1zdGFuZGFyZF9vYmplY3RzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGEnOyB9IC8qICfuoYonICovXG4uc2YtaWNvbi1jb250YWN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGInOyB9IC8qICfuoYsnICovXG4uc2YtaWNvbi1jdXN0b205MzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODRjJzsgfSAvKiAn7qGMJyAqL1xuLnNmLWljb24tZW1haWwtMTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODRkJzsgfSAvKiAn7qGNJyAqL1xuLnNmLWljb24tc3VjY2VzczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODRlJzsgfSAvKiAn7qGOJyAqL1xuLnNmLWljb24tcmVmcmVzaDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODRmJzsgfSAvKiAn7qGPJyAqL1xuLnNmLWljb24tbGVmdF9hbGlnbl90ZXh0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTAnOyB9IC8qICfuoZAnICovXG4uc2YtaWNvbi1kb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTEnOyB9IC8qICfuoZEnICovXG4uc2YtaWNvbi1jaGFydDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODUyJzsgfSAvKiAn7qGSJyAqL1xuLnNmLWljb24tY2hhdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODUzJzsgfSAvKiAn7qGTJyAqL1xuLnNmLWljb24tZXJyb3I6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1NCc7IH0gLyogJ+6hlCcgKi9cbi5zZi1pY29uLWxlZnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1NSc7IH0gLyogJ+6hlScgKi9cbi5zZi1pY29uLXJlbW92ZV9saW5rOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTYnOyB9IC8qICfuoZYnICovXG4uc2YtaWNvbi1zdW1tYXJ5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTcnOyB9IC8qICfuoZcnICovXG4uc2YtaWNvbi1kb2N1bWVudDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU4JzsgfSAvKiAn7qGYJyAqL1xuLnNmLWljb24tZHJhZnRzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTknOyB9IC8qICfuoZknICovXG4uc2YtaWNvbi1zdW1tYXJ5ZGV0YWlsOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NWEnOyB9IC8qICfuoZonICovXG4uc2YtaWNvbi1yZXBsYWNlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NWInOyB9IC8qICfuoZsnICovXG4uc2YtaWNvbi1saWtlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NWMnOyB9IC8qICfuoZwnICovXG4uc2YtaWNvbi1kb3dubG9hZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODVkJzsgfSAvKiAn7qGdJyAqL1xuLnNmLWljb24tY2hlY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1ZSc7IH0gLyogJ+6hnicgKi9cbi5zZi1pY29uLWNoZXZyb25sZWZ0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NWYnOyB9IC8qICfuoZ8nICovXG4uc2YtaWNvbi1leHBhbmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2MCc7IH0gLyogJ+6hoCcgKi9cbi5zZi1pY29uLWxpbms6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2MSc7IH0gLyogJ+6hoScgKi9cbi5zZi1pY29uLXJlcGx5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjInOyB9IC8qICfuoaInICovXG4uc2YtaWNvbi10YWJsZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODYzJzsgfSAvKiAn7qGjJyAqL1xuLnNmLWljb24tZmVlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY0JzsgfSAvKiAn7qGkJyAqL1xuLnNmLWljb24tZXZlbnQtMTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY1JzsgfSAvKiAn7qGlJyAqL1xuLnNmLWljb24tdGlsZV9jYXJkX2xpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Nic7IH0gLyogJ+6hpicgKi9cbi5zZi1pY29uLXJpY2h0ZXh0YnVsbGV0ZWRsaXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjcnOyB9IC8qICfuoacnICovXG4uc2YtaWNvbi1saXN0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjgnOyB9IC8qICfuoagnICovXG4uc2YtaWNvbi1mYXZvcml0ZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY5JzsgfSAvKiAn7qGpJyAqL1xuLnNmLWljb24tY2hldnJvbnJpZ2h0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NmEnOyB9IC8qICfuoaonICovXG4uc2YtaWNvbi1jaGV2cm9uZG93bjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZiJzsgfSAvKiAn7qGrJyAqL1xuLnNmLWljb24tZmlsdGVyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NmMnOyB9IC8qICfuoawnICovXG4uc2YtaWNvbi1tb3ZlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NmQnOyB9IC8qICfuoa0nICovXG4uc2YtaWNvbi1yaWNodGV4dGluZGVudDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODZlJzsgfSAvKiAn7qGuJyAqL1xuLnNmLWljb24tdW5kZXJsaW5lOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NmYnOyB9IC8qICfuoa8nICovXG4uc2YtaWNvbi1mZWVkYmFjazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODcwJzsgfSAvKiAn7qGwJyAqL1xuLnNmLWljb24tZmlsZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODcxJzsgfSAvKiAn7qGxJyAqL1xuLnNmLWljb24tdW5kbzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODcyJzsgfSAvKiAn7qGyJyAqL1xuLnNmLWljb24tcmljaHRleHRudW1iZXJlZGxpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Myc7IH0gLyogJ+6hsycgKi9cbi5zZi1pY29uLWxvY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3NCc7IH0gLyogJ+6htCcgKi9cbi5zZi1pY29uLWZpbHRlcmxpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3NSc7IH0gLyogJ+6htScgKi9cbi5zZi1pY29uLWNoZXZyb251cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc2JzsgfSAvKiAn7qG2JyAqL1xuLnNmLWljb24tY2xlYXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Nyc7IH0gLyogJ+6htycgKi9cbi5zZi1pY29uLWZvcndhcmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3OCc7IH0gLyogJ+6huCcgKi9cbi5zZi1pY29uLW5ld193aW5kb3c6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3OSc7IH0gLyogJ+6huScgKi9cbi5zZi1pY29uLXJpY2h0ZXh0b3V0ZGVudDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODdhJzsgfSAvKiAn7qG6JyAqL1xuLnNmLWljb24tdW5sb2NrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2InOyB9IC8qICfuobsnICovXG4uc2YtaWNvbi1vcHBvcnR1bml0eTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODdjJzsgfSAvKiAn7qG8JyAqL1xuLnNmLWljb24tcG9zdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODdkJzsgfSAvKiAn7qG9JyAqL1xuLnNmLWljb24tdXA6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3ZSc7IH0gLyogJ+6hvicgKi9cbi5zZi1pY29uLXNlYXJjaDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODdmJzsgfSAvKiAn7qG/JyAqL1xuLnNmLWljb24tbmV3OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODAnOyB9IC8qICfuooAnICovXG4uc2YtaWNvbi1mcm96ZW46YmVmb3JlIHsgY29udGVudDogJ1xcZTg4MSc7IH0gLyogJ+6igScgKi9cbi5zZi1pY29uLWNvbW1lbnRzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODInOyB9IC8qICfuooInICovXG4uc2YtaWNvbi1yZWNlbnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Myc7IH0gLyogJ+6igycgKi9cbi5zZi1pY29uLW1hZ2ljd2FuZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODg0JzsgfSAvKiAn7qKEJyAqL1xuLnNmLWljb24tZGlzY291bnRzY2hlZHVsZWljb25zLTAyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODUnOyB9IC8qICfuooUnICovXG4uc2YtaWNvbi1jdXN0b205MDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODg2JzsgfSAvKiAn7qKGJyAqL1xuLnNmLWljb24tY2FuY2VsLWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Nic7IH0gLyogJ+6ihicgKi9cbi5zZi1pY29uLWN1c3RvbTI2OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODcnOyB9IC8qICfuoocnICovXG4uc2YtaWNvbi10cmVuZGluZzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODg4JzsgfSAvKiAn7qKIJyAqL1xuLnNmLWljb24tdGFyZ2V0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODknOyB9IC8qICfuooknICovXG4uc2YtaWNvbi1jdWJlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4OGInOyB9IC8qICfuoosnICovXG4uc2YtaWNvbi1wYWlyZWQtbGluZXM6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Yyc7IH0gLyogJ+6ijCcgKi9cblxuLyogVGhlIGZvbGxvd2luZyBpcyBjb3BpZWQgZnJvbSBpY29ucy9jc3Mvc2ItZW1iZWRkZWQuY3NzIGFzIGxlc3MtcGx1Z2luLWNsZWFuLWNzcyBjb3VsZCBoYW5kbGUgYSBAaW1wb3J0ICovXG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6ICdzYic7XG4gIHNyYzogdXJsKCcuLi9mb250L3NiLmVvdD80OTM0MDI0OCcpO1xuICBzcmM6IHVybCgnLi4vZm9udC9zYi5lb3Q/NDkzNDAyNDgjaWVmaXgnKSBmb3JtYXQoJ2VtYmVkZGVkLW9wZW50eXBlJyksXG4gICAgICAgdXJsKCcuLi9mb250L3NiLnN2Zz80OTM0MDI0OCNzYicpIGZvcm1hdCgnc3ZnJyk7XG4gIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbn1cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogJ3NiJztcbiAgc3JjOiB1cmwoJ2RhdGE6YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFtO2Jhc2U2NCxkMDlHUmdBQkFBQUFBQlgwQUE0QUFBQUFKQmdBQVFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQlBVeTh5QUFBQlJBQUFBRVFBQUFCV1BpbEpFbU50WVhBQUFBR0lBQUFBT2dBQUFVclFOaG0zWTNaMElBQUFBY1FBQUFBS0FBQUFDZ0FBQUFCbWNHZHRBQUFCMEFBQUJaUUFBQXR3aUpDUVdXZGhjM0FBQUFka0FBQUFDQUFBQUFnQUFBQVFaMng1WmdBQUIyd0FBQXFDQUFBUDNNNDQrTzFvWldGa0FBQVI4QUFBQURVQUFBQTJDQnVzQkdob1pXRUFBQklvQUFBQUhnQUFBQ1FIbHdOeGFHMTBlQUFBRWtnQUFBQS9BQUFBbklOSEFBQnNiMk5oQUFBU2lBQUFBRkFBQUFCUVNaUk5sbTFoZUhBQUFCTFlBQUFBSUFBQUFDQUF6QXZTYm1GdFpRQUFFdmdBQUFGekFBQUNoZi9Fakc1d2IzTjBBQUFVYkFBQUFTQUFBQUc2QVJpMmwzQnlaWEFBQUJXTUFBQUFaUUFBQUh2ZGF3T0ZlSnhqWUdTT1k1ekF3TXJBd1ZURnRJZUJnYUVIUWpNK1lEQmtaR0pnWUdKZ1pXYkFDZ0xTWEZNWUhGNHd2RkJsRHZxZnhSREZITVF3SFNqTUNKSURBT0xRQzdsNG5HTmdZR0JtZ0dBWkJrWUdFSEFCOGhqQmZCWUdEU0ROQnFRWkdaZ1lHRjZvL3Y4UFV2Q0NBVVJMTUVMVkF3RWpHOE9JQndDTStBYlRBQUFBQUFBQUFBQUFBQUFBQUFCNG5LMVdhWE1UUnhDZDFXSExOajZDRHhJMmdWbkdjb3gyVnBqTENCREc3RW9XNEJ6eWxleENqbDFMZHU2TFQvd0cvWnBla1ZTUmIveTB2QjRkMkdBblZWUW9TdjJtOSsxTTkrdWVYcFBRa3NSZVdJK2szSHdwcHJZMmFXVG5TVWczYkZxTzRrUFoyUXNwVTB6K0xvaUNhTFhVdnUwNEpDSVNnYXAxaFNXQzJQZkkwaVRqUTQ4eVdyWWx2V3BTYnVsSmQ5a2FEK3F0K3ZiVDBGR08zUWtsTlp1aFErdVJMYW5DcUJKRk11MlJrall0dzlWZlNWcmg1eXZNZk5VTUpZTG9KSkxHbTJFTWorUm40NHhXR2EzR2RoeEZrVTJXRzBXS1JETThpQ0tQc2xwaW4xd3hRVUQ1b0JsU1h2azBvbnlFSDVFVmU1VFRDbkhKZHByZjl5VS82UjNPdnlUaWVvdXlKUWYrUUhaa0IzdW5LL2tpMHRvSzQ2YWRiRWVoaXZCMGZTZkVJNXVUNnAvc1VWN1RhT0IyUmFZbnpRaVd5bGVRV1BrSlpmWVB5V3JoZk1xWFBCclZrb09jQ0ZvdmMySmY4ZzYwSGtkTWlXc215SUx1ams2SW9PNlhuS0hZWS9xNCtPTzlYU3dYSVFUSU9KYjFqa3E0RUVZcFliT2FKRzBFT1lpU3NrV1YxSHBIVEp6eU9pM2lMV0cvVHUzb1MyZTBTYWc3TVo2dGg0NnRuS2prZURTcDAweW1UdTJrNXRHVUJsRktPaE04NXRjQmxCL1JKSysyc1pyRXlxTnBiRE5qSkpGUW9JVnphU3FJWlNlV05BWFJQSnJSbTd0aG1tdlhva1dhUEZEUFBYcFBiMjZGbXpzOXArM0FQMnY4WjNVcXBvTzlNSjJlRHNoS2ZKcDJ1VW5SdW41NmhuOG04VVBXQWlxUkxUYkRsTVZEdG40SDVlVmpTNDdDYXdOczk1N3pLK2g5OWtUSXBJSDRHL0FlTDlVcEJVeUZtRlZRQzkyMDFyVXN5OVJxVm90VVpPcTdJVTByWDlacEFrMDVEbjFqWDhZNC9xK1pHVXRNQ2QvdnhPblpFWmVldWZZbHlEU0gzR1pkaitaMWFyRmRnTTVzeitrMHkvWjluZWJZZnFEVFBOdnpPaDFoYSt0MGxPMkhPaTJ3L1Vpblkyd3ZhRUdUN2pzRWNoR0JYTUFHRW9Hd2RSQUkyMHNJaEsxQ0lHd1hFUWpiSWdKaHU0UkEySDZNUU5ndUl4QzJsN1dzbW40cWFSdzdFOHNBUllnRG96bnV5R1Z1S2xkVHlhVVNyb3RHcHpia0tYS3JwS0o0VnYwckEvM2lrVGVzZ2JWQXVrVFcvSXBKcm54VWxlT1BybWg1MDhTNUFvNVZmM3R6WEo4VEQyVy9XUGhUOEwvYW1xcWtWNng1WkhJVmVTUFFrK05FMXlZVmo2N3A4cm1xUjlmL2k0b09hNEYrQTZVUUMwVlpsZzIrbVpEd1VhZlRVQTFjNVJBekd6TVAxL1c2WmMzUDRmeWJHQ0VMNkg3OE54UWFDOXlEVGxsSldlMWdyOVhYajJXNXR3ZmxzQ2RZa21LK3pPdGI0WXVNekVyN1JXWXBlejd5ZWNBVk1DcVZZYXNOWEszZ3pYc1M4NURwVGZKTUVMY1ZaWU9ramNlWklMR0JZeDR3Yjc2VElDUk1YYldCMmltY3NJRzhZTXdwMk8rRVExUnZsT1Z3ZTZGOUhvMlVmMnRYN01nWkZVMFErRzMyUnRqcnMxRHlXNnlCaENlLzFOZEFWU0ZOeGJpcGdFc2o1WVpxOEdGY3JkdEdNazZncjZqWURjdXlpZzhmUjl4M1NvNWxJUGxJRWF0SFJ6K3R2VUtkMUxuOXlpaHUzenY5Q0lKQmFXTCs5cjZaNHFDVWQ3V1NaVlp0QTFPM0dwVlQxNXJEeGFzTzNjMmo3bnZIMlNkeTFqVGRkRS9jOUw2bVZiZURnN2xaRU8zYkhKU2xUQzZvNjhNT0c2akx6YVhRNm1WY2t0NTJEekFzTUtEZm9SVWIvMWYzY2ZnOFY2b0tvK05Jdloyb0g2UFBZZ3p5RHpoL1IvVUY2T2N4VExtR2xPZDdseE9mYnR6RDJUSmR4VjJzbitMZndLeTE1bWJwR25CRDB3MlloNnhhSGJyS0RYeW5Cam85MHR5TzlCRHdzZTRLOFFCZ0U4Qmk4SW51V3NiektZRHhmTVljSCtCejVqQm9Nb2ZCRm5NWWJETm5EV0NIT1F4Mm1jTmdqemtNdm1ET09zQ1h6R0VRTW9kQnhCd0dUNWdUQUR4bERvT3ZtTVBnYStZdytJWTU5d0crWlE2RG1Ea01FdVl3Mk5kMGF5aHppeGQwRjZodFVCWG93UFFURnZld09OUlVHYksvNDRWaGYyOFFzMzh3aUtrL2FybzlwUDdFQzBQOTJTQ20vbUlRVTMvVmRHZEkvWTBYaHZxN1FVejl3eUNtUHRNdnhuS1p3VjlHdmt1RkE4b3VOcC96OThUN0I4SWFRTFlBQVFBQi8vOEFEM2ljaFZkN2NGVGxGYi9udTYvZG0rVHUzbjNjbTJ5U1RYWTMyWnRIQ2JoUG1zUVFZd1NHQnBxSkdZVGdBR1dzMFBBd09qd3NiOE1VWDJsQ0hidWlSbFNHSm96VmpPVWhqdVBJMUZxMUNFNTFLdGdPRnRveWFjSWZOQ1BZT3BUOTB2UGR6VUlRTXQza252MWU5M3puZDk3TEFjZU5kL0lqZkJzbmN0SmhnWU5wMVZvQU5GSGpSK2dBUGNtM0lWMTNqZlJ5K0JHdW4rVTVtY3ZoSEZ4ZW81S1hhN2VKQW5EQ3RHcXZGdEFBSC9mRU43eEY1OEZiMitBby9RRWNUYkVaaWJKSit0U05NZU5ydjRXdm16TzRRcTZFQzNGR295ZFFXbHhVa08vMWFNN3NYWGE4S3g3MThoT1BlNHJ4VmZiWk5vbW1ybDZGVFprbjdicjltTWtqM1ZZZXJWR2RMSVAwWFJrQ1hwaDRyTHQrVG42VWZqbnpUSEV0Y3VmR0grYi95cmR3Qk85MGM4b3hweUloYXg1WnU0RzM4dzJrQkhTVlRJZHdNN2hPd1FEd2RBazRTRzJyYjFlQlJRdjc0RDc2TDJpQ0FYcU5kcEN2elhwUzJPMXJyU1VGdXdvNTdvWnRjOUMyZGg1dEc3ZEQwZzZHSFdRN2dFRkh2d0lEaksvb3FFWG82SnlicDEreEk3Zm5nK2JOL3NGSzhNRksrandkL2l3N29NL0RTZzVSWmQ4enVSbWM3V2hObFY4aDZGL3haQ0pwSm8zRUxJZ2F1cEUwWkwwRXZMSWtHN0lwT1NCa2hrM1pUSWJOcEVlUEpHSmhGVkpxL3ZLMUd5cW5PL3VkMDZvM3JGMmVyNll5UzlYVGNHbDZwYlYwcW4xek8vN0R4S0ZsQmp0a0xMdjVVQ3JMYW1sOWUvdWpDMG1iNWRPREtLTStsVStqUGNzblBmekl0ZndieitMKy9ySCsvcStSdnZSU1JrL3ZJaS9tUWRKaGtlbEpTNkpDd2R3L0FOY09wSmZ2QjJIL0FhQTRPc0Q4TEtPZlBhZ2ZCNWVQK3RHZE1rZFlHRVhEeVFaSVJuUkRMNGFvQm9GNERaaGhTWDZhRkpvdjNMKzB2OXlYU2g4Q2pzeE54bWFMS2RJMGNOZWlCMkhOdlhXejFxYmZJMDFkc2JtRXpLM044T2M0dm8rOGdmTGtJZjljUlNESXZ6emdOWlBlQUtLSkczS2M3MHV2T0hlTzdMdTJpK3c3ZDI3SFF3Y0h1ODUxUFRSdzhLRU1ucC93ZC9BdXpvdDQzRGFHSjVhSWxBQ2p1bGRMSXZXZ0k0WExZczRyWlpHeXk2NUltWXR1cGo5MVFXRkJtZXN5NlM0b0t5dEliNy9zS291NDZXYlk3Y253WEkwOFBSYlBQRXRITVhSSjNTTUZwNE9HTkp6VVpLUXVlQngyNDR1dXkyWFJNcmlDckdHRnp3Vzc2V1pYTE9TNm5ON09lSlB1eTY0UXg0K254My9ETCtPWjlaSmNNOGJSWFhYVjdod2U0Nmc4SGd0WFExQXFCbzllQjVHRU8xWURvYUFzWVZ4Rkk2aGtoT0dSWkJVTWIyWS9oazdad0JzZUZZSTFCTGY5QUZjVTIycWJZcEcraHZ2dmVHS09QVytlSU5sRmYvbk1LcjB3VkEvV1ZyNnJTUEY3Y3M4ODh1SEl4K3VremU5ZWVXZDdXL1kxQlhiYzBWNnpTVldTZ2h3dTlMdTh2bHhuWTlpREc2NWdqbFB5RlZXMGJmaGcvZm9QTGpMQ1RIWWRqNStyNGVvUXo4eElWZEJudTQ1SG13ektHN29Cai84T1hIRVNFRktueUFuRmRvZ0pGWTh6ZWxWVzV0d0FCeitlTFB0aVhQQ3pIUndjdHFnQzF4WlBMQ2puYjVJM1V4ZGVSajlXdUNEWHdDMWdNZFRTR0NrcmNJZ3NoaUNLR1N3ZWNvQWtnd2NwR2pxY3FHTmVWTWNNb0VVanV1Z054TjJvKzNoSXFrWkVMTkF3RlhpVGVDTHV4bm5VRE1sUjl1Mk91c256S3lva1FnaUFRUDhpSFJKVitaRE5scmZhQXNGd2ZFN2YrVlFXSlp1a2ROOE5kMzRxMkNTYm1QUDBobGVyZkUvNHFsNHhkM1k4UnRadDl0bEpqcUpJNmRtU2ZFZ1VEOXU5UE1mQXBUbGxYbmNFVEVVU2dUVHVqTkF2QlVVR0lFM3dUWDE5YTJ0OVBUeE0rN2hiTUVlNEh6TE16YkVaV2N6bE56Q0xVMksrR1JlZjFZRXNtZGUxa0ZYQy93Rk5oRW53Y2pJS0VIaVlVRUd1cFlGb0JyUmQzbkVMNWwvVTFiVzIxdFhCSTdTWGRIZEhFYjhvNGxVWkZmelpJZUd3eVlwZEpDZEptTldydzhCNkJjZ0JPRGs4VE1LMEMvWlkyN2VlaVJmQzhIQUs5dEF1cHJmeDhmSEgrVi96U2M3R2FWd3BWbmpVV3loUTROWlV3ZktWb09UVVN4UE9zQm5oWEtobEZ5Y21kSmxITFlZd003Z1RTVDVwd2hmUG5UNE5OYWRQUC9jK3VBaTlTSGZTaXdSYzBLM3FmSWVnMGhOU3Jrdm9FUEtxLzN1RWZIS2FmbTRkWGtVdllXb2FFeUFmdG9QdlcwSEhjNnJRNGNtRGhNclRMK2NjeWNxK2h6UmJzaE9yRjhvREpqaHBIaDcrN240R3YxYWUyYWV4WWV5Z3N2V3VCSDJpbkl0eTlaeWpNVGNlbTE1UkZncVVHcktJTDJCV3h5d25CNEpoTTg2SVpxVWNZRjVoZUJOUkIwUkJqaHJKZUFnVGt4blNBdkZZQXJTSkNYL0k4RU9wbmg3Rkwvb1pFdDE1d1pIUVIzQVVEc3daSEtRdkRnNnVmZk8wM3hnRnYwN0NaL3pHQ05tSzV6dXMxMTRwMVdHVG5uQmNRQVhyeDR4Tmc3QnQ4UDAzUjBmMVVxQXY5dWtKdW9Ec0dtR1RGMWp0dUo2RGNya0NxelpKckRaQlVDVitpRFJBRFlISlNmS05lM3RhU2ZzVHIrMWVLQ3pvaFNXVE1nbnBiZXM1ME5ObUVmckhLZktjRGF0QkVQTmNTWUhETGhITWM0Q0ZvQWF3dnBpM3Y1RFV0VDNhUmhhdVg3aG55b3RoYVYxNys4YjI5bSttdk4rcWoyUVI2Y2E2NzBHTXpseEZaQml4cUlsU09JNldNY29qWHMwVHhDSDBxeXBONlVWRk9weWRsNEtOaWsrNW9McDg4STdQcFZiVTBwcmFXdmk4OWlhZXVSWlBsMm9Ya0tjN2xpeFBZTmlqR2N2RFppekRkVWlGTlo2aUlnOTlWaDFLcFdDcGFyR2tzNUhsQmVYZnRSWlg3bm9kN3lKYlVVNkQyVUs3UlU1NTBwaGZnYUwyNkg2LzNvYUR2WjdTVWcvS1cyVDdWblVXd2QrTG5PcTNreWMzOFord3RXYkpyRTJXdVh6eVJJV05qQ3Q5U29VUFZWaGxqZmVxREFCalMvM3NEcHQ2MDh3S25YR0s5bDZNOXA2QjhWTVpZUEdEam8xT0ZaNEY0UkN6TkIrTkpMQXNsNEFmc0NyTHpOeTRoRTFpUXVjWGU1eFhEYmMydjYycnRyTmxobERSdnFLaGFXT2xvRWt0SXBIcWg1YmQ5MHJYWEtIeDBiMUwydmJlT2RjNWpmenVxcXBQYzg2Zlg5UFN1YjZ6cGFZMkxvRTRYMUNsZWEzUXZIN2YwTDcxelEzZm4rdHlUOFExR1NGUFdmMnRJcUJjeVNEcU1xcFpIZElEVmJVOXNHWnM3T1A2Q2xoS1Q2VE9uazB4M3gwZi96My9TL0lmekdKZWpIZmxXS0h1ZHFraXE5RTZFejJBUFZzc0NhekZNR1JreGVPYW4zVVlZZjdKWElCb09JMGRHT1JCVjI1RnBESzM3MmROcFZVQVZZMVZsZk4xb3lLQ0IweERKOXU4K2ZuZVg5RXZvSnIyUVdXd3RMTHlycXBzM0N5MllyTUlPd1RsV0ZXZ0FPT1R4UTNHUmpaTTNCUE5nSXk5allGNk5kMHhreTNJa3RlZGFRL2dqZlVmUHBJTm1kOHFNcXVldWZKcVdRR3NmN1l0TmxGU0ZQdEttOExuVEFRTmt2VGNUbFkwT3RuUmo2QkQ1a1dSbCttQVpMTmh6aGpIL1BjcWo3MG1GMEEvS3NpUmVPYW4ySE5KZnRRRVdEMmVGR0xTQ1g1aWVHU0V1T3Zaa3ltaDkwODlFUHhlcmVmNEExdGFuMW5WU09yWDlCN282WnJKMzNQY0M5MHJueUdwRTN1bEh2cENjWlgzK0QwTm5YdjI5NjZyRlpvZVRNM2Y4c0J4YjZhbmZKMS9uWnpINkpqNERZdGFkK0pGWmhMYlBDd21xSVNvYkVZYmdIaGV1M1RwdGQ1MXM5dFhiRDl5NU9vUjB2djIyMXZKR0RrL1JsOGZXelN2L2dod1I0YTJuanc1Y0RGVHk4WjNZRDYvRTMraFNvY2x3dXFCV0lnMmM1ZUxidGl5YlFOc29aK3NvNmZvaVUxd2hzQXErcXp0TEgzbWIyZGdWYWEzMzJtOXEyRm1zeDB0TFZDc21JcUs3cVRoUmhiR2RIQkEwbTJXRUFmTUFzT2NCZE94MkMrRjR1WEZ4WXNZNDdhaWxuK09MQ2p1K01mREJ6MjJwamUxOSs1MkRaM1JiWTJ6YmV3eXRlTitPb2JYWFZveTgrRCtlQWVvUTdiSFZPOG5XM0tlT3E5dUU0ajNEeDk1L3dlNm90QkVBQUI0bkdOZ1pHQmdBT0pEVHJZTjhmdzJYeG00bVY4QVJSZ3VkWi8wZ3REenBmNy8vWi9KL0lJNUNNamxZR0FDaVFJQWJDb05qUUFBQUhpY1kyQmtZR0FPK3AvRkVNWDhnb0hoLzNjZ0NSUkJBZW9Ba01ZR0RnQUFlSnhqZnNIQXdJeU83MklSQStFSlFMd0FpQTJoT0JLS0YwQXc0eGtJWmw0RnBDZEFNRmdmVkIxVEJBUXpGMEF4U0F3a1B3WEpuRFVJK3dDUFpSbXlBQUFBQUFBQUZnQkNBSW9BdmdEdUFSSUJMZ0dBQWFZQnZnSHVBZzRDT0FKaUFzb0RJZ09jQkJZRUtBUTRCSVlFbGdTbUJRd0ZQZ1YrQmFnRjBnWUNCallHZ2dhY0J0b0hKZ2RpQjQ0SHJBZnVBQUVBQUFBbkFGQUFDUUFBQUFBQUFnQUFBQkFBY3dBQUFDZ0xjQUFBQUFCNG5IV1F5MHJEUUJpRlQzcFIycUtnZ3V0L3BTMkY5QUpGY0NIRlFyc1NvWXZ1a3paTlV0Sk1tWmtLZGVjRCtJcStoZ3MzbnFTRGlHRENKTjg1LzIxbUFGemlBeDZPejRqcnlCNHFWRWV1NEJSM2pxdFVENDVyNUxIak9scDRkSHhDLzhseEUxMDhPMjdoQ3EvczROVWFWQnU4Ty9iWTZkTnhCZWY0Y2x4RnpXczRycEhQSE5keDdWMDRQcUYvNjdpSmhkZDEzTUtOOXpaUnU0Tk80OFJLZTlLUllYOHdrdkFnaWxhYUI1a0VlNXNvYldRc2E1WGJLTXVVdjFSYkU4NmplSjhGMm9RbVhFVGFwQ3FYZ2Q4MzRTektJeDNZYUZWME1TL3gwTnExckxYYXl0VFZ5MDZyVGJTMGZtTHQ3cjdYKzkwWEV5anNjSUJHaWhnSkxBUnR1aDMraCtoandBc1hoTXdRWmg2elV1UUlrTkVKc0dkRlVrWU05WmhyVFpYVGpaaVJrWDBzK2QweUhtSk9OMlpOeGtwZE9zVmEwQzFVV2xZS1ovcWNYRVJtak9SbE5DZzdybjcyWXZEQ1RrTzZsaE9McWJxY0lwaittUzg4WHhIYjBGblM5OHRUV3JyMzZQSDlaNy9meG5kdmR3QjRuRzFPMlhMQ01CQ0xRaHBDQ0xUMHZ1K1dKMytVNnppSmk3RTk5cWFVdnkrR0tYMnBIclRTenF5MFNacnNVQ2IvWTU0a1NERkFoZ1BrR0tMQUNDWEdxRERCRkljNHdnekhPTUVwem5DT0MxemlDdGU0d1MzdWNJOEhQT0lKejNqQks5N3dqbm5lS0UzU0Y5UXh6WDByVStxR1VhdEF1Wk5HS0owTGJvVFVtZE45R0FqYlRyaFdyV0dmZlNEVnJGTzd5TFFWaTBKK2k0NmJWbWExWFptMGQxVW50V05DZWFGbFhTblQyTDBKMWhNemZDbFo3NlovSmg0V2tWaXRmTjY3T0liQ0xoMFBZZVJWMjFIY0ZGbzJXN0VwRXFIYVpUSzVkTFFlMTVaK1MzS3lUSnE2Mkl4QTNGUFY4RUNzc1g3RmZUM1ptZzh1RnRHbFlsVnErU1gxOW9NUko1S0dsRFd6dmRxSEJzbTk2QVpDckxLWVdrYmFkU2ZKRDJZSWVReDRuR1B3M3NGd0lpaGlJeU5qWCtRR3hwMGNEQndNeVFVYkdWaWROakl3YUVGb0RoUjZKd01EQXljeWk1bkJaYU1LWTBkZ3hBYUhqb2lOekNrdUc5VkF2RjBjRFF5TUxBNGR5U0VSSUNXUlFMQ1JnVWRyQitQLzFnMHN2UnVaR0Z3QUI5TWl1QUFBQUE9PScpIGZvcm1hdCgnd29mZicpLFxuICAgICAgIHVybCgnZGF0YTphcHBsaWNhdGlvbi9vY3RldC1zdHJlYW07YmFzZTY0LEFBRUFBQUFPQUlBQUF3QmdUMU12TWo0cFNSSUFBQURzQUFBQVZtTnRZWERRTmhtM0FBQUJSQUFBQVVwamRuUWdBQUFBQUFBQUdDQUFBQUFLWm5CbmJZaVFrRmtBQUJnc0FBQUxjR2RoYzNBQUFBQVFBQUFZR0FBQUFBaG5iSGxtempqNDdRQUFBcEFBQUEvY2FHVmhaQWdickFRQUFCSnNBQUFBTm1ob1pXRUhsd054QUFBU3BBQUFBQ1JvYlhSNGcwY0FBQUFBRXNnQUFBQ2NiRzlqWVVtVVRaWUFBQk5rQUFBQVVHMWhlSEFBekF2U0FBQVR0QUFBQUNCdVlXMWwvOFNNYmdBQUU5UUFBQUtGY0c5emRBRVl0cGNBQUJaY0FBQUJ1bkJ5WlhEZGF3T0ZBQUFqbkFBQUFIc0FBUU5lQVpBQUJRQUlBbm9DdkFBQUFJd0NlZ0s4QUFBQjRBQXhBUUlBQUFJQUJRTUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBVUdaRlpBQkE2QURvSlFOUy8yb0FXZ05TQUpjQUFBQUJBQUFBQUFBQUFBQUFBd0FBQUFNQUFBQWNBQUVBQUFBQUFFUUFBd0FCQUFBQUhBQUVBQ2dBQUFBR0FBUUFBUUFDQUFEb0pmLy9BQUFBQU9nQS8vOEFBQmdCQUFFQUFBQUFBQUFBQUFFR0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUEvMm9ENkFOU0FBVUFCck1FQUFFdEt4RWhBUkVGRVFQby9xYit6QU5TL3FiK2J2d0NqZ0FBQUFBRUFBRC9hZ1BvQTFJQUF3QUhBQXNBRHdBTlFBb05EQWtJQlFRQkFBUXRLeFVSSVJFQkVTRVJFeEVoRVFFUklSRUJ0djVLQWJaOUFiWCtTd0cxbGdHMi9rb0NNd0cxL2t2OXpRRzIva29DTXdHMS9rc0FBQUFBQ1FBQS8yb0Q2QU5TQUFNQUJ3QUxBQThBRXdBWEFCc0FId0FqQUJkQUZDRWdIUndaR0JVVUVSQU5EQWtJQlFRQkFBa3RLeFUxTXhVRE5UTVZBelV6RlJNMU14VUROVE1WQXpVekZSTTFNeFVETlRNVkF6VXpGZnI2K3ZyNmZmcjYrdnI2ZmZyNit2cjZsdnI2QVhmNitnRjMrdnI5RXZyNkFYZjYrZ0YzK3ZyOUV2cjZBWGY2K2dGMyt2b0FBQUFBQmdBQS8yb0Q2QU5TQUFNQUJ3QUxBQThBRXdBWEFCRkFEaFVVRVJBTkRBa0lCUVFCQUFZdEt4VTFNeFVETlRNVkF6VXpGUk0xSVJVQk5TRVZBVFVoRmZyNit2cjZqUUpoL1o4Q1lmMmZBbUdXK3ZvQmQvcjZBWGY2K3YwUyt2b0JkL3I2QVhmNitnQURBQUQvY1FQZUEwd0FBZ0FHQUJNQUNyY1FDZ1lFQVFBRExTc1ZFd0VEQ1FNK0FoOEJGZzRDTHdFbVJBRVN6UUdtQVFQK1d3RVBBanBRR29NWkFqcFFHb01iandGWC91OEJRZ0dtL3Z6K1dnTHlKendDRzRJYVVEb0NHWU1iQUFBQkFBRC9hZ1BvQTFJQUN3QUdzd2tEQVMwck5Ra0JOd2tCRndrQkJ3a0JBUmYrNmQwQkZ3RVgzZjdwQVJmZC91bis2VWNCRndFWDNmN3BBUmZkL3VuKzZkMEJGLzdwQUFBQkFBRC9hZ1BvQTFJQUN3QUdzd2tEQVMwck5SRWhFU0VSSVJFaEVTRVJBV2NCR2dGbi9wbis1dEVCR2dGbi9wbis1djZaQVdjQUFBSUFBUDlxQStnRFVnQW5BREFBQ0xVdUtoNEtBaTByRVRVM05qY25OeGMyUHdFekZ4WVhOeGNIRmg4QkZRY0dCeGNISndZUEFTTW5KaWNISnpjbUp6Y1VGakkyTkNZT0FaWU9HR0J0ZFNrdkVKd1FMU3QxYldBWURwYVdEaGhnYlhVckxSQ2NFQzhwZFcxZ0dBN05WSHBVVkhwVUFSQ2NFQzByZFcxZkZ3NldsZzRYWDIxMUt5MFFuQkF2S1hWdFlCZ09scFlPR0dCdGRTa3ZYanhVVkhoV0FsSUFCQUFBLzZjRDZBTVdBQU1BQndBTEFBOEFEVUFLRFF3SkNBVUVBUUFFTFNzVk5TRVZKVFVoRlNVMUlSVWxOU0VWQStqOEdBUG8vQmdENlB3WUEraFpuSnp3bkp6eW5KenduWjBBQUFFQUFQKzhBK2dEQUFBR0FBYXpCUU1CTFNzUk54Y0JGd0Vub3FZQi9LVDlZS0lCQktLa0FmNmsvV0NrQUFBQUFBSUFBUDlxQTVBRFVnQVBBQmdBQ0xVV0VBY0FBaTByRlJFekpqYytBVGN5RmhjV0hRRXpFUUVoTlM0Qkp5WUdCNHNDR3llYVhGNmNKUnFXL2JJQkFBSklOelJHQlpZQ1FxWkJXR1lCYkZNN1AyMzl2Z0pDY0RSSUFnSklPZ0FBQUFJQUFBQUFBNDhDclFBR0FBMEFDTFVNQ2dRQ0FpMHJKU0VWSnpjVklTVTFJVFVYQnpVRGovMWkzOThDbnZ5REFwN2YzMzl2cUtkdzMzQnZwcWh2QUFBQkFBRC9hUU14QXhJQUZRQUdzeE1JQVMwckVUUTJNaDhCRVRRMk1oWVZFVGMyTWhZVUJ3a0JKaVEwRVBRa01pVHpFaklrRXY1Ni9ua1NBUnNaSkJMekFvSVpKQ1FaL1g3ekVpUXlFLzU2QVlZVUFBQUJBQUQvYXdNeEF4UUFGUUFHc3cwREFTMHJFVFEzQ1FFV0ZBWWlMd0VSRkFZaUpqY1JCd1lpSmhJQmh3R0dFaVF5RXZNa015UUI5Qkl5SkFGaUdoSUJodjU2RWpRakV2UDlmaGtrSkJrQ2d2TVNJd0FELy8zL3NRTmZBd3NBRHdBM0FFUUFDcmRCT3lzVEN3TURMU3NsTlRRbUt3RWlCaDBCRkJZN0FUSTJFelF1QVNNaUJ3WWZBUll6TWpjK0FUSVdGUlFHQnc0QkZ4VVVGanNCTWpZME5qOEJQZ01YRkE0QklpNENQZ0V5SGdFQjlBb0lhd2dLQ2dockNBcVBQbHd4aUVjSkRVb0VCZ2tGSGlVNEtoWWJJendCQ2dockNBb1lFaHdLSGhRTTEzTEc2TWh1Qm5xODlMcCtVbXNJQ2dvSWF3Z0tDZ0YvTVZRdWR3NEtOd1FISmhzZUVoVWFEQkJBSmhRSUNnb1NJZ3NRQmhvY0tGSjF4SFIweE9yRWRIVEVBQUFBQS8vOS83RURYd01MQUI0QUxnQTdBQXEzT0RJcUlob0lBeTBySlRVMEppc0JFVFFtS3dFaUJoMEJGQlk3QVJVaklnWWRBUlFXT3dFeU5nTTFOQ1lyQVNJR0hRRVVGanNCTWpZRkZBNEJJaTRDUGdFeUhnRUNPd29ITmdvSXNnZ0tDZ2cxTlFnS0NnajZCd3BIQ2dockNBb0tDR3NJQ2dGbGNzYm95RzRHZXJ6MHVuNVNXUWdLQVI0SUNnb0lXUWdLc3dvSVdRZ0tDZ0g4V1FnS0NnaFpDQW9LNEhYRWRIVEU2c1IwZE1RQUFBQUVBQUQvYWdPZkExSUFDZ0FpQUQ0QVRnQU5RQXBNUURJa0dROEZBQVF0S3dFekx3RW1OU01QQVFZSEFSUVBBUVlpTHdFbU5qc0JFVFEyT3dFeUZoVVJNeklXQlJVaE5STTJQd0UxSXdZckFSVWpOU0VWQXdZUEFSVTNOanNCTlJNVkl6VXpKeU1ITXhVak5UTVRNeE1DbVdJb0JnSUNBZ0VCQlA3YUJySUZEZ2V5Q0FnTmF3b0lhd2dLYXdnS0FkTCt1czRIQlFZSUJncUNRd0U5emdRSUJnZ0ZDNHQxb1NvYWlCb3FvQ2VBV29FQ2Jub2FDUUlMQ2dvRy9VWUdCN0lGQmJNSkZRTUFDQW9LQ1AwQUNrcUNNZ0VuQ2dZRkFRSkFnREwrMkFRS0J3RUJBa0lCOVR3OFVGQThQQUZ4L284QUFBQUFCQUFBLzJvRG53TlNBQW9BSWdBeUFFOEFEVUFLUkRRd0pCa1BCUUFFTFNzbE15OEJKalVqRHdFR0J3VVVEd0VHSWk4QkpqWTdBUkUwTmpzQk1oWVZFVE15RmdVVkl6VXpKeU1ITXhVak5UTVRNeE1ERlNFMUV6WS9BVFVIQmljR0t3RVZJelVoRlFNUEFSVTNOanNCTlFLWllpZ0dBZ0lDQVFFRS90b0dzZ1VPQjdJSUNBMXJDZ2hyQ0FwckNBb0NCS0VxR29nYUtxQW5nRnFCQy82NnpnY0ZCZ1FEQVFZS2drTUJQYzRNQmdnRkM0c3plaG9KQWdzS0NRZC9CZ2V5QlFXekNSVURBQWdLQ2dqOUFBcVJPenRRVURzN0FYTCtqZ0tDZ2pNQkp3b0ZCUUlCQVFFQ1FJQXkvdGtQQmdFQkFVSUFBQUVBQUFBQUFjd0NKZ0FDQUFhekFRQUJMU3NCQ3dFQnpPYm1BaWIrY0FHUUFBQUFBQUVBQUFBQUFjd0NKZ0FDQUFhekFRQUJMU3MxR3dIbTVwWUJrUDV3QUFBQUJQLy8vNGNEcXdNM0FBZ0FFUUFnQUNNQURVQUtJeUVaRXhFT0JBQUVMU3NCSWdZUUZpQTJFQ1luTWdBU0FBUUFFZ0FGTmhZSEF3WUhCU01pSmpjVE5qY0ROeWNCMVpmVzFnRXUxdGFYd2dFU0F2N3Evb0QrNmdJQkVnR0NEaFlEV2dRTy9zb0dEQklFV2dRTksvdTBBc3ZXL3RMVzFnRXUxbWorN3Y1Ni92QUVBUmdCZmdFYStBUVdEdjdLRGdSYUZBMEJOZzREL3RoSHRBQUFBUUFBQUFBQmtBSkVBQUlBQnJNQ0FBRXRLeEVOQVFHUS9uQUNST2JtQUFBQkFBQUFBQUdRQWtRQUFnQUdzd0VBQVMwckFSRWxBWkQrY0FKRS9qVG1BQVVBQVA5cUErZ0RVZ0FmQUNJQUpRQXpBRHdBRDBBTU5UUXZLQ1FqSVNBWEJ3VXRLd0V5RmhjUkZBWUhJU0ltSnpVaElpWW5FVFEyUHdFK0FUc0JNaFlYRlRZekR3RXpBUWN6RnpjMUl4VVVCaWNqRVNFMU5EWUJFU01WRkFZbkl4RURzaGNlQVNBVy9la1hIZ0grMFJjZUFSWVE1QTgyRnVnWEhnRW1JVWVucC82YnA2ZHRzTlllRitrQkhoWUNKdGNlRitnQ2ZDQVcvVm9YSGdFZ0ZxQWdGZ0YzRmpZUDVCQVdJQmEzRjNlbkFYMm53ckRwNlJZZ0FmNmJqeFkyL2s0Q2crZ1dJQUgrbWdBQUFBTC8vZit4QTE4REN3QU1BQmtBQ0xVV0VBWUFBaTByQVNJT0FoNEJNajRCTGdJQkZBNEJJaTRDUGdFeUhnRUJyVk9NVUFKVWlLcUdWZ1JPamdGYmNzYm95RzRHZXJ6MHVuNENqbEtNcEl4U1VveWtqRkwrMEhYRWRIVEU2c1IwZE1RQUFBQUQvLzMvc1FOZkF3c0FDQUFWQUNJQUNyY2ZHUThKQmdJRExTc0JGQVlpTGdFMk1oWW5JZzRDSGdFeVBnRXVBZ0VVRGdFaUxnSStBVEllQVFJN1VuaFNBbFowVnBCVGpGQUNWSWlxaGxZRVRvNEJXM0xHNk1odUJucTg5THArQVY0N1ZGUjJWRlQxVW95a2pGSlNqS1NNVXY3UWRjUjBkTVRxeEhSMHhBQUFBQUlBQUFBQUFsZ0NnZ0FMQUJRQUNMVVFEQW9GQWkwckFSWVVCd1VHSmpVUk5EWVhKVElWRVJRaU5SRTBBWndPRHY2V0Zod2NGZ0hjU3BZQmRnb2FDdVFPRWhvQnVob1NEaWc2L2k0Nk9nSFNPZ0FBQUFJQUFBQUFBbGdDZ2dBTUFCUUFDTFVTRGdrRUFpMHJFelEzSlRZV0ZSRVVCaWNsSmljME1oVVJGQ0kxcmc0QmJCUWNIQlQrbEE2dWxwWUJYZzRLNUE0U0d2NUdHaElPNUFyMk9qcitMam82QUFBQUFBSUFBQUFBQTNBQ2ZBQUxBQmNBQ0xVV0VRb0ZBaTByQVJZVUJ3VUdKalVSTkRZWEJ4WVVCd1VHSmpVUk5EWVhBMklPRHY2TUZoNGVGbElPRHY2WUZDQWdGQUYyQ2h3SStBNFFIQUhpSEJBTytBb2NDUGdPRUJ3QjRod1FEZ0FBQUFJQUFBQUFBM0FDZkFBTUFCa0FDTFVXRVFrRUFpMHJFVFEzSlRZV0ZSRVVCaWNsSmlVME55VTJGaFVSRkFZbkpTWU9BWFlVSUNBVS9vb09BY1lPQVdnVUlDQVUvcGdPQVY0T0N2Z09FQnorSGh3UUR2Z0lEZzRLK0E0UUhQNGVIQkFPK0FnQUFBQUFBZi8rLzdFRFdRTUxBREFBQnJNcElRRXRLd0VWRkFZckFTSW1Qd0VtSXlJT0FoNERNekkyTno0Qkh3RWVBUWNPQVFjaUxnSStBek15RmhjM05oWURXUlFRK2hjVEVVMVNjRHBxVERBRUtGUmlQa0oyS1FRUkJrd0ZBZ1k4cmw5WG9IQklCRUI0bUZ0U21EMUlFQzBDdy9vT0ZpMFFUVTB1VEdwMGFrd3VPalVHQVFWTkJBNEdTbEFCUkhTZXJwNTBSRDQ1U0JJVEFBQUJBQUFBQUFMb0Fvb0FDd0FHc3dvRUFTMHJOeUltTlJFekVTRTFGd2MxWkNvNmpBRnM4UERJUENnQlh2N0tsdHpjbGdBQUEvLy8vOFVEbFFMM0FCRUFGUUFmQUFxM0d4WVRFZzRGQXkwckpSWUhEZ0VISVM0Qkp6UTNBVDRCTWhZWEJ4RXpFUU1PQVFjZUFUSTJOQ1lEaVF3QkFUTW0vU0VsTlFFTkFYQU1LRElwREkrRlFpQXFBUUVxUUNvcFRSWVhLRElCQVRNbkZ4WUNmUlVZR0JXbC90VUJLLzZQQVNraUlDa3BRU29BQUFQLy9mK3hBMWtEQ3dBTUFCd0FMZ0FLdHlvaEdSQUdBQU10S3dFeUhnRVVEZ0VpTGdJK0FSTTFOQ1lyQVNJR0J4VVVGaGN6TWpZbkV6UW5KaXNCSWdjR0ZSTVVGanNCTWpZQnJYVEdjbkxHNk1odUJucTh3UW9IYXdnS0FRd0hhd2NLQVFvR0JRaDdDQVVHQ2dvSlp3Z0tBd3QweE9yRWRIVEU2c1IwL1VocUNBb0tDR29JQ2dFTXh3RmFCd01GQlFNSC9xWUdDQWdBQXYvLy8yb0RvUU1OQUFnQUlRQUl0UmtMQmdNQ0xTc0JOQzRCQmg0QlBnRUJGQVlpTHdFR0l5SXVBajRFSGdJWEZBY1hGZ0tEbE15V0JJN1VqQUVpTERvVXYyUjdVSkpvUUFJOGJJNmtqSEE0QTBXL0ZRR0NaNUlDbHNxWUJveittaDBxRmI5RlBtcVFvbzV1T2dSQ1pwWk5lMlMvRlFBQUFRQUEvNndEckFMZ0FCY0FCck1FQUFFdEt3RXlGaEFHSXlJbk54WXpNallRSmlJR0J6TUhKek0rQVFJVXF1N3VxbzV1UmxSaWZyUzArclFDanJpNGZBTHdBdUR3L3F6d1dFbzh0QUVBdEs1OHpNeW02Z0FBQUFFQUFQOS9BK2dEUFFBSkFBYXpCZ0lCTFNzUkJSc0JEUUVUSlFVVEFYdDlkUUY3L3N0dS9zMyt5bmNCMXdJQmFQNlVDTnora3VIWEFXZ0FBQUlBQVArQUErZ0RQUUFSQUNJQUNMVWdHUW9FQWkwckVUTUZFemNYRXcwQkV4Y3ZBUThCTnhNbkh3SVBBVDhCRnljL0FTOEREd0ZlQVIxZ0hSMVlBWHYreTFJY1RPZm9UaDFhNDNHb0ZBaENzQkcrUXhLdTF4WUlRRVlJQWRjQ0FRNWFYUDd3Q056KzdsczRxS0kxV2dFT3JnaUJEaFhMZXd1SzRBNTlCQUlWeWNjVkFBRUFBQUFCQUFEQ1FqMkFYdzg4OVFBTEErZ0FBQUFBMG92SlNnQUFBQURTaTU4YS8vMy9hUVBvQTFJQUFBQUlBQUlBQUFBQUFBQUFBUUFBQTFML2FnQmFBK2dBQVAvM0ErZ0FBUUFBQUFBQUFBQUFBQUFBQUFBQUFDY0Q2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBkQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBT1FBQUFEb0FBQUF6RUFBQU14QUFBRFdRQUFBMWtBQUFPZ0FBQURvQUFBQWN3QUFBSE1BQUFEcWdBQUFaQUFBQUdRQUFBRDZBQUFBMWtBQUFOWkFBQUNXQUFBQWxnQUFBTndBQUFEY0FBQUExa0FBQUxvQUFBRGxBQUFBMWtBQUFPZ0FBQURyQUFBQStnQUFBUG9BQUFBQUFBQUFCWUFRZ0NLQUw0QTdnRVNBUzRCZ0FHbUFiNEI3Z0lPQWpnQ1lnTEtBeUlEbkFRV0JDZ0VPQVNHQkpZRXBnVU1CVDRGZmdXb0JkSUdBZ1kyQm9JR25BYmFCeVlIWWdlT0I2d0g3Z0FCQUFBQUp3QlFBQWtBQUFBQUFBSUFBQUFRQUhNQUFBQW9DM0FBQUFBQUFBQUFFZ0RlQUFFQUFBQUFBQUFBTlFBQUFBRUFBQUFBQUFFQUFnQTFBQUVBQUFBQUFBSUFCd0EzQUFFQUFBQUFBQU1BQWdBK0FBRUFBQUFBQUFRQUFnQkFBQUVBQUFBQUFBVUFDd0JDQUFFQUFBQUFBQVlBQWdCTkFBRUFBQUFBQUFvQUt3QlBBQUVBQUFBQUFBc0FFd0I2QUFNQUFRUUpBQUFBYWdDTkFBTUFBUVFKQUFFQUJBRDNBQU1BQVFRSkFBSUFEZ0Q3QUFNQUFRUUpBQU1BQkFFSkFBTUFBUVFKQUFRQUJBRU5BQU1BQVFRSkFBVUFGZ0VSQUFNQUFRUUpBQVlBQkFFbkFBTUFBUVFKQUFvQVZnRXJBQU1BQVFRSkFBc0FKZ0dCUTI5d2VYSnBaMmgwSUNoREtTQXlNREUxSUdKNUlHOXlhV2RwYm1Gc0lHRjFkR2h2Y25NZ1FDQm1iMjUwWld4c2J5NWpiMjF6WWxKbFozVnNZWEp6WW5OaVZtVnljMmx2YmlBeExqQnpZa2RsYm1WeVlYUmxaQ0JpZVNCemRtY3lkSFJtSUdaeWIyMGdSbTl1ZEdWc2JHOGdjSEp2YW1WamRDNW9kSFJ3T2k4dlptOXVkR1ZzYkc4dVkyOXRBRU1BYndCd0FIa0FjZ0JwQUdjQWFBQjBBQ0FBS0FCREFDa0FJQUF5QURBQU1RQTFBQ0FBWWdCNUFDQUFid0J5QUdrQVp3QnBBRzRBWVFCc0FDQUFZUUIxQUhRQWFBQnZBSElBY3dBZ0FFQUFJQUJtQUc4QWJnQjBBR1VBYkFCc0FHOEFMZ0JqQUc4QWJRQnpBR0lBVWdCbEFHY0FkUUJzQUdFQWNnQnpBR0lBY3dCaUFGWUFaUUJ5QUhNQWFRQnZBRzRBSUFBeEFDNEFNQUJ6QUdJQVJ3QmxBRzRBWlFCeUFHRUFkQUJsQUdRQUlBQmlBSGtBSUFCekFIWUFad0F5QUhRQWRBQm1BQ0FBWmdCeUFHOEFiUUFnQUVZQWJ3QnVBSFFBWlFCc0FHd0Fid0FnQUhBQWNnQnZBR29BWlFCakFIUUFMZ0JvQUhRQWRBQndBRG9BTHdBdkFHWUFid0J1QUhRQVpRQnNBR3dBYndBdUFHTUFid0J0QUFBQUFBSUFBQUFBQUFBQUNnQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBSndBQUFRSUJBd0VFQVFVQkJnRUhBUWdCQ1FFS0FRc0JEQUVOQVE0QkR3RVFBUkVCRWdFVEFSUUJGUUVXQVJjQkdBRVpBUm9CR3dFY0FSMEJIZ0VmQVNBQklRRWlBU01CSkFFbEFTWUJKd1ptYVd4MFpYSUlkR2d0YkdGeVoyVUNkR2dIZEdndGJHbHpkQVp3Wlc1amFXd0dZMkZ1WTJWc0JIQnNkWE1EWTI5bkRXRnNhV2R1TFdwMWMzUnBabmtDYjJzRWJHOWphd2hsZUdOb1lXNW5aUVJrYjNkdUFuVndER2hsYkhBdFkybHlZMnhsWkF4cGJtWnZMV05wY21Oc1pXUU1jMjl5ZEMxdVlXMWxMWFZ3RG5OdmNuUXRibUZ0WlMxa2IzZHVDR1J2ZDI0dFpHbHlCblZ3TFdScGNnZGpiMjF3WVhOekNYSnBaMmgwTFdScGNnaHNaV1owTFdScGNnUmtiMk56REdOcGNtTnNaUzFsYlhCMGVRdGtiM1F0WTJseVkyeGxaQVowYnkxbGJtUUlkRzh0YzNSaGNuUU1abUZ6ZEMxbWIzSjNZWEprRFdaaGMzUXRZbUZqYTNkaGNtUUNZM2NLYkdWMlpXd3RaRzkzYmdsaGRIUmxiblJwYjI0UllYUjBaVzUwYVc5dUxXTnBjbU5zWldRR2MyVmhjbU5vQTJOamR3UnpkR0Z5Q25OMFlYSXRaVzF3ZEhrQUFBQUFBQUVBQWYvL0FBOEFBQUFBQUFBQUFBQUFBQUN3QUN3Z3NBQlZXRVZaSUNCTHVBQU9VVXV3QmxOYVdMQTBHN0FvV1dCbUlJcFZXTEFDSldHNUNBQUlBR05qSTJJYklTR3dBRm13QUVNalJMSUFBUUJEWUVJdHNBRXNzQ0JnWmkyd0Fpd2daQ0N3d0ZDd0JDWmFzaWdCQ2tORlkwVlNXMWdoSXlFYmlsZ2dzRkJRV0NHd1FGa2JJTEE0VUZnaHNEaFpXU0N4QVFwRFJXTkZZV1N3S0ZCWUliRUJDa05GWTBVZ3NEQlFXQ0d3TUZrYklMREFVRmdnWmlDS2ltRWdzQXBRV0dBYklMQWdVRmdoc0FwZ0d5Q3dObEJZSWJBMllCdGdXVmxaRzdBQksxbFpJN0FBVUZobFdWa3RzQU1zSUVVZ3NBUWxZV1Fnc0FWRFVGaXdCU05Dc0FZalFoc2hJVm13QVdBdHNBUXNJeUVqSVNCa3NRVmlRaUN3QmlOQ3NRRUtRMFZqc1FFS1E3QUFZRVZqc0FNcUlTQ3dCa01naWlDS3NBRXJzVEFGSmJBRUpsRllZRkFiWVZKWldDTlpJU0N3UUZOWXNBRXJHeUd3UUZranNBQlFXR1ZaTGJBRkxMQUhReXV5QUFJQVEyQkNMYkFHTExBSEkwSWpJTEFBSTBKaHNBSmlackFCWTdBQllMQUZLaTJ3Qnl3Z0lFVWdzQXREWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUVTd0FXQXRzQWdzc2djTEFFTkZRaW9oc2dBQkFFTmdRaTJ3Q1N5d0FFTWpSTElBQVFCRFlFSXRzQW9zSUNCRklMQUJLeU93QUVPd0JDVmdJRVdLSTJFZ1pDQ3dJRkJZSWJBQUc3QXdVRml3SUJ1d1FGbFpJN0FBVUZobFdiQURKU05oUkVTd0FXQXRzQXNzSUNCRklMQUJLeU93QUVPd0JDVmdJRVdLSTJFZ1pMQWtVRml3QUJ1d1FGa2pzQUJRV0dWWnNBTWxJMkZFUkxBQllDMndEQ3dnc0FBalFySUxDZ05GV0NFYkl5RlpLaUV0c0Ewc3NRSUNSYkJrWVVRdHNBNHNzQUZnSUNDd0RFTktzQUJRV0NDd0RDTkNXYkFOUTBxd0FGSllJTEFOSTBKWkxiQVBMQ0N3RUdKbXNBRmpJTGdFQUdPS0kyR3dEa05nSUlwZ0lMQU9JMElqTGJBUUxFdFVXTEVFWkVSWkpMQU5aU040TGJBUkxFdFJXRXRUV0xFRVpFUlpHeUZaSkxBVFpTTjRMYkFTTExFQUQwTlZXTEVQRDBPd0FXRkNzQThyV2JBQVE3QUNKVUt4REFJbFFyRU5BaVZDc0FFV0l5Q3dBeVZRV0xFQkFFTmdzQVFsUW9xS0lJb2pZYkFPS2lFanNBRmhJSW9qWWJBT0tpRWJzUUVBUTJDd0FpVkNzQUlsWWJBT0tpRlpzQXhEUjdBTlEwZGdzQUppSUxBQVVGaXdRR0JaWnJBQll5Q3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nc1FBQUV5TkVzQUZEc0FBK3NnRUJBVU5nUWkyd0V5d0FzUUFDUlZSWXNBOGpRaUJGc0FzalFyQUtJN0FBWUVJZ1lMQUJZYlVRRUFFQURnQkNRb3Bnc1JJR0s3QnlLeHNpV1Myd0ZDeXhBQk1yTGJBVkxMRUJFeXN0c0JZc3NRSVRLeTJ3Rnl5eEF4TXJMYkFZTExFRUV5c3RzQmtzc1FVVEt5MndHaXl4QmhNckxiQWJMTEVIRXlzdHNCd3NzUWdUS3kyd0hTeXhDUk1yTGJBZUxBQ3dEU3V4QUFKRlZGaXdEeU5DSUVXd0N5TkNzQW9qc0FCZ1FpQmdzQUZodFJBUUFRQU9BRUpDaW1DeEVnWXJzSElyR3lKWkxiQWZMTEVBSGlzdHNDQXNzUUVlS3kyd0lTeXhBaDRyTGJBaUxMRURIaXN0c0NNc3NRUWVLeTJ3SkN5eEJSNHJMYkFsTExFR0hpc3RzQ1lzc1FjZUt5MndKeXl4Q0I0ckxiQW9MTEVKSGlzdHNDa3NJRHl3QVdBdHNDb3NJR0N3RUdBZ1F5T3dBV0JEc0FJbFliQUJZTEFwS2lFdHNDc3NzQ29yc0NvcUxiQXNMQ0FnUnlBZ3NBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZQ05oT0NNZ2lsVllJRWNnSUxBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlkyQWpZVGdiSVZrdHNDMHNBTEVBQWtWVVdMQUJGckFzS3JBQkZUQWJJbGt0c0M0c0FMQU5LN0VBQWtWVVdMQUJGckFzS3JBQkZUQWJJbGt0c0M4c0lEV3dBV0F0c0RBc0FMQUJSV080QkFCaUlMQUFVRml3UUdCWlpyQUJZN0FCSzdBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlk3QUJLN0FBRnJRQUFBQUFBRVErSXppeEx3RVZLaTJ3TVN3Z1BDQkhJTEFMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTJDd0FFTmhPQzJ3TWl3dUZ6d3RzRE1zSUR3Z1J5Q3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nc0FCRFliQUJRMk00TGJBMExMRUNBQllsSUM0Z1I3QUFJMEt3QWlWSmlvcEhJMGNqWVNCWVloc2hXYkFCSTBLeU13RUJGUlFxTGJBMUxMQUFGckFFSmJBRUpVY2pSeU5oc0FsREsyV0tMaU1nSUR5S09DMndOaXl3QUJhd0JDV3dCQ1VnTGtjalJ5TmhJTEFFSTBLd0NVTXJJTEJnVUZnZ3NFQlJXTE1DSUFNZ0c3TUNKZ01hV1VKQ0l5Q3dDRU1naWlOSEkwY2pZU05HWUxBRVE3QUNZaUN3QUZCWXNFQmdXV2F3QVdOZ0lMQUJLeUNLaW1FZ3NBSkRZR1Fqc0FORFlXUlFXTEFDUTJFYnNBTkRZRm13QXlXd0FtSWdzQUJRV0xCQVlGbG1zQUZqWVNNZ0lMQUVKaU5HWVRnYkk3QUlRMGF3QWlXd0NFTkhJMGNqWVdBZ3NBUkRzQUppSUxBQVVGaXdRR0JaWnJBQlkyQWpJTEFCS3lPd0JFTmdzQUVyc0FVbFliQUZKYkFDWWlDd0FGQllzRUJnV1dhd0FXT3dCQ1poSUxBRUpXQmtJN0FESldCa1VGZ2hHeU1oV1NNZ0lMQUVKaU5HWVRoWkxiQTNMTEFBRmlBZ0lMQUZKaUF1UnlOSEkyRWpQRGd0c0Rnc3NBQVdJTEFJSTBJZ0lDQkdJMGV3QVNzallUZ3RzRGtzc0FBV3NBTWxzQUlsUnlOSEkyR3dBRlJZTGlBOEl5RWJzQUlsc0FJbFJ5TkhJMkVnc0FVbHNBUWxSeU5ISTJHd0JpV3dCU1ZKc0FJbFlia0lBQWdBWTJNaklGaGlHeUZaWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUNNdUl5QWdQSW80SXlGWkxiQTZMTEFBRmlDd0NFTWdMa2NqUnlOaElHQ3dJR0Jtc0FKaUlMQUFVRml3UUdCWlpyQUJZeU1nSUR5S09DMndPeXdqSUM1R3NBSWxSbEpZSUR4WkxyRXJBUlFyTGJBOExDTWdMa2F3QWlWR1VGZ2dQRmt1c1NzQkZDc3RzRDBzSXlBdVJyQUNKVVpTV0NBOFdTTWdMa2F3QWlWR1VGZ2dQRmt1c1NzQkZDc3RzRDRzc0RVckl5QXVSckFDSlVaU1dDQThXUzZ4S3dFVUt5MndQeXl3Tml1S0lDQThzQVFqUW9vNEl5QXVSckFDSlVaU1dDQThXUzZ4S3dFVUs3QUVReTZ3S3lzdHNFQXNzQUFXc0FRbHNBUW1JQzVISTBjalliQUpReXNqSUR3Z0xpTTRzU3NCRkNzdHNFRXNzUWdFSlVLd0FCYXdCQ1d3QkNVZ0xrY2pSeU5oSUxBRUkwS3dDVU1ySUxCZ1VGZ2dzRUJSV0xNQ0lBTWdHN01DSmdNYVdVSkNJeUJIc0FSRHNBSmlJTEFBVUZpd1FHQlpackFCWTJBZ3NBRXJJSXFLWVNDd0FrTmdaQ093QTBOaFpGQllzQUpEWVJ1d0EwTmdXYkFESmJBQ1lpQ3dBRkJZc0VCZ1dXYXdBV05oc0FJbFJtRTRJeUE4SXpnYklTQWdSaU5Ic0FFckkyRTRJVm14S3dFVUt5MndRaXl3TlNzdXNTc0JGQ3N0c0VNc3NEWXJJU01nSUR5d0JDTkNJeml4S3dFVUs3QUVReTZ3S3lzdHNFUXNzQUFWSUVld0FDTkNzZ0FCQVJVVUV5NndNU290c0VVc3NBQVZJRWV3QUNOQ3NnQUJBUlVVRXk2d01Tb3RzRVlzc1FBQkZCT3dNaW90c0Vjc3NEUXFMYkJJTExBQUZrVWpJQzRnUm9vallUaXhLd0VVS3kyd1NTeXdDQ05Dc0VnckxiQktMTElBQUVFckxiQkxMTElBQVVFckxiQk1MTElCQUVFckxiQk5MTElCQVVFckxiQk9MTElBQUVJckxiQlBMTElBQVVJckxiQlFMTElCQUVJckxiQlJMTElCQVVJckxiQlNMTElBQUQ0ckxiQlRMTElBQVQ0ckxiQlVMTElCQUQ0ckxiQlZMTElCQVQ0ckxiQldMTElBQUVBckxiQlhMTElBQVVBckxiQllMTElCQUVBckxiQlpMTElCQVVBckxiQmFMTElBQUVNckxiQmJMTElBQVVNckxiQmNMTElCQUVNckxiQmRMTElCQVVNckxiQmVMTElBQUQ4ckxiQmZMTElBQVQ4ckxiQmdMTElCQUQ4ckxiQmhMTElCQVQ4ckxiQmlMTEEzS3k2eEt3RVVLeTJ3WXl5d055dXdPeXN0c0dRc3NEY3JzRHdyTGJCbExMQUFGckEzSzdBOUt5MndaaXl3T0NzdXNTc0JGQ3N0c0djc3NEZ3JzRHNyTGJCb0xMQTRLN0E4S3kyd2FTeXdPQ3V3UFNzdHNHb3NzRGtyTHJFckFSUXJMYkJyTExBNUs3QTdLeTJ3YkN5d09TdXdQQ3N0c0cwc3NEa3JzRDByTGJCdUxMQTZLeTZ4S3dFVUt5MndieXl3T2l1d095c3RzSEFzc0RvcnNEd3JMYkJ4TExBNks3QTlLeTJ3Y2l5ekNRUUNBMFZZSVJzaklWbENLN0FJWmJBREpGQjRzQUVWTUMwQVM3Z0F5RkpZc1FFQmpsbXdBYmtJQUFnQVkzQ3hBQVZDc1FBQUtyRUFCVUt4QUFncXNRQUZRckVBQ0NxeEFBVkN1UUFBQUFrcXNRQUZRcmtBQUFBSktyRURBRVN4SkFHSVVWaXdRSWhZc1FOa1JMRW1BWWhSV0xvSWdBQUJCRUNJWTFSWXNRTUFSRmxaV1ZteEFBd3F1QUgvaGJBRWpiRUNBRVFBJykgZm9ybWF0KCd0cnVldHlwZScpO1xufVxuLyogQ2hyb21lIGhhY2s6IFNWRyBpcyByZW5kZXJlZCBtb3JlIHNtb290aCBpbiBXaW5kb3p6ZS4gMTAwJSBtYWdpYywgdW5jb21tZW50IGlmIHlvdSBuZWVkIGl0LiAqL1xuLyogTm90ZSwgdGhhdCB3aWxsIGJyZWFrIGhpbnRpbmchIEluIG90aGVyIE9TLWVzIGZvbnQgd2lsbCBiZSBub3QgYXMgc2hhcnAgYXMgaXQgY291bGQgYmUgKi9cbi8qXG5AbWVkaWEgc2NyZWVuIGFuZCAoLXdlYmtpdC1taW4tZGV2aWNlLXBpeGVsLXJhdGlvOjApIHtcbiAgQGZvbnQtZmFjZSB7XG4gICAgZm9udC1mYW1pbHk6ICdzYic7XG4gICAgc3JjOiB1cmwoJy4uL2ZvbnQvc2Iuc3ZnPzQ5MzQwMjQ4I3NiJykgZm9ybWF0KCdzdmcnKTtcbiAgfVxufVxuKi9cbiBcbiBbY2xhc3NePVwic2ItaWNvbi1cIl06YmVmb3JlLCBbY2xhc3MqPVwiIHNiLWljb24tXCJdOmJlZm9yZSB7XG4gIGZvbnQtZmFtaWx5OiBcInNiXCI7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgc3BlYWs6IG5vbmU7XG4gXG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgdGV4dC1kZWNvcmF0aW9uOiBpbmhlcml0O1xuICB3aWR0aDogMWVtO1xuICBtYXJnaW4tcmlnaHQ6IC4yZW07XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgLyogb3BhY2l0eTogLjg7ICovXG4gXG4gIC8qIEZvciBzYWZldHkgLSByZXNldCBwYXJlbnQgc3R5bGVzLCB0aGF0IGNhbiBicmVhayBnbHlwaCBjb2RlcyovXG4gIGZvbnQtdmFyaWFudDogbm9ybWFsO1xuICB0ZXh0LXRyYW5zZm9ybTogbm9uZTtcbiAgICAgXG4gIC8qIGZpeCBidXR0b25zIGhlaWdodCwgZm9yIHR3aXR0ZXIgYm9vdHN0cmFwICovXG4gIGxpbmUtaGVpZ2h0OiAxZW07XG4gXG4gIC8qIEFuaW1hdGlvbiBjZW50ZXIgY29tcGVuc2F0aW9uIC0gbWFyZ2lucyBzaG91bGQgYmUgc3ltbWV0cmljICovXG4gIC8qIHJlbW92ZSBpZiBub3QgbmVlZGVkICovXG4gIG1hcmdpbi1sZWZ0OiAuMmVtO1xuIFxuICAvKiB5b3UgY2FuIGJlIG1vcmUgY29tZm9ydGFibGUgd2l0aCBpbmNyZWFzZWQgaWNvbnMgc2l6ZSAqL1xuICAvKiBmb250LXNpemU6IDEyMCU7ICovXG4gXG4gIC8qIFVuY29tbWVudCBmb3IgM0QgZWZmZWN0ICovXG4gIC8qIHRleHQtc2hhZG93OiAxcHggMXB4IDFweCByZ2JhKDEyNywgMTI3LCAxMjcsIDAuMyk7ICovXG59XG4uc2ItaWNvbi1maWx0ZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMCc7IH0gLyogJ+6ggCcgKi9cbi5zYi1pY29uLXRoLWxhcmdlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDEnOyB9IC8qICfuoIEnICovXG4uc2ItaWNvbi10aDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAyJzsgfSAvKiAn7qCCJyAqL1xuLnNiLWljb24tdGgtbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAzJzsgfSAvKiAn7qCDJyAqL1xuLnNiLWljb24tcGVuY2lsOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDQnOyB9IC8qICfuoIQnICovXG4uc2ItaWNvbi1jYW5jZWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNSc7IH0gLyogJ+6ghScgKi9cbi5zYi1pY29uLXBsdXM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNic7IH0gLyogJ+6ghicgKi9cbi5zYi1pY29uLWNvZzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA3JzsgfSAvKiAn7qCHJyAqL1xuLnNiLWljb24tYWxpZ24tanVzdGlmeTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA4JzsgfSAvKiAn7qCIJyAqL1xuLnNiLWljb24tb2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwOSc7IH0gLyogJ+6giScgKi9cbi5zYi1pY29uLWxvY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwYSc7IH0gLyogJ+6giicgKi9cbi5zYi1pY29uLWV4Y2hhbmdlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGInOyB9IC8qICfuoIsnICovXG4uc2ItaWNvbi1kb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGMnOyB9IC8qICfuoIwnICovXG4uc2ItaWNvbi11cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBkJzsgfSAvKiAn7qCNJyAqL1xuLnNiLWljb24taGVscC1jaXJjbGVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGUnOyB9IC8qICfuoI4nICovXG4uc2ItaWNvbi1pbmZvLWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwZic7IH0gLyogJ+6gjycgKi9cbi5zYi1pY29uLXNvcnQtbmFtZS11cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEwJzsgfSAvKiAn7qCQJyAqL1xuLnNiLWljb24tc29ydC1uYW1lLWRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMSc7IH0gLyogJ+6gkScgKi9cbi5zYi1pY29uLWRvd24tZGlyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTInOyB9IC8qICfuoJInICovXG4uc2ItaWNvbi11cC1kaXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMyc7IH0gLyogJ+6gkycgKi9cbi5zYi1pY29uLWNvbXBhc3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNCc7IH0gLyogJ+6glCcgKi9cbi5zYi1pY29uLXJpZ2h0LWRpcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE1JzsgfSAvKiAn7qCVJyAqL1xuLnNiLWljb24tbGVmdC1kaXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNic7IH0gLyogJ+6glicgKi9cbi5zYi1pY29uLWRvY3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNyc7IH0gLyogJ+6glycgKi9cbi5zYi1pY29uLWNpcmNsZS1lbXB0eTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE4JzsgfSAvKiAn7qCYJyAqL1xuLnNiLWljb24tZG90LWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxOSc7IH0gLyogJ+6gmScgKi9cbi5zYi1pY29uLXRvLWVuZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFhJzsgfSAvKiAn7qCaJyAqL1xuLnNiLWljb24tdG8tc3RhcnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYic7IH0gLyogJ+6gmycgKi9cbi5zYi1pY29uLWZhc3QtZm9yd2FyZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFjJzsgfSAvKiAn7qCcJyAqL1xuLnNiLWljb24tZmFzdC1iYWNrd2FyZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFkJzsgfSAvKiAn7qCdJyAqL1xuLnNiLWljb24tY3c6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZSc7IH0gLyogJ+6gnicgKi9cbi5zYi1pY29uLWxldmVsLWRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZic7IH0gLyogJ+6gnycgKi9cbi5zYi1pY29uLWF0dGVudGlvbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIwJzsgfSAvKiAn7qCgJyAqL1xuLnNiLWljb24tYXR0ZW50aW9uLWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMSc7IH0gLyogJ+6goScgKi9cbi5zYi1pY29uLXNlYXJjaDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIyJzsgfSAvKiAn7qCiJyAqL1xuLnNiLWljb24tY2N3OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjMnOyB9IC8qICfuoKMnICovXG4uc2ItaWNvbi1zdGFyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjQnOyB9IC8qICfuoKQnICovXG4uc2ItaWNvbi1zdGFyLWVtcHR5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjUnOyB9IC8qICfuoKUnICovXG4vKiBlbmQgb2YgaW1wb3J0IGZyb20gc2ItZW1iZWRkZWQuY3NzICovXG5cblxuLnNiICpbY2xhc3NePVwic2ItaWNvbi1cIl06YmVmb3JlLCAuc2IgKltjbGFzcyo9XCIgc2ItaWNvbi1cIl06YmVmb3JlIHtcbiAgZm9udC1mYW1pbHk6ICdzYic7XG4gIGNvbG9yOiBpbmhlcml0O1xuICAvKiBCZXR0ZXIgRm9udCBSZW5kZXJpbmcgPT09PT09PT09PT0gKi9cbiAgLXdlYmtpdC1mb250LXNtb290aGluZzogYW50aWFsaWFzZWQ7XG4gIC1tb3otb3N4LWZvbnQtc21vb3RoaW5nOiBncmF5c2NhbGU7XG59XG5cbi8vIGZpeCBmb3IgaWNvbiBmb250IHRoYXQgZGlkbid0IGhhdmUgdmVydGljYWwgc29ydCBhcnJvd3Ncbi5zYi1pY29uLWV4Y2hhbmdlOmJlZm9yZSB7XG4gIC5yb3RhdGUoOTBkZWcpO1xufVxuXG4vLyBUaGUgbG9hZGluZyBzcGlubmVyLiAgVGhpcyBpcyBhbiBhbmltYXRlZCBnaWYsIGZvdW5kIGF0IFwiaWNvbnMvbG9hZGVyLmdpZlwiXG4uc2ItaWNvbi1sb2FkaW5nIHtcbiAgd2lkdGg6IDE0OHB4O1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG59XG5cbi5zYi1pY29uLWxvYWRpbmcgPiBkaXYge1xuICB3aWR0aDogMzZweDtcbiAgaGVpZ2h0OiAxOHB4O1xuICBtYXJnaW46IDJweDtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiSGlnaGxpZ2h0Q29sb3I7XG5cbiAgYm9yZGVyLXJhZGl1czogMTAlO1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIC13ZWJraXQtYW5pbWF0aW9uOiBib3VuY2VkZWxheSAxLjRzIGluZmluaXRlIGVhc2UtaW4tb3V0O1xuICBhbmltYXRpb246IGJvdW5jZWRlbGF5IDEuNHMgaW5maW5pdGUgZWFzZS1pbi1vdXQ7XG4gIC8qIFByZXZlbnQgZmlyc3QgZnJhbWUgZnJvbSBmbGlja2VyaW5nIHdoZW4gYW5pbWF0aW9uIHN0YXJ0cyAqL1xuICAtd2Via2l0LWFuaW1hdGlvbi1maWxsLW1vZGU6IGJvdGg7XG4gIGFuaW1hdGlvbi1maWxsLW1vZGU6IGJvdGg7XG59XG5cbi5zYi1pY29uLWxvYWRpbmcgLnNiLWljb24tYm91bmNlMSB7XG4gIC13ZWJraXQtYW5pbWF0aW9uLWRlbGF5OiAtMC4zMnM7XG4gIGFuaW1hdGlvbi1kZWxheTogLTAuMzJzO1xufVxuXG4uc2ItaWNvbi1sb2FkaW5nIC5zYi1pY29uLWJvdW5jZTIge1xuICAtd2Via2l0LWFuaW1hdGlvbi1kZWxheTogLTAuMTZzO1xuICBhbmltYXRpb24tZGVsYXk6IC0wLjE2cztcbn1cblxuLy8gSGVhZGVyIGljb24gYmFja2dyb3VuZCBjb2xvcnNcbi5zYlBhZ2VUaXRsZSB7XG5cdC5zZi1pY29uLWN1c3RvbTkwIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNUE5Q0REO1xuXHR9XG5cdC5zZi1pY29uLWN1c3RvbTkzIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjOTA0RDRDO1xuXHR9XG5cdC5zZi1pY29uLXByb2R1Y3Qge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICNCNzgxRDM7XG5cdH1cdFxuXHQuc2YtaWNvbi1zZXR0aW5ncyB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogI0VEQjU2Njtcblx0fVxuXHQuc2YtaWNvbi1kb3dubG9hZCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzU0Njk4RDtcblx0fVxuXHQuc2YtaWNvbi1jb250cmFjdC0xIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNkVDMDZFO1xuXHR9XG5cdC5zZi1pY29uLWFwcHJvdmFsIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjMDBDNkI3O1xuXHR9XG4gICAgLnNmLWljb24tcG9zdCB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6ICM2NUNBRTQ7XG4gICAgfVxuXHQuc2YtaWNvbi1nZG9jIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNTQ2OThEO1xuXHR9XG5cdC5zZi1pY29uLWRvY3VtZW50IHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjYmFhYzkzO1xuXHR9XG5cdC5zZi1pY29uLXJlY2VudCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzZDQTFFOTtcblx0fVxuXHQuc2YtaWNvbi1jb3B5IHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNkNBMEU5O1xuXHR9XG5cdC5zZi1pY29uLWZhdm9yaXRlIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjRkY3Qjg0O1xuXHR9XG5cdC5zZi1pY29uLXJlZnJlc2gge1xuXHRcdCYucmVzaXplIHtcblx0XHRcdGJhY2tncm91bmQtY29sb3I6ICM2Q0EwRTk7XG5cdFx0fVxuXHR9XG5cblx0LnNmLWljb24tcmVwbGFjZSB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzU0Njk4RDtcblx0fVxufVxuXG5ALXdlYmtpdC1rZXlmcmFtZXMgYm91bmNlZGVsYXkge1xuICAwJSwgODAlLCAxMDAlIHsgLXdlYmtpdC10cmFuc2Zvcm06IHNjYWxlKDAuMCkgfVxuICA0MCUgeyAtd2Via2l0LXRyYW5zZm9ybTogc2NhbGUoMS4wKSB9XG59XG5cbkBrZXlmcmFtZXMgYm91bmNlZGVsYXkge1xuICAwJSwgODAlLCAxMDAlIHtcbiAgICB0cmFuc2Zvcm06IHNjYWxlKDAuMCk7XG4gICAgLXdlYmtpdC10cmFuc2Zvcm06IHNjYWxlKDAuMCk7XG4gIH0gNDAlIHtcbiAgICAgIHRyYW5zZm9ybTogc2NhbGUoMS4wKTtcbiAgICAgIC13ZWJraXQtdHJhbnNmb3JtOiBzY2FsZSgxLjApO1xuICAgIH1cbn1cbiIsIi8qXG5Sb3RhdGVzIGFuIGVsZW1lbnRcblxuJHIgLSB0aGUgcm90YXRlIGZ1bmN0aW9uIHBhcmFtdGVyLCBlLmcuIDkwZGVnXG4gKi9cbi5yb3RhdGUoQHIpIHtcbiAgLXdlYmtpdC10cmFuc2Zvcm06IHJvdGF0ZShAcik7XG4gIC1tb3otdHJhbnNmb3JtOiByb3RhdGUoQHIpO1xuICAtbXMtdHJhbnNmb3JtOiByb3RhdGUoQHIpO1xuICB0cmFuc2Zvcm06IHJvdGF0ZShAcik7XG59XG4iLCJAaW1wb3J0IFwidmFyaWFibGVzLmxlc3NcIjtcbkBpbXBvcnQgXCJtaXhpbnMubGVzc1wiO1xuQGltcG9ydCBcImljb25zLmxlc3NcIjtcblxuQHBhZGRpbmdNb2JpbGU6IDE1cHg7XG5AZm9udFNpemVNb2JpbGU6IDE0cHg7XG5cbi8vIE92ZXJyaWRpbmcgcGJTdWJzZWN0aW9uIHN0eWxpbmcgZm9yIGxpbmUgZWRpdG9yIC0gY2Fubm90IHVwZGF0ZSB0aGUgcGFnZUJsb2NrU2VjdGlvbiBjb21wb25lbnQgeWV0IGFzIHdlIGFyZSByZXNraW5uaW5nIG9ubHkgbGluZSBlZGl0b3IgcmlnaHQgbm93XG4ucGJTdWJzZWN0aW9uIGhlYWRlciB7XG5cdCp6b29tOiAxO1xuXHRtYXJnaW46IDA7XG5cdHBhZGRpbmc6IDA7XG5cdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdGJvcmRlcjogbm9uZTtcblxufVxuXG4vKmEgdGFibGUgdGhhdCBkaXNwbGF5cyBhIGxpc3Qgb2YgZW50aXRpZXMvcm93cy9ldGMsIGEgbGEgYSBcImxpc3QgcGFnZVwiKi9cbi5zYlRhYmxlIHtcblx0Ym9yZGVyLWNvbGxhcHNlOiBjb2xsYXBzZTtcblx0Ym9yZGVyLXNwYWNpbmc6IDA7XG5cdHdpZHRoOiAxMDAlO1xuXHR0Ym9keSB7XG4gICAgXHQuc2JBY3Rpb25zIHtcbiAgICAgIFx0XHRbY2xhc3NePVwic2YtaWNvbi1cIl06YmVmb3JlLCBbY2xhc3MqPVwiIHNmLWljb24tXCJdOmJlZm9yZXtcbiAgICAgICAgXHRcdGNvbG9yOiBAc2JMaW5rQ29sb3I7XG4gICAgICAgIFx0XHRmb250LXNpemU6MjBweDtcbiAgICAgICAgXHRcdCY6aG92ZXIge1xuICAgICAgICBcdFx0XHRjb2xvcjogQHNiRm9udENvbG9yO1xuICAgICAgICAgIFx0XHRcdGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgXHRcdH1cbiAgICAgIFx0XHR9XG4gICBcdFx0fVxuICAgXHR9XG5cdD4gdGgsXG5cdD4gdHIgPiB0ZCB7XG5cdFx0aGVpZ2h0OiA0NnB4O1xuXHR9XG5cdC8qY2VudGVyIGFsaWduZWQgY2VsbHMqL1xuXHQ+IHRib2R5ID4gdHIgPiB0ZC5jZW50ZXIsXG5cdD4gdGJvZHkgPiB0ciA+IHRkLnNiQWN0aW9ucyxcblx0PiB0aGVhZCA+IHRyID4gdGguc2JBY3Rpb25zLFxuXHQ+IHRoZWFkID4gdHIgPiB0aC5jZW50ZXIsXG5cdD4gdGZvb3QgPiB0ciA+IHRkLmNlbnRlciB7XG5cdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHR9XG5cdC8qcmlnaHQgYWxpZ25lZCBjZWxscyovXG5cdD4gdGhlYWQgPiB0ciA+IHRoLnJpZ2h0LFxuXHQ+IHRib2R5ID4gdHIgPiB0ZC5yaWdodCxcblx0PiB0Zm9vdCA+IHRyID4gdGQucmlnaHQge1xuXHRcdHRleHQtYWxpZ246IHJpZ2h0O1xuXHR9XG5cdD4gYSB7XG5cdFx0Y29sb3I6IGluaGVyaXQ7XG5cdH1cblx0PiBpbnB1dCxcblx0c2VsZWN0IHtcblx0XHRmb250LXNpemU6IGluaGVyaXQ7XG5cblx0fVxuXG5cdC8qYSBzdGFuZGFyZCB0YWJsZSBoZWFkZXIgY2VsbCovXG5cdD4gdGhlYWQgPiB0ciA+IHRoIHtcblx0XHRib3JkZXItYm90dG9tOiAxcHggc29saWQgI2MwYzBjMDtcblx0XHRwYWRkaW5nOiA4cHggNnB4IDZweDtcblx0XHRmb250LXdlaWdodDogbm9ybWFsO1xuXHRcdHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG5cdFx0Y29sb3I6ICM3Nzc7XG5cdFx0dGV4dC1hbGlnbjogbGVmdDtcblx0XHR3aGl0ZS1zcGFjZTogbm93cmFwO1xuXHR9XG5cdC8qYSBzdGFuZGFyZCB0YWJsZSBib2R5IGNlbGwqL1xuXHQ+IHRib2R5ID4gdHIgPiB0ZCB7XG5cdFx0Ym9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNkMGQwZDA7XG5cdFx0cGFkZGluZzogOHB4IDZweCA2cHg7XG5cdFx0Y29sb3I6ICMyMjI7XG5cblx0XHQmLnJpZ2h0IGlucHV0e1xuXHRcdFx0dGV4dC1hbGlnbjogcmlnaHQ7XG5cdFx0fVxuXG5cdFx0aW5wdXQ6ZGlzYWJsZWQge1xuXHRcdFx0YmFja2dyb3VuZC1jb2xvcjogQHNiQ29udGVudEJnQ29sb3I7XG5cdFx0fVxuXHR9XG5cdC8qdGFibGUgZm9vdGVyIGNlbGxzKi9cblx0PiB0Zm9vdCA+IHRyID4gdGQge1xuXHRcdHBhZGRpbmc6IDhweCA2cHggNnB4O1xuXHRcdGNvbG9yOiAjMjIyO1xuXHR9XG59XG5cbi8qQSBjb250YWluZXIvcm93IG9mIGJ1dHRvbnMsIGEgbGEgYSBidXR0b24gXCJiYXJcIiovXG4uc2JCdXR0b25zIHtcblx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG59XG5cbi5zYk1vZGFsRm9vdGVyID4gLnNiQnV0dG9ucyB7XG4gIHBhZGRpbmc6IDEwcHggMDtcbn1cblxuLypBIHN0YW5kYXJkLCBzdGFuZGFsb25lIGJ1dHRvbiovXG4uc2JCdG4ge1xuXHRiYWNrZ3JvdW5kOiAjZmZmO1xuXHRjb2xvcjogIzE2NmJiZjtcblx0Ym9yZGVyOiAxcHggc29saWQgI2MwYzBjMDtcblx0Ym9yZGVyLXJhZGl1czogM3B4O1xuXHR2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXHR0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgaGVpZ2h0OiA0MHB4O1xuXHRmb250LXNpemU6IDE2cHg7XG5cdG1hcmdpbjogMCAwIDAgNHB4O1xuXG5cdD4gc3BhbiB7XG5cdFx0Y29sb3I6IEBzYkxpbmtDb2xvcjtcblx0fVxufVxuXG5cblxuLnNiTW9iaWxlVGFicyB7XG5cdGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXHRtYXJnaW46IDE4cHggMDtcblx0dGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtcblx0Ym9yZGVyLWJvdHRvbTogQHNiQ29udGVudEJvcmRlcjtcblx0bWFyZ2luLWJvdHRvbTogMTBweDtcblxuXHQ+IGEge1xuXHRcdGNvbG9yOiBpbmhlcml0O1xuXHRcdHBhZGRpbmc6IDZweCAxNnB4IDZweDtcblx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cblx0XHQmLmN1c3RvbSB7XG5cdFx0XHRwb3NpdGlvbjogcmVsYXRpdmU7XG5cdFx0fVxuXG5cdFx0PiAuc2YtaWNvbi1lZGl0IHtcblx0XHRcdHZpc2liaWxpdHk6IGhpZGRlbjtcblx0XHRcdGNvbG9yOiAjMDA3MGQyO1xuXHRcdFx0cG9zaXRpb246IGFic29sdXRlO1xuXHRcdFx0dG9wOiA2cHg7XG5cdFx0XHRyaWdodDogLTZweDtcblxuXHRcdFx0Ji52aXNpYmxlIHtcblx0XHRcdFx0dmlzaWJpbGl0eTogdmlzaWJsZTtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQ+IGEuc2VsZWN0ZWQge1xuXHRcdGJvcmRlci1ib3R0b206IDRweCBzb2xpZCAjMTY2YmJmO1xuXHR9XG59XG5cbi5zYlBhZ2VUaXRsZU1vYmlsZSB7XG5cdHBvc2l0aW9uOiBmaXhlZDtcblx0dG9wOiAwO1xuXHRsZWZ0OiAwO1xuXHRyaWdodDogMDtcblx0aGVpZ2h0OiA3NXB4O1xuXHR6LWluZGV4OiA1O1xuXHRiYWNrZ3JvdW5kLWNvbG9yOiBAc2JDb250ZW50QmdDb2xvcjtcblx0Ym9yZGVyLWJvdHRvbTogQHNiQ29udGVudEJvcmRlcjtcblxuXHQ+IC5zYlBhZ2VUaXRsZVRhYmxlIHtcblx0XHQ+IGRpdiB7XG5cdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHR2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXHRcdFx0bWFyZ2luLXRvcDogMjFweDtcblx0XHR9XG5cblx0XHQ+IC5pY29uIHtcblx0XHRcdG1hcmdpbi1yaWdodDogMTBweDtcblx0XHR9XG5cblx0XHQ+IC5zYlBhZ2VUaXRsZUxlZnQge1xuXHRcdFx0aDEsIGgyIHtcblx0XHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuMjtcblx0XHRcdFx0Zm9udC13ZWlnaHQ6IG5vcm1hbDtcblx0XHRcdFx0bWFyZ2luOiAwO1xuXHRcdFx0fVxuXHRcdH1cblxuXHRcdD4gLnNiUGFnZVRpdGxlUmlnaHQge1xuXHRcdFx0bWFyZ2luOiA3cHg7XG5cdFx0XHRmbG9hdDogcmlnaHQ7XG5cblx0XHRcdD4gLnNiUGFnZUJ1dHRvbnMge1xuXHRcdFx0XHRtYXJnaW4tdG9wOiA3cHg7XG5cdFx0XHRcdG1hcmdpbi1ib3R0b206IDdweDtcblx0XHRcdH1cblx0XHR9XG5cdH1cbn1cblxuLy8gQXBleCBQYWdlTWVzc2FnZXMgPGFwZXg6cGFnZU1lc3NhZ2VzPlxuZGl2Lm1lc3NhZ2Uge1xuXHRib3JkZXItcmFkaXVzOiAzcHg7XG5cdG1hcmdpbjogMTBweCAwO1xuXHRwYWRkaW5nOiAxMnB4O1xuXHRmb250LXNpemU6IEBmb250U2l6ZU1vYmlsZTtcblx0Y29sb3I6IEBzYkZvbnRDb2xvcjtcblx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRiYWNrZ3JvdW5kOiBub25lO1xuXG5cdCYudG9wIHtcblx0XHRtYXJnaW46IDc1cHggMCAtNjBweCA0MHB4O1xuXHR9XG5cblx0Lm1zZ0ljb24ge1xuXHQgICAgYmFja2dyb3VuZDogbm9uZTtcblx0ICAgIHdpZHRoOiAwO1xuXHQgICAgaGVpZ2h0OiAwO1xuXHR9XG5cblx0Lm1lc3NhZ2VUZXh0IHtcblx0XHRtYXJnaW46IDAgMCAwIDMwcHg7XG5cblx0XHQ+IGg0LCA+IGRpdiB7XG5cdFx0XHRjb2xvcjogI2MwMDtcblx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdHZlcnRpY2FsLWFsaWduOiB0b3A7XG5cdFx0XHRsaW5lLWhlaWdodDogQHNiRm9udFNpemUgKiAyLjA7XG5cdFx0fVxuXG5cdFx0aDQge1xuXHRcdFx0bWFyZ2luLWxlZnQ6IDEwcHg7XG5cdFx0XHRtYXJnaW4tcmlnaHQ6IDZweDtcblx0XHR9XG5cblx0XHQ+IGRpdjpub3QoOmZpcnN0LW9mLXR5cGUpIHtcblx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdH1cblxuXHRcdCY6YmVmb3JlIHtcblx0XHRcdGZvbnQtZmFtaWx5OiBcInNiXCI7XG5cdFx0XHRmb250LXN0eWxlOiBub3JtYWw7XG5cdFx0XHRmb250LXdlaWdodDogbm9ybWFsO1xuXHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDIuMDtcblx0XHRcdHNwZWFrOiBub25lO1xuXHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0dGV4dC1kZWNvcmF0aW9uOiBpbmhlcml0O1xuXHRcdFx0d2lkdGg6IDFlbTtcblx0XHRcdG1hcmdpbi1sZWZ0OiAtMzBweDtcblx0XHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0XHRcdGZvbnQtdmFyaWFudDogbm9ybWFsO1xuXHRcdFx0dGV4dC10cmFuc2Zvcm06IG5vbmU7XG5cdFx0XHRsaW5lLWhlaWdodDogMWVtO1xuXHRcdH1cblx0fVxuXG5cdCYuZXJyb3JNMixcblx0Ji5lcnJvck0zLFxuXHQmLmVycm9yTTQsXG5cdCYuZXJyb3JNNSxcblx0Ji5lcnJvck02IHtcblx0XHRib3JkZXItY29sb3I6ICNjMDA7XG5cblx0XHQubWVzc2FnZVRleHQge1xuXHRcdFx0Y29sb3I6ICNjMDA7XG5cdFx0XHQmOmJlZm9yZSB7XG5cdFx0XHRcdGNvbnRlbnQ6ICdcXGU4MjEnOyAgLy9zYi1pY29uLWF0dGVudGlvbi1jaXJjbGVkXG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0Ji53YXJuaW5nTTIsXG5cdCYud2FybmluZ00zLFxuXHQmLndhcm5pbmdNNCxcblx0Ji53YXJuaW5nTTUsXG5cdCYud2FybmluZ002IHtcblx0XHQubWVzc2FnZVRleHQge1xuXHRcdFx0Y29sb3I6ICNkOTg2MzM7XG5cdFx0XHQmOmJlZm9yZSB7XG5cdFx0XHRcdGNvbnRlbnQ6ICdcXGU4MjAnOyAgLy9zYi1pY29uLWF0dGVudGlvblxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cblx0Ji5pbmZvTTIsXG5cdCYuaW5mb00zLFxuXHQmLmluZm9NNCxcblx0Ji5pbmZvTTUsXG5cdCYuaW5mb002IHtcblx0XHQubWVzc2FnZVRleHQge1xuXHRcdFx0Y29sb3I6ICMwMDAwY2M7XG5cdFx0XHQmOmJlZm9yZSB7XG5cdFx0XHRcdGNvbnRlbnQ6ICdcXGU4MGYnOyAgLy9zYi1pY29uLWluZm8tY2lyY2xlZFxuXHRcdFx0fVxuXHRcdH1cblx0fVxufVxuXG5cbi8qKiBDdXN0b20gTG9va3VwICovXG5cbnNwYW4ubG9va3VwSW5wdXQge1xuICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG59XG5cbiNjdXN0b21Mb29rdXBDb21wb25lbnQge1xuICAgIGRpdi5sb29rdXBSZXN1bHR7XG4gICAgICAgIHBhZGRpbmctdG9wOjEwcHg7XG4gICAgICAgIGN1cnNvcjpwb2ludGVyO1xuICAgICAgICBjb2xvcjpibHVlO1xuICAgICAgICB0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO1xuICAgIH1cbiAgICBkaXYubG9va3VwUmVzdWx0OmhvdmVye1xuICAgICAgICB0ZXh0LWRlY29yYXRpb246bm9uZTtcbiAgICAgICAgdGV4dC1zaGFkb3c6IDFweCAxcHggMXB4ICM1NTU7XG4gICAgfVxuICAgIHNwYW4ucmVzdWx0SGVhZGVye1xuICAgICAgICBkaXNwbGF5OmJsb2NrO1xuICAgICAgICBwYWRkaW5nLXRvcDogMjBweCAhaW1wb3J0YW50O1xuICAgICAgICBwYWRkaW5nLWJvdHRvbTogNHB4ICFpbXBvcnRhbnQ7XG4gICAgICAgIGZvbnQtc3R5bGU6aXRhbGljO1xuICAgIH1cbiAgICBkaXYuYm9keXtcbiAgICAgICAgcGFkZGluZy1ib3R0b206MjBweDtcbiAgICB9XG4gICAgaW5wdXR7XG4gICAgICAgIHdpZHRoOiA4NSUgIWltcG9ydGFudDtcbiAgICB9XG4gICAgLnNiLWljb24tc2VhcmNoe1xuICAgICAgICBwYWRkaW5nLWxlZnQ6N3B4O1xuICAgIH1cbn1cbi8qKiBNb2RhbCBmb3IgYWRkaXRpb25hbCBidXR0b24gb3B0aW9ucyBpbiBsaW5lIGVkaXRvciAqL1xuXG4ubW9kYWxEaWFsb2dXcmFwcGVyIHtcblx0aW5wdXQuc2JCdG4sXG5cdGJ1dHRvbi5zYkJ0biB7XG5cdFx0bWFyZ2luLWJvdHRvbTogMTVweDtcblx0XHRtYXJnaW4tbGVmdDogMHB4O1xuXG5cdFx0JjpmaXJzdC1vZi10eXBlIHtcblx0XHRcdG1hcmdpbi10b3A6IDE1cHg7XG5cdFx0fVxuXG5cdFx0JjpsYXN0LW9mLXR5cGUge1xuXHRcdFx0bWFyZ2luLWJvdHRvbTogMTVweDtcblx0XHR9XG5cdH1cbn1cblxuXG4vKiogUGhvbmUgU3R5bGVzICovXG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi1kZXZpY2Utd2lkdGggOiAzMjBweCkgYW5kIChtYXgtZGV2aWNlLXdpZHRoIDogNjQwcHgpIHtcblx0LnNiQnRuIHtcblx0XHRmb250LXNpemU6IEBmb250U2l6ZU1vYmlsZTtcblx0XHRwYWRkaW5nOiA1cHggMTBweDtcblx0fVxuXG5cdC5zYkJ0biA+IHNwYW5bY2xhc3NePVwic2ItaWNvbi1cIl0sXG5cdC5zYkJ0biA+IHNwYW5bY2xhc3NePVwiaWNvbi11dGlsaXR5LVwiXSxcblx0Lmljb24tdXRpbGl0eS1kb3duIHtcblx0XHR2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXHR9XG5cblx0LnNiUGFnZVRpdGxlTW9iaWxlIHtcblxuXHRcdD4gLnNiUGFnZVRpdGxlVGFibGUge1xuXHRcdFx0PiAuaWNvbiB7XG5cdFx0XHRcdGZsb2F0OiBsZWZ0O1xuXHRcdFx0XHRtYXJnaW4tbGVmdDogMTBweDtcblx0XHRcdFx0bWFyZ2luLXJpZ2h0OiA1cHg7XG5cdFx0XHR9XG5cblx0XHRcdD4gLnNiUGFnZVRpdGxlTGVmdCB7XG5cdFx0XHRcdGZsb2F0OiBsZWZ0O1xuXHRcdFx0fVxuXG5cdFx0XHQ+IGRpdiB7XG5cdFx0XHRcdG1hcmdpbi10b3A6IDE1cHg7XG5cdFx0XHR9XG5cblx0XHRcdD4gLnNiUGFnZVRpdGxlUmlnaHQge1xuXHRcdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHRcdFx0ZmxvYXQ6IHJpZ2h0O1xuXG5cdFx0XHRcdC5zYkJhY2sge1xuXHRcdFx0XHRcdGZsb2F0OiBsZWZ0O1xuXHRcdFx0XHRcdG1hcmdpbi1sZWZ0OiAwO1xuXHRcdFx0XHR9XG5cblx0XHRcdFx0LnNiQ2xvc2Uge1xuXHRcdFx0XHRcdGZsb2F0OiByaWdodDtcblxuXHRcdFx0XHRcdD4gLnNmLWljb24tY2xvc2Uge1xuXHRcdFx0XHRcdFx0Zm9udC1zaXplOiBAZm9udFNpemVNb2JpbGUgKiAxLjI7XG5cdFx0XHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHRcdFx0XHR2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXG5cdFx0XHRcdC5tb2RhbERpYWxvZ1dyYXBwZXIge1xuXHRcdFx0XHRcdG1hcmdpbjogMCBhdXRvO1xuXHRcdFx0XHR9XG5cblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHRkaXYubWVzc2FnZSB7XG5cblx0XHQmLnRvcCB7XG5cdFx0XHRtYXJnaW46IDExNXB4IDAgLTEwMHB4IDA7XG5cdFx0fVxuXG5cdFx0Lm1lc3NhZ2VUZXh0IHtcblx0XHRcdD4gZGl2IHtcblx0XHRcdFx0ZGlzcGxheTogaW5saW5lO1xuXHRcdFx0XHRtYXJnaW4tbGVmdDogLTE1cHg7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG59XG5cblxuI2Vhc3lYRE1fU0JRUV9wcm92aWRlciB7XG4gIHdpZHRoOiAxMDAlO1xuICBtaW4taGVpZ2h0OiAyMDBweDtcbn1cblxuLnNmLWljb24tY2xvc2Uge1xuICBjb2xvcjogI2ZmZjtcbiAgZm9udC1mYW1pbHk6IEFyaWFsO1xuICBmb250LXdlaWdodDogNjAwO1xuICBmb250LXNpemU6IDI1cHg7XG4gIGRpc3BsYXk6IGJsb2NrO1xuICB0ZXh0LWFsaWduOiByaWdodDtcbiAgei1pbmRleDogMjI7XG4gIHJpZ2h0OiAwO1xuICBtYXJnaW46IGF1dG87XG4gIHdpZHRoOiAxMDAlO1xuICBsZWZ0OiAwO1xufVxuIiwiI3NiTGluZUVkaXRvciB7XG5cdHBhZGRpbmc6IEBwYWRkaW5nTW9iaWxlO1xuXHRmb250LXNpemU6IEBmb250U2l6ZU1vYmlsZTtcblxuXHQuc2JFbXB0eVF1b3RlTXNnLFxuXHQuc2JFbXB0eUdyb3VwTXNnLFxuXHQuZW1wdHlNU1RhYmxlTWVzc2FnZSxcblx0LmVtcHR5U3RhbmRhcmRUYWJsZU1lc3NhZ2Uge1xuXHRcdHBhZGRpbmc6IDI1cHggMDtcblx0fVxuXG5cdC5zYlF1b3RlRmllbGRzIHtcblx0XHRtYXJnaW46IDAgMTVweDtcblxuXHRcdGhlYWRlciB7XG5cdFx0XHRib3JkZXI6IG5vbmU7XG5cblx0XHRcdD4gaDEge1xuXHRcdFx0XHRmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblx0XHRcdH1cblx0XHR9XG5cblx0XHQuc2JUYWJsZSB7XG5cdFx0XHQ+IHRib2R5ID4gdHIge1xuXG5cdFx0XHRcdC5zYkxhYmVsIGxhYmVse1xuXHRcdFx0XHRcdHRleHQtYWxpZ246IHJpZ2h0O1xuXHRcdFx0XHRcdGZvbnQtc2l6ZTogQGZvbnRTaXplTW9iaWxlO1xuXHRcdFx0XHR9XG5cblx0XHRcdFx0PiB0ZCB7XG5cdFx0XHRcdFx0Ym9yZGVyOiBub25lO1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0LnNiUXVvdGVBY3Rpb25zLFxuXHQuc2JHcm91cEFjdGlvbnMge1xuXG5cdFx0Ly8gaW5pdGlhbGx5IGhpZGUgdGhlIGN1c3RvbSBhY3Rpb25zIHRoYXQgYXJlIHJlbmRlcmVkIGNvbmRpdGlvbmFsbHlcblx0XHQucmVuZXdTdWJzY3JpcHRpb25zQnRuLFxuXHRcdC51cGdyYWRlQXNzZXRzQnRuLFxuXHRcdC5yZXNldERpc2NCdG4sXG5cdFx0Lm9wdGlvbmFsQWxsQnRuLFxuXHRcdC5vcHRpb25hbE5vbmVCdG4sXG5cdFx0LmRlbGV0ZUxpbmVzQnRuLFxuXHRcdC5hZGRHcm91cEJ0bixcblx0XHQudW5ncm91cEJ0biB7XG5cdFx0XHRkaXNwbGF5OiBub25lO1xuXHRcdH1cblxuXHRcdHVsIHtcblx0XHRcdG1hcmdpbjogMDtcblx0XHRcdHBhZGRpbmc6IDA7XG5cdFx0XHRsaXN0LXN0eWxlLXR5cGU6IG5vbmU7XG5cblx0XHRcdHVsIHtcblx0XHRcdFx0ZGlzcGxheTogbm9uZTtcblx0XHRcdH1cblxuXHRcdFx0bGkge1xuXHRcdFx0XHRzcGFuLnNmLWljb24tZG93biB7XG5cdFx0XHRcdFx0cGFkZGluZzogMTBweDtcblx0XHRcdFx0XHRmb250LXNpemU6IDE4cHg7XG5cblx0XHRcdFx0XHQmLm9wZW4gKyB1bCB7XG5cdFx0XHRcdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cblx0XHRsaSB7XG5cdFx0XHRtYXJnaW46IDEwcHggMDtcblx0XHRcdHBhZGRpbmc6IDEwcHg7XG5cdFx0XHRkaXNwbGF5OiBibG9jaztcblxuXHRcdFx0Ji5zYkJ0biB7XG5cdFx0XHRcdGhlaWdodDogYXV0bztcblx0XHRcdH1cblxuXHRcdFx0Ji5tZW51IHtcblx0XHRcdFx0Ym9yZGVyOiAxcHggc29saWQgI2MwYzBjMDtcblxuXHRcdFx0XHRsaSB7XG5cdFx0XHRcdFx0Ym9yZGVyOiBub25lO1xuXHRcdFx0XHRcdG1hcmdpbjogMDtcblxuXHRcdFx0XHRcdCY6Zmlyc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdFx0XHRtYXJnaW4tdG9wOiAxMHB4O1xuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblxuXHRcdC5zYlRvb2xTZXBhcmF0b3Ige1xuXHRcdFx0aGVpZ2h0OiAwO1xuXHRcdFx0cGFkZGluZzogMDtcblx0XHRcdGJvcmRlcjogbm9uZTtcblx0XHR9XG5cdH1cblxuXHQmLnVwZ3JhZGFibGUgbGkudXBncmFkZUFzc2V0c0J0biB7XG5cdFx0ZGlzcGxheTogYmxvY2s7XG5cdH1cblx0Ji5yZW5ld2FibGUgbGkucmVuZXdTdWJzY3JpcHRpb25zQnRuIHtcblx0XHRkaXNwbGF5OiBibG9jaztcblx0fVxuXHQmLmRpc2NvdW50YWJsZSBsaS5yZXNldERpc2NCdG4ge1xuXHRcdGRpc3BsYXk6IGJsb2NrO1xuXHR9XG5cdCYub3B0aW9uYWwgbGkub3B0aW9uYWxBbGxCdG4sXG5cdCYub3B0aW9uYWwgbGkub3B0aW9uYWxOb25lQnRuIHtcblx0XHRkaXNwbGF5OiBibG9jaztcblx0fVxuXHQmLm11bHRpRGVsZXRlIC5zYlF1b3RlQWN0aW9ucyAuZGVsZXRlTGluZXNCdG4ge1xuXHRcdGRpc3BsYXk6IGJsb2NrO1xuXHR9XG5cdCYuZ3JvdXBhYmxlIGxpLmFkZEdyb3VwQnRuIHtcblx0XHRkaXNwbGF5OiBibG9jaztcblx0fVxuXHQmLnVuZ3JvdXBhYmxlIGxpIHtcblxuXHRcdCYuYWRkR3JvdXBCdG4ge1xuXHRcdFx0ZGlzcGxheTogbm9uZTtcblx0XHR9XG5cblx0XHQmLmFkZEdyb3VwQnRuLFxuXHRcdCYudW5ncm91cEJ0biB7XG5cdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHR9XG5cdH1cblxuXHQuc2JHcm91cHMsXG5cdC5zYkxpbmVJdGVtcyxcblx0LnNiQ3VzdG9tU2VnbWVudHNFZGl0b3IsXG5cdC5zYkRpc2NvdW50U2NoZWR1bGVNb2RhbCxcblx0I3NiUHJpY2Vib29rTW9kYWwsXG5cdCNzYkZhdm9yaXRlc01vZGFsLFxuXHQuc2JQcm9kdWN0UnVsZUFsZXJ0UG9wdXAsXG5cdC5yZWNvcmRFZGl0b3JGb3JtIHtcblx0XHRwYWRkaW5nLXRvcDogNzVweDtcblx0fVxuXG5cdC5zYkRpc2NvdW50U2NoZWR1bGVNb2RhbCB7XG5cdFx0Lm1lc3NhZ2Uge1xuXHRcdFx0bWFyZ2luLXRvcDogNXB4O1xuXHRcdFx0bWFyZ2luLWJvdHRvbTogNXB4O1xuXHRcdH1cblx0fVxuXG5cdC5zYlF1b3RlRmllbGRzLFxuXHQubXNTdGFuZGFyZFRhYmxlQ29udGFpbmVyLFxuXHQuc2JNdWx0aVNlZ21lbnRUYWJsZUNvbnRhaW5lcixcblx0LnNiR3JvdXBGaWVsZHNDb250YWluZXIsXG5cdC5zYkN1c3RvbVNlZ21lbnRzQ29udGFpbmVyIHtcblx0XHRvdmVyZmxvdy14OiBhdXRvO1xuXHR9XG5cblx0LnNiTW9kYWxDb250ZW50Q29udGFpbmVyIHtcblx0XHRvdmVyZmxvdy14OiBhdXRvO1xuXHR9XG5cblx0IC5kaXNjb3VudFNjaGVkdWxlTG9hZGVyIHtcblx0XHRtYXJnaW4tbGVmdDogYXV0bztcblx0XHRtYXJnaW4tcmlnaHQ6IGF1dG87XG5cdFx0bWFyZ2luLXRvcDogMjBweDtcblx0IH1cblxuXHQuZGlzY291bnRTY2hlZHVsZVByb3BlcnR5IHtcblx0XHR3aGl0ZS1zcGFjZTogbm93cmFwO1xuXHR9XG5cblx0LmhpZGVJbnB1dEJvcmRlcnMge1xuXHRcdGJvcmRlcjogMHB4O1xuXHR9XG5cblx0LnNiR3JvdXBOYW1lcyB7XG5cdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRcdG1hcmdpbjogQHBhZGRpbmdNb2JpbGUgKiAyO1xuXG5cdFx0PiBkaXYge1xuXHRcdFx0dGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtcblx0XHRcdHBhZGRpbmc6IEBwYWRkaW5nTW9iaWxlO1xuXHRcdFx0bWFyZ2luLWJvdHRvbTogMTBweDtcblxuXHRcdFx0PiBzcGFuIHtcblx0XHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0XHR2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXHRcdFx0XHRmb250LXdlaWdodDogIG5vcm1hbDtcblx0XHRcdFx0Zm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cdFx0XHR9XG5cblx0XHRcdD4gc3BhbjpsYXN0LW9mLXR5cGUge1xuXHRcdFx0XHRwYWRkaW5nLWxlZnQ6IEBwYWRkaW5nTW9iaWxlICogMjtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQuc2JRdW90ZVRvdGFsQ29udGFpbmVyLFxuXHQuc2JHcm91cFRvdGFsQ29udGFpbmVyIHtcblx0XHRtYXJnaW4tdG9wOiAyNXB4O1xuXHRcdHRleHQtYWxpZ246IHJpZ2h0O1xuXG5cdFx0aGVhZGVyIHtcblx0XHRcdGJvcmRlci1ib3R0b206IG5vbmU7XG5cdFx0XHRib3JkZXItdG9wOiBAc2JDb250ZW50Qm9yZGVyO1xuXG5cdFx0XHQ+IGgxIHtcblx0XHRcdFx0Zm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cdFx0XHRcdG1hcmdpbi10b3A6IDE1cHg7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0LnNiR3JvdXBUb3RhbENvbnRhaW5lciB7XG5cdFx0bWFyZ2luLXRvcDogNTBweDtcblx0fVxuXG5cdC5zYkdyb3VwIHtcblx0XHRtYXJnaW4tdG9wOiAxMHB4O1xuXG5cdFx0LnNiR3JvdXBIZWFkZXIge1xuXHRcdFx0aGVpZ2h0OiA1MHB4O1xuXHRcdFx0ZmxvYXQ6IGxlZnQ7XG5cblx0XHRcdD4gaDIsID4gaW5wdXQge1xuXHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdFx0XHR9XG5cblx0XHRcdD4gaDIge1xuXHRcdFx0XHRtYXJnaW46IDA7XG5cdFx0XHRcdGZvbnQtc2l6ZTogMjFweDtcblx0XHRcdH1cblxuXHRcdFx0PiBpbnB1dCB7XG5cdFx0XHRcdGRpc3BsYXk6IG5vbmU7XG5cdFx0XHRcdGhlaWdodDogNDBweDtcblx0XHRcdFx0d2lkdGg6IDIwMHB4O1xuXHRcdFx0XHRwYWRkaW5nOiA1cHg7XG5cdFx0XHR9XG5cblx0XHRcdD4gc3BhbiB7XG5cdFx0XHRcdGZvbnQtc2l6ZTogMS4zZW07XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0dmVydGljYWwtYWxpZ246IGJvdHRvbTtcblx0XHRcdH1cblx0XHR9XG5cblx0XHQuc2JHcm91cEJ1dHRvbnMge1xuXHRcdFx0ZmxvYXQ6IHJpZ2h0O1xuXHRcdH1cblxuXHRcdC5zYkRlc2NyaXB0aW9uRmllbGQge1xuXHRcdFx0bWFyZ2luOiAyMHB4IDAgNDBweDtcblx0XHRcdGZvbnQtc2l6ZTogQGZvbnRTaXplTW9iaWxlO1xuXHRcdH1cblxuXHRcdC5zYkdyb3VwRmllbGRzQ29udGFpbmVyIHtcblx0XHRcdHBhZGRpbmc6IDVweDtcblxuXHRcdFx0LnNiR3JvdXBGaWVsZHMge1xuXHRcdFx0XHQuc2JHcm91cEZpZWxkIHtcblx0XHRcdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHRcdFx0XHR3aGl0ZS1zcGFjZTogbm93cmFwO1xuXHRcdFx0XHRcdG1hcmdpbi1ib3R0b206IDE1cHg7XG5cblx0XHRcdFx0XHRsYWJlbCB7XG5cdFx0XHRcdFx0XHRkaXNwbGF5OiBpbmxpbmU7XG5cdFx0XHRcdFx0XHRmb250LXNpemU6IEBmb250U2l6ZU1vYmlsZTtcblx0XHRcdFx0XHRcdGNvbG9yOiBAc2JGb250Q29sb3I7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0aW5wdXRbdHlwZT0nY2hlY2tib3gnXSB7XG5cdFx0XHRcdFx0XHR2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblxuXHRcdC5tdWx0aVNlZ21lbnQuc2JUYWJsZSxcblx0XHQuc3RhbmRhcmQuc2JUYWJsZSB7XG5cdFx0XHRtYXJnaW4tdG9wOiAzMHB4O1xuXG5cdFx0XHQ+IHRoZWFkID4gdGgge1xuXHRcdFx0XHRzcGFuIHtcblx0XHRcdFx0XHRjb2xvcjogQHNiRm9udENvbG9yO1xuXHRcdFx0XHR9XG5cblx0XHRcdH1cblxuXHRcdFx0PiB0Ym9keSA+IHRyID4gdGQge1xuXHRcdFx0XHRoZWlnaHQ6IDU1cHg7XG5cblx0XHRcdFx0Ji5zYkFjdGlvbnMge1xuXHRcdFx0XHRcdHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cdFx0XHRcdFx0dGV4dC1hbGlnbjogbGVmdDtcblxuXHRcdFx0XHRcdC5pY29uLXV0aWxpdHktY2hldnJvbnJpZ2h0LFxuXHRcdFx0XHRcdC5pY29uLXV0aWxpdHktZG93biB7XG5cdFx0XHRcdFx0XHR3aWR0aDogMzBweDtcblx0XHRcdFx0XHRcdGZvbnQtc2l6ZTogMTdweDtcblx0XHRcdFx0XHRcdGNvbG9yOiBAc2JMaW5rQ29sb3I7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0dWwge1xuXHRcdFx0XHRcdFx0bWFyZ2luOiAwO1xuXHRcdFx0XHRcdFx0cGFkZGluZzogMDtcblx0XHRcdFx0XHRcdGxpc3Qtc3R5bGUtdHlwZTogbm9uZTtcblxuXHRcdFx0XHRcdFx0dWwge1xuXHRcdFx0XHRcdFx0XHRkaXNwbGF5OiBub25lO1xuXHRcdFx0XHRcdFx0XHR0b3A6IDEwMCU7XG5cdFx0XHRcdFx0XHRcdGxlZnQgOiAwO1xuXHRcdFx0XHRcdFx0XHR3aWR0aDoxMDAlO1xuXHRcdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0XHRsaSB7XG5cdFx0XHRcdFx0XHRcdHNwYW4uc2YtaWNvbi1kb3duLm9wZW4gKyB1bCB7XG5cdFx0XHRcdFx0XHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRsaSB7XG5cdFx0XHRcdFx0XHRtYXJnaW46IDEwcHggMDtcblx0XHRcdFx0XHRcdHBhZGRpbmc6IDEwcHg7XG5cdFx0XHRcdFx0XHRkaXNwbGF5OiBibG9jaztcblxuXHRcdFx0XHRcdFx0Ji5zYkJ0biB7XG5cdFx0XHRcdFx0XHRcdGhlaWdodDogYXV0bztcblx0XHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdFx0Ji5tZW51IHtcblx0XHRcdFx0XHRcdFx0Ym9yZGVyOiAxcHggc29saWQgI2MwYzBjMDtcblxuXHRcdFx0XHRcdFx0XHRsaSB7XG5cdFx0XHRcdFx0XHRcdFx0Ym9yZGVyOiBub25lO1xuXHRcdFx0XHRcdFx0XHRcdG1hcmdpbjogMDtcblxuXHRcdFx0XHRcdFx0XHRcdCY6Zmlyc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdFx0XHRcdFx0XHRtYXJnaW4tdG9wOiAxMHB4O1xuXHRcdFx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdC8vIGluaXRpYWxseSBoaWRlIGFsbCBjdXN0b20gYWN0aW9ucyB0aGF0IGRvZXMgaGF2ZSBhbiBhY3Rpb24gc2VsZWN0ZWQgKG1lbnUgdHlwZSBvciB1cmwgY3VzdG9tIGFjdGlvbnMgc2hvdWxkIGJlIGRpc3BsYXllZCBhdCBhbGwgdGltZXMpXG5cdFx0XHRcdFx0LnNiQWN0aW9uLmFjdGlvbiB7XG5cdFx0XHRcdFx0XHRkaXNwbGF5OiBub25lO1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdC8vIElmIGxpbmUgaXMgZGVsZXRhYmxlIGZyb20gdGhlIHF1b3RlLCBkaXNwbGF5IEFkZCBUbyBGYXZvcml0ZXMsIFJlbW92ZSBGcm9tIEZhdm9yaXRlcywgRGVsZXRlIGFuZCBDbG9uZSBhY3Rpb25zXG5cdFx0XHRcdFx0Ji5yZW1vdmFibGUge1xuXHRcdFx0XHRcdFx0LmFkZFRvRmF2QnRuLFxuXHRcdFx0XHRcdFx0LnJlbW92ZUZyb21GYXZCdG4sXG5cdFx0XHRcdFx0XHQuZGVsZXRlQnRuLFxuXHRcdFx0XHRcdFx0LmNsb25lQnRuIHtcblx0XHRcdFx0XHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRcdC8vIERpc3BsYXkgZWl0aGVyIEFkZCBUbyBGYXZvcml0ZXMgb3IgUmVtb3ZlIEZyb20gRmF2b3JpdGVzIGJ1dHRvbiBkZXBlbmRpbmcgb24gd2hldGhlciB0aGUgbGluZSBpcyBmYXZvcml0ZVxuXHRcdFx0XHRcdFx0Ji5mYXZvcml0ZSAuYWRkVG9GYXZCdG4sXG5cdFx0XHRcdFx0XHQmOm5vdCguZmF2b3JpdGUpIC5yZW1vdmVGcm9tRmF2QnRuIHtcblx0XHRcdFx0XHRcdFx0ZGlzcGxheTogbm9uZTtcblx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHQvLyBJZiB0aGUgbGluZSBpcyBhIHN0YW5kYWxvbmUgbGluZSwgZGlzcGxheSBDTG9uZSBpY29uIChib3RoIGZvciBleGlzdGluZyBhbmQgbmV3IGxpbmVzKVxuXHRcdFx0XHRcdCY6bm90KC5jb21wb25lbnQpIHtcblx0XHRcdFx0XHRcdC5jbG9uZUJ0biB7XG5cdFx0XHRcdFx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdC8vIElmIGxpbmUgaXMgYnVuZGxlIHBhcmVudCwgZGlzcGxheSB0aGUgUmVjb25maWd1cmUgTGluZSBhY3Rpb25cblx0XHRcdFx0XHQmLmNvbmZpZ3VyYWJsZSB7XG5cdFx0XHRcdFx0XHQucmVjb25maWd1cmVCdG4ge1xuXHRcdFx0XHRcdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHQvLyBJZiBsaW5lIGNhbiBiZSBkaXNwbGF5ZWQgaW4gZWl0aGVyIHRhYmxlLCBkaXNwbGF5IERlc2VnbWVudCBvciBSZXNlZ21lbnQgTGluZSBhY3Rpb25zXG5cdFx0XHRcdFx0Ji5jb252ZXJ0YWJsZSB7XG5cdFx0XHRcdFx0XHQuZGVzZWdtZW50QnRuLFxuXHRcdFx0XHRcdFx0LnJlc2VnbWVudEJ0biB7XG5cdFx0XHRcdFx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0XHQvLyBEaXNwbGF5IGVpdGhlciBEZXNlZ21lbnQgb3IgUmVzZWdtZW50IGRlcGVuZGluZyBvbiB3aGV0aGVyIHRoZSBsaW5lIGlzIGEgc3RhbmRhcmQgb3Igc2VnbWVudGVkIGxpbmUgaXRlbVxuXHRcdFx0XHRcdFx0Ji5zZWdtZW50ZWQgLnJlc2VnbWVudEJ0bixcblx0XHRcdFx0XHRcdCY6bm90KC5zZWdtZW50ZWQpIC5kZXNlZ21lbnRCdG4ge1xuXHRcdFx0XHRcdFx0XHRkaXNwbGF5OiBub25lO1xuXHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdC8vIElmIGxpbmUgaGFzIGEgZGlzY291bnQgc2NoZWR1bGUsIGRpc3BsYXkgRWRpdCBEaXNjb3VudCBTY2hlZHVsZSBidXR0b25cblx0XHRcdFx0XHQmLmRzRWRpdGFibGUge1xuXHRcdFx0XHRcdFx0LnZpZXdEU0J0biB7XG5cdFx0XHRcdFx0XHRcdGRpc3BsYXk6IGJsb2NrO1xuXHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXG5cdFx0XHRcdC5zYi1pY29uLWxldmVsLWRvd24ge1xuXHRcdFx0XHRcdGNvbG9yOiBAc2JJY29uQ29sb3I7XG5cdFx0XHRcdH1cblx0XHRcdH1cblxuXHRcdFx0PiB0Zm9vdCA+IHRyLnNiVG90YWxSb3cgPiB0ZCB7XG5cdFx0XHRcdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC8vIENsYXNzZXMgZm9yIHByb2R1Y3QgaGllcmFyY2h5IHZpc3VhbGl6YXRpb25cbiAgICAuc2JCdW5kbGVPcHRpb24ge1xuICAgICAgY29sb3I6ICM2OTY5Njk7XG4gICAgfVxuICAgIC5zYkluZGVudDIge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAcGFkZGluZ01vYmlsZSAqIDE7XG4gICAgfVxuICAgIC5zYkluZGVudDMge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAcGFkZGluZ01vYmlsZSAqIDI7XG4gICAgfVxuICAgIC5zYkluZGVudDQge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAcGFkZGluZ01vYmlsZSAqIDM7XG4gICAgfVxuICAgIC5zYkluZGVudDUge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAcGFkZGluZ01vYmlsZSAqIDQ7XG4gICAgfVxuICAgIC5zYkluZGVudDYge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAcGFkZGluZ01vYmlsZSAqIDU7XG4gICAgfVxuICAgIC5zYkluZGVudDcge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAcGFkZGluZ01vYmlsZSAqIDY7XG4gICAgfVxuICAgIC5zYkluZGVudDgge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAcGFkZGluZ01vYmlsZSAqIDc7XG4gICAgfVxuICAgIC5zYkluZGVudDkge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAcGFkZGluZ01vYmlsZSAqIDg7XG4gICAgfVxuICAgIC5zYkluZGVudDEwIHtcbiAgICAgIHBhZGRpbmctbGVmdDogQHBhZGRpbmdNb2JpbGUgKiA5O1xuICAgIH1cblxuXHQuc2JDdXN0b21TZWdtZW50c0VkaXRvciwgLnNiUHJvZHVjdFJ1bGVBbGVydFBvcHVwIHtcblx0XHQjc2JTZWdtZW50c01vZGFsIHtcblx0XHRcdG92ZXJmbG93OiBhdXRvO1xuXHRcdFx0bWFyZ2luOiAwO1xuXG5cdFx0XHRoZWFkZXIge1xuXHRcdFx0XHRtYXJnaW4tYm90dG9tOiAyNXB4O1xuXG5cdFx0XHRcdD4gaDMge1xuXHRcdFx0XHRcdGZvbnQtc2l6ZTogMjFweDtcblx0XHRcdFx0XHR3aWR0aDogMTAwJTtcblx0XHRcdFx0fVxuXG5cdFx0XHRcdC5zYkJ1dHRvbnMge1xuXHRcdFx0XHRcdHdpZHRoOiAxMDAlO1xuXG5cdFx0XHRcdFx0PiAuc2JCdG4ge1xuXHRcdFx0XHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXG5cdFx0XHRcdFx0XHQmOm5vdCg6Zmlyc3Qtb2YtdHlwZSl7XG5cdFx0XHRcdFx0XHRcdG1hcmdpbi10b3A6IDA7XG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cblxuXHRcdFx0LnNiVmFsaWRhdGlvbkVycm9ycyB7XG5cdFx0XHRcdG1hcmdpbi1ib3R0b206IDI1cHg7XG5cblx0XHRcdFx0PiBkaXYge1xuXHRcdFx0XHRcdHBhZGRpbmctdG9wOiAxMHB4O1xuXG5cdFx0XHRcdFx0PiBzcGFuLFxuXHRcdFx0XHRcdD4gZGl2IHtcblx0XHRcdFx0XHRcdGRpc3BsYXk6IGlubGluZTtcblx0XHRcdFx0XHRcdGNvbG9yOiAjYzAwO1xuXHRcdFx0XHRcdFx0Zm9udC1zaXplOiAxNHB4O1xuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXHRcdFx0fVxuXG5cdFx0XHQuc2JUYWJsZSB7XG5cblx0XHRcdFx0aSB7XG5cdFx0XHRcdFx0cGFkZGluZy1yaWdodDogMTBweDtcblx0XHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHRcdFx0dmVydGljYWwtYWxpZ246IG1pZGRsZTtcblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdCNzYkZhdm9yaXRlc01vZGFsIHtcblxuXHRcdGhlYWRlciB7XG5cdFx0XHRtYXJnaW4tYm90dG9tOiAyNXB4O1xuXHRcdH1cblxuXHRcdC5zYlZhbGlkYXRpb25FcnJvcnMge1xuXHRcdFx0bWFyZ2luLWJvdHRvbTogMjVweDtcblxuXHRcdFx0PiBkaXYge1xuXHRcdFx0XHRwYWRkaW5nLXRvcDogMTBweDtcblxuXHRcdFx0XHQ+IHNwYW4sXG5cdFx0XHRcdD4gZGl2IHtcblx0XHRcdFx0XHRkaXNwbGF5OiBpbmxpbmU7XG5cdFx0XHRcdFx0Y29sb3I6ICNjMDA7XG5cdFx0XHRcdFx0Zm9udC1zaXplOiAxNHB4O1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXHRcdC5zYlRhYmxlIHtcblx0XHRcdD4gdGJvZHkgPiB0ciA+IHRkIHtcblx0XHRcdFx0Ym9yZGVyLWJvdHRvbTogbm9uZTtcblxuXHRcdFx0XHQmOmZpcnN0LW9mLXR5cGUge1xuXHRcdFx0XHRcdHdpZHRoOiAxNSU7XG5cdFx0XHRcdFx0cGFkZGluZy1sZWZ0OiAxNXB4O1xuXHRcdFx0XHR9XG5cblx0XHRcdFx0I3NiRmF2b3JpdGVOYW1lIHtcblx0XHRcdFx0XHR3aWR0aDogMzAwcHg7XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQuZWRpdGVkTVNMaW5lLnNiVGFibGUge1xuXHRcdHdpZHRoOiA3NSU7XG5cdFx0bWFyZ2luOiAzMHB4IGF1dG8gMDtcblxuXHRcdHRib2R5ID4gdHIgPiB0ZCB7XG5cdFx0XHRoZWlnaHQ6IDU1cHg7XG5cdFx0fVxuXG5cdFx0PiB0aGVhZCA+IHRyID4gdGg6Zmlyc3Qtb2YtdHlwZSxcblx0XHQ+IHRib2R5ID4gdHIgPiB0ZDpmaXJzdC1vZi10eXBlIHtcblx0XHRcdHBhZGRpbmctbGVmdDogMTUwcHg7XG5cdFx0fVxuXG5cdFx0PiB0Ym9keSA+IHRyIHtcblxuXHRcdFx0Ji5tc1N1bW1hcnlSb3cge1xuXHRcdFx0XHRpIHtcblx0XHRcdFx0XHRwYWRkaW5nLWxlZnQ6IDI1cHg7XG5cdFx0XHRcdFx0Zm9udC1zaXplOiAyMXB4O1xuXHRcdFx0XHRcdHZlcnRpY2FsLWFsaWduOiB0ZXh0LWJvdHRvbTtcblx0XHRcdFx0fVxuXHRcdFx0fVxuXG5cdFx0XHQmLm1zRGV0YWlsUm93ID4gdGQge1xuXHRcdFx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjZjdmN2Y3O1xuXHRcdFx0XHRib3JkZXI6IG5vbmU7XG5cblx0XHRcdFx0c2VsZWN0IHtcblx0XHRcdFx0XHR3aWR0aDogaW5oZXJpdDtcblx0XHRcdFx0XHRtYXJnaW4tbGVmdDogNXB4O1xuXHRcdFx0XHR9XG5cblx0XHRcdFx0Ji5sYWJlbCB7XG5cdFx0XHRcdFx0cGFkZGluZy1sZWZ0OiAxNTBweDtcblx0XHRcdFx0fVxuXHRcdFx0fVxuXG5cdFx0XHQmLnNiVG90YWxSb3cgPiB0ZCB7XG5cdFx0XHRcdHBhZGRpbmctdG9wOiAxMHB4O1xuXHRcdFx0XHR0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuXHRcdFx0XHRmb250LXdlaWdodDogYm9sZDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQucmVjb3JkRWRpdG9yRm9ybSB7XG5cdFx0PiBoZWFkZXIge1xuXHRcdFx0PiBoMyB7XG5cdFx0XHRcdGZvbnQtc2l6ZTogMjFweDtcblx0XHRcdH1cblx0XHR9XG5cblx0XHQuc2JMaW5lQWN0aW9ucyB7XG5cdFx0XHRkaXNwbGF5OiBpbmxpbmU7XG5cdFx0fVxuXG5cdFx0PiAuYnV0dG9uQ29udGFpbmVyIHtcblx0XHRcdG1hcmdpbjogMDtcblx0XHR9XG5cdH1cblxuXHQuc2JMaW5lTnVtYmVyLmRhdGFDZWxsIHtcblx0XHR3aGl0ZS1zcGFjZTogbm93cmFwO1xuXG5cdFx0c3BhbiB7XG5cdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHR2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXHRcdH1cblxuXHRcdC5zYkxpbmVFcnJvciB7XG5cdFx0XHRzcGFuIHtcblx0XHRcdFx0d2hpdGUtc3BhY2U6IGluaXRpYWw7XG5cdFx0XHRcdG1hcmdpbjogMjBweCA1cHg7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0I3NiUHJpY2Vib29rTW9kYWwge1xuXHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblxuXHRcdHNlbGVjdCB7XG5cdFx0XHR3aWR0aDogMjUwcHg7XG5cdFx0XHRtYXJnaW46IDI1cHggMDtcblx0XHR9XG5cdH1cbn1cblxuLyoqIFBob25lIFN0eWxlcyAqL1xuXG5AbWVkaWEgb25seSBzY3JlZW4gYW5kIChtaW4tZGV2aWNlLXdpZHRoIDogMzIwcHgpIGFuZCAobWF4LWRldmljZS13aWR0aCA6IDY0MHB4KSB7XG5cblx0I3NiTGluZUVkaXRvciB7XG5cdFx0cGFkZGluZzogNXB4O1xuXG5cdFx0LnNiTW9iaWxlVGFicyB7XG5cdFx0XHRmb250LXNpemU6IEBzYkZvbnRTaXplO1xuXHRcdFx0bWFyZ2luOiAxMHB4IDA7XG5cdFx0fVxuXG5cdFx0LnNiUGhvbmVUYWIuc2JCdG4ge1xuXHRcdFx0cGFkZGluZzogMTBweDtcblx0XHRcdG1hcmdpbjogMCAwIDE1cHggMDtcblxuXHRcdFx0Ji5zZWxlY3RlZCB7XG5cdFx0XHRcdGJhY2tncm91bmQtY29sb3I6IEBzYkNvbnRlbnRCZ0NvbG9yO1xuXHRcdFx0fVxuXG5cdFx0XHQ+IHNwYW4ge1xuXHRcdFx0XHR0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuXHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cblx0XHRcdFx0Ji5zZi1pY29uLWVkaXQge1xuXHRcdFx0XHRcdHBvc2l0aW9uOiBhYnNvbHV0ZTtcblx0XHRcdFx0XHRyaWdodDogMTVweDtcblx0XHRcdFx0XHR2aXNpYmlsaXR5OiBoaWRkZW47XG5cblx0XHRcdFx0XHQmLnZpc2libGUge1xuXHRcdFx0XHRcdFx0dmlzaWJpbGl0eTogdmlzaWJsZTtcblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblx0XHRcdH1cblxuXHRcdH1cblxuXHRcdC5zYkdyb3VwTmFtZXMgPiBkaXYge1xuXHRcdFx0cGFkZGluZzogMTBweDtcblx0XHR9XG5cblx0XHQuc2JHcm91cCB7XG5cdFx0XHQuc2JHcm91cEhlYWRlcixcblx0XHRcdC5zYkdyb3VwQnV0dG9ucyB7XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdH1cblxuXHRcdFx0LnNiR3JvdXBIZWFkZXIge1xuXHRcdFx0XHRmbG9hdDogbGVmdDtcblxuXHRcdFx0XHQ+IGgyIHtcblx0XHRcdFx0XHRwYWRkaW5nLXRvcDogNXB4O1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0LnJlY29yZEVkaXRvckZvcm0ge1xuXHRcdFx0PiBoZWFkZXIge1xuXHRcdFx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0Lm11bHRpU2VnbWVudC5zYlRhYmxlLFxuXHRcdC5zdGFuZGFyZC5zYlRhYmxlIHtcblx0XHRcdG1hcmdpbi1ib3R0b206IDE1cHg7XG5cdFx0fVxuXG5cdFx0LmVkaXRlZE1TTGluZS5zYlRhYmxlIHtcblx0XHRcdHdpZHRoOiA5MCU7XG5cblx0XHRcdD4gdGhlYWQgPiB0ciA+IHRoOmZpcnN0LW9mLXR5cGUsXG5cdFx0XHQ+IHRib2R5ID4gdHIgPiB0ZDpmaXJzdC1vZi10eXBlIHtcblx0XHRcdFx0cGFkZGluZy1sZWZ0OiAxNXB4O1xuXHRcdFx0fVxuXG5cdFx0XHQ+IHRib2R5ID4gdHIge1xuXG5cdFx0XHRcdCYubXNEZXRhaWxSb3cgPiB0ZC5sYWJlbCB7XG5cdFx0XHRcdFx0cGFkZGluZy1sZWZ0OiAxNXB4O1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXG5cdFx0LnNiRGlzY291bnRTY2hlZHVsZU1vZGFsIHtcblx0XHRcdC5zYkJ1dHRvbnMge1xuXHRcdFx0XHR3aWR0aDogMTAwJTtcblx0XHRcdH1cblxuXHRcdFx0Lm1lc3NhZ2Uge1xuXHRcdFx0XHRtYXJnaW4tdG9wOiA1cHg7XG5cdFx0XHRcdG1hcmdpbi1ib3R0b206IDVweDtcblx0XHRcdH1cblx0XHR9XG5cblx0XHQjc2JGYXZvcml0ZXNNb2RhbCB7XG5cdFx0XHQuc2JUYWJsZSB7XG5cdFx0XHRcdD4gdGJvZHkgPiB0ciA+IHRkIHtcblxuXHRcdFx0XHRcdCY6Zmlyc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdFx0XHR3aGl0ZS1zcGFjZTogbm93cmFwO1xuXHRcdFx0XHRcdFx0cGFkZGluZy1sZWZ0OiAwO1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdCNzYkZhdm9yaXRlTmFtZSB7XG5cdFx0XHRcdFx0XHR3aWR0aDogMjAwcHg7XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG59XG4iLCIjc2JQcm9kdWN0U2VhcmNoIHtcblx0cGFkZGluZzogQHBhZGRpbmdNb2JpbGU7XG5cdGZvbnQtc2l6ZTogQGZvbnRTaXplTW9iaWxlO1xuXG5cdC5zYlBhZ2VCbG9jayB7XG5cdFx0cGFkZGluZy10b3A6IDg1cHg7XG5cdH1cblxuXHRcblx0LnNiUHJvZHVjdEZpbHRlcnMge1xuXG5cdFx0PiBidXR0b24sXG5cdFx0PiAuc2JUYWJsZSB7XG5cdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0fVxuXG5cdFx0PiBidXR0b24ge1xuXHRcdFx0dmVydGljYWwtYWxpZ246IGJvdHRvbTtcblx0XHRcdG1hcmdpbi1ib3R0b206IDNweDtcblx0XHR9XG5cblx0XHQ+IC5zYlRhYmxlIHtcblx0XHRcdHdpZHRoOiBpbmhlcml0O1xuXG5cdFx0XHQ+IHRoZWFkID4gdHIgPiB0ZCB7XG5cdFx0XHRcdHBhZGRpbmc6IDAgNXB4O1xuXHRcdFx0fVxuXHRcdFx0PiB0Ym9keSA+IHRyID4gdGQge1xuXHRcdFx0XHRib3JkZXI6IG5vbmU7XG5cdFx0XHRcdHBhZGRpbmc6IDAgNXB4O1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC5zYkd1aWRlZFNlbGxpbmcge1xuXG5cdFx0PiBidXR0b24sXG5cdFx0PiAuc2JUYWJsZSB7XG5cdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0fVxuXG5cdFx0PiBidXR0b24ge1xuXHRcdFx0dmVydGljYWwtYWxpZ246IGJvdHRvbTtcblx0XHRcdG1hcmdpbi1ib3R0b206IDNweDtcblx0XHR9XG5cblx0XHQ+IC5zYlRhYmxlIHtcblx0XHRcdHdpZHRoOiBpbmhlcml0O1xuXG5cdFx0XHQ+IHRib2R5ID4gdHIgPiB0ZCB7XG5cdFx0XHRcdGJvcmRlcjogbm9uZTtcblx0XHRcdFx0cGFkZGluZzogMCA1cHg7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0LnNiUHJvZHVjdHNUYWJsZUNvbnRhaW5lciB7XG5cdFx0b3ZlcmZsb3cteDogYXV0bztcblxuXHRcdC5zYlByb2R1Y3RzIHtcblx0XHRcdG1hcmdpbi10b3A6IDIwcHg7XG5cblx0XHRcdD4gdGZvb3QgPiB0ci5zYlByb2R1Y3RQYWdlcyB7XG5cblx0XHRcdFx0PiB0ZCB7XG5cdFx0XHRcdFx0Ym9yZGVyLWJvdHRvbTogbm9uZTtcblxuXHRcdFx0XHRcdC5zYlBhZ2VzIHtcblx0XHRcdFx0XHRcdG1hcmdpbi10b3A6IDI1cHg7XG5cdFx0XHRcdFx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cblx0XHRcdFx0XHRcdD4gLnNiQnRuIHtcblx0XHRcdFx0XHRcdFx0Zm9udC1zaXplOiAxLjRlbTtcblx0XHRcdFx0XHRcdFx0cGFkZGluZzogOXB4IDEwcHggMTFweDtcblx0XHRcdFx0XHRcdFx0Y29sb3I6IEBzYkxpbmtDb2xvcjtcblxuXHRcdFx0XHRcdFx0XHQmLnNiLWljb24tbGVmdC1kaXIsXG5cdFx0XHQgICAgICAgICAgICAgICAgJi5zYi1pY29uLXJpZ2h0LWRpciB7XG5cdFx0XHQgICAgICAgICAgICAgICAgICBmb250LXNpemU6IDEuNmVtO1xuXHRcdFx0ICAgICAgICAgICAgICAgICAgcGFkZGluZzogOHB4IDhweCA5cHg7XG5cdFx0XHQgICAgICAgICAgICAgICAgfVxuXG5cdFx0XHRcdFx0XHRcdCYuZGlzYWJsZWQge1xuXHRcdFx0XHRcdFx0XHRcdGJhY2tncm91bmQtY29sb3I6IEBzYlBhZ2VCZ0NvbG9yO1xuXHRcdFx0XHRcdFx0XHRcdGNvbG9yOiBAc2JJY29uQ29sb3I7XG5cdFx0XHRcdFx0XHRcdH1cblx0XHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdFx0LnNiUGFnZVNlbGVjdG9yIHtcblx0XHRcdFx0XHRcdFx0cGFkZGluZzogMCAxMHB4O1xuXHRcdFx0XHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHRcdFx0XHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cblx0XHRcdFx0XHRcdFx0PiBpbnB1dCB7XG5cdFx0XHRcdFx0XHRcdFx0d2lkdGg6IDQ1cHg7XG5cdFx0XHRcdFx0XHRcdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRcdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0XHR9XG5cdFx0XHRcdFx0fVxuXHRcdFx0XHR9XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG59XG5cblxuLyoqIFBob25lIFN0eWxlcyAqL1xuXG5AbWVkaWEgb25seSBzY3JlZW4gYW5kIChtaW4tZGV2aWNlLXdpZHRoIDogMzIwcHgpIGFuZCAobWF4LWRldmljZS13aWR0aCA6IDY0MHB4KSB7XG5cblx0I3NiUHJvZHVjdFNlYXJjaCB7XG5cdFx0LnNiUHJvZHVjdEZpbHRlcnMge1xuXHRcdFx0bWFyZ2luLXRvcDogMzBweDtcblxuXHRcdFx0bGFiZWwge1xuXHRcdFx0XHRtYXJnaW4tdG9wOiA1cHg7XG5cdFx0XHR9XG5cblx0XHRcdGJ1dHRvbiB7XG5cdFx0XHRcdG1hcmdpbjogMjBweCAwIDAgMDtcblx0XHRcdH1cblxuXHRcdH1cblx0fVxuXG5cdCNzYlByb2R1Y3RTZWFyY2gge1xuXHRcdC5zYkd1aWRlZFNlbGxpbmcge1xuXHRcdFx0bWFyZ2luLXRvcDogMzBweDtcblxuXHRcdFx0bGFiZWwge1xuXHRcdFx0XHRtYXJnaW4tdG9wOiA1cHg7XG5cdFx0XHR9XG5cblx0XHRcdGJ1dHRvbiB7XG5cdFx0XHRcdG1hcmdpbjogMjBweCAwIDAgMDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQjc2JQcm9kdWN0U2VhcmNoIHtcblx0XHQuc2JQcm9kdWN0c1RhYmxlQ29udGFpbmVyIHtcblx0XHRcdHRhYmxlLnNiUHJvZHVjdHMgPiB0Zm9vdCA+IHRyLnNiUHJvZHVjdFBhZ2VzID4gdGQge1xuXHRcdFx0XHRwYWRkaW5nLWxlZnQ6IDA7XG5cblx0XHRcdFx0LnNiUGFnZXMge1xuXHRcdFx0XHRcdHRleHQtYWxpZ246IGxlZnQ7XG5cblx0XHRcdFx0XHQuc2JCdG46Zmlyc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdFx0XHRtYXJnaW4tbGVmdDogMDtcblx0XHRcdFx0XHR9XG5cdFx0XHRcdH1cblx0XHRcdH1cblx0XHR9XG5cdH1cblxufSIsIiNzYlByb2R1Y3RDb25maWd1cmF0b3Ige1xuXHRwYWRkaW5nOiBAcGFkZGluZ01vYmlsZTtcblx0Zm9udC1zaXplOiBAZm9udFNpemVNb2JpbGU7XG5cblx0LnNiUGFnZVRpdGxlVGFibGUgPiAuc2JQYWdlVGl0bGVSaWdodCB7XG5cdFx0bWFyZ2luLXRvcDogN3B4O1xuXHR9XG5cblx0LnNiUGFnZVRpdGxlVGFibGUgPiAuc2JQYWdlVGl0bGVMZWZ0IC5zZi1pY29uLWN1c3RvbV9hcHBzIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjODE5OWFmO1xuXHR9XG5cblx0LnNiRmVhdHVyZXMsXG5cdC5zYkFkZE9wdGlvbkRpYWxvZyB7XG5cdFx0bWFyZ2luLXRvcDogNzVweDtcblx0fVxuXG5cblx0LnNiRmVhdHVyZXMge1xuXG5cdFx0LnNiQ29uZmlndXJlZFByb2R1Y3Qge1xuXG5cdFx0XHQuc2JDb25maWdQcm9kdWN0TmFtZSB7XG5cdFx0XHRcdG1hcmdpbi1ib3R0b206IDA7XG5cdFx0XHR9XG5cblx0XHRcdCY6bm90KDpmaXJzdC1vZi10eXBlKSAuc2JDb25maWdQcm9kdWN0TmFtZSB7XG5cdFx0XHRcdG1hcmdpbi10b3A6IDQ1cHg7XG5cdFx0XHR9XG5cblx0XHRcdC5ncm91cCB7XG5cblx0XHRcdFx0aDMge1xuXHRcdFx0XHRcdG1hcmdpbi10b3A6IDI1cHg7XG5cdFx0XHRcdFx0bWFyZ2luLWJvdHRvbTogM3B4O1xuXHRcdFx0XHR9XG5cblx0XHRcdFx0LmZlYXR1cmVJbnN0cnVjdGlvbnMge1xuXHRcdFx0XHRcdHBhZGRpbmctYm90dG9tOiAxNXB4O1xuXHRcdFx0XHR9XG5cblx0XHRcdFx0LnNiRmVhdHVyZU9wdGlvbnMge1xuXHRcdFx0XHRcdG92ZXJmbG93LXg6IGF1dG87XG5cblx0XHRcdFx0fVxuXG5cdFx0XHRcdC5zYkFkZE9wdGlvbkNvbnRhaW5lciB7XG5cdFx0XHRcdFx0bWFyZ2luLXRvcDogMTVweDtcblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblxuXHRcdC5yZXF1aXJlc0NvbmZpZ3VyYXRpb24ge1xuXHRcdCAgICBib3JkZXItbGVmdDogI2MwMCBzb2xpZDtcblx0XHR9XG5cdH1cblxuXHQuc2JBZGRPcHRpb25EaWFsb2cge1xuXHRcdD4gLnNiVGl0bGVDb250YWluZXIge1xuXHRcdFx0PiBoMiB7XG5cdFx0XHRcdG1hcmdpbi1ib3R0b206IDVweDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQuc2JEYXRhQ29sIHtcblx0ICBwYWRkaW5nOiA1cHggMDtcblx0fVxuXG5cdC5jb25maWdUYWJsZS5zYlRhYmxlIHtcblx0XHRtYXJnaW4tdG9wOiAxNXB4O1xuXG5cdFx0dGQge1xuXHRcdFx0cGFkZGluZzogMTVweDtcblx0XHRcdGJvcmRlci1ib3R0b206IG5vbmU7XG5cblx0XHRcdCYuc2JMYWJlbENvbCB7XG5cdFx0XHRcdHRleHQtYWxpZ246IHJpZ2h0O1xuXG5cdFx0XHRcdD4gbGFiZWwge1xuXHRcdFx0XHRcdHBhZGRpbmctYm90dG9tOiAwO1xuXHRcdFx0XHR9XG5cdFx0XHR9XG5cblx0XHRcdCYuc2JEYXRhQ29sIHNlbGVjdCB7XG5cdFx0XHRcdHdpZHRoOiAxNTBweDtcblx0XHRcdH1cblx0XHR9XG5cdH1cbn1cblxuLyoqIFBob25lIFN0eWxlcyAqL1xuXG5AbWVkaWEgb25seSBzY3JlZW4gYW5kIChtaW4tZGV2aWNlLXdpZHRoIDogMzIwcHgpIGFuZCAobWF4LWRldmljZS13aWR0aCA6IDY0MHB4KSB7XG5cdCNzYlByb2R1Y3RDb25maWd1cmF0b3Ige1xuXG5cdFx0LnNiRmVhdHVyZXMsXG5cdFx0LnNiQWRkT3B0aW9uRGlhbG9nIHtcblx0XHRcdG1hcmdpbi10b3A6IDExNXB4O1xuXHRcdH1cblx0fVxufVxuIiwiI3NiQXNzZXRTZWFyY2gge1xuXG5cdC5zYlBhZ2VCbG9jayB7XG5cdCAgICBwYWRkaW5nLXRvcDogMTAwcHg7XG5cdH1cblxuXHQuc2JQcm9kdWN0RmlsdGVycyA+IC5zYlRhYmxlIHtcblx0ICAgIHdpZHRoOiBpbmhlcml0O1xuXHR9XG5cblx0LnNiQXNzZXRzIHtcblx0ICAgIG1hcmdpbi10b3A6IDIwcHg7XG5cdH1cblxuXHQuc2JQcm9kdWN0RmlsdGVycyB7XG5cblx0XHQ+IC5zYlRhYmxlIHtcblxuXHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXG5cdFx0XHQ+IHRib2R5ID4gdHIgPiB0ZCB7XG5cdFx0XHQgICAgYm9yZGVyOiBub25lO1xuXHRcdFx0ICAgIHBhZGRpbmc6IDAgNXB4O1xuXHRcdFx0fVxuXG5cdFx0fVxuXG5cdFx0PiBidXR0b24ge1xuXHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdCAgICBtYXJnaW4tYm90dG9tOiA1cHg7XG5cdFx0XHR2ZXJ0aWNhbC1hbGlnbjogYm90dG9tO1xuXHRcdH1cblxuXHR9XG5cbn1cblxuXG4vKiogUGhvbmUgU3R5bGVzICovXG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi1kZXZpY2Utd2lkdGggOiAzMjBweCkgYW5kIChtYXgtZGV2aWNlLXdpZHRoIDogNjQwcHgpIHtcblxuXHQjc2JBc3NldFNlYXJjaCB7XG5cdFx0LnNiQXNzZXRGaWx0ZXIge1xuXHRcdFx0bWFyZ2luLXRvcDogMzBweDtcblxuXHRcdFx0bGFiZWwge1xuXHRcdFx0XHRtYXJnaW4tdG9wOiA1cHg7XG5cdFx0XHR9XG5cblx0XHRcdGJ1dHRvbiB7XG5cdFx0XHRcdG1hcmdpbjogMjBweCAwIDAgMDtcblx0XHRcdH1cblxuXHRcdH1cblx0fVxuXG59IiwiI3NiU3Vic2NyaXB0aW9uU2VhcmNoIHtcblxuXHQuc2JQYWdlQmxvY2sge1xuXHQgICAgcGFkZGluZy10b3A6IDEwMHB4O1xuXHR9XG5cblx0LnNiUHJvZHVjdEZpbHRlcnMgPiAuc2JUYWJsZSB7XG5cdCAgICB3aWR0aDogaW5oZXJpdDtcblx0fVxuXG5cdC5zYlN1YnNjcmlwdGlvbnMge1xuXHQgICAgbWFyZ2luLXRvcDogMjBweDtcblx0fVxuXG5cdC5zYlByb2R1Y3RGaWx0ZXJzIHtcblxuXHRcdD4gLnNiVGFibGUge1xuXG5cdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cblx0XHRcdD4gdGJvZHkgPiB0ciA+IHRkIHtcblx0XHRcdCAgICBib3JkZXI6IG5vbmU7XG5cdFx0XHQgICAgcGFkZGluZzogMCA1cHg7XG5cdFx0XHR9XG5cblx0XHR9XG5cblx0XHQ+IGJ1dHRvbiB7XG5cdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0ICAgIG1hcmdpbi1ib3R0b206IDVweDtcblx0XHRcdHZlcnRpY2FsLWFsaWduOiBib3R0b207XG5cdFx0fVxuXG5cdH1cblxufVxuXG5cbi8qKiBQaG9uZSBTdHlsZXMgKi9cblxuQG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAobWluLWRldmljZS13aWR0aCA6IDMyMHB4KSBhbmQgKG1heC1kZXZpY2Utd2lkdGggOiA2NDBweCkge1xuXG5cdCNzYlN1YnNjcmlwdGlvblNlYXJjaCB7XG5cdFx0LnNiU3Vic2NyaXB0aW9uRmlsdGVyIHtcblx0XHRcdG1hcmdpbi10b3A6IDMwcHg7XG5cblx0XHRcdGxhYmVsIHtcblx0XHRcdFx0bWFyZ2luLXRvcDogNXB4O1xuXHRcdFx0fVxuXG5cdFx0XHRidXR0b24ge1xuXHRcdFx0XHRtYXJnaW46IDIwcHggMCAwIDA7XG5cdFx0XHR9XG5cblx0XHR9XG5cdH1cblxufSIsIi8qXG5Eb2N1bWVudCBHZW5lcmF0aW9uIFByZXZpZXcgcGFnZVxuXG5QcmV2aWV3cyBhIGRvY3VtZW50IGluIHRoZSBicm93c2VyIHdpdGggY2hvc2VuIHRlbXBsYXRlLCBhZGRpdGlvbmFsIGRvY3MsIGV0Yy5cbiovXG4jc2JEb2NHZW5QcmV2aWV3LCAjc2JEb2NHZW5PcHRpb25zIHtcblx0cGFkZGluZzogQHBhZGRpbmdNb2JpbGU7XG5cdGZvbnQtc2l6ZTogQGZvbnRTaXplTW9iaWxlO1xuXG5cdC5zYlByZXZpZXcge1xuXHRcdG1hcmdpbi10b3A6IDc1cHg7XG5cblx0XHRbY2xhc3NePXNmLWljb25dIHtcblx0XHRcdGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjc7XG5cdFx0XHRwYWRkaW5nOiA1cHg7XG5cdFx0fVxuXG5cdFx0PiAuYnV0dG9uQ29udGFpbmVyLCAuc2YtaWNvbi16b29tb3V0IHtcblx0XHRcdHBhZGRpbmctbGVmdDogMTVweDtcblx0XHR9XG5cblx0XHQ+IC5kb2N1bWVudFByZXZpZXdDb250YWluZXIge1xuXHRcdFx0bWFyZ2luLWxlZnQ6IC0xNXB4O1xuXHRcdFx0dG9wOiAxNDVweDtcblx0XHR9XG5cdH1cblxuXHQuc2JEb2NPcHRpb25zQ29udGFpbmVyIHtcblx0XHRtYXJnaW4tdG9wOiA3NXB4O1xuXG5cdFx0LnBiU3Vic2VjdGlvbiB7XG5cdFx0XHRtYXJnaW4tdG9wOiAxNXB4O1xuXG5cdFx0XHQ+IGhlYWRlciA+IGgxIHtcblx0XHRcdFx0Zm9udC1zaXplOiAyOHB4O1xuXHRcdFx0XHRtYXJnaW4tYm90dG9tOiAxNXB4O1xuXHRcdFx0fVxuXHRcdH1cblxuXHRcdC5zYkR1YWxMaXN0Qm94IHtcblx0XHRcdHBhZGRpbmc6IDE1cHg7XG5cdFx0XHQ+IHRoZWFkID4gdHIgPiB0aCB7XG5cdFx0XHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0XHRcdH1cblxuXHRcdFx0PiB0Ym9keSA+IHRyID4gdGQge1xuXHRcdFx0XHQmOm50aC1jaGlsZCgxKSxcblx0XHRcdFx0JjpudGgtY2hpbGQoMykge1xuXHRcdFx0XHRcdGJvcmRlcjogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuXHRcdFx0XHRcdGJvcmRlci1yYWRpdXM6IDNweDtcblx0XHRcdFx0fVxuXG5cdFx0XHRcdHVsIHtcblx0XHRcdFx0XHR3aWR0aDogMjUwcHg7XG5cdFx0XHRcdFx0bWluLWhlaWdodDogMzAwcHg7XG5cdFx0XHRcdFx0b3ZlcmZsb3c6IGF1dG87XG5cdFx0XHRcdFx0cGFkZGluZy1sZWZ0OiA4cHg7XG5cblx0XHRcdFx0XHQ+IGxpIHtcblx0XHRcdFx0XHRcdHBhZGRpbmc6IDhweDtcblx0XHRcdFx0XHRcdHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cdFx0XHRcdFx0XHRsaXN0LXN0eWxlLXR5cGU6IG5vbmU7XG5cblx0XHRcdFx0XHRcdCYucmVxdWlyZWQge1xuXHRcdFx0XHRcdFx0XHRjb2xvcjogI2FmMjYyNjtcblx0XHRcdFx0XHRcdFx0Zm9udC13ZWlnaHQ6IGJvbGQ7XG5cdFx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRcdCYuc2VsZWN0ZWQge1xuXHRcdFx0XHRcdFx0XHRjb2xvcjogI2ZmZjtcblx0XHRcdFx0XHRcdFx0YmFja2dyb3VuZC1jb2xvcjogQHNiTGlua0NvbG9yO1xuXHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXG5cblx0XHRcdFx0YSB7XG5cdFx0XHRcdFx0Y29sb3I6IGluaGVyaXQ7XG5cdFx0XHRcdFx0cGFkZGluZzogNXB4O1xuXHRcdFx0XHRcdG1hcmdpbjogMCA4cHg7XG5cdFx0XHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0XHRcdFx0Ym9yZGVyOiAxcHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG5cdFx0XHRcdFx0Ym9yZGVyLWJvdHRvbTogMHB4O1xuXHRcdFx0XHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblxuXHRcdFx0XHRcdFtjbGFzc149c2YtaWNvbl0ge1xuXHRcdFx0XHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNztcblx0XHRcdFx0XHRcdHBhZGRpbmc6IDVweDtcblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRbY2xhc3NePXNiLWljb25dIHtcblx0XHRcdFx0XHRcdGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAyLjI7XG5cdFx0XHRcdFx0XHRwYWRkaW5nOiA1cHg7XG5cdFx0XHRcdFx0XHRjb2xvcjogIzNkM2UzZjtcblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRbY2xhc3NePXNiLWljb24tdG8tZW5kXTpiZWZvcmUge1xuXHRcdFx0XHRcdFx0LnJvdGF0ZSgtOTBkZWcpO1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdCY6bnRoLWNoaWxkKDQpIFtjbGFzc149c2ItaWNvbi10by1lbmRdOmJlZm9yZSB7XG5cdFx0XHRcdFx0XHQucm90YXRlKDkwZGVnKTtcblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHQmOmZpcnN0LW9mLXR5cGUge1xuXHRcdFx0XHRcdFx0Ym9yZGVyLXRvcC1yaWdodC1yYWRpdXM6IDNweDtcblx0XHRcdFx0XHRcdGJvcmRlci10b3AtbGVmdC1yYWRpdXM6IDNweDtcblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHQmOmxhc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdFx0XHRib3JkZXItYm90dG9tOiAxcHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG5cdFx0XHRcdFx0XHRib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogM3B4O1xuXHRcdFx0XHRcdFx0Ym9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogM3B4O1xuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblxuXHR9XG5cblxuXHQvKiogUGhvbmUgU3R5bGVzICovXG5cdEBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi1kZXZpY2Utd2lkdGggOiAzMjBweCkgYW5kIChtYXgtZGV2aWNlLXdpZHRoIDogNjQwcHgpIHtcblx0XHQuc2JQcmV2aWV3LCAuc2JEb2NPcHRpb25zQ29udGFpbmVyIHtcblx0XHRcdG1hcmdpbi10b3A6IDExNXB4O1xuXG5cdFx0XHQ+IC5kb2N1bWVudFByZXZpZXdDb250YWluZXIge1xuXHRcdFx0XHR0b3A6IDE4NXB4O1xuXHRcdFx0fVxuXHRcdH1cblxuXHRcdC5zYkRvY09wdGlvbnNDb250YWluZXIge1xuXG5cdFx0XHQucGJTdWJzZWN0aW9uIHtcblx0XHRcdFx0PiBoZWFkZXIgPiBoMSB7XG5cdFx0XHRcdFx0Zm9udC1zaXplOiAyNHB4O1xuXHRcdFx0XHRcdG1hcmdpbi1ib3R0b206IDA7XG5cdFx0XHRcdH1cblx0XHRcdH1cblxuXG5cdFx0XHQuc2JEdWFsTGlzdEJveCB7XG5cdFx0XHRcdHBhZGRpbmctdG9wOiA1cHg7XG5cdFx0XHRcdD4gdGJvZHkgPiB0ciA+IHRkIHtcblx0XHRcdFx0XHRkaXNwbGF5OiBibG9jaztcblx0XHRcdFx0XHRwYWRkaW5nOiAxMHB4O1xuXG5cdFx0XHRcdFx0JjpudGgtY2hpbGQoMSksXG5cdFx0XHRcdFx0JjpudGgtY2hpbGQoMykge1xuXHRcdFx0XHRcdFx0Ym9yZGVyOiBub25lO1xuXHRcdFx0XHRcdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdCY6bnRoLWNoaWxkKDEpLFxuXHRcdFx0XHRcdCY6bnRoLWNoaWxkKDQpIHtcblx0XHRcdFx0XHRcdHRleHQtYWxpZ246IGNlbnRlcjtcblx0XHRcdFx0XHRcdGZvbnQtd2VpZ2h0OiBib2xkO1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdCY6bnRoLWNoaWxkKDIpLFxuXHRcdFx0XHRcdCY6bnRoLWNoaWxkKDUpIHtcblx0XHRcdFx0XHRcdGJvcmRlcjogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuXHRcdFx0XHRcdFx0Ym9yZGVyLXJhZGl1czogM3B4O1xuXHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdHVsIHtcblx0XHRcdFx0XHRcdG1hcmdpbjogMDtcblx0XHRcdFx0XHRcdHRleHQtYWxpZ246IGxlZnQ7XG5cdFx0XHRcdFx0XHRoZWlnaHQ6IDEyMHB4O1xuXHRcdFx0XHRcdFx0bWluLWhlaWdodDogMTIwcHg7XG5cdFx0XHRcdFx0XHRvdmVyZmxvdzogYXV0bztcblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHRhIHtcblx0XHRcdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0XHRcdG1hcmdpbjogMCAycHg7XG5cdFx0XHRcdFx0XHRib3JkZXI6IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcblxuXHRcdFx0XHRcdFx0W2NsYXNzXj1zYi1pY29uXSB7XG5cdFx0XHRcdFx0XHRcdGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjc7XG5cdFx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHR9XG5cblx0XHRcdFx0XHQmOm50aC1jaGlsZCgyKSxcblx0XHRcdFx0XHQmOm50aC1jaGlsZCg0KSB7XG5cdFx0XHRcdFx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0XHRcdFx0fVxuXG5cdFx0XHRcdFx0JjpsYXN0LWNoaWxkIHtcblx0XHRcdFx0XHRcdGEge1xuXHRcdFx0XHRcdFx0XHQmOm50aC1jaGlsZCgxKSxcblx0XHRcdFx0XHRcdFx0JjpudGgtY2hpbGQoNCkge1xuXHRcdFx0XHRcdFx0XHRcdHBhZGRpbmctYm90dG9tOiA3cHg7XG5cdFx0XHRcdFx0XHRcdH1cblxuXHRcdFx0XHRcdFx0fVxuXHRcdFx0XHRcdH1cblx0XHRcdFx0fVxuXHRcdFx0fVxuXHRcdH1cblx0fVxufVxuXG4vKlxuRG9jdW1lbnQgR2VuZXJhdGlvbiBvcHRpb25zXG5cbkNob2ljZXMgZm9yIGRvY3VtZW50IGdlbmVyYXRpb24gc3VjaCBhcyB0ZW1wbGF0ZSwgb3V0cHV0IGZvcm1hdCwgZXRjLlxuKi9cbiNzYkRvY0dlbk9wdGlvbnMge1xuXHR0ZCB7XG5cdFx0cGFkZGluZy1ib3R0b206IDVweDtcblxuXHRcdD4gbGFiZWwge1xuXHRcdFx0cGFkZGluZy1ib3R0b206IDA7XG5cdFx0fVxuXHR9XG59XG4iLCIjc2JOZXdSZWxhdGVkQ29udGVudCB7XG5cblx0LnNiQm9keSB7XG5cdFx0bWFyZ2luLXRvcDogODVweDtcblxuXHRcdGZpZWxkc2V0IHtcblx0XHRcdGJvcmRlcjogbm9uZTsgXG5cdFx0fVxuXHR9XG5cbn1cblxuXG4vKiogUGhvbmUgU3R5bGVzICovXG5cbkBtZWRpYSBvbmx5IHNjcmVlbiBhbmQgKG1pbi1kZXZpY2Utd2lkdGggOiAzMjBweCkgYW5kIChtYXgtZGV2aWNlLXdpZHRoIDogNjQwcHgpIHtcblxuXHQjc2JOZXdSZWxhdGVkQ29udGVudCB7XG5cdFx0LnNiQm9keSB7XG5cdFx0XHRtYXJnaW4tdG9wOiAxMjVweDtcblxuXHRcdFx0Ly8gbGFiZWwge1xuXHRcdFx0Ly8gXHRtYXJnaW4tdG9wOiA1cHg7XG5cdFx0XHQvLyB9XG5cblx0XHRcdC8vIGJ1dHRvbiB7XG5cdFx0XHQvLyBcdG1hcmdpbjogMjBweCAwIDAgMDtcblx0XHRcdC8vIH1cblxuXHRcdH1cblx0fVxuXG59IiwiI3NiRmF2b3JpdGVzTWFuYWdlciB7XG5cdHBhZGRpbmc6IEBwYWRkaW5nTW9iaWxlO1xuXHRmb250LXNpemU6IEBmb250U2l6ZU1vYmlsZTtcblxuXHQuc2JQYWdlQmxvY2sge1xuXHRcdHBhZGRpbmctdG9wOiA4NXB4O1xuXHR9XG5cblx0LnRvcE1zZyB7XG5cdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHQgICAgZGlzcGxheTogYmxvY2s7XG5cdCAgICBmb250LXdlaWdodDogbm9ybWFsO1xuXHQgICAgcGFkZGluZzogMzJweFxuXHR9XG5cblx0LmJvdE1zZyB7XG5cdCAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdCAgICBkaXNwbGF5OiBibG9jaztcblx0ICAgIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG5cdCAgICBwYWRkaW5nOiAwIDMycHhcblx0fVxuXG5cdC5zYkZhdm9yaXRlc1RhYmxlQ29udGFpbmVyIHtcblx0XHRvdmVyZmxvdy14OiBhdXRvO1xuXG5cdFx0LnNiRmF2b3JpdGVzIHtcblx0XHRcdG1hcmdpbi10b3A6IDIwcHg7XG5cdFx0fVxuXHR9XG5cblx0Lm1vZGFsRGlhbG9nIHtcblx0XHR0b3A6IDEwMHB4O1xuXHRcdG1heC13aWR0aDogNDQwcHg7XG5cdFx0b3ZlcmZsb3c6IHZpc2libGU7XG5cblx0XHRoZWFkZXIge1xuXHRcdFx0dGV4dC1hbGlnbjogY2VudGVyO1xuXHRcdFx0Ym9yZGVyLWJvdHRvbTogMnB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuXG5cdFx0XHQuc2ItaWNvbi1zdGFyIHtcblx0XHRcdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdFx0XHRjb2xvcjogYmxhY2s7XG5cdFx0XHRcdG1hcmdpbjogMCAwO1xuXHRcdFx0fVxuXG5cdFx0XHRoMiB7XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdH1cblx0XHR9XG5cblxuXHRcdC5zYk1vZGFsQ29udGVudENvbnRhaW5lciB7XG5cdFx0XHRwYWRkaW5nOiAxcHggMTRweDtcblxuXHRcdFx0aW5wdXQgeyBcblx0XHRcdFx0bWFyZ2luOiAwIDA7XG5cdFx0XHR9XG5cblx0XHRcdC5zYlRhYmxlIHtcblx0XHRcdFx0PnRib2R5PnRyPnRkIHtcblx0XHRcdFx0XHRib3JkZXI6IDA7XG5cdFx0XHRcdH1cblx0XHQgICAgICAgIC5zYkFjdGlvbnMge1xuXHRcdFx0ICAgICAgICB3aWR0aDogMSU7XG5cdFx0XHQgICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG5cdFx0XHQgICAgICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cblx0XHQgICAgICAgIH1cblx0XHQgICAgfVxuXHRcdH1cblxuXHRcdC5zYk1vZGFsRm9vdGVyIHtcblx0XHRcdGJvcmRlci10b3A6IDJweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcblx0XHRcdGJhY2tncm91bmQtY29sb3I6ICNGNEY2Rjk7XG5cdFx0XHRwYWRkaW5nOiAxMnB4IDE2cHg7XG5cdFx0XHR0ZXh0LWFsaWduOiByaWdodDtcblxuXHRcdFx0LnNiQnV0dG9ucyB7XG5cdFx0XHQgICAgcGFkZGluZzogMCAycHg7XG5cdFx0XHR9XG5cdFx0XHRpbnB1dCB7XG5cdFx0XHRcdG1hcmdpbjogMDtcblx0XHRcdH1cblx0XHR9XG5cdH1cblxuXHQuZm9ybS1jb250cm9sIHtcblx0XHRkaXNwbGF5OiBibG9jaztcblx0ICAgIHdpZHRoOiAxMDAlO1xuXHQgICAgaGVpZ2h0OiAzNHB4O1xuXHQgICAgcGFkZGluZzogNnB4IDEycHg7XG5cdCAgICBmb250LXNpemU6IDE0cHg7XG5cdCAgICBsaW5lLWhlaWdodDogMS40Mjg1NzE0Mztcblx0ICAgIGNvbG9yOiAjNTU1O1xuXHQgICAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZjtcblx0ICAgIGJhY2tncm91bmQtaW1hZ2U6IG5vbmU7XG5cdCAgICBib3JkZXI6IDFweCBzb2xpZCAjY2NjO1xuXHQgICAgYm9yZGVyLXJhZGl1czogNHB4O1xuXHQgIH1cblxuICAuc2JWYWxpZGF0aW9uRXJyb3JzIHtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICBwYWRkaW5nOiA1cHggMTVweDtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgIHNwYW4ge1xuICAgIFx0Y29sb3I6ICNjMDA7XG4gICAgfVxuICB9XG5cbiAgLmludmFsaWQge1xuICAgIGJvcmRlci1jb2xvcjogI2MwMDtcbiAgfVxuXG4gIC5kcm9wZG93bi1tZW51IHtcbiAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgdG9wOiAxMDAlO1xuICAgIGxlZnQ6IDA7XG4gICAgei1pbmRleDogMTAwMDtcbiAgICBkaXNwbGF5OiBub25lO1xuICAgIGZsb2F0OiBsZWZ0O1xuICAgIG1pbi13aWR0aDogMTYwcHg7XG4gICAgcGFkZGluZzogNXB4IDA7XG4gICAgbWFyZ2luOiAycHggMCAwO1xuICAgIGZvbnQtc2l6ZTogMTRweDtcbiAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgIGxpc3Qtc3R5bGU6IG5vbmU7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZjtcbiAgICBib3JkZXI6IDFweCBzb2xpZCByZ2JhKDAsMCwwLC4xNSk7XG4gICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICAgIGJveC1zaGFkb3c6IDAgNnB4IDEycHggcmdiYSgwLDAsMCwuMTc1KTtcbiAgICBiYWNrZ3JvdW5kLWNsaXA6IHBhZGRpbmctYm94O1xuICB9XG5cbiAgLmRyb3Bkb3duLW1lbnUgPiBsaSA+IGEge1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIHBhZGRpbmc6IDNweCAyMHB4O1xuICAgIGNsZWFyOiBib3RoO1xuICAgIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gICAgbGluZS1oZWlnaHQ6IDEuNDI4NTcxNDM7XG4gICAgY29sb3I6ICMzMzM7XG4gICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgfVxuICAuZHJvcGRvd24tbWVudSA+IGxpID4gYTpob3ZlcixcbiAgLmRyb3Bkb3duLW1lbnUgPiBsaSA+IGE6Zm9jdXMge1xuICAgIGNvbG9yOiAjMjYyNjI2O1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjZjVmNWY1O1xuICB9XG5cbiAgLmRyb3Bkb3duLW1lbnUgPiAuYWN0aXZlID4gYSxcbiAgLmRyb3Bkb3duLW1lbnUgPiAuYWN0aXZlID4gYTpob3ZlcixcbiAgLmRyb3Bkb3duLW1lbnUgPiAuYWN0aXZlID4gYTpmb2N1cyB7XG4gICAgY29sb3I6ICNmZmY7XG4gICAgdGV4dC1kZWNvcmF0aW9uOiBub25lO1xuICAgIGJhY2tncm91bmQtY29sb3I6ICMzMzdhYjc7XG4gICAgb3V0bGluZTogMDtcbiAgfVxufVxuXG5cbi8qKiBQaG9uZSBTdHlsZXMgKi9cblxuQG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAobWluLWRldmljZS13aWR0aCA6IDMyMHB4KSBhbmQgKG1heC1kZXZpY2Utd2lkdGggOiA2NDBweCkge1xuXG5cdCNzYkZhdm9yaXRlc01hbmFnZXIge1xuXHR9XG5cbn0iXSwiZmlsZSI6Im1vYmlsZS5jc3MifQ== */
