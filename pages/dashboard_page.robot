*** Settings ***
Documentation    Elementos Dash

Resource    ../config.robot

*** Variables ***
&{PAGE_DASH}    nav_menu=xpath=//nav[@class='oxd-navbar-nav']
...             employee_info=xpath=//h5[text()='Employee Information']

*** Keywords ***
Click item menu
    [Arguments]    ${item}
    Click Element    xpath=//*[text()='${item}']    # Arrumar xpath