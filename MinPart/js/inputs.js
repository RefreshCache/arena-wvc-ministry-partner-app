//global variables that can be used by ALL the function son this page. 
var inputs; 
var imgCheckboxFalse = 'images/backgrounds/checkbox_unchecked.png'; 
var imgCheckboxTrue = 'images/backgrounds/checkbox_checked.png'; 
var imgCheckboxFalseDisabled = 'images/backgrounds/checkbox_unchecked_disabled.png'; 
var imgCheckboxTrueDisabled = 'images/backgrounds/checkbox_checked_disabled.png'; 
var imgRadioFalse = 'images/backgrounds/radio_unchecked.png'; 
var imgRadioTrue = 'images/backgrounds/radio_checked.png'; 
var imgRadioFalseDisabled = 'images/radio_unchecked_disabled.png'; 
var imgRadioTrueDisabled = 'images/backgrounds/radio_checked_disabled.png'; 

//this function runs when the page is loaded, put all your other onload stuff in here too. 
function init() { 
    replaceChecks(); 
    replaceRadios();
} 

function replaceChecks() { 

    //get all the input fields on the page 
    inputs = document.getElementsByTagName('input'); 

    //cycle trough the input fields 
    for(var i=0; i < inputs.length; i++) { 

	//check if the input is a checkbox 
	if(inputs[i].getAttribute('type') == 'checkbox') { 

	    //create a new image 
	    var img = document.createElement('img'); 

	    //check if the checkbox is checked 
	    if(inputs[i].checked) { 
				if(inputs[i].disabled)
				{
					img.src = imgCheckboxTrueDisabled; 
				} else {
					img.src = imgCheckboxTrue; 
				}
	    } else { 
		if(inputs[i].disabled)
				{
					img.src = imgCheckboxFalseDisabled; 
				} else {
					img.src = imgCheckboxFalse; 
				}
	    } 

	    //set image ID and onclick action 
	    img.id = 'checkImage'+i; 
	    //set image 
	    if(!inputs[i].disabled) img.onclick = new Function('checkChange('+i+')'); 
	    //place image in front of the checkbox 
	    inputs[i].parentNode.insertBefore(img, inputs[i]); 

	    //hide the checkbox 
	    inputs[i].style.display='none'; 
	} 
    } 
} 

function replaceRadios() { 

    //get all the input fields on the page 
    inputs = document.getElementsByTagName('input'); 

    //cycle trough the input fields 
    for(var i=0; i < inputs.length; i++) { 

	//check if the input is a checkbox 
	if(inputs[i].getAttribute('type') == 'radio') { 

	    //create a new image 
	    var img = document.createElement('img'); 

	    //check if the checkbox is checked 
	    if(inputs[i].checked) { 
				if(inputs[i].disabled)
				{
					img.src = imgRadioTrueDisabled; 
				} else {
					img.src = imgRadioTrue; 
				}
	    } else { 
		if(inputs[i].disabled)
				{
					img.src = imgRadioFalseDisabled; 
				} else {
					img.src = imgRadioFalse; 
				}
	    } 

	    //set image ID and onclick action 
	    img.id = 'radioImage'+inputs[i].id; 

	    //set image click event if button not disabled
	    if(!inputs[i].disabled) img.onclick = new Function('radioChange('+i+')'); 
	    //place image in front of the checkbox 
	    inputs[i].parentNode.insertBefore(img, inputs[i]); 

	    //hide the checkbox 
	    inputs[i].style.display='none'; 
	} 
    } 
} 

//change the checkbox status and the replacement image 
function checkChange(i) { 

    if(inputs[i].checked) { 
	inputs[i].checked = ''; 
	document.getElementById('checkImage'+i).src=imgCheckboxFalse; 
    } else { 
	inputs[i].checked = 'checked'; 
	document.getElementById('checkImage'+i).src=imgCheckboxTrue; 
    } 
} 

//change the checkbox status and the replacement image of checked and all in same group
function radioChange(i) { 
	var radios=new Array();
	var tmpradios;

	// load all the inputs into tmp array
	tmpradios = document.getElementsByTagName('input'); 

	for(var j=0; j < tmpradios.length; j++) { 
		// Add only the radios in this group to the array
		if(tmpradios[j].getAttribute('name') == inputs[i].getAttribute('name'))
		{
			radios.push(tmpradios[j]);
		}
	}

    if(inputs[i].checked) { 
		// already checked so do nothing as radio does not uncheck like a checkbox
    } else { 
		// make all other group items unchecked
	for(var j=0; j < radios.length; j++) { 
			document.getElementById('radioImage'+radios[j].id).src=imgRadioFalse; 
			document.getElementById('radioImage'+radios[j].id).checked=''; 
		}
		// make the selected item checked
	inputs[i].checked = 'checked'; 
	document.getElementById('radioImage'+inputs[i].id).src = imgRadioTrue;       
    } 
} 

window.onload = init;

/*
END OF RADIO BUTTON /CHECKBOX CODE
*/