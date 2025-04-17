*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url_base}     https://www.amazon.com.br/
${browser}      chrome

*** Keywords ***

Abrir navegador
    Open browser    ${url_base}     ${browser}
    Maximize Browser Window