Dado(/^que estou na pagina demoqa$/) do
 visit 'http://demoqa.com'
end

Quando(/^clico no botão Registration$/) do
  find(:id, 'menu-item-374').click
end

Então(/^Realizo o cadastro$/) do
  #FirstName
  fill_in('name_3_firstname',:with => 'Lucas')
  #LastName
  fill_in('name_3_lastname',:with => 'Silva')
  #Hobby
  find(:xpath, '//*[@id="pie_register"]/li[3]/div/div[1]/input[1]').click
  #Phone
  fill_in('phone_9',:with => '9999999999')
  #Username
  fill_in('username',:with => 'lucasil')
   #Email
  fill_in('email_1',:with => 'lucasil@inmetrics.com.br')
   #Pass
  fill_in('password_2',:with => '12345678')
  #ConfirmPass
  fill_in('confirm_password_password_2',:with => '12345678')
  #ClickButton
  click_button ('Submit')
end
