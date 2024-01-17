# **Generative Adversarial Networks (GANs)**

<img align='center' width='100' src="https://content.wolfram.com/sites/39/2020/08/GAN-Functionality.png">

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


<p align='justify'>
    &emsp;&emsp;
</p>


<br>
<br>
<br>
