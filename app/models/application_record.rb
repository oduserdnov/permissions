class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def deal_with_uid_etc
    # some code here to deal with UID generation and assignment per children models
    # probably add one or few more methods to deal with UID checks, validations etc. from one place [here]
  end
end
