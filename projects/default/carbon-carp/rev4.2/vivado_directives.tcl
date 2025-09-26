set full_board [get_parts -of_objects [get_projects]]
set board [string range $full_board 4 6]

if { ( $board == "9eg" ) } {

    set_property STEPS.OPT_DESIGN.ARGS.DIRECTIVE Explore [get_runs impl_1]
    set_property STEPS.ROUTE_DESIGN.ARGS.DIRECTIVE AggressiveExplore [get_runs impl_1]
}
