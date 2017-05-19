module Unimatrix::Activist

  class AnalystReportCreationTask < Task
    field       :name
    field       :starts_at
    field       :ends_at
    field       :metrics
    field       :dimensions
    field       :rule_ids
    field       :csv_location
  end

end
