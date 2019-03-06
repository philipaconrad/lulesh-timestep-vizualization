# Python movie script.
# Make sure VisIt's binaries are on your PATH when you run this script.
# This script generates a session file that VisIt's movie maker script can use.

db_status = OpenDatabase("../lulesh/lulesh_plot_c* database")
print(db_status)

#AddPlot("Mesh", "mesh")
#AddPlot("Pseudocolor", "e")
#AddPlot("Contour", "mesh_quality/shear")
#AddPlot("Pseudocolor", "mesh_quality/shear")
#AddPlot("Pseudocolor", "speed")
AddPlot("Contour", "speed")

v = GetView3D()
v.RotateAxis(1, 50.0)  # Rotate 30 deg around the y-axis.
SetView3D(v)
#DrawPlots()
SaveSession("lulesh.session")

# Rotate so base of explosion faces camera:
#v.RotateAxis(0,45.0)  # Rotate 30 deg around the y-axis.
#v.RotateAxis(1,140.0)  # Rotate 30 deg around the y-axis.
#v.RotateAxis(2,45.0)  # Rotate 30 deg around the y-axis.
