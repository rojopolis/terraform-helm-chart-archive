output "package_path" {
    value = "${data.external.helm_package.result["package_path"]}"
}