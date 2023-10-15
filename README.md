K-Medoid Clustering Method for Facility Location Optimization
Overview
This project, formulated and developed at the Swinburne University of Technology, explores the K-Medoid clustering method through the lens of integer programming problems. By applying this methodology to real-world scenarios, this project aims to provide insights and solutions for optimal facility location selection, with a case study focusing on minimizing accident response times in Great Britain.

Abstract
Clustering methods such as K-Medoid help to identify subgroups or clusters within a dataset that are internally similar. Through the context of integer programming, a mathematical decision-making framework, this project delves into a detailed analysis and implementation of the K-Medoid method. By applying this method to geographic accident data across Great Britain, this study seeks to optimally locate emergency response units, such as ambulances, to minimize response times and enhance disaster management efficiency.

Key Concepts
K-Medoids Clustering
K-Medoids clustering is a robust alternative to K-Means, particularly useful when a real-world representation (actual data point) of each cluster center is required, which is prevalent in applications such as determining efficient emergency response unit locations.

Integer Programming
A mathematical optimization where the objective function and constraints are linear but the decision variables are constrained to take integer values. This becomes crucial for deciding optimal allocation resources, especially in disaster management.

Code Implementation
Instructions for Running the Code
Platform: MATLAB
Dependencies: Ensure the installation of the Statistics and Machine Learning Toolbox from MATLAB's Add-Ons.
Data File: Utilize a data file, preferably named 'urbanGB.txt', containing geographical data points (longitude and latitude) separated by spaces or tabs. Place this file in the MATLAB working directory.
Implementation Overview
The code initially visualizes the data points, representing accident locations across Great Britain.
It defines k (in this context, k = 4) center locations and calculates the Euclidean distances between data points using the pdist2 function.
The code further applies integer linear programming to minimize the total distance between points and their respective centers, adhering to constraints ensuring each point is allocated to one center and precisely k centers are selected.
If feasible solutions are inaccessible via the primary method, the code switches to utilizing MATLAB's built-in K-Medoids algorithm, implemented via the Partitioning Around Medoids (PAM) technique.
Key Functions
pdist2: Used to compute Euclidean distances between each pair of observation points.
K-Medoids Algorithm: Either implemented through Integer Programming or as an alternative method through PAM.
Application & Conclusion
The methodology illustrated in this project, utilizing K-Medoid clustering, efficiently determines optimal locations for emergency services in correlation to accident-prone regions in Great Britain. The implication of this application is far-reaching, providing plausible improvements in emergency response times and resource allocations, pivotal for disaster management.

Future Work
The project offers an avenue for further research, exploring the incorporation of more intricate constraints and investigating alternative clustering and data mining methodologies, such as DBSCAN and Mean-Shift Clustering, for comparison in accuracy and efficiency.

References
Knapp, T. R. (1977). The American Statistician, 31(4), 165-168.
Bodaghi, B., & Sukhorukova, N. (2018). arXiv:1812.01228.
Seif, G. (2018, September 17). Towards Data Science.
Notes
Ensure adherence to MATLAB's guidelines and recommendations for best practices.
Explore the data and various algorithm parameters for different results and insights.
Developed By: Duy Khoa Pham
Institution: Swinburne University of Technology
Date: May 2023
Student ID: 103515617
