# **Generative Adversarial Networks (GANs)**

<img align='center' width='1000' src="https://content.wolfram.com/sites/39/2020/08/GAN-Functionality.png">
<br>

## Open notebooks in colab
<p align='justify'>
    &emsp;&emsp; Click on below links to open each jupyter notebook in google colab
</p>

[logo]: https://colab.research.google.com/assets/colab-badge.svg

- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/Generative_Adversarial_Networks(GANs)/1_GANs_pytorch.ipynb) &nbsp; **GANs**
- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/Generative_Adversarial_Networks(GANs)/2_GANs_pytorch_DCGAN.ipynb) &nbsp; **DCGAN**
- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/Generative_Adversarial_Networks(GANs)/3_GANs_pytorch_WGAN.ipynb) &nbsp; **WGAN**
- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/Generative_Adversarial_Networks(GANs)/4_GANs_pytorch_LSGAN.ipynb) &nbsp; **LSGAN**
- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/Generative_Adversarial_Networks(GANs)/5_GANs_pytorch_RelativisticLSGAN.ipynb) &nbsp; **RelativisticLSGAN**
- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/Generative_Adversarial_Networks(GANs)/6_GANs_pytorch_ConditionalGAN.ipynb) &nbsp; **ConditionalGAN**
- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/Generative_Adversarial_Networks(GANs)/7_GANs_pytorch_InfoGAN.ipynb)  &nbsp; **InfoGAN**
- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/Generative_Adversarial_Networks(GANs)/8_Fréchet_inception_distance(FID).ipynb) &nbsp; **Fréchet inception distance(FID)**
- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/Generative_Adversarial_Networks(GANs)/9_GANs_pytorch_SRGAN.ipynb) &nbsp; **SRGAN**
- [![colab][logo]](https://colab.research.google.com/github/Mhddaraaa/start/blob/main/Generative_Adversarial_Networks(GANs)/10_GANs_pytorch_ESRGAN.ipynb) &nbsp; **ESRGAN**

  
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
<img align='left' width='200' src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/9124573e-5cd7-4016-a280-6e8583aed918/d6izkti-a2976cb5-c22b-41d0-be17-532ca0a5cf72.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzkxMjQ1NzNlLTVjZDctNDAxNi1hMjgwLTZlODU4M2FlZDkxOFwvZDZpemt0aS1hMjk3NmNiNS1jMjJiLTQxZDAtYmUxNy01MzJjYTBhNWNmNzIuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.MPaMUcdADhVvce40RcmwF5PZAYMKllIMB4cZikyP228">
<img align='right' width='450' src="https://cdn-images-1.medium.com/max/800/1*9eunrJ0BBtjotX1LirZW9Q.gif">
<p align='justify'>
    &emsp;&emsp;Generative adversarial networks are based on a game theoretic scenario in which the generator network must compete against an adversary.
    The <b>generator</b> network directly produces samples. Its adversary, the <b>discriminator</b> network, attempts to distinguish between samples drawn
    from thetraining data and samples drawn from the generator.
</p>
<p align='justify'>
    &emsp;&emsp;Generative modeling is an <b>unsupervised</b> learning problem, The two models, the generator and discriminator, are <b>trained together</b>.
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
\begin{gather*}
    \large -\frac{1}{n}\sum_{i=1}^{n}{-[\log(D(x)) + \log(1 - D(G(z)))]} \\
   \large 𝒁 ⟶ Generator \xrightarrow[\text{}]{\text{G(z)}} Criritc \xrightarrow[\text{}]{\text{C(G(z))}} -\frac{1}{n}\sum_{i=1}^{n}{(\log(1 - D(G(z))))} \\
   \large 𝐗 ⟶ Criritc \xrightarrow[\text{}]{\text{C(G(z))}} \frac{1}{n}\sum_{i=1}^{n}{\log(D(x))}
\end{gather*}
$$


## **Problems in GANs**

- **Mode collapse**:
<img align='right' width='400' src="https://media.springernature.com/lw685/springer-static/image/chp%3A10.1007%2F978-3-030-36808-1_5/MediaObjects/493029_1_En_5_Fig3_HTML.png">

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
<img align='right' width='400' src='https://ydata.ai/hs-fs/hubfs/Blog%20YData/Content/visualization_of_earth_mover_s_distance.webp?width=800&height=298&name=visualization_of_earth_mover_s_distance.webp'>
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
\begin{gather*}
    \large 𝒁 ⟶ Generator \xrightarrow[\text{}]{\text{G(z)}} Critic \xrightarrow[\text{}]{\text{C(G(z))}} \overline{C(G(z))} \\
    \huge \underset{g}{\mathrm{min}} - [\mathbb{E}(C(G(z)))]
\end{gather*}
$$

#### **Critic Loss**
<br>
<p align='justify'>
    &emsp;&emsp;<b>One</b> matrix to calculate the loss for <b>real</b> input and <b>zeros</b> matrix to calculate the loss for <b>fake</b> input which is the output of generator so the <b>BCE</b> formular will be:
</p>

<br>

$$
\begin{gather*}
    \large 𝒁 ⟶ Generator \xrightarrow[\text{}]{\text{G(z)}} Criritc \xrightarrow[\text{}]{\text{C(G(z))}} \overline{C(G(z))} \\
    \large 𝐗 ⟶ Criritc \xrightarrow[\text{}]{\text{C(G(z))}} \overline{C(𝐗)} \\
    \huge \underset{d}{\mathrm{min}} - [\mathbb{E}(C(𝐗))) - \mathbb{E}(C(G(z)))]
