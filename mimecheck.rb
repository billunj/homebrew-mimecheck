# comment
# frozen_string_literal: true

# top-level class comment
class MimeCheck < Formula
  desc "UUID Validator"
  homepage "https://bitbucket.org/infomaker/"
  url  "https://s3-eu-west-1.amazonaws.com/cca-dev-bill-temp/mime-check/mime-check-2020-12-15T193645-4834483.tar.gz"
  sha256 "504213eb64e86493c9b14257d014d6a38a91b4de19762f40a37546757c91932b"

  def install
    bin.install "mime-check"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test oc-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/mime-check"
  end
end