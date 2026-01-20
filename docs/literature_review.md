# Literature Review

Train scheduling is a long-standing problem in operations research due to its strong influence on railway capacity utilization, operational safety, and service reliability. Early work in this domain primarily focused on **passenger-oriented periodic timetabling**, where the objective was to generate cyclic and feasible schedules under fixed infrastructure and signaling constraints. Such approaches, however, are often insufficient for freight-dominated corridors where train heterogeneity and capacity conflicts are more pronounced.

## Blocking and No-Wait Models for Train Scheduling
Cormenier, Billaut, and Kedad-Sidhoum (2010) studied train scheduling using a **no-wait blocking parallel-machine framework**, in which track sections are modeled as shared machines and trains are not allowed to wait once they enter a section. Their work highlights that sequencing decisions alone can determine feasibility in tightly constrained infrastructure. This modeling perspective is particularly relevant for **freight-dense corridors**, where long freight trains occupy track sections for extended durations and blocking effects become critical [P1].

## Priority-Based Scheduling and Heterogeneous Trains
Several studies emphasize the importance of explicitly modeling **train priorities**. In networks where freight traffic dominates, passenger-centric delay minimization can lead to economically suboptimal outcomes. Priority-weighted objective functions allow heterogeneous train classes to be treated differently, ensuring that revenue-critical freight services receive higher precedence during conflicts. This concept forms a central foundation for freight-oriented scheduling models.

## MILP Formulations for Railway Timetabling
Mixed-Integer Linear Programming (MILP) has emerged as a dominant approach for railway scheduling problems. Dutta, Rangaraj, Belur, Dangayach, and Singh (2015) developed a detailed MILP-based framework for suburban rail timetabling in India using the **Periodic Event Scheduling Problem (PESP)**. Their formulation explicitly captures arrival and departure times, minimum headways, dwell times, and platform constraints, demonstrating the suitability of MILP models for **dense Indian railway operations** [P2].

## Single-Line and Junction Capacity Constraints
Infrastructure bottlenecks such as **single-line sections and busy junctions** are widely recognized as major sources of operational conflicts. Prior literature shows that binary sequencing variables are necessary to ensure safe train ordering on such sections. However, excessive use of binary variables often leads to computational intractability. As a result, recent approaches advocate **selective introduction of binary variables only at conflict-prone locations**, a principle that is adopted in the present work.

## Freight-Dominated Corridors and Operational Realism
Survey studies on railway routing and scheduling indicate that most existing models are calibrated for passenger-oriented European networks, with limited focus on **freight-heavy corridors** typical of Indian Railways. Freight operations introduce additional complexities such as longer dwell times, yard-level processing, banking locomotive operations, and gradient-intensive sections. These realities motivate the use of **freight-prioritized objective functions** rather than symmetric delay-minimization frameworks [P3–P6].

## Research Gap and Motivation
Despite significant advances in railway scheduling research, there remains a clear gap in **freight-oriented, division-level optimization models grounded in Indian Working Time Table (WTT) data**. Most existing studies either address high-level network design or focus predominantly on passenger services. The present work addresses this gap by developing a **structurally rigorous MILP formulation** tailored to the Chakradharpur Division of South Eastern Railway, with explicit emphasis on minimizing freight delays while maintaining safe and feasible operations for all trains.

# References
- **[P1]** Cormenier, D., Billaut, J.-C., & Kedad-Sidhoum, S.  
  *Scheduling Trains with Priorities: A No-Wait Blocking Parallel-Machine Approach.*

- **[P2]** Dutta, S., Rangaraj, N., Belur, M., Dangayach, S., & Singh, K.  
  *Construction of Periodic Timetables on a Suburban Rail Network: A Case Study from Mumbai.*

- **[P3–P6]** Survey and advanced MILP / routing studies on railway scheduling under capacity and conflict constraints.
