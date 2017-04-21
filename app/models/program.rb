# == Schema Information
#
# Table name: programs
#
#  id               :integer          not null, primary key
#  name             :string
#  version          :integer
#  test             :integer
#  dowloadLinkOne   :string
#  dowloadLinkTwo   :string
#  screenshotsLinks :string
#  rating           :integer
#  status           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Program < ActiveRecord::Base

has_and_belongs_to_many :users
has_and_belongs_to_many :semanticcategorys
has_and_belongs_to_many :operatingsystems
has_and_belongs_to_many :developers
has_and_belongs_to_many :typesoftware
has_many :comments

end
