;; ===============================
;; Templates
;; ===============================
(deftemplate new-case
    (multislot symptoms)
    (slot age)
    (slot hr)
    (slot rr)
    (slot spo2)
    (slot pain-scale))

(deftemplate decision-point-a
    (slot case-id)
    (multislot symptoms)
    (slot requires-immediate-lifesaving-intervention (default false)))

(deftemplate decision-point-b-1
    (slot case-id)
    (multislot symptoms)
    (slot high-risk (default false)))

(deftemplate decision-point-b-2
    (slot case-id)
    (multislot symptoms)
    (slot confused-lethargic-disoriented (default false)))

(deftemplate decision-point-b-3
    (slot case-id)
    (multislot symptoms)
    (slot severe-pain (default false)))

(deftemplate decision-point-c
    (slot case-id)
    (multislot symptoms)
    (multislot resources))

(deftemplate decision-result
    (slot point-a (default unchecked))
    (slot point-b1 (default unchecked))
    (slot point-b2 (default unchecked))
    (slot point-b3 (default unchecked))
    (slot point-c (default unchecked))
    (slot point-d (default unchecked))
    (slot final-decision (default "Level-3")))

(deftemplate match-result
    (slot case-id)
    (multislot symptoms)
    (slot matched-count)
    (slot label)
    (multislot resources)
    (slot template))

