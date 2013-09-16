class Player < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :signings
	has_many :teams, through: :signings
	has_many :leadings, class_name: "Team"
	def close_account
		is_active = false
		save
	end
end
