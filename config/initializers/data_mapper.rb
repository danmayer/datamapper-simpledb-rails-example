class Dictionary
  alias count size
end

module DataMapper::Resource
  alias new_record? new?

  def to_param
    key = self.key
    key.to_s if key.size == 1
  end
end
