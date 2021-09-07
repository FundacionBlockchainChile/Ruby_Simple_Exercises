module Nameable
  attr_accessor :first_name ,:last_name
  def full_name
    "#{first_name} #{last_name}"
  end
end

module ContactInfo
  attr_accessor :city, :state, :zip
  def city_state_zip
    "#{city}, #{state}, #{zip}"
  end
end
