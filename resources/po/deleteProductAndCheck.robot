*** Settings ***
Library    SeleniumLibrary
Resource    ../po/utils.robot


*** Variables ***
${deleteProductButton}=     css=.a-spacing-mini .sc-action-delete .a-color-link
${subtotal}=    id=sc-subtotal-label-buybox

*** Keywords ***
Delete Product
    utils.click    ${deleteProductButton}

Verify 1 Product
    utils.contains    Ara toplam (1 ürün):
    ${subtotalText}=    Get Text    ${subtotal}
    IF    $subtotalText == 'Ara toplam (1 ürün):'
        Log To Console    Sepetinizdeki ürün sayısı 1
    ELSE
        Log To Console    Sepetinizdeki Ürün sayısı 2
    END
