*** Settings ***
Resource  base.robot

Test Setup   Nova Sessão  
Test Teardown  Encerra sessão 

*** Test Cases ***
Should See Page Title
  Open Browser      https://training-wheels-protocol.herokuapp.com/   firefox
