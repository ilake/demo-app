# == Schema Information
#
# Table name: users
#
#  id        :bigint           not null, primary key
#  name      :string           not null
#  user_type :string           not null
#
class User < ApplicationRecord
  DEVELOPER_TYPE = "developer".freeze
  NORMAL_TYPE = "normal".freeze

  has_one :wallet
end
