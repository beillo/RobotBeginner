*** Settings ***
Resource  base.robot

Test Setup   Nova Sessão  
Test Teardown  Encerra Sessão 

*** Variables ***
${check_thor}  id:thor
${check_iron}  css:input[value=iron-man] 
${check_panther}  Xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com Id
  Open Browser                      ${url}   firefox
  Go To                             ${url}/checkboxes  
  Select Checkbox                   ${check_thor}
  Checkbox Should Be Selected       ${check_thor}                          
  Close Browser

Marcando opção com CSS Selector
 
  Open Browser                      ${url}   firefox
  Go To                             ${url}/checkboxes  
  Select Checkbox                   ${check_iron}
  Checkbox Should Be Selected       ${check_iron}                           
  Close Browser

Marcando opção com Xpath
  [tags]                            ironman
  Open Browser                      ${url}   firefox
  Go To                             ${url}/checkboxes  
  Select Checkbox                   ${check_panther}
  Checkbox Should Be Selected       ${check_panther}                        
  Close Browser


 
