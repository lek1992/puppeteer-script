*** Settings ***
Library     PuppeteerLibrary


*** Variables ***
${fb-messenger-url}         https://www.messenger.com/
${fb-txt-email}             id=email
${fb-txt-password}          id=pass
${fb-btn-login}             xpath=//*[@name='login']
${fb-txt-emailIncorrect}    xpath=//*[contains(text(),"The email address you entered isn't connected to an account.")]
# ${incorrect_password_msg}    xpath=//div[contains(text(),'The password that you've entered is incorrect. ')]
${fb-btn-tryAnotherWay}    xpath=//a[text()='Try another way']
${fb-txt-postFb}          xpath=//span[contains(text(),"What's on your mind")]


${fb_email_correct}         Siriporn@mintel.tech
${fb_password_correct}      12345678Aa*
${fb_email_incorrect}       iriporn@mintel.tech
${fb_password_incorrect}    12345678
${fb_url}                   https://www.facebook.com
