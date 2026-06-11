# Formula/{formula-name}.rb
#
# 사용법:
#   1. 이 파일을 Formula/{formula-name}.rb 로 복사
#   2. 아래 ALL_CAPS 항목을 실제 값으로 치환
#   3. sha256 값을 채운 뒤 brew audit --strict ./Formula/{formula-name}.rb 실행
#
# sha256 계산:
#   curl -fsSL "ASSET_URL" | shasum -a 256
# ─────────────────────────────────────────────────────────────────────────────

class FORMULA_CLASS_NAME < Formula                  # PascalCase, 예) Lazyifconfig
  desc    "DESCRIPTION"                             # 한 줄 설명 (마침표 없음)
  homepage "HOMEPAGE_URL"                           # 예) https://github.com/OWNER/REPO
  license "MIT"                                     # SPDX 식별자
  version "VERSION"                                 # 예) 0.2.4

  # ── 플랫폼별 asset ───────────────────────────────────────────────────────
  on_macos do
    on_intel do
      url "https://github.com/OWNER/REPO/releases/download/vVERSION/ASSET_MACOS_INTEL"
      sha256 "SHA256_MACOS_INTEL"
    end

    on_arm do
      url "https://github.com/OWNER/REPO/releases/download/vVERSION/ASSET_MACOS_ARM"
      sha256 "SHA256_MACOS_ARM"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/OWNER/REPO/releases/download/vVERSION/ASSET_LINUX_X86_64"
      sha256 "SHA256_LINUX_X86_64"
    end
  end
  # ─────────────────────────────────────────────────────────────────────────

  def install
    bin.install "BINARY_NAME"
  end

  test do
    assert_predicate bin/"BINARY_NAME", :exist?
    # 버전 출력이 있다면 추가:
    # assert_match "VERSION", shell_output("#{bin}/BINARY_NAME --version")
  end
end
