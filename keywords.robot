*** Settings ***
Library         SeleniumLibrary
Library         DateTime
Library         String
Variables       ../Locators/Locators.py


*** Variables ***
${TIMEOUT}      5s
${vURL}        


*** Keywords ***
Login    
    [Arguments]    ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}    
    Open Browser    ${vURL}    ${vBrowser}
    Maximize Browser Window
    Input text    ${txt_Username}    ${vUsername}
    Input text    ${txt_Password}    ${vPassword}
    Click Element    ${btn_Connexion}


Logout
    Click Element    ${lnk_Deconnexion}
    Close Browser


Cree lien nominal
    [Arguments]    ${vTitreLien}    ${vURLLien}    

    Go To    ${vURL}/share/page/site/test/links

    Click Element    ${btn_NeLien}
    Input Text    ${txt_TitreLien}    ${vTitreLien}
    Input Text    ${txt_URL}    ${vURLLien}
    Click Element    ${btn_Enregis}
    


    