# == Schema Information
#
# Table name: semanticcategories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Semanticcategory < ActiveRecord::Base

has_and_belongs_to_many :programs

end
