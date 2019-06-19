pragma solidity ^0.5.8;

contract Voting {

    // Evento que se lanza si se añade un candidato
    /* ESCRITE AQUÍ TU CÓDIGO */

    // registramos la dirección del dueño del contrato en una variable address
    /* ESCRITE AQUÍ TU CÓDIGO */

    //Constructor

    /* ESCRITE AQUÍ TU CÓDIGO */

    //Modificador onlyOwner
   
    /* ESCRITE AQUÍ TU CÓDIGO */

    // Estructura Voter para almacenar información asociada al Votante
    
    /* ESCRITE AQUÍ TU CÓDIGO */

    // Estructura para almacenar información asociada al Candidato
    
    /* ESCRITE AQUÍ TU CÓDIGO */

    // Almacenar # de candidatos y # de votantes
    /* ESCRITE AQUÍ TU CÓDIGO */

    // Mapping clave (uint) -  valor (estrucutra Candidate/Voter)

    /* ESCRITE AQUÍ TU CÓDIGO */

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * * * * * * * * * * * * * * FUNCIONES * * * * * * * * * * * * *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

    // Función que me permite añadir a un cadidato.
    // Solo el propietario del contrato podrá añadir al candidato
    function addCandidate(bytes32 name, bytes32 party) public onlyOwner
    {
        // ID del candidato: Número de candidato añadido al mapping (clave)
        /* ESCRITE AQUÍ TU CÓDIGO */
        // Creamos un nuevo candidato: Nombre, Partido y existe
        /* ESCRITE AQUÍ TU CÓDIGO */
        // Emitimos el evento
        /* ESCRITE AQUÍ TU CÓDIGO */
    }

    // Función que me permite a un votante votar por un candidato
    function vote(bytes32 uid, uint candidateID) public {
        // Verificamos si el candidato al que voy a votar existe y creamos un nuevo votante
        /* ESCRITE AQUÍ TU CÓDIGO */
    }

    // Función que deveulve el número de votos de un candidato específico
    function totalVotes(uint candidateID) public view  returns (uint) {
        /* ESCRITE AQUÍ TU CÓDIGO */
    }

    // Función que devuelve el núemero de candidatos
    function getNumOfCandidates() public view returns(uint) {
        /* ESCRITE AQUÍ TU CÓDIGO */
    }

    // Función que devuelve el núemero de votantes
    function getNumOfVoters() public view returns(uint) {
        /* ESCRITE AQUÍ TU CÓDIGO */
    }

    // Función que devuelve la información de un candidato concreto
    function getCandidate(uint candidateID) public view returns (uint,bytes32, bytes32) {
        /* ESCRITE AQUÍ TU CÓDIGO */
    }
}