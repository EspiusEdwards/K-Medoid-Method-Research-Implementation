# K-Medoid Method Research & Implementation

## Swinburne University of Technology
### School of Science, Computing and Engineering Technologies
#### MTH30006 – Optimisation
#### Research Project: K-medoid Method As An Integer Programming Problem And Application To Facility Location Problems

**Name**: Duy Khoa Pham  
**Student ID**: 103515617  
**Date**: May - 2023  

## Table of Contents
1. [Abstract](#abstract)
2. [Introduction](#introduction)
3. [K-Medoid Method Formulated As An Integer Programming Problem](#k-medoid-method-formulated-as-an-integer-programming-problem)
4. [Application in defining center location in Great Britain](#application-in-defining-center-location-in-great-britain)
5. [Conclusion](#conclusion)
6. [References](#references)

## Abstract
Clustering is a versatile data analysis technique used to determine subgroups of similar items within a dataset. The K-Medoid Method, in particular, stands out due to its robustness against outliers and its capability to handle categorical data. This research project is centered on formulating the K-Medoid method as an integer programming problem and explores its practical application in determining optimal facility location points in Great Britain.

## Introduction
### Defining the Problem
Accidents and emergencies necessitate a rapid response, often dictated by the proximity of incident management resources. Identifying optimal locations for resource centers is a quintessential aspect of efficient emergency management and response.

### K-Medoids Clustering
The K-Medoids algorithm differentiates itself from other clustering algorithms by using actual data points as cluster centers, reducing the impact of outliers and providing more robust and interpretable results.

### Integer Programming Problem
Integer programming provides a framework for solving optimization problems where variables are constrained to take on integer values, facilitating more practical solutions in certain real-world problems.

## K-Medoid Method Formulated As An Integer Programming Problem
### Mathematical Problem
To contextualize, consider an emergency incident data set where each data point represents an incident's geographical location. The objective is to locate optimal centers to minimize the aggregate distance from the centers to all incident points.

### Integer Programming Problem Formulation
The mathematical formulation seeks to minimize the sum of distances between data points and their respective cluster centers, subject to constraints that ensure each data point is assigned to one cluster and that exactly "k" cluster centers are chosen.

### Formulation Explanation
The objective function and constraints are formulated such that the solution ensures minimized aggregate distances while adhering to the operational and resource limitations.

## Application in defining center location in Great Britain
### Instruction for Running the Code
The MATLAB script is tailored to analyze spatial data of incidents and derive optimal locations for resource centers. Ensure you have the MATLAB software and requisite toolboxes installed and run the script in the MATLAB environment.

### Implementation Explanation
The script initiates by generating a scatter plot of incident locations. Subsequently, utilizing the integer programming problem formulated earlier, it calculates and displays optimal resource center locations, providing a visual and analytical reference for emergency response planning.

## Conclusion
In emergency response scenarios, the expedited and strategically located deployment of resources is critical. The research showcases the potential of the K-Medoid method, formulated as an integer programming problem, in devising optimal locations for resource centers, enhancing the effectiveness of response to incidents across Great Britain.

## References
- Knapp, T. R. (1977). Finite population unbiasedness in survey sampling. International Statistical Review, 45(2), 205-217.
- Bodaghi, B., & Sukhorukova, N. (2018). Solving multi-resource allocation problems using the constrained empirical risk minimization framework. International Journal of Production Research, 56(1-2), 943-955.
- Seif, G. (2018, September 17). Understanding K-means, K-means++, and K-medoids Clustering Algorithms. Towards Data Science. [https://towardsdatascience.com](https://towardsdatascience.com)