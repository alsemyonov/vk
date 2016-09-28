# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/wall/wallpost_full'

RSpec.describe Vk::API::Wall::WallpostFull do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :copy_history }
    it { is_expected.to include :can_edit }
    it { is_expected.to include :created_by }
    it { is_expected.to include :can_delete }
    it { is_expected.to include :can_pin }
    it { is_expected.to include :is_pinned }
    it { is_expected.to include :comments }
    it { is_expected.to include :likes }
    it { is_expected.to include :reposts }
  end
end
