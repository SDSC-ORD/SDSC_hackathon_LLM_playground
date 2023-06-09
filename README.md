# SDSC_hackathon_LLM_playground

**Under development**

Right now the total image size is around 7GB without including the model. The model selected will be downloaded on the first run of the script. 

Follow the notebook tutorial to run your first model. 

**Links below only valid after starting the jupyter server.**
- [Alpaca Test](http://127.0.0.1:8888/lab/tree/notebooks/000.Alpaca_test.ipynb)
- [Fast Chat Langchain Test](http://127.0.0.1:8888/lab/tree/notebooks/001.FastChat_test.ipynb)
- [Music Gen Test](http://127.0.0.1:8888/lab/tree/notebooks/002.MusicGen_test.ipynb)
- [Stable Diffusion Test](http://127.0.0.1:8888/lab/tree/notebooks/003.StableDiffusion_test.ipynb)

## How to use it?

```
docker pull caviri/sdsc-llm-playground:latest
```

```
docker pull caviri/sdsc-llm-playground:nonroot_user
```

```
docker run --rm -it  --gpus all -p 8888:8888 -e JUPYTER_TOKEN=TEST caviri/sdsc-llm-playground:nonroot_user
```

Enter in the server in: http://127.0.0.1:8888/ and use the password defined

## How to use this on runai?

```
runai submit testllm4 -i caviri/sdsc-llm-playground:nonroot_user -e JUPYTER_TOKEN=TEST --service-type=portforward --port 8888:8888 --attach --interactive --node-type "A100" -g 0.2
```

## How to build this docker?

```
docker build -t caviri/sdsc-llm-playground:latest .
```

## How to run Fastchat?

1. Open a new terminal in jupyter lab
2. Install [Fastchat](https://github.com/lm-sys/FastChat) with `pip install fschat`
3. Run a model: 
    - `python3 -m fastchat.serve.cli --model-path lmsys/fastchat-t5-3b-v1.0` (~10GB VRAM)
    - `python3 -m fastchat.serve.cli --model-path databricks/dolly-v2-7b` (~16GB VRAM)

This will open an interactive session with the model. `--load-8bit` flag will reduce the size of the models in memory but is not working. 
