#!/bin/bash

tar cpf /archive/full-backup-"created on `date '+%d-%B-%Y'`.tar" /home /etc/vsftpd.conf /etc/ssh/sshd_config /etc/xrdp/xrdp.ini /var/log

