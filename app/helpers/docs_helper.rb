module DocsHelper
  def categories
    Category.unscoped
  end

  def entries
    Entry.unscoped
  end

  def variables
    Variable.unscoped
  end

  def find_one_entry(id)
    Entry.find_or_initialize_by_id(id)
  end

  def find_one_category(id)
    Category.find_or_initialize_by_id(id)
  end

end
