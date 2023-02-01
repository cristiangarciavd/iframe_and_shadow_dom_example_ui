*** Keywords ***
Configure Selenium
     Set Selenium Implicit Wait    10 Seconds

Navigate To Homepage
    Open Browser    ${SiteUrl}    ${BROWSER}
    Maximize Browser Window

Exit Selenium
    Capture Page Screenshot
    Close Browser
