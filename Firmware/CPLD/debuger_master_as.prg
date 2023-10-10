usb_connect
if { [as_device_id] } {
  as_write  ./debuger_master.bin
  as_verify ./debuger_master.bin
}
usb_close
