{ config
, ...
}:
{
  config = {
    services.auto-cpufreq.enable = true;
  };

}
