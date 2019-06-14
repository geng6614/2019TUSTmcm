function output=Layering(output)
%--------------------------------------------------------------------
%函数功能：广度优先搜索
%创建时间：2019年6月9日
%入口参数：图连通矩阵
%出口参数：遍历顺序级节点对应层数
%--------------------------------------------------------------------

w = 1;%表示层数
u = 1;%中件变量，限定赋值范围
[v,~] = size(output);%求得入口参数行数
x = max(output(:,2));
next = 1;%表示下一次从哪里开始循环
 while(x==output(v,2) && w<x)%通过循环修改值来得到正确的层数
    z = u;
    u = 1 + length(find(output(:,2)<=w));
    for a = 1+next:v
        if ((output(a,2)<u) && (output(a,2)>w))
            output(a,2) = w+1;
        end
    end
    next = next+length(find(output(:,2)==w));%计算求得下一次开始循环处
    w = w+1;%层数加一
 end