/* General CSS */

html {
    background-color: #F0F1F2;
}

html, body {
    height: 100%;
    background-color: #F0F1F2;
}

.docusign-container {
    background-color: #F0F1F2;
    font-family: sans-serif;
    color: #696E71;
    font-size: 14px;
}

.docusign-container hr {
    border: solid #CFD4D9;
    border-width: 1px 0 0;
    clear: both;
    height: 0;
}

.docusign-container h1 {
    font-size: 22px;
    font-weight: normal;
}

.docusign-container p {
    font-size: 16px;
    color: #666;
    line-height: 20px;
}

.docusign-container a {
    color: #2A94D6;
    text-decoration: none;
}

.docusign-container ul li {
    margin-left: 0px;
}

.header {
    position: relative;
    z-index: 5;
    background-color: #2a94d6;
    height: 42px;
    text-align: center;
    overflow: hidden;
    vertical-align: top;
}

/* Document Styles */

.docusign-container .ds-section-header {
    height: 45px;
    background-color: #e8eaeb;
    padding-left: 20px;
    padding-top: 25px;
    position: relative;
    border-bottom: 1px solid #CFD4D9;
    font-size: 16px;
    text-transform: uppercase;
    color: #3c3d3e;
}

.docusign-container .ds-section-header .button {
    border: none;
    position: absolute;
    text-decoration: none;
    text-align: center;
    -webkit-appearance: none;
    -webkit-border-radius: 0;
    display: block;
    padding: 7px 10px 7px 10px;
    font-family: sans-serif;
    background-color: #2A94D4;
    background-image: none;
    margin: 16px 5px;
    border-radius: 5px;
    font-size: 15px;
    font-weight: bold;
    color: #fff;
    top: 0;
    right: 8px;
    width: auto;
}

.docusign-container .ds-section-header .button.add-signer.secondary img {
    width: 14px;
}

.sub-text {
    display: block;
    color: #696e71;
}

.docusign-container .ds-form-list {
    margin: 0;
    padding: 0;
}

.docusign-container .ds-form-list li {
    list-style: none;
    border-bottom: 1px solid #CFD4D9;
    padding: 15px 20px;
    min-height: 45px;
    color: #3c3d3e;
}

.docusign-container .ds-form-list li a.move {
    display: block;
    float: right;
    margin-top: 7px;
    margin-right: 16px;
    width: 12px;
    height: 31px;
    background: url(dsfs_m_Grab) no-repeat;
    background: var(--m-grab) no-repeat;
}

.docusign-container .ds-form-list li > label {
    display: block;
    height: 40px;
}

.docusign-container .ds-form-list li .ds-doc-icon {
    display: block;
    float: left;
    height: 40px;
    margin-top: 2px;
    margin-right: 12px;
}

.docusign-container .ds-form-list li span {
    display: block;
    float: left;
    height: 45px;
    line-height: 22px;
    font-size: 14px;
}

.docusign-container .ds-form-list li input[type="checkbox"] {
    -webkit-appearance: none;
    float: left;
    background: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
    width: 25px;
    height: 25px;
    margin-top: 10px;
    margin-right: 16px;
    outline: none;
}

.docusign-container .ds-form-list li input[type="checkbox"]:checked {
    background: #2093D9;
    border-color: #2093D9;
    position: relative;
}

.docusign-container .ds-form-list li input[type="checkbox"]:checked:after {
    content: url(dsfs_m_Check1);
    content: var(--m-check1);
    display: block;
    position: absolute;
    top: 3px;
    left: 2px;
}

.docusign-container .ds-form-list li .sign-how {
    display: block;
    padding: 10px 10px 10px 0px;
    height: 25px;
}

.docusign-container .ds-form-list li .sign-how label {
    padding: 10px 6px 0 0;
    height: 25px;
    line-height: 1;
    display: block;
    float: left;
}

.docusign-container .ds-form-list li .sign-how span {
    display: inline-block;
    height: 25px;
    line-height: 34px;
    padding-left: 12px;
}

.docusign-container .ds-form-list li .sign-how label input[type="radio"] {
    -webkit-appearance: none;
    width: 26px;
    height: 26px;
    background: #fff;
    border: 1px solid #ccc;
    border-radius: 50px;
    outline: none;
    float: left;
    position: relative;
}

.docusign-container .ds-form-list li .sign-how label input[type="radio"]:checked {
    background: #2093D9;
    border-color: #2093D9;
}

.docusign-container .ds-form-list li .sign-how label input[type="radio"]:checked:after {
    content: "";
    display: block;
    width: 12px;
    height: 12px;
    background: #fff;
    position: absolute;
    left: 6px;
    top: 6px;
    border-radius: 15px;
}

