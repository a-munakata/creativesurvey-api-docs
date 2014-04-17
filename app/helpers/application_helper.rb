module ApplicationHelper
  def markdown(text)
    Kramdown::Document.new(text.gsub("\r", "")).to_html.html_safe
  end
end
