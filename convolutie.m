function y = convolutie(x, h)
N = length(h);
M = length(x);
for n = 1 : M+N-1
    temp = 0;
    for k = 1 : M
        if n-k+1>0&&n-k+1<=N
            temp = temp + x(k) * h(n - k + 1);
        end
    end
    y(n) = temp;
end
