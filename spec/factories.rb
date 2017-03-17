require 'faker'

FactoryGirl.define do
  factory :order do
    name "MyString"
    address "MyText"
    email "MyString"
    pay_type "MyString"
  end

  factory :product do |p|
    p.name {Faker::Beer.name}
    p.description {Faker::Beer.style}
    p.price {Faker::Commerce.price}
    p.quantity {1}
    p.image {Faker::Placeholdit.image("50x50")}
  end

  # factory :order do
  #   name "MyString"
  #   address "MyText"
  #   email "MyString"
  #   pay_type "MyString"
  # end
  factory :line_item do
    product_id 1
    cart_id 1
  end
  factory :cart do

  end

  # factory :order_item do
  #   product nil
  #   order nil
  #   unit_price 9.99
  #   quantity 1
  #   total_price 9.99
  # end

  # factory :order do
  #   subtotal {9.99}
  #   tax {9.99}
  #   shipping {9.99}
  #   total {9.99}
  #   orderstatus {1}
  # end
  #
  # factory :order_status do
  #   name {"MyString"}
  # end

  factory :category_product do
    product_id {1}
    category_id {1}
  end

  factory :category do
    name { Faker::Beer.name }
  end

  factory :user, class: User do
    admin { true }
    email { "tom@tom.com" }
    password { "tomtomtom" }

  end

end
