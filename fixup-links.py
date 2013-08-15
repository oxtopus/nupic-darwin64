import os
import shutil



def fixupLinks(pth, ignore=["*.pyc", "*.pyo"]):
  for (dirpath, dirnames, filenames) in os.walk(pth):
    for dirname in dirnames:
      target = os.path.join(dirpath, dirname)
      if os.path.islink(target):
        src = os.path.realpath(target)
        os.unlink(target)
        shutil.copytree(src, target, ignore=shutil.ignore_patterns(*ignore))

    for filename in filenames:
      target = os.path.join(dirpath, filename)
      if os.path.islink(target):
        src = os.path.realpath(target)
        os.unlink(target)
        shutil.copyfile(src, target)


if __name__ == "__main__":
  fixupLinks("include")
  fixupLinks("lib/python2.6")
