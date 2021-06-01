     module UnidadeModule
        
      #metodo para selecionar os facilities dentro da busca de unidade
       def selecionar_facilities
         find('label[for="_Bicicletário e vaga verde"]').click
         find('label[for="_Vacinação"]').click
         find('label[for="_Atendimento aos domingos"]').click
       end

    end     