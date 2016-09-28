# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/account/lookup_result'

RSpec.describe Vk::API::Account::LookupResult do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :found }
    it { is_expected.to include :other }
  end
end
