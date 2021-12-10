public without sharing class CandidatosCEPAlteradoBatchable implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator(CandidatosSelector.getQueryLocatorCEPBatchable());
    }
  
    //TODO: atualizar o campo CEPAlterado__c para FALSE
    public void execute(Database.BatchableContext BC, List<Candidato__c> scope) {
        for (Candidato__c record : scope) {
            CustomNotification.notifyUsers(record);
        }
    }
  
    public void finish(Database.BatchableContext BC) {
    }
}