# 问题
使用labelme_json_to_dataset工具只考虑单个JSON中标签数，例如单个JSON中有2个类别，那么类别会编码为“0、1、2”三种。
假设有4个标签，“猫”，“狗”，“羊”，“猪”，我们想类别对应为“1”、“2”，“3”，“4”（背景为“0”），如果一张图片JSON中只有“羊”，那么会被掩码成“1”，而不是我们想要的“3”。

# 解决方式
修改labelme中的json_to_dataset.py文件，添加读取标签功能，即考虑全局标签，即使图片中没有出现其它“物体”，也能正常标注出来。

# 使用方式
1、修改label_names.txt中的标签

2、执行
批量处理
修改YOUR_JSON_DIR为JSON目录，执行：
```
sh labelme_json_to_dataset.sh
```

单张处理
```
python json_to_dataset.py -o temp -n label_names.txt JSON_PATH
```
其中JSON_PATH为JSON文件路径。
