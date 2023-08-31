*** Settings ***
Library     PuppeteerLibrary


*** Variables ***
${fb-messenger-url}         https://www.messenger.com/
${fb-txt-email}             id=email
${fb-txt-password}          id=pass
${fb-btn-login}             xpath=//*[@name='login']
# ${incorrect_password_msg}    xpath=//div[contains(text(),'The password that you've entered is incorrect. ')]
${incorrect_password_msg}    xpath=//*[@id="loginform"]/div[2]/div[2]
${incorrect_email_msg}    xpath=//*[@id="email_container"]/div[2]

${fb.email_correct}         Siriporn@mintel.tech
${fb.password_correct}      12345678Aa*
${fb.email_incorrect}       iriporn@mintel.tech
${fb.password_incorrect}    12345678
${fb.url}                   https://www.facebook.com