\end{gather*}
$$

<br>

<p align='justify'>
    <b>Discriminator</b> output is between 0 and 1
    <br>
    <b>Critic</b> output not restricted to be between 0 and 1
</p>



- **MinimaMax game:**

  <p align='justify'>
    &emsp;&emsp;<b>Critic</b> tries to maximize the the differences, While <b>Generetor</b> tries to minimize the difference
</p>

### **Lipschitz continuity**
<img aligh='left' width='300' src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Lipschitz_Visualisierung.gif/640px-Lipschitz_Visualisierung.gif">
<p align='justify'>
    &emsp;&emsp;The differential of the function need to satisfy $| f^{'} | \leq K$ in every point, meaning it should be K-Lipschitz continuous.
    <br>Here $K$ is known as a $K$ Lipschitz constant for function $f(...)$. Functions that are everywhere continuously differentiable is Lipschitz         continuous, because the derivative, estimated as $\frac{\lvert f(x_1) - f(x_2) \rvert}{\lvert x_1 - x_2 \rvert}$, has bounds. However, a Lipschitz continuous function may not be everywhere differentiable, such as $f(x) = \lvert x \rvert$.
</p>

<br>

#### **Force the function to be 1-Lipschitz**

- **Weight clipping**

<p align='justify'>
    &emsp;&emsp;by clipping all entries of W (output of each layer) to within some interval ${\displaystyle [-c,c]}$, we have can bound $\displaystyle \|W\| $.
    where $\displaystyle \|.\|_s$  is the operator norm
</p>

- **Gradient penalty**

<br>

$$
   \large LOSS =  - \left( \overline{C(𝐗))} - \overline{C(G(z))} \right) + 𝜆*GP
$$

$$
\begin{align*}
    GP &= \left( \displaystyle \|∇C(𝐗) \| - 1 \right)^2 \\
    𝐗  &= α * 𝐗 + (1 - α) * G(z)
\end{align*}
$$

## **LSGANs**

- LSGAN is proposed, in which the least squares loss function is adopted for the discriminator.
- LSGANs are able to generate higher quality images than regular GANs.beside, LSGANs perform more stable during the learning process.

**WHy?**
    
