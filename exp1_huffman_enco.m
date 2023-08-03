clc,clear

pkg load communications
x=input("Enter the number of symbols: ");
N = 1:x;
disp("The number of symbols are n: ");
disp(N);

P =input("Enter the probabilities = ");
disp("The probabiliteis are: ");
disp(P);
S = sort(P,'descend');
disp('The sorted probabiliteis are : ');
disp(S);
dict = huffmandict(N,S);
avglen=0;
for i=1:length(S)
  avglen = avglen + S(i) * length(dict{i});
  end
disp("the average length of code is ");
disp(avglen);
H=0;
for i=1:x
  H = H + (P(i) * log2(1/P(i)));
end

disp("Entropy is");
disp(H);
disp('bits/msg');
E = (H/avglen) * 100;
disp('Efficiency is: ');
disp(E);
codeword = huffmanenco(N,dict);
disp("The codewords are:")
disp(codeword);
decode=huffmandeco(codeword,dict);
disp("decoded output is : ");
disp(decode)

