#This is the correct one !!!!!!!!
# Use it with the provided Dockerfile to convert xacro to URDF

docker run -v D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot:/xacro ros_ur:latest rosrun xacro xacro --inorder /xacro/ur_e_description/urdf/ur10e_robot.urdf.xacro > D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot\ur_e_description\urdf\ur10e_robot.urdf

docker run -v D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot:/xacro ros_ur:latest rosrun xacro xacro --inorder /xacro/ur_e_description/urdf/ur5e_robot.urdf.xacro > D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot\ur_e_description\urdf\ur5e_robot.urdf

docker run -v D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot:/xacro ros_ur:latest rosrun xacro xacro --inorder /xacro/ur_e_description/urdf/ur3e_robot.urdf.xacro > D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot\ur_e_description\urdf\ur3e_robot.urdf

docker run -v D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot:/xacro ros_ur:latest rosrun xacro xacro --inorder /xacro/ur_e_description/urdf/ur16e_robot.urdf.xacro > D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot\ur_e_description\urdf\ur16e_robot.urdf


@REM rosrun xacro xacro --inorder D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot\ur_e_description\urdf\ur10e_robot.urdf.xacro > model.urdf
@REM docker run -it --rm -v D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot:/work osrf/ros:kinetic-desktop

@REM docker run -v D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot\ur_e_description:/xacro osrf/ros:kinetic-desktop-full rosrun xacro xacro --inorder /xacro/urdf/ur10e_robot.urdf.xacro > panda_arm_hand.urdf


@REM docker run -v D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot:/xacro osrf/ros:kinetic-desktop-full rosrun xacro xacro --inorder /xacro/ur_e_description/urdf/ur10e_robot.urdf.xacro > testur10e.urdf




@REM docker run -v D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot:/xacro ros_ur:latest rosrun xacro xacro --inorder /xacro/ur_e_description/urdf/ur5e_robot.urdf.xacro > D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot\ur_e_description\urdf\ur5_robot.urdf

@REM rosrun xacro xacro --inorder ur10e_robot.urdf.xacro > ur10e_robot.urdf