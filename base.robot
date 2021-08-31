*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}  https://training-wheels-protocol.herokuapp.com/ 

*** Keywords *** 
Nova Sessão
  Open Browser                      ${url}   firefox

Encerra sessão
  Capture Page Screenshot
  Close Browser 