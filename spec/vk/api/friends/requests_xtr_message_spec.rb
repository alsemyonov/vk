# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/friends/requests_xtr_message'

RSpec.describe Vk::API::Friends::RequestsXtrMessage do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :from }
    it { is_expected.to include :mutual }
    it { is_expected.to include :message }
  end
end
