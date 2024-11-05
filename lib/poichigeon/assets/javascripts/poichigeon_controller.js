import { Controller } from "@hotwired/stimulus"

console.log("Poichigeon JavaScript loaded!");
export default class extends Controller {
  connect(){
    const eventSource = new EventSource("/poichigeon")

    eventSource.onmessage = (event) => {
      console.log('notif recu : ', event.data);
    };

    eventSource.onerror = (error) => {
      console.error('Erreur SSE: ', error);
      eventSource.close();
    };
  }
}