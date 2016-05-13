class Admin < User
  extend Enumerize
  enumerize :role, in: [ :su, :datamanager, :coordinator ], default: :su

  def admin?
    true
  end
end
