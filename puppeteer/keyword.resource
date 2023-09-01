*** Settings ***
Library     PuppeteerLibrary
Resource    ${CURDIR}/variable.resource


*** Keywords ***
Default Test Setup
    ${headless}    Get Variable Value    ${HEADLESS}    ${False}
    &{options}    Evaluate    {'headless': ${headless}}
    Open Browser    ${fb_url}    browser=pwchrome    options=${options}

Login FB
    [Arguments]    ${fb_email}    ${fb_password}
    Input Text    ${fb-txt-email}    ${fb_email}
    Input Text    ${fb-txt-password}    ${fb_password}
    Click Element    ${fb-btn-login}

Verify in case input email Incorrect
    Wait Until Element Is Visible    ${fb-txt-emailIncorrect}

Verify in case input password Incorrect
    Wait Until Element Is Visible    ${fb-btn-tryAnotherWay}

Verify in case login fb success
    Wait Until Element Is Visible    ${fb-txt-postFb}