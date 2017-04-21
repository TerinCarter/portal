# == Schema Information
#
# Table name: developers
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Developer < ActiveRecord::Base

has_and_belongs_to_many :programs

end
