# =========================
# Decision Variables
# =========================

var a{T, N} >= 0;   # Arrival time
var d{T, N} >= 0;   # Departure time

# Binary sequencing variable for single-line conflicts
var x{T, T, As} binary;
