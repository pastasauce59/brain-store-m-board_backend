class IdeasController < ApplicationController

skip_before_action :logged_in?, only: [:index, :create, :update]

def index
    ideas = Idea.all
    render json: ideas
end

def create
    idea = Idea.new(idea_params)
    if idea.valid?
        idea.save
        render json: idea, status: 201
    else
        render json: {errors: idea.errors.full_messages}, status: 422
        end
    
end

def update
    idea = Idea.find_by(id: params[:id])
    idea.assign_attributes(idea_params)
    if idea.valid?
        idea.save
    render json: idea
    else
        render json: {errors: idea.errors.full_messages}
    end
end

def destroy
    idea = Idea.find_by(id: params[:id])
    if idea
        idea.destroy
        render json: {message: "Idea deleted."}
    else
        render json: {message: "Idea not found."}, status: 404
    end
end

private

def idea_params
    params.permit(:title, :desc, :private, :user_id)
end

end
