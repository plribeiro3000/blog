module EntryService
  def all
    Entry.all
  end

  def build
    Entry.new
  end

  def find(id)
    Entry.find(id)
  end

  def generate(attributes = {})
    entry = Entry.new(attributes)
    entry.user = current_user
    entry.save
    entry
  end

  def modify(id, attributes = {})
    entry = find(id)
    entry.update_attributes(attributes)
    entry
  end

  def delete(id)
    entry = find(id)
    entry.destroy
    entry
  end
end
