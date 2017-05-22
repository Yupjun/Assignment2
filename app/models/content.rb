class Content < ActiveRecord::Base
    has_many :comments
    belongs_to :category
    belongs_to :user
    
    def self.search(search)
        if search
          where("#{@@meta} LIKE ?", "%#{search}%")
        else
          all
        end
    end
    
end
