
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-geometry, image-proc, image-transport, message-filters, nodelet, rostest, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-melodic-stereo-image-proc";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/stereo_image_proc/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "2f585cfbd533c88245330dfe58799c9ac7ffe7c03a54dd5fb2c5f01c8dd0adc4";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-geometry image-proc image-transport message-filters nodelet sensor-msgs stereo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stereo and single image rectification and disparity processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
