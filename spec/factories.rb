FactoryGirl.define do
  factory :cart do
    
  end

  factory :order_item do
    product nil
    order nil
    unit_price 9.99
    quantity 1
    total_price 9.99
  end

  factory :order do
    subtotal {9.99}
    tax {9.99}
    shipping {9.99}
    total {9.99}
    orderstatus {1}
  end

  factory :order_status do
    name {"MyString"}
  end

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

  factory :product do
    name {Faker::Beer.name}
    description {Faker::Beer.style}
    price {Faker::Commerce.price}
    quantity {1}
    image {Faker::Placeholdit.image("50x50")}
  end

end