;; ===============================
;; Facts Database
;; ===============================
(deffacts cases
    ;; Point A cases
    (decision-point-a (case-id A-1) (symptoms "sesak napas" "kebiruan" "sumbatan jalan napas") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-2) (symptoms "sumbatan jalan napas" "kebiruan" "napas cepat") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-3) (symptoms "nyeri dada" "berdebar-debar" "sesak napas") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-4) (symptoms "hilang kesadaran" "henti napas" "suara serak") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-5) (symptoms "muntah darah" "pendarahan masif" "pucat") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-6) (symptoms "perdarahan vagina" "nyeri perut" "hilang kesadaran") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-7) (symptoms "pingsan" "gerakan terbatas" "gerakan tidak teratur") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-8) (symptoms "sakit kepala" "muntah" "pandangan kabur" "leher kaku") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-9) (symptoms "batuk darah" "sesak napas" "kebiruan") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-10) (symptoms "demam" "muntah" "hilang kesadaran" "tubuh lemas") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-11) (symptoms "kulit melepuh" "luka bakar" "nyeri kulit") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-12) (symptoms "cedera kepala" "gangguan bicara" "lumpuh" "pusing") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-13) (symptoms "perdarahan spontan" "pucat" "kelemahan ekstrem" "berdebar-debar") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-14) (symptoms "nyeri pinggang" "hematuria" "bengkak") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-15) (symptoms "cedera perut" "perdarahan" "nadi lemah" "pucat") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-16) (symptoms "jantung berdebar" "sesak napas" "nyeri dada") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-17) (symptoms "luka tusuk" "perdarahan" "hilang kesadaran") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-18) (symptoms "kaki bengkak" "nyeri dada" "sesak napas" "pucat") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-19) (symptoms "kejang demam" "tubuh kaku" "hilang kesadaran" "muntah") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-20) (symptoms "berkeringat banyak" "pusing" "hilang kesadaran") (requires-immediate-lifesaving-intervention true))
    (decision-point-a (case-id A-21) (symptoms "sakit kepala" "pusing" "mata lelah") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-22) (symptoms "nyeri pinggang" "nyeri perut" "perut kembung") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-23) (symptoms "mata merah" "mata gatal" "mata berair") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-24) (symptoms "nyeri telinga" "keluar cairan telinga" "pendengaran menurun") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-25) (symptoms "bibir pecah-pecah" "mulut kering" "sulit menelan") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-26) (symptoms "nyeri ulu hati" "perut kembung" "sering bersendawa") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-27) (symptoms "sering BAK" "nyeri saat BAK" "pancaran kencing menurun") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-28) (symptoms "kulit kering" "kulit gatal" "kulit bersisik") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-29) (symptoms "tremor" "berkeringat banyak" "tubuh lemas") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-30) (symptoms "bintitan kelopak mata" "penglihatan kabur" "mata merah") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-31) (symptoms "gangguan tidur" "stres" "mudah marah") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-32) (symptoms "pilek" "bersin" "hidung tersumbat") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-33) (symptoms "kulit lecet" "nyeri kulit" "bengkak ringan") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-34) (symptoms "bengkak pada kaki" "varises" "nyeri ringan") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-35) (symptoms "kulit berubah warna" "kulit gatal" "kulit bersisik") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-36) (symptoms "BAK tidak puas" "pancaran kencing menurun" "nyeri saat BAK") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-37) (symptoms "gusi bengkak" "sakit gigi" "bau mulut") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-38) (symptoms "nyeri punggung" "gangguan jalan" "kaku otot") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-39) (symptoms "gangguan sendi" "nyeri otot" "gerakan terbatas") (requires-immediate-lifesaving-intervention false))
    (decision-point-a (case-id A-40) (symptoms "demam" "lemas" "sakit tenggorokan" "nyeri sendi") (requires-immediate-lifesaving-intervention false))
    
    ;; Point B1 cases
    (decision-point-b-1 (case-id B1-1) (symptoms "nyeri dada" "berkeringat banyak" "sesak napas") (high-risk true))
    (decision-point-b-1 (case-id B1-2) (symptoms "wajah kaku" "gangguan bicara" "lumpuh") (high-risk true))
    (decision-point-b-1 (case-id B1-3) (symptoms "nyeri perut" "muntah darah" "pucat") (high-risk true))
    (decision-point-b-1 (case-id B1-4) (symptoms "gangguan imunitas" "demam tinggi" "demam ringan") (high-risk true))
    (decision-point-b-1 (case-id B1-5) (symptoms "penerima transplantasi" "demam" "infeksi (demam, nyeri)") (high-risk true))
    (decision-point-b-1 (case-id B1-6) (symptoms "sesak napas" "kebiruan") (high-risk true))
    (decision-point-b-1 (case-id B1-7) (symptoms "pascapersalinan" "perdarahan hebat" "pucat" "pusing" "berkeringat banyak") (high-risk true))
    (decision-point-b-1 (case-id B1-8) (symptoms "ide bunuh diri" "perilaku agresif" "gangguan bicara") (high-risk true))
    (decision-point-b-1 (case-id B1-9) (symptoms "korban kekerasan seksual" "stres berat" "menangis") (high-risk true))
    (decision-point-b-1 (case-id B1-10) (symptoms "cedera kepala" "muntah" "sakit kepala") (high-risk true))
    (decision-point-b-1 (case-id B1-11) (symptoms "hipertensi berat" "sakit kepala" "penglihatan kabur" "pusing") (high-risk true))
    (decision-point-b-1 (case-id B1-12) (symptoms "detak jantung cepat" "hipotensi" "nyeri perut hebat") (high-risk true))
    (decision-point-b-1 (case-id B1-13) (symptoms "luka bakar" "kulit melepuh" "nyeri hebat") (high-risk true))
    (decision-point-b-1 (case-id B1-14) (symptoms "terkena jarum suntik" "demam ringan" "nyeri otot") (high-risk true))
    (decision-point-b-1 (case-id B1-15) (symptoms "sakit kepala" "kaku leher" "demam tinggi") (high-risk true))
    (decision-point-b-1 (case-id B1-16) (symptoms "jatuh dari ketinggian" "nyeri panggul" "gangguan jalan") (high-risk true))
    (decision-point-b-1 (case-id B1-17) (symptoms "paparan bahan kimia" "gangguan pernapasan" "mata berair") (high-risk true))
    (decision-point-b-1 (case-id B1-18) (symptoms "riwayat jantung" "nyeri dada" "berkeringat banyak" "mual") (high-risk true))
    (decision-point-b-1 (case-id B1-19) (symptoms "anak-anak" "kejang" "demam" "menangis lemah") (high-risk true))
    (decision-point-b-1 (case-id B1-20) (symptoms "lansia" "tanda vital tidak stabil" "kebingungan" "lemas") (high-risk true))
    (decision-point-b-1 (case-id B1-21) (symptoms "demam ringan" "pilek" "sakit kepala") (high-risk false))
    (decision-point-b-1 (case-id B1-22) (symptoms "luka kecil" "perdarahan ringan" "nyeri ringan") (high-risk false))
    (decision-point-b-1 (case-id B1-23) (symptoms "nyeri perut ringan" "muntah" "tidak nyaman" "mual") (high-risk false))
    (decision-point-b-1 (case-id B1-24) (symptoms "luka bakar" "kulit kemerahan" "nyeri ringan") (high-risk false))
    (decision-point-b-1 (case-id B1-25) (symptoms "sakit kepala" "kelelahan" "tegang") (high-risk false))
    (decision-point-b-1 (case-id B1-26) (symptoms "alergi ringan" "ruam kulit" "gatal") (high-risk false))
    (decision-point-b-1 (case-id B1-27) (symptoms "pergelangan kaki terkilir" "nyeri ringan" "bengkak") (high-risk false))
    (decision-point-b-1 (case-id B1-28) (symptoms "sakit telinga ringan" "telinga terasa penuh" "tidak nyaman" "nyeri ringan") (high-risk false))
    (decision-point-b-1 (case-id B1-29) (symptoms "sakit tenggorokan" "batuk ringan" "suara serak") (high-risk false))
    (decision-point-b-1 (case-id B1-30) (symptoms "pascapersalinan" "kelelahan ringan" "pusing") (high-risk false))
    (decision-point-b-1 (case-id B1-31) (symptoms "memar kecil" "bengkak ringan" "nyeri tekan") (high-risk false))
    (decision-point-b-1 (case-id B1-32) (symptoms "nyeri punggung" "tidak nyaman" "kaku otot") (high-risk false))
    (decision-point-b-1 (case-id B1-33) (symptoms "hidung tersumbat" "bersin-bersin" "pilek") (high-risk false))
    (decision-point-b-1 (case-id B1-34) (symptoms "diare ringan" "kram perut" "muntah ringan") (high-risk false))
    (decision-point-b-1 (case-id B1-35) (symptoms "demam ringan" "sakit kepala" "tubuh pegal") (high-risk false))
    (decision-point-b-1 (case-id B1-36) (symptoms "sakit gigi" "nyeri ringan" "sulit mengunyah") (high-risk false))
    (decision-point-b-1 (case-id B1-37) (symptoms "ruam kulit" "gatal" "kulit kemerahan") (high-risk false))
    (decision-point-b-1 (case-id B1-38) (symptoms "nyeri otot" "lelah" "pegal") (high-risk false))
    (decision-point-b-1 (case-id B1-39) (symptoms "kelelahan" "sakit kepala" "nyeri punggung") (high-risk false))
    (decision-point-b-1 (case-id B1-40) (symptoms "nyeri sinus ringan" "tekanan wajah" "hidung tersumbat") (high-risk false))
    
    ;; Point B2 cases
    (decision-point-b-2 (case-id B2-1) (symptoms "demam" "pucat" "tangan kaki dingin") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-2) (symptoms "cedera kepala" "muntah" "kehilangan kesadaran") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-3) (symptoms "demam" "kulit berubah warna" "penurunan fungsi berpikir") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-4) (symptoms "hipoglikemia" "gemetar (tremor)" "berkeringat banyak" "bingung") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-5) (symptoms "sepsis" "demam" "kulit dingin" "gerakan lambat") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-6) (symptoms "keracunan alkohol" "berjalan tidak stabil" "gangguan bicara") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-7) (symptoms "heatstroke" "demam" "bingung" "sakit kepala") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-8) (symptoms "hipotermia" "menggigil" "denyut melambat" "pucat") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-9) (symptoms "dehidrasi" "mulut kering" "kelemahan") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-10) (symptoms "kejang" "kelemahan otot" "gerakan lambat") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-11) (symptoms "hipoglikemia" "kulit berkeringat" "kelelahan") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-12) (symptoms "lansia" "demam" "gerakan lambat" "mengantuk") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-13) (symptoms "infeksi berat" "nafsu makan hilang" "kelelahan") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-14) (symptoms "anemia" "pucat" "mudah lelah" "napas pendek") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-15) (symptoms "cedera kepala" "sakit kepala" "muntah" "bingung") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-16) (symptoms "hipoksia" "kebiruan" "sesak napas" "bingung") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-17) (symptoms "overdosis obat" "pupil membesar" "napas tidak teratur") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-18) (symptoms "ketidakseimbangan elektrolit" "kram otot" "disorientasi") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-19) (symptoms "pascatrauma" "muntah" "sulit fokus" "bingung") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-20) (symptoms "stroke ringan" "wajah kaku" "gangguan bicara" "disorientasi") (confused-lethargic-disoriented true))
    (decision-point-b-2 (case-id B2-21) (symptoms "demam" "batuk ringan" "hidung tersumbat") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-22) (symptoms "luka kecil" "bengkak ringan" "nyeri tekan") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-23) (symptoms "nyeri sinus ringan" "tekanan wajah" "mata berair") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-24) (symptoms "alergi ringan" "kulit gatal" "ruam kulit") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-25) (symptoms "nyeri otot" "lelah fisik" "bengkak ringan") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-26) (symptoms "terkilir" "nyeri tekan" "bengkak ringan") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-27) (symptoms "dehidrasi" "mulut kering" "pusing" "lemas") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-28) (symptoms "nyeri punggung" "rasa tidak nyaman" "lelah") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-29) (symptoms "sakit gigi" "nyeri tumpul" "gangguan tidur") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-30) (symptoms "luka bakar" "kulit berubah warna" "nyeri ringan") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-31) (symptoms "bengkak ringan" "nyeri ringan" "memar kecil") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-32) (symptoms "kelelahan" "sulit fokus" "mata berat") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-33) (symptoms "sakit tenggorokan" "batuk ringan" "demam") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-34) (symptoms "sakit perut ringan" "mual" "muntah ringan") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-35) (symptoms "kulit kering" "kulit gatal" "rasa tidak nyaman") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-36) (symptoms "mata merah" "kulit gatal" "mata berair") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-37) (symptoms "nyeri telinga" "rasa tidak nyaman" "berdenging") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-38) (symptoms "bibir pecah-pecah" "nyeri ringan" "dehidrasi") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-39) (symptoms "cegukan" "perut kembung" "mual") (confused-lethargic-disoriented false))
    (decision-point-b-2 (case-id B2-40) (symptoms "sakit kepala" "kelelahan" "pegal di badan") (confused-lethargic-disoriented false))

    ;; Point C cases
    (decision-point-c (symptoms "nyeri kepala" "pusing") (resources))
    (decision-point-c (symptoms "bersin-bersin" "hidung tersumbat" "pilek" "suara sengau") (resources))
    (decision-point-c (symptoms "nyeri tenggorokan" "suara serak" "batuk" "sulit menelan") (resources))
    (decision-point-c (symptoms "mata gatal" "mata merah" "keluar air mata" "penglihatan kabur") (resources))
    (decision-point-c (symptoms "kulit kering" "gatal-gatal" "kulit bersisik") (resources))
    (decision-point-c (symptoms "bibir pecah-pecah" "mulut kering") (resources))
    (decision-point-c (symptoms "kelelahan" "nyeri sendi") (resources))
    (decision-point-c (symptoms "nyeri punggung" "lemas") (resources))
    (decision-point-c (symptoms "gusi bengkak" "nyeri gigi" "bau mulut") (resources))
    (decision-point-c (symptoms "mata kering" "mata lelah" "penglihatan kabur") (resources))
    (decision-point-c (symptoms "nyeri ulu hati" "perut kembung" "sering bersendawa") (resources))
    (decision-point-c (symptoms "penurunan kesadaran" "bicara ngelantur" "lemas") (resources "glucose blood test"))
    (decision-point-c (symptoms "gangguan bicara" "wajah kaku satu sisi" "pusing") (resources))
    (decision-point-c (symptoms "nyeri pada kuku" "kuku bernanah" "sekitar kuku bengkak") (resources))
    (decision-point-c (symptoms "bengkak pada pipi" "demam") (resources))
    (decision-point-c (symptoms "demam" "batuk" "pilek" "nyeri otot") (resources))
    (decision-point-c (symptoms "telinga gatal" "telinga berdenging" "pendengaran berkurang") (resources))
    (decision-point-c (symptoms "bintil di kelopak mata" "mata berair" "mata merah") (resources))
    (decision-point-c (symptoms "nyeri pergelangan tangan" "kesemutan" "rasa baal di jari") (resources))
    (decision-point-c (symptoms "kelelahan" "sulit tidur" "nafsu makan menurun") (resources))
    (decision-point-c (symptoms "nyeri dada kiri tembus ke belakang" "sesak napas" "jantung berdebar") (resources "ecg"))
    (decision-point-c (symptoms "nyeri ulu hati" "mual" "muntah" "tenggorokan panas") (resources))
    (decision-point-c (symptoms "nyeri kepala hebat" "muntah hebat" "pandangan kabur mendadak") (resources "brain ct scan"))
    (decision-point-c (symptoms "nyeri punggung bawah" "kaki lemas" "kesemutan") (resources "spine mri"))
    (decision-point-c (symptoms "nyeri saat bak" "darah dalam urin" "bak mengejan") (resources "urinalysis"))
    (decision-point-c (symptoms "mimisan" "demam" "pusing" "pucat") (resources "blood test"))
    (decision-point-c (symptoms "nyeri gigi" "gusi bengkak" "kesulitan mengunyah") (resources))
    (decision-point-c (symptoms "nyeri perut kanan bawah" "demam" "muntah") (resources "abdominal usg"))
    (decision-point-c (symptoms "kulit melepuh" "luka bakar" "nyeri") (resources "iv fluids"))
    (decision-point-c (symptoms "mata merah" "keluar cairan" "benda asing di mata") (resources))
    (decision-point-c (symptoms "gangguan bicara" "wajah kaku satu sisi" "kelemahan kaki & tangan 1 sisi") (resources "brain mri"))
    (decision-point-c (symptoms "batuk darah" "demam" "sesak napas" "berat badan turun") (resources "chest x-ray" "sputum test"))
    (decision-point-c (symptoms "bengkak kemerahan pada sendi" "nyeri" "gerakan terbatas") (resources "joint x-ray"))
    (decision-point-c (symptoms "gatal hebat" "ruam kulit" "kulit memerah") (resources))
    (decision-point-c (symptoms "nyeri perut" "sulit bab" "perut kembung") (resources))
    (decision-point-c (symptoms "sakit kepala" "leher kaku" "demam") (resources "lumbar puncture" "blood test"))
    (decision-point-c (symptoms "cedera lutut" "bengkak" "nyeri" "sulit berjalan") (resources "knee x-ray"))
    (decision-point-c (symptoms "nyeri dada" "berkeringat" "nyeri menjalar ke lengan" "berdebar") (resources "ecg"))
    (decision-point-c (symptoms "telinga nyeri" "keluar cairan" "berdenging") (resources))
    (decision-point-c (symptoms "sumbatan benda asing di hidung" "hidung bau") (resources))
    (decision-point-c (symptoms "nyeri dada" "sesak napas" "kulit kebiruan") (resources "ecg"))
    (decision-point-c (symptoms "kejang" "kehilangan kesadaran" "muntah") (resources "iv anticonvulsants" "brain ct scan"))
    (decision-point-c (symptoms "muntah darah" "bab hitam" "nyeri perut" "pucat" "lemah") (resources "abdominal ultrasound" "iv fluids"))
    (decision-point-c (symptoms "luka tusuk" "perdarahan aktif" "pucat") (resources "laceration repair"))
    (decision-point-c (symptoms "trauma kepala" "muntah" "kehilangan kesadaran") (resources "head ct scan"))
    (decision-point-c (symptoms "mual ringan" "hilang nafsu makan" "pusing ringan") (resources))
    (decision-point-c (symptoms "nyeri pinggang" "darah dalam urin" "demam" "bak sedikit-sedikit") (resources "kidney ultrasound" "urinalysis"))
    (decision-point-c (symptoms "perdarahan vagina" "nyeri perut bawah" "pingsan" "lemas") (resources "abdominal usg" "iv fluids" "blood test"))
    (decision-point-c (symptoms "luka robek" "nyeri" "perdarahan aktif") (resources "laseration repair"))
    (decision-point-c (symptoms "sumbatan jalan napas" "tersedak" "napas sesak") (resources "advanced airway management" "cpr"))
    (decision-point-c (symptoms "pilek" "tenggorokan gatal" "bersin") (resources))
    (decision-point-c (symptoms "sakit kepala ringan" "kelelahan" "demam rendah") (resources))
    (decision-point-c (symptoms "kulit bernanah" "luka infeksi" "demam" "bengkak") (resources))
    (decision-point-c (symptoms "trauma dada" "lebam pada dada" "sulit bernapas" "pucat") (resources "chest x-ray"))
    (decision-point-c (symptoms "bengkak kaki" "nyeri kaki" "kulit kemerahan") (resources "doppler ultrasound"))
    (decision-point-c (symptoms "demam" "nyeri perut" "mual" "muntah" "bab cair") (resources "blood test" "iv fluids"))
    (decision-point-c (symptoms "perdarahan hebat" "tekanan darah rendah" "denyut cepat") (resources "blood test" "specialty consultation"))
    (decision-point-c (symptoms "henti jantung" "tidak responsif" "tidak bernapas") (resources "cpr" "defibrillator" "advanced airway management"))
    (decision-point-c (symptoms "tersetrum" "luka bakar" "kejang otot") (resources "ecg" "iv fluids"))
    (decision-point-c (symptoms "bab cair" "muntah berulang" "lemas") (resources "iv fluids"))
    (decision-point-c (symptoms "luka bakar besar" "kulit hangus" "dehidrasi berat") (resources "iv fluids"))
    (decision-point-c (symptoms "benjolan pada selangkangan" "nyeri") (resources "abdominal usg"))
    (decision-point-c (symptoms "sesak nafas" "napas berbunyi") (resources "nebulized medications"))
    (decision-point-c (symptoms "kecemasan berlebih" "serangan panik" "pusing" "mual") (resources))
)

