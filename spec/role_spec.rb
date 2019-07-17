describe "Role 'xray'" do

  describe "daemon" do
    it "is installed" do
      expect(package('xray')).to be_installed
    end

    it "is enabled on boot" do 
      expect(service('xray')).to be_enabled
    end
  end

  describe "configuration" do
    it "is accessible by the daemon" do 
      expect(file('/etc/amazon/xray/cfg.yaml')).to be_mode 644
    end
  end
end
