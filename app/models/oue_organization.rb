class OueOrganization < ApplicationRecord
    has_many :bank
    has_many :worker
end
