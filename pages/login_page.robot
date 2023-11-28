*** Settings ***
Documentation       Elementos da pagina de login

Resource            ../config.robot


*** Variables ***
&{PAGE_LOGIN}       txt_user=name=username
...                 txt_pwd=name=password
...                 btn_login=xpath=//button[@type='submit']
