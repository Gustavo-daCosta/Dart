List<int> elementsList = [];
void main() {
  List<int> list1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> list2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];

  if (list1.length >= list2.length) {
    commonElements(list1, list2);
  } else {
    commonElements(list2, list1);
  }
  print('List 1: $list1');
  print('List 2: $list2');
  print('Common elements: $elementsList');
}

void commonElements(List highList, List lowList) {
  for (int i = 0; i < highList.length; i++) {
    if (lowList.contains(highList[i])) {
      elementsList.add(highList[i]);
    }
  }
}