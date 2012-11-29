class EntryService
  def initialize(id)
    @entry = Entry.find(id)
  end

  def self.all
    Entry.all
  end

  def self.find(id)
    Entry.find(id)
  end

  def self.create(entry = {})
    Entry.create(entry)
  end

  def update_attributes(entry = {})
    @entry.update_attributes(entry)
    @entry
  end

  def destroy
    @entry.destroy
    @entry
  end
end
