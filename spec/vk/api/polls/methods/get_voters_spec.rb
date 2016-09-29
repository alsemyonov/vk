# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/polls/methods/get_voters'

RSpec.describe Vk::API::Polls::Methods::GetVoters do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :poll_id }
    it { is_expected.to include :answer_ids }
    it { is_expected.to include :is_board }
    it { is_expected.to include :friends_only }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :fields }
    it { is_expected.to include :name_case }
  end
end
