import os
from glob import glob
from setuptools import setup

package_name = 'locomotion'

setup(
	name=package_name,
	version='0.0.1',
	packages=[package_name],
	data_files=[
		('share/ament_index/resource_index/packages',
			['resource/' + package_name]),
		('share/' + package_name, ['package.xml']),
		(os.path.join('share', 'kr260_pixhawk_v2'), glob('kr260_pixhawk_v2/*')),
		(os.path.join('share', package_name), glob('launch/*launch.[pxy][yma]*')),
        (os.path.join('share', package_name, 'config'), glob('config/*.yaml'))
	],
	install_requires=['setuptools'],
	zip_safe=True,
	maintainer='NotBlackMagic',
	maintainer_email='social@notblackmagic.com',
	description='Locomotion controller for the a KR260 based wheeled robot.',
	license='BSD 3-Clause License',
	tests_require=['pytest'],
	entry_points={
		'console_scripts': [
			'rc_remote_ctrl = locomotion.rc_remote_control:main',
			'keyboard_ctrl = locomotion.keyboard_control:main',
			'vel_ctrl = locomotion.velocity_controller:main',
		],
	},
)
