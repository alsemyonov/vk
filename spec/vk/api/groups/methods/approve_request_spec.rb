# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/methods/approve_request'

RSpec.describe Vk::API::Groups::Methods::ApproveRequest do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :user_id }
  end
end
