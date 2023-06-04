*** Settings ***
Library    SeleniumLibrary
Resource    ../po/utils.robot

*** Variables ***
${searchbox} =  id=twotabsearchtextbox
${searchButton} =   id=nav-search-submit-button

*** Keywords ***
Search Product
    utils.input    ${searchbox}    kulaklık
    utils.click    ${searchButton}
