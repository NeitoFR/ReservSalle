$(document).ready(function() {
	$("#enregistrementFormation").on("click", function(e){
		let nomFormation = $("#nom_Formation").val();
		let dateDebut = $("#date_Debut").val();
		let nbDemiJournee = $("#nb_Demi_Journee").val();
		let sallesListe = $("#salles_Liste").val();
		let formateursListe = $("#formateurs_Liste").val();
		let classesListe = $("#classes_Liste").val();
		
		masquerMessageErreur();

		if(nomFormation == "" || dateDebut == "" || nbDemiJournee <= 0 || sallesListe <= 0 || formateursListe <= 0 || classesListe <= 0){
			if(nomFormation == ""){
				$("#erreurNomFormation").show();
				$("#erreurNomFormation").html("Le nom de formation est obligatoire");
			}
			
			if(dateDebut == ""){
				$("#erreurDateDebut").show();
				$("#erreurDateDebut").html("La date de début est obligatoire");
			}
			
			if(nbDemiJournee <= 0){
				$("#erreurDemiJournee").show();
				$("#erreurDemiJournee").html("Le nombre de demi journée est obligatoire");
			}
			
			if(sallesListe <= 0){
				$("#erreurSalles").show();
				$("#erreurSalles").html("La selection d'une salle est obligatoire");
			}
			
			if(formateursListe <= 0){
				$("#erreurFormateurs").show();
				$("#erreurFormateurs").html("La selection d'un formateur est obligatoire");
			}
			
			if(classesListe <= 0){
				$("#erreurClasses").show();
				$("#erreurClasses").html("La selection d'une classe est obligatoire");
			}
			
			e.preventDefault();
		}
	});
	
	function masquerMessageErreur(){
		$("#erreurNomFormation, #erreurDateDebut, #erreurDemiJournee, #erreurSalles, #erreurFormateurs, #erreurClasses").hide();
	}
});