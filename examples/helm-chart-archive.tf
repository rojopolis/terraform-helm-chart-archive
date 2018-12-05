module "helm_chart_archive" {
    source      = "../"
    src_dir     = "${path.module}/mychart"
    dst_dir = "${path.module}/myrepo"
}

output "helm_chart_archive_path" {
    value = "${module.helm_chart_archive.package_path}"
}