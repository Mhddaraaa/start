# **ElectroEncephaloGraphy (EEG)**

<img align='center' width='800' src="https://www.healthresearch.org/wp-content/uploads/2016/05/eeg-brain-function.jpg">
<br>

## Open notebooks in colab
<p align='justify'>
    &emsp;&emsp; Click on below links to open each jupyter notebook in google colab
</p>

[logo]: https://colab.research.google.com/assets/colab-badge.svg

- [![colab][logo]](https://colab.research.google.com/github.com/Mhddaraaa/start/blob/main/ElectroEncephaloGraphy(EEG)/1_MNE_loadData.ipynb) &nbsp; **Load Data**
- [![colab][logo]](https://colab.research.google.com/github.com/Mhddaraaa/start/blob/main/ElectroEncephaloGraphy(EEG)/2_MNE_filterDataFourier.ipynb) &nbsp; **Fourier Filter**

<br><br>

##	**What is ElectroEncephaloGraphy**

<p align='justify'>
    &emsp;&emsp;Electroencephalography (EEG) is a non-invasive method used to record electrical activity in the brain (Voltage) over time.
  It involves placing electrodes on the scalp to detect the electrical signals generated by the brain’s neurons as they communicate.
  These electrical signals, known as brain waves, are captured and displayed as waveforms on a computer or a paper readout.
Primarily usage: Diagnosing neurological conditions, Sleep studies (REM and non-REM), Brain-computer interfaces (BCI), and Monitoring brain function
</p>

###	**Questions:**

**1.	What is the voltage?**
<p align='justify'>
    &emsp;&emsp;As brain signals are the result of neuronal activity that generates tiny electrical fields, which are typically ranging from
  0.1 to 100 microvolts (µV).
</p>

**2.	Where does the electricity come from?**
<p align='justify'>
    &emsp;&emsp;Originates from neuronal activity, specifically from the post-synaptic potentials of neurons. When neurons communicate,
  they release neurotransmitters that cause ion channels to open, leading to the movement of charged particles (ions) like sodium (Na+), potassium (K+), calcium (Ca2+), and chloride (Cl−) across the cell membrane. This ion movement generates small electrical currents.
</p>

**3.	How is it measured?**
<p align='justify'>
    &emsp;&emsp;Measured using electrodes placed on the scalp. These electrodes are arranged in specific patterns (such as the 10-20 system),
  which is a standardized placement method for consistency. Three main components are: electrodes, amplification, and recording
</p>

## **event-related potentials (ERPs) (click for more information)**
<p align='justify'>
    &emsp;&emsp;which are brain responses triggered by specific stimuli or events. These components are defined by their polarity, timing (latency),
  and the cognitive or sensory processes they reflect.
</p>

|Component |	Polarity |	Latency (ms) |	Function|
|----------|-----------|---------------|----------|
P1 (P100) |	Positive |	~100 |	Early visual processing
N1 (N100) |	Negative	| ~100 |	Early sensory detection (auditory/visual)
P2 (P200)	| Positive |	~200 |	Perceptual processing, attention
N2 (N200)	| Negative |	~200	| Conflict detection, cognitive control
P3 (P300) |	Positive	~300	Attention, working memory
N400 |	Negative	| ~400 |	Language processing, semantic processing
LPC |	Positive |	>400 |	Memory retrieval, decision-making
ERN |	Negative |	~50-100 |	Error monitoring
MMN |	Negative |	100–250 |	Mismatch detection, sensory memory

<br><br>

###	**Question:**
**Which aspects of brain function lead to scalp potentials?**
<p align='justify'>
    &emsp;&emsp;The <b>scalp potentials</b> recorded by EEG (Electroencephalography) represent a small fraction of the brain's
  complex electrical activity. While EEG captures only surface-level signals, it still reflects critical aspects of brain function. 
Several factors contribute to the generation of scalp potentials, each highlighting specific neural processes. These include:
</p>

<p align='justify'>
    &emsp;&emsp;<b>1.	Post-synaptic potentials (PSPs):</b> The primary source of scalp EEG signals , which are generated when neurons communicate with each other.
  it reflects large-scale neural network activity rather than individual neuron action potentials <br>
    &emsp;&emsp;<b>2.	Cortical Pyramidal Neurons:</b> Scalp potentials are primarily generated by the pyramidal neurons in the cerebral cortex
  (oriented perpendicular, arranged in layers). <br>
    &emsp;&emsp;<b>3.	Synchronous activity</b> of neurons, particularly during brain oscillations and event-related responses. <br><br>
    &emsp;&emsp;<b>4.	Dipole formation</b> by aligned cortical pyramidal neurons (regions of positive and negative charge).<br>
    &emsp;&emsp;<b>5.	Volume conduction</b> of signals through the skull and scalp.<br>
    &emsp;&emsp;<b>6.	Brain rhythms and oscillations</b>, which reflect different states of arousal and cognitive processing.<br>
    &emsp;&emsp;&emsp;&emsp; - Delta waves (0.5-4 Hz): Associated with deep sleep.<br>
    &emsp;&emsp;&emsp;&emsp; - Theta waves (4-8 Hz): Linked to drowsiness, meditation, and memory processing.<br>
    &emsp;&emsp;&emsp;&emsp; - Alpha waves (8-12 Hz): Prominent during relaxation with eyes closed.<br>
    &emsp;&emsp;&emsp;&emsp; - Beta waves (13-30 Hz): Seen during active thinking, concentration, or anxiety.<br>
    &emsp;&emsp;&emsp;&emsp; - Gamma waves (30-100 Hz): Thought to be involved in high-level cognitive functions such as perception and consciousness.<br>
    &emsp;&emsp;<b>7.	Cognitive and sensory processing</b> of stimuli, reflected in event-related potentials (ERPs).<br>
    &emsp;&emsp;<b>8.	Activity in large-scale brain networks</b> that coordinate functional states and processes.
</p>







<p align='justify'>
    &emsp;&emsp;
</p>

<img align='center' width='100' src="">


<br>
<br>
<br>