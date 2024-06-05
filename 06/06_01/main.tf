# Define the MongoDB Atlas Provider
terraform {
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "1.16.2"
    }
  }

  required_version = "1.8.4"
}

provider "mongodbatlas" {
  public_key  = var.MONGODB_ATLAS_PUBLIC_KEY
  private_key = var.MONGODB_ATLAS_PRIVATE_KEY
}


# Project
resource "mongodbatlas_project" "myproject" {
  name        = "myproject"
  org_id      = var.MONGODB_ATLAS_ORGANIZATION_ID
}

# Cluster
resource "mongodbatlas_cluster" "mycluster" {
  project_id = mongodbatlas_project.myproject.id
  name         = "cluster-test"
  provider_name = "TENANT"
  backing_provider_name = "AWS"
  provider_region_name = "US_EAST_1"
  provider_instance_size_name = "M0"
}


# Database User
resource "mongodbatlas_database_user" "bob" {
  project_id = mongodbatlas_project.myproject.id
  username = "bob"
  password = "fXUJAFkf5ZZbuY6z"
  auth_database_name = "admin"
  roles {
    role_name     = "readWrite"
    database_name = "admin"
  }
  depends_on  = [mongodbatlas_cluster.mycluster]
}


resource "mongodbatlas_project_ip_access_list" "open_access" {
  project_id = mongodbatlas_project.myproject.id
  cidr_block = "0.0.0.0/0"
  depends_on  = [mongodbatlas_cluster.mycluster, mongodbatlas_database_user.bob]
}