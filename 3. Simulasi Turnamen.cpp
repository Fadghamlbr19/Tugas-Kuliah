#include <bits/stdc++.h>
#include <cmath>
#include <ctime>
#include <iostream>
using namespace std;

struct Player{
    int skill;
};

Player player[5];
string TourneyChoice;
string gamecont;
int modal = 1000000;
int wage = 200000;//masih contoh
int prize1 = 100000, prize2 = 20
int total;
int outnum;

void resetTotal(){
    int tempA = 0, tempB = 0;
    tempA = total;
    total = tempB;
    tempB = tempA;
}

void resetRestart(){
    int tempC=0, tempD=1000000;
    tempC = modal;
    modal = tempD;
    tempD = tempC;
}

int main(){

tournament:
    cout << "1. Play E-Sport Manager 2022" << endl;
    cin >> TourneyChoice;
    system("CLS");

    if(TourneyChoice=="1"){
        goto tournamentplay;
    } else {
       cout << "invalid number";
    }

tournamentplay:
    cout << "modal = " << modal << endl;
    resetTotal();
    for(int i=0; i<5; i++){
        cout << "insert skill " << i+1 << " ";
        cin >> player[i].skill;
        total += player[i].skill;
    }

    double AvgSkill = total/5;
    double persentase = AvgSkill - (prize1/modal);
    cout << "Winning percentage " << persentase << "%" << endl;
    getchar(); getchar();

    srand(time(0));
    outnum = rand()%100;

    if(outnum >= 1 && persentase >= outnum){
        cout << "YOU WIN" << endl;
        modal += prize1;
        modal -= wage;
        getchar();
        system("CLS");



        cout << "your remaining budget : " << modal << endl;
        getchar();

            if (modal > 0){
            cout << "1.continue?\n2. Exit" << endl;
            cin >> gamecont;

                if (gamecont=="1"){
                    system("CLS");
                    goto tournament;

                }else if (gamecont=="2"){
                    system("CLS");
                    goto exit;
                }
            } else {
                cout << "NO BUDGET REMAINING" << endl;
                getchar(); getchar();
                goto exit;
            }
    } else if (outnum > persentase){
        cout << "You LOSE" << endl;
        cout << "Try Again? Press 1" << endl;
        cin >> TourneyChoice;
        system("CLS");


        if(TourneyChoice=="1"){
            resetRestart();
            goto tournamentplay;

        }else {
            getchar();
            goto exit;
        }
    }


exit:
    cout << "GOODBYE PLAYER, Thank You for Playing";
    getchar();
    return 0;
}
//
