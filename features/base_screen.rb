require 'selenium-webdriver' 

module BaseScreen

  #metodo para clicar em qualquer menu da lista de opçoes do site
  def select_element_for_text(element, text)
   a =  element, :text, text
    a.click
  end

  #metodo usado para fazer o scroll da tela caso o elemento nao esteja na mesma, ate encontralo
  def scroll_element(element)
    execute_script "window.scrollBy(0,100)"
    while find(element).visible? == false
      execute_script "window.scrollBy(0,100)"
    end
  end

  # metodo para selecionar opçoes em combobox
  def select_combobox (element,list,option)
    find(element).click
    find(list, :text => option).click
  rescue 'Element not exist'
  end

  def verify_match_text(title, title2)
    if title != title2
      raise "The text not match. #{title} / Title home news #{title2}"
    end
  end

  def verify_text_include(element, text)
      raise "Text not include in the string. Element text #{element} / text validation #{text}" unless element.include? text
  end

  def element_wait(time)
    if time.nil?
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    else
      wait = Selenium::WebDriver::Wait.new(:timeout => time)
    end
  end

  def convert_month(month)
    case 
        month
    when 'Janeiro'
        return '1'
    when 'Fevereiro'
        return '2'
    when 'Março'
        return '3'
    when 'Abril'
        return '4'
    when 'Maio'
        return '5'
    when 'Junho'
        return '6'
    when 'Julho'
        return '7'
    when 'Agosto'
        return '8'
    when 'Setembro'
        return '9'
    when 'Outubro'
        return '10'
    when 'Novembro'
        return '11'
    when 'Dezembro'
        return '12'
    else
        raise 'Mês informado nao existe'
    end
end

end