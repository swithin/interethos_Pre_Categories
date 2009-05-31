class RealmsController < ApplicationController
  # GET /realms
  # GET /realms.xml
    
  def index
    @realms = Realm.find(:all)
	# "branch_clicks" are incremented for each click on a non-navbar link 
	session[:branch_clicks] = 0
    session[:current_location] = realms_path

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @realms }
    end
  end

  # GET /realms/1
  # GET /realms/1.xml
  def show
    @realm = Realm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @realm }
    end
  end

  # GET /realms/new
  # GET /realms/new.xml
  def new
    @realm = Realm.new
    @parent_id = params[:parent_id].to_i
    session[:uroot_id] = params[:uroot_id].to_i

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @realm }
    end
  end

  # GET /realms/1/edit
  def edit
    @realm = Realm.find(params[:id])
    session[:uroot_id] = params[:uroot_id].to_i
  end

  # POST /realms
  # POST /realms.xml
  def create
    @realm = Realm.new(params[:realm])

    respond_to do |format|
      if @realm.save
        flash[:notice] = 'Realm was successfully created.'
        if params[:add_similar]
          format.html { redirect_to(new_realm_path(:parent_id => @realm.parent_id)) }
        else
          format.html { redirect_to(:controller => 'realms', :action => 'index') }
        end
        format.xml  { render :xml => @realm, :status => :created, :location => @realm }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @realm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /realms/1
  # PUT /realms/1.xml
  def update
    @realm = Realm.find(params[:id])

    respond_to do |format|
      if @realm.update_attributes(params[:realm])
        flash[:notice] = 'Realm was successfully updated.'
        format.html { redirect_to(:controller => 'realms', :action => 'index') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @realm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /realms/1
  # DELETE /realms/1.xml
  def destroy
    @realm = Realm.find(params[:id])
    @realm.destroy
    # did not have time to add the "...&uroot_id=#" variable to the "destroy" links.
    # session[:uroot_id] = params[:uroot_id].to_i

    respond_to do |format|
      format.html { redirect_to(realms_url) }
      format.xml  { head :ok }
    end
  end
end
