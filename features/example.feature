#language: pt
Funcionalidade: Acessar o site
@site
Cenario: Url casas Bahia
  Dado que estou na url "https://www.casasbahia.com.br/"
  Entao valido a presença do elemento "#Logo"

Cenario: Acessar a url de identificacao
  Dado que estou na url "https://carrinho.casasbahia.com.br/Checkout?ReturnUrl=https://www.casasbahia.com.br#login"
  Entao valido a legenda identificacao
