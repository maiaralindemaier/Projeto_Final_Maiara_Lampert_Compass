
Dado('que esteja na home') do
    visit('https://front.serverest.dev/login')
  end
  
Então('deverá carregar a página de login') do
    expect(page).to have_content 'Login'
end

Então('deverá acessar cadastro') do
   expect(page).to click_button('Cadastre-se')
  end