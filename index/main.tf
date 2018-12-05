locals {
    option_merge = "${var.merge == "" ? "": "--merge=${var.merge}"}"
    option_url = "${var.url == "" ? "": "--url=${var.url}"}"
    command = [
        "python3", "${path.module}/scripts/helm_index.py",
        "helm", "repo", "index",
        "${local.option_merge}",
        "${local.option_url}",
        "${var.dir}"
    ]
}

data "external" "helm_package" {
    program = "${compact(local.command)}"
}