# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/fave/methods/add_link'

RSpec.describe Vk::API::Fave::Methods::AddLink do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :link }
    it { is_expected.to include :text }
  end
end
