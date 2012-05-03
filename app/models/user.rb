class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  has_many :guides
  
  def guide(guide_id)
    guide = Guide.find(guide_id)
    if guide.public_edit
      return guide
    else
      return guides.find(guide_id) || not_found
    end
  end
  
  def not_found
    raise ActiveRecord::RecordNotFound, "Restricted Access"
  end
  
end
