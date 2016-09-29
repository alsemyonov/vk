# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/search'

RSpec.describe Vk::API::Photos::Methods::Search do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :q }
    it { is_expected.to include :lat }
    it { is_expected.to include :long }
    it { is_expected.to include :start_time }
    it { is_expected.to include :end_time }
    it { is_expected.to include :sort }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :radius }
  end
end
