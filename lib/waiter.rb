class Waiter


  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end
  
  def meals
    Meal.all.select do |meal|
    meal.waiter == self #checking for waiter now
    end
  end
  
end