Dado(/^que estou na url "([^"]*)"$/) do |site|
 visit(URL[site])
end


Entao(/^valido a presença do elemento "([^"]*)"$/) do |campo|
   Assercoes.new.valida_existencia_elemento(campo)
end

Entao(/^valido a legenda "([^"]*)"$/) do |texto|
  Assercoes.new.valida_existencia_texto(texto)
  end

Dado(/^preencho o campo "([^"]*)" com o item "([^"]*)"$/) do |campo, valor|
  skus = MASSA[:skus]
  $produto = skus[:"#{valor}"].sample
  Common.new.preenche_campo(campo,$produto)
end

Dado(/^seleciono "([^"]*)"$/) do |campo|
    Common.new.clica_elemento(campo)
end

Dado(/^clico no botao "([^"]*)"$/) do |campo|
    Common.new.clica_elemento(campo)
end

Dado(/^seleciono o campo "([^"]*)" com "([^"]*)"$/) do |campo, valor|
    Common.new.seleciona_elemento(campo,valor)
end

Dado(/^preencho todos os campos com sucesso$/) do
  PaginaRegistro.new.preencher_formulario_cpf
end

Dado(/^preencho todos os campos$/) do
  PaginaRegistro.new.preencher_formulario_cnpj
end

Entao(/^devo visualizar o resultado da busca$/) do
  Assercoes.new.valida_primeiro_item_vitrine($produto)
end
