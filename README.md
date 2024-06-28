
# Akciğer Kanseri Tahmini Yapay Sinir Ağı Modeli Raporu

1.Giriş
Bu çalışma, akciğer kanseri teşhisi için veri madenciliği tekniklerinin kullanımıyla bir sınıflandırma modeli geliştirmeyi amaçlamaktadır. Veri seti, Akciğer Kanseri Veri Seti'nden alınmış ve klinik özellikler içermektedir. Bu özellikler arasında yaş, sigara içme alışkanlığı, sarı parmaklar, endişe düzeyi, sosyal baskı, kronik hastalık geçmişi, yorgunluk, alerji, hırıltı, alkol tüketimi, öksürük, nefes darlığı, yutma zorluğu ve göğüs ağrısı gibi faktörler bulunmaktadır.
Veri seti, ilk olarak eksik veri işleme adımları ve kategorik değişkenlerin dönüştürülmesiyle hazırlanmıştır. Ardından, veri seti eğitim ve test alt kümelerine ayrılmıştır. Eğitim verileri, modelin öğrenmesi için kullanılmış ve test verileri ise modelin performansının değerlendirilmesinde kullanılmıştır.
Bu çalışmada, feedforward yapay sinir ağı (feedforward neural network) algoritması kullanılarak bir sınıflandırma modeli eğitilmiştir. Modelin eğitim doğruluğu ve test doğruluğu ölçülmüş, ayrıca sınıflandırma raporu ve karışıklık matrisi kullanılarak modelin performansı analiz edilmiştir. Sonuçlar, akciğer kanseri teşhisinde veri madenciliği tekniklerinin etkili bir şekilde kullanılabileceğini ve geliştirilen modelin klinik uygulamalarda önemli bir araç olabileceğini göstermektedir.

