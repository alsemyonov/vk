# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/polls/methods/get_by_id'

RSpec.describe Vk::API::Polls::Methods::GetById do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :is_board }
    it { is_expected.to include :poll_id }
  end
end
