# builder-tool

Image containing minimal tools for pipeline configuration. 

It is being for the deployment of eks cluster on AWS. It's images is being used in this [repository](https://github.com/stakater/terraform-aws-eks).

There are two folders containing different versions of terraform so two images has been build with different prefixes, which are given below:

1. 0.11.11
2. 0.12.7

When you want to add a package or re-build the image, change the Dockerfile in the folder, and then copy that Dockerfile in the main Dockerfile at root directory. And change the image prefix in the Jenkinsfile.
