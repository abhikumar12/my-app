# Cloud-Native DevOps Project

This is a sample project that demonstrates a cloud-first DevOps workflow without any local setup. It uses a simple Node.js application, GitHub Actions for CI/CD, and managed cloud services for deployment and observability.

## Deployment

The application is deployed to [🔗](https://render.com/) using the provided render.yaml configuration file. To deploy:

1. Create a Render account and connect it to your GitHub repository.
2. Render will automatically build and deploy the application on every push to the main branch.

## CI/CD

The project uses GitHub Actions to implement a CI/CD pipeline. The main workflow steps are:

1. Checkout the repository.
2. Set up Node.js.
3. Install dependencies and run linting and tests.
4. Build and push the Docker image to the GitHub Container Registry (ghcr.io).

The pipeline is defined in the .github/workflows/ci.yml file.

## Infrastructure as Code (Optional)

If you prefer to use a cloud provider like Google Cloud, you can use Terraform to provision the necessary infrastructure. The main.tf file contains an example configuration to deploy the application to Google Cloud Run.

To use Terraform, you'll need to have a Google Cloud account and set up a Terraform Cloud workspace to manage the remote state.

## Local Development

This project is designed to be developed entirely in the cloud, using a browser-based IDE like GitHub Codespaces or Gitpod. There is no need for local installations.

To get started, click the "Open in Codespaces" button on the GitHub repository page, or use the Gitpod button if you have a Gitpod account.

## Resources

- [🔗](https://docs.github.com/en/actions)
- [🔗](https://render.com/docs)
- [🔗](https://www.terraform.io/cloud-docs)
- [🔗](https://cloud.google.com/run/docs)
