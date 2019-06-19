// Importar librarias necesarias
import { default as Web3 } from "web3"
import { default as contract } from "truffle-contract"

//obtencion de los artefactos y creación del truffle contract
// get build artifacts from compiled smart contract and create the truffle contract
import votingArtifacts from "../../build/contracts/Voting.json"
var VotingContract = contract(votingArtifacts)

window.App = {

    init: function(callback){
      // instanciando los providers
      VotingContract.setProvider(window.web3.currentProvider)
      VotingContract.defaults({ from: window.web3.eth.accounts[0], gas: 6721975 })
      
      
      var instance= null
      //obtenemos intancia
      
      /*CODIGO AQUI*/
      
      //asignamos instancia
      window.contractInstance = instance;
      //llamamos al callback
      callback()
      /*
      }).catch(function(err) {
          console.error("ERROR! " + err.message)
      })
      */
    },
    
    getCandidateList: function() {

      //HTML limpiamos la lista de candidatos
      $("#candidate-box").html("");
      
      //obtenemos el numero de candidatos
      // borrar
      var numOfCandidates=0
      //Por cada número de candidatos iteramos y pedimos la información de cada uno
      
      /*CODIGO AQUI*/
      
      for (var i = 0; i < numOfCandidates; i++) {
          
        // obtenemos la info del candidato
        
         /*CODIGO AQUI*/
         
        //HTML añadimos el candidato a la lista de candidatos
        //$("#candidate-box").append(`<div class="form-check"><input class="form-check-input" type="checkbox" value="" id=${data[0]}><label class="form-check-label" for=${data[0]}>${window.web3.toAscii(data[1])} [${window.web3.toAscii(data[2])}]</label></div>`)

        }


    },

    vote: function() {
      //HTML obtención del nombre del votante
      var uid = $("#id-input").val()
      if (uid == "") {
          $("#msg").html("<p>Porfavor introduzca un nombre.</p>")
          return
      }
      //HTML obtenemos el id del candidato seleccionado
      if ($("#candidate-box :checkbox:checked").length > 0) {
          //HTML obtenemos el primero que esté seleccionado (es una aplicación de ejemplo no pasa nada)
          var candidateID = $("#candidate-box :checkbox:checked")[0].id
      } else {
          //HTML error por si no hay ningún candidato seleccionado
          $("#msg").html("<p>Por favor vota por un candidato.</p>")
          return
      }
      //operación de voto
      
      /*CODIGO AQUI*/
      
      //HTML mensaje y actualizamos y mostramos los resultados cuando se confirme el voto
      //$("#msg").html("<p>Voto realizado</p>")
      //window.App.findNumOfVotes()


    },

    // function called when the "Count Votes" button is clicked
    findNumOfVotes: function() {
  
      //obtenemos el número de candidatos
      //borrar
      var numOfCandidates=0
      
      /*CODIGO AQUI*/
      
    //HTML preparamos la sección
    var box = $("<section></section>")

    // Por cada número de candidatos hacemos el recuento
    for (var i = 0; i < numOfCandidates; i++) {

        //creamos promesa de obtencion de informacion de candidato
        
        /*CODIGO AQUI completar*/
        
        var candidatePromise = null
        //creamos promesa de obtencion de votos de candidato
        
        /*CODIGO AQUI completar*/
        var votesPromise = null

      //Esperamos hasta que las promises estén completadas
      Promise.all([candidatePromise, votesPromise]).then(function(data) {
          console.log(data)
          //HTML se añade el candidato a la sección
          box.append(`<p>${window.web3.toAscii(data[0][1])}: ${data[1]}</p>`)
      }).catch(function(err) {
          console.error("ERROR! " + err.message)
      })
    }
    //HTML se añade la sección
    $("#vote-box").html(box)


    },
    
    cleanCounting: function(){
      var box = $("<section></section>")
      $("#vote-box").html(box)
    },
    
    addCandidate: function(){
      //HTML obtención de nombre y partido
      var id = $("#add-id-input").val()
      var party = $("#add-party-input").val()
      if (id == "" || party === "") {
          $("#msgAdd").html("<p>Por favor introduzca nombre y partido</p>")
          return
      }

      //llamamos a añadir candidato
      
      /*CODIGO AQUI*/
      
      //HTML mensaje de añadido
      $("#msgAdd").html("<p>Añadido</p>")
      //obtemos la lista de candidatos otra vez
      window.App.getCandidateList()
      //limpiamos los votos
      window.App.cleanCounting()
        
        
      /*
      }).catch(function(err) {
        console.log(err)
        $("#msgAdd").html("<p>"+err.message+"</p>")
      })
      */
    }
}

// When the page loads, we create a web3 instance and set a provider. We then set up the app
window.addEventListener("load", function() {
    // Is there an injected web3 instance?
    if (typeof web3 !== "undefined") {
        console.warn("We3 externo detectado (posible Metamask)")
        window.web3 = new Web3(web3.currentProvider)
    } else {
        console.warn("No se detectó ningún web3")
        window.web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:7545"))
    }
    // Inicializamos la APP
    window.App.init(window.App.getCandidateList)
})