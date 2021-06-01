 class UnidadeScreen < SitePrism::Page

     include UnidadeModule

    #  url definido no arquivo hooks.rb
    #  set_url usada caso queira que abra direto em uma pagina expecifica do site. por exemplo '/unidades
    set_url '/'
     element :link_unidade, '#button-title-desktop-header', text: 'Unidades'
     element :search_unidade, '#input-search-field'
     element :link_unidade_df, '.typographycomponentstyle__H3-sc-1oox73n-3.caOpMn', text: 'Brasília' 
     element :filtro_facilidade, '#checkoox-select-facilities'
     element :ver_detalhes, '#button-see-on-map-2-republica-do-libano-i'
     element :prox_page, '.VfPpkd-RLmnJb'
     element :campo_email
 end