require_relative 'product'

class ShoppingCart
    def initialize
        @products = []
        @before_tax_total = 0
        @after_tax_total = 0
    end

    def add(product)
        @products << product
    end

    def delete(product)
        @products.delete(product)
    end

    def total_before_tax
        @before_tax_total = 0
        @products.each do |product|
            @before_tax_total += product.base_price
        end
        return @before_tax_total
    end

    def total_after_tax
        @after_tax_total = 0
        @products.each do |product|
            @after_tax_total += product.total_price
        end
        return @after_tax_total.round(3)
    end

    attr_reader :products
end

cart = ShoppingCart.new

soap = Product.new("Soap", 5)
mop = Product.new("Mop", 10)
bucket = Product.new("Bucket", 10)

cart.add(soap)
cart.add(mop)
cart.add(bucket)