sysctl -w net.ipv4.tcp_allowed_congestion_control="cubic reno"
sysctl -w net.ipv4.tcp_congestion_control="cubic"
sysctl -w net.ipv4.tcp_dsack=1
sysctl -w net.ipv4.tcp_early_retrans=2
sysctl -w net.ipv4.tcp_ecn=2
sysctl -w net.ipv4.tcp_fack=1
sysctl -w net.ipv4.tcp_frto=2
sysctl -w net.ipv4.tcp_low_latency=0
sysctl -w net.ipv4.tcp_moderate_rcvbuf=1
sysctl -w net.ipv4.tcp_mtu_probing=0
sysctl -w net.ipv4.tcp_no_metrics_save=0
sysctl -w net.ipv4.tcp_rfc1337=0
sysctl -w net.ipv4.tcp_sack=1
sysctl -w net.ipv4.tcp_syncookies=1
sysctl -w net.ipv4.tcp_thin_dupack=0
sysctl -w net.ipv4.tcp_thin_linear_timeouts=0
sysctl -w net.ipv4.tcp_tw_recycle=0
sysctl -w net.ipv4.tcp_tw_reuse=0
sysctl -w net.ipv4.tcp_window_scaling=1
sysctl -w net.ipv4.tcp_workaround_signed_windows=0

dev=$(ip route show | head -n 1)
sudo ip route change $dev initcwnd 10
ip route show