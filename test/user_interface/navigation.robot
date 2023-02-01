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
    ${Path}=  document.querySelector('#container').shadowRoot
    ...  .querySelector('h1[id="inside"]')
    ${text}    Get Text     dom:${Path}
    [return]    ${text}