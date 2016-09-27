# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/friends/requests'

RSpec.describe Vk::Schema::Model::Friends::Requests do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :from }
    it { is_expected.to include :mutual }
  end
end
