class PassionsController < ApplicationController
  # GET /passions
  # GET /passions.xml
  def index
    @passions = Passion.find(:all)
    @issues = Issue.find(:all)
	# "branch_clicks" are incremented for each click on a non-navbar link 
	session[:branch_clicks] = 0
    session[:current_location] = passions_path

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @passions }
    end
  end

  # GET /passions/1
  # GET /passions/1.xml
  def show
    @passion = Passion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @passion }
    end
  end

  # GET /passions/new
  # GET /passions/new.xml
  def new
    @passion = Passion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @passion }
    end
  end

  # GET /passions/1/edit
  def edit
    @passion = Passion.find(params[:id])
  end

  # POST /passions
  # POST /passions.xml
  def create
    @passion = Passion.new(params[:passion])

    respond_to do |format|
      if @passion.save
        flash[:notice] = 'Passion was successfully created.'
        format.html { redirect_to(passions_path) }
        format.xml  { render :xml => @passion, :status => :created, :location => @passion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @passion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /passions/1
  # PUT /passions/1.xml
  def update
    @passion = Passion.find(params[:id])

    respond_to do |format|
      if @passion.update_attributes(params[:passion])
        flash[:notice] = 'Passion was successfully updated.'
        format.html { redirect_to(passions_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @passion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /passions/1
  # DELETE /passions/1.xml
  def destroy
    @passion = Passion.find(params[:id])
    @passion.destroy

    respond_to do |format|
      format.html { redirect_to(passions_url) }
      format.xml  { head :ok }
    end
  end
end
