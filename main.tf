locals {
    option_app_version = "${var.app_version == "" ? "" : "--app-version=${var.app_version}"}"
    option_dependency_update = "${var.dependency_update ? "--dependency-update" : ""}"
    option_destination = "--destination=${var.dst_dir}"
    option_key = "${var.key == "" ? "" : "--key=${var.key}"}"
    option_save = "${var.save ? "--save": ""}"
    option_sign = "${var.sign ? "--sign": ""}"
    option_version = "${var.version == "" ? "": "--version=${var.version}"}"
    command = [
        "python3", "${path.module}/scripts/helm_package.py",
        "helm", "package",
        "${local.option_app_version}",
        "${local.option_dependency_update}",
        "${local.option_destination}",
        "${local.option_key}",
        "${local.option_save}",
        "${local.option_sign}",
        "${local.option_version}",
        "${var.src_dir}"
    ]
}

data "external" "helm_package" {
    program = "${compact(local.command)}"
}