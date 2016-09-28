# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/role_options'

RSpec.describe Vk::API::Groups::RoleOptions do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
