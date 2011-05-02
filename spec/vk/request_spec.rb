require 'spec_helper'

describe Vk::Request do
  describe 'class' do
    subject { Vk::Request }

    it { should respond_to(:auth_key) }
    it { should respond_to(:authenticated?) }
    it { Vk::Request.auth_key(VK_VIEWER_ID).should == VK_AUTH_KEY }
    it { Vk::Request.authenticated?(VK_VIEWER_ID, VK_AUTH_KEY).should be_true }
  end

  describe 'instance' do
    let(:request) { Vk::Request.new }
    subject { request }

    it { should respond_to(:request) }
  end
end