2.Projenin Amacı
Bu proje, akciğer kanseri teşhisi için yapay sinir ağı (YSA) modeli geliştirerek hastalığın erken teşhisinde ve tedavisinde kullanılabilecek bir araç sağlamayı amaçlamaktadır. Akciğer kanseri dünya genelinde önemli bir sağlık sorunudur ve erken teşhis edilmesi, hastalığın etkilerini azaltmada kritik bir rol oynar.
Projede belirlenen hedefler şunlardır:
Akciğer Kanseri Tanısı İçin YSA Modeli Geliştirmek: Model, klinik verileri, hasta geçmişi bilgilerini, laboratuvar sonuçlarını ve görüntüleme verilerini kullanarak akciğer kanseri tanısı koymada yardımcı olacak bir sınıflandırma modeli oluşturmayı amaçlamaktadır. Bu model, hastaların kanser olma olasılıklarını tahmin etmek ve doğru teşhis koymak için kullanılacaktır.
YSA Modelinin Performansını Değerlendirmek: Model, farklı veri setleri üzerinde test edilerek doğruluk, hassasiyet, özgüllük ve diğer performans ölçütleriyle değerlendirilecektir. Bu değerlendirme süreci, modelin genel etkinliğini belirlemek ve iyileştirme fırsatları tanımlamak için kullanılacaktır.
Klinik Uygulamada YSA Modelinin Kullanımını Araştırmak: Modelin klinik ortamlarda kullanılabilirliği ve kullanım kolaylığı değerlendirilecektir. Ayrıca, modelin hasta bakım süreçlerine ve tedavi planlamasına nasıl entegre edilebileceği araştırılacaktır.
Akciğer Kanseri Tedavisinde YSA Modelinin Rolünü İncelemek: Modelin, tedavi planlamasında, ilaç seçiminde veya cerrahi müdahale kararlarında ne şekilde kullanılabileceği üzerine araştırmalar yapılacaktır. Bu, hastaların tedavi sonuçlarını iyileştirmek için modelin nasıl kullanılabileceğini anlamak için önemlidir.
Bu proje, akciğer kanseri teşhisi ve tedavisinde yapay zeka tekniklerinin kullanımının etkinliğini değerlendirmeyi ve hastaların yaşam kalitesini artırmayı hedeflemektedir.
3.Kullanılan Veriler
Bu proje kapsamında kullanılan veriler, akciğer kanseri teşhisinde potansiyel risk faktörlerini incelemek amacıyla toplanmıştır. Veri seti, aşağıdaki değişkenleri içermektedir:
GENDER: Cinsiyet bilgisini temsil eder. 'M' erkek, 'F' ise kadın demektir.
AGE: Katılımcıların yaş bilgisini içerir. Yaş, akciğer kanseri riskini etkileyen önemli bir faktördür.
SMOKING: Sigara içme alışkanlığını gösterir. '1' sigara içenleri, '2' içmeyenleri ifade eder.
YELLOW_FINGERS: Sararmış parmaklara sahip olma durumunu temsil eder. '1' sarı parmakları olanları, '2' olmayanları ifade eder.
ANXIETY: Kaygı düzeyini gösterir. '1' düşük, '2' yüksek kaygı düzeyini ifade eder.
PEER_PRESSURE: Akran baskısını temsil eder. '1' düşük, '2' yüksek akran baskısını ifade eder.
CHRONIC DISEASE: Kronik hastalık geçmişini ifade eder. '1' kronik hastalığı olanları, '2' olmayanları temsil eder.
FATIGUE: Yorgunluk seviyesini gösterir. '1' düşük, '2' yüksek yorgunluk seviyesini ifade eder.
ALLERGY: Alerji durumunu temsil eder. '1' alerjisi olanları, '2' olmayanları ifade eder.
WHEEZING: Hırıltılı solunum durumunu ifade eder. '1' hırıltılı solunumu olanları, '2' olmayanları temsil eder.
ALCOHOL CONSUMING: Alkol tüketim alışkanlığını gösterir. '1' alkol tüketenleri, '2' tüketmeyenleri ifade eder.
COUGHING: Öksürük durumunu temsil eder. '1' öksürenleri, '2' öksürmeyenleri ifade eder.
SHORTNESS OF BREATH: Nefes darlığı durumunu ifade eder. '1' nefes darlığı yaşayanları, '2' yaşamayanları temsil eder.
SWALLOWING DIFFICULTY: Yutma zorluğunu temsil eder. '1' zorlananları, '2' zorlanmayanları ifade eder.
CHEST PAIN: Göğüs ağrısı durumunu gösterir. '1' göğüs ağrısı yaşayanları, '2' yaşamayanları temsil eder.
LUNG_CANCER: Akciğer kanseri teşhisini ifade eder. 'YES' akciğer kanseri olanları, 'NO' olmayanları temsil eder.
Bu veriler, akciğer kanseri teşhisini etkileyen çeşitli faktörleri analiz etmek ve potansiyel risk faktörlerini belirlemek için kullanılmıştır.



