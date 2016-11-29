class Ability
  include CanCan::Ability

  def initialize(user)
    if user && user.admin?
      can :manage, :all
    elsif user
      can :edit, User do |usr|
        user == usr
      end
      can :update, Skill do |skill|
        skill.user == user
      end
      can :update, Employ do |employ|
        employ.user == user
      end
      can :update, Education do |education|
        education.user == user
      end
      can :update, Course do |course|
        course.user == user
      end
      can :create, Employ
      can :create, Education
      can :create, Course
      can :create, Language
    else
    end
  end
end
