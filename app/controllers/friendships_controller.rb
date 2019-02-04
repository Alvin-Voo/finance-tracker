class FriendshipsController < ApplicationController

  def destroy
    puts params[:id]
    current_user.friendships.find_by(friend_id: params[:id]).destroy
    flash[:notice] = "Friend was succesfully removed"
    redirect_to my_friends_path
  end

end
