*** Settings ***
Library         PuppeteerLibrary
Resource        ${CURDIR}/variable.resource
Resource        ${CURDIR}/keyword.resource
Test Setup      Default Test Setup
Test Teardown    Close Browser

*** Test Cases ***
TC_001 : Login FB Success
    Login FB    ${fb.email_correct}    ${fb.password_correct}

TC_002 : Logic FB Not Success : Email and Password Is Incorrect
    Login FB    ${fb.email_incorrect}    ${fb.password_incorrect}
    Verify in case input email Incorrect

TC_003 : Logic FB Not Success : Password Is Incorrect
    Login FB    ${fb.email_correct}    ${fb.password_incorrect}
    Verify in case input password Incorrect
