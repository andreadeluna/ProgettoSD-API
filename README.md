# ProgettoSD-API
## Progetto di Sistemi Distribuiti
### Studenti : 
**Nome e Cognome :** Andrea De Luna  
**Matricola :** 313076  
**Nome e Cognome :** Veronica Michelini  
**Matricola :** 317197  
**Nome e Cognome :**
**Matricola :**
### Appello : 
Sessione Estiva 2021/2022, Terzo appello
## Obiettivo
Il progetto consiste nell'implementazione di un'applicazione decentrallizzata (dApp) di votazione, ovvero un'applicazione il cui funzionamento non dipende da punti di controllo o da server centrali, ma funziona sulla base di una rete decentralizzata, in cui glu utenti hanno il pieno controllo del suo funzionamento e possono accedere ai diversi servizi in modo sicuro.  
In particolare, la differenza principale tra un'applicazione di questo tipo e quelle centralizzate è che le dApp girano su una blockchain o un network di computer peer-to-peer (P2P) invece che su un singolo computer.  
L'accettazione o meno delle operazioni effettuate dagli utenti della dApp, è subordinata alla programmazione dello "smart contract", che cerca di garantire che tutti i partecipanti agiscano nel quadro da esso specificato.  
Anche la nostra applicazione di voto quindi, può operare in modo autonomo grazie all'uso di uno smart contract, ovvero codice scritto sulla blockchain
e che quindi una volta implementato non possono essere modificato in modo semplice.  
Nello smart contract realizzato per la nostra applicazione sono presenti :
* Un amministratore (proprietario dell'elezione/amministratore) che ha il compito di distribuire il contratto, autorizza gli elettori a votare ed inserisce nuovi candidati alla lista.
* Degli elettori che possono votare un candidato una volta che il contratto è stato distribuito.
## Creazione di un portafoglio Metamask
Per interagire con la dApp della blockchain di Ethereum abbiamo utilizzato il plug-in per browser MetaMask in quanto funge da ponte tra dApp e browser web grazie web3.js, una libreria che fa parte dello sviluppo ufficiale di Ethereum nata per consentire la creazione di applicazioni web che potessero interagire con la blockchain di Ethereum.  
MetaMask è quindi un portafoglio per Ethereum e uno strumento per interagire con le dApps. Per fare cioò stabilisce un canale di comunicazione tra l'estensione e la dApp in questione.  
Una volta che l'applicazione riconosce la presenza di MetaMask esso viene abilitato ed è possibile eseguire tutte le azioni o gli eventi che consente.  
tutte le azioni che si compiono devono essere pagate in termini di "commissioni di gas" ai minatori, in modo tale che essi possano verificare ed accettare le transazioni che si vogliono effettuare.  
A tale scopo abbiamo scaricato dei "test ethereum" da"https://faucets.chain.link".  
Su Metamask abbiamo utilizzato due account : 
* Account dell'amministratore : colui che sta creando o implementando lo smart contract.
* Account dell'elettore

## Creazione dello smart contract
Come prima cosa è stata definita la licenza e la versione di solidity.  
Il contratto contiene al suo interno :
* La struttura che definisce "Candidato"
  * Nome candidato
  * Numero voti che il candidato ha ottenuto
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996742-881cb5d9-0194-4d04-8cd9-e6d9e6c6ee70.png" width="300" height="100">
</p>
* La struttura che definisce "Elettore"
  * Nome dell'elettore
  * Bolleano per determinare se l'elettore è autorizzato a votare
  * Indice della lista dei candidati che corrisponde alla posizione del candidato che il candidato vuole votare
  * Booleano per verificare se l'elettore ha già votato oppure no
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996745-b35c715b-c97e-4b88-8e6f-883b13630da9.png" width="350" height="150">
</p>
* L'indirizzo del propietario dello smart contract. Questo indirizzo è pubblico in modo che tutti possano vedere chi è il proprietario dello smart contract
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996728-57227b75-ae0b-406b-a54e-d262a6af3685.png" width="300" height="50">
</p>
* Stringa pubblica per il Nome/Titolo della votazione, in modo che tutti possano verificare per quale votazione stanno votando
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996737-b24124bd-6f3e-426e-83c7-fddee4559c28.png" width="350" height=50">
</p>
* Mappatura dell'indirizzo a un elettore; ogni indirizzo avrà la struttura dell'elettore
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996731-43a2dd6b-e823-4afa-94d2-8089ccdbfe7c.png" width="350" height="50">
</p>
* Lista che contiene l'elenco di tutti i candidati della relativa votazione
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996696-7a602cd9-5d59-450f-b57d-b2660152f408.png" width="350" height="50">
</p>
* Variabile che contiene il numero totale di voti di tutta la votazione
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996749-e242806a-2f86-425e-9e74-8b83a64084e9.png" width="350" height="50">
</p>
* Modificatore per permettere solo al proprietario dello smart contract di aggiungere nuovi candidati
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996733-470ec2af-b5d0-48d2-b441-10b691d525bc.png" width="350" height=120">
</p>

Definizione delle funzioni principali
* Funzione pubblica per l'avvio della votazione. Prende come parametro di input il nome della votazione.  
La persona che ha distribuito o creato il contratto diventerà il proprietario dell'elezione.
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996712-8b6a9a01-9152-466d-b09c-9f1669372388.png" width="500" height="150">
</p>
* Funzione per l'aggiunta di un nuovo candidato alla lista dei candidati. Prende come parametro di input il nome del nuovo candidato da aggiungere.  
Questa funzione può essere richiamata solo dal proprietario dello smart contract.  
  * Per effettuare questa verifica si richiama il modificatore creato a tale scopo.
  * Il nuovo candidato viene inizializzato con il nome che è stato passato come parametro e numero di voti pari a 0.
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996698-fff66359-cef0-4701-b70d-0e384dac6b7f.png" width=600" height="150">
</p>
* Funzione per autorizzare il voto. Prende come parametro di input l'indirizzo dell'elettore che sta votando.
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996702-579a234f-f16e-46e5-8a69-00824f4d4aba.png" width="300" height="450">
</p>
* Funzione per ottenere il numero totale di Candidati presenti nella votazione.
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996716-142769d4-0e4b-4ac2-a08d-278d1e5b24d5.png" width="300" height="450">
</p>
* Funzione per effettuare la votazione. Prende come parametro l'indice del Candidato che si vuole votare.
  * Verifica che l'elettore non abbia già votato. Se il relativo valore booleano è falso l'elettore non ha ancora votato e quindi si va avanti.
  * Verifica che l'elettore sia autorizzato a votare. Se il relativo valore booleano è falso significa che l'elettore non ha ancora votato quindi si va avanti.
  * Viene effettuata la votazione utilizzando l'indice del candidato che l'elettore ha scelto.
  * Registra che l'elettore ha effettuato il suo voto e quindi non dovrebbe essere in grado di votare di nuovo.
  * Incrementa di 1 il numero di voti per il candidato che è stato apena votato dall'elettore.
  * Incrementa il numero totale di voti effettuati.
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996722-ff6af353-4513-41bc-931d-d242f583aa01.png" width="300" height="450">
</p>
* Funzione per ottenere il numero di voti totali effettuati durante la votazione
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996718-6eb4ce85-ac89-4c69-adfe-2eef981ca390.png" width="300" height="450">
</p>
* Funzione per ottenere le informazioni relative ai candidati
<p align="center">
	<img src="https://user-images.githubusercontent.com/48562858/176996711-00fa2e6f-3afd-46f8-a2ac-fc972462a42f.png" width="300" height="450">
</p>
















