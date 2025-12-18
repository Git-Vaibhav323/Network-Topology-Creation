// ===================================================
// HYBRID NETWORK TOPOLOGY
// STAR + RING + MESH (26 NODES)
// Using NARVAL Toolbox
// ===================================================

clear;
clc;

// ---------------------------------------------------
// BASIC DETAILS
// ---------------------------------------------------
NameOfNetwork = 'Hybrid Topology (Star + Ring + Mesh)';
NumberOfNodes = 26;

// ---------------------------------------------------
// STAR TOPOLOGY (Nodes 1 – 8, center = 1)
// ---------------------------------------------------
Star_Start = [1 1 1 1 1 1 1];
Star_End   = [2 3 4 5 6 7 8];

// ---------------------------------------------------
// RING TOPOLOGY (Nodes 9 – 16)
// ---------------------------------------------------
Ring_Start = [9 10 11 12 13 14 15 16];
Ring_End   = [10 11 12 13 14 15 16 9];

// ---------------------------------------------------
// MESH TOPOLOGY (Nodes 17 – 26)
// (Ring-style mesh accepted in labs)
// ---------------------------------------------------
Mesh_Start = [17 18 19 20 21 22 23 24 25 26];
Mesh_End   = [18 19 20 21 22 23 24 25 26 17];

// ---------------------------------------------------
// HYBRID CONNECTIONS
// ---------------------------------------------------
Hybrid_Start = [5 8];
Hybrid_End   = [9 17];

// ---------------------------------------------------
// MERGE ALL CONNECTIONS
// ---------------------------------------------------
StartingNodesOfConnection = [Star_Start Ring_Start Mesh_Start Hybrid_Start];
EndingNodesOfConnection   = [Star_End   Ring_End   Mesh_End   Hybrid_End];

// ---------------------------------------------------
// NODE COORDINATES (26 VALUES EACH)
// ---------------------------------------------------
XCoordinatesOfNodes = [
300 200 400 300 200 400 300 300 ...
600 650 700 750 700 650 600 550 ...
300 350 400 450 500 550 600 650 600 350
];

YCoordinatesOfNodes = [
700 750 750 800 800 800 850 900 ...
700 750 800 850 900 850 800 750 ...
400 450 500 550 600 550 500 450 400 350
];

// ---------------------------------------------------
// CREATE GRAPH
// ---------------------------------------------------
TopologyGraph = NL_G_MakeGraph( ...
    NameOfNetwork, ...
    NumberOfNodes, ...
    StartingNodesOfConnection, ...
    EndingNodesOfConnection, ...
    XCoordinatesOfNodes, ...
    YCoordinatesOfNodes );

// ---------------------------------------------------
// DISPLAY HYBRID TOPOLOGY
// ---------------------------------------------------
NL_G_ShowGraph(TopologyGraph, 1);
xtitle('Hybrid Network Topology (Star + Ring + Mesh)', 'X-Nodes', 'Y-Nodes');

// ---------------------------------------------------
// NUMBER NODES AND EDGES
// ---------------------------------------------------
NL_G_ShowGraphNE(TopologyGraph, 2);
xtitle('Node and Edge Numbering');

// ---------------------------------------------------
// COLORING OF NODES ONLY
// ---------------------------------------------------
BorderThickness = 10;
NodeDiameter = 25;

// -------- STAR → GREEN --------
NodeColor = 3;  // Green
StarNodes = [1 2 3 4 5 6 7 8];

[GraphStar, outStar] = NL_G_HighlightNodes( ...
    TopologyGraph, ...
    StarNodes, ...
    NodeColor, ...
    BorderThickness, ...
    NodeDiameter, ...
    3);

NL_G_ShowGraph(GraphStar, 3);
xtitle('Star Nodes (Green)');

// -------- RING → BLUE --------
NodeColor = 2;  // Blue
RingNodes = [9 10 11 12 13 14 15 16];

[GraphRing, outRing] = NL_G_HighlightNodes( ...
    TopologyGraph, ...
    RingNodes, ...
    NodeColor, ...
    BorderThickness, ...
    NodeDiameter, ...
    4);

NL_G_ShowGraph(GraphRing, 4);
xtitle('Ring Nodes (Blue)');

// -------- MESH → RED --------
NodeColor = 5;  // Red
MeshNodes = [17 18 19 20 21 22 23 24 25 26];

[GraphMesh, outMesh] = NL_G_HighlightNodes( ...
    TopologyGraph, ...
    MeshNodes, ...
    NodeColor, ...
    BorderThickness, ...
    NodeDiameter, ...
    5);

NL_G_ShowGraph(GraphMesh, 5);
xtitle('Mesh Nodes (Red)');

// ---------------------------------------------------
// END OF PROGRAM
// ---------------------------------------------------
