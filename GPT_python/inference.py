from transformers import AutoTokenizer,AutoModelWithLMHead
tokenizer = AutoTokenizer.from_pretrained("congcongwang/gpt2_medium_fine_tuned_coder")
model = AutoModelWithLMHead.from_pretrained("congcongwang/gpt2_medium_fine_tuned_coder")
# or
# tokenizer = AutoTokenizer.from_pretrained("congcongwang/distilgpt2_fine_tuned_coder")
# model = AutoModelWithLMHead.from_pretrained("congcongwang/distilgpt2_fine_tuned_coder")
use_cuda=True
context="def factorial"
lang="python" # can be java as well.

if use_cuda:
    model.to("cuda")

input_ids = tokenizer.encode("<python> " + context,
                                     return_tensors='pt') if lang == "python" else tokenizer.encode(
            "<java> " + context, return_tensors='pt')
outputs = model.generate(input_ids=input_ids.to("cuda") if use_cuda else input_ids,
                         max_length=128,
                         temperature=0.7,
                         num_return_sequences=1)

decoded = tokenizer.decode(outputs[0], skip_special_tokens=True)
print(decoded)