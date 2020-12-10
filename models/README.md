### Dataset
  - `clarq` - ClarQ Dataset where answers are addressing the root question
  - `stackexchange` - StackExchange Dataset where answers are addressing the follow up question

### Data Representation
  - `concat` - Question context & answer
  - `context` - Question context (we prefer this)

### Pretraining
  - `no-embed` - randomly initialized embeddings
  - `yes-embed` - pretrained with amazon answer embeddings

### Model
  - `n-layer-transformer` - Transformer based model with n hidden layers
  - `attn-lstm` - LSTM model with attention
  - `bart-base` - BART base model
