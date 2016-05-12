FactoryGirl.define do
  factory :user do
    activity_line { User.activity_line.values.sample }
    phone
    region { 'Ульяновская область' }
    locality { generate :string }
    experience { generate :string }
    reason { generate :string }
    has_i_note { generate :string }
    school { generate :string }
    group { generate :string }
    birth_date { DateTime.now - 18.years }
    first_name { generate :name }
    last_name { generate :name }
    patronymic { generate :name }
    email
    state { User.state_machines[:state].states.map(&:name).first.to_s }
    role { User.role.values.first }
  end
end
