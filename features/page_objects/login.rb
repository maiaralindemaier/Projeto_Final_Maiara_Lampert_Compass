module Pages
class Login < SitePrism::Page
  set_url '/login'

  element :input_email, "input[name='email']"
  element :input_senha, "input[name='password']"
  element :btn_entrar, "button[type='submit']"

  def login_valid(email, senha)
      input_email.set email
      input_senha.set senha
      btn_entrar.click
  end
end
end 