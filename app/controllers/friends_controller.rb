class FriendsController < ApplicationController
  before_action :find_friend, only: [:show, :destroy]

  def index
    @friends = Friend.all
    render json: FriendSerializer.new(@friends)
  end

  def show
    render json: FriendSerializer.new(@friend)
  end

  def create
    @friend = Friend.create(friend_params)
    if @friend.valid? 
      render json: @friend
    else
      render json: { errors: @friend.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @friend.destroy
  end

  private

  def find_friend 
    @friend = Friend.find(params[:id])
  end

  def friend_params
    params.permit(:friender_id, :friendee_id)
  end

end
