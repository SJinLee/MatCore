class ACategoriesController < ApplicationController
  # GET /a_categories
  # GET /a_categories.json
  def index
    @a_categories = ACategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_categories }
    end
  end

  # GET /a_categories/1
  # GET /a_categories/1.json
  def show
    @a_category = ACategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_category }
    end
  end

  # GET /a_categories/new
  # GET /a_categories/new.json
  def new
    @a_category = ACategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_category }
    end
  end

  # GET /a_categories/1/edit
  def edit
    @a_category = ACategory.find(params[:id])
  end

  # POST /a_categories
  # POST /a_categories.json
  def create
    @a_category = ACategory.new(params[:a_category])

    respond_to do |format|
      if @a_category.save
        format.html { redirect_to @a_category, notice: 'A category was successfully created.' }
        format.json { render json: @a_category, status: :created, location: @a_category }
      else
        format.html { render action: "new" }
        format.json { render json: @a_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /a_categories/1
  # PUT /a_categories/1.json
  def update
    @a_category = ACategory.find(params[:id])

    respond_to do |format|
      if @a_category.update_attributes(params[:a_category])
        format.html { redirect_to @a_category, notice: 'A category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_categories/1
  # DELETE /a_categories/1.json
  def destroy
    @a_category = ACategory.find(params[:id])
    @a_category.destroy

    respond_to do |format|
      format.html { redirect_to a_categories_url }
      format.json { head :no_content }
    end
  end
end
