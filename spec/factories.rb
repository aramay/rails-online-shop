FactoryGirl define do
  factory :product do
    name {Faker::Beer.name}
    price {Faker::Commerce.price}
    description {Faker::Beer.style}
    image {Faker::Placeholdit.image("50x50")}
  end
end
