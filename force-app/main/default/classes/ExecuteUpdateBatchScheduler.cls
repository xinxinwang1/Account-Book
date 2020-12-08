/**************************************************************************************************
 * Name           : ExecuteUpdateBatchScheduler 
 * Object         :
 * Requirement    : Schedulable job
 * Target         :
 * Refer classes  :
 * Author         : happiness(happiness@accenture.com)
 * Create Date    : 2020-12-01
 * Modify History : 2020-12-08
 **************************************************************************************************/
Public with sharing Class ExecuteUpdateBatchScheduler {
    Public ExecuteUpdateBatchScheduler() {

    }
     /*
    *  Name :Execute
    *  Type :Void  
    *  Description :implements the Schedulable interface for a batch Apex class called UpdateAccountingEntryBatch 
    */
    Public Void Execute ( SchedulableContext SC ) {
        UpdateAccountingEntryBatch  UpdateAccountingEntryLocked = new UpdateAccountingEntryBatch(); 
        database.executebatch ( UpdateAccountingEntryLocked ) ;
    }
}