class SyncRoms < Formula
  include Language::Python::Virtualenv

  desc "Download ROMs and BIOS files from an S3 bucket onto handheld SD cards"
  homepage "https://github.com/kelsin/sync-roms"
  url "https://github.com/kelsin/sync-roms/releases/download/v0.6.0/sync_roms-0.6.0.tar.gz"
  sha256 "8b75c1f51ce9dd7b746d32a34d59f72206b1429dbf4bf73636b9eb9b9e410584"
  license :cannot_represent

  depends_on "python@3.12"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/3a/d7/6c82dff652082a4bab907b7a5833933a362f12400f14bd7a9935a330145e/boto3-1.43.119-py3-none-any.whl"
    sha256 "d1718edae48c3241d289c0ece8a515399a7242c406e35328b9685c4d24039186"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/3f/54/04e5950c7f2d22d78f22db00ca119b257b7cd2024328b6116ebaeb9c14eb/botocore-1.43.119-py3-none-any.whl"
    sha256 "6026aec97914a4fa116915fd3b05af899912eff51b93fb8dff95aa228a3e761b"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/14/2f/967ba146e6d58cf6a652da73885f52fc68001525b4197effc174321d70b4/jmespath-1.1.0-py3-none-any.whl"
    sha256 "a5663118de4908c91729bea0acadca56526eb2698e83de10cd116ae0f4e97c64"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/ec/57/56b9bcc3c9c6a792fcbaf139543cee77261f3651ca9da0c93f5c1221264b/python_dateutil-2.9.0.post0-py2.py3-none-any.whl"
    sha256 "a8b2bc7bffae282281c8140a97d3aa9c14da0b136dfe83f850eea9a5f7470427"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/e2/a4/88f9e10498759121060b8050a1554753dfc04df39bbbcc7aad9ecc8d9440/s3transfer-0.19.3-py3-none-any.whl"
    sha256 "24eb7535804306355e31c952a90022bf5b2f9d760f9a11062c7493a217c08553"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/b7/ce/149a00dd41f10bc29e5921b496af8b574d8413afcd5e30dfa0ed46c2cc5e/six-1.17.0-py2.py3-none-any.whl"
    sha256 "4721f391ed90541fddacab5acf947aa0d3dc7d27b2e1e8eda2be8970586c3274"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/92/9d/c4e665119135114480843e7ab388fa94d8480650450e6f8e26b70d323a4c/urllib3-2.8.0-py3-none-any.whl"
    sha256 "0cf3cae568d36aa9576b28dfb35f11328f1cb974ca7647d9475ebb86c75ac6e3"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Anbernic", shell_output("#{bin}/sync-roms --devices")
  end
end
