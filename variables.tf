variable "src_dir" {
    description = "Path to root of Helm chart"
    type        = "string"
}

variable "dst_dir" {
    description = "Path to existing directory to receive archive"
    type        = "string"
}

variable "app_version" {
    description = "Set the appVersion on the chart to this version."
    type        = "string"
    default     = ""
}

variable "dependency_update" {
    description = "Update dependencies from requirements.yaml to dir charts/ before packaging."
    type        = "string"
    default     = true
}

variable "key" { 
    description = "Name of the key to use when signing. Used if `sign` is true."
    type        = "string"
    default     = ""
}

variable "keyring" {
    description = "location of a public keyring."
    type        = "string"
    default     = ""
}

variable "save" {
    description = "Save packaged chart to local chart repository."
    type        = "string"
    default     = true
}

variable "sign" {
    description = "use a PGP private key to sign this package."
    type        = "string"
    default     = false
}

variable "version" {
    description = "Set the version on the chart to this semver version"
    type        = "string"
    default     = ""
}