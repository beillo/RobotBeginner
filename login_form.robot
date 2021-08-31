*** Settings ***

Resource  base.robot

Test Setup   Nova Sessão  
Test Teardown  Encerra sessão

*** Test Cases ***
Login com sucesso
  Go To           ${url}/login
  Login With      stark   jarvis!

  Page Should Contain  Tony Stark

Senha inválida
  [tags]          login_error
  Go To           ${url}/login
  Login With      stark   acb123

  ${message}=      Get WebElement   id:flash
  Should Contain   ${message.text}  Senha é invalida!

  Page Should Contain  Senha é invalida! 

*** Keywords ***
Login With
  [Arguments]  ${uname}    ${pass}

  Input Text      css:input[name=username]    ${uname} 
  Input Text      css:input[name=password]    ${pass}
  Click Element   class:btn-login

Should Contain Login Alert
  [Arguments]  ${expect_message}

  ${message}=      Get WebElement   id:flash
  Should Contain   ${message.text}  ${expect_message}

Should See Logged User
  [Arguments]   ${full_name}
  
  Page Should Contain  Olá, ${full_name} você acessou a área logada
