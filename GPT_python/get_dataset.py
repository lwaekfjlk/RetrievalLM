import datasets
import jsonlines

'''
train_lines = datasets.load_dataset('Fraser/python-lines', split='train')
with jsonlines.open('./dataset/python_lines/json/train.jsonl', mode='w') as writer:
    writer.write_all(train_lines)

test_lines = datasets.load_dataset('Fraser/python-lines', split='test')
with jsonlines.open('./dataset/python_lines/json/test.jsonl', mode='w') as writer:
    writer.write_all(test_lines)
'''

validation_lines = datasets.load_dataset('Fraser/python-lines', split='validation')
with jsonlines.open('./dataset/python_lines/json/dev.jsonl', mode='w') as writer:
    for idx, line in enumerate(validation_lines):
        writer.write(line)
        if idx > 3000:
            break