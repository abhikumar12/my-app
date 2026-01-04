 project = "your-gcp-project-id"
  region  = "us-central1"
}

resource "google_cloud_run_service" "devops_app" {
  name     = "devops-app"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "gcr.io/${google_project_service_identity.cloud_run_identity.project_id}/devops-app:latest"
        ports {
          container_port = 3000
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_project_service_identity" "cloud_run_identity" {
  provider = google
  service = "run.googleapis.com"
}

output "service_url" {
  value = google_cloud_run_service.devops_app.status[0].url
}
