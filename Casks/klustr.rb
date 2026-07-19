cask "klustr" do
  version "0.73.1"
  sha256 "79f80438d8bdfb336b5e84549aa787caaba85658cb775290bf987d32780253f7"

  url "https://github.com/SametKUM/klustr/releases/download/v#{version}/klustr-v#{version}-darwin-arm64.tar.gz"
  name "Klustr"
  desc "Fast, lightweight Kubernetes desktop client"
  homepage "https://github.com/SametKUM/klustr"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "klustr.app"

  zap trash: [
    "~/Library/Application Support/klustr",
    "~/Library/Caches/klustr",
    "~/Library/Preferences/io.wails.klustr.plist",
    "~/Library/Saved Application State/io.wails.klustr.savedState",
  ]
end
