class PaginaRegistro

include Capybara::DSL

def preencher_formulario_cpf

  dados = MASSA[:usuarioValidoCpf]
  find(EL["campo_email"]).set(dados[:email])
  Common.new.clica_elemento('radio_button_primeiro_cadastro')
  Common.new.clica_elemento('botao_login')
  find(EL["campo_nome_completo"]).set("Jean Projeto")
  find(EL["campo_cpf"]).set(dados[:cpf])
  find(EL["seleciona_telefone1"]).select("Comercial")
  find(EL["campo_ddd1"]).set("11")
  find(EL["campo_telefone1"]).set(dados[:telefone])
  find(EL["selecione_telefone2"]).select("Celular")
  find(EL["campo_telefone2"]).set(dados[:telefone2])
  find(EL["campo_ddd2"]).set("11")
  find(EL["campo_nascimento_dia"]).set("11")
  find(EL["campo_nascimento_mes"]).set("08")
  find(EL["campo_nascimento_ano"]).set("1996")
  Common.new.clica_elemento("campo_sexo")
  find(EL["campo_confirma_email"]).set(dados[:email])
  find(EL["campo_senha"]).set("Projeto1")
  find(EL["campo_confirma_senha"]).set("Projeto1")
  Common.new.clica_elemento("checkbox_receber_ofertas")
  Common.new.clica_elemento("checkbox_receber_informacoes")

end

  def preencher_formulario_cnpj

    dados = MASSA[:usuarioValidoPj]
    Common.new.preenche_campo("campo_email",dados[:email])
    Common.new.clica_elemento("radio_button_primeiro_cadastro")
    Common.new.clica_elemento("botao_login")
    find(EL["radio_button_pj"]).click
    Common.new.preenche_campo("campo_razao_social","Groove")
    Common.new.preenche_campo("campo_nome_fantasia","Groove Tech")
    Common.new.preenche_campo("campo_cnpj",dados[:cnpj])
    Common.new.seleciona_elemento("campo_estado_empresa", "SP")
    Common.new.preenche_campo("campo_inscricao_estadual","1568468168168186")
    Common.new.seleciona_elemento("seleciona_telefone1","Celular")
    Common.new.preenche_campo("campo_ddd_pj","11")
    Common.new.preenche_campo("campo_telefone_pj",dados[:telefone])
    Common.new.clica_elemento("botao_remove_pj")
    Common.new.preenche_campo("campo_confirma_email",dados[:email])
    Common.new.preenche_campo("campo_senha","Projeto1")
    Common.new.preenche_campo("campo_confirma_senha","Projeto1")
    Common.new.clica_elemento("checkbox_receber_ofertas")
    Common.new.clica_elemento("checkbox_receber_informacoes")

  end
end
