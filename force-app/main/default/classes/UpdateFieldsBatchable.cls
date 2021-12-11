public without sharing class UpdateFieldsBatchable implements Database.Batchable<sObject>, Database.Stateful {

    
    
    public Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator(string);
    }
  
    public void execute(Database.BatchableContext BC, List<SObject> scope) {
        for (SObject record : scope) {
            //update fields
        }


    }
  
    public void finish(Database.BatchableContext BC) {
    }
}