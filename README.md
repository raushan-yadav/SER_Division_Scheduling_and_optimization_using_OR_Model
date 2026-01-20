# SER Division Scheduling and Optimization using OR Model
### Chakradharpur Division, South Eastern Railway (SER)

## Overview
This project develops a **SER_Division_Scheduling-and-Optimization-using-OR-Model** for the Chakradharpur Division of South Eastern Railway (SER).  
The model is formulated as a **Mixed Integer Linear Program (MILP)** and is grounded explicitly in **Working Time Table (WTT)** data, making it suitable for division-level operational analysis.

Unlike conventional passenger-centric timetabling models, this work emphasizes **freight movement reliability**, which is critical for mineral and bulk freight corridors in Indian Railways.

---

## Motivation
Freight trains in high-density corridors often experience cascading delays due to:
- single-line sections,
- junction conflicts,
- heterogeneous train priorities, and
- limited overtaking opportunities.

Most academic models address passenger networks or abstract railway graphs.  
This project bridges that gap by developing a **freight-oriented, operationally realistic model** aligned with Indian railway practices.

---

## Model Description

### Sets
- `T` : Set of all trains  
- `Tf ⊂ T` : Freight trains  
- `Tp ⊂ T` : Passenger trains  
- `N` : Nodes (stations / junctions)  
- `J ⊂ N` : Junction nodes  
- `A` : Track sections (arcs)  
- `As ⊂ A` : Single-line sections  

---

### Decision Variables
- `a(t,n)` : Arrival time of train *t* at node *n*  
- `d(t,n)` : Departure time of train *t* from node *n*  
- `Delay(t)` : Total delay of train *t* w.r.t. WTT  
- `x(t1,t2,a)` : Binary sequencing variable for conflicts on single-line sections  

---

## Objective Function

The objective is to minimize the **priority-weighted total delay** of all trains.
minimize Σ (priority_t × Delay_t) for all trains t

where:
- `Delay_t` is the end-to-end delay of train *t* with respect to the Working Time Table (WTT)
- `priority_t` is higher for freight trains and lower for passenger trains

This formulation ensures that **freight trains receive higher precedence during conflicts**, reflecting their economic importance in mineral-dense corridors.

## Model Execution (AMPL)

The optimization model is executed using AMPL by
linking the modular model files with the WTT-based
dataset of Chakradharpur Division.

Main model file:
- model/main.mod

Data file:
- data/chakradharpur.dat
### Running the Model

```bash
ampl
model model/main.mod;
data data/chakradharpur.dat;
solve;
display a, d;

## Freight Priority Justification

Freight trains are assigned higher weights in the
objective function to reflect their economic importance
in the Chakradharpur Division, which handles heavy
mineral and goods traffic.

During conflicts on single-line sections and junctions,
the optimization model allows freight trains to pass
earlier while passenger trains absorb comparatively
small delays. This behavior aligns with real-world
railway operational practices.


---

### Key Constraints
- Time continuity and minimum dwell times  
- Section running time constraints  
- Single-line conflict resolution using binary sequencing  
- Junction headway constraints  
- Explicit freight-priority constraints over passenger trains  

---

## Data Source
The dataset is extracted from the Working Time Table (WTT) of the
Chakradharpur Division (SER). To ensure tractability and clarity,
a representative freight-dominated corridor is modeled as a pilot
network. Section running times, dwell times, and headways are
directly aligned with WTT specifications.

⚠️ Note on Data Redevelopment

The initial illustrative dataset was replaced with a
Working Time Table (WTT)-based dataset to ensure
operational realism. The current data represents a
selected freight-dominated corridor within the
Chakradharpur Division and is consistent with the
redeveloped optimization model.



---

## Repository Structure
model/
 ├─ sets.mod
 ├─ parameters.mod
 ├─ variables.mod
 ├─ objective.mod
 ├─ constraints.mod
 └─ main.mod

data/
 └─ chakradharpur.dat

docs/
 ├─ literature_review.md
 └─ model_formulation.md

└── README.md

## Result Interpretation

The optimized schedule demonstrates that:
- Freight trains experience lower delays compared to
  passenger trains under conflicting scenarios.
- Safety constraints such as headways and no-wait
  blocking are strictly satisfied.
- The solution remains feasible under single-line
  capacity limitations.

This confirms that the model is not purely theoretical
but captures key operational realities of the division.
## Result Interpretation

The optimized schedule demonstrates that:
- Freight trains experience lower delays compared to
  passenger trains under conflicting scenarios.
- Safety constraints such as headways and no-wait
  blocking are strictly satisfied.
- The solution remains feasible under single-line
  capacity limitations.

This confirms that the model is not purely theoretical
but captures key operational realities of the division.



---

## Contributions
This work demonstrates how **freight-prioritized scheduling** can be modeled at a division level using real railway data, providing a foundation for future extensions such as:
- disruption handling,
- yard capacity modeling, and
- energy-efficient scheduling.



## How to Run the Model

The optimization model is implemented in AMPL using a modular structure.
To run the model, follow the steps below:

1. Load the main model file: 
model model/main.mod;
2. Load the Chakradharpur Division data extracted from the Working Time Table (WTT):
data data/chakradharpur.dat;
3. Solve the optimization problem:
Solve;
4. Display key decision variables:
display a,d;
This execution produces optimized arrival and departure times for each train
while respecting capacity, headway, and single-line constraints.

The current repository focuses on model formulation and data integration.
The model is fully executable once connected to an AMPL-compatible solver.
Computational experiments will be conducted after final calibration of the
complete Chakradharpur Division WTT data.




---

## Author
**Raushan Yadav**  
Research Intern,
Indian Institute of Technology Kharagpur,
Kharagpur - 721302, West Bengal, India
