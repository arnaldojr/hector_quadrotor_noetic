## Guia de como rodar o hector_quadrotor no ROS Noetic com Gazebo 11

***Este guia foi adaptado do link: https://github.com/RAFALAMAO/hector_quadrotor_noetic.git***

1. Primeiramente vamos acessar o nosso workspace ROS e clonar alguns repositórios, abra um novo terminal e digite:

        cd ~/catkin_ws/src
        git clone https://github.com/ros-geographic-info/unique_identifier.git
        git clone https://github.com/ros-geographic-info/geographic_info
        cd ~/catkin_ws
        catkin_make

2. É esperado que a compilação ocorra com sucesso. Verifique no log do terminal se ocorreu tudo bem.
3. Vamos clonar e compilar o repositório do drone e compilar com o ROS. 

        cd ~/catkin_ws/src
        git clone https://github.com/RAFALAMAO/hector_quadrotor_noetic.git
        cd ~/catkin_ws
        catkin_make

4. Da mesma forma é esperado que a compilação ocorra com sucesso. Verifique no log do terminal se ocorreu tudo bem.

5. Rode o mapa do simulador ***Gazebo*** e ***RViz*** através do comando:
   
        roslaunch hector_quadrotor_demo outdoor_flight_gazebo.launch`

6. Você pode escolher outros mapas para rodar no simulador, pesquise os mapas disponiveis em "hector_quadrotor_demo" e "hector_quadrotor_gazebo".

7. Hora de Voa! Para controlar o ***takeoff*** e ***land*** Abra um novo terminal e digite: 

        roslaunch takeoff_land takeoff_land.launch

8. ***takeoff*** e ***land*** Abra um novo terminal e digite:

        takeoff (decolar) - rostopic pub --once /takeoff std_msgs/Empt
        land (pousar) -  rostopic pub --once /land std_msgs/Empty 
  
9. Para teleoperar o drone atraves do teclado: 
  
   ***Apenas clone o repositório se ainda não tiver ele clonado em seu workspace***
   
        cd ~/catkin_ws/src
        git clone https://github.com/ros-teleop/teleop_twist_keyboard
        cd ~/catkin_ws
        catkin_make
    
    Rode em um novo terminal: 
    
        rosrun teleop_twist_keyboard teleop_twist_keyboard.py

10. Note que para abrir a camerá o nome do tópico é: ***/front_cam/camera/image/compressed***

11. Agora é com você. Rode seu código python no drone.
    
        rosrun ..........................
