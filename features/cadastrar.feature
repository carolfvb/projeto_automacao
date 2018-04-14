#language: pt
Funcionalidade: cadastro de usuario
@Cpf
Cenario: realiazar cadastro com sucesso
  Dado que estou na url "login"
  E preencho todos os campos com sucesso
  Quando clico no botao "botao_continuar_cadastro"
  Entao valido a presença do elemento "label_nome_cliente"

@Teste
Cenario: realizar cadastro pelo cnpj
  Dado que estou na url "login"
  E preencho todos os campos
  Quando clico no botao "botao_continuar_cadastro"
  Entao valido a presença do elemento "label_nome_cliente"
