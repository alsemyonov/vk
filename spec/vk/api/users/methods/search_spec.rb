# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/users/methods/search'

RSpec.describe Vk::API::Users::Methods::Search do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :q }
    it { is_expected.to include :sort }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :fields }
    it { is_expected.to include :city }
    it { is_expected.to include :country }
    it { is_expected.to include :hometown }
    it { is_expected.to include :university_country }
    it { is_expected.to include :university }
    it { is_expected.to include :university_year }
    it { is_expected.to include :university_faculty }
    it { is_expected.to include :university_chair }
    it { is_expected.to include :sex }
    it { is_expected.to include :status }
    it { is_expected.to include :age_from }
    it { is_expected.to include :age_to }
    it { is_expected.to include :birth_day }
    it { is_expected.to include :birth_month }
    it { is_expected.to include :birth_year }
    it { is_expected.to include :online }
    it { is_expected.to include :has_photo }
    it { is_expected.to include :school_country }
    it { is_expected.to include :school_city }
    it { is_expected.to include :school_class }
    it { is_expected.to include :school }
    it { is_expected.to include :school_year }
    it { is_expected.to include :religion }
    it { is_expected.to include :interests }
    it { is_expected.to include :company }
    it { is_expected.to include :position }
    it { is_expected.to include :group_id }
    it { is_expected.to include :from_list }
  end
end
