/*********************************************
 * OPL 20.1.0.0 Model
 * Author: Hüseyin Þahan
 * Creation Date: Dec 10, 2021 at 6:11:34 PM
 *********************************************/

 
 int nT = ...;
 int ni = ...;
 int nj = ...;
 int nST = ...;
 
 
 range T = 2..nT;
 range I = 1..ni;
 range J = 1..nj;
 range ST = 1..nST;
 
dvar boolean X[I][J][ST];


minimize sum(i in I, j in J, t in T) X[i][j][t];

subject to{
  /*1*/  forall(t in T) X[3][1][t] <= X[3][3][t+1] + X[3][3][t-1];
  /*2*/  X[2][2][2] + X[2][2][6] == 1;
  /*3*/  forall(t in T) X[1][1][t] <= X[5][4][t+1] + X[5][4][t+2] + X[5][4][t+3] + X[5][4][t+4];
  /*4*/  forall(t in T) X[6][1][t] <= X[6][2][t+1] + X[6][2][t-1];
  /*5*/  forall(t in T) X[2][3][t] == X[4][4][t];
  /*6*/  forall(t in T) X[1][4][t] <= X[6][4][t+1] + X[6][4][t+2] +X[6][4][t+3] + X[6][4][t+4];
  /*7*/  forall(t in T) X[4][5][t] == X[5][2][t]; 
  /*8*/  forall(t in T) X[2][2][t] <= X[2][5][t-1] + X[2][5][t+1];
  /*9*/  forall(t in T) X[4][3][t] == X[4][2][t+1];
  /*10*/ X[5][1][6] + X[5][1][2] == 0;
  		 forall(t in T) X[3][5][t] <= X[5][1][t+1] + X[5][1][t+2] + X[5][1][t+3];
  		 forall(t in T) X[5][1][t] <= X[5][4][t+1] + X[5][4][t+2] + X[5][4][t+3];
  /*11*/ X[2][3][6] + X[2][3][2] == 1;
  /*12*/ forall(t in T) X[1][3][t] <= X[1][4][t+1] + X[1][4][t+2] + X[1][4][t+3] + X[1][4][t+4];
  /*13*/ forall(t in T) X[3][3][t] == X[5][3][t];
  /*14*/ forall(t in T) X[4][1][t] <= X[4][2][t-1] + X[4][2][t+1];
  /*15*/ forall(t in T) X[3][2][t] <= X[3][1][t+1];
  /*16*/ forall(t in T) X[1][4][t] <= X[2][4][t+1] + X[2][4][t+2] + X[2][4][t+3] + X[2][4][t+4];
  /*17*/ X[1][3][1] + X[1][3][5] == 0;
  		 forall(t in T) X[6][1][t] <= X[1][3][t+1] + X[1][3][t+2] + X[1][3][t+3];
  		 forall(t in T) X[1][3][t] <= X[1][5][t+1] + X[1][5][t+2] + X[1][5][t+3];
  /*18*/ X[5][2][2] + X[5][2][6] == 1;
  /*19*/ forall(t in T) X[3][5][t] == X[4][3][t];
  /*20*/ X[6][4][6] + X[6][4][2] == 0;
  		 forall(t in T) X[6][1][t] <= X[6][4][t+1] + X[6][4][t+2] + X[6][4][t+3];
  		 forall(t in T) X[6][4][t] <= X[6][3][t+1] + X[6][3][t+2] + X[6][3][t+3];
  /*21*/ forall(t in T) X[1][2][t] <= X[1][5][t+1] + X[1][5][t+2] + X[1][5][t+3] + X[1][5][t+4];  
  /*22*/ forall(t in T) X[3][2][t] <= X[4][1][t-1] + X[4][1][t+1];
  /*Restriction*/ forall(i in I, t in T) sum(j in J) X[i][j][t] == 1;
				  forall(i in I, j in J) sum(t in T) X[i][j][t] == 1;
  /*remainings*/ forall(i in I, j in J) X[i][j][1] + X[i][j][7] + X[i][j][8] + X[i][j][9] + X[i][j][10] == 0; 
  
}
 
 
 
