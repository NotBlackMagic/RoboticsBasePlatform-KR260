import os
from glob import glob
from setuptools import setup

package_name = 'perception'

setup(
	name=package_name,
	version='0.0.1',
	packages=[package_name],
	data_files=[
		('share/ament_index/resource_index/packages',
			['resource/' + package_name]),
		('share/' + package_name, ['package.xml']),
		(os.path.join('share', 'kr260_pynq'), glob('kr260_pynq/*')),
	],
	install_requires=['setuptools'],
	zip_safe=True,
	maintainer='NotBlackMagic',
	maintainer_email='social@notblackmagic.com',
	description='Perception package for the KR260, using the DPU for object detection.',
	license='BSD 3-Clause License',
	tests_require=['pytest'],
	entry_points={
		'console_scripts': [
			'gnss_receiver = perception.gnss_receiver:main',
		],
	},
)
