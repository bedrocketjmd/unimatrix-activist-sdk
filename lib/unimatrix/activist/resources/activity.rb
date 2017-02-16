module Unimatrix::Activist

  class Activity < Base
    field    :id
    field    :type_name
    field    :subject_id
    field    :subject_type
    field    :state
    field    :message
    field    :properties
    field    :completed_at
    field    :destroyed_at
    field    :created_at
    field    :updated_at

    has_many :task
  end

end
