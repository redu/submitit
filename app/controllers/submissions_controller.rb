class SubmissionsController < ApplicationController

  before_filter :login_required

  respond_to :html

  def new
    @submission = Submission.new

    respond_with @submission
  end

  def show
    @submission = Submission.find(params[:id])
    respond_with @submission
  end

  def create
    @submission = Submission.create(params[:submission]) do |s|
      s.user = current_user
      s.space = current_space
    end

    respond_with @submission
  end

  def edit
    @submission = Submission.find(params[:id])
    respond_with @submission
  end

  def index
    space = Space.find(params[:space_id])
    @submissions = space.submissions.where(:user_id => current_user)
    respond_with @submissions
  end

  protected

  def login_required
    unless current_user
      redirect_to '/auth/redu'
    end
  end
end
