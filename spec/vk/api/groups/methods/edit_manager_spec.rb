# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/methods/edit_manager'

RSpec.describe Vk::API::Groups::Methods::EditManager do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :user_id }
    it { is_expected.to include :role }
    it { is_expected.to include :is_contact }
    it { is_expected.to include :contact_position }
    it { is_expected.to include :contact_phone }
    it { is_expected.to include :contact_email }
  end
end
