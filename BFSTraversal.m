function output=BFSTraversal(startNode,Graph)
%--------------------------------------------------------------------
%�������ܣ������������
%����ʱ�䣺2019��6��9��
%��ڲ�������ʼ�ڵ㡢ͼ��ͨ����
%���ڲ���������˳�򼰽ڵ��Ӧ����
%--------------------------------------------------------------------

[m, n]=size(Graph);%��ȡ��ھ����ά��
nodelist=zeros(m,1);%��ʾ�ڵ��
queue=startNode;%����ͷΪ��ڲ�����ʼ�ڵ�
nodelist(startNode)=1;
result=startNode;
output=[startNode,0];%��ʼ���������
L = 1;
while isempty(queue)==false%ͨ��ѭ���õ��������
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
output=Layering(output);%ѭ����������зֲ�
end