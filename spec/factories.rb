FactoryGirl.define do
  factory :product do
    name {Faker::Beer.name}
    description {Faker::Beer.style}
    price {Faker::Commerce.price}
    image {Faker::Placeholdit.image("50x50")}
  end
end
