class BeingsIssuesController < ApplicationController
  # GET /beings_issues
  # GET /beings_issues.xml
  def index
    @beings_issues = BeingsIssue.find(:all)
	# "branch_clicks" are incremented for each click on a non-navbar link 
	session[:branch_clicks] = 0
    session[:current_location] = beings_issues_path
	session[:last_location_beings] = beings_issues_path

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beings_issues }
    end
  end

  # GET /beings_issues/1
  # GET /beings_issues/1.xml
  def show
    @beings_issue = BeingsIssue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beings_issue }
    end
  end

  # GET /beings_issues/new
  # GET /beings_issues/new.xml
  def new
    @beings_issue = BeingsIssue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beings_issue }
    end
  end

  # GET /beings_issues/1/edit
  def edit
    @beings_issue = BeingsIssue.find(params[:id])
    @passions = Passion.find(:all, :conditions => {:issue_id => @beings_issue.issue.id})
  end

  # POST /beings_issues
  # POST /beings_issues.xml
  def create
    @beings_issue = BeingsIssue.new(params[:beings_issue])

    respond_to do |format|
      if @beings_issue.save
        flash[:notice] = 'Being Issue successfully created.'
        format.html { redirect_to(beings_issues_path) }
        format.xml  { render :xml => @beings_issue, :status => :created, :location => @beings_issue }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @beings_issue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beings_issues/1
  # PUT /beings_issues/1.xml
  def update
    @beings_issue = BeingsIssue.find(params[:id])

    respond_to do |format|
      if @beings_issue.update_attributes(params[:beings_issue])
        flash[:notice] = 'Being Issue was successfully updated.'
        format.html { redirect_to(beings_issues_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @beings_issue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /beings_issues/1
  # DELETE /beings_issues/1.xml
  def destroy
    @beings_issue = BeingsIssue.find(params[:id])
    @beings_issue.destroy

    respond_to do |format|
      format.html { redirect_to(beings_issues_url) }
      format.xml  { head :ok }
    end
  end
end
