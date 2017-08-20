class InquiryPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    organizer?
  end

  def create?
    true
  end

  def update?
    organizer?
  end

  def destroy?
    organizer?
  end

  class Scope < Scope
    def user_roles
      joins_clause=["left join Roles r on r.mname='Inquiry'",
                    "r.mid=Inquiries.id",
                    "r.user_id #{user_criteria}"].join(" and ")
      scope.select("Inquiries.*, r.role_name")
           .joins(joins_clause)
           .where("r.role_name"=>[Role::ORGANIZER])
    end

    def resolve
      user_roles 
    end
  end
end
