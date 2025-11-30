# Local Terraform + LocalStack CI 

This repository contains a simple CI pipeline using GitHub Actions, Terraform, and LocalStack. 

Key features:
- Starts LocalStack to emulate AWS services locally.
- Runs Terraform to create infrastructure in LocalStack.
- Uploads a test artifact to a LocalStack S3 bucket.
- Lists the bucket contents to verify the upload.
- Stops LocalStack after the workflow completes.
