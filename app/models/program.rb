class Program < ActiveRecord::Base

has_and_belongs_to_many :users
has_and_belongs_to_many :semanticcategorys
has_and_belongs_to_many :operatingsystems
has_and_belongs_to_many :developers
has_and_belongs_to_many :typesoftware
has_many :comments

end
