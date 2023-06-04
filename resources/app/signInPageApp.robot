*** Settings ***
Resource    ../po/signInPage.robot

*** Keywords ***
Sign In Email and Password
    signInPage.Input E-mail
    signInPage.Input Password
