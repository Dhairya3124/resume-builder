class Profile < ApplicationRecord
    has_many(:educations, dependent: :destroy)
    has_many(:experiences, dependent: :destroy)
    has_one_attached(:avatar)
    accepts_nested_attributes_for(:educations, reject_if: :reject_education_create, allow_destroy: true)
    accepts_nested_attributes_for(:experiences, reject_if: :reject_experience_create, allow_destroy: true)
    belongs_to :user

    def reject_education_create(education)
        education[:degree].blank? or education[:school].blank? or education[:start].blank? or education[:end].blank?
    end
    def reject_experience_create(experience)
        experience[:company].blank? or experience[:position].blank? or experience[:start].blank? or experience[:end].blank?
    end
end