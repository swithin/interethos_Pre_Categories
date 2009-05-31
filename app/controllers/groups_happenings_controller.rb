class GroupsHappeningsController < ApplicationController
  # GET /groups_happenings
  # GET /groups_happenings.xml
  def index
    @groups_happenings = GroupsHappening.find(:all)
	# "branch_clicks" are incremented for each click on a non-navbar link 
	session[:branch_clicks] = 0
    session[:current_location] = groups_happenings_path

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @groups_happenings }
    end
  end

  # GET /groups_happenings/1
  # GET /groups_happenings/1.xml
  def show
    @groups_happening = GroupsHappening.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @groups_happening }
    end
  end

  # GET /groups_happenings/new
  # GET /groups_happenings/new.xml
  def new
    @groups_happening = GroupsHappening.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @groups_happening }
    end
  end

  # GET /groups_happenings/1/edit
  def edit
    @groups_happening = GroupsHappening.find(params[:id])
  end

  # POST /groups_happenings
  # POST /groups_happenings.xml
  def create
    @groups_happening = GroupsHappening.new(params[:groups_happening])

    respond_to do |format|
      if @groups_happening.save
        flash[:notice] = 'GroupsHappening was successfully created.'
        format.html { redirect_to(groups_happenings_path) }
        format.xml  { render :xml => @groups_happening, :status => :created, :location => @groups_happening }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @groups_happening.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groups_happenings/1
  # PUT /groups_happenings/1.xml
  def update
    @groups_happening = GroupsHappening.find(params[:id])

    respond_to do |format|
      if @groups_happening.update_attributes(params[:groups_happening])
        flash[:notice] = 'GroupsHappening was successfully updated.'
        format.html { redirect_to(groups_happenings_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @groups_happening.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groups_happenings/1
  # DELETE /groups_happenings/1.xml
  def destroy
    @groups_happening = GroupsHappening.find(params[:id])
    @groups_happening.destroy

    respond_to do |format|
      format.html { redirect_to(groups_happenings_url) }
      format.xml  { head :ok }
    end
  end
end
