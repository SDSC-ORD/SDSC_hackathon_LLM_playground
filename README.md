# SDSC_hackathon_LLM_playground

**Under development**

Right now the total image size is around 7GB without including the model. The model selected will be downloaded on the first run of the script. 

Follow the notebook tutorial to run your first model. 

**Links below only valid after starting the jupyter server.**
- ![Alpaca Test](http://127.0.0.1:8888/lab/tree/notebooks/000.Alpaca_test.ipynb)

## How to use it?

```
docker pull caviri/sdsc-llm-playground:latest
```

```
docker run --rm -it  --gpus all -p 8888:8888 -e JUPYTER_TOKEN=TEST caviri/sdsc-llm-playground:latest
```

Enter in the server in: http://127.0.0.1:8888/ and use the password defined

## How to build this docker?

```
docker build -t caviri/sdsc-llm-playground:latest .
```

