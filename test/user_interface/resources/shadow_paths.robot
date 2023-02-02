*** Settings ***
Documentation     Variables for Robot framework TC - paths to shadow elements

*** Variables ***
${shadow_text_path}  document.querySelector('#container').shadowRoot
    ...  .querySelector('h1[id="inside"]')