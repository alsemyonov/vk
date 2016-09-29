# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/polls/methods/create'

RSpec.describe Vk::API::Polls::Methods::Create do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :question }
    it { is_expected.to include :is_anonymous }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :add_answers }
  end
end
