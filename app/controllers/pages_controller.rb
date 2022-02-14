# handles user actions
class PagesController < ApplicationController
  def about
    # you dont have access to @members
    # render 'about.html.erb'
  end

  def contact
    # when they're not searching
    @members = %w[doug sylvain sasha yann trouni noemi]
    if params[:member].present?
      # when they are searching (we need to filter with the params)
      @members = @members.select do |member|
        member.start_with?(params[:member])
      end
    end
    # render 'contact.html.erb'
  end

  def home
  end

  # def answer
  #   if params[:question]
  #   @answer = "whatever the coach says"
  # end
end
