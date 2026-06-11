# Homebrew Formula 작성 가이드

## 1. Formula 체크리스트

새 formula를 추가할 때 아래 순서를 따른다.

### Step 1 — 템플릿 복사

```sh
cp Formula/_template.rb Formula/{formula-name}.rb
```

### Step 2 — 플레이스홀더 치환

| 플레이스홀더 | 설명 | 예시 |
|---|---|---|
| `FORMULA_CLASS_NAME` | PascalCase class명 | `Lazyifconfig` |
| `DESCRIPTION` | 한 줄 설명 (마침표 없음) | `TUI for network interface config` |
| `HOMEPAGE_URL` | 프로젝트 홈페이지 | `https://github.com/choihunchul/lazyifconfig` |
| `VERSION` | SemVer (태그의 `v` 제외) | `0.2.4` |
| `OWNER/REPO` | GitHub 저장소 | `choihunchul/lazyifconfig` |
| `ASSET_MACOS_INTEL` | macOS x86_64 릴리스 파일명 | `lazyifconfig-x86_64-apple-darwin.tar.gz` |
| `ASSET_MACOS_ARM` | macOS ARM64 릴리스 파일명 | `lazyifconfig-aarch64-apple-darwin.tar.gz` |
| `ASSET_LINUX_X86_64` | Linux x86_64 릴리스 파일명 | `lazyifconfig-x86_64-unknown-linux-gnu.tar.gz` |
| `SHA256_*` | 각 asset의 sha256 (Step 3 참고) | `a3f2...` |
| `BINARY_NAME` | tar 안의 실행 파일명 | `lazyifconfig` |

### Step 3 — sha256 계산

각 asset URL로 아래 명령 실행 후 출력값을 formula에 기입한다.

```sh
# macOS Intel
curl -fsSL "https://github.com/OWNER/REPO/releases/download/vVERSION/ASSET_MACOS_INTEL" \
  | shasum -a 256

# macOS ARM
curl -fsSL "https://github.com/OWNER/REPO/releases/download/vVERSION/ASSET_MACOS_ARM" \
  | shasum -a 256

# Linux x86_64
curl -fsSL "https://github.com/OWNER/REPO/releases/download/vVERSION/ASSET_LINUX_X86_64" \
  | shasum -a 256
```

> **팁**: 한 번에 세 개를 병렬로 계산하려면:
> ```sh
> OWNER=choihunchul REPO=lazyifconfig TAG=v0.2.4
> for asset in ASSET_1 ASSET_2 ASSET_3; do
>   echo -n "$asset: "
>   curl -fsSL "https://github.com/$OWNER/$REPO/releases/download/$TAG/$asset" | shasum -a 256
> done
> ```

### Step 4 — 로컬 검증

```sh
# 린트 (strict 모드)
brew audit --strict ./Formula/{formula-name}.rb

# 실제 빌드 테스트
brew install --build-from-source ./Formula/{formula-name}.rb
brew test ./Formula/{formula-name}.rb

# 설치 후 정리
brew uninstall {formula-name}
```

### Step 5 — 커밋 & 푸시

```sh
git add Formula/{formula-name}.rb
git commit -m "feat: add {formula-name} formula v{version}"
git push
```

### Step 6 — README 표 업데이트

`README.md`의 Formulae 표에 한 줄 추가:

```markdown
| [{formula-name}](https://github.com/OWNER/REPO) | DESCRIPTION | vVERSION |
```

---

## 2. 단일 asset인 경우 (플랫폼 구분 없음)

`on_macos / on_linux` 블록 없이 top-level에 작성한다.

```ruby
class FormulaName < Formula
  desc    "설명"
  homepage "URL"
  license "MIT"
  version "0.2.4"

  url    "https://github.com/OWNER/REPO/releases/download/v0.2.4/ASSET.tar.gz"
  sha256 "SHA256_HERE"

  def install
    bin.install "BINARY_NAME"
  end

  test do
    assert_predicate bin/"BINARY_NAME", :exist?
  end
end
```

---

## 3. 버전 업 체크리스트

새 버전 릴리스 시:

- [ ] `version` 값 변경
- [ ] `url` 경로의 태그 변경
- [ ] 각 플랫폼 `sha256` 재계산 후 교체
- [ ] `brew audit --strict` 통과 확인
- [ ] `brew install --build-from-source` 로 동작 확인
- [ ] README 표의 버전 업데이트
- [ ] `git commit -m "chore: bump {formula-name} to vNEW_VERSION"`
