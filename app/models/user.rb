class User < ActiveRecord::Base

belongs_to :role
has_many :comments
has_and_belongs_to_many :programs

end
