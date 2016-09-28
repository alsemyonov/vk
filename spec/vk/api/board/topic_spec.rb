# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/board/topic'

RSpec.describe Vk::API::Board::Topic do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :title }
    it { is_expected.to include :created }
    it { is_expected.to include :created_by }
    it { is_expected.to include :updated }
    it { is_expected.to include :updated_by }
    it { is_expected.to include :is_closed }
    it { is_expected.to include :is_fixed }
    it { is_expected.to include :comments }
  end
end
