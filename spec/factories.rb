FactoryGirl.define do
  factory :category_product do
    product_id {1}
    category_id {1}
  end

  factory :category do
    name { Faker::Beer.name }
  end

  factory :user do
    email {"tom@tom.com"}
    password {"tomtomtom"}
  end

  factory :product do
    name {Faker::Beer.name}
    description {Faker::Beer.style}
    price {Faker::Commerce.price}
    quantity {1}
    image {Faker::Placeholdit.image("50x50")}
  end

end
