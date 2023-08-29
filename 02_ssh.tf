resource "aws_key_pair" "ksh_ssh" {
  key_name = "ksh"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDFaVacEU3z8dwDd0bAZhKdIcFhuw5UBM0PllL9YAxE58VJrDBB5tHdyifl7VIKpcQbdhWh0+MLrtRYRna9dft4KRA4IJXq01cCkOuEaUemqAtnHTSp/hqxIiqz3vBD8yPXtLcMd2WXKXV+QYA9dx7BLsTBUUqVSKsA+2+Eb4mGe26z2TT+jWzO9TNMHP1EJFCalKS/AHCEVLDCSAvMHwbjorye8f2rHP7MZltitMinEDbNykGoXC8U8Yz/5oMJc61JsRtQ2lkX//B7rBSU9JVF+ae6JNZw5Tu8eFmZiDyk1rywIL0L29pwvBJmIjJrE1d8kUX4nkv+yJ+axcx+Cc9FLCpmS4XvF+1UpyFgJzaWcUnkieroLKi9DXfO6s2/7EeN7952w2w9EtB1MZroyzeJqUfIhHPg2AfUGurLtFQqV/EBKcmW3Op7hJjnvbnyJQDNTe4nt7K/dd6G6N4zNKnZYI55Jmczm27BQzmACmMjyoreoYQE35tx9lzUQth4qbE= user@DESKTOP-8DFH9TO"
}

resource "aws_key_pair" "ksh1_ssh" {
  key_name = "ksh1"
  public_key = file("../../Users/user/.ssh/ksh.pub")
}