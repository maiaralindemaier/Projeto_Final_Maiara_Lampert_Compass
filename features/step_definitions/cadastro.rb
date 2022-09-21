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
  
  Então('deverá apresentar mensagem de erro {string}') do |string|
    expect(page).to have_content string
  end

  Então('deverá apresentar mensagens de erro em cadastrar {string}, {string} e {string}') do |string, string2, string3|
    expect(page).to have_content string
    expect(page).to have_content string2
    expect(page).to have_content string3
  end
