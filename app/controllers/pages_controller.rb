class PagesController < ApplicationController
  def about
    @members = ["Maxime", "Arthur", "Emily"]
  end

  def contact
    @members = ["Maxime", "Arthur", "Emily"]
    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end

  def home
  end
end
