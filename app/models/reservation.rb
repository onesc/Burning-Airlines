class Reservation < ActiveRecord::Base
  belongs_to :user, class_name: 'Casein::AdminUser'
  belongs_to :flight
end
