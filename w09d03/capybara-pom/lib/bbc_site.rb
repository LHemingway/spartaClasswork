require 'require_all'
require_rel 'pages'

class BBCSite

  def bbc_homepage
    BBCHomepage.new
  end

  def bbc_signin
    BBCSignin.new    
  end
  
  
end