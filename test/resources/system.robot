*** Settings ***
Documentation          Robot custom keywords
Library                ../../core/main/drivers/driver_manager.py


*** Keywords ***
Configure Selenium
    Set Selenium Implicit Wait    10 Seconds

Navigate To Homepage
    ${driver_path}   GET DRIVER    ${BROWSER}
    Open Browser    ${SiteUrl}    ${BROWSER}    executable_path=${driver_path}
    Maximize Browser Window

Exit Selenium
    Set Screenshot Directory    reports/screenshots
    Capture Page Screenshot
    Close Browser
