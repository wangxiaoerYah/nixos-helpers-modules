{ config
, ...
}:
{
  config = {

    programs.fuse = {
      # Allow non-root users to specify the allow_other or allow_root mount options, see mount.fuse3(8).
      userAllowOther = true;
      # Set the maximum number of FUSE mounts allowed to non-root users.
      mountMax = 32767;
    };

  };
}
