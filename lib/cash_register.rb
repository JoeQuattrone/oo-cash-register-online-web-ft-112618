class CashRegister
  
  attr_accessor :discount, :total, :title, :price, :previous_total, :last_transaction
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []

  end
  
  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    self.items << title
  end
  
  def apply_discount
    if self.discount == nil
      "There is no discount to apply."
    else
    self.total = self.total * (100 - self.discount) / 100
    "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def items
    self.items
  end
  
end
