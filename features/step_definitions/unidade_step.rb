
Dado("que acesse a pagina de unidades") do
  unidade = UnidadeScreen.new
  unidade.link_unidade.click
end

Dado("pesquiso pela unidade {string}") do |string|
  unidade = UnidadeScreen.new
  unidade.search_unidade.set string
  unidade.search_unidade.native.send_keys(:return)
end

Então("devo ver a primeira unidade com o texto {string}") do |string|
  expect(page).to have_content(string, wait: 30)
end

Dado("que acesso a pagina de unidades") do
  unidade = UnidadeScreen.new
  unidade.link_unidade.click
end

Quando("seleciono algumas opcões de facilidade") do 
  unidade = UnidadeScreen.new
  unidade.filtro_facilidade.click
  unidade.selecionar_facilities
  unidade.ver_detalhes.click
end

Então("devo ver a unidade com o texto {string}") do |string|
  expect(page).to have_content(string, wait: 30)
end