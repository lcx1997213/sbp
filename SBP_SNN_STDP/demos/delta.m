%t��һ��ȫ�������
%tsp��ʾ������������ĵ�tsp ��2*tsp 3*tsp... �ط�Ϊ1
function t = delta(t,tsp)
    num = ceil(length(t)/tsp);
    for i = 1:num
        t(i*tsp) = 1;
    end

end