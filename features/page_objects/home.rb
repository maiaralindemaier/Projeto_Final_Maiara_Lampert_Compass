class Home < SitePrism::Page
    set_url '/home'
end

def search_for(product)
  btn_search.click
  input_search.set product
  btn_search.click
end