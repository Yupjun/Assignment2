class Search < ActiveRecord::Base
  def self.search(search)
    if search
      where("#{@@meta} LIKE ?","%#{search}%") 
    else
      nil
    end
  end
end
