describe 'Incorrect user details produces valid error' do

  context 'Correct errors thrown when incorrect details are input' do
    it 'It should produce an error when inputting an incorrect password to a valid account' do
      @bbc_site = BBCSite.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in.click
      @bbc_site.bbc_signin.input_data_to_username_field
      @bbc_site.bbc_signin.input_data_to_password_field
      @bbc_site.bbc_signin.enter_login_details
      expect(@bbc_site.bbc_signin.error_message).to be true
    end
  end
end