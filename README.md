# IEEE754 Floating-Point Adder

## Overview

This project implements a **32-bit floating-point adder** compliant with the IEEE754 standard.  
It supports addition and subtraction of single-precision numbers, handling edge cases like `NaN`, `+∞`, `-∞`, underflow, and overflow.  

The design is **modular and pipelined**, featuring dedicated stages for comparison, summation, and normalization, ensuring efficiency and testability.  

## Features

- **IEEE754 Compliance:** Correct handling of sign, exponent, and mantissa.  
- **Modular Design:** Comparators, Ripple Carry Adder, CaseManager, Normalizer, and SpecialOutput modules.
- **Three-Stage Pipeline:**  
  1. Comparing Stage – determines operation and handles special cases  
  2. Summing Stage – aligns mantissas, adds/subtracts, detects overflow
  3. Adjusting Stage – normalizes result, detects underflow, produces final output  
- **Special Case Handling:** `NaN`, `+∞`, `-∞`, zero, and rounding considerations.
- **Test Bench:** Covers normal and edge cases for correctness verification.

## Key Modules

### Comparators
- **4-bit Comparator:** Outputs `<`, `=`, `>` for 4-bit words.  
- **8-bit Comparator:** Combines two 4-bit comparators for higher-order comparison.  
- **23-bit Mantissa Comparator:** Uses three 8-bit and one 4-bit comparator to handle mantissa comparison.  

### Arithmetic Unit
- **Ripple Carry Adder (RCA):** Performs addition/subtraction of N-bit numbers; supports two’s complement subtraction.  

### Special Modules
- **CaseManager:** Detects special input cases and determines special outputs.  
- **Comparator:** Identifies the larger operand and computes the final sign.  
- **Normalizer:** Aligns mantissa into scientific notation, adjusts exponent, and detects underflow.  
- **SpecialOutput:** Generates outputs for exceptional cases based on error flags.  

## Pipeline Architecture

- **Registers:** Four registers propagate operands, results, and exception signals through the stages.  
- **Clock Period:** 40 ns, balancing pipeline stage delays.  
- **Stage Timing Summaries:**  
  - Stage 1: min period 8.8 ns (max freq 113.6 MHz)  
  - Stage 2: min period 9.6 ns (max freq 104 MHz)  
  - Stage 3: min period 8.9 ns (max freq 112.3 MHz)  

## Test Bench

### Special Cases
| Input 1 | Input 2 | Expected Output | Description |
|---------|---------|----------------|-------------|
| +∞      | 0       | +∞             | Infinity plus zero |
| +∞      | −∞      | NaN            | Infinity minus infinity |
| 0       | 0       | 0              | Zero plus zero |
| NaN     | 17.2    | NaN            | NaN propagation |

### Normal Cases
| Input 1 | Input 2 | Expected Output | Description |
|---------|---------|----------------|-------------|
| 2.8     | 17.2    | 20             | Simple addition |
| 0       | 35.23   | 35.23          | Zero plus number |
| 2.11897634797e37 | 2.5260167e30 | 2.11897647473e37 | Large number addition |
| 2.11897634797e37 | 2.5260167e30 | 2.1189762212e37 | Large number subtraction |
| 2.0571154e-38 | 2.0571155e-38 | 0 | Underflow test |

