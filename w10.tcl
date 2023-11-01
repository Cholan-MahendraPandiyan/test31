# Create a simulator
set ns [new Simulator]

# Set node parameters
set node_distance 150
set buffer_size 50

# Create nodes
set num_nodes 5
for {set i 0} {$i < $num_nodes} {incr i} {
    set node($i) [$ns node]
    $node($i) set X_ [expr $i * $node_distance]
}

# Function to create a TCP connection between two nodes
proc create_connection {src dst} {
    set tcp [new Agent/TCP]
    set sink [new Agent/TCPSink]
    $ns attach-agent $src $tcp
    $ns attach-agent $dst $sink
    $ns connect $tcp $sink
    return $tcp
}

# Function to generate traffic from source to destination
proc generate_traffic {src dst rate window_size duration} {
    set tcp [create_connection $src $dst]
    set ftp [new Application/FTP]
    $ftp attach-agent $tcp
    $ns at 0.0 "$ftp start"
    $ns at $duration "$ftp stop"
}

# Scenario 1: Communication from the first node to the last node
generate_traffic $node(0) $node([expr $num_nodes - 1]) 4 4 60

# Scenario 2: Communication from a node to its neighboring node
generate_traffic $node(1) $node(2) 4 8 60

# Scenario 3: Simultaneous communications from the first node to its node and node to the last node
generate_traffic $node(0) $node(1) 4 8 60
generate_traffic $node(2) $node([expr $num_nodes - 1]) 4 8 60

# Scenario 4a: Simultaneous communications starting at the same time
generate_traffic $node(1) $node(3) 4 8 60
generate_traffic $node(0) $node(2) 4 8 60

# Scenario 4b: Second communication starts 10 seconds after the first
generate_traffic $node(1) $node(3) 4 8 10
generate_traffic $node(0) $node(2) 4 8 60

# Run the simulation
$ns run
