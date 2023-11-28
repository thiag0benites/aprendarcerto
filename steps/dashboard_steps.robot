*** Settings ***
Documentation    Keywords de Login

Resource    ../config.robot
Resource    ../pages/login_page.robot
Resource    ../pages/dashboard_page.robot

*** Keywords ***
Dado que acesso o item do menu "${item}"
    Click item menu    ${item}

E valido acesso a tela PMI
    Wait Until Element Is Visible    ${PAGE_DASH}[employee_info]    30    Erro ao acessar o item PMI do menu!
    Capture Page Screenshot