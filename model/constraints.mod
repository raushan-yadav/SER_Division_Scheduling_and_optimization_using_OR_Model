# =========================
# Constraints
# =========================

# Time continuity
subject to Dwell_Time {t in T, n in N}:
    d[t,n] >= a[t,n] + delta[t,n];

# Section travel time
subject to Running_Time {t in T, (n1,n2) in A}:
    a[t,n2] >= d[t,n1] + tau[t,(n1,n2)];

# Single-line capacity constraints
subject to Single_Line_Conflict1 {t1 in T, t2 in T, a in As: t1 <> t2}:
    d[t1, first(a)] <= a[t2, last(a)] + 10000*(1 - x[t1,t2,a]);

subject to Single_Line_Conflict2 {t1 in T, t2 in T, a in As: t1 <> t2}:
    d[t2, first(a)] <= a[t1, last(a)] + 10000*(x[t1,t2,a]);

# Junction headway
subject to Headway {t1 in T, t2 in T, n in N: t1 <> t2}:
    abs(d[t1,n] - d[t2,n]) >= H[n];
