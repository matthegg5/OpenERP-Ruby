class Part < ApplicationRecord
  self.primary_key = [ :CompanyId, :PartNum ]
end
