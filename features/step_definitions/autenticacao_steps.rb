# encoding: UTF-8
Dado /^que existe um usuário na base com login "([^"]*)" e senha "([^"]*)"$/ do |email, senha|
  User.create! :email => email, :password => senha, :password_confirmation => senha
end

Quando /^eu acessar a página de login$/ do
  visit "/users/sign_in"
end

Quando /^digitar "([^"]*)" "([^"]*)"$/ do |campo, valor|
  fill_in(campo, :with => valor)
end

Quando /^clicar no botão "([^"]*)"$/ do |nome_botao|
  click_button(nome_botao)
end

Então /^deverei ver na tela a mensagem "([^"]*)"$/ do |msg|
  page.should have_content(msg)
end

