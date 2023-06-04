*** Settings ***
Library    SeleniumLibrary
Resource    ../po/utils.robot

*** Variables ***
${loginButton} =    css=#nav-signin-tooltip > a > span

*** Keywords ***
Home Page Check
    Location Should Be    https://www.amazon.com.tr/
    Wait Until Page Contains Element    ${loginButton}
    utils.contains    Merhaba, Giriş yapın
Click Login Page
    utils.click     ${loginButton}
