#! /usr/bin/env python3

"""File: files-finder.py

- 특정 파일을 찾는다

todo:

    - 같은 확장자를 가지 파일을 찾는다

      + *.rst 처럼 입력하면 확장자만 구분할 수 있다
      + filenames에서 rst 확장자로 끝나는 파일을 찾을 수 있다
"""

import os


current_path = os.getcwd()


def find_files(filename, search_path=current_path):
    result = []
    is_extension = False

    if filename.startswith('*.'):
        filename = filename[2:]
        is_extension = True

    for dirpath, dirnames, filenames in os.walk(search_path):
        for f in filenames:
            if is_extension:
                if filename == f[-len(filename):]:
                    result.append(os.path.join(dirpath, f))
            elif filename == f:
                result.append(os.path.join(dirpath, f))

    return result


if __name__ == "__main__":
    filename = input("File name: ")
    filelist = find_files(filename)

    for f in filelist:
        print(f)
    print("총 {}개의 파일을 찾음".format(len(filelist)))
