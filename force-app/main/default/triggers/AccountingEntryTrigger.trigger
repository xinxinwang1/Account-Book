/**************************************************************************************************
 * Name           : AccountingEntryTrigger
 * Object         : Accounting_Entry__c
 * Requirement    : Update Accounting_Entry__c
 * Target         :
 * Refer classes  :
 * Author         : happiness(happiness@accenture.com)
 * Create Date    : 2020-12-03
 * Modify History : 2020-12-08
 **************************************************************************************************/
trigger AccountingEntryTrigger on Accounting_Entry__c ( before insert,before update ) {
    List<Accounting_Entry__c > ae = new List<Accounting_Entry__c > ( );
    // If a record is instered into an object named Accounting_Entry__c
    if ( Trigger.isBefore && Trigger.isInsert ) {
        UpdateAccountingEntry uae = new UpdateAccountingEntry ( trigger.new );
    }
    // If a record in the Accounting_Entry table is updated
    if ( Trigger.isBefore && Trigger.isUpdate ) {
        UpdateAccountingEntry uae = new UpdateAccountingEntry ( trigger.new );
    }
}