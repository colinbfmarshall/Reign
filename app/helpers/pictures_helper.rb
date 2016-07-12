module PicturesHelper

  def only_user
    @pictures = Picture.where(user: current_user)
  end

end
