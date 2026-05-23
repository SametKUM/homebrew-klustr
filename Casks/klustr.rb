cask "klustr" do
  version "0.22.0"
  sha256 "c3abf6b3c88d0d572f453cbb65ff4dead29fc001c7066a5e789216e0cf17a4d8"

  url "https://github.com/SametKUM/klustr/releases/download/v#{version}/klustr-v#{version}-darwin-arm64.tar.gz",
      verified: "github.com/SametKUM/klustr/"
  name "Klustr"
  desc "Cross-platform Kubernetes desktop client"
  homepage "https://github.com/SametKUM/klustr"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "klustr.app"

  zap trash: [
    "~/Library/Application Support/klustr",
    "~/Library/Caches/klustr",
    "~/Library/Preferences/io.wails.klustr.plist",
    "~/Library/Saved Application State/io.wails.klustr.savedState",
  ]
end
