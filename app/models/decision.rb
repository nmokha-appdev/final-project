# == Schema Information
#
# Table name: decisions
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Decision < ApplicationRecord
    
    belongs_to :user
    has_many :options, :dependent => :destroy
    has_many :comments, :dependent => :destroy
    has_many :votes, :through => :options
    has_many :fans, :through => :votes, :source => :user
    
    
end
