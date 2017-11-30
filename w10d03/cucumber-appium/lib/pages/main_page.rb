class MainPage 

  @@budget_and_transaction = 'protect.budgetwatch:id/action_settings'
  @@budget_button = 'protect.budgetwatch:id/menu'

  def main_page_displayed?
    $driver.find_element(:id, @@budget_and_transaction)
  end

  def find_budget_button
    $driver.find_elements(:id, @@budget_button)[0]
  end
  
end