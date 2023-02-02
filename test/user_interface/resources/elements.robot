*** Settings ***
Documentation     Variables for Robot framework TC - elements

Resource               shadow_paths.robot

*** Variables ***
${external iFrame}    //iframe[contains(@class, 'plunker')]
${internal iFrame}    //iframe[@id="preview"]
${shadow DOM text}    dom:${shadow_text_path}
${iFrame text}        css:h1