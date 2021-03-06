# This file was generated by GoReleaser. DO NOT EDIT.
class Mzap < Formula
  desc "Multiple target ZAP scanning / mzap is a tool for scanning N*N in ZAP."
  homepage "https://www.hahwul.com"
  version "1.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hahwul/mzap/releases/download/v1.1.0/mzap_1.1.0_darwin_amd64.tar.gz"
    sha256 "f7f0b6fcfd795fe1b8a2b6bc90f05ea75e8cc5efa58dbbe97e31967857b6225d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/hahwul/mzap/releases/download/v1.1.0/mzap_1.1.0_linux_amd64.tar.gz"
      sha256 "f2b538a2489f3c92234ff94be6773abb4dd78f84858e79af10fedeea6c808526"
    end
  end

  def install
    bin.install "mzap"
  end

  test do
    system "#{bin}/mzap version"
  end
end
