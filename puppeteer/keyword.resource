*** Settings ***
Library     PuppeteerLibrary
Resource    ${CURDIR}/variable.resource


*** Keywords ***
Default Test Setup
    ${headless}    Get Variable Value    ${HEADLESS}    ${False}
    &{options}    Evaluate    {'headless': ${headless}}
    Open Browser    ${fb.url}    browser=pwchrome    options=${options}

Login FB
    [Arguments]    ${fb.email}    ${fb.password}
    Input Text    ${fb-txt-email}    ${fb.email}
    Input Text    ${fb-txt-password}    ${fb.password}
    Click Element    ${fb-btn-login}
