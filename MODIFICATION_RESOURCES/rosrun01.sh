#This is the correct one !!!!!!!!
# Use it with the provided Dockerfile to convert xacro to URDF
docker run -v D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot:/xacro ros_ur:latest rosrun xacro xacro --inorder /xacro/ur_description/urdf/ur10_robot.urdf.xacro > D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot\ur_description\urdf\ur10_robot.urdf

rosrun xacro xacro --inorder D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot\ur_description\urdf\ur10_robot.urdf.xacro > model.urdf


docker run -it --rm -v D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot:/work osrf/ros:kinetic-desktop



docker run -v D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot\ur_description:/xacro osrf/ros:kinetic-desktop-full rosrun xacro xacro --inorder /xacro/urdf/ur10_robot.urdf.xacro > panda_arm_hand.urdf


docker run -v D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot:/xacro osrf/ros:kinetic-desktop-full rosrun xacro xacro --inorder /xacro/ur_description/urdf/ur10_robot.urdf.xacro > testur10.urdf




docker run -v D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot:/xacro ros_ur:latest rosrun xacro xacro --inorder /xacro/ur_description/urdf/ur5_robot.urdf.xacro > D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot\ur_description\urdf\ur5_robot.urdf

rosrun xacro xacro --inorder ur10_robot.urdf.xacro > ur10_robot.urdf