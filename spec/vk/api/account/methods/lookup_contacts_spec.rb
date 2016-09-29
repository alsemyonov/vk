# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/account/methods/lookup_contacts'

RSpec.describe Vk::API::Account::Methods::LookupContacts do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :contacts }
    it { is_expected.to include :service }
    it { is_expected.to include :mycontact }
    it { is_expected.to include :return_all }
    it { is_expected.to include :fields }
  end
end
