variable "dir" {
    description = "Path to existing directory to index"
    type        = "string"
}

variable "merge" {
    description = "Merge the generated index into the given index."
    type        = "string"
    default     = ""
}

variable "url" {
    description = "URL of chart repository."
    type        = "string"
    default     = ""
}