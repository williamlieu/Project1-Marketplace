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
end
