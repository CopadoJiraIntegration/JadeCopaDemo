// You must have an AWS account to use the Amazon Connect CTI Adapter.
// Downloading and/or using the Amazon Connect CTI Adapter is subject to the terms of the AWS Customer Agreement,
// AWS Service Terms, and AWS Privacy Notice.
//
// © 2017, Amazon Web Services, Inc. or its affiliates. All rights reserved.
//
// NOTE:  Other license terms may apply to certain, identified software components
// contained within or distributed with the Amazon Connect CTI Adapter if such terms are
// included in the LibPhoneNumber-js and Salesforce Open CTI. For such identified components,
// such other license terms will then apply in lieu of the terms above.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
'use strict';

(function (ac) {
    if (ac.Utils === undefined) {
        ac.Utils = {};
    }

    let _ctiAttributeFeature = null;
    let _attributesEnabled = true;
    let _showAttributesIfEmpty = true;
    let _showAllAttributes = false;

    let _attributes = null;
    let _attributesCount = 0;

    // connect-streams events can sometimes fire "concurrently," so we need
    // to make sure we don't display the same attribute multiple times
    let _displayedAttributes = new Set();

    /**
     *
     * @private
     *
     * @type {{HYPERLINK: string, TEXT: string}}
     */
    const ATTRIBUTE_TYPES = {
        TEXT: 'text',
        HYPERLINK: 'hyperlink',
    };

    /**
     *
     * @private
     *
     * @type {{VALUE: string, KEY_VALUE: string, KEY: string}}
     */
    const ATTRIBUTE_DISPLAYS = {
        KEY_VALUE: 'key-value',
        KEY: 'key',
        VALUE: 'value',
    };

    /**
     *
     * @private
     *
     * @type {number}
     */
    const MAX_WIDTH_CONSOLE = 160;

    /**
     * @class ac.Utils.CtiAttributes
     *
     * @description
     * The ac.Utils.CtiAttributes class provides helper methods for controlling cti attribute display.
     */
    ac.Utils.CtiAttributes = {
        /**
         * Initializes the ac.Utils.CtiAttibutes utility
         *
         * @private
         */
        init: async () => {
            _ctiAttributeFeature = await ac.Utils.Common.getFeatureByName(
                'FEATURE_CTI_ATTRIBUTES'
            );
            _attributesEnabled = ac.Utils.Common.getFeatureSetting(
                _ctiAttributeFeature,
                'AttributesEnabled',
                Boolean,
                true
            );
            _showAttributesIfEmpty = ac.Utils.Common.getFeatureSetting(
                _ctiAttributeFeature,
                'ShowAttributesIfEmpty',
                Boolean,
                true
            );
            _showAllAttributes = ac.Utils.Common.getFeatureSetting(
                _ctiAttributeFeature,
                'ShowAllAttributes',
                Boolean,
                false
            );
        },

        /**
         * Populate the attributes and links tables with cti data
         *
         * @private
         *
         * @param {String} contactId
         */
        populate: async (contactId) => {
            await _populate(contactId);

            if (
                !_ctiAttributeFeature ||
                (_ctiAttributeFeature && _ctiAttributeFeature.active === true)
            ) {
                if (
                    _showAttributesIfEmpty === false &&
                    _attributesCount === 0
                ) {
                    _setCtiAttributesContainerVisible(false);
                } else {
                    _setCtiAttributesContainerVisible(true);
                }
            }
        },

        /**
         * Clear the attributes and links tables
         *
         * @private
         */
        depopulate: () => {
            _depopulate();
            _setCtiAttributesContainerVisible(false);
        },

        showCtiAttributesContainer: () => {
            _setCtiAttributesContainerVisible(true);
        },

        hideCtiAttributesContainer: () => {
            _setCtiAttributesContainerVisible(false);
        },
    };

    /**
     *
     * @private
     */
    const _depopulate = () => {
        _attributes = null;
        _attributesCount = 0;

        _displayedAttributes.clear();
        _setCtiAttributesContainerVisible(false);
        $(
            `${ac.Utils.Common.getDomElements().ATTRIBUTES_TABLE} > tbody`
        ).empty();
    };

    const _setCtiAttributesContainerVisible = (state) => {
        if (state === true) {
            $(
                ac.Utils.Common.getDomElements().ATTRIBUTES_CONTAINER
            ).removeClass('slds-hide');
            $(ac.Utils.Common.getDomElements().ATTRIBUTES_CONTAINER).addClass(
                'slds-show'
            );
        } else {
            $(
                ac.Utils.Common.getDomElements().ATTRIBUTES_CONTAINER
            ).removeClass('slds-show');
            $(ac.Utils.Common.getDomElements().ATTRIBUTES_CONTAINER).addClass(
                'slds-hide'
            );
        }
    };

    /**
     *
     * @private
     *
     * @param {String} contactId
     */
    const _populate = async (contactId) => {
        let contact = ac.Utils.Common.getProperty({
            key: `contacts.${contactId}`,
            defaultValue: null,
        });

        if (contact === null || !contact.isInbound) {
            return;
        }

        _depopulate();

        _attributes = contact.attributes;

        let ctiAttributes = [];

        if (!_showAllAttributes) {
            ctiAttributes = await _getCtiAttributes();

            ctiAttributes.forEach((item) => {
                addNewRow(item);
            });
        } else {
            Object.keys(_attributes).forEach((key) => {
                let item = {
                    Name: key,
                };

                let pagePrefix = ac.Utils.Salesforce.getNamespacePagePrefix();

                item[`${pagePrefix}Label__c`] = key;
                item[`${pagePrefix}Type__c`] = 'Text';
                item[`${pagePrefix}Display__c`] = 'Key-Value';
                item[`${pagePrefix}Format__c`] = `{{${key}}}`;
                item[`${pagePrefix}Active__c`] = true;

                addNewRow(item);
            });
        }

        $('.clipboard').click((event) => {
            navigator.permissions
                .query({ name: 'clipboard-write' })
                .then((result) => {
                    if (
                        result.state === 'granted' ||
                        result.state === 'prompt'
                    ) {
                        const value = event.currentTarget.getAttribute(
                            'data-clipboard-text'
                        );

                        navigator.clipboard.writeText(value).then(
                            () => {
                                ac.Utils.Log.info({
                                    message: `Copied [${value}] to the clipboard.`,
                                });
                            },
                            () => {
                                ac.Utils.Log.info({
                                    message: `Failed to copy [${value}] to the clipboard.`,
                                });
                            }
                        );
                    } else {
                        ac.Utils.Log.info({
                            message: `Clipboard access denied [${result.state}].`,
                        });
                    }
                });
        });
    };

    const addNewRow = (item) => {
        if (_displayedAttributes.has(item.Name)) return;
        _displayedAttributes.add(item.Name);
        let table = $('#attributesTable > tbody');
        let display = ac.Utils.Salesforce.getValueWithNamespace(
            item,
            'Display__c'
        );
        let style = ac.Utils.Salesforce.getValueWithNamespace(item, 'Style__c');
        let formattedItem = format(item);

        _attributesCount++;

        let tr = $('<tr>');

        if (style) {
            tr.attr('style', style);
        }

        if (
            display.toUpperCase() === ATTRIBUTE_DISPLAYS.KEY_VALUE.toUpperCase()
        ) {
            tr.append(createColumn(item, formattedItem, true, false));
            tr.append(createColumn(item, formattedItem, false, false));
            tr.append(createColumn(item, formattedItem, false, true));
        }

        if (
            display.toUpperCase() === ATTRIBUTE_DISPLAYS.VALUE.toUpperCase() ||
            display.toUpperCase() === ATTRIBUTE_DISPLAYS.KEY.toUpperCase()
        ) {
            let isKey =
                display.toUpperCase() === ATTRIBUTE_DISPLAYS.KEY.toUpperCase();
            tr.append(createColumn(item, formattedItem, isKey, false));
            tr.append(createColumn(item, formattedItem, isKey, true));
        }

        table && table.append(tr);
    };

    const createColumn = (item, formattedItem, isLabel, isClipboard) => {
        let style = ac.Utils.Salesforce.getValueWithNamespace(item, 'Style__c');
        let label = ac.Utils.Salesforce.getValueWithNamespace(item, 'Label__c');
        let display = ac.Utils.Salesforce.getValueWithNamespace(
            item,
            'Display__c'
        );

        let td = $('<td>');
        td.attr('style', style);
        td.attr('data-label', isLabel ? label : formattedItem);

        if (
            display.toUpperCase() !==
                ATTRIBUTE_DISPLAYS.KEY_VALUE.toUpperCase() &&
            !isClipboard
        ) {
            td.attr('colspan', 2);
        }

        if (!isLabel) {
            if (isClipboard) {
                td.attr('data-clipboard-text', formattedItem);
                td.css({ 'max-width': '20px', 'text-align': 'right' });
                td.html(getClipboardIcon(formattedItem));
            } else {
                td.html(createColumedDiv(item, formattedItem, isLabel));
                td.css({ 'max-width': MAX_WIDTH_CONSOLE / 2 + 'px' });
            }
        } else {
            if (isClipboard) {
                td.attr('data-clipboard-text', formattedItem);
                td.css({ 'max-width': '20px', 'text-align': 'right' });
                td.html(getClipboardIcon(formattedItem));
            } else {
                td.html(createColumedDiv(item, formattedItem, isLabel));
                td.css({ 'max-width': MAX_WIDTH_CONSOLE / 2 + 'px' });
            }
        }

        return td;
    };

    const getClipboardIcon = (value) => {
        return `
            <span
                class="slds-icon_container tableIcon clipboard"
                data-clipboard-text="${value}">
                <svg
                    aria-hidden="true"
                    class="slds-icon slds-icon_x-small slds-icon-text-default"
                    xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink">
                    <use
                        xlink:href="/apexpages/slds/latest/assets/icons/utility-sprite/svg/symbols.svg#copy_to_clipboard"></use>
                </svg>
                <span class="slds-assistive-text">Copy to clipboard</span>
            </span>
            `;
    };

    const createColumedDiv = (item, formattedItem, isLabel) => {
        let label = ac.Utils.Salesforce.getValueWithNamespace(item, 'Label__c');
        let type = ac.Utils.Salesforce.getValueWithNamespace(item, 'Type__c');
        let display = ac.Utils.Salesforce.getValueWithNamespace(
            item,
            'Display__c'
        );

        let div = $('<div>');
        div.addClass('slds-truncate');
        div.attr('title', isLabel ? label : formattedItem);
        //div.css({ 'max-width': MAX_WIDTH_CONSOLE + 'px' });

        if (type.toUpperCase() === ATTRIBUTE_TYPES.TEXT.toUpperCase()) {
            div.text(isLabel ? label : formattedItem);
        }

        if (type.toUpperCase() === ATTRIBUTE_TYPES.HYPERLINK.toUpperCase()) {
            let link;

            if (
                display.toUpperCase() ===
                ATTRIBUTE_DISPLAYS.KEY_VALUE.toUpperCase()
            ) {
                if (isLabel) {
                    div.text(label);
                } else {
                    link = $('<a>');
                    link.text(formattedItem);
                    link.attr('href', formattedItem);
                    link.attr('target', 'new');

                    div.append(link);
                }
            } else {
                link = $('<a>');
                link.text(isLabel ? label : formattedItem);
                link.attr('href', formattedItem);
                link.attr('target', 'new');

                div.append(link);
            }
        }

        return div;
    };

    const format = (item) => {
        let format = '';
        let defaultValue = '';

        try {
            format = ac.Utils.Salesforce.getValueWithNamespace(
                item,
                'Format__c',
                ''
            );
            defaultValue = ac.Utils.Salesforce.getValueWithNamespace(
                item,
                'DefaultValue__c',
                ''
            );

            Object.keys(_attributes).forEach((key) => {
                if (
                    format.includes('{{' + key + '}}') &&
                    _attributes.hasOwnProperty(key)
                ) {
                    format = format.replace(
                        new RegExp('{{' + key + '}}', 'g'),
                        _attributes[key].value
                    );
                }
            });
        } catch (err) {
            ac.Utils.Log.error({ message: 'format error' });
        }

        if (format.includes('{{') && format.includes('}}')) {
            return defaultValue;
        }

        return format;
    };

    const _getCtiAttributes = () =>
        new Promise((resolve, reject) => {
            let ctiAdapter = ac.Utils.Common.getProperty({ key: 'ctiAdapter' });

            try {
                if (ctiAdapter) {
                    Visualforce.remoting.Manager.invokeAction(
                        ac.Utils.Salesforce.getNamespaceClassPrefix() +
                            'AC_Utils.getCtiAttributes',
                        ctiAdapter.Id,
                        (response, event) => {
                            if (event && event.status && response) {
                                resolve(ac.Utils.Common.buildResolve(response));
                            } else {
                                reject(
                                    ac.Utils.Common.buildReject(
                                        '_getCtiAttributes error',
                                        response.errors
                                    )
                                );
                            }
                        }
                    );
                }
            } catch (err) {
                reject(
                    ac.Utils.Common.buildReject('_getCtiAttributes error', err)
                );
            }
        });
})(this);
