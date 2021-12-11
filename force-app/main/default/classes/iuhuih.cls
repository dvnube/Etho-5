public with sharing class iuhuih {
    public iuhuih() {

        Map<Schema.SObjectField, Object> fieldsValuesMap = new Map<Schema.SObjectField, Object> {
            Account.Name => 'Name',
            Account.BillingState => 'RJ'
        };

        Map<Schema.SObjectField, Object> fieldsValuesMap = new Map<Schema.SObjectField, Object> {
            Candidato__c.CEPAlterado__c => false,
            Candidato__c.DataUltimaBatch__c => System.today()
        };

        Map<Schema.SObjectField, Object> fieldsValuesMap = new Map<Schema.SObjectField, Object> {
            Round__c.Status__c => 'Finalizado',
            Candidato__c.Name => 'soifjf'
        };

        

        Database.executeBatch(new UpdateFieldsBatchable(query, fieldsValuesMap));

    }
}
