module ApplicationHelper
  def markdown(text)
    Kramdown::Document.new(text).to_html.gsub("\n", "\r").html_safe
  end
end
