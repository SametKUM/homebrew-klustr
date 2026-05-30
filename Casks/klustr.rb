cask "klustr" do
  version "0.47.0"
  sha256 "f30d956530b2df9ffa69a65fd91ef340e1c26b2215546be4a002be27588ba593"

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
