class Child < ActiveRecord::Base
  belongs_to :family
  before_save :analyze_crkcode

  GENDERS_ARRAY = [["Male", "male"], ["Female", "female"]]
  GENDERS_MAP = Hash[GENDERS_ARRAY.map{|a| [a[1], a[0]]}]
  STATUSES_ARRAY  = [["In Program", "in_program"],["Out of Program", "out_of_program"],["Graduate", "graduate"]]
  STATUSES_MAP = Hash[STATUSES_ARRAY.map{|a| [a[1], a[0]]}]

  def analyze_crkcode
    if self.code.present?
      match_data = /^([a-zA-Z]*)([0-9]*)$/.match(self.code)
      if match_data.size == 3
        Rails.logger.debug "derived_community: #{match_data[1]}, derived_number: #{match_data[2]}"
        self.derived_community = match_data[1]
        self.derived_number = match_data[2].to_i
      end
    else
      self.derived_community = nil
      self.derived_number = nil
    end
  end
end
