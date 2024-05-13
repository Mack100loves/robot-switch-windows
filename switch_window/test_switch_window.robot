*** Settings ***
Library          SeleniumLibrary

*** Test Cases ***
Switch window is fucking ez 
    Open Browser    https://gxd4e.csb.app/    gc
    Click Button    xpath=//*[@id="openwindow"]
    @{handles}=    Get Window Handles
    Switch Window    ${handles}[1]
    Click Button    xpath=//*[@id="closewindow"]
    Switch Window    ${handles}[0]
    Click Button    xpath=//*[@id="openalert"]
    Sleep    2s