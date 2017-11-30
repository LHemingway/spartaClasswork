class BudgetPage

  @@add_budget_button = 'protect.budgetwatch:id/action_add'

  def find_budget
    $driver.find_element(:id, @@add_budget_button).displayed?
  end

end