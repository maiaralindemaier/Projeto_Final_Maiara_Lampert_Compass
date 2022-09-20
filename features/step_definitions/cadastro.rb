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
  
  Então('deverá realizar apresentar mensagem de erro {string}') do |string|
    expect(page).to have_content string
  end

  Então('deverá realizar apresentar mensagens de erro {string}, {string} e {string}') do |mensagem, mensagem2, mensagem3|
    expect(page).to have_content mensagem
    expect(page).to have_content mensagem2
    expect(page).to have_content mensagem3
  end