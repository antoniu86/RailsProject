class User < ActiveRecord::Base
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :password	

  def is_admin?
    user_type=='admin'
  end

  def is_simple_user?
    user_type==nil
  end

  def is_sysadmin?
    user_type=='sysadmin'
  end

  def is_moderator?
    user_type=='moderator'
  end
end
