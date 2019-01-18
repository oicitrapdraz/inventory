class Ability
  include CanCan::Ability

  def initialize(user)
  	can :read, ActiveAdmin::Page, name: "Dashboard"

    if user.super_admin?
      can :manage, Company
    else
      can :manage, Company, id: user.id
      # Esto se traduce a si company.id es igual a user.id (user es current user) entonces te doy permiso

      can :manage, Branch, company: { id: user.id }
      # Esto se traduce a si branch.company.id es igual a user.id (user es current user) entonces te doy permiso

      can :manage, Worker, branch: { company: { id: user.id } }
      # Esto se traduce a si work.branch.company.id es igual a user.id (user es current user) entonces te doy permiso

      can :manage, Item, branch: { company: { id: user.id } }
      # Esto se traduce a si item.branch.company.id es igual a user.id (user es current user) entonces te doy permiso
    end
  end
end
