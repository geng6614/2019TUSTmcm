%--------------------------------------------------------------------
%函数功能：计算得到的子树矩阵T的有效节点数
%创建时间：2019年6月10日
%入口参数：BFS结果转化为各个节点的表示形式的矩阵
%出口参数：每个子树的叶数构成的列向量
%--------------------------------------------------------------------
function A=compresstable2matrix(b)

    [n, ~]=size(b);%获取输入矩阵行数
    m=max(b(:));
    A=zeros(m,m);%创建邻接矩阵

    for i=1:n%循环赋值
        A(b(i,1),b(i,2))=1;
        A(b(i,2),b(i,1))=1;
    end
end