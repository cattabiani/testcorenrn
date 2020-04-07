
This package is running with the NEURON simulation program written by Michael
Hines and available on internet at:
  http://www.neuro.duke.edu/neuron/home.html

The package contains mechanisms (.mod files) and programs (.oc files) needed 
to simulate interconnected thalamocortical (TRN) relative to the paper:
Wang, J., Chen, S., Nolan, M. F. and Siegelbaum, S. A. (2002)  Activity-
Dependent Regulation of HCN Pacemaker Channels by Cyclic AMP: Signaling 
through Dynamic Allosteric Coupling.  Neuron 36(3), 451-462.

  PROGRAMS
  ========

TCIClamp.hoc

Demonstration of the physiological consequences of the cyclic
allosteric gating scheme for Ih mediated by HCN2 in 
thalamocortical relay cells.  This simulation will reproduce
the current-clamp experiment to examine sag and rebound 
responses to a current step and depolarizing responses to a 
cAMP pulse described in figure 7 of Wang et al. 2002.  The
thalamocortical cell properties are modified from Destexhe et
al 1996, with Ih removed and replaced with a kinetic model of 
HCN2 and the T-type Ca2+ current also removed to focus on the 
role of the H-current.

see Fig. 7 of Wang et al, 2002
 

  MECHANISMS
  ==========

HH2.mod				: fast sodium spikes (Na and K currents)
kleak.mod		 		: leak K+ current 
cAMPclamp.mod		: clamp intracellular cAMP concentration.
hcn2.mod		: HCN2 channel gating from Wang et al 2002.
TCmod.tem	: Template file for a single compartment model of a thalamocortical
                : neuron modified from the model described by Destexhe et al, 1995.
						  
						  
  HOW TO RUN
  ==========
Under unix systems:
to compile the mod files use the command nrnivmodl 
and run the simulation hoc file with the command 
nrngui TCIClamp2.hoc

Under Windows using NEURON 5.2:
to compile the mod files use the "mknrndll" command.
A double click on the simulation file
TCIClamp2.hoc will open the simulation window.

Once the menu and graphics interface has appeared, choose the concentration of
cAMP inside the cell first, otherwise 0 cAMP will be chosen. Then click the
currentstep button to see the simulation of the membrane potential changes of 
the cell in the presense of the specified concentration of cAMP or click the cAMP 
pulse button to see the simulation of the fluctuation of the membrane potential if 
a pulse of specified concentration of cAMP is given to the cell...

CONTACT
-----------------
For more information about how to get NEURON and how to install it, please
refer to the following sites:
  http://www.neuro.duke.edu/neuron/home.html
  http://www.nnc.yale.edu/HTML/YALE/NNC/neuron/neuron.html


Contact for more information:
email: Matt Nolan at mfnolan@fido.cpmc.columbia.edu or sc448@columbia.edu
