# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  decision_id :integer
#  body        :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Comment < ApplicationRecord

validates :user_id, :presence => true
validates :decision_id, :presence => true
validates :body, :presence => true
    
belongs_to :user
belongs_to :decision

end
