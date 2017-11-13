module TrashBin
  module ClassMethods
    def trash_bin
      self.where(trash:true)
    end

    def available
      self.where(trash: false)
    end
  end

  def put_to_trash
    unless self.trash
      update(trash:true)
    else
      destroy
    end
  end

  def restore
    update(trash:false)
  end

  def self.included(receiver)
    receiver.extend(ClassMethods)
  end

end