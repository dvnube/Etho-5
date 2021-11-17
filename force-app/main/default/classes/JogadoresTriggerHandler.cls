public without sharing class JogadoresTriggerHandler {
    public static void beforeUpdate(List<Jogador__c> records, Map<Id, Jogador__c> oldMap) {
        for (Jogador__c jogador : records) { //realiza uma iteração
            beforeUpdate(jogador, oldMap.get(jogador.Id));
        }
    }

    private static beforeUpdate(Jogador__c record, Jogador__c recordOld) {
        if (!jogadorOld.Eliminado__c && jogador.Eliminado__c) { //verifica 2 condições
            jogador.DataMorte__c = System.now(); //atribuição
        }
    }
}
