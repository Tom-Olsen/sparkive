from pathlib import Path


def on_env(env, config, files):
    logoPath = Path(__file__).resolve().parent / "brand" / "ember-logo.svg"
    env.globals["emberLogoSvg"] = logoPath.read_text(encoding="utf-8")
    logoPath = Path(__file__).resolve().parent / "brand" / "sparkive-logo.svg"
    env.globals["sparkiveLogoSvg"] = logoPath.read_text(encoding="utf-8")
    return env