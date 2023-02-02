*** Settings ***
Documentation     Robot test suite to practice interaction sith iFrame and Shadow DOM elements

Library              SeleniumLibrary
Library              Collections

Resource              ../resources/resources.robot
Resource              ../user_interface/navigation.robot
Resource              ../resources/system.robot

Test Setup            Run Keywords   Configure Selenium   Navigate To Homepage
Test Teardown         Exit Selenium
Test Tags             selenium


*** Test Cases ***
[TEST] Verify iFrame element interaction
    [Documentation]    Get iFrame element and verify iFrame element interaction
    [Tags]      iframe
    When The user moves to frame       ${external iFrame}
    And The user moves to frame        ${internal iFrame}
    The ${iFrame text} should be equal to "DOM element" 

[TEST] Verify shadow DOM element interaction
    [Documentation]    Get shadow DOM element and verify iFrame element interaction
    [Tags]      shadowDOM
    When The user moves to frame       ${external iFrame}
    And The user moves to frame        ${internal iFrame}
    The ${shadow DOM text} should be equal to "Inside Shadow DOM"