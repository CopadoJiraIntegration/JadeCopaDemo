html {
  font-size: 13px;
}

body {
  background-color: #f2f2f2;
  border: none;
  margin: 0px;
  padding: 0px;
  font-size: 1rem;
}

iframe {
  border-style: none;
}

.wave {
  display: block;
  position: relative;
  user-select: none;
  height: 80px;
  overflow: auto hidden;
}

.waveControls {
  margin-top: 10px;
  display: flex;
  justify-content: center;
}

.waveControls .btn {
  margin: 10px;
}

.flex-container {
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
  -webkit-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
  -webkit-flex-wrap: nowrap;
  -ms-flex-wrap: nowrap;
  flex-wrap: nowrap;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
  -webkit-align-content: center;
  -ms-flex-line-pack: center;
  align-content: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
}

#loginContainer {
  display: flex;
  width: 100%;
  height: 100vh;
}

#loginContainer > div {
  flex-grow: 1;
}

#loginPanel {
  display: flex;
  flex-direction: column;
  justify-content: center;
}
#loginButton {
  display: block;
  margin: 0 auto;
  flex-shrink: 1;
  font-size: 13px;
  padding: 0.4rem 1rem;
}

#softphoneContainer {
  overflow: hidden;
}

#ccpPanel {
  -webkit-order: 1;
  -ms-flex-order: 1;
  order: 1;
  -webkit-flex: 1 1 auto;
  -ms-flex: 1 1 auto;
  flex: 1 1 auto;
  -webkit-align-self: stretch;
  -ms-flex-item-align: stretch;
  align-self: stretch;
}

#outerWrapper {
  justify-content: center;
  text-align: center;
  vertical-align: middle;
  align-items: center;
  margin: 0 auto;
  border: none;
  padding: 0;
  height: 100vh;
}

#ccpContainer {
  width: 1px;
  height: 1px;
  justify-content: center;
  align-items: center;
  border: none;
}

.hidden {
  display: none;
}

.popover-content {
  overflow-y: auto;
  overflow-x: hidden;
  flex: 1;
}

.tableIcon {
  cursor: pointer;
}

/*========== Theme Default ==========*/

.helperContainer {
  /*display: flex;
    flex-direction: column;
    flex-wrap: nowrap;
    justify-content: flex-start;
    align-content: stretch;
    align-items: flex-start;
     */
}

.helperItem {
  order: 0;
  flex: 1 1 auto;
  align-self: auto;
}
