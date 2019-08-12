Cellogram
=========

> Tobias Lendenmann[^1] [^2], Teseo Schneider[^2], Jérémie Dumas[^2] [^3], Marco
Tarini[^4], Apratim Bajpai[^5], Weiqiang Chen[^5], Dimos Poulikakos[^1],
Aldo Ferrari[^7][^1][^6], Daniele Panozzo[^2]

[^1]: ETH Zurich, Laboratory of Thermodynamics in Emerging Technologies,
8092 Zurich, Switzerland

[^2]: New York University, Courant Institute of Mathematical Sciences, New
York 10003, USA

[^3]: nTopology, New York 10013, USA

[^4]: Università degli Studi di Milano, Department of Computer Science,
20133 Milano, Italy

[^5]: New York University, Department of Mechanical and Aerospace
Engineering, New York 11201, USA

[^6]: ETH Zurich, Institute for Mechanical Systems, 8092 Zürich, Switzerland

[^7]: EMPA, Swiss Federal Laboratories for Materials Science and Technology,
8600 Dübendorf, Switzerland

## Introduction

The Cellogram software package contains custom-developed software for
the analysis of reference free traction force images. The software
comprises of marker detection, reference position estimation and finite
element analysis in order to compute surface traction fields. Details on
the underlying algorithms are provided in the supplementary information.

The entire code is contained in `src/` folder. The Cellogram binary is
in the `binary/` folder (there is no need to compile the code).

A folder with examples of deformed quantum dot arrays and pillars are
provided in the `data/` folder.

## Requirements

Cellogram does not require any commercial software and was tested on
Windows 10 Enterprise and Mac OS X 10.14. The executable is not signed,
therefore on Mac it requires to enable the option to run untrusted
applications. The simplest way is to right click on Cellogram, select
"open" and allow it to open in any subsequent dialogues. Note that you
might need to allow running apps from not coming from the apple store.
To do so, go to `System Preferences > Security & Privacy` the
General tab and click the `App Store and identified developers` radio
button (this step requires admin priviledges).