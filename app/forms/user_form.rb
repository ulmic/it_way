class UserForm < ApplicationForm
  attributes :first_name, :last_name, :patronymic, :activity_line, :email, :phone, :region, :municipality, :locality, :experience, :reason, :answer, :has_i_note, required: true
end
