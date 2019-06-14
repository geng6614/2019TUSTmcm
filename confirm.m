function result = confirm(n,G,A)
%--------------------------------------------------------------------
%函数功能：广度优先搜索
%创建时间：2019年6月11日
%入口参数：被选择人的序号n，t时刻系统的状态矩阵G（即每个人的行动状态）,系统邻接矩阵A
%出口参数：t+1时刻系统的状态矩阵
%--------------------------------------------------------------------
N = BFSTraversal(n,A);%求得被选择人n的遍历矩阵，记为N
[m,~] = size(N);

for i = 1:m%寻找第一关系人
    if N(i,2) ~= 1
        N(i,1) = 0;
        N(i,2) = 0;
    end
end

N (all(N == 0, 2),:) = [];%简化，得到第一关系人的表示矩阵N
N = N(:,1);

chose_1 = 0;%表示选择1/0的人数
chose_0 = 0;
[x,~] = size(N);
for i = 1:x%记录选择行动1和0的人数
    if G(i) == 0
        chose_0 = chose_0 + 1;
    else
        chose_1 = chose_1 + 1;
    end
end

if chose_0>chose_1
    result = 0;
elseif chose_0<chose_1
    result = 1;
else
    result = round(rand(1));
end