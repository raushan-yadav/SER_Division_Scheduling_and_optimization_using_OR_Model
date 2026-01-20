# =========================
# Constraints
# =========================

# Time continuity
subject to Dwell_Time {t in T, n in N}:
    d[t,n] >= a[t,n] + delta[t,n];

subject to Delay_Definition {t in T}:
  Delay[t] >= a[t, last(N)] - S[t];


# Section travel time
subject to Running_Time {t in T, (n1,n2) in A}:
    a[t,n2] >= d[t,n1] + tau[t,(n1,n2)];

# Single-line capacity constraints
subject to Single_Line_1 {t1 in T, t2 in T, a in As: t1 <> t2}:
 d[t1,first(a)] <= a[t2,last(a)] + M*(1 - x[t1,t2,a]);

subject to Single_Line_2 {t1 in T, t2 in T, a in As: t1 <> t2}:
 d[t2,first(a)] <= a[t1,last(a)] + M*x[t1,t2,a];

# Junction headway
subject to Junction_Headway_1 {t1 in T, t2 in T, j in J: t1 <> t2}:
 d[t1,j] - d[t2,j] >= H[j] - M*(1 - x[t1,t2,j]);

subject to Junction_Headway_2 {t1 in T, t2 in T, j in J: t1 <> t2}:
 d[t2,j] - d[t1,j] >= H[j] - M*x[t1,t2,j];

# subject to Freight_Priority
{f in Tf, p in Tp, a in As}:
 d[f,first(a)] <= d[p,first(a)] + M*(1 - x[f,p,a]);




