class PostPolicy < ApplicationPolicy

  attr_reader :user, :post

  def initialize(user, post)
   
    @user = user
    @post = post
  end

  def update?
    user && user.admin?
    # user.admin? if !user.nil?
  end


  def destroy?
    user.admin?
  end

  
end