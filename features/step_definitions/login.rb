
Dado('que esteja na home') do
    visit('https://front.serverest.dev')
end
  
Então('deverá carregar a página de login') do
    expect(page).to have_content 'Login'
end

Quando('eu faço login com {string} e {string}') do |email, senha|
    fill_in('Digite seu email', with: email)
    fill_in('Digite sua senha', with: senha)
    click_button('Entrar')
end

Então('devo ver {string} na área logada') do |string|
    expect(page).to have_content string
end
