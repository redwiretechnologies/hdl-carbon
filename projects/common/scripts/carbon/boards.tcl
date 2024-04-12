if {$argc > 1} {
    set board [lindex $argv 1]
} else {
    set board "2cg"
}

if {$argc > 2} {
    set som_rev [lindex $argv 2]
} else {
    set som_rev "1.0"
}

switch $board {
    2cg -
    2eg -
    3cg -
    4cg -
    4ev -
    5ev -
    3eg {
        set som_string sfvc784-1-e
        set som_format te0803
    }
    6eg -
    9eg -
    15eg {
        set som_string ffvc900-1-e
        set som_format te0808
    }
    default {
        puts "Unrecognized board $board: Must be 2cg, 2eg, 3cg, 3eg, 4cg, 4ev, 5ev, 6eg, 9eg, or 15eg"
        exit 1
    }
}
puts "Building for board $board"
set p_device "xczu${board}-${som_string}"
set p_board "trenz.biz:${som_format}_${board}_1e:part0:${som_rev}"
set sys_zynq 2
