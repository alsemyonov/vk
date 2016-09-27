# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/oauth/error'

RSpec.describe Vk::Schema::Model::Oauth::Error do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :error }
    it { is_expected.to include :error_description }
    it { is_expected.to include :redirect_uri }
  end
end
