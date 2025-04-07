require "application_system_test_case"

class UserLoginTest < ApplicationSystemTestCase
  setup do
    @user = User.create!(username: "test1", firstname: "tester", lastname: "test",  email: "testuser1@example.com", password: "password", password_confirmation: "password")
  end

  test "valid user login" do
    visit new_user_session_url  # Visit Devise's login page
    fill_in "Username", with: @user.username
    fill_in "Password", with: "password"
    click_on "Login"

    assert_text "Logout"
    assert_current_path root_path  # Or wherever the user should be redirected after login
  end

  test "invalid user login" do
    visit new_user_session_url

    fill_in "Username", with: @user.username
    fill_in "Password", with: "wrongpassword"
    click_on "Login"

    assert_text "Invalid Username or password."
  end
end
