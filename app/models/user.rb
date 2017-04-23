# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  nickname   :string
#  password   :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base

email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates :nickname, presence: true,
                     :length => { :maximum => 50 },
		     :uniqueness   => true
validates :password, presence: true,
 		     :length => { :maximum => 20 }
validates :email, presence: true,
		  :format => { :with => email_regex },
		  :uniqueness   => true                    

belongs_to :role
has_many :comments
has_and_belongs_to_many :programs



end
