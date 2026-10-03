# ERA V5

## S1: From Neural Networks to the Transformer

**Neuron** multipy, add, squish; input.weight + bias. 
**Layers**
**Training**
**Embeddings**
**Attention**
**Assistant**


**Activation Functions**
- **ReLU** negative => 0; else x; `max(0, x)`. **Dying ReLU** if a neuron gets stuck in negative zone, it sleeps forever.
- **Sigmoid** squish x between 0 and 1
- **Step Function** below zero => 0; above zero => 1
- **GeLU**
- **Swish**

Neural network learns to find patterns. Adjusts it state after comparing what it predicted to the actual. Repeat n times to attain the goal state. 

**Biological Neurons**
1. Each neuron is intelligent. Can decide how much of information to pass individually. 
2. Each neuron can talk to each other neuron. 
3. Spiking neural network. some can chose to not wort (kinda like sleep or not activate.)

**Neuron** weighted sum of inputs passed through activation function. 

We can have different number of neurons in each layer but we prefer same number of neurons for computation reasons (GPU).

Bias lost importance because the probability of all inputs being zero is too low. If it was just `y = mx + b` that is a different case. But today x spans from x1 ... x_million/billion. 

**Feed forward neural network**

<br/><br/>

**Loss** how wrong the networks answer is. **Gradient Descent** to change weights so loss is reduced. 

Language has two challenges: **Positional information** and **Contextual awareness**

**RNN** reads a sentence one word at a time. Carries running summary of what is read so far => **Hidden State**. Because of the sequntial nature, can't parallelize, and the running summary tends to forget past when the context is huge. 

**Attention** is achieved through Query, Key, Values. 

**Query** information the word is looking for.
**Key** information the word can offer to other words. 

Q.K represents the strength of that connection. 

**Residual connections**

**Normalization layers**

**Dataset Collection**
- Is it the right dataset? 
- Scientific discovery?
- Modern?
- Biased?