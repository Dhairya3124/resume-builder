class ProjectsController < ApplicationController
    before_action :logged_in_user, only: [:new]
    def new
        exp = Experience.find_by(id: params[:experience_id]).projects.create
        flash[:success] = "Project added."
        redirect_to edit_url
    end

end