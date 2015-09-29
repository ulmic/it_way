FactoryGirl.define do
  factory :user do
    first_name { generate :name }
    last_name { generate :name }
    patronymic { generate :name }
    email
    state { User.state_machines[:state].states.map(&:name).first.to_s }
    role { User.role.values.first }
  end
end
