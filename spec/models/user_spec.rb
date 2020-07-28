# == Schema Information
#
# Table name: users
#
#  id        :bigint           not null, primary key
#  name      :string           not null
#  user_type :string           not null
#
require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
