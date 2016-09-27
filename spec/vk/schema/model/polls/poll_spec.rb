# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/polls/poll'

RSpec.describe Vk::Schema::Model::Polls::Poll do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :created }
    it { is_expected.to include :question }
    it { is_expected.to include :votes }
    it { is_expected.to include :answer_id }
    it { is_expected.to include :answers }
  end
end
