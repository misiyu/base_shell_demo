tree -L 2
# -L 设置显示的目录深度

mv !(sh) -t sh
# 把除sh以外的东西全部移进sh目录
rm -rf !(sh|tool) 
# 删除除sh和tool以外的所有东西
