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

validates :nickname, presence: true
validates :password, presence: true
validates :email, presence: true

belongs_to :role
has_many :comments
has_and_belongs_to_many :programs



end
