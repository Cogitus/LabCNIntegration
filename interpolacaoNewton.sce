
function s = interpolacaoNewton(x, y, p)
    n = length(x);
    s = y(1);
    tabela_df = diff_div(x, y);
    for i=2:1:n
        m = 1;
        for j=1:1:i-1
            m = m*(p - x(j));
        end
        s = s + tabela_df(1, i)*m
    end
endfunction
