class Product
    # Class variables
    @@product_list = []
    
    # Class constants
    @@TAX_RATE = 1.13

    # Class methods
    def self.create(name, price)
        new_product = Product.new(name, price)
        @@product_list << new_product
        return new_product
    end
    
    # Initial instance variables
    def initialize(name, base_price)
        @name = name
        @base_price = base_price
    end

    #Instance methods
    def total_price
        return (@base_price * @@TAX_RATE).round(3)
    end

    # Attribute access
    attr_reader :name
    attr_reader :base_price
end