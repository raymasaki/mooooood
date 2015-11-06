class Mood < ActiveRecord::Base
  belongs_to :user
  
  # validates :mood, presence: true

end
