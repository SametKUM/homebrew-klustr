cask "klustr" do
  version "0.50.0"
  sha256 "72b26b23713091a6e58614ca73d6c17ca43822c4f869f6e735c610b42bfb7da1"

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
