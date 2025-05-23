[![Build and Publish Chocolatey Package](https://github.com/Ampsyy/choco-8x8work/actions/workflows/pack-and-release.yml/badge.svg?branch=main)](https://github.com/Ampsyy/choco-8x8work/actions/workflows/pack-and-release.yml)

# Choco-8x8work Repository

This repository is dedicated to the Choco 8x8work package, which is available on the Chocolatey community packages website at [Choco 8x8work Package](https://community.chocolatey.org/packages/8x8work).

## Pull Requests (PRs)

We strive to keep this package up-to-date, but there are times when it falls behind the latest version. If you'd like to contribute and help us maintain it, please feel free to submit a Pull Request (PR) with the latest updates. Here are the steps to update the package:

1. **Update `tools/chocolateyinstall.ps1`:**
   - Modify the variable `$url64` with the latest URL for the MSI installer.
   - Update `$checksum64` with the checksum of the new MSI installer. You can generate a checksum using PowerShell with the following command:
     ```powershell
     Get-FileHash -Path "path\to\file" -Algorithm SHA256
     ```

2. **Update `8x8work.nuspec`:**
   - Update the `<version>` tag in the `8x8work.nuspec` file to match the latest version of the software.

By following these steps, you can help ensure that the Choco 8x8work package remains current and functional for users. Thank you for your contribution!

## Publish Package

1. **Create `.nupkg`:**
   - In the project directory run `choco pack`, this should create a new package for the latest version.
2. **Test:**
   - Navigate to the directory where the newly created `8x8work.<version>.nupkg` file is located, run:
     ```powershell
     choco install 8x8work --debug --verbose --source .
     ```
     ```powershell
     choco upgrade 8x8work -source="<GIT-LOCATION>\8x8work"
     ```
3. **Publish:**
   - Once confirmed working the new package can be pushed using:
     ```powershell
     choco push 8x8work.<version>.nupkg --source https://push.chocolatey.org/
     ```
