class EntriesController < ApplicationController
  def index
    @entries = Entry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entries }
    end
  end

  def show
    @entry = Entry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entry }
    end
  end

  def new
    @entry = Entry.new

    respond_to do |format|
      format.html # new.html.haml
      format.json { render json: @entry }
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def create
    @entry = Entry.new(params[:entry])

    respond_to do |format|
      if @entry.save
        format.html { redirect_to action: "edit", controller: "docs" }
        format.json { render json: @entry, status: :created, location: @entry }
      else
        format.html { render action: "new" }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @entry = Entry.find(params[:id])

    respond_to do |format|
      if @entry.update_attributes(params[:entry])
        format.html { redirect_to controller: "docs", action: "edit" }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to controller: "docs", action: "edit" }
      format.json { head :no_content }
    end
  end

  def add
    @entry = Entry.new

    respond_to do |format|
      format.js
    end
  end
end
