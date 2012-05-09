class Restaurant < ActiveRecord::Base
  attr_accessible :address, :city, :description, :name, :phone, :state, :website, :zipcode, :category, :hours_monday_open, :hours_monday_close, :hours_tuesday_open, :hours_tuesday_close, 
  :hours_wednesday_open, :hours_wednesday_close, :hours_thursday_open, :hours_thursday_close, :hours_friday_open, :hours_friday_close, :hours_saturday_open, :hours_saturday_close, 
  :hours_sunday_open, :hours_sunday_close, :accepts_cc, :parking, :takes_reservations, :delivery, :take_out, :waiter_service, :outdoor_seating, :wifi, :alcohol, :latitude, :longitude
  validates :name,	:presence => true

  def address_full
    $str = "#{address} ,#{city} ,#{state} #{zipcode}"
  end

  geocoded_by :address_full
  after_validation :geocode, :if => :address_changed?

  def url_full
  	"#{city}_#{state}_#{zipcode}_#{name}"
  end

  has_permalink :url_full
end


