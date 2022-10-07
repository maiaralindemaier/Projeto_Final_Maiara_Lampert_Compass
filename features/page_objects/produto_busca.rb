module Pages
class ProdutoBusca < SitePrism::Page
  set_url '/home'

  element :input_search, 'input[data-testid="pesquisar"]'
  element :btn_search, "button[data-testid='botaoPesquisar']"

  def search_for(product)
      input_search.set product
      btn_search.click
  end
end
end 