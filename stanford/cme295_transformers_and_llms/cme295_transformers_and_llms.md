
# CME295: Transformers and LLMS

## L1: Transformers

In 2010s, RNN was a popular model. Back then we did not have one model that did everything. 
We had seperate models for each use case. 

In 2017, Transformer came out. Made it scalable. Money, Data, Parameters => Quality. 

In 2022, ChatGPT. Conversational LLMs

In 2026. AI Agents. 


<br/><br/>

**Tokenization:**: Dividing text into entities which then we can represent using meaningful vectors. (Models do not understand text. They only work with numbers.)

**Word Level:**
- large **Vocabulary** 
- root is not levereged. Bear, and bears could have different vectors. 
- Out of vocabulary. When you encounter a new word. 

**Character Level:**
- slower computations and less interpretable embeddings. 

**Subwords:**
- We train to come up with proper tokens. So we need to make sure data used for training aligns with end goals. 
- **BPE Tokenizer** Byte Pair Encoding. 

**Special Tokens**
- UNK - Unknown
- BOS - Beginning of Sequence
- EOS - End of Sequence
- PAD - Padding (Used for efficiency. To make the sequence of a particular length)


<br/><br/>

**Toekn/Word Representation**

**Naive (One-hot) encoding**:
- This puts all tokens orthogonal to each other. Doesn't capture their relationships. 

**Word2Vec** Tries to learn embeddings using a neural network. Achieves this using proxy tasks. 
- Limitation is that two words can get the same representation even though they can mean two different things. river bank vs bank. **Not context aware.**
- Another is that the word order doesn't matter.  

**Proxy Task** A task that you are not learning as an end goal. 
- **CBOW** Continuous Bag of words. Predicting words within certain words. 
- **Skip-gram** predicting words surrounding given word. 

To overcome the Word2Vec limitations, they used **RNNs**
- It has a hidden state that remembers the gist of the sequence so far. 
- Limitation is that it has hard time remembering entire past. limited memory. **Long-range dependency**
- **Vanishing gradient problem** 
- **Slow computations** because you are still looking one word at a time. no parallel computing. 

**LSTM Long Short Term Memory** - Kept hidden state, and also a **cell state.**

**Attention** introduced in 2014. Along with hidden states, you allow the model to have connections to all other words/tokens so far. 

**Attention is all you need paper** published in 2017 relies on **Self attention** - attention on steroids. 
- In order to compute the representation of a token, you express it as a function of all other tokens. 

**Query Q** entity trying to determine what a given token is about. 
**Key K**
**Value V**

Q, K, V can be learned using **projection matrices**. 


<br/><br/>

**Encoder** compute meaningful embeddings. 

**Decoder** using meaningful representations from encoder and internal embeddings to generate next token. 

**Position Embedding** to add positional information. Can be learned or hardcoded. 

**Residual connections** taken from **ResNet**

**Layer Normalization** keeps scale of activations consistent across layers, and helps with gradient propagation and more stable convergence. 

**Masking** aka **Causal/Masked** self-attention. future tokens to be decoded are hidden at training time. create matrix of masked tokens at each step so operations can be vectorized. 

**Multi-head attention** multiple self-attention layers (h) in parallel. capture different attention features in parallel. 

**Dropout** helps better generalize by randomly drop neural net connections with small probability during training time so model doesn't rely too much on certain features. 

**Label smoothing** you are saying, it's okay not to predict 100% output label. Say, you don't have to predict 100% 'day'. Introduced in **2015 vision paper**


<br/><br/>


