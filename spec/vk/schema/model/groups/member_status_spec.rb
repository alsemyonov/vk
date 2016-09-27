# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/groups/member_status'

RSpec.describe Vk::Schema::Model::Groups::MemberStatus do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :member }
    it { is_expected.to include :user_id }
  end
end