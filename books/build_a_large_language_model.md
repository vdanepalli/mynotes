# Build a Large Language Model


## Understanding LLM

AI
- Machine Leanring 
- Deep Learning
- Rule Based Systems
- Genetic Algorithms
- Expert Systems
- Fuzzy Logic
- Symbolic Reasoning

Earlier NLP models were task specific. Narrow. 

**LLMs** are deep neural networks. Large - **parameters**, and the **dataset** size. 
1. Transformer
2. RNN Recurrent Neural Networks
3. CNN Conventional Neural Networks

Not all LLMs are Transformers, Not all Transformers are LLMs (Transformers can be used in **Computer Vision** too)

**Transformer** - architecture. Allows to pay selective attention. 

**Machine Learning:** learn patterns and rules by showing tons of examples. no explicit programming. then use this model for predictions. model learns by predicting, comparing, calculating loss, and correcting. 
- manual feature extraction. identifying relevant features for model. 


<br/><br/>

**PyTorch** Deep Learning Library

LLMs are **next word predictors** but they have to understand entire nuances to correctly predict. And overall, it makes sense. It appears as if they have human level understanding. 

1. LLM **pre-trained** on unlabeled data. This becomes **foundation model.** Broader understanding of language. 
2. **Fine-tune** on labeled dataset for specific skills. 
   1. **Instruction Fine-tuning** - dataset contains instruction, answer pairs. 
   2. **Classification Fine-tuning** - dataset contains text and associated class labels.

**Self Suepervised (self-labeling) learning** paradigm. Model generates its own labels from input data. 


<br/><br/>


1. **Text Completion** 

2. **Few Shot capabilities** mean the model can learn to perform new tasks based on few examples instead of extensive training. Learning from minimal examples which user provides as input.

3. **Zero Shot learning** ability to generalize to completely unseen tasks without any prior specific examples. 


<br/><br/>

**2017 Attention is all you need**

Original Transformer was developed for **machine translation - English to German and French**

![](https://learning.oreilly.com/api/v2/epubs/urn:orm:book:9781633437166/files/Images/1-4.png)


1. **Encoder** Input -> Preprocess -> Encode -> Generate Embeddings
2. **Decoder**

**Self Attention** allows model to weigh importance of different tokens relative to each other capturing **long-range dependencies** and **contextual relationships.** 

Variations. 
1. **BERT** Bidirectional Encoder Representations from Transformer. 
   1. **masked** word prediction. built on **encoder** submodule of Transformer. Strong at classification tasks. 
2. **GPT** Generative Pretrained Transformers
   1. built on **decoder** submodule of Transformer. Generates one word at a time. **aka Autoregressive models** - incorporate previous outpupts as inputs for future predictions.
   2. First introduced in paper **Improving Language Understanding by GPT** OpenAI
   3. **InstructGPT Paper** OpenAI 


<br/><br/>


**GPT3** 2020. CommonCrawl (410B - 570GB) + WebText2 (19B) + Books1 (12B) + Books2 (55B) + Wikipedia (3B) = 499B Tokens. Model was trained on 300B Tokens. 
- Pretraining cost $4.6M
- 96 transformer layers + 175B parameters. 12288 embedding dimensions

**Meta LLaMA** - Added Arxiv Research Papers (92GB) + StackExchange (78GB)

**Dolma: An Open Corpus of Three Trillion Tokens**


<br/><br/>

**Emergent Behavior** ability to perform task that model isn't trained to do. 

![](https://learning.oreilly.com/api/v2/epubs/urn:orm:book:9781633437166/files/Images/1-9.png)


## Working with Text Data. 

**Embedding** - converting text data to numerical vectors. 
- word, sentence, paragraph, documents, audio, video -- all can have embeddings (the embedding model might be seperate for each)


<br/><br/>

**One-hot-encoding** - dimensionality curse (d = vocab size). zero semantic relationship (dot product returns 0 for all embeddings.) Uses a trained neural network to generate embeddings. Cross Entropy Loss (optimized using Negative sampling or hierarchical softmax)

**Word2Vec** 2013. idea is if two words appear in similar contexts, they must have similar meanings.
1. **CBOW Continuous Bag of Words** predict center word from context. 
2. **Skip-gram** predict context from center word. Better for rarer words.

**Word2Vec Limitations:**
1. Embeddings are not contextually aware. Context In-Sensitive. 
2. Assigns embeddings to whole word. (fails on typos or out-of-vocabulary words)

**Logits** the unconstrained numbers. Don't sum to 1. Scores produced by model and are not probabilities. 

**Softmax**
- **Exponentiate each score.** makes all positive, and amplifies bigger scores over smaller ones.
- **Normalize** Divides each value by sum of all values. 

**Cross Entropy Loss**
- Loss = `-ln(probability of correct answer)`
- You calculate scores for all words in vocabulary, and then apply softmax and the calculate loss to adjust weights

**Negative Sampling:** 
- No calculating probabilities for each word. Now the test is true/false - to identify the correct word pair out of 1 correct and a few fake pairs.


**Hierarchical Softmax:** 
- You arrange your vocabulary into a binary tree. 
- Now you predict the probabilities of going right or left at each node to reach the target word. 






