# == Schema Information
#
# Table name: listings
#
#  id         :bigint(8)        not null, primary key
#  price      :integer
#  location   :text
#  category   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Listing < ApplicationRecord
  belongs_to :user, optional :true
end
