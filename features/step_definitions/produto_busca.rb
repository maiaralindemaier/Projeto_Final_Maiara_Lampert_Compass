Dado('que esteja na home interna') do
    visit('https://front.serverest.dev/home')
end

Quando('faço login com {string} e {string}') do |string, string2|
    fill_in('Digite seu email', with: string)
    fill_in('Digite sua senha', with: string2)
    click_button('Entrar')
end

Então('deverá buscar pelo produto {string}') do |string|
    fill_in('Pesquisar Produtos', with: string)
    click_button('Pesquisar')
end
  
Então('deverão ser retornados resultados na busca {string}') do |string|
    expect(page).to have_content string
    expect(page).to have_content 'Adicionar a lista'
end