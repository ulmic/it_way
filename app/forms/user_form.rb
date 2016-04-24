class UserForm < ApplicationForm
  attributes :first_name, :last_name, :patronymic, :activity_line, :email, :phone, :region, :locality, :experience, :reason, :has_i_note, :school, required: true
end
