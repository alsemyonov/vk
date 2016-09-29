# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/board/methods/get_topics'

RSpec.describe Vk::API::Board::Methods::GetTopics do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :topic_ids }
    it { is_expected.to include :order }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :extended }
    it { is_expected.to include :preview }
    it { is_expected.to include :preview_length }
  end
end
