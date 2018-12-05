# Helm Chart Archive
Package a Helm Chart for distribution.

## Example
```Terraform
module "helm_chart_archive" {
    source      = "rojopolis/chart-archive/helm"
    src_dir     = "${path.module}/mychart"
    dst_dir = "${path.module}/myrepo"
}

output "helm_chart_archive_path" {
    value = "${module.helm_chart_archive.package_path}"
}
```

## External Dependencies
1. Python3.4+
2. [Helm](https://docs.helm.sh/using_helm/#installing-helm)