require 'rails_helper'
require 'capybara/rails'

feature 'homepage' do
  scenario 'there is a homepage' do
    visit "/"
    expect(page).to have_content('Rantly')
    expect(page).to have_content('Jeff Taggart, avid Ranter')
  end

  scenario 'can register' do
    visit '/'
    click_button 'JOIN'
    fill_in 'user_username', with: 'monochrome'
    fill_in 'user_password', with: 'schnee'
    fill_in 'user_first_name', with: 'Blake'
    fill_in 'user_last_name', with: 'Belladona'
    fill_in 'user_bio', with: 'former member of the White Fang'
    choose 'user_frequency_daily'
    click_button 'REGISTER'
    expect(page).to have_content 'You have registered successfully!'
  end

  scenario 'can login' do
    user = create_user
    login(user)
  end
end