;; ===============================
;; Rules
;; ===============================

;; Rule: Initialize Decision Result
(defrule initialize-decision-result
    (not (decision-result))
    =>
    (assert (decision-result))
    (printout t "Decision system initialized." crlf))

;; Rule: Case-Comparing Classification Decision Point A
(defrule compare-symptoms-point-a
    ?res <- (decision-result 
                (point-a unchecked) 
                (final-decision ?fd&:(eq ?fd "Level-3")))
    ?new <- (new-case (symptoms $?new-symptoms))
    =>
    (bind ?best-match-id "")
    (bind ?best-match-count 0)
    (bind ?best-match-label false)
    
    ;; Find the best match across all cases
    (do-for-all-facts ((?case decision-point-a)) TRUE
        (bind ?count 0)
        (foreach ?sym $?new-symptoms
            (if (member$ ?sym ?case:symptoms) then 
                (bind ?count (+ ?count 1))
            )
        )
        ;; Update best match if current count is higher
        (if (> ?count ?best-match-count) then
            (bind ?best-match-count ?count)
            (bind ?best-match-id ?case:case-id)
            (bind ?best-match-label ?case:requires-immediate-lifesaving-intervention)
        )
    )
    
    (if (> ?best-match-count 0) then
        (modify ?res (point-a ?best-match-label))
        (assert (match-result 
                    (case-id ?best-match-id)
                    (matched-count ?best-match-count)
                    (label ?best-match-label)
                    (template "decision-point-a")))
        (printout t "Best Matched Case A: " ?best-match-id " with " ?best-match-count " symptoms. Label: " ?best-match-label crlf)
    )
)

