# Adaptive Kalman Filter MATLAB Implementation

## Overview

This repository presents a MATLAB implementation of an Adaptive Kalman Filter (AKF) for state estimation in dynamic systems.

The Adaptive Kalman Filter improves estimation accuracy by adapting the filter parameters according to measurement noise variations.

## Features

- Adaptive state estimation
- Noise reduction in measurement signals
- Dynamic adjustment of filter parameters
- MATLAB-based simulation
- Performance evaluation using estimation error

## Methodology

The algorithm consists of two main stages:

### Prediction Step

The system state is predicted using the mathematical model and previous estimation.

### Adaptive Update Step

The filter parameters are adjusted based on measurement innovation to improve estimation accuracy under changing noise conditions.

## Requirements

- MATLAB R2020a or newer

## Project Structure

```text
Adaptive-Kalman-Filter-MATLAB

├── README.md
├── main.m
└── adaptive_kalman_filter.m
