# PiMontionStreaming

# Camera SetUp
https://www.youtube.com/watch?v=8mv9n_ylGgc \
sudo raspi-config \
vcgencmd get_camera \
sudo apt update \
sudo apt upgrade \
sudo apt install libcamera-apps \

$ sudo apt install motion -y \
$ sudo systemctl start motion \
$ sudo systemctl enable motion \
$ sudo systemctl status motion \
$ sudo systemctl stop motion \
$ sudo systemctl restart motion \
https://medium.com/@VK_Venkatkumar/real-time-image-classification-using-edge-impulse-on-raspberry-pi-tinyml-3a52c4ba7bab \
https://www.tomshardware.com/how-to/raspberry-pi-facial-recognition \


**Note:** If `motion` is configured to run as a different user, adjust permissions accordingly. Also, ensure that the log directory exists; if not, create it:
sudo mkdir -p /var/log/motion
sudo chown motion:motion /var/log/motion
