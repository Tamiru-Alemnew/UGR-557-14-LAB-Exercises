void main() {
  int cur = 0;
  int next = 1;

  for (int i = 0; i < 10; i++) {
    print(cur);
    int temp = cur;
    cur = next;
    next = temp + next;
  }
}
