class BeingsHappeningsController < ApplicationController
  # GET /beings_happenings
  # GET /beings_happenings.xml
  def index
    @beings_happenings = BeingsHappening.find(:all)
	# "branch_clicks" are incremented for each click on a non-navbar link 
	session[:branch_clicks] = 0
    session[:current_location] = beings_happenings_path
	session[:last_location_beings] = beings_happenings_path
	
    def being  
        @beings.find(:id)
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beings_happenings }
    end
  end

  # GET /beings_happenings/1
  # GET /beings_happenings/1.xml
  def show
    @beings_happening = BeingsHappening.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beings_happening }
    end
  end

  # GET /beings_happenings/new
  # GET /beings_happenings/new.xml
  def new
    @beings_happening = BeingsHappening.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beings_happening }
    end
  end

  # GET /beings_happenings/1/edit
  def edit
    @beings_happening = BeingsHappening.find(params[:id])
  end

  # POST /beings_happenings
  # POST /beings_happenings.xml
  def create
    @beings_happening = BeingsHappening.new(params[:beings_happening])

    respond_to do |format|
      if @beings_happening.save
        flash[:notice] = 'BeingsHappening was successfully created.'
        format.html { redirect_to(beings_happenings_path) }
        format.xml  { render :xml => @beings_happening, :status => :created, :location => @beings_happening }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @beings_happening.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beings_happenings/1
  # PUT /beings_happenings/1.xml
  def update
    @beings_happening = BeingsHappening.find(params[:id])

    respond_to do |format|
      if @beings_happening.update_attributes(params[:beings_happening])
        flash[:notice] = 'BeingsHappening was successfully updated.'
        format.html { redirect_to(beings_happenings_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @beings_happening.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /beings_happenings/1
  # DELETE /beings_happenings/1.xml
  def destroy
    @beings_happening = BeingsHappening.find(params[:id])
    @beings_happening.destroy

    respond_to do |format|
      format.html { redirect_to(beings_happenings_url) }
      format.xml  { head :ok }
    end
  end
end
