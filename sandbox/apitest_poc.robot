*** Settings ***
Resource  ../utils/http.robot

*** Variables ***
${novopost}    {
...            "userId": 1,
...            "title": "Meu aniversário",
...            "body": "teste 07/08/1985"
...            }

*** Test Cases ***

Teste de Api GET
    [Tags]    API     GET
    ${response}  HttpGet  users/1
    Log to console  ${response}
    #Validações#

Teste de Api POST
    [Tags]   API     POST
    ${response}  HttpPost  posts  ${novopost}
    #Validações#