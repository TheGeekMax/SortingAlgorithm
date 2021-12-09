void tri_bubble(int[] a) {
  int n = a.length;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n - 1; j++) {
      if (a[j] > a[j + 1]) {
        int temp = a[j];
        a[j] = a[j + 1];
        a[j + 1] = temp;
      }
    }
  }
}

void tri_selection(int[] a) {
  int n = a.length;
  for (int i = 0; i < n; i++) {
    int min = i;
    for (int j = i + 1; j < n; j++) {
      if (a[j] < a[min]) {
        min = j;
      }
    }
    if (min != i) {
      int temp = a[i];
      a[i] = a[min];
      a[min] = temp;
    }
  }
}

void tri_insertion(int[] a) {
  int n = a.length;
  for (int i = 1; i < n; i++) {
    int j = i;
    while (j > 0 && a[j] < a[j - 1]) {
      int temp = a[j];
      a[j] = a[j - 1];
      a[j - 1] = temp;
      j--;
    }
  }
}

void shuf(int[] a) {
    for (int i = 0; i < a.length; i++) {
        
    }
}
