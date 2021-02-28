# Datasets 

The model sigma-delta modulator (SDM) is single-stage one-bit architecture or so called cascaded. 

## order?.csv 

This datasets configure SDM architecture. Each rows correspond SDM stage. The stage include:
- integrator's initial value stage 
- scale coefficients gi1 and gi2
- leakage coefficient ai

## inputs.csv

This dataset forms in Java code sinusoidal input sampling. Each row corresponds harmonic which include: 
- amplitude which is strongly depends from input scaling coefficient g11.
- frequency which is normed on sampling frequency. 
- phase, count for sinus. For constant or zero-harmonic just use pi/2 value.

Resulting input is a harmonic superposition.

## outOrder?.csv

Generated by model. Controlled by inputs.cvs and order?.cvs dataset. The sampling length is specified in Java code. Include 
- input - input samples
- output - output samples

# Behavioral  SDM model analysis

Model is written on Java that controlled by datasets. The model generate outOrder dataset which is analyzed in Python frameworks like Pandas, NumPy, SciPy. An environment of frameworks is deployed in Docker image. Please read documentation in your Linux distribution or Windows OS about upping Docker service.

## Make analysis enviroment

Use run_docker_jupyter.sh. To start navigating on project tree and Jupiter Notebook just copy

  <code>localhost:4545/tree?</code>

to browser address line.