4.Yapay Sinir Ağı Modeli Açıklaması
Bu model, akciğer kanseri teşhisi için kullanılan verilerle eğitilmiş bir yapay sinir ağıdır. Ağı oluşturmak ve eğitmek için aşağıdaki adımlar izlenmiştir:
Veri Yükleme ve Ön İşleme: İlk adımda, 'survey lung cancer.csv' adlı dosya okunmuş ve veriler bir tablo haline getirilmiştir. 'LUNG_CANCER' sütunundaki "YES" ve "NO" değerleri 1 ve 0'a dönüştürülmüştür.
Girdi ve Çıktı Verilerinin Ayırılması: Veriler, girdi ve çıktı verileri olarak ayrılmıştır. Girdi verileri, yaş, sigara içme alışkanlığı, sarı parmaklar, kaygı düzeyi, akran baskısı, kronik hastalık geçmişi, yorgunluk seviyesi, alerji durumu, hırıltılı solunum, alkol tüketim alışkanlığı, öksürük, nefes darlığı, yutma zorluğu ve göğüs ağrısı gibi faktörleri içerirken, çıktı verisi akciğer kanseri teşhisini içerir.
Eğitim ve Test Verilerinin Ayrılması: Veriler, %80 eğitim ve %20 test verisi olarak ayrılmıştır. Bu, ağın eğitim verileriyle öğrenmesini ve test verileriyle doğrulamasını sağlar.
Yapay Sinir Ağı Oluşturma ve Eğitme: Model, 10 gizli katman düğümüne sahip bir yapay sinir ağı olarak oluşturulmuştur. Ardından, eğitim verileriyle ağ eğitilmiş ve akciğer kanseri teşhisinde doğru tahminler yapabilmesi için öğrenmiştir.
Test ve Performans Değerlendirmesi: Eğitilen model, test verileriyle değerlendirilmiştir. Bu değerlendirme sürecinde, modelin doğruluk, hassasiyet ve özgüllük gibi performans ölçütleri hesaplanmıştır.
Sonuç olarak, bu yapay sinir ağı modeli, veri madenciliği tekniklerini kullanarak akciğer kanseri teşhisinde değerli bir araç olarak kullanılmaktadır. Modelin performansı, test verileri üzerinde elde edilen sonuçlarla değerlendirilmiş ve akciğer kanseri teşhisinde doğruluk sağlaması hedeflenmiştir.
5. Proje Süreci A-)Veri Toplama ve Hazırlığı: 
İlk adım olarak, Akciğer Kanseri hastalığı ile ilişkilendirilmiş çeşitli klinik özellikleri içeren bir veri seti toplanmıştır. Bu veri seti, projenin amacına uygun olarak, hastaların cinsiyeti, yaşları, sigara içme alışkanlıkları ve nefes darlığı durumunu gibi çeşitli özellikleri içermektedir. 
Veri seti, "survey lung cancer.csv" adlı bir dosyadan yüklenmiştir. Veri setindeki eksik veya anormal değerler temizlenmiş ve verilerin analize uygun hale getirilmesi için ön işleme adımları uygulanmıştır. 
B-)Veri Keşfi: 
Veri setinin yapısı, dağılımı ve ilişkileri keşfedilmiş. Bu adım, veri setindeki önemli özellikleri belirlemek ve modelin geliştirilmesi için temel sağlamak amacıyla gerçekleştirilmiştir. 
C-)Veri Ön İşleme: 
Veri seti, model eğitimine uygun hale getirilmiştir. Kategorik veriler sayısallaştırılmış, girdi verileri normalize edilmiş ve gerektiğinde özellikler arasında dönüşümler yapılmıştır (Örn. LUNG_CANCER sütunu ‘YES’ ve ‘NO’ olan satırların 1 ve 0 a çevrilmesi.) 
Bu adım, modelin daha iyi performans göstermesini sağlamak için gerçekleştirilmiştir.
D-)Model Oluşturma ve Eğitimi:
Yapay sinir ağı (YSA) modeli, "feedforwardnet" fonksiyonu kullanılarak MATLAB ortamında oluşturulmuştur. Modelin mimarisi, giriş katmanında 15 özellik bulunan, iki gizli katmanda sırasıyla 10 ve 20 nöron, ve çıkış katmanında bir nöron içeren bir yapıya sahiptir. Aktivasyon fonksiyonu olarak her katmanda "tansig" kullanılmıştır.
Model, eğitim verileri üzerinde eğitilmiştir. Eğitim için Levenberg-Marquardt geri yayılım (trainlm) algoritması kullanılmıştır. Eğitim dönemi sayısı (epoch) olarak 50 belirlenmiştir ve eğitim sırasında ağın performansı takip edilmiştir.
Eğitim sonrasında elde edilen model, hem eğitim seti hem de ayrılmış olan test seti üzerinde performansı değerlendirilmiştir. Modelin doğruluğu, hassasiyeti ve özgüllüğü değerlendirilerek performansı analiz edilmiştir.
E-)Modelin Değerlendirilmesi:
Eğitim sonrasında oluşturulan yapay sinir ağı modelinin performansı çeşitli metrikler kullanılarak değerlendirilmiştir. Bu değerlendirme aşamasında aşağıdaki adımlar takip edilmiştir:
Doğruluk (Accuracy) Değerlendirmesi: Modelin doğruluk oranı, test seti üzerinde yapılan tahminlerin doğruluğu olarak hesaplanmıştır. Doğruluk, doğru sınıflandırılan örneklerin toplam örnek sayısına oranı olarak ifade edilmiştir.
Hassasiyet (Precision) Değerlendirmesi: Modelin pozitif olarak tahmin ettiği örneklerin gerçekten pozitif olma oranı olarak tanımlanan hassasiyet, özellikle hastalık teşhisi gibi durumlarda önemli bir metriktir. Hassasiyet, gerçek pozitif (TP) değerlerinin toplam pozitif (TP + FP) değerlerine oranıdır.
Özgüllük (Recall) Değerlendirmesi: Özgüllük, gerçek pozitif (TP) değerlerinin toplam gerçek pozitif ve yanlış negatif (FN) değerlerine oranıdır. Özgüllük, modelin gerçek negatif (TN) tahminlerindeki başarısını ölçer.
Karışıklık Matrisi (Confusion Matrix): Modelin sınıflandırma performansını daha detaylı incelemek için karışıklık matrisi kullanılmıştır. Bu matris, gerçek ve tahmin edilen sınıflar arasındaki ilişkiyi görsel olarak sunar. Karışıklık matrisi, doğru ve yanlış sınıflandırılan örnekleri görselleştirerek modelin performansını daha iyi anlamamızı sağlar.
Bu değerlendirme adımlarıyla modelin başarıları, zayıf noktaları ve iyileştirme alanları analiz edilmiştir. Modelin genel performansı ve kullanılabilirliği projenin hedeflerine ne kadar başarıyla ulaştığını belirlemede önemli bir rol oynamıştır.
F-)Sonuçların Analizi: 
Modelin performansı, elde edilen sonuçlar analiz edilerek yorumlanmıştır. Modelin başarıları, eksiklikleri ve iyileştirme alanları tartışılmış ve projenin hedeflerine ne kadar başarılı bir şekilde ulaşıldığı değerlendirilmiştir. 

