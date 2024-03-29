// -------------------------------------------------------------------------------------------
// 
// Checks if we need to load the recaptcha script on a page
//
// -------------------------------------------------------------------------------------------

(function($)
{
    "use strict";
	
	if( $( '#avia-google-recaptcha-api-script' ).length > 0 )
	{
		return;
	}
	
	if( 'undefined' == typeof AviaReCAPTCHA_front || 'undefined' == typeof AviaReCAPTCHA_front.avia_api_script )
	{
		return;
	}
	
	if( ! $('body').hasClass('av-recaptcha-enabled') )
	{
		return;
	}
	
	/*	check if reCaptcha are disabled by user setting via cookie - or user must opt in.	*/
	var cookie_check = $('html').hasClass('av-cookies-needs-opt-in') || $('html').hasClass('av-cookies-can-opt-out');
	var allow_continue = true;

	if( cookie_check )
	{
		if( ! document.cookie.match(/aviaCookieConsent/) || sessionStorage.getItem( 'aviaCookieRefused' ) )
		{
			allow_continue = false;
		}
		else
		{
			if( ! document.cookie.match(/aviaPrivacyRefuseCookiesHideBar/) )
			{
				allow_continue = false;
			}
			else if( ! document.cookie.match(/aviaPrivacyEssentialCookiesEnabled/) )
			{
				allow_continue = false;
			}
			else if( document.cookie.match(/aviaPrivacyGoogleReCaptchaDisabled/) )
			{
				allow_continue = false;
			}
		}
	}
	
	if( ! allow_continue )
	{
		var forms = $('form.avia_ajax_form');
		forms.addClass('av-form-user-disabled');
		forms.find('input.button').remove();

		return;
	}
	
	
	var version = AviaReCAPTCHA_front.version;
	var recaptcha_areas = $('div.av-recaptcha-area');
	
	if( recaptcha_areas.length == 0 && version != 'avia_recaptcha_v3' )
	{
		return;
	}
	
	var	script = document.createElement('script');
		script.id	= 'avia-google-recaptcha-api-script';
		script.type = 'text/javascript';	
		script.src 	= AviaReCAPTCHA_front.avia_api_script;
				
	document.body.appendChild( script );
	
})( jQuery );

