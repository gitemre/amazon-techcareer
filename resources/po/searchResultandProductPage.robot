*** Settings ***
Library    SeleniumLibrary
Library           Collections
Resource    ../po/utils.robot

*** Variables ***
${firstItem}=   css=[data-csa-c-pos='1'] .a-size-base-plus
${productTitle}=    css=span#productTitle

*** Keywords ***
Click First Product and Get Text
    ${firstItemText}=   Get Text    ${firstItem}
    Log To Console     ${firstItemText}
    Set Global Variable    ${firstItemText}
    utils.click    ${firstItem}
    ${productTitleText} =   Get Text    ${productTitle}
    Log To Console  ${productTitleText}
    Set Global Variable    ${productTitleText}

Verify Product Page
    utils.contains    ${productTitleText}
    IF    $firstItemText == $productTitleText
        Log To Console    Ürün isimleri eşleşiyor.
    ELSE
         Log To Console     Ürün isimleri birbirinden farklı.
    END


