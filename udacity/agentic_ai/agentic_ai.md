# Agentic AI

Links:

1. https://github.com/udacity/cd14526-Effective-Prompting-AgenticAIC1-exercises
2. https://github.com/msankar/agentic-ai
3. https://github.com/paulina-grunwald/udacity-agentic-ai

## 1. Prompting for Effective LLM Reasoning and Planning

**AI Agent:** intelligent system - perceive env, make decisions, take actions to achieve goals. 
- reasoning, planning, acting

**Components of AI Agent:**
- **LLM** -> Brain
- **Tools** -> Funtions, APIs, Resources
- **Instructions** -> Guides Agent's behavior
- **Memory** -> Context: long term, short term
- **Runtime/Orchestration** -> links tools and LLM execution

**Prompt:** Set of instructions. System Prompts - Persona | User Requests | Tool Descriptions

**Role Based Prompt:** Role (Persona) + Task + Output Format + Exampels + Context

**Planning** involves breaking down complex problems into sequential sub-problems. 

**Improve response Quality:** Generic Prompt, Professional Role (**Role / Persona / Character background**) - expertise and tone, Concrete Constraints - forces customization/personalization, Reasoning

**Choosing Model:** is a trade-off: capability, cost, latency (speed).

**OpenAI Models**
1. `gpt-40`: 128K token context. May 13, 2024.
2. `gpt-40-mini`: 128K token context. July 18, 2024. 
3. `gpt-4.1`: 1M token context. April 14, 2025. 
4. `gpt-4.1-mini`: 1M token context. 
5. `gpt-4.1-nano`: 1M token context. 

**Prompting Technique:**
1. **Chain-of-Thought**
2. **Prompt Chaining**

**Strategic Prompt Design** - It's a craft/art.
**Eliciting Transparency** - Drawing out. 
**Iterative Refinement**


<br/><br/>

**Evaluating AI Agents** Are LLM responses are consistent with expectations? 
1. **Ground Truth Evaluations** 
   1. Structured data (say JSON) -> **ML Evaluation Metrics** completeness, accuracy, precision, recall. 
   2. Text/Image (freeform) -> may use **LLM as a judge**. **Evaluate the Evaluator!**
2. **Other Evaluation Types**
   1. Consistency and Persona Adherence
   2. Robustness Testing - resilience against adversarial attacks
   3. Simple Metrics - median response length, average sentence length, word frequency etc. 

**Traces:** Raw inputs and outputs of a model. 


<br/><br/>

**CoT Chain-of-Thought** is a technique, sequence of intermediate reasoning steps before final answer. Guides thinking process.
1. **Zero Shot CoT:** Say, adding `Lets think Step by Step` in prompt. 
2. **Few Shot CoT:** few examples in prompt showing problem, reasoning, answer

**CoT Benefits**
1. Improved Performacne
2. Enhanced Interpretebility and trust. 

**Self-Consistency Prompting** is an advanced CoT variant. 

**ReAct Reason + Act** is a framework - handle complex multi step tasks, interaction with external info. 




## 2. Agentic Workflows


## 3. Building Agents


## 4. Multi-Agent Systems