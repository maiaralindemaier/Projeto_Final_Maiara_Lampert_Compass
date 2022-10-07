module Pages
  class TelaCadastro < SitePrism::Page
      set_url "/cadastrarusuarios"
      
      element :input_nome, "input[name='nome']"
      element :input_email, "input[name='email']"
      element :input_senha, "input[name='password']"
      element :check_adm, "div[class='form-check']"
      element :btn_cadastrar, "button[type='submit']"
      
      def cadastro_usuario(nome, email, senha, administrador = false)
        input_nome.click
        input_nome.set nome
        input_email.click
        input_email.set email
        input_senha.click
        input_senha.set senha
        check_adm.click if administrador == true
        btn_cadastrar.click
      end
   
      
      def preencher_cadastro_usuario(nome, email, senha)
        input_nome.click
        input_nome.set nome
        input_email.click
        input_email.set email
        input_senha.click
        input_senha.set senha
      end
      
      def finaliza_cadastro_usuario_admin
        check_adm.click
        btn_cadastrar.click
      end
      
      def finaliza_cadastro_usuario_nao_admin
       btn_cadastrar.click
      end
  end
  
  end
  
  