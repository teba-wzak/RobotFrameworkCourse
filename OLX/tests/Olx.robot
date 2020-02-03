*** Settings ***
Documentation  My first test
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
User check does searchbox works correctly
    [Documentation]  User open OLX.pl site, next looking for Nintendo Switch via searchbox and check if returned results are correct
    [Tags]  Smoke
    Open Browser  https://www.olx.pl  firefox
    Wait Until Page Contains  Mój OLX  timeout=5
    Input Text  id=headerSearch  Nintendo Switch  Clear=true
    Click Button  id=submit-searchmain
    Wait Until Page Contains  Wyróżnione ogłoszenia  timeout=10
    Click Link  xpath=//*[@id="offers_table"]/tbody/tr[3]/td/div/table/tbody/tr[1]/td[2]/div/h3/a
    Wait Until Page Contains  Wróć
    Click Link  xpath=//*[@id="contact_methods"]/li/a