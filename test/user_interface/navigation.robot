*** Settings ***
Resource    resources/shadow_paths.robot


*** Keywords ***
Select external iFrame
    Wait Until Element Is Visible    //iframe[contains(@class, 'plunker')]
    Select Frame    //iframe[contains(@class, 'plunker')]

Select internal iFrame
    Select Frame    //iframe[@id="preview"]

Get iFrame text
    ${text}    Get Text     css:h1
    [return]    ${text}

Get shadow DOM text
    ${text}    Get Text     dom:${shadow_dom_text}
    [return]    ${text}