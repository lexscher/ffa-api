class FriendsController < ApplicationController

  def index
    @friends = Friend.all
    render json: FriendSerializer.new(@friends)
  end

  def show
    friend = Friend.find(params[:id])

    render json: FriendSerializer.new(friend)
  end

  private

  def find_friend 
    @friend = Friend.find(params[:id])
  end


end
