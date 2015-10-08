class User < ActiveRecord::Base

  def is_admin?
    self.admin
  end

end
