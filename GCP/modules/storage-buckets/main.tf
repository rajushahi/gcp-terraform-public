resource "google_storage_bucket" "storage" {
  count           = "${length(var.bucket_name)}"
  name            = "ddn-${var.bucket_name[count.index]}"
  location        = "${var.region}"
  storage_class   = "${var.storage_class}"
  force_destroy   = "true"

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = "10"
    }
  }
}
