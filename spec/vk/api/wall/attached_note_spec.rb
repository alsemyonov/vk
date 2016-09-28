# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/wall/attached_note'

RSpec.describe Vk::API::Wall::AttachedNote do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :comments }
    it { is_expected.to include :read_comments }
    it { is_expected.to include :date }
    it { is_expected.to include :title }
    it { is_expected.to include :view_url }
  end
end
