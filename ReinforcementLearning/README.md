![](https://xaltius.tech/wp-content/uploads/2019/07/Reinforcement-Learning.jpg)


# **Reinforcement Learning**

## Open notebooks in colab
<p align='justify'>
    &emsp;&emsp; Click on below links to open each jupyter notebook in google colab
</p>


[logo]: https://colab.research.google.com/assets/colab-badge.svg
- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/ReinforcementLearning/1_reinforcementLearning.ipynb) &nbsp; **1_reinforcementLearning**
- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/ReinforcementLearning/2_RL_RandomSearchPolicy.ipynb) &nbsp; **2_RL_RandomSearchPolicy**
- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/ReinforcementLearning/3_RL_PolicyGradientAlgorithm.ipynb) &nbsp; **3_RL_PolicyGradientAlgorithm**
- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/ReinforcementLearning/4_RL_MarkoveDecisionProcess.ipynb) &nbsp; **4_RL_MarkoveDecisionProcess**
- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/ReinforcementLearning/5_ModelBased_PolicyIteration.ipynb) &nbsp; **5_ModelBased_PolicyIteration**
- [![colab][logo]](https://colab.research.google.com/github.com/Mhddaraaa/start/blob/main/ReinforcementLearning/6_RL_MonteCarlo.ipynb) &nbsp; **6_RL_MonteCarlo**


<img width="400" align="right" src="https://assets-global.website-files.com/621e749a546b7592125f38ed/6231efbede9e9af7f611ff68_fig%201.gif">

- Reinforcement learning is a machine learning training method based on rewarding desired behaviors and punishing undesired ones. In general, a reinforcement learning agent is able to perceive and interpret its environment, take actions and learn through trial and error.
- In reinforcement learning, your system learns how to interact intuitively with the environment by basically doing stuff and watching what happens

- The main elements of an RL system are:

  1. The **agent** or the learner
  2. The **environment** the agent interacts with
  3. The **policy** that the agent follows to take actions
  4. The **reward** signal that the agent observes upon taking actions
<br>
 
## What Is a **Policy** in Reinforcement Learning?
<img width="300" align="left" src="https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExdmR3NTFlMWl0ZWtrOW1xdHNqY2V1Z3NxcWc2ejE0aWhsZzBienBnMyZlcD12MV9naWZzX3NlYXJjaCZjdD1n/bU2xOiv6LlSyB75szf/giphy.gif">
A policy is a strategy that an agent uses in pursuit of goals. The policy dictates the actions that the agent takes as a function of the agent's state and the environment.

<br>

1. **Deterministic Policy**

In a deterministic policy, there is only one particular action possible in a given state. When the agent reaches a given state, the deterministic policy tells it to perform a particular action always.

- At any given time $t$, for a given state $s$, the deterministic policy $μ$ tells the agent to perform an action $a$. It can be expressed as:

<h1 align="center"> $μ(s) = a$  </h1>

2. **Stochastic Policy**

In stochastic policy, it returns a probability distribution of multiple actions in the action space for a given state. It is in contrast with the deterministic policy which always mapped a given state to only one particular action. So in this scenario, the agent may perform different actions each time it visits a particular state based on the probability distribution of actions returned by the stochastic policy.

- At any given time $t$, for a given state $s$, the deterministic policy $μ$ tells the agent to perform an action $a$ with a certain probability.

<h1 align="center"> $μ(a|s)$ </h1>

**Type of stochastic Policy:**
1. **Categorical Policy**: select the actions from the discrete action space
2. **Gussian Policy**: action space is continuous
<br>

RL algorithms can be broadly categorized as model-free and model-based. Model-free algorithms do not build an explicit model of the environment, or more rigorously, the MDP.
They are closer to trial-and-error algorithms that run experiments with the environment using actions and derive the optimal policy from it directly.


Model-free algorithms are either value-based or policy-based.
- **Value-based** algorithms consider optimal policy to be a direct result of estimating the value function of every state accurately. Using a recursive relation described by the Bellman equation, the agent interacts with the environment to sample trajectories of states and rewards. Given enough trajectories, the value function of the MDP can be estimated.Once the value function is known, discovering the optimal policy is simply a matter of acting greedily with respect to the value function at every state of the process. Some popular value-based algorithms are SARSA and Q-learning. 

- **Policy-based** algorithms, on the other hand, directly estimate the optimal policy without modeling the value function. By parametrizing the policy directly using learnable weights, they render the learning problem into an explicit optimization problem. Like value-based algorithms, the agent samples trajectories of states and rewards; however, this information is used to explicitly improve the policy by maximizing the average value function across all states.
<br>
<img align="right" width="400" src="https://images.synopsys.com/is/image/synopsys/reinforcement-learningV1-01?qlt=82&wid=1200&ts=1680107735401&$responsive$&fit=constrain&dpr=off">

- Policy-based approaches suffer from a high variance which manifests as instabilities during the training process.
- Value-based approaches, though more stable, are not suitable to model continuous action spaces.
- One of the most powerful RL algorithms, called the **actor-critic** algorithm, is built by combining the value-based (critic) and policy-based (actor) approaches.
