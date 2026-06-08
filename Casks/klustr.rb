cask "klustr" do
  version "0.53.0"
  sha256 "047ccec7ee73fce4a457659bc90a6bfd10583588b50bfa0a12a8c7c394097c93"

  url "https://github.com/SametKUM/klustr/releases/download/v#{version}/klustr-v#{version}-darwin-arm64.tar.gz"
  name "Klustr"
  desc "Fast, lightweight Kubernetes desktop client"
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
