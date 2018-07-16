# == Schema Information
#
# Table name: products
#
#  id          :bigint(8)        not null, primary key
#  title       :text
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  belongs_to :listing, :optional => true
  belongs_to :user, :optional => true
end
