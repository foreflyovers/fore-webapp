class Hole < ApplicationRecord
    belongs_to :course
    validates :par,:yards, :mhcp, :whcp, presence: true

end
