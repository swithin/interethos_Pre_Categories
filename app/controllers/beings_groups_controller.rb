class BeingsGroupsController < ApplicationController
  # GET /beings_groups
  # GET /beings_groups.xml
  
  require 'cgi'
  
  def index
    @beings_groups = BeingsGroup.find(:all)
	# "branch_clicks" are incremented for each click on a non-navbar link 
	session[:branch_clicks] = 0
    session[:current_location] = beings_groups_path
	session[:last_location_beings] = beings_groups_path

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beings_groups }
    end
  end

  # GET /beings_groups/1
  # GET /beings_groups/1.xml
  def show
    @beings_group = BeingsGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beings_group }
    end
  end

  # GET /beings_groups/new
  # GET /beings_groups/new.xml
  def new
    @beings_group = BeingsGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beings_group }
    end
  end

  # GET /beings_groups/1/edit
  def edit
    @beings_group = BeingsGroup.find(params[:id])
  end

  # POST /beings_groups
  # POST /beings_groups.xml
  def create
    @beings_group = BeingsGroup.new(params[:beings_group])

    respond_to do |format|
      if @beings_group.save
        flash[:notice] = 'BeingsGroup was successfully created.'
        format.html { redirect_to(beings_groups_path) }
        format.xml  { render :xml => @beings_group, :status => :created, :location => @beings_group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @beings_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beings_groups/1
  # PUT /beings_groups/1.xml
  def update
    @beings_group = BeingsGroup.find(params[:id])

    respond_to do |format|
      if @beings_group.update_attributes(params[:beings_group])
        flash[:notice] = 'BeingsGroup was successfully updated.'
        format.html { redirect_to(beings_groups_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @beings_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /beings_groups/1
  # DELETE /beings_groups/1.xml
  def destroy
    @beings_group = BeingsGroup.find(params[:id])
    @beings_group.destroy

    respond_to do |format|
      format.html { redirect_to(beings_groups_url) }
      format.xml  { head :ok }
    end
  end
end
