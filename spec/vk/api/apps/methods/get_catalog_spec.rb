# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/apps/methods/get_catalog'

RSpec.describe Vk::API::Apps::Methods::GetCatalog do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :sort }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :platform }
    it { is_expected.to include :extended }
    it { is_expected.to include :return_friends }
    it { is_expected.to include :fields }
    it { is_expected.to include :name_case }
    it { is_expected.to include :q }
    it { is_expected.to include :genre_id }
    it { is_expected.to include :filter }
  end
end
