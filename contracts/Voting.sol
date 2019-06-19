pragma solidity ^0.5.8;

contract Voting {

    // Evento que se lanza si se añade un candidato
    /* AQUÍ TU CÓDIGO */

    // registramos la dirección del dueño del contrato en una variable address
    /* AQUÍ TU CÓDIGO */

    //Constructor

    /* AQUÍ TU CÓDIGO */

    //Modificador onlyOwner
   
    /* AQUÍ TU CÓDIGO */

    // Estructura Voter para almacenar información asociada al Votante
    
    /* AQUÍ TU CÓDIGO */

    // Estructura para almacenar información asociada al Candidato
    
    /* AQUÍ TU CÓDIGO */

    // Almacenar # de candidatos y # de votantes
    /* AQUÍ TU CÓDIGO */

    // Mapping clave (uint) -  valor (estrucutra Candidate/Voter)

    /* AQUÍ TU CÓDIGO */

    /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
     * * * * * * * * * * * * * * FUNCIONES * * * * * * * * * * * * *
     * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

    // Función que me permite añadir a un cadidato.
    // Recibe como parámetros el nombre del candidato y el partido
    // Solo el propietario del contrato podrá añadir al candidato
    function addCandidate(... , ...) public ...
    {
        // ID del candidato: Número de candidato añadido al mapping (clave)
        /* AQUÍ TU CÓDIGO */
        // Creamos un nuevo candidato: Nombre, Partido y existe
        /* AQUÍ TU CÓDIGO */
        // Emitimos el evento
        /* AQUÍ TU CÓDIGO */
    }

    // Función que me permite a un votante votar por un candidato
    // recobe como parámetros el identificador del votante y el candidato al que vota.
    function vote(... , ... ) public {
        // Verificamos si el candidato al que voy a votar existe y creamos un nuevo votante
        /* AQUÍ TU CÓDIGO */
    }

    // Función que deveulve el número de votos de un candidato específico
    // Recibe como parámetro el identificador del candidato
    function totalVotes(...) public ...  returns (...) {
        /* AQUÍ TU CÓDIGO */
    }

    // Función que devuelve el núemero de candidatos
    function getNumOfCandidates() public ... returns (...) {
        /* AQUÍ TU CÓDIGO */
    }

    // Función que devuelve el núemero de votantes
    function getNumOfVoters() public ... returns (...) {
        /* AQUÍ TU CÓDIGO */
    }

    // Función que devuelve la información de un candidato concreto
    // Recibe como parámetro el identificador de un candidato
    function getCandidate(...) public view returns (..., ..., ...) {
        /* AQUÍ TU CÓDIGO */
    }
}
