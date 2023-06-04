*** Settings ***
Resource    ../po/shoppingCartPage.robot


*** Keywords ***
Shopping Page
    shoppingCartPage.Click Add Basket Button and Go Back Another Product Add
    shoppingCartPage.Go to Cart and Verify There are 2 products