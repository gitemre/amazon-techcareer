*** Settings ***
Library  SeleniumLibrary
Library     BuiltIn
Resource    ../app/homePageApp.robot
Resource    ../app/utilsApp.robot
Resource    ../app/signInPageApp.robot
Resource    ../app/afterLoginPageApp.robot
Resource    ../app/SearchInputApp.robot
Resource    ../app/searchResultandProductPageApp.robot
Resource    ../app/shoppingCartPageApp.robot
Resource    ../app/deleteProductAndCheckApp.robot

Test Setup  utilsApp.Start Web Test
Test Teardown   utilsApp.Finish Web Test

*** Test Cases ***
Cart Product Count Check Case
    homePageApp.HomePage Verify
    signInPageApp.Sign In Email and Password
    afterLoginPageApp.User Login Check Home Page
    SearchInputApp.Search Product in HomePage
    searchResultandProductPageApp.Search Result Page and Click Product
    shoppingCartPageApp.Shopping Page
    deleteProductAndCheckApp.Delete Product And Check One Item

