After do |scenário|
   puts ' Estou executando depois do cenário'
   screenshot = Capybara.page.save_screenshot("reports/screenshot/sc.png")
   puts 'attach(screenshot, "image/png")'
end
