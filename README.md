# Local Inpaint

On-device Stable Diffusion inpainting for Android. Everything runs on the phone; models are downloaded inside the app on first launch. No content filter.

This is a personal fork of [Local Dream](https://github.com/xororz/local-dream) by xororz:

- builds only the unfiltered `basic` flavor (the safety-checker flavor is removed)
- own app name and package ID (`io.github.jaydabnknt.localinpaint`), so it installs next to the official app
- GitHub Actions builds the APK on every push to `main`

## Getting the APK

Open the repo's **Releases** → **Latest build** and download the `.apk`, or grab it from the latest run in the **Actions** tab.

## Using inpainting

1. Pick an SD 1.5 model in the app and let it download (NPU models run on most Snapdragon chips with Hexagon V68+; CPU models run anywhere).
2. Open the model, load an image (image-to-image), and paint a mask over the area to change.
3. Type what should appear there and generate.

## License

Local Dream is licensed **CC BY-NC 4.0** (see `LICENSE`). This fork keeps that license: personal and non-commercial use only, with credit to the original author. The NPU path uses Qualcomm's QNN runtime under Qualcomm's own license. The original README is in `UPSTREAM_README.md`.
