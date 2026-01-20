# Freight-Oriented Train Scheduling Optimization (SER – Chakradharpur Division)

## Overview
This project focuses on the development of a freight-prioritized train scheduling optimization model for the Chakradharpur Division of South Eastern Railway (SER). The division is characterized by high-density freight operations, primarily mineral and bulk commodity traffic, where operational delays have a direct impact on revenue realization.

The objective of this work is to formulate a mathematically rigorous optimization model that minimizes freight train delays while ensuring safe and feasible operation for all trains.

## Scope of Current Phase
The current phase is limited to:
- Network abstraction based on SER Working Time Table (WTT)
- Mathematical model formulation
- Objective function and constraint design
- Validation of modeling assumptions

Computational implementation and solver-based experimentation will be taken up in subsequent phases.

## Methodology
- Operations Research based modeling (MILP)
- Time-based train scheduling formulation
- Explicit representation of single-line and double-line sections
- Freight-prioritized delay minimization

## Case Study
- Railway Division: Chakradharpur Division
- Zone: South Eastern Railway (SER)
- Data Source: SER Working Time Table (WTT)

## Repository Structure
model/ → Mathematical formulation (AMPL style)
data/ → Input data extracted from WTT
docs/ → Model documentation and reports


## Status
Model formulation under development.
