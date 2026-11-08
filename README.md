# Pro CV Builder – Android APK project

## APK automatically appears in GitHub Releases

1. Create an empty GitHub repository.
2. Extract this ZIP and upload **all files and folders inside it directly to the repository root**. The `.github` folder must also be uploaded.
3. In GitHub, open **Actions** and enable workflows if prompted.
4. Open **Build APK and Publish GitHub Release** and press **Run workflow**.
5. When the workflow completes, open the repository's **Releases** page. The APK is attached there as `Pro-CV-Builder.apk`—you do not need to download it from Artifacts.

You can also publish a versioned release by creating and pushing a tag such as `v1.0.1`.

## App details
- App name: Pro CV Builder
- Package: `com.fulkumari.procvbuilder`
- Version: `1.0.0`
- Minimum Android: 6.0 (API 23)
- Build: Debug-signed APK for direct testing/installation

The HTML app is bundled locally in `app/src/main/assets/index.html`.

## Important
This workflow creates a debug-signed APK for testing and direct installation. A Play Store production release requires a private release keystore stored securely in GitHub Secrets.

## Gradle build
This project includes `gradlew` and `gradlew.bat` bootstrap launchers configured for Gradle 8.9. On first use, they download the official Gradle 8.9 binary distribution. Internet access is required for this first download and for Android/Gradle dependencies.

On Linux/macOS:
```sh
chmod +x ./gradlew
./gradlew assembleDebug
```
