class List < ApplicationRecord

    belong_to :user

    validates :title, length: { in: 1..255 }
    
end
