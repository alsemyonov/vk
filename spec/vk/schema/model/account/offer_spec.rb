# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/account/offer'

RSpec.describe Vk::Schema::Model::Account::Offer do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :title }
    it { is_expected.to include :instruction }
    it { is_expected.to include :instruction_html }
    it { is_expected.to include :short_description }
    it { is_expected.to include :description }
    it { is_expected.to include :img }
    it { is_expected.to include :tag }
    it { is_expected.to include :price }
  end
end
