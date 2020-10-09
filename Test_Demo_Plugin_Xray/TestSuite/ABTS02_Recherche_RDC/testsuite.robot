*** Settings ***
Resource    Functions/Function_testsuite.txt
Library    Collections
Library    DateTime
Library    Selenium2Library 

*** Test Cases ***
ABTS02-TC01-Connexion RDC
    Open Browser    https://www.rueducommerce.fr
    Wait Until Page Contains    Drive
    
ABTS02-TC02-Recherche Pc Portable
    Input Text    ${Recherche_RDC}    pc portable
    Click Button    ${Recherche_Ok_RDC}
    Input Text    ${prix_min}    0
    Input Text    ${prix_max}    1300  
        
ABTS02-TC03-Rechercher La Marque Du Pc
    Click Element    ${marque}
    Input Text    ${marque}    Abc    
    Close All Browsers     
     

