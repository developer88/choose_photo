class Leader < ActiveRecord::Base

  def self.store(image)
    leader = Leader.find_or_create_by(path: image)
    leader.count += 1
    leader.save
  end

end
