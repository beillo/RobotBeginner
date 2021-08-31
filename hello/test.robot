

*** Settings ***
Library   app.py


*** Test Cases ***
Deve retornar mensagens de boas vindas
  ${result}=  welcome   Lucas
  Should Be Equal  ${result}  Olá Lucas, bem vindo ao Curso básico de Robot Framework!