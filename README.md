# NTBiRW

1.Data
(1) microbe-disease association matrix: 
                                   292 microbes, 39 diseases and 450 associations

(2) disease semantic similarity: 
                            refer to (1) D. Wang, J. Wang, M. Lu, F. Song, and Q. Cui, “Inferring the human microRNA functional similarity and functional network based on microRNA 
                            associated diseases,” Bioinformatics, vol. 26, no. 13, pp.1644–1650, Jul, 2010, DOI: 10.1093/bioinformatics/btq241. 
                            (2)  P. Xuan et al., “Prediction of microRNAs associated with human diseases based on weighted k most similar neighbors,” PLoS One, vol.8, no. 8, pp. 
                            e702047, Aug, 2013, DOI: 10.1371/journal.pone.0070204.

(3) disease symptom similarity:
                           refer to (1) X. Zhou, J. Menche, A.-L. Barabsi, and A. Sharma, “Human symptoms-disease network,” Nat. Commun., vol. 5, pp. 4212, Jun, 2014, DOI: 
                           10.1038/ncomms5212.
                           (2) Y.-A. Huang et al., “Prediction of microbe-disease association from the integration of neighbor and graph with collaborative recommendation model,” J. 
                           Transl. Med., vol. 15, pp. 209, Oct, 2017, DOI: 10.1186/s12967-017-1304-7.

(4) microbe functional similarity:
                              refer to D. Wang, J. Wang, M. Lu, F. Song, and Q. Cui, “Inferring the human microRNA functional similarity and functional network based on microRNA- 
                              associated diseases,” Bioinformatics, vol. 26, no. 13, pp.1644–1650, Jul, 2010, DOI: 10.1093/bioinformatics/btq241.

(5) microbe similarity based on MEGA7 and BLAST+:
                                             refer to  Y.-A. Huang et al., “Precise Prediction of Pathogenic Microorganisms Using 16S rRNA Gene Sequences,” in ICIC 2019, 2019, pp. 
                                             138–150.

(6) microbe/disease GIP kernel similarity

2.Code
（1）fivefold.m
    This file is mainly an implementation of the NTBiRW algorithm with 5-fold cross validation, where similarity_BiRW is the similarity fusion method and WKNKN is the association 
    prediction method.
    This code is the main code, through which you can get the algorithm's 5-fold cross validation results, and through which you can also get the result matrix after the 
    association prediction.
（2）WKNKN.m
    This file is the code for the association prediction method.