;; Rule: Handle No Matches - Case A
(defrule prompt-no-match-a
    ?res <- (decision-result 
                (point-a unchecked) 
                (final-decision ?fd&:(eq ?fd "Level-3")))
    ?new <- (new-case)
    (not (match-result (template "decision-point-a")))
    =>
    (printout t "Tidak ada case yang cocok untuk Decision Point A." crlf)
    (printout t "Apakah kasus ini memerlukan penanganan segera? (true/false): ")
    (bind ?response (read))
    (if (eq ?response true) then
        (modify ?res (point-a true))
        (printout t "Kasus dikategorikan sebagai MEMERLUKAN PENANGANAN SEGERA." crlf)
    else
        (modify ?res (point-a false))
        (printout t "Case dikategorikan sebagai TIDAK MEMERLUKAN PENANGANAN SEGERA." crlf)))

;; Rule: Case-Comparing Classification Decision Point B1 - Only if A false
(defrule compare-symptoms-point-b1
    ?res <- (decision-result 
                (point-a false) 
                (point-b1 unchecked)
                (final-decision ?fd&:(eq ?fd "Level-3")))
    ?new <- (new-case (symptoms $?new-symptoms))
    =>
    (bind ?best-match-id "")
    (bind ?best-match-count 0)
    (bind ?best-match-label false)
    
    ;; Find the best match across all cases
    (do-for-all-facts ((?case decision-point-b-1)) TRUE
        (bind ?count 0)
        (foreach ?sym $?new-symptoms
            (if (member$ ?sym ?case:symptoms) then 
                (bind ?count (+ ?count 1))
            )
        )
        ;; Update best match if current count is higher
        (if (> ?count ?best-match-count) then
            (bind ?best-match-count ?count)
            (bind ?best-match-id ?case:case-id)
            (bind ?best-match-label ?case:high-risk)
        )
    )
    
    (if (> ?best-match-count 0) then
        (modify ?res (point-a ?best-match-label))
        (assert (match-result 
                    (case-id ?best-match-id)
                    (matched-count ?best-match-count)
                    (label ?best-match-label)
                    (template "decision-point-b-1")))
        (printout t "Best Matched Case B1: " ?best-match-id " with " ?best-match-count " symptoms. Label: " ?best-match-label crlf)
    )
)

