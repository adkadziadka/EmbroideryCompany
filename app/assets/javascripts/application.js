// application.js

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function counting() {
	 var today = new Date();
	 var m = new Array();
	 m[0] = "Styczen";
	 m[1] = "Luty";
	 m[2] = "Marzec";
	 m[3] = "Kwiecien";
	 m[4] = "Maj";
	 m[5] = "czerwiec";
	 m[6] = "Lipiec";
	 m[7] = "Sierpien";
	 m[8] = "Wrzesien";
	 m[9] = "Pazdziernik";
	 m[10] = "Listopad";
	 m[11] = "Grudzien";

	 var day = today.getDate();
	 	if (day<10) day = "0"+day;
	 var month = m[today.getMonth()];
	 	if (month<10) month = "0"+month;
	 var year = today.getFullYear();

	 var hour = today.getHours();
	 	if(hour<10) hour = "0"+hour;
	 var minute= today.getMinutes();
	 	if (minute<10) minute = "0"+minute;
	 var second = today.getSeconds();
	 	if (second<10) second = "0"+second;
	 
	 document.getElementById("clock").innerHTML = "dzisiaj mamy:  " + day+" "+month+" "+year+"  <br>  "+hour+":"+minute+":"+second;

	 setTimeout("counting()", 1000);
 };

