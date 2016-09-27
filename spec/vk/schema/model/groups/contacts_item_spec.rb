# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/groups/contacts_item'

RSpec.describe Vk::Schema::Model::Groups::ContactsItem do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :desc }
    it { is_expected.to include :email }
    it { is_expected.to include :phone }
  end
end
