Part one(Molecular graph model)
1, Split the 14,176 data as training set, valdation set and test set at a ratio of 8:1:1 (random state=42)
2, estabilish the molecular graph
    node_features:
        # atomic number
        # atomic mass
        # whether is aromatic
        # valence
        # explicit valence
        # hybridization
        # whether is in ring
    edge_index:
        the connect information between each atoms
    edge_attr:
        # whether is single bond
        # whether is double bond
        # whether is triple bond
        # whether is aromatic bond
        # whether is conjugated
        # Stereochemical type
3, estabilish a GNN model wrote by pytorch
4, train and make a prediction, then compute r2


Part two
1, split the data with the same way with part one
2, compute MACCSkeys fingerprints using Rdkit
3, estabilisth a Xgboost model
4, train and make a prediction, then compute r2
5, use shap to analysis which features(or we can say which structures because the MACCSkeys is structures-based) is the most important.


compare the two methods:
molecular graph: r2=0.75
xgboost:         r2=0.83
