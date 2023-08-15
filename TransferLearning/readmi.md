![](https://res.cloudinary.com/dyd911kmh/image/upload/f_auto,q_auto:best/v1516368587/transfer-learning_2x_hjrupn.png)
# **Transfer Learning**
<img align='right' width='400' src="https://editor.analyticsvidhya.com/uploads/76746devcommunity.gif">

- Transfer learning is a machine learning technique where a model trained on one task is re-purposed on a second related task.
- In transfer learning, we first train a base network on a base dataset and task, and then we repurpose the learned features, or transfer them, to a second target network to be trained on a target dataset and task. This process will tend to work if the features are general, meaning suitable to both base and target tasks, instead of specific to the base task.

<br>
<br>

- There is to major type of transfer learning:
    1. **fine-tuning** strategy all weights are changed when training on the new task (except for the weights of the last layers for the original task)
    2. **feature extraction** strategy only the weights of the newly added last layers change during the training phase
<img align="center" width="600" src="https://i.stack.imgur.com/BiClc.png">

- **Why**:
  - Transfer learning has several benefits, but the main advantages are saving training time, better performance of neural networks (in most cases), and not needing a lot of data. 
- **When**
  - There isn’t enough labeled training data to train your network from scratch.
  - There already exists a network that is pre-trained on a similar task, which is usually trained on massive amounts of data.
  - There is no general rule to when use transfer learning
