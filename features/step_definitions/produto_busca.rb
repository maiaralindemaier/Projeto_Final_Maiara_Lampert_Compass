Dado('que esteja na home interna') do
    visit('https://front.serverest.dev/home')
end

Quando('faço login com {string} e {string}') do |string, string2|
    fill_in('Digite seu email', with: string)
    fill_in('Digite sua senha', with: string2)
    click_button('Entrar')
end

Quando('buscar pelo produto {string}') do |string|
   @home_page.search_for(string)
   @home_results_page = HomeResults.new
   @search_for = SearcheFor.new
end
  
Então('deverão ser retornados resultados na busca') do
    @home_results_page
    expect(@home_results_page).to have_product 'product-detail-name'
end