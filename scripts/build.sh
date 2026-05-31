#!/usr/bin/env bash
set -euo pipefail

release_version="${1:-local}"
artifact_dir="build/release"

flutter build apk --release --split-per-abi
flutter build apk --release --target-platform android-arm,android-arm64,android-x64
flutter build linux --release

mkdir -p "${artifact_dir}"
cp build/app/outputs/flutter-apk/app-armeabi-v7a-release.apk "${artifact_dir}/entime-${release_version}-armeabi-v7a.apk"
cp build/app/outputs/flutter-apk/app-armeabi-v7a-release.apk.sha1 "${artifact_dir}/entime-${release_version}-armeabi-v7a.apk.sha1"
cp build/app/outputs/flutter-apk/app-arm64-v8a-release.apk "${artifact_dir}/entime-${release_version}-arm64-v8a.apk"
cp build/app/outputs/flutter-apk/app-arm64-v8a-release.apk.sha1 "${artifact_dir}/entime-${release_version}-arm64-v8a.apk.sha1"
cp build/app/outputs/flutter-apk/app-x86_64-release.apk "${artifact_dir}/entime-${release_version}-x86_64.apk"
cp build/app/outputs/flutter-apk/app-x86_64-release.apk.sha1 "${artifact_dir}/entime-${release_version}-x86_64.apk.sha1"
cp build/app/outputs/flutter-apk/app-release.apk "${artifact_dir}/entime-${release_version}-universal.apk"
cp build/app/outputs/flutter-apk/app-release.apk.sha1 "${artifact_dir}/entime-${release_version}-universal.apk.sha1"

tar -C build/linux/x64/release --transform 's,^bundle,entime,' -czf "${artifact_dir}/entime-${release_version}-linux-x64.tar.gz" bundle
sha1sum "${artifact_dir}/entime-${release_version}-linux-x64.tar.gz" | cut -d ' ' -f 1 > "${artifact_dir}/entime-${release_version}-linux-x64.tar.gz.sha1"
