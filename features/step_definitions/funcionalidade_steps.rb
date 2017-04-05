
Dado(/^que esteja no site Inmetrics$/) do
  visit 'http://www.inmetrics.com.br/'
end

Quando(/^acesse a pagina de Quem Somos$/) do
  find(:id, 'menu-item-2960').click
end

Entao(/^buscar pelo texto "([^"]*)"$/) do |msg|
 #binding.pry
  assert_text ('MAIS DE 15 ANOS DE ATUAÇÃO')
end