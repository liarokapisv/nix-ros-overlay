
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-hls-lfcd-lds-driver";
  version = "2.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hls_lfcd_lds_driver-release/archive/release/humble/hls_lfcd_lds_driver/2.0.4-3.tar.gz";
    name = "2.0.4-3.tar.gz";
    sha256 = "4ccdcb3e3af90bcc365752b031aa9ae6770ecd63fbd56320a1a9accdc63fd779";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS package for LDS(HLS-LFCD2).
    The LDS (Laser Distance Sensor) is a sensor sending the data to Host for the simultaneous localization and mapping (SLAM). Simultaneously the detecting obstacle data can also be sent to Host. HLDS(Hitachi-LG Data Storage) is developing the technology for the moving platform sensor such as Robot Vacuum Cleaners, Home Robot, Robotics Lawn Mower Sensor, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
