{ config
, ...
}:
{

  config = {

    # time sync service
    services.timesyncd =
      {
        enable = true;
        servers = config.networking.timeServers;
        extraConfig =
          ''
            PollIntervalMinSec=32
            PollIntervalMaxSec=2048
            ConnectionRetrySec=30
            SaveIntervalSec=60
          '';
      };

  };

}
