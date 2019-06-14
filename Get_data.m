function C = Get_data(n)
%--------------------------------------------------------------------
%函数功能：绘制个数出现概率
%创建时间：2019年6月10日
%入口参数：随机数方阵大小n
%出口参数：各点及出现概率
%--------------------------------------------------------------------
range = n*n;
C = zeros(range,2);
time = 0;
B = 0;
m = 0.45;
for i = m*range:(1-m)*range
    while (B~=i)
        B = randomData(n);
        time = time + 1;
    end
    C(i,1) = B;
    C(i,2) = time;
    time = 0;
end
C(all(C==0,2),:) = [];
x = C(:,1);
y = C(:,2);
y = 1./y;
plot(x,y,'.')
hold on