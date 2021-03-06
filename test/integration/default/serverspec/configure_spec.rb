require 'spec_helper'

describe 'nomad::configure' do
  describe file('/etc/nomad-conf.d/agent_00-default.hcl') do
    its(:content) { should match /data_dir/ }
  end

  describe file('/etc/nomad-conf.d/server_00-default.hcl') do
    its(:content) { should match /enabled/ }
  end

  describe file('/etc/nomad-conf.d/client_00-default.hcl') do
    its(:content) { should match /enabled/ }
  end

  describe file('/etc/nomad-conf.d/atlas_00-default.hcl') do
    its(:content) { should match /join/ }
  end
end
