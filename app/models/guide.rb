class Guide < ActiveRecord::Base
  belongs_to :user
  has_many :items, :order => 'id DESC'
  accepts_nested_attributes_for :items
  
  def belongs_to?(logged_in_user)
    logged_in_user == user
  end
end
