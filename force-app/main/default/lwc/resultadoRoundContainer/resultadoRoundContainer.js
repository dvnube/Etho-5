import { LightningElement, api } from "lwc";

export default class ResultadoRoundContainer extends LightningElement {
  @api maioresAssassinos;

  get textoMaioresAssassinos() {
    let aux;
    if (this.maioresAssassinos) {
      if (this.maioresAssassinos.length == 1) {
        aux = "Maior assassino(a): ";
      } else {
        aux = "Maiores assassinos(as): ";
      }

      this.maioresAssassinos.forEach(
        (assassino) => (aux += assassino.Candidato__r.Name + ", ")
      );

      aux = aux.substring(0, aux.length - 2);
    }

    return aux;
  }
}
