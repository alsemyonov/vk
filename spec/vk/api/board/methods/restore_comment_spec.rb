# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/board/methods/restore_comment'

RSpec.describe Vk::API::Board::Methods::RestoreComment do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :topic_id }
    it { is_expected.to include :comment_id }
  end
end
