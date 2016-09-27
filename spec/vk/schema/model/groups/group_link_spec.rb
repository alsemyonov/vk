# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/groups/group_link'

RSpec.describe Vk::Schema::Model::Groups::GroupLink do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :url }
    it { is_expected.to include :edit_title }
    it { is_expected.to include :desc }
    it { is_expected.to include :image_processing }
  end
end
