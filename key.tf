resource "aws_key_pair" "valhein_key" {

  key_name   = "valhein_key"
  public_key = file(var.PATH_TO_PUBLIC_KEY)

}
