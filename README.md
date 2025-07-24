# Efficient Intelligent Energy Routing Protocol in Wireless Sensor Networks

![WSN](https://img.shields.io/badge/WSN-Energy--Efficient--Routing-green)
![MATLAB](https://img.shields.io/badge/Language-MATLAB-blue)
![License](https://img.shields.io/badge/Project%20Status-Completed-brightgreen)

## 📘 Overview

This project presents an **Efficient Energy, Least Cost, Quality of Service-Based Routing Protocol (ECQSR)** for Wireless Sensor Networks (WSNs), designed to optimize energy consumption and extend network lifetime using intelligent optimization algorithms.

Implemented entirely in **MATLAB**, this project compares three optimization strategies:

- **Nearest Neighbor (NN) Algorithm**
- **Tabu Search (TS)**
- **Ant Colony Optimization (ACO)**

Each algorithm was evaluated on path efficiency, energy consumption, and computational time. The proposed protocol helps in selecting energy-efficient, low-cost paths for data routing in WSNs, while meeting QoS requirements.

---

## 📌 Objectives

- To develop an energy-aware and QoS-supported routing protocol.
- To optimize routing paths using intelligent algorithms.
- To compare NN, TS, and ACO in terms of efficiency, cost, and performance.
- To improve the lifetime and reliability of WSNs.

---

## ⚙️ Algorithms Used

### 1. **Nearest Neighbor (NN)**  
- Greedy heuristic for path selection.
- Selects the nearest unvisited node at each step.
- Fastest in execution, ideal for networks with ≤300 nodes.

### 2. **Tabu Search (TS)**  
- Memory-based local search.
- Prevents cycling with a "tabu list".
- Slower but finds better global minima.

### 3. **Ant Colony Optimization (ACO)**  
- Inspired by ant foraging behavior.
- Probabilistic decision-making based on pheromone trails.
- Performs well with large search spaces.

---

## 📊 Results & Performance Evaluation

| Algorithm | Language | Cost     | Execution Time |
|-----------|----------|----------|----------------|
| NN        | MATLAB   | 374.03   | 0.68 sec       |
| TS        | MATLAB   | 405.90   | 41.54 sec      |
| ACO       | MATLAB   | 489.90   | 7.49 sec       |

- **NN** performed best in small-to-mid-size networks due to faster convergence and lower cost.
- **TS** yielded competitive results but was more computationally intensive.
- **ACO** showed higher path cost in this experiment, though it is scalable to larger datasets.

---

## ✅ Conclusion

- **ECQSR protocol** demonstrates effective energy-aware routing in WSNs.
- NN algorithm proved to be the most efficient in networks with fewer nodes.
- The project showcases practical MATLAB implementations of heuristic algorithms and proves their value through quantitative analysis.

---

## 🚀 Future Enhancements

- Extend testing to larger-scale networks (1000+ nodes).
- Integrate fuzzy logic and genetic algorithms for hybrid optimization.
- Simulate real-world scenarios with dynamic sensor behavior and mobile sinks.
- Adapt protocol for use in IoT-based smart environments.

---

## 💡 Skills Demonstrated

- Advanced Algorithm Design & Optimization
- Wireless Sensor Network Architecture
- MATLAB Simulation & Data Visualization
- Research and Comparative Analysis
- Technical Report Writing

---

## 🧠 Reference Papers

- Alsalibi et al. (2019) - NN vs Genetic Algorithms in TSP
- Camilo et al. - Energy Efficient Ant-Based Routing
- Xia and Xu - ACO-EAMRA for Optimal Routing
- Mishra et al. - Survey on Clustering Protocols
- Heinzelman et al. - LEACH Protocol


---

## 📫 Author

**Anbu Chandran K**  
📍 [LinkedIn](https://www.linkedin.com/in/anbuchandran)  
🌐 [Portfolio](https://anbuchandran.vercel.app)

---

## 📄 License

This project is a part of academic research and is intended for learning and demonstration purposes only.