;; Rule: Handle No Matches - Case B1
(defrule prompt-no-match-b1
    ?res <- (decision-result 
                (point-a false)
                (point-b1 unchecked)
                (final-decision ?fd&:(eq ?fd "Level-3")))
    ?new <- (new-case)
    (not (match-result (template "decision-point-b-1")))
    =>
    (printout t "Tidak ada case yang cocok untuk Decision Point B1." crlf)
    (printout t "Apakah case ini termasuk situasi berisiko tinggi? (true/false): ")
    (bind ?response (read))
    (if (eq ?response true) then
        (modify ?res (point-b1 true))
        (printout t "Kasus dikategorikan sebagai SITUASI BERISIKO TINGGI." crlf)
    else
        (modify ?res (point-b1 false))
        (printout t "Case dikategorikan sebagai BUKAN SITUASI BERISIKO TINGGI." crlf)))


;; Rule: Case-Comparing Classification Decision Point B2 - Only if A false
(defrule compare-symptoms-point-b2
    ?res <- (decision-result 
                (point-a false) 
                (point-b2 unchecked)
                (final-decision ?fd&:(eq ?fd "Level-3")))
    ?new <- (new-case (symptoms $?new-symptoms))
    =>
    (bind ?best-match-id "")
    (bind ?best-match-count 0)
    (bind ?best-match-label false)
    
    ;; Find the best match across all cases
    (do-for-all-facts ((?case decision-point-b-2)) TRUE
        (bind ?count 0)
        (foreach ?sym $?new-symptoms
            (if (member$ ?sym ?case:symptoms) then 
                (bind ?count (+ ?count 1))
            )
        )
        ;; Update best match if current count is higher
        (if (> ?count ?best-match-count) then
            (bind ?best-match-count ?count)
            (bind ?best-match-id ?case:case-id)
            (bind ?best-match-label ?case:confused-lethargic-disoriented)
        )
    )
    
    (if (> ?best-match-count 0) then
        (modify ?res (point-a ?best-match-label))
        (assert (match-result 
                    (case-id ?best-match-id)
                    (matched-count ?best-match-count)
                    (label ?best-match-label)
                    (template "decision-point-b-2")))
        (printout t "Best Matched Case B2: " ?best-match-id " with " ?best-match-count " symptoms. Label: " ?best-match-label crlf)
    )
)

