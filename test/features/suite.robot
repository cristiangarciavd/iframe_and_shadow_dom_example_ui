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
    Navigate To Add Invoice
    Fill Out Invoice Details    ${invoice}
    Submit Invoice Form
    ${invoice_id}=   Get Invoice Id     ${invoice}
    Page Should Contain     ${invoice_id}
    Open Invoice    ${invoice_id}