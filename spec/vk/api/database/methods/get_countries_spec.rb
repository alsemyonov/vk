# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/database/methods/get_countries'

RSpec.describe Vk::API::Database::Methods::GetCountries do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :need_all }
    it { is_expected.to include :code }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
  end
end
