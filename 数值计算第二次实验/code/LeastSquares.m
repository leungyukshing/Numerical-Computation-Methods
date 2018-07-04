% ������С���˷�
function [result, error, count] = LeastSquares(A,b)
    m = 10000;
    n = 10;
    count = [];
    standard = lsqnonneg(A,b); % ��׼��
    p = 1000*eye(n); % pΪn*n�ĵ�λ����
    x = zeros(n,1); % xΪn*1������
    k = zeros(n,1); % kΪn*1������;
    
    for i=1:m
        k = (p*A(i,:)') / (1 + A(i,:)*p*A(i,:)');
        p = (eye(n) - k*A(i,:)) * p;
        x = x + k * (b(i,1) - A(i,:)*x);
        error(i) = norm((x - standard),2);
        count(i) = i;
    end
    result = x;
end