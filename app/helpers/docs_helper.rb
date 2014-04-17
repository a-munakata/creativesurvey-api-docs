module DocsHelper
  def categories
    Category.has_docs
  end

  def docs
    Doc.unscoped
  end

  def find_one_category(id)
    Category.find_or_initialize_by_id(id)
  end

end
