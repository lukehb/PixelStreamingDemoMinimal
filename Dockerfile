FROM adamrehn/ue4-runtime:18.04-cudagl10.2
COPY --chown=ue4:ue4 /Packaged/LinuxNoEditor /home/ue4/project

# Enable the NVIDIA driver capabilities required by the NVENC API
ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES},video

# Set the project as the container's entrypoint
ENTRYPOINT ["/home/ue4/project/PixelStreamingDemo.sh", "-RenderOffscreen", "-Windowed", "-ForceRes", "-ResX=1920", "-ResY=1080", "-PixelStreamingIP=127.0.0.1", "-PixelStreamingPort=8888"]