class DocsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: @docs }
    end
  end

  def show
    @doc = Doc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doc }
    end
  end

  def new
    @doc = Doc.find(params[:id])

    respond_to do |format|
      format.html # new.html.haml
      format.json { render json: @doc }
    end
  end

  def edit
    #@doc = Doc.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @docs }
    end
  end

  def create
    @doc = Doc.find(params[:id])

    respond_to do |format|
      if @doc.save
        format.html { redirect_to @doc, notice: 'Doc was successfully created.' }
        format.json { render json: @doc, status: :created, location: @doc }
      else
        format.html { render action: "new" }
        format.json { render json: @doc.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @doc = Doc.find(params[:id])

    respond_to do |format|
      if @doc.update_attributes(params[:doc])
        format.html { redirect_to @doc, notice: 'Doc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doc.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @doc = Doc.find(params[:id])
    @doc.destroy

    respond_to do |format|
      format.html { redirect_to docs_url }
      format.json { head :no_content }
    end
  end


  def preview
    respond_to do |format|
      format.js
    end
  end
end
