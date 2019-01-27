# ML
Personal Practices on Machine Learning

## 机器学习开发的三层容器抽象

虚拟机层：Google Cloud Platform VM实例，关联计费账户；通过`setup-vm.sh`部署nvidia-docker2，提供容器层支持。
容器层：docker容器，关联一个开发项目；创建镜像时通过`Dockerfile`部署基本依赖和miniconda3，提供环境层支持。
环境层：conda虚拟环境，关联一个开发分支；进行主要的开发任务。
