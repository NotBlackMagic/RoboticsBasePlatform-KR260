import os

from ament_index_python.packages import get_package_share_directory

from launch import LaunchDescription
from launch_ros.actions import Node

from launch.substitutions import FindExecutable
from launch.actions import ExecuteProcess

def generate_launch_description():
    # Start Velocity controller
	start_vel_ctrl_cmd = Node(
		package="locomotion",
		executable="vel_ctrl",
		name="vel_ctrl"
	)

	# Start Keyboard Control 
	start_keyboard_ctrl_cmd = Node(
		package="locomotion",
		executable="keyboard_ctrl",
		name="keyboard_ctrl"
	)

	# Start RC Remote Control 
	start_rc_remote_ctrl = Node(
		package="locomotion",
		executable="rc_remote_ctrl",
		name="rc_remote_ctrl"
	)

    # Create the launch description and populate
	ld = LaunchDescription()

    # Declare the launch options

    # Add any actions
	ld.add_action(start_vel_ctrl_cmd)
	# ld.add_action(start_keyboard_ctrl_cmd)
	ld.add_action(start_rc_remote_ctrl)

	return ld