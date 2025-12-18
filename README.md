# Network Topology Creation - Hybrid Topology

A Scilab implementation for creating and visualizing a hybrid network topology that combines **Star**, **Ring**, and **Mesh** topologies using the NARVAL Toolbox.

## 📋 Overview

This project demonstrates the creation of a complex hybrid network topology consisting of 26 nodes distributed across three different network topologies:
- **Star Topology**: 8 nodes (Nodes 1-8)
- **Ring Topology**: 8 nodes (Nodes 9-16)
- **Mesh Topology**: 10 nodes (Nodes 17-26)

These topologies are interconnected through hybrid connections to form a unified network structure.

## 🎯 Features

- **Hybrid Network Design**: Combines three fundamental network topologies
- **Visual Representation**: Generates multiple graph visualizations
- **Node Highlighting**: Color-coded nodes for each topology type
- **Network Analysis**: Displays total nodes and edges in the network
- **Interactive Visualization**: Multiple views showing different aspects of the network

## 📦 Requirements

### Software
- **Scilab** (version 6.0 or higher)
- **NARVAL Toolbox** (Network Analysis and Routing Visualization Library)

### Installation Steps

1. **Install Scilab**
   - Download from [Scilab Official Website](https://www.scilab.org/)
   - Follow the installation instructions for your operating system

2. **Install NARVAL Toolbox**
   - The NARVAL Toolbox must be installed and loaded in Scilab
   - Ensure the toolbox is properly configured in your Scilab environment

## 🚀 Usage

1. **Open Scilab**

2. **Load the NARVAL Toolbox** (if not auto-loaded)
   ```scilab
   // Load NARVAL Toolbox commands
   ```

3. **Run the Script**
   ```scilab
   exec('cnexp.sce');
   ```

4. **View the Results**
   - The script will generate multiple graph windows showing:
     - Complete hybrid topology
     - Node and edge numbering
     - Color-coded topology sections (Star, Ring, Mesh)
   - Console output will display total nodes and edges

## 📐 Network Topology Structure

### Star Topology (Nodes 1-8)
- **Center Node**: Node 1
- **Peripheral Nodes**: Nodes 2-8
- **Connections**: All peripheral nodes connect to the center node
- **Visual Color**: Green

### Ring Topology (Nodes 9-16)
- **Nodes**: 9, 10, 11, 12, 13, 14, 15, 16
- **Structure**: Circular connection where each node connects to its neighbor
- **Visual Color**: Blue

### Mesh Topology (Nodes 17-26)
- **Nodes**: 17, 18, 19, 20, 21, 22, 23, 24, 25, 26
- **Structure**: Ring-style mesh (as accepted in lab environments)
- **Visual Color**: Red

### Hybrid Connections
- Node 5 (Star) ↔ Node 9 (Ring)
- Node 8 (Star) ↔ Node 17 (Mesh)

These connections integrate the three separate topologies into one unified network.

## 📊 Output Visualizations

The script generates five different graph visualizations:

1. **Window 1**: Complete hybrid network topology overview
2. **Window 2**: Node and edge numbering diagram
3. **Window 3**: Star topology nodes highlighted in green
4. **Window 4**: Ring topology nodes highlighted in blue
5. **Window 5**: Mesh topology nodes highlighted in red


#
