require 'rails_helper'
require 'capybara/rspec'


describe "Signing Up", :type => :feature do

  it "allows a user to sign up" do
    visit root_path

    expect(page).to have_content 'Sign Up'
    click_link 'Sign Up'

    within("form#new_user") do
    fill_in 'Full name', with: 'Mr. John'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'Password1*'
    fill_in 'Password confirmation', with: 'Password1*'
  end

   find('input.btn.btn-primary').click

  expect(page).to have_content 'My account'
  expect(page).to have_content 'Mr. John'
end

end