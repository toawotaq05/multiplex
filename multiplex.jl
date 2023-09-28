using Plots
gr()  # Using the GR backend


# Define the time vector
t = 0:0.001:1  # From 0 to 1 second with 1ms interval

# Define the frequencies of the signals
f1 = 5  # 5 Hz
f2 = 15 # 15 Hz

# Create the signals
signal1 = sin.(2 * π * f1 * t)
signal2 = sin.(2 * π * f2 * t)

# Plot the signals
plot(t, signal1, label="Signal 1")
plot!(t, signal2, label="Signal 2", linestyle=:dash)
# p = plot(t, signal1, label="Signal 1")
# savefig(p, "plot_name.png")
# display(p)
signal3 = signal1+signal2

plot!(t, signal3, label="Multiplexed signal", linestyle=:dot)
