#include "all.h"

int main() {
    boost::array<int,4> a;
    a = {1, 2, 3};

    cout << a[0] << a[1] << a[2] << a[3] << endl;
    cout << "size:     " << a.size() << endl;
    cout << "empty:    " << boolalpha << a.empty() << endl;
    cout << "max_size: " << a.max_size() << endl;
    cout << "front:    " << a.front() << endl;
    cout << "back:     " << a.back() << endl;
    cout << "elems:    ";

    return 0;
}