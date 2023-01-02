insert into pinecone

## Run

```
source .env \
&& docker build -t embedding-search . \
--build-arg OPENAI_KEY=$OPENAI_KEY \
--build-arg PINECONE_API_KEY=$PINECONE_API_KEY \
&& docker run -v $(pwd):/app -p 8888:8888 embedding-search
```

