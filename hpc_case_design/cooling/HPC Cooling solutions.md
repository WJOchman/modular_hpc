# HPC Cooling solutions
# Methodology </br>
Looking over various cooling methods, our team decided that combining existing techniques within our HPC architecture would be best for overall performance and optimal temperature for HPC components. The combination of row cooling, raised-floor cooling and forced convection make up the basis for cooling the HPC.

https://downloads.dell.com/manuals/all-products/esuprt_software/esuprt_it_ops_datcentr_mgmt/high-computing-solution-resources_white-papers48_en-us.pdf

## Row Cooling</br>
This implies a row-oriented cooling architecture, each cooling unit (fan) is dedicated to cooling one node (row of a module), as opposed to having a larger fan for an entire module. </br>
The benefits of having row cooling include: </br>
#### Redundancy:</br>
Individual fans provide redundancy. If one fan fails, the impact is limited to the row it serves, reducing the risk of widespread cooling failure. In contrast, a central fan failure could affect the entire cluster.</br>
#### Localized Cooling:</br>
Individual fans allow for more precise cooling control. You can adjust the airflow and cooling levels for each row based on specific requirements. This is especially beneficial in large clusters where different rows may have varying workloads or heat dissipation needs.</br>
#### Zoning and Scalability:</br>
With individual fans, it's easier to create cooling zones within the cluster. This allows for more scalable cooling solutions. You can add or remove fans based on the specific needs of different sections of the cluster.</br>
#### Efficient Power Usage:</br>
Tailoring the cooling to specific rows can lead to more efficient power usage. You can optimize the fan speed and airflow for each row based on its workload, avoiding overcooling and reducing overall power consumption.</br>
#### Better Heat Dissipation:</br>
Individual fans can be strategically placed to optimize heat dissipation from specific components on each row. This targeted cooling approach can result in more effective heat removal, preventing hotspots.</br>
#### Adaptability to Cluster Changes:</br>
As the cluster evolves, the cooling system can be easily adapted. Adding or removing nodes in a particular row can be accommodated by adjusting the corresponding fan setup without affecting the entire cluster.</br>
#### Noise Reduction:</br>
Multiple smaller fans distributed across the rows can operate at lower speeds, potentially reducing noise levels compared to a single large central fan operating at a higher speed.</br>
#### Easier Maintenance:</br>
Individual fans are often easier to access and maintain. If a fan needs replacement or maintenance, it can be done without disrupting the entire cluster.</br>
#### Customizable Airflow:</br>
Individual fans provide the flexibility to customize the airflow direction and speed for each row based on the orientation of components within that row, ensuring optimal cooling efficiency.</br>
#### Cooling Control Software:</br>
Modern HPC systems often come with sophisticated cooling control software that can manage individual fans dynamically based on real-time temperature readings. This level of control is crucial for maintaining optimal operating conditions.</br>

https://www.wwt.com/article/5-advantages-of-row-cooling-vs-room-cooling-edge-and-data-center

## Raised-floor cooling</br>
Airflow management is critical for maintaining proper operating temperatures and minimizing the risk of equipment failure. This is why we aim to implement raised-floor cooling by slightly suspending the motherboard to allow the flow of air within the plenum.
#### Flexibility in Cooling Infrastructure:
Raised floor systems provide flexibility in the placement of perforated tiles or grates.
#### Casing Isolation:
The ABS material holding up the motherboard pervents the transfer of heat to the acrylic casing helping to further isolate the heat between modules.
#### Efficient Airflow Management:
Raised floors allow for better management of airflow pathways. Air can be directed precisely to where it's needed, minimizing the mixing of hot and cold air and improving the overall cooling efficiency.
#### Minimizing Hotspots:
By delivering cool air from the raised floor directly to the HPC racks, the likelihood of hotspots (localized areas with higher temperatures) is reduced. This helps maintain a more consistent temperature throughout the HPC cluster, improving the reliability and performance of components.
#### Air Distribution:
Raised floor systems facilitate the distribution of cool air more effectively. More air can flow above and below the motherboard.

https://www.jasc.ch/why-raised-floors-are-essential-for-data-center-airflow-management

## Forced Convection
This is a type of heat transfer that requires an external source (fan) which is used to force matter (air in this context) to flow over a solid surface (the motherboard). 
#### Faster Heat Dissipation:
Forced convection provides faster and more controlled air movement. Fans actively push or pull air through the row's components, expediting the removal of heat generated by components. This faster heat dissipation is crucial for maintaining optimal operating temperatures in an HPC cluster.
#### Improved Temperature Uniformity:
Fans help distribute air more evenly across the components in the row, reducing the likelihood of hotspots. This results in better temperature uniformity within the cluster, which is essential for preventing thermal imbalances and ensuring consistent performance.
#### Enhanced Cooling Capacity:
Forced convection systems can provide a higher cooling capacity compared to relying solely on natural convection. Fans can move a larger volume of air, allowing for more effective heat transfer and cooling, especially in densely packed computing environments.
#### Adaptability to Varied Workloads:
Forced convection systems can be adjusted to accommodate varying workloads. Fans can be controlled dynamically to increase or decrease airflow based on the real-time heat dissipation needs of the HPC cluster. This adaptability is crucial for handling changing computational loads while managing power consumption.
#### Reduction of Thermal Lag:
Forced convection reduces the thermal lag associated with natural convection. The rapid movement of air helps minimize the time it takes for heat to be transferred away from components, preventing the build-up of high temperatures.
#### Mitigation of Environmental Factors:
Forced convection is less affected by environmental factors such as room temperature and air density variations. Natural convection can be influenced by these factors, leading to less predictable and potentially less effective cooling. This also aids consistent perfomance in various environments.
#### Reduced Reliance on Passive Cooling:
Forced convection reduces the dependence on passive cooling methods, which can be insufficient in handling the heat generated by high-performance computing components. Fans provide an active and reliable means of heat dissipation.

https://byjusexamprep.com/gate-me/forced-convection