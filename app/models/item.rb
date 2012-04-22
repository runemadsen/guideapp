class Item < ActiveRecord::Base
  belongs_to :guide
  
  def lat
    address ? address.split(",").first : ""
  end
  
  def lon
    address ? address.split(",").last : ""
  end
  
  def filled?
    not name.nil?
  end
  
end
