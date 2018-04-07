Dado(/^que estou na url "([^"]*)"$/) do |arg1|
 visit(arg1)
end


Entao(/^valido a presença do elemento "([^"]*)"$/) do |arg1|
   assert_selector(EL[arg1],wait:10)
end

  Entao(/^valido a legenda identificacao$/) do
    assert_text("Identificação")
  end

  Dado(/^preencho o campo "([^"]*)" com "([^"]*)"$/) do |campo, valor|
    find(EL[campo]).set(valor)
end

Dado(/^seleciono "([^"]*)"$/) do |campo|
    find(EL[campo]).click
end

Dado(/^clico no botao "([^"]*)"$/) do |campo|
    find(EL[campo]).click
end

Dado(/^seleciono o campo "([^"]*)" com "([^"]*)"$/) do |campo, valor|
    find(EL[campo]).select(valor)
end
