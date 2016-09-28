# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/users/university'

RSpec.describe Vk::API::Users::University do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :country }
    it { is_expected.to include :city }
    it { is_expected.to include :name }
    it { is_expected.to include :faculty }
    it { is_expected.to include :faculty_name }
    it { is_expected.to include :chair }
    it { is_expected.to include :chair_name }
    it { is_expected.to include :graduation }
    it { is_expected.to include :education_form }
    it { is_expected.to include :education_status }
  end
end
