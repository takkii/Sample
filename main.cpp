#include "all.h"

int main() {
    boost::array<int,4> a;
    a = {1, 2, 3};
    boost::array<string,4> b;
    b = {"helloworld", "nonoichi", "ishikawa"};

    cout << a[0] << a[1] << a[2] << a[3] << endl;
    cout << b[0] << " " << b[1] << " " << b[2] << " " << b[3] << endl;
    // cout << "size:     " << a.size() << endl;
    // cout << "empty:    " << boolalpha << a.empty() << endl;
    // cout << "max_size: " << a.max_size() << endl;
    // cout << "front:    " << a.front() << endl;
    // cout << "back:     " << a.back() << endl;
    // cout << "elems:    ";
    cout << "size:     " << b.size() << endl;
    cout << "empty:    " << boolalpha << b.empty() << endl;
    cout << "max_size: " << b.max_size() << endl;
    cout << "front:    " << b.front() << endl;
    cout << "back:     " << b.back() << endl;
    cout << "elems:    ";

    return 0;
}