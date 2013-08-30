/** SpagoBI, the Open Source Business Intelligence suite

 * Copyright (C) 2012 Engineering Ingegneria Informatica S.p.A. - SpagoBI Competency Center
 * This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0, without the "Incompatible With Secondary Licenses" notice. 
 * If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/. **/
 
 Ext.ns("Sbi.locale");
Sbi.locale.ln = Sbi.locale.ln || new Array();


Sbi.locale.formats = {
		/*
		number: {
			decimalSeparator: '.',
			decimalPrecision: 2,
			groupingSeparator: ',',
			groupingSize: 3,
			//currencySymbol: '$',
			nullValue: ''
		},
		*/
		
		float: {
			decimalSeparator: '.',
			decimalPrecision: 2,
			groupingSeparator: ',',
			groupingSize: 3,
			//currencySymbol: '$',
			nullValue: ''
		},
		int: {
			decimalSeparator: '.',
			decimalPrecision: 0,
			groupingSeparator: ',',
			groupingSize: 3,
			//currencySymbol: '$',
			nullValue: ''
		},
		
		string: {
			trim: true,
    		maxLength: null,
    		ellipsis: true,
    		changeCase: null, // null | 'capitalize' | 'uppercase' | 'lowercase'
    		//prefix: '',
    		//suffix: '',
    		nullValue: ''
		},
		
		date: {
			dateFormat: 'm/Y/d',
    		nullValue: ''
		},
		
		boolean: {
			trueSymbol: 'true',
    		falseSymbol: 'false',
    		nullValue: ''
		}
};

//===================================================================
// CONTROL PANEL
//===================================================================
Sbi.locale.ln['sbi.geo.controlpanel.title'] = 'Control Panel';
Sbi.locale.ln['sbi.geo.layerpanel.title'] = 'Layers';

Sbi.locale.ln['sbi.geo.analysispanel.title'] = 'Analysis';
Sbi.locale.ln['sbi.geo.analysispanel.addindicators'] = 'Add indicators';
Sbi.locale.ln['sbi.geo.analysispanel.indicator'] = 'Indicator';
Sbi.locale.ln['sbi.geo.analysispanel.emptytext'] = 	'Select an indicator';
Sbi.locale.ln['sbi.geo.analysispanel.method'] = 'Method';
Sbi.locale.ln['sbi.geo.analysispanel.classes'] = 'Number of classes';
Sbi.locale.ln['sbi.geo.analysispanel.fromcolor'] = 'From color';
Sbi.locale.ln['sbi.geo.analysispanel.tocolor'] = 'To color';
Sbi.locale.ln['sbi.geo.analysispanel.filter.default'] = 'Set Default';
Sbi.locale.ln['sbi.geo.analysispanel.filter.default.ok'] = 'Default values correctly set';

	

Sbi.locale.ln['sbi.geo.legendpanel.title'] = 'Legend';
Sbi.locale.ln['sbi.geo.earthpanel.title'] = '3D Navigation';





//===================================================================
// MAP PANEL
//===================================================================
Sbi.locale.ln['sbi.geo.mappanel.title'] = 'Map';
