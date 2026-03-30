# DASH Video Streaming Experiment using FFmpeg, Apache, IPERF3 SCTP, and Linux Traffic Control

## Module
**Smart Internet Technologies (CSI_6_SIT)**
 

---

## Project Overview
This project implements an end-to-end MPEG-DASH video streaming testbed using Linux virtual machines in VMware Workstation 17. The work covers source video acquisition, FFmpeg-based transcoding into multiple bitrate representations, DASH manifest generation, web hosting of the DASH outputs, client-side playback, SCTP competing traffic generation using IPERF3, Linux traffic-control based network impairment emulation, and subjective QoE evaluation using Mean Opinion Score (MOS).

The aim of the project is to evaluate how different network artefacts affect perceived video quality in adaptive DASH streaming.

---

## Project Objectives
The project was designed to complete the following tasks:

1. Install FFmpeg on a Linux server VM.
2. Download two HD videos from online sources.
3. Transcode each video into three bitrate versions:
   - 1.5 Mbps
   - 2.0 Mbps
   - 4.0 Mbps
4. Create DASH manifests and segment files.
5. Host the DASH streams on a web server using unique URLs.
6. Create a Linux client VM and verify DASH playback.
7. Establish a 1 Mbps SCTP IPERF3 connection between client and server.
8. Emulate network scenarios using Linux traffic control:
   - TBF
   - HTB
   - Traffic policing
9. Evaluate user-perceived quality using MOS.
10. Analyse QoE under each scenario.

---

## Experimental Environment

### Server VM
- Platform: VMware Workstation 17
- OS: Ubuntu Server 25.04
- Role:
  - FFmpeg processing
  - DASH packaging
  - Apache web hosting
  - IPERF3 server

### Client VM
- Platform: VMware Workstation 17
- OS: Ubuntu Desktop / Lightweight Linux Client [Version Used]
- Role:
  - DASH playback
  - IPERF3 client
  - Linux traffic control testing
  - MOS viewing endpoint

---

## Tools and Technologies
- **VMware Workstation 17**
- **Ubuntu Linux**
- **FFmpeg**
- **FFprobe**
- **Apache2**
- **IPERF3**
- **Linux tc / iproute2**
- **IFB (Intermediate Functional Block)**
- **Browser-based DASH player**
- **Git and GitHub**

---

## System Workflow
The project workflow is summarised below:

1. Create and configure server VM.
2. Install FFmpeg and verify functionality.
3. Download two HD source videos.
4. Transcode each video into 1.5 Mbps, 2.0 Mbps, and 4.0 Mbps versions.
5. Generate DASH manifests and segment files.
6. Host the DASH outputs on Apache using unique MPD URLs.
7. Create and configure client VM.
8. Play hosted DASH streams from the client.
9. Generate SCTP competing traffic using IPERF3.
10. Apply TBF, HTB, and policing scenarios on the client-side ingress.
11. Record observations and calculate MOS.
12. Analyse QoE from the MOS findings.

---

## Repository Structure
```text
dash-streaming/
├── README.md
├── screenshots/
├── scripts/
├── configs/
├── results/
├── docs/
└── report-assets/
