#!/bin/bash

# Update CentOS without any paches
yum update -y --exclude=kernel

yum install -y nano git unzip screen nc telnet