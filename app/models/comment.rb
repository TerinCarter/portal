# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base

validates :text, presence: true,
                  :length => { :maximum => 150 }

belongs_to :user
belongs_to :program

end
