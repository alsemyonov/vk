# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/group_category_full'

RSpec.describe Vk::API::Groups::GroupCategoryFull do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :name }
    it { is_expected.to include :subcategories }
    it { is_expected.to include :page_count }
    it { is_expected.to include :page_previews }
  end
end
