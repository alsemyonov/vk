# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/polls/voters'

RSpec.describe Vk::API::Polls::Voters do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :answer_id }
    it { is_expected.to include :users }
  end
end
