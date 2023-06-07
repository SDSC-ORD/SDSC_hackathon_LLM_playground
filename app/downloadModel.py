#!/usr/bin/python3
from transformers import pipeline

if __name__ == "__main.py__":
    model = pipeline(model="declare-lab/flan-alpaca-Base")

    prompt = "Thanks for having downloaded the Base model inside Docker"

    response = model(prompt, max_length=128, do_sample=True)

    print(response)