Então('faço login como adm') do
    @login_page = Pages::Login.new 
    @login_page.load
    @login_page.login_valid(
        Static.set('email_user_adm'), 
        Static.set('senha_user_adm')
    )
end

 Dado('que esteja na tela de Cadastro de produtos') do
    @cadastro_produto_page = Pages::CadastroProduto.new 
    @cadastro_produto_page.load
  end
  
  Quando('inserir os dados do produto valido {string}, {string}, {string}, {string}') do |nome, preco, descricao, quantity|
    @cadastro_produto_page.cadastro_produto(
        Static.set(nome),
        Static.set(preco),
        Static.set(descricao),
        Static.set(quantity)
      )
  end
  
  Então('o produto será cadastrado') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('inserir os dados do produto invalidos {string}, {string}, {string}, {string}') do |nome, preco, descricao, quantity|
    @cadastro_produto_page.cadastro_produto(
        Static.set(nome),
        Static.set(preco),
        Static.set(descricao),
        Static.set(quantity)
      )
  end
  
  Então('o usuário devera receber uma mensagem de erro {string}') do |mensagem|
    expect(@cadastro_page).to have_content(mensagem)  
  end
  