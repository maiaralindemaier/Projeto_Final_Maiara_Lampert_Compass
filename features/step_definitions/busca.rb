
Quando('realizar uma buscar por um produto existente') do
   @home_page.searche_for('Walton Thompson')
   @home_results_page = HomeResults.new
   @searche_for = SearcheFor.new
end
  
Então('deverão ser retornados resultados na busca') do
    @home_results_page
    expect(@home_results_page).to have_product 'product-detail-name'
end