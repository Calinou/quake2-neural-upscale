# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/).

## [Unreleased]

### Added

- Upscaled world textures.
  - Distributed in a separate PKZ file, so that people can choose whether to use neural-upscaled
    world textures or the
    [traditional HD texture pack](http://quakeservers.nquake.com/nquake2-addon-textures.zip).

## [1.1.0] - 2019-12-04

### Changed

- Improved the first-person weapon textures.
  - Upscaled textures twice using ESRGAN.
    - Textures are downscaled by 50% after the first upscaling pass then upscaled again.
      Their final resolution is clamped to 2048 pixels wide so that Q2PRO can load them.
  - Denoised textures using GIMP for a less grainy look.
  - Tweaked the brightness and color temperature manually to make them closer to the originals.

## 1.0.0 - 2019-12-01

- Initial release.

[Unreleased]: https://github.com/Calinou/quake2-neural-upscale/compare/v1.1.0...HEAD
[1.1.0]: https://github.com/Calinou/quake2-neural-upscale/compare/v1.0.0...v1.1.0
