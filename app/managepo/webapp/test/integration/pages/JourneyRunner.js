sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"anubhav/po/managepo/test/integration/pages/POsList",
	"anubhav/po/managepo/test/integration/pages/POsObjectPage",
	"anubhav/po/managepo/test/integration/pages/PurchaseOrderItemsObjectPage"
], function (JourneyRunner, POsList, POsObjectPage, PurchaseOrderItemsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('anubhav/po/managepo') + '/test/flp.html#app-preview',
        pages: {
			onThePOsList: POsList,
			onThePOsObjectPage: POsObjectPage,
			onThePurchaseOrderItemsObjectPage: PurchaseOrderItemsObjectPage
        },
        async: true
    });

    return runner;
});

