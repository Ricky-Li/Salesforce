(function() {

// Localize jQuery variable
var jQuery;

/******** Load jQuery if not present *********/
if (window.jQuery === undefined || window.jQuery.fn.jquery !== '1.4.2') {
    var script_tag = document.createElement('script');
    script_tag.setAttribute("type","text/javascript");
    script_tag.setAttribute("src",
        "https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js");
    if (script_tag.readyState) {
      script_tag.onreadystatechange = function () { // For old versions of IE
          if (this.readyState == 'complete' || this.readyState == 'loaded') {
              scriptLoadHandler();
          }
      };
    } else { // Other browsers
      script_tag.onload = scriptLoadHandler;
    }
    // Try to find the head, otherwise default to the documentElement
    (document.getElementsByTagName("head")[0] || document.documentElement).appendChild(script_tag);
} else {
    // The jQuery version on the window is the one we want to use
    jQuery = window.jQuery;
    main();
}

/******** Called once jQuery has loaded ******/
function scriptLoadHandler() {
    // Restore $ and window.jQuery to their previous values and store the
    // new jQuery in our local jQuery variable
    jQuery = window.jQuery.noConflict(true);
    // Call our main function
    main(); 
}

/******** Our main function ********/
function main() { 
    jQuery(document).ready(function($) { 

		$(document).ready(function() {
		    $('div.greeting div.links').hide();
		    $('div.bPageFooter div:first-child').hide();
		
		    $('body.sfdcBody').css({"background-color":"#5A4099"});
		    $('.bPageBlock').css({"border-top-color":"#5A4099"});
		    $('.brdPalette').css({"border-top-color":"#5A4099"});
		    $('.zen-headerBottom').css({"background": "-moz-linear-gradient(#EEE5F6,#DCCDF0)"});
		    $('.zen-headerBottom').css({"background": "-webkit-linear-gradient(#EEE5F6,#DCCDF0)"});
		    $('.zen-headerBottom').css({"background": "linear-gradient(#EEE5F6,#DCCDF0)"});
		    $('.primaryPalette').css({"border-top":"#5A4099", "background-color":"#5A4099"});
			$('#phSearchButton').css({"color":"#5A4099"});
			$('#userNavLabel').css({"color":"#5A4099"});
			$('#userNavButton').css({"background":"none"});
			$('body .phHeaderCustomLogo .multiforce .navLinks a').css({"color":"#5A4099"});
			$('.phHeaderCustomLogo #tsidButton').css({"background-color":"#5A4099"});
			$('.phHeaderCustomLogo .menuButtonActivated #tsidLabel').css({"color":"#FFFFFF"});
			$('.phHeaderCustomLogo .menuButtonOver #userNavButton').css({"opacity":"0.0"});
		});
        
    });
}

})(); // We call our anonymous function immediately
