*** Settings ***
Resource    ../po/deleteProductAndCheck.robot


*** Keywords ***
Delete Product And Check One Item
    deleteProductAndCheck.Delete Product
    deleteProductAndCheck.Verify 1 Product


