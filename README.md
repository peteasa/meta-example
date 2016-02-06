# parallella meta-example `elink-redesign`

Examples for COMBINED FPGA and LINUX environment START IN https://github.com/peteasa/parallella/tree/parallella-elink-redesign

See the [parallella](https://github.com/peteasa/parallella/wiki) project for more details and Tutorials.

## Instructions

The parallella-elink-redesign branch includes the parallella-yoctobuild/meta-example repository, so start with https://github.com/peteasa/parallella/tree/parallella-elink-redesign.  Once all the submodules have been downloaded from the parent super project parallella, to use the example layer when building the linux distribution cd into meta-example:

```bash
$ cd parallella/parallella-yoctobuild/meta-example
$ source prepareexampleyoctobuild.sh
```

The meta-example layer gives and example of how to use the parallella-yoctobuild repository to build your own version of the linux distribution with the changes you need and be free to choose any of the parallella-yoctobuild versions or branches to apply your changes to the yocto build.

In your project you can create a separate git meta layer with any of the following names: meta-mywork, meta-project, meta-projects, meta-test and base your layer on the contents of this repository. For example copy the prepareexampleyoctobuild.sh script and the meta-example/local_conf files into your layer and make the appropriate changes.  

```bash
$ cd parallella/parallella-yoctobuild
$ mkdir meta-test
$ cp meta-example/prepareexampleyoctobuild.sh meta-test/preparebuild.sh
$ cp -r meta-example/local_conf meta-test
$ cp -r meta-example/conf meta-test
$ cp -r meta-example/recipes meta-test
$ cp -r meta-example/recipes-bsp meta-test
$ cp -r meta-example/recipes-kernel meta-test
$
$ gedit meta-test/local_conf/bblayers.conf meta-test/preparebuild.sh
```

Changes that you make to the files and folders in your project folder (for example meta-test) will not be affected by changes to the branch or version of the parallella-yoctobuild repository.

To update to the latest version of parallella-yoctobuild, checkout the branch you want from parallella-yoctobuild.  You may need to modify your layer to use the new changes, but you are free to create a git repository and track your changes separately to the changes in the parallella-yoctobuild repository.

The folders recommended for your project are: meta-mywork, meta-project, meta-projects, meta-test as these are included in the .gitignore file in parallella-yoctobuild so changes in these folders are ignored, making it easier to update parallella or parallella-yoctobuild without requiring checkin of files in your project.