/* Alert Message */

.docusign-container ul[role="alert"] {
    padding: 0 20px;
}

.docusign-container ul[role="alert"] li {
    border-radius: 2px;
    background-color: #D7DBDD;
    border-color: #dfe0e1;
    padding: 10px 20px 10px 20px;
    margin: 0 0 20px 0;
    font-size: 15px;
    list-style-type: none;
    -webkit-margin-before: 0 !important;
    color: #696E71;
    line-height: 10px;
}

/* Button Styles */

.docusign-container .button {
    border: none;
    position: relative;
    text-decoration: none;
    text-align: center;
    -webkit-appearance: none;
    -webkit-border-radius: 0;
    display: block;
    padding: 12px 18px 12px 18px;
    font-size: 13px;
    font-family: sans-serif;
    background-color: #2A94D4;
    background-image: none;
    margin: 20px 0px;
    border-radius: 5px;
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    width: 100%;
}

.button.inactive {
    opacity: 0.5;
}

.docusign-container .button.secondary {
    background-color: #fff;
    color: #5c7995;
    border: 1px solid #dfe0e1;
}

/* Form Styles */

.docusign-container select {
    -webkit-appearance: none !important;
    border-radius: 2px;
    background-color: #fff;
    background-image: url("Triangle");
    background-position: 310px center;
    background-repeat: no-repeat;
    border: 1px solid #cccccc;
    padding: 0 8px 0 8px;
    font-size: 13px;
    color: rgba(0, 0, 0, 0.75);
    line-height: normal;
    height: 2.05556rem;
    width: 330px;
    margin: 10px 0 20px 0;
}

.docusign-container input[type="text"] {
    width: 330px;
    height: 2.1125rem;
    background-color: #E8EAEB;
}

.docusign-container input[type="password"] {
    width: 280px;
    height: 2.1125rem;
    background-color: #E8EAEB;
}

.docusign-container input[focus],
.docusign-container textarea[focus] {
    border-color: #999999;
    outline: none;
    background-color: #fff;
}

.docusign-container input[disabled],
.docusign-container textarea[disabled] {
    background-color: #dddddd;
}

.docusign-container input[type="submit"] {
    -webkit-appearance: none;
}

.docusign-container input[type="text"], .docusign-container input[type="password"] {
    -webkit-appearance: none;
    background-color: white;
    font-family: inherit;
    border: 1px solid #cccccc;
    border-radius: 2px;
    color: rgba(0, 0, 0, 0.75);
    display: block;
    font-size: 0.875rem;
    margin: .5rem 0 1rem 0;
    padding: 0.5rem;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    transition: box-shadow 0.45s, border-color 0.45s ease-in-out;
}

.docusign-container input[type="checkbox"] + label, input[type="radio"] + label {
    display: inline-block;
    vertical-align: baseline;
    margin-bottom: 0;
}

.docusign-container #dsUpdatePassword {
    padding: 20px 20px;
}

.docusign-container #dsInstall {
    border-radius: 5px;
    padding: 20px 20px 20px 20px;
    position: relative;
    font-size: 8px;
}

.docusign-container #dsInstall .button {
    padding: 20px 10px 20px 10px;
}

.docusign-container #dsAlert {
    padding: 0px;
}

.docusign-container #dsEditEnvelope #dsBtn {
    padding: 10px 20px 10px 20px;
    background-color: #e8eaeb;
}

/* Loading Styles */

.docusign-loading {
    background-color: #fff;
    padding: 15px 0px 10px 0px;
}

.docusign-loading .logo {
    width: 200px;
    display: block;
    margin: 0 auto;
}

.docusign-loading .progress {
    width: 32px;
    display: block;
    margin: 0 auto;
}

.docusign-loading .prepare {
    text-align: center;
}

#dsMobileLoading {
    width: 20px;
    height: 20px;
    display: block;
    margin: 0 auto;
}

/* Add Signer Modal Styles */

#dsAddSignerModal {
    background-color: #fff;
    padding: 10px 20px 10px 20px;
}

#dsAddSignerModal input[type="text"] {
    width: 100%;
    height: 2.1125rem;
    background-color: #fff;
}

/* Sorting Styles */

.ui-placeholder {
    background-color: #e8eaeb;
    border: solid #e8eaeb;
}

#ds-dialog {
    border-style: none;
    padding: 0;
    height: 100%;
    width: 100%;
}

#ds-iframe-container {
    width: 100%;
    height: 100%;
    border-style: none;
    background-color: #F0F1F2;
    padding: 0;
    overflow: scroll;
    -webkit-overflow-scrolling: touch;
}

#ds-iframe {
    border-style: none;
    padding: 0;
    width: 100%;
    height: 100%;
}
