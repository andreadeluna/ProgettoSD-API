// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

contract Elezioni{

    struct Candidato{
        string nome;
        uint numeroVoti;
    }

    struct Elettore{
        string nome;
        bool autorizzato;
        uint identificativo;
        bool votato;
    }

    address public proprietario;
    string public nomeVotazione;

    mapping(address => Elettore) public elettori;
    Candidato[] public candidati;
    uint public votiTotali;

    modifier soloProprietario(){
        require(msg.sender == proprietario);
        _;
    }

    function inizioVotazione(string memory _nomeVotazione) public{
        proprietario = msg.sender;
        nomeVotazione = _nomeVotazione;
    }

    function agiungiCandidato(string memory _nomeCandidato) soloProprietario public{
        candidati.push(Candidato(_nomeCandidato, 0));
    }

    function autorizzaElettore(address _indirizzoElettore) soloProprietario public{
        elettori[_indirizzoElettore].autorizzato = true;
    }

    function getNumeroCandidati() public view returns(uint){
        return candidati.length;
    }

    function votazione(uint indiceCandidato) public{
       require(!elettori[msg.sender].votato);
       require(elettori[msg.sender].autorizzato);
       elettori[msg.sender].identificativo = indiceCandidato;
       elettori[msg.sender].votato = true;

       candidati[indiceCandidato].numeroVoti++;
       votiTotali++;
    }

    function getVotiTotali() public view returns(uint){
        return votiTotali;
    }

    function infoCandidato(uint index) public view returns(Candidato memory){
        return candidati[index];
    }
}