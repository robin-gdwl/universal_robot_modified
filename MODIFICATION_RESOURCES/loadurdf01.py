import compas 
import compas_rhino 
from compas_rhino.artists import RobotModelArtist

import compas
from compas.robots import GithubPackageMeshLoader
from compas.robots import LocalPackageMeshLoader
from compas.robots import RobotModel

packages = []
UR_packages = [ 'ros-industrial/universal_robot', 'ur_description', 'kinetic-devel' ]
UR_robots = [
    'ur5_robot',
    # 'ur10_robot',
    # 'ur3_robot'
]
# Set high precision to import meshes defined in meters
compas.PRECISION = '12f'
compas_rhino.clear()

def getallrobots(package, robotnames, ending= '.urdf.xacro'):
    for robot in robotnames:

        github = GithubPackageMeshLoader(package[0], package[1], package[2])
        print(github)
        filename = robot + ending
        print(filename)
        # print(str(gh_model.headers))
        # print(str(gh_model.status))

        gh_model = github.load_urdf(filename)
        print(str(gh_model.url))
        model = RobotModel.from_urdf_file(gh_model)
        model.load_geometry(github)

        # print(model)

        artist = RobotModelArtist(model, layer=robot)
        # artist.scale(1000)
        # artist.draw_visual()

# getallrobots(UR_packages, UR_robots)

fanuc_package = ['ros-industrial/fanuc', 'fanuc_m16ib_support', 'kinetic-devel']
fanuc_robots = [
    'm16ib20'
]
# getallrobots(fanuc_package,fanuc_robots,'.xacro')

abb_package = ['ros-industrial/abb', 'abb_irb6600_support', 'kinetic-devel'] 
abb_robots = [
    'irb6640'
]

# getallrobots(abb_package, abb_robots, '.urdf')
# github = GithubPackageMeshLoader('ros-industrial/universal_robot', 'ur_description', 'kinetic-devel')
package_path = 'universal_robot'
model = RobotModel.from_urdf_file('universal_robot\ur_description\urdf\ur10_robot.urdf')
loader = LocalPackageMeshLoader(package_path, 'ur_description')
model.load_geometry(loader)

artist = RobotModelArtist(model, layer='COMPAS FAB::Example2')
artist.draw_visual()
artist.draw_collision()