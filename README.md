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
* La struttura che definisce il "Candidato"
  * Nome candidato
  * Numero voti che il candidato ha ottenuto
* La struttura che definisce l'"Elettore"
  * Nome dell'elettore
  * Bolleano per determinare se l'elettore è autorizzato a votare
  * Indice della lista dei candidati che corrisponde alla posizione del candidato che il candidato vuole votare
  * Booleano per verificare se l'elettore ha già votato oppure no
* L'indirizzo del propietario dello smart contract. Questo indirizzo è pubblico in modo che tutti possano vedere chi è il proprietario dello smart contract
* Stringa pubblica per il Nome/Titolo della votazione, in modo che tutti possano verificare per quale votazione stanno votando
* Mappatura dell'indirizzo a un elettore; ogni indirizzo avrà la struttura dell'elettore
* Lista che contiene l'elenco di tutti i candidati della relativa votazione
* Variabile che contiene il numero totale di voti di tutta la votazione
* Modificatore per permettere solo al proprietario dello smart contract di aggiungere nuovi candidati

Definizione delle funzioni principali
* Funzione pubblica per l'avvio della votazione. Prende come parametro di input il nome della votazione.  
La persona che ha distribuito o creato il contratto diventerà il proprietario dell'elezione.
* Funzione per l'aggiunta di un nuovo candidato alla lista dei candidati. Prende come parametro di input il nome del nuovo candidato da aggiungere.  
Questa funzione può essere richiamata solo dal proprietario dello smart contract.  
  * Per effettuare questa verifica si richiama il modificatore creato a tale scopo.
  * Il nuovo candidato viene inizializzato con il nome che è stato passato come parametro e numero di voti pari a 0.
* Funzione per autorizzare il voto. Prende come parametro di input l'indirizzo dell'elettore che sta votando.
* Funzione per ottenere il numero totale di Candidati presenti nella votazione.
* Funzione per effettuare la votazione. Prende come parametro l'indice del Candidato che si vuole votare.
  * Verifica che l'elettore non abbia già votato. Se il relativo valore booleano è falso l'elettore non ha ancora votato e quindi si va avanti.
  * Verifica che l'elettore sia autorizzato a votare. Se il relativo valore booleano è falso significa che l'elettore non ha ancora votato quindi si va avanti.
  * Viene effettuata la votazione utilizzando l'indice del candidato che l'elettore ha scelto.
  * Registra che l'elettore ha effettuato il suo voto e quindi non dovrebbe essere in grado di votare di nuovo.
  * Incrementa di 1 il numero di voti per il candidato che è stato apena votato dall'elettore.
  * Incrementa il numero totale di voti effettuati.
* Funzione per ottenere il numero di voti totali effettuati durante la votazione
* Funzione per ottenere le informazioni relative ai candidati
















