class SyncRoms < Formula
  include Language::Python::Virtualenv

  desc "Download ROMs and BIOS files from an S3 bucket onto handheld SD cards"
  homepage "https://github.com/kelsin/sync-roms"
  url "https://github.com/kelsin/sync-roms/releases/download/v0.2.0/sync_roms-0.2.0.tar.gz"
  sha256 "3edaac08d1d773e7c56bc753bf95365fd979d10d3975782c72a011de8e98c2f0"
  license :cannot_represent

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Anbernic", shell_output("#{bin}/sync-roms --devices")
  end
end
