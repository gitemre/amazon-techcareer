*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
click
  [Arguments]    ${SELECTOR}
  Wait Until Page Contains Element  ${SELECTOR}
  Click Element  ${SELECTOR}

input
  [Arguments]    ${SELECTOR}  ${TEXT}
  Wait Until Page Contains Element  ${SELECTOR}
  Clear Element Text  ${SELECTOR}
  Click Element  ${SELECTOR}
  Input Text  ${SELECTOR}  ${TEXT}

contains
    [Arguments]     ${CONTAINTEXT}
    Wait Until Page Contains    ${CONTAINTEXT}




