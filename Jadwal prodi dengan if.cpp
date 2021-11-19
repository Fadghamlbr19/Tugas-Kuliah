#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    cout << "MENCARI JADWAL KULIAH" << endl;
    string F;
    cout << "Masukkan Fakultasmu (KAPITAL): ";
    getline(cin, F);

    if (F == "MIPA"){
        cout << "Senin\nRabu" << endl;
    }
    else if (F == "TEKNIK"){
        cout << "Senin\nJumat" << endl;
    }
    else if (F == "BIOLOGI"){
        cout << "Senin\nKamis" << endl;
    }
    else if (F == "FKKMK"){
        cout << "Selasa\nKamis" << endl;
    }
    else if (F == "GEOGRAFI"){
        cout << "Selasa\nKamis" << endl;
    }
    else if (F == "KEHUTANAN"){
        cout << "Selasa\nJumat" << endl;
    }
    else if (F == "HUKUM"){
        cout << "Rabu\nSabtu" << endl;
    }
    else if (F == "FEB"){
        cout << "Rabu\nJumat" << endl;
    }
    else if (F == "ISIPOL"){
        cout << "Sabtu" << endl;
    }
    else if (F == "FILSAFAT"){
        cout << "Sabtu" << endl;
    }
    else {
        cout << "Fakultas Tidak Terdaftar";
    }
    return 0;
}
