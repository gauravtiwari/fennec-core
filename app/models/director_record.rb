class DirectorRecord < ActiveRecord::Base
  include TrashBin
  self.abstract_class = true

  #def name=(val)
  #  write_attribute(:name, val.downcase)
  #end

  class << self
    def to_options
      self.where(trash: false).collect do |item|
        {
            id: item[:id],
            value: item[:name]
        }
      end
    end

    def to_names
      self.available.collect do |item|
        item[:name]
      end
    end
  end
end