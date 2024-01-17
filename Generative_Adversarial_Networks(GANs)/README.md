# **Generative Adversarial Networks (GANs)**

<img align='center' width='1000' src="https://content.wolfram.com/sites/39/2020/08/GAN-Functionality.png">

<img align='center' width='100' src="">
<br>

<p align='justify'>
    &emsp;&emsp;
</p>

<p align='justify'>
    &emsp;&emsp;<b>A generative adversarial network (GAN)</b> is a class of machine learning frameworks and a prominent framework for approaching generative AI.
    Given a training set, this technique learns to generate new data with the same statistics as the training set. For example,
    a GAN trained on photographs can generate new photographs that look at least superficially authentic to human observers,
    having many realistic characteristics.
    <br>
    &emsp;&emsp;Generative modeling is an unsupervised learning task in machine learning that involves automatically discovering and learning the regularities
    or patterns in input data in such a way that the model can be used to generate or output new examples that plausibly could have been drawn from the original
    dataset.
</p>

## **Discriminative vs. Generative Modeling**

<p align='justify'>
    &emsp;&emsp;In <b>supervised learning</b>, we may be interested in developing a model to predict a class label given an example of input variables.
    This predictive modeling task is called classification. Classification is also traditionally referred to as <b>discriminative modeling</b>.
  
<img align='right' width='500' src="https://ars.els-cdn.com/content/image/3-s2.0-B9780128191545000242-gr011.jpg">
<br>
<br>
    &emsp;&emsp;Alternately, <b>unsupervised models</b> that summarize the distribution of input variables may be able to be used to create or
  generate new examples in the input distribution. As such, these types of models are referred to as <b>generative models</b>.
</p>

<br>
<br>

## **What Are Generative Adversarial Networks?**
<img align='right' width='500' src="https://cdn-images-1.medium.com/max/800/1*9eunrJ0BBtjotX1LirZW9Q.gif">
<p align='justify'>
    &emsp;&emsp;Generative adversarial networks are based on a game theoretic scenario in which the generator network must compete against an adversary.
    The generator network directly produces samples. Its adversary, the discriminator network, attempts to distinguish between samples drawn from the
    training data and samples drawn from the generator.
</p>
<p align='justify'>
    &emsp;&emsp;Generative modeling is an unsupervised learning problem, The two models, the generator and discriminator, are trained together.
    The generator generates a batch of samples, and these, along with real examples from the domain, are provided to the discriminator and classified as
    real or fake. The discriminator is then updated to get better at discriminating real and fake samples in the next round, and importantly,
    the generator is updated based on how well, or not, the generated samples fooled the discriminator.
</p>

<br>

## **Standard GAN loss function (min-max GAN loss)**

### **BCELoss**
$$
    \large -\frac{1}{n}\sum_{i=1}^{n}{-[y_i\log(\hat{𝚢_i}) + (1-y_i)\log(1-\hat{𝚢_i})]}
$$


<br>

#### **Generator Loss**
<p align='justify'>
    &emsp;&emsp;Generator wants to fool the Discriminator so in loss calculation we consider <b>one</b> matrix to calculate the loss so the
    <b>BCE</b> formular will be:
</p>

$$
    \frac{1}{n}\sum_{i=1}^{n}{(\log(\hat{𝚢_i}))}
$$

<br>
<p align='justify'>
    &emsp;&emsp;where the $\hat{y}$ is the last output of the Discriminator:
</p>


$$
   \large 𝒁 ⟶ Generator \xrightarrow[\text{}]{\text{G(z)}} Discriminator \xrightarrow[\text{}]{\text{D(G(z))}} -\frac{1}{n}\sum_{i=1}^{n}{(\log(D(G(z))))}
$$

<br>

#### **Discriminator Loss**
<p align='justify'>
    &emsp;&emsp;<b>one</b> matrix to calculate the loss for <b>real</b> input and <b>zeors</b> matrix to calculate the loss for <b>fake</b>
    input which is the output of generator so the <b>BCE</b> formular will be:
</p>


<br>

$\text{When label is 1 (for real ones)}:$

$$
    \frac{1}{n}\sum_{i=1}^{n}{(\log(\hat{𝚢_i}))}
$$

<br>

$\text{When label is 0 (for generated images)}:$

$$
    \frac{1}{n}\sum_{i=1}^{n}{(\log(1- \hat{𝚢_i}))}
