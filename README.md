# SDSC_hackathon_LLM_playground

**Under development**

## How to use it?

```
docker build -t caviri/sdsc-llm-playground:latest .
```

```
docker run --rm -it  --gpus all -p 8888:8888 -e JUPYTER_TOKEN=TEST caviri/sdsc-llm-playground:latest
```

Enter in the server in: http://127.0.0.1:8888/ and use the password defined