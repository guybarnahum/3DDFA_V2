#FROM python:3.11
#FROM hdgigante/python-opencv
#FROM rtmedical/scipy-notebook
#FROM gutamen/opencvpythonreduced
#FROM pachyderm/opencv
FROM opencvcourses/opencv-docker

RUN pip3 install cython pyyaml
RUN pip3 install torch torchvision 
RUN pip3 install matplotlib scipy 

VOLUME ["/root"]
WORKDIR /root
COPY . .

RUN sh ./build.sh

