class HappeningsIssuesController < ApplicationController
  # GET /happenings_issues
  # GET /happenings_issues.xml
  def index
    @happenings_issues = HappeningsIssue.find(:all)
	# "branch_clicks" are incremented for each click on a non-navbar link 
	session[:branch_clicks] = 0
    session[:current_location] = happenings_issues_path

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @happenings_issues }
    end
  end

  # GET /happenings_issues/1
  # GET /happenings_issues/1.xml
  def show
    @happenings_issue = HappeningsIssue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @happenings_issue }
    end
  end

  # GET /happenings_issues/new
  # GET /happenings_issues/new.xml
  def new
    @happenings_issue = HappeningsIssue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @happenings_issue }
    end
  end

  # GET /happenings_issues/1/edit
  def edit
    @happenings_issue = HappeningsIssue.find(params[:id])
  end

  # POST /happenings_issues
  # POST /happenings_issues.xml
  def create
    @happenings_issue = HappeningsIssue.new(params[:happenings_issue])

    respond_to do |format|
      if @happenings_issue.save
        flash[:notice] = 'HappeningsIssue was successfully created.'
        format.html { redirect_to(happenings_issues_path) }
        format.xml  { render :xml => @happenings_issue, :status => :created, :location => @happenings_issue }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @happenings_issue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /happenings_issues/1
  # PUT /happenings_issues/1.xml
  def update
    @happenings_issue = HappeningsIssue.find(params[:id])

    respond_to do |format|
      if @happenings_issue.update_attributes(params[:happenings_issue])
        flash[:notice] = 'HappeningsIssue was successfully updated.'
        format.html { redirect_to(happenings_issues_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @happenings_issue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /happenings_issues/1
  # DELETE /happenings_issues/1.xml
  def destroy
    @happenings_issue = HappeningsIssue.find(params[:id])
    @happenings_issue.destroy

    respond_to do |format|
      format.html { redirect_to(happenings_issues_path) }
      format.xml  { head :ok }
    end
  end
end
