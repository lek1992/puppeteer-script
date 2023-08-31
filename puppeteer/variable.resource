*** Settings ***
Library     PuppeteerLibrary


*** Variables ***
${fb-messenger-url}         https://www.messenger.com/
${fb-txt-email}             id=email
${fb-txt-password}          id=pass
${fb-btn-login}             xpath=//*[@name='login']

${fb.email_correct}         Siriporn@mintel.tech
${fb.password_correct}      12345678Aa*
${fb.email_incorrect}       iriporn@mintel.tech
${fb.password_incorrect}    12345678
${fb.url}                   https://www.facebook.com
