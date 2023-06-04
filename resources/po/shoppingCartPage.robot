*** Settings ***
Library    SeleniumLibrary
Resource    ../po/utils.robot
Resource    ../po/searchResultandProductPage.robot

*** Variables ***
${addBasket}=   id=add-to-cart-button
${cartProduct}=     css=#add-to-cart-confirmation-image > div > a > img
${secondtItem}=   css=[data-csa-c-pos='2'] .a-size-base-plus
${goToCart}=    id=sw-gtc

*** Keywords ***
Click Add Basket Button and Go Back Another Product Add
    utils.click    ${addBasket}
    Go Back
    Go Back
    utils.click    ${secondtItem}
    utils.click    ${addBasket}

Go to Cart and Verify There are 2 products
    utils.click    ${goToCart}
    utils.contains    Ara toplam (2 ürün):
