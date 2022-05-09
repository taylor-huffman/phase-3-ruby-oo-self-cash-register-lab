require "pry"

class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = []
    end

    def add_item(title, price, quantity=1)
        self.total += (price * quantity)
        quantity.times do
            self.items.push(title)
        end
        self.last_transaction = (price * quantity)
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            self.total -= (self.total * self.discount / 100)
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        # if self.items.empty?
        #     self.total = 0.0
        # else
            self.total -= self.last_transaction
        # end
        # binding.pry
    end

end
