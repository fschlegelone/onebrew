cask "getoutline" do
  version "1.3.1"
  arch arm: "arm64", intel: "x64"
  sha256 :no_check
  depends_on macos: ">= :catalina"

  # arm64 (apple-silicon)
  on_arm do
    url "https://desktop.getoutline.com/mac/dmg/arm64"
  end

  # x64 (intel)
  on_intel do
    url "https://desktop.getoutline.com/mac/dmg/x64"
  end

  name "Outline"
  desc "A fast, collaborative, knowledge base for your team built using React and Node.js."
  homepage "https://getoutline.com/"

  app "Outline.app"

  # locations to zap (uninstall)
  zap trash: [
    "~/Library/Application Support/Outline/",
    "~/Library/Preferences/com.generaloutline.outline.plist",
    "~/Library/Saved Application State/com.generaloutline.outline.savedState",
    "/Applications/Outline.app",
    "/Volumes/Outline 1.3.1-arm64/",
    "/Volumes/Outline 1.3.1/"
  ]
end
