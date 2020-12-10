import os
import sys
import csv
import argparse

def parse_args():
    parser = argparse.ArgumentParser(description='Create formatted inputs for various HITs')
    parser.add_argument('--task', type=str, required=True, help='Task to prepare data for: is-clarq, more-clarq, fluency-adequacy, need-clarq, info-needs, unk-significance')
    parser.add_argument('--input-post-file', type=str, help='Context file in mturk-raw directory')
    parser.add_argument('--input-generated-file', type=str, help='Generated outputs file in mturk-raw directory')
    parser.add_argument('--task-input-file', type=str, help='Create input file to be used in task')
    args, _ = parser.parse_known_args()
    return args

def is_clarq_task(args):
    out_fp = open(args.task_input_file, 'w+')
    fieldnames = ['input_meta', 'input_text', 'clarq_meta', 'clarq_text']
    writer = csv.DictWriter(out_fp, fieldnames, lineterminator='\n', quoting=csv.QUOTE_ALL)
    writer.writeheader()
    with open(args.input_post_file, 'r') as fp1, open(args.input_generated_file, 'r') as fp2:
        for idx, corresponding_lines in enumerate(zip(fp1, fp2)):
            info = {}
            info['input_meta'] = 'post_' + str(idx)
            info['input_text'] = corresponding_lines[0].strip()
            info['clarq_meta'] = 'clarq_' + str(idx)
            info['clarq_text'] = corresponding_lines[1].strip()
            writer.writerow(info)
    out_fp.close()

def more_clarq_task(args):
    out_fp = open(args.task_input_file, 'w+')
    fieldnames = ['input_meta', 'input_text', 'clarq_meta', 'clarq_text']
    writer = csv.DictWriter(out_fp, fieldnames, lineterminator='\n', quoting=csv.QUOTE_ALL)
    writer.writeheader()
    with open(args.input_post_file, 'r') as fp1, open(args.input_generated_file, 'r') as fp2:
        for idx, corresponding_lines in enumerate(zip(fp1, fp2)):
            info = {}
            info['input_meta'] = 'post_' + str(idx)
            info['input_text'] = corresponding_lines[0].strip()
            info['clarq_meta'] = 'clarq_' + str(idx)
            info['clarq_text'] = corresponding_lines[1].strip()
            writer.writerow(info)
    out_fp.close()

def fluency_adequacy_task(args):
    out_fp = open(args.task_input_file, 'w+')
    fieldnames = ['input_meta', 'input_text', 'clarq_meta', 'clarq_text']
    writer = csv.DictWriter(out_fp, fieldnames, lineterminator='\n', quoting=csv.QUOTE_ALL)
    writer.writeheader()
    with open(args.input_post_file, 'r') as fp1, open(args.input_generated_file, 'r') as fp2:
        for idx, corresponding_lines in enumerate(zip(fp1, fp2)):
            info = {}
            info['input_meta'] = 'post_' + str(idx)
            info['input_text'] = corresponding_lines[0].strip()
            info['clarq_meta'] = 'clarq_' + str(idx)
            info['clarq_text'] = corresponding_lines[1].strip()
            writer.writerow(info)
    out_fp.close()

def need_clarq_task(args):
    out_fp = open(args.task_input_file, 'w+')
    fieldnames = ['input_meta', 'input_text']
    writer = csv.DictWriter(out_fp, fieldnames, lineterminator='\n', quoting=csv.QUOTE_ALL)
    writer.writeheader()
    with open(args.input_post_file, 'r') as fp:
        for idx, line in enumerate(fp):
            info = {}
            info['input_meta'] = 'post_' + str(idx)
            info['input_text'] = line.strip()
            writer.writerow(info)
    out_fp.close()

def information_needs_task(args):
    out_fp = open(args.task_input_file, 'w+')
    fieldnames = ['input_meta', 'input_text']
    writer = csv.DictWriter(out_fp, fieldnames, lineterminator='\n', quoting=csv.QUOTE_ALL)
    writer.writeheader()
    with open(args.input_post_file, 'r') as fp:
        for idx, line in enumerate(fp):
            info = {}
            info['input_meta'] = 'post_' + str(idx)
            info['input_text'] = line.strip()
            writer.writerow(info)
    out_fp.close()

def unk_significance_task(args):
    out_fp = open(args.task_input_file, 'w+')
    fieldnames = ['input_meta', 'input_text', 'clarq_meta', 'clarq_text']
    writer = csv.DictWriter(out_fp, fieldnames, lineterminator='\n', quoting=csv.QUOTE_ALL)
    writer.writeheader()
    with open(args.input_post_file, 'r') as fp1, open(args.input_generated_file, 'r') as fp2:
        for idx, corresponding_lines in enumerate(zip(fp1, fp2)):
            info = {}
            info['input_meta'] = 'post_' + str(idx)
            info['input_text'] = corresponding_lines[0].strip()
            info['clarq_meta'] = 'clarq_' + str(idx)
            info['clarq_text'] = corresponding_lines[1].strip()
            writer.writerow(info)
    out_fp.close()

def main(args):
    if args.task == 'is-clarq':
        is_clarq_task(args)
    elif args.task == 'more-clarq':
        more_clarq_task(args)
    elif args.task == 'fluency-adequacy':
        fluency_adequacy_task(args)
    elif args.task == 'need-clarq':
        need_clarq_task(args)
    elif args.task == 'info-needs':
        information_needs_task(args)
    elif args.task == 'unk-significance':
        unk_significance_task(args)

if __name__ == '__main__':
    args = parse_args()
    main(args)