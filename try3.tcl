# Create a simulator object
set ns [new Simulator]

# Parameters
set num_nodes 10
set spacing 150
set max_buffer_size 50
set packet_rate 4
set packet_size 1460
set window_sizes {4 8 32}
set communication_time 60

# Create nodes
set nodes [list]
for {set i 0} {$i < $num_nodes} {incr i} {
    set node($i) [$ns node]
    $node($i) set X_ [expr $spacing * $i]
    $node($i) set Y_ 0
    lappend nodes $node($i)
}

# Create links between nodes
for {set i 0} {$i < $num_nodes-1} {incr i} {
    $ns duplex-link [lindex $nodes $i] [lindex $nodes [expr $i+1]] 1Mb 10ms DropTail
}

# Define a TCP connection
proc create_tcp_connection {src_node dest_node window_size} {
    set tcp [new Agent/TCP]
    $tcp set class_ 2
    set sink [new Agent/TCPSink]
    $ns attach-agent $src_node $tcp
    $ns attach-agent $dest_node $sink
    $ns connect $tcp $sink
    $tcp set window_ $window_size
    return $tcp
}

# Define a traffic source
proc create_traffic_source {src_node dest_node rate window_size} {
    set tcp [create_tcp_connection $src_node $dest_node $window_size]
    set traffic [new Application/Traffic/FTP]
    $traffic attach-agent $tcp
    $traffic set type_ FTP
    $traffic set rate_ $rate
    $traffic set packetSize_ $packet_size
    $ns attach-agent $src_node $traffic
    $ns at 0.0 "$traffic start"
}

# Scenario 1: Communication from the first node to the last node
set window_size_index 0 ;# Choose a window size (0 for 4, 1 for 8, 2 for 32)
create_traffic_source [lindex $nodes 0] [lindex $nodes end] $packet_rate $window_sizes($window_size_index)

# Scenario 2: Communication between neighboring nodes
create_traffic_source [lindex $nodes 0] [lindex $nodes 1] $packet_rate $window_sizes($window_size_index)

# Scenario 3: Simultaneous communications by the first node to its node and node to the last node
create_traffic_source [lindex $nodes 0] [lindex $nodes 1] $packet_rate $window_sizes($window_size_index)
create_traffic_source [lindex $nodes end] [lindex $nodes [expr $num_nodes - 2]] $packet_rate $window_sizes($window_size_index)

# Scenario 4a: Simultaneous communications starting at the same time
create_traffic_source [lindex $nodes 2] [lindex $nodes 4] $packet_rate $window_sizes($window_size_index)
create_traffic_source [lindex $nodes 5] [lindex $nodes 7] $packet_rate $window_sizes($window_size_index)

# Scenario 4b: Second communication starts 10 seconds after the first
create_traffic_source [lindex $nodes 3] [lindex $nodes 6] $packet_rate $window_sizes($window_size_index)
$ns at 10.0 "create_traffic_source [lindex $nodes 7] [lindex $nodes end] $packet_rate $window_sizes($window_size_index)"

# Run the simulation
$ns run
