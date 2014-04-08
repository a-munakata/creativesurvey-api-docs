class VariablesController < ApplicationController

  def index
    @variables = Variable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @variables }
    end
  end

  def show
    @variable = Variable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @variable }
    end
  end

  def new
    @variable = Variable.new

    respond_to do |format|
      format.html { redirect_to action: "edit", controller: "docs" }
      format.json { render json: @variable }
    end
  end

  def edit
    @variable = Variable.find(params[:id])
  end

  def create
    @variable = Variable.new(params[:variable])

    respond_to do |format|
      if @variable.save
        format.html { redirect_to action: "edit", controller: "docs" }
        format.json { render json: @variable, status: :created, location: @variable }
      else
        format.html { redirect_to action: "edit", controller: "docs" }
        format.json { render json: @variable.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @variable = Variable.find(params[:id])

    respond_to do |format|
      if @variable.update_attributes(params[:variable])
        format.html { redirect_to action: "edit", controller: "docs" }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @variable.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @variable = Variable.find(params[:id])
    @variable.destroy

    respond_to do |format|
      format.html { redirect_to action: "edit", controller: "docs" }
      format.json { head :no_content }
    end
  end


  def add
    @variable = Variable.new

    respond_to do |format|
     format.js
    end
  end

end