6.Sonuçlar ve Tartışma
Yapay sinir ağı modelimizin test verileri üzerindeki performansını değerlendirdik. Test karışıklık matrisine baktığımızda:

Test Karışıklık Matrisi:
     2     4
     2    53

Modelimiz, 2 akciğer kanseri olmayan hastayı yanlışlıkla kanserli olarak tahmin ederken, 4 kanserli hastayı akciğer kanseri olmayan olarak yanlış tahmin etmiştir. Bu durum, modelimizin belirli bir kesinlikle hastalığı teşhis edemediğini göstermektedir.
Performans metriklerine bakarak:
Test doğruluğu (%90.16) oldukça yüksek ve modelimizin genel olarak doğru tahminler yaptığını gösteriyor.
Test hassasiyeti (%92.98) modelin kanserli hastaları doğru bir şekilde tanıma yeteneğini gösterir.
Test özgüllüğü (%96.36) ise modelin akciğer kanseri olmayan hastaları doğru bir şekilde tanıma yeteneğini ifade eder.
Sonuçlarımız, modelimizin genel olarak başarılı olduğunu ancak belirli bir hata yapma eğilimi gösterdiğini ortaya koymaktadır. Modelin belirli durumlarda hatalı tahminler yapabildiğini ve bu nedenle klinik uygulamada kullanılmadan önce daha fazla test ve değerlendirme gerektirdiğini göstermektedir.
Ayrıca, modelin geliştirilmesi için kullanılan veri setinin kalitesi ve çeşitliliği de dikkate alınmalıdır. Daha geniş ve çeşitli veri setleri üzerinde modelin test edilmesi, modelin daha güvenilir ve genelleme yeteneği daha yüksek olmasını sağlayabilir.
Bu sonuçlar, akciğer kanseri teşhisinde yapay sinir ağı modellerinin potansiyelini gösterirken, modelin gerçek dünya uygulamalarında kullanılmadan önce daha fazla geliştirilmesi ve test edilmesi gerektiğini vurgulamaktadır.
7. Kullanılan Kaynaklar 
Proje sürecinde, yapay sinir ağları, makine öğrenimi ve Akciğer kanseri hastalığı ile ilgili literatürden yararlanılmıştır. Kullanılan kaynaklar arasında akademik makaleler, çevrimiçi kaynaklar ve yapay zeka araçları bulunmaktadır. 
