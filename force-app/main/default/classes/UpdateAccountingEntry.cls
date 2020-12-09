/**************************************************************************************************
 * Name           : UpdateAccountingEntry
 * Object         : Accounting_Entry__c
 * Requirement    : Update Accounting_Entry__c
 * Target         :
 * Refer classes  :
 * Author         : happiness(happiness@accenture.com)
 * Create Date    : 2020-12-03
 * Modify History : 2020-12-08
 **************************************************************************************************/
Public with sharing Class UpdateAccountingEntry {
    /*
    *  Name : UpdateAccountingEntry
    *  Type : 
    *  Description : Traversal determines if Occurred_Date__c field in Accounting_Entry__c object in more than one month
    */
    Public UpdateAccountingEntry ( List<Accounting_Entry__c> UpdateAccountingEntryList ) {
        for ( Accounting_Entry__c a : UpdateAccountingEntryList ) {
            if ( a.Occurred_Date__c < System.Now().addMonths(-1) ){
                a.Locked__c = faulse;
            }  
        }
       
    }
}