;; Rule: Handle No Matches - Case B2
(defrule prompt-no-match-b2
    ?res <- (decision-result 
                (point-a false) 
                (point-b2 unchecked) 
                (final-decision ?fd&:(eq ?fd "Level-3")))
    ?new <- (new-case)
    (not (match-result (template "decision-point-b-2")))
    =>
    (printout t "Tidak ada case yang cocok untuk Decision Point B2." crlf)
    (printout t "Apakah pasien tampak bingung/lesu/disorientasi? (true/false): ")
    (bind ?response (read))
    (if (eq ?response true) then
        (modify ?res (point-b2 true))
        (printout t "Pasien tampak BINGUNG/LESU/DISORIENTASI." crlf)
    else
        (modify ?res (point-b2 false))
        (printout t "Pasien TIDAK tampak BINGUNG/LESU/DISORIENTASI." crlf)))

;; Rule: Simple Classification Decision Point B3 - Only if A false
;; TODO: Make B3 Classification

;; Fixed version with best match selection for Point C
(defrule compare-symptoms-point-c
    ?res <- (decision-result 
                (point-a ?pa) 
                (point-b1 ?pb1) 
                (point-b2 ?pb2) 
                (point-c unchecked) 
                (final-decision ?fd&:(eq ?fd "Level-3")))
    (test (and (member$ ?pa (create$ false unchecked))
               (member$ ?pb1 (create$ false unchecked))
               (member$ ?pb2 (create$ false unchecked))))
    ?new <- (new-case (symptoms $?new-symptoms))
    =>
    (bind ?best-match-count 0)
    (bind ?best-match-resources (create$))
    (bind ?best-match-symptoms (create$))
    
    ;; Find the best match across all cases
    (do-for-all-facts ((?case decision-point-c)) TRUE
        (bind ?count 0)
        (foreach ?sym $?new-symptoms
            (if (member$ ?sym ?case:symptoms) then 
                (bind ?count (+ ?count 1))
            )
        )
        ;; Update best match if current count is higher
        (if (> ?count ?best-match-count) then
            (bind ?best-match-count ?count)
            (bind ?best-match-resources ?case:resources)
            (bind ?best-match-symptoms ?case:symptoms)
        )
    )
    
    ;; If we found any matches, determine point-c value and update decision
    (if (> ?best-match-count 0) then
        ;; Determine the value of point-c based on number of resources
        (bind ?resource-length (length$ ?best-match-resources))
        (bind ?point-c-value "None")
        
        (if (eq ?resource-length 0) then
            (bind ?point-c-value "None")
        else 
            (if (eq ?resource-length 1) then
                (bind ?point-c-value "One")
            else 
                (bind ?point-c-value "Many")
            )
        )
        
        ;; Update decision result
        (modify ?res (point-c ?point-c-value))
        
        ;; Assert match result
        (assert (match-result 
            (symptoms ?best-match-symptoms)
            (matched-count ?best-match-count)
            (label ?point-c-value)
            (resources ?best-match-resources)
            (template "decision-point-c")))
            
        (printout t "Best Matched Case C with " ?best-match-count " symptoms." crlf)
        (printout t "Required Resource(s): " ?best-match-resources crlf)
        (printout t "Point C Label: " ?point-c-value crlf)
    )
)

