clc;
clear ;
close all;

% Veriyi yükle
filename = 'survey lung cancer.csv';
data = readtable(filename);

% 'LUNG_CANCER' sütununda "YES" olanları 1, "NO" olanları 0 yap
data.LUNG_CANCER = string(data.LUNG_CANCER);
data.LUNG_CANCER(data.LUNG_CANCER == "YES") = "1";
data.LUNG_CANCER(data.LUNG_CANCER == "NO") = "0";

% 'LUNG_CANCER' sütununu double türüne dönüştür
data.LUNG_CANCER = str2double(data.LUNG_CANCER);

% Girdi verilerini ve çıktı verilerini ayır
girdi_verileri = table2array(data(:, {'AGE', 'SMOKING', 'YELLOW_FINGERS', 'ANXIETY', 'PEER_PRESSURE', 'CHRONICDISEASE', 'FATIGUE', 'ALLERGY', 'WHEEZING', 'ALCOHOLCONSUMING', 'COUGHING', 'SHORTNESSOFBREATH', 'SWALLOWINGDIFFICULTY', 'CHESTPAIN'}));
cikti_verileri = table2array(data(:, 'LUNG_CANCER'));

% Eğitim ve test verilerini ayır
cv = cvpartition(size(data, 1), 'HoldOut', 0.2);
idxTrain = training(cv);
girdi_verileri_egitim = girdi_verileri(idxTrain,:);
cikti_verileri_egitim = cikti_verileri(idxTrain,:);
girdi_verileri_test = girdi_verileri(~idxTrain,:);
cikti_verileri_test = cikti_verileri(~idxTrain,:);

% Eğitim verileriyle ağı oluştur ve eğit
net_egitim = feedforwardnet(10); % 10 gizli katman düğümü olan bir ağ oluştur
net_egitim = train(net_egitim, girdi_verileri_egitim.', cikti_verileri_egitim.');

% Test verileri ile tahmin yap
tahminler_test = net_egitim(girdi_verileri_test.');
gercekler_test = cikti_verileri_test.';
tahminler_test(tahminler_test >= 0.5) = 1;
tahminler_test(tahminler_test < 0.5) = 0;

% Karışıklık matrisi oluştur
confusionMat_test = confusionmat(gercekler_test, tahminler_test);
disp("Test Karışıklık Matrisi:");
disp(confusionMat_test);

% Karışıklık matrisini görselleştir
figure;
confusionchart(confusionMat_test);

% Doğruluk, hassasiyet ve özgüllük göster
accuracy_test = sum(diag(confusionMat_test)) / sum(confusionMat_test, 'all');
precision_test = confusionMat_test(2, 2) / sum(confusionMat_test(:, 2));
recall_test = confusionMat_test(2, 2) / sum(confusionMat_test(2, :));
disp("Test Doğruluk:");
disp(accuracy_test);
disp("Test Hassasiyet:");
disp(precision_test);
disp("Test Özgüllük:");
disp(recall_test);
