class Assercoes

  include Capybara::DSL

  def valida_existencia_elemento(elemento)
    assert_selector(EL[elemento],wait:10)
  end

  def valida_existencia_texto(texto)
    assert_text(EL[texto],wait:10)
  end

  def valida_primeiro_item_vitrine(item)
    assert_selector(EL['primeiro_item'], text: item, wait:15)
  end
end
