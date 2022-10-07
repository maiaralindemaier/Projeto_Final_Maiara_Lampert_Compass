
Dado('que esteja na home') do
    @login_page = Pages::Login.new 
    @login_page.load
end
  
Então('deverá carregar a página de login') do
    expect(page).to have_content 'Login'
end

Então('faça login com dados validos') do
    @login_page.login_valid(
        Static.set('email_user'), 
        Static.set('senha_user')
    )
end

Então('deverá apresentar {string} na área logada') do |string|
        expect(page).to have_content string
end

# Então('deverá apresentar mensagem de erro {string}') do |string|
#     expect(page).to have_content string
# end
  