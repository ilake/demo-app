# == Schema Information
#
# Table name: users
#
#  id        :bigint           not null, primary key
#  name      :string           not null
#  user_type :string           not null
#
class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes 
end
