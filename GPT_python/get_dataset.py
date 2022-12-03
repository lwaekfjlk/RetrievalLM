import datasets
import jsonlines

train_lines = datasets.load_dataset('Fraser/python-lines', split='train')
with jsonlines.open('./data/train.jsonl', mode='w') as writer:
    writer.write_all(train_lines)

test_lines = datasets.load_dataset('Fraser/python-lines', split='test')
with jsonlines.open('./data/test.jsonl', mode='w') as writer:
    writer.write_all(test_lines)

validation_lines = datasets.load_dataset('Fraser/python-lines', split='validation')
with jsonlines.open('./data/validation.jsonl', mode='w') as writer:
    writer.write_all(validation_lines)