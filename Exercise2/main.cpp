#include <iostream>
#include "Eigen/Eigen"
#include <iomanip>
using namespace std;
using namespace Eigen;

/////////////////////////////////////
/// two functions to solve systems using PALU and QR decomposition
/////////////////////////////////////

void solutorePALU (const MatrixXd A, const VectorXd b, const int n){

    VectorXd exactSolution = -1*VectorXd::Ones(n);

    VectorXd x = A.fullPivLu().solve(b);

    cout <<"solution with PALU decomposition: \n" << x <<endl;

    double errRel=0;
    errRel = (exactSolution - x).norm() / exactSolution.norm();
    cout << "(PALU) Relative error: " << errRel<< endl;
}

void solutoreQR (const MatrixXd A, const VectorXd b, const int n){

    VectorXd exactSolution = -1*VectorXd::Ones(n);

    //All matrices are full rank for this problem, full pivoting function is too much expensive in this case
    VectorXd x = A.householderQr().solve(b);

    cout <<"solution with QR decomposition: \n" << x <<endl;

    double errRel=0;
    errRel = (exactSolution - x).norm() / exactSolution.norm();
    cout << "(QR) Relative error: " << errRel<< endl;

}



int main()
{

    cout <<"\nLinear system solution with PALU and QR decomposition, "
            "all systems have solution x = [-1.0e+00; -1.0e+00]\n\n";
    const int n = 2;
    Matrix2d A = Matrix2d::Zero(n,n);
    Vector2d b = Vector2d::Zero(n);

    cout<<"\n-First requirement-\n\n"<<scientific<<setprecision(15);

    A << 5.547001962252291e-01, -3.770900990025203e-02, 8.320502943378437e-01, -9.992887623566787e-01;
    b << -5.169911863249772e-01, 1.672384680188350e-01;

    solutorePALU(A,b,n);
    cout<<"\n";
    solutoreQR(A,b,n);



    cout<<"\n\n-Second requirement-\n\n";
    A << 5.547001962252291e-01, -5.540607316466765e-01, 8.320502943378437e-01, -8.324762492991313e-01;
    b << -6.394645785530173e-04, 4.259549612877223e-04;


    solutorePALU(A,b,n);
    cout<<"\n";
    solutoreQR(A,b,n);



    cout<<"\n\n-Third requirement-\n\n";
    A << 5.547001962252291e-01, -5.547001955851905e-01, 8.320502943378437e-01, -8.320502947645361e-01;
    b << -6.400391328043042e-10, 4.266924591433963e-10;

    solutorePALU(A,b,n);
    cout<<"\n";
    solutoreQR(A,b,n);

    return 0;
}
