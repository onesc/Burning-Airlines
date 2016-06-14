class Flight < ActiveRecord::Base
  validates :number,:from, :to, :date,:plane_id, presence: true
end
