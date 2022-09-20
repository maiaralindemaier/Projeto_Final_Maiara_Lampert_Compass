After do |cenario|
   puts 'Estou executando depois do cenário'
   
   if cenario.failed?
      screenshot = Capybara.page.save_screenshot("reports/screenshot/sc.png")
      attach(screenshot, "image/png")
  end
end
