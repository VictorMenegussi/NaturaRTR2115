sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'natura.frontend.apps.parametrosfi',
            componentId: 'ParametersList',
            contextPath: '/Parameters'
        },
        CustomPageDefinitions
    );
});