{ config
, ...
}:
{

  config = {

    services.journald =
      {
        rateLimitInterval = "30s";
        storage = "persistent";
        rateLimitBurst = 10000;
        extraConfig =
          ''
            Storage=auto
            MaxFileSec=1month
            SystemMaxUse=50M
          '';
      };

  };

}
