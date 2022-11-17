clear
clear clc

%data
load('D:\data\association.mat');
load('D:\data\disease_GIP.mat');
load('D:\data\disease_symptom.mat');
load('D:\data\disease_similarity_semantic_log_same.mat');
load('D:\data\microbe_GIP.mat');
load('D:\data\microbe_BLAST_MEGA7.mat');
load('D:\data\mms_semantic_log_same.mat');

A=association;

Wdd1=disease_similarity_semantic_log_same;
Wdd2=disease_symptom;
Wdd3=disease_GIP;

Wrr1=mms_semantic_log_same;
Wrr2=microbe_BLAST_MEGA7;
Wrr3=microbe_GIP;

A_ori=A;


auc = zeros(1,20);

%two-tier BiRW for similarity fusion
L1=1;L2=4;alpha1=0.1;alpha2=0.8;
[Rtm,Rtd]=similarity_BiRW(Wrr1,Wrr2,Wrr3,Wdd1,Wdd2,Wdd3,L1,L2,alpha1,alpha2);

%WKNKN for association prediction
K=10;r=0.9;
F_1_ori=WKNKN( A,Rtm, Rtd,K,r); 

%5-fold cross validation
F_1_ori_ori=F_1_ori;
index=find(A_ori==1);

for i = 1:20
    i
    indices = crossvalind('Kfold', length(index), 5);
    A = A_ori;
    F_1_ori=F_1_ori_ori;
    
    for cv = 1:5
        cv;
        index_2 = find(cv == indices);
        
        A(index(index_2)) = 0;
       
        F_1=WKNKN( A, Rtm, Rtd,K, r); 
       
        F_1_ori(index(index_2)) = F_1(index(index_2));
        A = A_ori;
    end
   
    pre_label_score = F_1_ori(:);
    label_y = A_ori(:);
    auc(i) = roc_1(pre_label_score,label_y,'red');
        aupr(i) = AUPR(label_y,pre_label_score);
    
end
auc_ave = mean(auc);
auc_std = std(auc);


