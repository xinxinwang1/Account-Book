/**************************************************************************************************
 * Name           : UpdateAccountingEntryBatch
 * Object         :
 * Requirement    : batch job
 * Target         :
 * Refer classes  :
 * Author         : happiness(happiness@accenture.com)
 * Create Date    : 2020-12-01
 * Modify History : 2020-12-08
 **************************************************************************************************/
Public with sharing Class UpdateAccountingEntryBatch Implements Database.Batchable<sObject> {
    List<Accounting_Entry__c> AccountingEntry = new List<Accounting_Entry__c>() ;
    String soql = '';
    /*
    *  Name :UpdateAccountingEntryBatch
    *  Type :
    *  Description :query data
    */
    Public UpdateAccountingEntryBatch( ) {
        this.soql = 'SELECT Locked__c FROM Accounting_Entry__c where Occurred_Date__c < LAST_N_MONTHS:1';
        }
    /*
    *  Name :start
    *  Type :Database.QueryLocator
    *  Description :collect the records of Locked__c in the Accounting_Entry__c object which the Occurred_Date__c happened more than a month
    */
    Public Database.QueryLocator start ( Database.BatchableContext bc ) {
        UpdateAccountingEntryBatch uaeb = new UpdateAccountingEntryBatch ( );
        return Database.getQueryLocator ( soql );
        }
    /*
    *  Name :execute 
    *  Type :void 
    *  Description :Update the record that matches the above method to true
    */
    Public Void Execute ( Database.BatchableContext bc, List<Accounting_Entry__c> scope ) {
        for ( Accounting_Entry__c ae:scope ) {
            ae.Locked__c = true;
            AccountingEntry.add(ae);
        }
        Update scope;
    }
    /*
    *  Name :finish 
    *  Type :void 
    *  Description :
    */
    Public Void Finish ( Database.BatchableContext bc ) {
    }
}