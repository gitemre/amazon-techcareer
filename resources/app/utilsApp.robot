*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com.tr/
${BROWSER}  chrome

*** Keywords ***
Start Web Test
  Open Browser  about:blank  ${BROWSER}
  Go To    ${URL}
  Maximize Browser Window

Finish Web Test
  Close Browser


