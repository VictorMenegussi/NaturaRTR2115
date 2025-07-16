sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'natura/frontend/apps/parametrosfi/test/integration/FirstJourney',
		'natura/frontend/apps/parametrosfi/test/integration/pages/ParametersList',
		'natura/frontend/apps/parametrosfi/test/integration/pages/ParametersObjectPage'
    ],
    function(JourneyRunner, opaJourney, ParametersList, ParametersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('natura/frontend/apps/parametrosfi') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheParametersList: ParametersList,
					onTheParametersObjectPage: ParametersObjectPage
                }
            },
            opaJourney.run
        );
    }
);