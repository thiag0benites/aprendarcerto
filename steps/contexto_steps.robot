*** Settings ***
Documentation       Keywords globais dentro do projeto

Resource            ../config.robot
Resource            ../pages/home_page.robot


*** Keywords ***
Dado que acesso o sistema
    Open Browser    ${DATA_URL}    ${DATA_BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${PAGE_HOME}[txt_user]    30    Erro ao tentar carregar a home page!
    Capture Page Screenshot

Entao fecho o sistema
    Close Browser
