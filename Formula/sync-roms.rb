class SyncRoms < Formula
  include Language::Python::Virtualenv

  desc "Download ROMs and BIOS files from an S3 bucket onto handheld SD cards"
  homepage "https://github.com/kelsin/sync-roms"
  url "https://github.com/kelsin/sync-roms/releases/download/v2.6.0/sync_roms-2.6.0.tar.gz"
  sha256 "96dcf715280c5812ca9f759c3ccec2dcf9dd40157fa7d85aa20866529b2b3f68"
  license :cannot_represent

  depends_on "pillow"
  depends_on "python@3.15"

  pypi_packages exclude_packages: "pillow"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/e2/53/9c2ca547dc9fa1e9e2a0fec0096b9e25277f6864faba580ace75e0db5585/boto3-1.44.0-py3-none-any.whl"
    sha256 "ae3009db1294fd4ca2e30d9592ead8ab56f0e270bcad0b95e555f03f7875716d"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/c1/0f/82dd92901fdc21a3444eba19e23e0a8584046f8c7d6f9ae171e38ecd7dda/botocore-1.44.0-py3-none-any.whl"
    sha256 "9055745fc16400377ac7e825ac63b8f77af17305e1c77c9a5519a648d7b2e87c"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/14/2f/967ba146e6d58cf6a652da73885f52fc68001525b4197effc174321d70b4/jmespath-1.1.0-py3-none-any.whl"
    sha256 "a5663118de4908c91729bea0acadca56526eb2698e83de10cd116ae0f4e97c64"
  end

  resource "linkify-it-py" do
    url "https://files.pythonhosted.org/packages/13/d4/1152d1c7ab42d8b908be64fd200ddc870dc9d4925e951198702084aa1a7d/linkify_it_py-2.2.0-py3-none-any.whl"
    sha256 "3adc40eb5af300b2605fcfdb968c24e1d780a90f1f2221af7c15e5111e94d443"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/c9/31/5f0ac2f1a1c67423c995c731a11cd4ad05d081a2be969d74f868bdb9cc70/markdown_it_py-4.3.0-py3-none-any.whl"
    sha256 "7aa1511a46c39138de78d9eba92ce47e63124d8003fc98b3a351909e04239efa"
  end

  resource "mdit-py-plugins" do
    url "https://files.pythonhosted.org/packages/4d/d3/d07e61326f150944ead0da9d0b39fb20d7fa367bbc951b10fca6bb1c7382/mdit_py_plugins-0.7.0-py3-none-any.whl"
    sha256 "7f8e30403f3dd8bfe3afcdcbc6e61066d3f2e714167507b9c26eb385ec399353"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/7c/ae/ecbbbfd0e4343a6a521d49b3c8656fb4643dee2a4f6eaf941cf3280391a8/platformdirs-4.14.5-py3-none-any.whl"
    sha256 "8e778c6fa421516f4d3369449f8df3b0e1b72c0e0005fe88e3ec772d0a14e750"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/71/46/17f022dd3e953bf20a04a028a21ec746d942f8d2af30fa0f124fa0e6a684/pygments-2.21.0-py3-none-any.whl"
    sha256 "2363c69b61c4a97c838da3b130dcd6468f4848992b21a82f2a63ec34377137d9"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/ec/57/56b9bcc3c9c6a792fcbaf139543cee77261f3651ca9da0c93f5c1221264b/python_dateutil-2.9.0.post0-py2.py3-none-any.whl"
    sha256 "a8b2bc7bffae282281c8140a97d3aa9c14da0b136dfe83f850eea9a5f7470427"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl"
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/e2/a4/88f9e10498759121060b8050a1554753dfc04df39bbbcc7aad9ecc8d9440/s3transfer-0.19.3-py3-none-any.whl"
    sha256 "24eb7535804306355e31c952a90022bf5b2f9d760f9a11062c7493a217c08553"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/b7/ce/149a00dd41f10bc29e5921b496af8b574d8413afcd5e30dfa0ed46c2cc5e/six-1.17.0-py2.py3-none-any.whl"
    sha256 "4721f391ed90541fddacab5acf947aa0d3dc7d27b2e1e8eda2be8970586c3274"
  end

  resource "textual" do
    url "https://files.pythonhosted.org/packages/fb/be/35261223d9416a0751cdff1c7b4a6f881387218a12d439fe22fefebc8c04/textual-8.2.8-py3-none-any.whl"
    sha256 "267375fd402dc8d981457212efa71f0e3365fd17bba144ba9bb3ed7563cb374a"
  end

  resource "textual-image" do
    url "https://files.pythonhosted.org/packages/26/eb/437369a7ca3effe4072b99ab2f7578805e4dec313dd7250309d2860bf125/textual_image-0.14.3-py3-none-any.whl"
    sha256 "3cd6cc5ed1c493cbb3c221e0d576c5a0779f85a683ffe1b8ed29a1b93797f009"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl"
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
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
