function output=BFSTraversal(startNode,Graph)
%--------------------------------------------------------------------
%函数功能：广度优先搜索
%创建时间：2019年6月9日
%入口参数：起始节点、图连通矩阵
%出口参数：遍历顺序及节点对应层数
%--------------------------------------------------------------------

[m, n]=size(Graph);%获取入口矩阵的维度
nodelist=zeros(m,1);%表示节点表
queue=startNode;%队列头为入口参数起始节点
nodelist(startNode)=1;
result=startNode;
output=[startNode,0];%初始化输出矩阵
L = 1;
while isempty(queue)==false%通过循环得到输出矩阵
    i=queue(1);
    queue(1)=[];
    %result=[result;10000+i];
    for j=1:n
        if(Graph(i,j)>0&&nodelist(j)==0&&i~=j)
            queue=[queue;j];
            nodelist(j)=1;
            result=j;
            output=[output;[result,L]];
        end
    end
    L = L+1;
end
output=Layering(output);%循环结束后进行分层
end