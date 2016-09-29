# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/methods/get_catalog'

RSpec.describe Vk::API::Groups::Methods::GetCatalog do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :category_id }
    it { is_expected.to include :subcategory_id }
  end
end
