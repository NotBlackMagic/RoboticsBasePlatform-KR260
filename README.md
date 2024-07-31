# RoboticsBasePlatform-KR260

This repository holds all the code developed during the 2023/2024 AMD Pervasive AI competition that was held on [Hackster](https://www.hackster.io/contests/amd2023). The respective project is also hosted on Hackster with the name [AgroWeed Seeker (AWS)]((https://www.hackster.io/NotBlackMagic/agroweed-seeker-aws-e6b298)).

## Organization

This repository is organized in the following folder structure:

 - **Documents:** Holds some relevant documents such as the pin mapping for the KR260 for the custom overlay (kr260_pixhawk_v3) and its Vivado block diagram.
 - **Overlays:** Holds the compiled, device tree compiled, custom overlays developed for the project. The main two, kr260_pixhawk_v3 (no DPU) and kr260_pixhawk_v3_dpu (has issues with the DPU) are built with Vivado 2024.1, while kr260_pynq (working DPU) was built with Vivado 2023.2. These overlays can be copied to the KR260 and loaded either using xmuitl or with PYNQ.
 - **Python:** Holds all the developed Python code. This includes drivers/wrappers for interfacing with the custom overlay (kr260_pixhawk_v3) and hardware (/Python/Driver), example and test code interfacing with the custom overlay and with OpenCV, OpenNI and streaming video (/Python/Examples) and code for the multispectral acquisition system as well as the vision perception system.
 - **ROS 2:** Holds the developed ROS 2 packages, Locomotion and Perception.
 - **Vivado:** Holds the Vivado project used to build the custom overlay (kr260_pixhawk_v3).
 - **Vitis:** Holds the Vitis project used to test the RPU of the KR260. Very basic example used to evaluate the design flow and deploying it to the RPU.



