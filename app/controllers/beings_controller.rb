class BeingsController < ApplicationController
  # GET /beings
  # GET /beings.xml
  def index
    @beings = Being.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beings }
    end
  end

  # GET /beings/1
  # GET /beings/1.xml
  def show
    @being = Being.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @being }
    end
  end

  # GET /beings/new
  # GET /beings/new.xml
  def new
    @being = Being.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @being }
    end
  end

  # GET /beings/1/edit
  def edit
    @being = Being.find(params[:id])
  end

  # POST /beings
  # POST /beings.xml
  def create
    @being = Being.new(params[:being])

    respond_to do |format|
      if @being.save
        flash[:notice] = 'Being was successfully created.'
        format.html { redirect_to(beings_groups_path) }
        format.xml  { render :xml => @being, :status => :created, :location => @being }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @being.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beings/1
  # PUT /beings/1.xml
  def update
    @being = Being.find(params[:id])

    respond_to do |format|
      if @being.update_attributes(params[:being])
        flash[:notice] = 'Being was successfully updated.'
        format.html { redirect_to(beings_groups_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @being.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /beings/1
  # DELETE /beings/1.xml
  def destroy
    @being = Being.find(params[:id])
    @being.destroy

    respond_to do |format|
      format.html { redirect_to(beings_url) }
      format.xml  { head :ok }
    end
  end
end
