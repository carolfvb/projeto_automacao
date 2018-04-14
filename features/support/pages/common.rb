class Common

  include Capybara::DSL

  def clica_elemento(elemento,index=0)
    all(EL[elemento],wait:15)[index.to_i].click

  end

  def preenche_campo(elemento,valor)
    find(EL[elemento]).set(valor)

  end

def seleciona_elemento(elemento,valor)
  find(EL[elemento]).select(valor)
end
end
