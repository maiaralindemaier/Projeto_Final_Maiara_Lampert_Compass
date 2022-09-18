  Dado('que esteja na página de cadastro') do
    visit('https://front.serverest.dev/cadastrarusuarios')
  end
  
  Quando('eu faço cadastro com {string}, {string} e {string}') do |nome, email, senha|
    fill_in('Digite seu nome', with: nome)
    fill_in('Digite seu email', with: email)
    fill_in('Digite sua senha', with: senha)
  end
  
  Então('deverá realizar cadastro') do
    click_button('Cadastrar')
  end