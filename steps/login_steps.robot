*** Settings ***
Documentation    Keywords de Login

Resource    ../pages/login_page.robot
Resource    ../pages/dashboard_page.robot

*** Keywords ***
Dados que digito o usuario "${user}" e a senha "${pwd}"
    Input Text    ${PAGE_LOGIN}[txt_user]    ${user}
    Input Text    ${PAGE_LOGIN}[txt_pwd]    ${pwd}
    Capture Page Screenshot

Quando efetuo o click em Login
    Click Button    ${PAGE_LOGIN}[btn_login]
Entao valida a home do usuario
    Wait Until Element Is Visible    ${PAGE_DASH}[nav_menu]    30    Erro ao efetuar o login!
    Capture Page Screenshot