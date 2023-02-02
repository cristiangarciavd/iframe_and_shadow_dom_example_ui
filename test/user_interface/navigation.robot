*** Settings ***
Documentation          Robot custom keywords to interact with elements

Resource               resources/elements.robot


*** Keywords ***
The user moves to frame
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}
    Select Frame    ${element}


The ${element_text} should be equal to "${assertion_text}"
    ${ui_text}    Get Text     ${element_text}
    Should Be Equal    ${ui_text}    ${assertion_text}