
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcpputils, rcutils, rmw, rmw-implementation, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-test-msgdefs, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, shared-queues-vendor, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-cpp";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_cpp/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "fb6c81a3e49af192e94e54d29bae8d2fa05e05110a3f2f1e56c3b21efed86596";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-storage-default-plugins rosbag2-test-common rosbag2-test-msgdefs test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp pluginlib rclcpp rcpputils rcutils rmw rmw-implementation rosbag2-storage rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp shared-queues-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROSBag2 client library";
    license = with lib.licenses; [ asl20 ];
  };
}
