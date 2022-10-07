module Pages
    class  CadastroProduto < SitePrism::Page
      set_url '/admin/cadastrarprodutos'
    
      element :input_nome, "input[name='nome']"
      element :input_preco, "input[name='preco']"
      element :input_descricao, "input[name='descricao']"
      element :input_quantity, "input[name='quantity']"
      element :btn_entrar, "button[type='submit']"
    
      def cadastro_produto(nome, preco, descricao, quantity)
          input_nome.set nome
          input_preco.set preco
          input_descricao.set descricao
          input_quantity.set quantity
          btn_entrar.click
      end
    end
end 