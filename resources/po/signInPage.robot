*** Settings ***
Library    SeleniumLibrary
Resource    ../po/utils.robot

*** Variables ***
${email} =
${password} =
${name} =
${inputEmail} =   id=ap_email
${inputPassword} =  id=ap_password


*** Keywords ***
Input E-mail
    utils.contains    Giriş yap
    utils.contains    Devam Et
    utils.click    ${inputEmail}
    utils.input    ${inputEmail}    ${email}
    utils.click    id=continue

Input Password
    utils.contains    ${email}
    utils.contains    Şifre
    utils.click    ${inputPassword}
    utils.input    ${inputPassword}    ${password}
    utils.click    id=signInSubmit