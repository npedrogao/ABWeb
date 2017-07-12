/*
document.onkeydown = KeyCheck;  //or however you are calling your method
function KeyCheck()
{
   var KeyID = event.keyCode;
   switch(KeyID)
   {
      case 8: //backspace
      return;
      break; 
      case 46: //delete
      return;
      break;
      default:
      break;
   }
}*/


/* Enter key as TAB - AB alike */
 $(document).ready(function () {
    var inputs = $(':input').keypress(function (e) {
          
          var initIndex = inputs.index(this) + 1;
          var thisInput=inputs.get(initIndex);
         var prevInput = inputs.get(initIndex-1);
         // MultilineFields must preserv the Enter key
            if (prevInput.isMultiLine)
            return;
         
         if (e.which == 13) {
                e.preventDefault();
         

         if (initIndex == inputs.length)
         {
            initIndex=1;
         }
             
         for(var i=initIndex; i<inputs.length; i++)
         {
            var nextInput = inputs.get(i);
        
            if (nextInput)
            {
                if (!nextInput.disabled )
                {
                    try
                    {
                        nextInput.focus();
                        break;
                    }
                    catch(Error){}
                }
            }
         }
       }
    });
 });

              
       
//******************************************************************************
// Module  :   rightClick.js
//******************************************************************************
// DISCLAIMER: This Application is provide on AS IS basis without any warranty
//******************************************************************************

var BM = 2; // button middle
var BR = 3; // button right
var msg ="MOUSE RIGHT CLICK IS NOT SUPPORTED ON THIS PAGE";

function mouseDown(e) 
{ 
  try { if (event.button==BM||event.button==BR) {return false;} }  
  catch (e) { if (e.which == BR) {return false;} } 
}
document.oncontextmenu = function() 
{ 
//alert(msg); 
return false; }
document.onmousedown   = mouseDown;
//******************************************************************************

function ClientSideValidations(lblErrorID, action,tabAnulacao){
    
    isValid=false;
    var tabAnul = document.getElementById(tabAnulacao);
    
    if(action == 'Continuar' && document.getElementById(lblErrorID).outerText == 'Saldo Insuficiente.')
    {
        Page_IsValid = false;
        Page_BlockSubmit = !Page_IsValid;
        return false;
    }else if (tpTransf =='I')
    {
        isValid = Page_ClientValidate('TransInterna');
        
        if (isValid)
            isValid = Page_ClientValidate('TransfComum');
            
        if (isValid && tabAnul != null)
            isValid = Page_ClientValidate('Anulacao');
    }
    else if(tpTransf =='S')
    {
        isValid = Page_ClientValidate('TransfNacional');
        
        if (isValid)
            isValid = Page_ClientValidate('TransfComum');
            
        if (isValid && tabAnul != null)
            isValid = Page_ClientValidate('Anulacao');
    }else if (tpTransf =='F')
    {
       isValid = Page_ClientValidate('TransfInternacional');
        
        if (isValid)
            isValid = Page_ClientValidate('TransfComum');
            
        if (isValid && tabAnul != null)
            isValid = Page_ClientValidate('Anulacao');
    }
    
    if (Page_IsValid)
        ShowWait();
    else
    {
        var element = document.getElementById(lblErrorID);
    
        element.innerHTML = "<span id='ctl00_Body_lblErro' class='t-msg-error-1'>Existem campos em estado inválido.<br></span>"
//validateGroup('TransfNacional');
//validatePage();

        return false; 
    }
   
}

 function validateGroup(groupName)
    {
        //if (window.Page_IsValid != true)
        //{
            //Page_Validators is an array of validation controls in the page. 
            if (window.Page_Validators != undefined && window.Page_Validators != null)
            {
                //Looping through the whole validation collection. 
                for (var i = 0; i < window.Page_Validators.length; i++)
                {
                    //window.ValidatorEnable(window.Page_Validators[i]);

                    var valGroupName = window.Page_Validators[i].getAttribute('ValidationGroup');

                    if (valGroupName == groupName){
                    
                     var errMsg = window.Page_Validators[i].getAttribute('ControlToValidate');
                     
                     var element = document.getElementById(errMsg);
                     
                     /*
                        alert(errMsg);
                        alert(window.Page_Validators[i].isvalid);
                        
                        alert(element.disabled);
                        alert(element.style.visibility);*/
                     
                    }
                   

                    //if condition to check whether the validation was successfull or not. 
                    /*if (!window.Page_Validators[i].isvalid)
                    {
                        var errMsg = window.Page_Validators[i].getAttribute('ErrorMessage');
                        var errMsg = window.Page_Validators[i].getAttribute('ControlToValidate');
                        alert(errMsg);
                    }*/
                }
            }
        //}
    }




 function validatePage()
    {
        if (window.Page_IsValid != true)
        {
            //Page_Validators is an array of validation controls in the page. 
            if (window.Page_Validators != undefined && window.Page_Validators != null)
            {
                //Looping through the whole validation collection. 
                for (var i = 0; i < window.Page_Validators.length; i++)
                {
                    window.ValidatorEnable(window.Page_Validators[i]);

                    //if condition to check whether the validation was successfull or not. 
                    if (!window.Page_Validators[i].isvalid)
                    {
                        var errMsg = window.Page_Validators[i].getAttribute('ErrorMessage');
                        var errMsg = window.Page_Validators[i].getAttribute('ControlToValidate');
                        //alert(errMsg);
                    }
                }
            }
        }
    }




/* In progress message */
function ShowWait()
{
    $.blockUI({message:'<h1><img alt=\"\" src=\"images/InProgress.gif\"/></h1>', css: { border: 'none',color: 'none' , backgroundColor: 'none'},overlayCSS:  { opacity:         0.1 }});
}

function ShowWaitClose()
{
    $.unblockUI();
}


function padLeft(nr, n, str){
    return Array(n-String(nr).length+1).join(str||'0')+nr;
}







/* Printscreen control */
var interval
function disablePrintScreen()
{
 interval = setInterval(disablePrintScreenaux,1);
}

function disablePrintScreenaux()
{
    try{
    window.clipboardData.setData('text','Para fazer Copy & Paste deverá sair do separador de Assinaturas.');    
    } 
    catch(e){}
}

function enablePrintScreen()
{
    clearInterval(interval);
	window.clipboardData.setData('text','');
	
}



function textboxMultilineMaxNumber(txt,maxLen)
{
    try{
     if(txt.value.length > (maxLen-1))return false;
    }catch(e){
    }
}