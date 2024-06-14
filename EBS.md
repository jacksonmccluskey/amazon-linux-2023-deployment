# Quick Start

Connect to EC2 Instance with MongoDB (mongod service)

	$ ssh -i “*-key-pair.pem” ec2-user@<domain>

List information about all available block devices.

	$ lsblk # DEVICES + MOUNTPOINTS

Determine file type of a block device.

	$ sudo file -s /dev/$BLOCK_DEVICE_NAME

	Interpret Output: (1) /data = NO FS; (2) SGI XFS… = XFS; (N) DOS/MBR = boot

Or, get information and file type of block devices in one command.

	$ lsblk -f

Build a Linux file system for a block device if none is created (/data).

	$ sudo mkfs -t xfs /dev/$BLOCK_DEVICE_NAME

Make an empty directory to mount the volume.

	$ sudo mkdir /directory_ebs

Attach a file system on a block device to the file tree.

	$ sudo mount /dev/$BLOCK_DEVICE_NAME /directory_ebs

Detach a file system on a block device from the file tree (to make changes).

	$ sudo umount /dev/$BLOCK_DEVICE_NAME

Display the amount of space available on each filesystem.

	$ df -h

Copy directory with contents to file system attached to a block device.

	$ sudo rsync -avz –chown=$USER:$USER /directory/. /directory_ebs

Backup /etc/fstab file before making any changes.

	$ sudo cp /etc/fstab /etc/fstab.original

Mount attached volume automatically after reboot.

	$ blkid # Add To fstab: “UUID=c1b… /directory_ebs xfs defaults 0 2”
