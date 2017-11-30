require "capybara/dsl"

class BBCSignin
  include Capybara::DSL

  USERNAME_INPUT = 'user-identifier-input'
  PASSWORD_INPUT = 'password-input'
  ERROR_MESSAGE = '#form-message-password'
  SUBMIT = '#submit-button'

  def input_data_to_username_field
    fill_in USERNAME_INPUT, with: 'r1564801@mvrht.net'
  end

  def input_data_to_password_field
    fill_in PASSWORD_INPUT, with: 'password123'
  end

  def enter_login_details
    find('#submit-button').click
  end

  def error_message
    find(ERROR_MESSAGE).visible?
    
  end

end