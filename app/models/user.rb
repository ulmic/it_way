class User < ActiveRecord::Base
  has_secure_password validations: false
  validates :email, presence: true,
                    email: true,
                    uniqueness: true

  extend Enumerize
  enumerize :role, in: [ :user, :admin, :author ], default: :user
  enumerize :activity_line, in: [ :programming, :design, :steel ]

  include UserScopes

  state_machine :state, initial: :unviewed do
    state :unviewed
    state :confirmed
    state :declined
    state :removed

    event :confirm do
      transition all => :confirmed
    end
    event :decline do
      transition all => :declined
    end
    event :remove do
      transition all => :removed
    end
    event :restore do
      transition :removed => :unviewed
    end
  end

  def admin?
    false
  end
end
