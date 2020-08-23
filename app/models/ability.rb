# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    can :read, Post
    if user
      can [:new, :create], Post
      can [:destroy], Post, user_id: user.id
      # can :manage, Post, user_id: user.id
    end
  end
end
