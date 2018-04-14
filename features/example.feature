#language: pt
Funcionalidade: Acessar o site
@site
Cenario: Url casas Bahia
  Dado que estou na url "inicial"
  Entao valido a presença do elemento "logo"

Cenario: Acessar a url de identificacao
  Dado que estou na url "login"
  Entao valido a legenda "label_Identificacao"

@busca
Cenario: Pesquisar um modelo de celular
  Dado que estou na url "inicial"
  E preencho o campo "texto_busca" com o item "marcas"
  Quando clico no botao "botao_buscar"
  Entao devo visualizar o resultado da busca
