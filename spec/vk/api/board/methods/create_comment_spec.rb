# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/board/methods/create_comment'

RSpec.describe Vk::API::Board::Methods::CreateComment do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :topic_id }
    it { is_expected.to include :message }
    it { is_expected.to include :attachments }
    it { is_expected.to include :from_group }
    it { is_expected.to include :sticker_id }
    it { is_expected.to include :guid }
  end
end
