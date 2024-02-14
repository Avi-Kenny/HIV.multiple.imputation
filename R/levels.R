# # Set global constants
# C <- list(alpha_1=0.5)

# Set simulation levels
if (cfg$run_sims && Sys.getenv("sim_run") %in% c("first", "")) {
  
  # L <- list(n=300,max_time=70,params=list(a_x=log(0.005), a_y=log(0.003), a_v=log(0.7),a_z=log(0.004),g_x=c(log(1.3),log(1.2)), g_y=c(log(1.2),log(1.1)),g_v=c(log(1.2),log(1.1)), g_z=c(log(1.2),log(1.1)),beta_x=log(1.5), beta_z=log(0.6)))
  
  level_sets <- list()
  
  # Simulation 1: basic
  # Figures: ...
  level_sets[["level_set_1"]] <- list(
    # n = 100,
    n = 500,
    # n = c(500,1000,2000),
    max_time = 70,
    # max_time = 100,
    params = list(
      # "10pct testing" = list( a_v=log(0.1) ),
      "70pct testing" = list(
        a_x=log(0.005), a_y=log(0.003), a_v=log(0.7), a_z=log(0.01),
        g_x=c(log(1.3),log(1.2)), g_y=c(log(1.2),log(1.1)),
        g_v=c(log(1.2),log(1.1)), g_z=c(log(1.2),log(1.1)),
        beta_x=log(1.5), beta_z=log(0.7),
        a_s=log(0.05), g_s=c(log(2),log(1.5))
      )
    )
  )
  
  level_set <- level_sets[[cfg$sim_level_set]]
  
  # if (cfg$sim_level_set=="asdf") { cfg$keep = c(1:3,7:9,16:18,22:24) }
  
}