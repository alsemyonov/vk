# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/methods/search'

RSpec.describe Vk::API::Video::Methods::Search do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :q }
    it { is_expected.to include :sort }
    it { is_expected.to include :hd }
    it { is_expected.to include :adult }
    it { is_expected.to include :filters }
    it { is_expected.to include :search_own }
    it { is_expected.to include :offset }
    it { is_expected.to include :longer }
    it { is_expected.to include :shorter }
    it { is_expected.to include :count }
  end
end
