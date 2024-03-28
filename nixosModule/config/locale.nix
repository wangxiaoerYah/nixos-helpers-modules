{ config
, ...
}:
{
  config = {

    time = {
      hardwareClockInLocalTime = true;
      timeZone = "Asia/Shanghai";
    };

  };
}
