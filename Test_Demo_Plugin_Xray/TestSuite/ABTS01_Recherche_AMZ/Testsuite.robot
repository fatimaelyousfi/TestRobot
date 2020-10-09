*** Settings ***
Resource          Functions/Function_testsuite.txt
Library           Collections
Library           DateTime
Library           Selenium2Library

*** Test Cases ***
ABTS01-TC01-Connexion_Amazon
    Open Browser    https://www.amazon.com/
    Wait Until Page Contains    amazon

ABTS01-TC02-Recherche Mini Robot
    Input Text    ${Recherche}    mini robot
    Click Element    ${Recherche_Ok}
    Click Element    ${fille}

ABTS01-TC03-Fermeture De La Page Amazon
    Close All Browsers
