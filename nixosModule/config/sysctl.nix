{ config
, lib
, ...
}:
with lib;
{
  config = {

    boot.kernel = {
      sysctl = {
        # Elasticsearch、MongoDB
        "vm.max_map_count" = mkForce 262144;

        "net.ipv4.tcp_limit_output_bytes" = mkForce 131072;
        "net.ipv4.tcp_low_latency" = mkForce 1;
        "net.ipv4.tcp_rfc1337" = mkForce 1;
        "net.ipv4.tcp_timestamps" = mkForce 1;

        "net.ipv4.tcp_fin_timeout" = mkForce 10;
        "net.ipv4.tcp_keepalive_time" = mkForce 60;
        "net.ipv4.tcp_keepalive_intvl" = mkForce 10;
        "net.ipv4.tcp_keepalive_probes" = mkForce 6;

        "net.core.default_qdisc" = mkForce "cake";
        "net.ipv4.tcp_congestion_control" = mkForce "bbr";

        "net.ipv4.tcp_slow_start_after_idle" = mkForce 0;

        "net.ipv4.tcp_max_tw_buckets" = mkForce 2000000;
        "net.ipv4.tcp_tw_reuse" = mkForce 1;
        "net.ipv4.tcp_max_syn_backlog" = mkForce 8192;
        "net.ipv4.tcp_fastopen" = mkForce 3;
        "net.ipv4.tcp_mtu_probing" = mkForce 1;
        "net.ipv4.tcp_syncookies" = mkForce 1;

        "net.ipv4.conf.all.forwarding" = mkForce 1;
        "net.ipv4.conf.default.forwarding" = mkForce 1;
        "net.ipv4.conf.*.forwarding" = mkForce 1;
        "net.ipv6.conf.all.forwarding" = mkForce 1;
        "net.ipv6.conf.default.forwarding" = mkForce 1;
        "net.ipv6.conf.*.forwarding" = mkForce 1;

        "net.ipv4.conf.all.rp_filter" = mkForce 0;
        "net.ipv4.conf.default.rp_filter" = mkForce 0;
        "net.ipv4.conf.*.rp_filter" = mkForce 0;
        "net.ipv4.conf.all.accept_redirects" = mkForce 0;
        "net.ipv4.conf.default.accept_redirects" = mkForce 0;
        "net.ipv4.conf.*.accept_redirects" = mkForce 0;
        "net.ipv4.conf.all.secure_redirects" = 0;
        "net.ipv4.conf.default.secure_redirects" = 0;
        "net.ipv4.conf.*.secure_redirects" = 0;
        "net.ipv4.conf.all.send_redirects" = 0;
        "net.ipv4.conf.default.send_redirects" = 0;
        "net.ipv4.conf.*.send_redirects" = 0;
        "net.ipv6.conf.all.accept_redirects" = mkForce 0;
        "net.ipv6.conf.default.accept_redirects" = mkForce 0;
        "net.ipv6.conf.*.accept_redirects" = mkForce 0;

        # Force ARP respond on same interface
        # https://serverfault.com/questions/834512/why-does-linux-answer-to-arp-on-incorrect-interfaces
        # But do not set all or *
        # https://serverfault.com/questions/935366/why-does-arp-ignore-1-break-arp-on-pointopoint-interfaces-kvm-guest
        "net.ipv4.conf.all.arp_ignore" = 0;
        "net.ipv4.conf.default.arp_ignore" = 1;
        "net.ipv4.conf.all.arp_announce" = 0;
        "net.ipv4.conf.default.arp_announce" = 2;

      };
    };

  };
}
