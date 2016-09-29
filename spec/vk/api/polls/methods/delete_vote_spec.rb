# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/polls/methods/delete_vote'

RSpec.describe Vk::API::Polls::Methods::DeleteVote do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :poll_id }
    it { is_expected.to include :answer_id }
    it { is_expected.to include :is_board }
  end
end
