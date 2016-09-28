# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/database/city'

RSpec.describe Vk::API::Database::City do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :area }
    it { is_expected.to include :region }
    it { is_expected.to include :important }
  end
end
