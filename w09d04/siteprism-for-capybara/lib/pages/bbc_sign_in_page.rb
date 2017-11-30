class Pages::BBCSignInPage < SitePrism::Page

  set_url "http://bbc.co.uk/signin"
  set_url_matcher /bbc.co.uk\/signin/

  element :email_field, "input[id='user-identifier-input']"
  element :password_field, "input[id='password-input']"
  element :submit_button, "button[id='submit-button']"

  def enter_email
    email_field.set 'lukehemingway66@gmail.com'
  end

  def enter_password
    password_field.set ENV['MY_PASSWORD']
  end

  def click_sign_in_button
    submit_button.click
  end

end