class CustomerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true if user.present? 
  end

  def show?
    return true if user.present? 
  end

  def create?
    return true if user.present? 
  end

  def new?
    create?
  end

  def update?
    return true if user.present? 
  end

  def edit?
    update?
  end

  def destroy?
    return true if user.present? 
  end



end
