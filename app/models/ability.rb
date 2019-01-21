class Ability
  include CanCan::Ability

  def initialize(user)
  	can :read, ActiveAdmin::Page, name: "Dashboard"

    if user.super_admin?
      can :manage, Company
    else
      alias_action :read, :update, :destroy, to: :rud

      can :rud, Company, id: user.id

      can :create, Branch
      can :rud, Branch, company: { id: user.id }

      can :create, Worker
      can :rud, Worker, branch: { company: { id: user.id } }

      can :create, Item
      can :rud, Item, branch: { company: { id: user.id } }
    end
  end
end
