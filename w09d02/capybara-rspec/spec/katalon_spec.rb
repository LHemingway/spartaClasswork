describe 'testing the katalon registration page' do

  before(:all) do
    @session = Katalon.new
    @session.access_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the correct page' do
         expect(@session.current_url).to eql("http://demoaut.katalon.com/")
    end
    it 'should lead to login page' do
        @session.click_appointment_button
        expect(@session.current_url).to eql("http://demoaut.katalon.com/profile.php#login")
    end
    it 'should lead back to home page' do
        @session.click_menu_toggle
        @session.click_menu_home
        expect(@session.current_url).to eql("http://demoaut.katalon.com/")
    end
    it 'should lead to the login page' do
        @session.click_menu_toggle
        @session.click_menu_login
        expect(@session.current_url).to eql("http://demoaut.katalon.com/profile.php#login")
    end
    it 'should lead to the make appointment page' do
        @session.click_login_button
        expect(@session.current_url).to eql("http://demoaut.katalon.com/#appointment")
    end
    it 'should go to the history section' do
        @session.click_menu_toggle
        @session.click_menu_history
        expect(@session.current_url).to eql("http://demoaut.katalon.com/history.php#history")
    end
    it 'should go to the homepage' do
        @session.click_history_homepage_button
        expect(@session.current_url).to eql("http://demoaut.katalon.com/")
    end
    it 'should go to the profile section' do
        @session.click_menu_toggle
        @session.click_menu_profile
        expect(@session.current_url).to eql("http://demoaut.katalon.com/profile.php#profile")
    end
    it 'should logout' do
        @session.click_logout_button
        expect(@session.current_url).to eql("http://demoaut.katalon.com/")
    end
    it 'should select Seoul from the facility list' do
      @session.click_appointment_button
      @session.click_login_button
      @session.select_from_facility
      expect(@session.get_facility).to eql("Seoul CURA Healthcare Center")
    end
    # it 'should tick the hospital readmission checkbox' do
    #   @session.click_hospital_readmission
    #   expect(@session.get_hospital_readmission).checked?
    # end

  end

end