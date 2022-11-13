class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.has_role?(:admin)
        scope.all
      elsif
        user.has_role?(:lawyer)
        scope.all
      else
        scope.where(user: user)
      end
    end
  end

  def update?
    user.present? and user.has_role?(:admin) or user == post.user
  end

  def destroy?
    user.present? and user.has_role?(:admin) or user == post.user
  end

  private

  def post?
    record
  end

end