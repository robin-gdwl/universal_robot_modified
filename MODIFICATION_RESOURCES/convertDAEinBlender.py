
import bpy
import os

path = r'D:\Robins_Data\Projects\Assorted_CADscripts\load_urdf_into_rhino\universal_robot\ur_description\meshes\ur3\visual'  # set this path to th folder containing .dae-meshes

for root, dirs, files in os.walk(path):
    for f in files:
        if f.endswith('.dae') :
            mesh_file = os.path.join(path, f)
            obj_file = os.path.splitext(mesh_file)[0] + ".obj"

            bpy.ops.object.select_all(action='SELECT')
            bpy.ops.object.delete()

            #bpy.ops.import_scene.dae(filepath=mesh_file) # change this line
            bpy.ops.wm.collada_import(filepath=mesh_file, fix_orientation=True, import_units=True, auto_connect=True)
            bpy.ops.object.select_all(action='SELECT')

            bpy.ops.export_scene.obj(filepath=obj_file,axis_forward= "Y", axis_up="Z")