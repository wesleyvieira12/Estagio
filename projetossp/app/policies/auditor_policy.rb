class AuditorPolicy < ApplicationPolicy
  class Scope < Scope
    
    def index?
      user.permission_segment? :auditor, :index
    end
    
    def show?
      user.permission_segment? :auditor, :show
    end
    
    def resolve
      scope
    end
  end
end
