*** Settings ***
Resource    ../po/searchResultandProductPage.robot


*** Keywords ***
Search Result Page and Click Product
    searchResultandProductPage.Click First Product and Get Text
    searchResultandProductPage.Verify Product Page