FactoryBot.define do
  factory :shop do
    name { 'PCCW Shop' }
    sequence :phone do |n|
      "7860945310#{n}"
    end

    trait(:mstarting) do
      name { 'Marky Shop' }
    end
  end
end 
