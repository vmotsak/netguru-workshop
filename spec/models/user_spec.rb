# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  firsname               :string(255)
#  firstname              :string(255)
#  lastname               :string(255)
#  admin                  :boolean
#

require 'spec_helper'

describe User do
  it { should validate_presence_of :firstname }
  it { should validate_presence_of :lastname }

  it "by default isn't admin" do
    expect(User.new).to_not be_admin
  end
end
