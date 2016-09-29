# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/methods/get_members'

RSpec.describe Vk::API::Groups::Methods::GetMembers do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :sort }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :fields }
    it { is_expected.to include :filter }
  end
end
