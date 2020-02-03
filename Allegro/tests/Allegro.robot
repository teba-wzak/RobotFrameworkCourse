*** Settings ***
Documentation  My first test
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
User check does searchbox works correctly
    [Documentation]  User open Allegro.pl site, next looking for Nintendo Switch via searchbox and check if returned results are correct
    [Tags]  Smoke
    Open Browser  https://www.allegro.pl  firefox
    Wait Until Page Contains  Bądź Smart!  timeout=10
    Input Text  class="_d25db_3K7x6 _14uqc"   Nintendo Switch  Clear=true

*** Keywords ***