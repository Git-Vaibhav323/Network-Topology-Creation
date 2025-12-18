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

### Console Output
- Total number of nodes in the network
- Total number of edges/connections in the network

## 📁 File Structure

```
Network-Topology-Creation/
│
├── cnexp.sce                    # Main Scilab script
├── README.md                    # This file
│
└── Screenshots/
    ├── Screenshot 2025-12-18 215441.png
    ├── Screenshot 2025-12-18 215600.png
    ├── Screenshot 2025-12-18 215815.png
    ├── Screenshot 2025-12-18 215923.png
    └── Screenshot 2025-12-18 215945.png
```

## 🔧 Code Structure

### Main Sections

1. **Configuration** (Lines 7-14)
   - Network name and node count definition

2. **Topology Definitions** (Lines 16-40)
   - Star topology connections
   - Ring topology connections
   - Mesh topology connections
   - Hybrid interconnections

3. **Node Coordinates** (Lines 48-60)
   - X and Y coordinates for all 26 nodes
   - Defines spatial layout of the network

4. **Graph Creation** (Lines 63-71)
   - Uses `NL_G_MakeGraph()` to create the network graph

5. **Visualization** (Lines 74-134)
   - Displays complete topology
   - Shows node/edge numbering
   - Highlights each topology type with different colors

6. **Network Statistics** (Lines 139-151)
   - Calculates and displays total nodes and edges

## 🎨 Color Coding

- **Green (Color 3)**: Star topology nodes
- **Blue (Color 2)**: Ring topology nodes
- **Red (Color 5)**: Mesh topology nodes

## 📝 Key Functions Used

- `NL_G_MakeGraph()`: Creates the network graph structure
- `NL_G_ShowGraph()`: Displays the graph visualization
- `NL_G_ShowGraphNE()`: Shows node and edge numbering
- `NL_G_HighlightNodes()`: Highlights specific nodes with colors
- `NL_G_GraphSize()`: Extracts network size statistics

## 🔍 Network Statistics

The script automatically calculates and displays:
- **Total Nodes**: 26
- **Total Edges**: Calculated dynamically based on all connections

## 📸 Screenshots

The repository includes screenshots showing:
- Complete network topology visualization
- Individual topology highlighting
- Node and edge numbering

## 🛠️ Troubleshooting

### Common Issues

1. **NARVAL Toolbox Not Found**
   - Ensure NARVAL Toolbox is properly installed
   - Check Scilab's toolbox path configuration

2. **Graph Windows Not Displaying**
   - Verify Scilab graphics capabilities
   - Check if graphics drivers are properly installed

3. **Coordinate Errors**
   - Ensure all 26 nodes have valid X and Y coordinates
   - Verify coordinate arrays match the node count

## 📚 Educational Purpose

This project is designed for:
- Computer Networks course assignments
- Network topology visualization and analysis
- Understanding hybrid network architectures
- Learning Scilab and NARVAL Toolbox usage

## 👤 Author

**Git-Vaibhav323**

## 📄 License

This project is created for educational purposes.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

---

**Note**: This implementation uses the NARVAL Toolbox for network graph creation and visualization. Make sure you have the appropriate licenses and permissions to use this toolbox in your environment.

