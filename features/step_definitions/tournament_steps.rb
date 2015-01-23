Given(/^I am authorized user$/) do
  @password = '123456789'
  @user = User.create(email: 'test@test.com', password: @password, password_confirmation: @password)
end

Given(/^I am logged in$/) do
  visit '/users/sign_in'
  fill_in "user_email", :with => @user.email
  fill_in "user_password", :with => @password
  click_button "Log in"
end

When(/^I navigate to tournament path$/) do
  visit(tournament_new_path)
end

Then(/^I should see caption with 'Round (\d+)'$/) do |round_number|
  expect(find("div.container").find("h3").text).to eq("Round #{round_number}")
end

Then(/^I should see (\d+) images to compare$/) do |number_of_photos|
  expect(all('a.thumbnail').size).to eq(number_of_photos.to_i)
end

When(/^I click on left image (\d+) times$/) do |number_of_clicks|
  number_of_clicks.to_i.times do 
    first('a.thumbnail').click
    sleep(1)
  end
end

Then(/^I should see a winner image$/) do
  expect(page.has_css?('div.well'))
  expect(first('div.well img')[:src]).to eq(Leader.last.path)
end