FactoryGirl.define do
  factory :category_product do

  end

  factory :category do

  end

  factory :user do
    email {"tom@tom.com"}
    password {"tomtomtom"}
    admin {true}
  end

  factory :product do
    name {Faker::Beer.name}
    description {Faker::Beer.style}
    price {Faker::Commerce.price}
    quantity {1}
    image {Faker::Placeholdit.image("50x50")}
  end

end
