class User < ActiveRecord::Base
  
  #user's tag list as follow
  
  #temperament(气质) lolita(萝莉) yujie(御姐) pure(清纯) material(拜金) cute(可爱) partysu(小清新)
  
  acts_as_taggable
  acts_as_taggable_on :skills, :interests
  acts_as_taggable_on :self_type, :care_type
  
  scope :by_update_date, order("updated_at DESC")
  
  rolify :before_add => :before_add_method
  
  before_save :set_default_rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_one   :user_profile
  has_many  :user_resources
  
  mount_uploader :avatar,  MediaUploader
  
  accepts_nested_attributes_for :user_profile
  accepts_nested_attributes_for :user_resources
  
  
  def before_add_method(role)
    # todo
  end
  
  # def role
  #   return "default role"
  # end
  
  private
  
  def set_default_rolify
    self.add_role(:normal)
  end
end
