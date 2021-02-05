
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, map-organizer-msgs, map-server, nav-msgs, neonavigation-common, pcl, pcl-conversions, roscpp, roslint, rostest, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-map-organizer";
  version = "0.10.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/map_organizer/0.10.6-1.tar.gz";
    name = "0.10.6-1.tar.gz";
    sha256 = "e70688b82f7ff63a48a4a8caa476a043b7c28496b75e2c7d159238a225f6bed3";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ eigen geometry-msgs map-organizer-msgs map-server nav-msgs neonavigation-common pcl pcl-conversions roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Layered costmap organizer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
