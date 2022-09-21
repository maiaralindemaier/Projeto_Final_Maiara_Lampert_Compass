
Dado('que esteja na home') do
    visit('https://front.serverest.dev')
end
  
Então('deverá carregar a página de login') do
    expect(page).to have_content 'Login'
end

Então('faça login com {string} e {string}') do |string, string2|
    fill_in('Digite seu email', with: string)
    fill_in('Digite sua senha', with: string2)
    click_button('Entrar')
end

Então('deverá apresentar {string} na área logada') do |string|
        expect(page).to have_content string
end

Então('deverá apresentar mensagem de erro {--string}') do |string|
    expect(page).to have_content string
end
  