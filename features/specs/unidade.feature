language: pt
Funcionalidade: Buscar Unidade


    Cenário: Pesquisa de unidade
        Dado que acesso a pagina de unidades
        Quando pesquiso pela unidade 'Brasília'
        Então devo ver a primeira unidade com o texto 'SEPS 715/915, Conjunto A, Bloco E'


    Cenário: Filtro por facilidade
        Dado que acesse a pagina de unidades
        Quando seleciono algumas opcões de facilidade 
        Então devo ver a unidade com o texto 'República do Líbano I'