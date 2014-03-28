/** SpagoBI, the Open Source Business Intelligence suite

 * Copyright (C) 2012 Engineering Ingegneria Informatica S.p.A. - SpagoBI Competency Center
 * This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0, without the "Incompatible With Secondary Licenses" notice. 
 * If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/. **/

Ext.define('Sbi.data.AssociationEditorWizardPanel', {
		extend: 'Sbi.widgets.WizardPanel'
	
	, config:{ 
		/**
	     * @property {String[]} storeList
	     * The list of the labels of used datasets. It is used only for the initialization of #datasetsBrowserPage
	     * After the inizialization it is removed. In order to get this list after initialization
	     * use #getDatasetBrowserPage method as shown in the following example:
	     * <pre><code>wizardPanel.getDatasetBrowserPage().getUsedDatasets();</code></pre>
	     */
		storeList: null
	  , associationsList: null
	  , frame: false
	  , border: false
	}

	/**
	 * @property {Sbi.cockpit.editor.association.AssociationshipEditorPage} associationEditorPage
	 * The page that manages association editing
	 */
	, associationEditorPage: null
	
	, constructor : function(config) {
		Sbi.trace("[AssociationEditorWizardPanel.constructor]: IN");
		this.initConfig(config);
		this.callParent(config);
		Sbi.trace("[AssociationEditorWizardPanel.constructor]: OUT");
	}

	
	// =================================================================================================================
	// METHODS
	// =================================================================================================================
	
	// -----------------------------------------------------------------------------------------------------------------
    // public methods
	// -----------------------------------------------------------------------------------------------------------------

	, getAssociationEditorPage: function() {
		return this.associationEditorPage;
	}
	
	// -----------------------------------------------------------------------------------------------------------------
    // init methods
	// -----------------------------------------------------------------------------------------------------------------

	, initPages: function(){
		Sbi.trace("[AssociationEditorWizardPanel.initPages]: IN");
		
		this.pages = new Array();
		
		this.initAssociationEditorPage();
		this.pages.push(this.associationEditorPage);

		Sbi.trace("[AssociationEditorWizardPanel.initPages]: association editor page succesfully adedd");
		
		Sbi.trace("[AssociationEditorWizardPanel.initPages]: OUT");

		return this.pages;
	}
		
	, initButtons: function(){
		Sbi.trace("[AssociationEditorWizardPanel.initButtons]: IN");
		
		this.buttons = new Array();
		
		this.buttons.push('->');
		
		this.buttons.push({
			id: 'submit'
			, hidden: false
	        , text:  LN('sbi.ds.wizard.confirm')
	        , handler: this.onSubmit
	        , scope: this
//	        , disabled: (this.activeItem == 0)?false:true
//	        , disabled: true
	    });
		
		this.buttons.push({
			id: 'cancel'
	        , text:  LN('sbi.ds.wizard.cancel')
	        , handler: this.onCancel
	        , scope: this
	    });
		
		Sbi.trace("[AssociationEditorWizardPanel.initButtons]: association editor buttons succesfully adedd");
		
		Sbi.trace("[AssociationEditorWizardPanel.initButtons]: OUT");
		
		return this.buttons;
	}
	
	, initAssociationEditorPage: function() {
		Sbi.trace("[AssociationEditorWizardPanel.initAssociationEditorPage]: IN");
		this.associationEditorPage = Ext.create('Sbi.data.editor.association.AssociationEditorPage',{
			storeList: this.storeList
		  , associationsList: this.associationsList
		});
		Sbi.trace("[AssociationEditorWizardPanel.initAssociationEditorPage]: IN");
		return this.associationEditorPage;
	}
	

	
	// -----------------------------------------------------------------------------------------------------------------
    // utility methods
	// -----------------------------------------------------------------------------------------------------------------

});
