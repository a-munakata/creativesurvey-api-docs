# encoding: utf-8

class DocsController < ApplicationController
  def index
    respond_to do |format|
      format.html
    end
  end

  def spawn
    File.write(
      "#{Rails.root}/public/source/index.html",
      render_to_string
    )
  end
end