$$

where the $\hat{y}$ is the last output of the Discriminator:

$$
    \large -\frac{1}{n}\sum_{i=1}^{n}{-[\log(D(x)) + \log(1 - D(G(z)))]}
$$

$$
   \large 𝒁 ⟶ Generator \xrightarrow[\text{}]{\text{G(z)}} Criritc \xrightarrow[\text{}]{\text{C(G(z))}} -\frac{1}{n}\sum_{i=1}^{n}{(\log(1 - D(G(z))))}
$$

$$
   \large 𝐗 ⟶ Criritc \xrightarrow[\text{}]{\text{C(G(z))}} \frac{1}{n}\sum_{i=1}^{n}{\log(D(x))}
$$


## **Problems in GANs**

- **Mode collapse**:
<img align='right' width='200' src="https://ai2-s2-public.s3.amazonaws.com/figures/2017-08-08/49d4ae5770a264446b799e58b05b77ef842ebb76/1-Figure1-1.png">

 During the training, the generator may collapse to a setting where it always produces same outputs.

 - **two causes of mode collapse in GANs**:

    1. **catastrophic forgetting:**
        Catastrophic forgetting refers to the phenomenon in which a model trained on a specific task forgets the knowledge it has gained while learning a new task.

    2. **discriminator overfitting**
<br>
<br>

- **Vanishing gradient**

<img align='right' width='200' src='https://production-media.paperswithcode.com/methods/Screen_Shot_2020-05-25_at_2.53.08_PM.png'>

When the Generated images and Real images distribution are like each other or far from each other the gradient will be close to zero

<br>
<br>
<br>

## **Solution**

**Earth Mover’s distance**:
<img align='right' width='200' src='https://www.researchgate.net/publication/234129934/figure/fig1/AS:643915959005186@1530532936719/d-measures-the-distance between-two-normal-distributions-of-equal-variance.png'>
<p align='justify'>
    &emsp;&emsp;Distance between two probability distributions. It can be interpreted as the minimum energy cost of moving and transforming a pile of dirt in the shape of one probability distribution to the shape of the other distribution.
</p>

<br>
<br>
<br>

## **WLOSS**

### **BCELoss**

$$
    \large -\frac{1}{n}\sum_{i=1}^{n}{-[y_i\log(𝚢^{̂}_i) + (1-y_i)\log(1-y^{̂}_i)]}
$$

<p align='center'>
    &emsp;&emsp;But in here we will use the mean of the outputs so the gradient of any point won't be zero
</p>


<br>

### **Wasserstein Loss**

$$
    \large -\frac{1}{n}\sum_{i=1}^{n}{y_i * \hat{𝚢_i}}
$$

where the $\hat{y}$ is the output of the Critic:

#### **Generator Loss**
<br>

$$
   \large 𝒁 ⟶ Generator \xrightarrow[\text{}]{\text{G(z)}} Critic \xrightarrow[\text{}]{\text{C(G(z))}} \overline{C(G(z))}
$$

$$
    \underset{g}{\mathrm{min}} - [\mathbb{E}(C(G(z)))]
$$

#### **Critic Loss**
<br>
<p align='justify'>
    &emsp;&emsp;<b>One</b> matrix to calculate the loss for **real** input and <b>zeros</b> matrix to calculate the loss for <b>fake</b> input which is the output of generator so the <b>BCE</b> formular will be:
</p>

<br>

$$
   \large 𝒁 ⟶ Generator \xrightarrow[\text{}]{\text{G(z)}} Criritc \xrightarrow[\text{}]{\text{C(G(z))}} \overline{C(G(z))}
$$

$$
   \large 𝐗 ⟶ Criritc \xrightarrow[\text{}]{\text{C(G(z))}} \overline{C(𝐗)}
$$

$$
    \underset{d}{\mathrm{min}} - [\mathbb{E}(C(𝐗))) - \mathbb{E}(C(G(z)))]
$$

<br>

<p align='justify'>
    <b>Discriminator</b> output is between 0 and 1
    <br>
    <b>Discriminator</b> output is between 0 and 1
    <br>
    <b>Critic</b> output not restricted to be between 0 and 1
</p>



- **MinimaMax game:**

    Critic tries to maximize the the differences, While Generetor tries to minimize the difference

<p align='justify'>
    &emsp;&emsp;
</p>


<br>
<br>
<br>
