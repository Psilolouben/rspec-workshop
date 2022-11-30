FactoryBot.define do
  factory :shop do
    name { 'PCCW Shop' }
    phone { 7860945310 }

    trait(:mstarting) do
      name { 'Marky Shop' }
    end
  end
end 
