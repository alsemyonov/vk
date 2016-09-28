# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/member_status'

RSpec.describe Vk::API::Groups::MemberStatus do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :member }
    it { is_expected.to include :user_id }
  end
end
