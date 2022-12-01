FactoryBot.define do
  factory :shop do
    name { 'PCCW Shop' }
    sequence :phone do |n|
      "7860945310#{n}"
    end

    trait(:mstarting) do
      name { 'Marky Shop' }
    end

    transient do
      industry { '' }
    end

    after(:create) do |shop, evaluator|
      shop.products.create!(industry: evaluator.industry)
    end
  end
end 
