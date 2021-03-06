require 'spec_helper'

describe 'chef_intro::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  describe file('/mydir/hello.txt') do
    it { should exist }
    it { should contain(/Hello/) }
    it { should be_owned_by('neo') }
  end

  describe file('/mydir/info.txt') do
    it { should exist }
    it { should contain(/This file is owned by neo/) }
    it { should contain(/Also passed in a message: some_more_data/) }
    it { should contain(/It's used by Trinity./) }
    it { should contain(/And a confidential key\/cert: mykey\/mycert/) }
  end

end