1. More difficult to saturate → Better stability, **Least squares** loss function is flat only at one point; **Sigmoid** cross entropy will saturate when x is large
2. Tougher penalties → Higher Quailty

**Generator Loss**

$$
\begin{gather*}
    \large \underset{g}{\mathrm{min}} L_{LSGAN} = \frac{1}{2} \mathbb{E}_{z \sim P_z(z)}(D(G(z))-c)^2\\
   \large 𝒁 ⟶ Generator \xrightarrow[\text{}]{\text{G(z)}} Discriminator \xrightarrow[\text{}]{\text{D(G(z))}} (D(G(z))-c)^2
\end{gather*}
$$

<br>

**Critic Loss**

$$
\begin{gather*}
    \large \underset{d}{\mathrm{min}} L_{LSGAN} = \frac{1}{2} \mathbb{E} [D(𝐗) - b)^2] + \frac{1}{2}\mathbb{E} [D(G(z))-a)^2] \\
    \large 𝒁 ⟶ Generator \xrightarrow[\text{}]{\text{G(z)}} Discriminator \xrightarrow[\text{}]{\text{D(G(z))}} D(G(z))-a)^2 \\
    \large 𝐗 ⟶ Discriminator \xrightarrow[\text{}]{\text{C(G(z))}} (D(𝐗) - b)^2 
\end{gather*}
$$

<br>

- $\large \text{a, b, c}$
    - a: labels for fake data; -->Discriminator
    - b: labels for real data; -->Discriminator
    - c: values that G wants D to believe; -->Generator
    - **a, b** coding scheme for the discriminator, where **a** and **b** are the labels for fake data and real data, respectively. Then the. **c** denotes the value that G wants D to believe for fake data.

<br>

**Parameters Selection**

One condition is to set $b-c=1$ and $b-a=2$. minimizing **Pearson X² divergence** is equel to minimizing the above loss functions.

- For example, $a = −1, b = 1, c = 0$:

$$
\begin{align*}
    \large \underset{d}{\mathrm{min}} L_{LSGAN} &= \frac{1}{2} \mathbb{E} [D(𝐗) - 1)^2] + \frac{1}{2}\mathbb{E} [D(G(z))+1)^2] \\
    \large \underset{g}{\mathrm{min}} L_{LSGAN} &= \frac{1}{2} \mathbb{E}_{z \sim P_z(z)}(D(G(z)))^2
\end{align*}
$$

<br>

Let b = c ⇒ Generating samples as real as possible
- For example, $a = 0, b = −1, c = −1$:

$$
\begin{align*} 
    \large \underset{d}{\mathrm{min}} L_{LSGAN} &= \frac{1}{2} \mathbb{E} [D(𝐗) - 1)^2] + \frac{1}{2}\mathbb{E} [D(G(z)))^2] \\
    \large \underset{g}{\mathrm{min}} L_{LSGAN} &= \frac{1}{2} \mathbb{E}_{z \sim P_z(z)}(D(G(z))-1)^2
\end{align*}
$$

## **RaLSGANs**

**Generator Loss**\
<br>

$$
    \large \underset{g}{\mathrm{min}} \large L_{RaLSGAN} = \mathbb{E} \left[\left(D(G(z)-\mathbb{E}[D(𝐗)]-1 \right)^2 \right] + \mathbb{E} \left[\left(D(𝐗)-\mathbb{E}[D(G(z))]+1 \right)^2 \right]
$$

<br>

**Critic Loss**

<br>

$$
    \large \underset{d}{\mathrm{min}} \large L_{RaLSGAN} = \mathbb{E} \left[\left(D(𝐗)-\mathbb{E}[D(G(z))]-1 \right)^2 \right] + \mathbb{E} \left[\left(D(G(z)-\mathbb{E}[D(𝐗)]+1 \right)^2 \right]
$$


<p align='justify'>
    &emsp;&emsp;
</p>

<img align='center' width='100' src="">


<br>
<br>
<br>
