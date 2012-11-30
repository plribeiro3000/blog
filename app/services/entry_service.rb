module EntryService
  def self.index
    Entry.all
  end

  def self.new
    Entry.new
  end

  def self.find(id)
    Entry.find(id)
  end

  def self.create(entry = {})
    Entry.create(entry)
  end

  def self.update(id, entry = {})
    entry = find(id)
    entry.update_attributes(entry)
    entry
  end

  def self.destroy(id)
    entry = find(id)
    entry.destroy
    entry
  end
end
