*** Settings ***
Documentation    Teste de login

Resource    ../steps/contexto_steps.robot
Resource    ../steps/login_steps.robot
Resource    ../steps/dashboard_steps.robot

Test Setup    Dado que acesso o sistema
Test Teardown    Entao fecho o sistema


*** Test Cases ***
Cadastrar usuario
    Dados que digito o usuario "${DATA_LOGIN_USER}" e a senha "${DATA_LOGIN_PWD}"
    Quando efetuo o click em Login
    Entao valida a home do usuario
    # Dado que acesso o item do menu "${DATA_PMI}"
    # E valido acesso a tela PMI