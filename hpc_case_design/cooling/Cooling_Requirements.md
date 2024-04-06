# Cooling Requirements
Before a fan can be specified, the airflow required to dissipate the heat generated has to be approximated. Both the amount of heat to be dissipated and the density of the air must be known. </br>
First we would need to determine the required airflow to adequately cool the components. For this, you can use a rough estimate from the specification of our components. The case can use up a maximum of 220W of power, supplied by the PSU. Strictly for lower limit calculation, we assume that the heat load per row of our cluster is 220W (This would mean that the efficiency of the components is 0).</br> BTU/hr is  defined by the quantity of heat required to raise the temperature of 454 grams of water from 60 to 61 degrees Fahrenheit.  BTUs/hr is normally used in the definition of the cooling power of HVAC systems as well as of the heating power of fuel.</br>
It is a standard that 1watt requires 3.412BTU/hr for cooling.</br>

So, the required cooling capacity in BTU/hr would be:</br>

220 watts * 3.412 BTU/hr per watt ≈ 750 BTU/hr
#### To get the CFM requirements: 
CFM=(Cooling Capacity(BTU/hr))/(Delta T*1.08)</br>
Delta T is the temperature difference between the supply air and return air in degrees Fahrenheit.</br>
1.08 is a convenience factor use to calculate CFM / airflow.</br> This has one big problem: we don’t measure airflow by weight, but by volume. AHRI Standard air weighs 0.075 pounds per cubic foot. We can convert a volume to a weight by multiplying the volume by 0.075 lbs/ft3.</br> Another issue is that we tend to measure airflow by the minute and BTUs by the hour. You can fix that by multiplying times 60. Finally, we need the specific heat of air, which is 0.24. When you multiply the air volume by 0.075 to turn CFM into pounds per minute, multiply pounds per minute by 60 to get pounds per hour, and multiply by the specific heat of air 0.24, you end up with 1.08 (60 x .075 x 0.24 = 1.08).</br> The number is not really a constant because the volume of the air varies a lot with temperature, which changes the "magic number."</br>
CFM=(750BTU/hr)/(36°F*1.08)</br>
CFM ≈  (750BTU/hr)/38.88</br>
CFM ≈ 19.29</br>
NOTE: EDIT DELTA T TO REFLECT AIR COMING IN VS GOING OUT</br>

# Vent calculations
For proper airflow circulation, you'll need to ensure that the total cross-sectional area of the exhaust vent is equal to or greater than the cross-sectional area of the fan's inlet (or intake) area. This ensures that the airflow is not restricted, allowing for efficient cooling. </br>
Therefore: </br>
Areainlet  = π * (dinlet /2)2</br>
= π*(92/2)2</br>
= 6647.6mm2</br>
