*** Settings ***
Library    SeleniumLibrary
Resource   ../po/utils.robot
Resource    ../po/signInPage.robot

*** Keywords ***
After Login Check Home Page
    utils.contains    ${name}
    utils.contains    Alıcı: ${name}
