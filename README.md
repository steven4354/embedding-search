insert into pinecone

## Run

quick command

```
source .env \
&& docker build -t embedding-search . \
--build-arg OPENAI_KEY=$OPENAI_KEY \
--build-arg PINECONE_API_KEY=$PINECONE_API_KEY \
--build-arg ISCRAPER_API_KEY=$ISCRAPER_API_KEY \
&& docker run --memory=4g -v $(pwd):/app -p 8888:8888 embedding-search
```

explanation

```
docker run -v $(pwd):/app -p 8888:8888 embedding-search
```

-v allows the changes in /app in docker container to come back to this folder