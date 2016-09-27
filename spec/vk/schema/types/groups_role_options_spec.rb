# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/types/groups_role_options'

RSpec.describe Vk::Schema::Types::GroupsRoleOptions do
  subject { described_class }
  it { is_expected.to respond_to :[] }
end
