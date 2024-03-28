{ lib
, config
, ...
}:
with lib; {

  config = {

    # domian resolve service
    services.resolved =
      {
        enable = true;
        llmnr = "true";
        dnssec = "allow-downgrade";
        dnsovertls = "opportunistic";
        domains = mkDefault config.networking.search;
        fallbackDns =
          [
            "1.0.0.1#one.one.one.one"
            "8.8.4.4#dns.google"
            "2606:4700:4700::1001#one.one.one.one"
            "2001:4860:4860::8844#dns.google"

            # "1.0.0.1"
            # "8.8.4.4"
            # "2606:4700:4700::1001"
            # "2001:4860:4860::8844"
          ];
        extraConfig =
          ''
            Cache=yes
            ReadEtcHosts=yes
          '';
      };

  };
}
