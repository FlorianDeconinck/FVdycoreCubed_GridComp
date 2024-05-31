# Translate data generation

We use Serialbox to extract the data around the code we are porting. The methodology goes as follows:

- Annotate files with Serialbox directives, and save them following are XXX.SER with XXX the original filename
- Run `generate.sh` on the file turns them into proper F90 fortran, replacing the original code

Code lives both in the grid comp and @fvcore on the `dsl/serialbox` branch, which is sync'ed with `dsl/develop`.
