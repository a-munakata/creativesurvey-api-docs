# encoding: utf-8

class DocsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      #format.json { render json: @docs }
    end
  end
end
