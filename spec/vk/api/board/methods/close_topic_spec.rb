# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/board/methods/close_topic'

RSpec.describe Vk::API::Board::Methods::CloseTopic do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :topic_id }
  end
end
