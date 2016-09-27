# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/secure/transaction'

RSpec.describe Vk::Schema::Model::Secure::Transaction do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :uid_from }
    it { is_expected.to include :uid_to }
    it { is_expected.to include :votes }
    it { is_expected.to include :date }
  end
end
