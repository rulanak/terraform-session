output "db-password" {
  value = data.terraform_remote_state.db.outputs.db_password
}
// Terraform writes the state data to a remote data store, which can then be shared between all members of a team.
// only works with outputs