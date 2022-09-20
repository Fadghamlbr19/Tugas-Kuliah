
// MENGHITUNG RATA-RATA bersama dengan indeks A
#include <iostream>
#include <bits/stdc++.h>
using namespace std;

int score[100];
int highThanAv[100];
int n;


// Fungsi rekursif untuk a[]
double recAvg(int a[], int i, int n)
{
    if (i == n-1)
        return a[i];

    if (i == 0)
        return ((a[i] + recAvg(a, i+1, n))/n);

    return (a[i] + recAvg(a, i+1, n));
}

double average(int a[], int n)
{
     return recAvg(a, 0, n);
}


int main()
{
    int i, jml;
    cout << "masukkan n= ";
    cin >> n;
    for(int i=0; i < n; i++){
        cout << "masukkan nilai ke-" << i+1 << " ";
        cin >> score[i];
    }

    cout << "Rata-rata = " << average(score, n) << endl;

        for(int i=0; i < n; i++){
            if(score[i] > average(score,n)){
            highThanAv[i]= score[i];
            cout << highThanAv[i] << " A" << endl;
           jml =  jml + count(highThanAv,highThanAv+n, highThanAv[i]);
        }
    } cout << jml << " mahasiswa di atas rata-rata";

    return 0;
}
