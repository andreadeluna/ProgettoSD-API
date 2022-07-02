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

















