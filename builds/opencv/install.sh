#!/bin/sh
cd opencv-3.4/
sudo rm -r build
mkdir build
cd build
export CXXFLAGS="-std=c++11"
export PYTHON3_INCLUDE_DIR=/home/mat/.pyenv/versions/3.7.3/include/python3.7m/
export PYTHON2_INCLUDE_DIR=/home/mat/.pyenv/versions/3.7.3/include/python2.7/
export PYTHON_INCLUDE_DIR=/home/mat/.pyenv/versions/3.7.3/include/python3.7m/
export PYTHON3_NUMPY_INCLUDE_DIRS=/home/mat/.pyenv/versions/3.7.3/lib/python3.7/site-packages/numpy/core/include

# -D WITH_GSTREAMER=ON \
export CXX=/opt/cuda/bin/g++
export CC=/opt/cuda/bin/gcc
cmake -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=/opt/opencv \
      -D CMAKE_EXE_LINKER_FLAGS=-lcblas \
      -D OPENCV_EXTRA_MODULES_PATH=/home/mat/builds/opencv/opencv_contrib-3.4/modules \
      -D WITH_GSTREAMER=ON \
      -D WITH_CUDA=ON \
      -D WITH_CUBLAS=ON \
      -D WITH_TBB=ON \
      -D WITH_V4L=ON \
      -D WITH_GTK+=ON \
      -D WITH_HDF5=ON \
      -D WITH_XINE=ON \
      -D WITH_VTK=ON \
      -D WITH_QT=ON \
      -D WITH_OPENGL=ON \
      -D WITH_OPENCL=ON \
      -D WITH_FFMPEG=ON \
      -D OPENCV_PYTHON3_INSTALL_PATH=/home/mat/.pyenv/versions/3.7.3/lib/python3.7/site-packages \
      -D BUILD_opencv_python3=ON \
      -D BUILD_opencv_python2=ON \
      -D BUILD_PERF_TESTS=OFF \
      -D BUILD_TESTS=OFF \
      -D BUILD_opencv_cudacodec=OFF \
      -D CMAKE_CXX_COMPILER=/bin/g++-7 -L/opt/cuda/lib64/ -lcublas \
      -D CUDA_NVCC_FLAGS=-ccbin g++-7 -L/opt/cuda/lib64/ -lcublas --expt-relaxed-constexpr -std=c++11 \
      -D CUDA_HOST_COMPILER=/usr/bin/g++-7 \
      -D CMAKE_CXX_FLAGS=-std=c++11 -L/opt/cuda/lib64/ -lcublas \
      -D CUDA_NVCC_FLAGS=-D_FORCE_INLINES -std=c++11 --expt-relaxed-constexpr \
      -D BUILD_opencv_java=OFF \
      -D CUDA_GENERATION=Pascal \
      -D WITH_OPENMP=ON \
      -D BUILD_DOCS=ON \
      ..
echo MOVE PKGCONFIG FILE
