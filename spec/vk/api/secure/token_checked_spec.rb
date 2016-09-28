# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/secure/token_checked'

RSpec.describe Vk::API::Secure::TokenChecked do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :success }
    it { is_expected.to include :user_id }
    it { is_expected.to include :date }
    it { is_expected.to include :expire }
  end
end
