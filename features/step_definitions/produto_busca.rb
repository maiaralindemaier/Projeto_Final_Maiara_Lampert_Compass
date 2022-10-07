Dado('que esteja na home interna') do
    @produto_busca_page = Pages::ProdutoBusca.new 
    @login_page = Pages::Login.new 
    @produto_busca_page.load
end

Quando('faço login') do
    @login_page.login_valid(
        Static.set('email_user'), 
        Static.set('senha_user')
    )
end

Então('deverá buscar pelo produto') do 
    @produto_busca_page.search_for (
        Static.set('product_valid')
    )
end
  
Então('deverão ser retornados resultados na busca') do
    expect(@produto_busca_page).to have_content Static.set('product_valid')
    expect(@produto_busca_page).to have_content 'Adicionar a lista'
end