class User < ActiveRecord::Base
  has_many :listings

  def name
    "#{first_name} #{last_name}"
  end
end
