 int sum(int n) {
if (n == 1)
return 1;
return n + sum(n - 1);
}
int possible_sum1(int n) {
int i, s = 1;
for (i = n; i != 1; --i)
s += i;
return s;
}
int possible_sum2(int n) {
return n * (n + 1) / 2;
}
int possible_sum3(int n) {
if (n > 0)
return n * (n + 1) / 2;
return n + possible_sum3(n - 1);
}