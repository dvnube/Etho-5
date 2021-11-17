trigger JogadoresTrigger on Jogador__c  (before insert, before update) {

    //Versão 1: MERDA. MUITO MERDA. EXTREMAMENTE MERDA.
    if (Trigger.isBefore) {
        if (Trigger.isUpdate) {
            for (Jogador__c jogador : Trigger.new) {
                Jogador__c jogadorOld = Trigger.oldMap.get(jogador.Id);

                handleMorte(jogador, jogadorOld);
            }
        }
    }

    static void handleMorte(Jogador__c jogador, Jogador__c jogadorOld) {
        if (!jogadorOld.Eliminado__c && jogador.Eliminado__c) {
            jogador.DataMorte__c = System.now();
        }
    }
}