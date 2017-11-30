require "capybara/dsl"

class BBCHomepage
  include Capybara::DSL

  # Page Objects (Class Constants)
  HOMEPAGE_URL = "https://www.bbc.co.uk/"
  SIGN_IN_LINK_ID = '#idcta-link'

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def click_sign_in
    find(SIGN_IN_LINK_ID)
  end

end