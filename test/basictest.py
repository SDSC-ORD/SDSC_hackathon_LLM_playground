#!/usr/bin/python3

def isitAlpacaWorking():
    try:
        from transformers import pipeline
        prompt = "Test"
        model = pipeline(model="declare-lab/flan-alpaca-Base")
        response = model(prompt, max_length=128, do_sample=True)

        print("No errors found!")
    except Exception as e:
        print("Exception:")
        print(e)

