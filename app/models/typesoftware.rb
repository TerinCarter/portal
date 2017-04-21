# == Schema Information
#
# Table name: typesoftwares
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Typesoftware < ActiveRecord::Base

has_and_belongs_to_many :programs

end
