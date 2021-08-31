*** Settings ***

Resource  base.robot

Test Setup   Nova Sessão  
Test Teardown  Encerra sessão

*** Test Cases ***
Verifica o valor ao informar o numero da linha
  Go To                         ${url}/tables
  Table Row Should Contain      id:actors     1   @robertdowneyjr

Descobre a linha pelo texto chave e valida os demais valores
  Go To             ${url}/tables
  ${target}=        Get WebElement   xpath:.//tr[contains(., '@robertdowneyjr')]
  Should Contain    ${target.text}   @robertdowneyjr
  Should Contain    ${target.text}   Homem de Ferro
