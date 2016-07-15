FactoryGirl.define do
  factory :order_item do
    product nil
    order nil
    unit_price "9.99"
    quantity 1
    total_price "9.99"
  end
  factory :order do
    subtotal "9.99"
    tax "9.99"
    shipping "9.99"
    total "9.99"
    order_status nil
  end
  factory :order_status do
    name "MyString"
  end
  factory :category_product do
    
  end
  factory :category do
    
  end
  factory :user do
    
  end
  factory :product do
    name {Faker::Beer.name}
    description {Faker::Beer.style}
    price {Faker::Commerce.price}
    quantity {1}
    image {Faker::Placeholdit.image("50x50")}
  end
end
