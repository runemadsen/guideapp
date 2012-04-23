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
  
  def belongs_to?(logged_in_user)
    logged_in_user == guide.user
  end
  
end