;; Rule: Handle No Matches - Case C
(defrule prompt-no-match-c
    ?res <- (decision-result 
                (point-a ?pa) 
                (point-b1 ?pb1) 
                (point-b2 ?pb2)
                (point-c unchecked) 
                (final-decision ?fd&:(eq ?fd "Level-3")))
    (test (and (member$ ?pa (create$ false unchecked))
            (member$ ?pb1 (create$ false unchecked))
            (member$ ?pb2 (create$ false unchecked))))
    ?new <- (new-case (symptoms $?new-symptoms))
    (not (match-result (template "decision-point-c")))
    =>
    (printout t "Tidak ada case yang cocok untuk Decision Point C." crlf)
    (bind ?response "")
    (while (eq ?response "") do
        (printout t "Masukkan resource yang dibutuhkan pasien case tersebut (pisahkan dengan koma): ")
        (bind ?response (readline))
        (if (eq ?response "") then
            (printout t "Input tidak valid. Silakan coba lagi." crlf)))

    ;; Count the number of commas to determine resource count
    (bind ?comma-count 0)
    (bind ?pos 0)
    (while (> (str-length ?response) ?pos) do
        (if (eq (sub-string (+ ?pos 1) (+ ?pos 1) ?response) ",")
            then (bind ?comma-count (+ ?comma-count 1)))
        (bind ?pos (+ ?pos 1)))
    
    ;; Number of resources is comma count + 1
    (bind ?length (+ ?comma-count 1))
    
    ;; Determine point-c-value based on resource count
    (bind ?point-c-value "None")
    (if (eq ?length 1) then (bind ?point-c-value "One"))
    (if (> ?length 1) then (bind ?point-c-value "Many"))

    ;; Assert result and update
    (modify ?res (point-c ?point-c-value))
    (printout t "Resource(s) untuk case tersebut: [" ?response "] : " ?length crlf)
    (printout t "Label: " ?point-c-value crlf))

;; Rule: Simple Classification Decision Point D - Only if C many
;; TODO: Make D Classification

;; Rule: Finalize Decision
(defrule finalize-decision
    ?res <- (decision-result
                (point-a ?pa) 
                (point-b1 ?pb1) 
                (point-b2 ?pb2)
                (point-c ?pc) 
                (final-decision "Level-3"))
    =>
    (if (eq ?pa true) then
        (modify ?res (final-decision "Level-1"))
        (printout t "Final Decision: Level-1" crlf)
    else
        (if (or (eq ?pb1 true) (eq ?pb2 true)) then
            (modify ?res (final-decision "Level-2"))
            (printout t "Final Decision: Level-2" crlf)
        else
            (if (eq ?pc "None") then
                (modify ?res (final-decision "Level-5"))
                (printout t "Final Decision: Level-5" crlf)
            else
                (if (eq ?pc "One") then
                    (modify ?res (final-decision "Level-4"))
                    (printout t "Final Decision: Level-4" crlf)
                else
                    (modify ?res (final-decision "Level-3"))
                    (printout t "Final Decision: Level-3" crlf))))))


;; Rule: Cleanup Match Results
(defrule clear-match-results
    (declare (salience -10))
    ?m <- (match-result)
    =>
    (retract ?m))
