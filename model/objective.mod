# =========================
# Objective Function
# =========================

minimize Total_Delay:
    sum {t in Tf} wf * (a[t, last(N)] - S[t])
  + sum {t in Tp} wp * (a[t, last(N)] - S[t]);
