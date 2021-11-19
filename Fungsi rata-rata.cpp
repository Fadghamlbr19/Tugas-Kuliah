
// C++ program to calculate average of array elements
#include <iostream>
using namespace std;

// Recursively computes average of a[]
double avgRec(int a[], int i, int n)
{
    // Last element
    if (i == n-1)
        return a[i];

    // When index is 0, divide sum computed so
    // far by n.
    if (i == 0)
        return ((a[i] + avgRec(a, i+1, n))/n);

    // Compute sum
    return (a[i] + avgRec(a, i+1, n));
}

// Function that return average of an array.
double average(int a[], int n)
{
     return avgRec(a, 0, n);
}

// Driver code
int main()
{
    int arr[] = {10, 2, 3, 4, 5, 6, 7, 8, 9};
    int n = sizeof(arr)/sizeof(arr[0]);

    cout << average(arr, n) << endl;
    return 0;
}
