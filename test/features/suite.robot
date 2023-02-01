*** Settings ***
Library  SeleniumLibrary
Library  Collections

Resource    ../resources/resources.robot
Resource    ../user_interface/navigation.robot
Resource    ../resources/system.robot

Test Setup  Run Keywords   Configure Selenium   Navigate To Homepage
Test Teardown  Exit Selenium

*** Test Cases ***
Test iFrame
    Select external iFrame
    Select internal iFrame
    ${iframe_text}    Get iFrame text
    Should Be Equal    ${iframe_text}    DOM element

Test Shadow DOM
    Select external iFrame
    Select internal iFrame
    ${shadow_text}    Get shadow DOM text
    Should Be Equal    ${shadow_text}    DOM element