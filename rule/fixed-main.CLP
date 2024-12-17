;; Templates
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
    (slot pain-scale)
    (slot severe-pain (default false)))

(deftemplate decision-point-c
    (slot case-id)
    (multislot symptoms)
    (multislot resources))

(deftemplate decision-point-d
    (slot age)
    (slot hr)
    (slot rr)
    (slot spo2)
    (slot high-risk-vital-sign (default false)))

(deftemplate decision-result
    (slot point-a (default unchecked))
    (slot point-b (default unchecked))
    (slot point-c (default unchecked))
    (slot point-d (default unchecked))
    (slot final-decision (default "Level-5")))

(deftemplate match-result
    (slot case-id)
    (slot matched-count)
    (slot template))

;; Facts Database
(deffacts cases-a
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
)

(deffacts cases-b1
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
)

(deffacts cases-b2
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
)

(deffacts cases-c
    (decision-point-c (case-id C-1) (symptoms "nyeri kepala" "pusing") (resources))
    (decision-point-c (case-id C-2) (symptoms "bersin-bersin" "hidung tersumbat" "pilek" "suara sengau") (resources))
    (decision-point-c (case-id C-3) (symptoms "nyeri tenggorokan" "suara serak" "batuk" "sulit menelan") (resources))
    (decision-point-c (case-id C-4) (symptoms "mata gatal" "mata merah" "keluar air mata" "penglihatan kabur") (resources))
    (decision-point-c (case-id C-5) (symptoms "kulit kering" "gatal-gatal" "kulit bersisik") (resources))
    (decision-point-c (case-id C-6) (symptoms "bibir pecah-pecah" "mulut kering") (resources))
    (decision-point-c (case-id C-7) (symptoms "kelelahan" "nyeri sendi") (resources))
    (decision-point-c (case-id C-8) (symptoms "nyeri punggung" "lemas") (resources))
    (decision-point-c (case-id C-9) (symptoms "gusi bengkak" "nyeri gigi" "bau mulut") (resources))
    (decision-point-c (case-id C-10) (symptoms "mata kering" "mata lelah" "penglihatan kabur") (resources))
    (decision-point-c (case-id C-11) (symptoms "nyeri ulu hati" "perut kembung" "sering bersendawa") (resources))
    (decision-point-c (case-id C-12) (symptoms "penurunan kesadaran" "bicara ngelantur" "lemas") (resources "glucose blood test"))
    (decision-point-c (case-id C-13) (symptoms "gangguan bicara" "wajah kaku satu sisi" "pusing") (resources))
    (decision-point-c (case-id C-14) (symptoms "nyeri pada kuku" "kuku bernanah" "sekitar kuku bengkak") (resources))
    (decision-point-c (case-id C-15) (symptoms "bengkak pada pipi" "demam") (resources))
    (decision-point-c (case-id C-16) (symptoms "demam" "batuk" "pilek" "nyeri otot") (resources))
    (decision-point-c (case-id C-17) (symptoms "telinga gatal" "telinga berdenging" "pendengaran berkurang") (resources))
    (decision-point-c (case-id C-18) (symptoms "bintil di kelopak mata" "mata berair" "mata merah") (resources))
    (decision-point-c (case-id C-19) (symptoms "nyeri pergelangan tangan" "kesemutan" "rasa baal di jari") (resources))
    (decision-point-c (case-id C-20) (symptoms "kelelahan" "sulit tidur" "nafsu makan menurun") (resources))
    (decision-point-c (case-id C-21) (symptoms "nyeri dada kiri tembus ke belakang" "sesak napas" "jantung berdebar") (resources "ecg"))
    (decision-point-c (case-id C-22) (symptoms "nyeri ulu hati" "mual" "muntah" "tenggorokan panas") (resources))
    (decision-point-c (case-id C-23) (symptoms "nyeri kepala hebat" "muntah hebat" "pandangan kabur mendadak") (resources "brain ct scan"))
    (decision-point-c (case-id C-24) (symptoms "nyeri punggung bawah" "kaki lemas" "kesemutan") (resources "spine mri"))
    (decision-point-c (case-id C-25) (symptoms "nyeri saat bak" "darah dalam urin" "bak mengejan") (resources "urinalysis"))
    (decision-point-c (case-id C-26) (symptoms "mimisan" "demam" "pusing" "pucat") (resources "blood test"))
    (decision-point-c (case-id C-27) (symptoms "nyeri gigi" "gusi bengkak" "kesulitan mengunyah") (resources))
    (decision-point-c (case-id C-28) (symptoms "nyeri perut kanan bawah" "demam" "muntah") (resources "abdominal usg"))
    (decision-point-c (case-id C-29) (symptoms "kulit melepuh" "luka bakar" "nyeri") (resources "iv fluids"))
    (decision-point-c (case-id C-30) (symptoms "mata merah" "keluar cairan" "benda asing di mata") (resources))
    (decision-point-c (case-id C-31) (symptoms "gangguan bicara" "wajah kaku satu sisi" "kelemahan kaki & tangan 1 sisi") (resources "brain mri"))
    (decision-point-c (case-id C-32) (symptoms "batuk darah" "demam" "sesak napas" "berat badan turun") (resources "chest x-ray" "sputum test"))
    (decision-point-c (case-id C-33) (symptoms "bengkak kemerahan pada sendi" "nyeri" "gerakan terbatas") (resources "joint x-ray"))
    (decision-point-c (case-id C-34) (symptoms "gatal hebat" "ruam kulit" "kulit memerah") (resources))
    (decision-point-c (case-id C-35) (symptoms "nyeri perut" "sulit bab" "perut kembung") (resources))
    (decision-point-c (case-id C-36) (symptoms "sakit kepala" "leher kaku" "demam") (resources "lumbar puncture" "blood test"))
    (decision-point-c (case-id C-37) (symptoms "cedera lutut" "bengkak" "nyeri" "sulit berjalan") (resources "knee x-ray"))
    (decision-point-c (case-id C-38) (symptoms "nyeri dada" "berkeringat" "nyeri menjalar ke lengan" "berdebar") (resources "ecg"))
    (decision-point-c (case-id C-39) (symptoms "telinga nyeri" "keluar cairan" "berdenging") (resources))
    (decision-point-c (case-id C-40) (symptoms "sumbatan benda asing di hidung" "hidung bau") (resources))
    (decision-point-c (case-id C-41) (symptoms "nyeri dada" "sesak napas" "kulit kebiruan") (resources "ecg"))
    (decision-point-c (case-id C-42) (symptoms "kejang" "kehilangan kesadaran" "muntah") (resources "iv anticonvulsants" "brain ct scan"))
    (decision-point-c (case-id C-43) (symptoms "muntah darah" "bab hitam" "nyeri perut" "pucat" "lemah") (resources "abdominal ultrasound" "iv fluids"))
    (decision-point-c (case-id C-44) (symptoms "luka tusuk" "perdarahan aktif" "pucat") (resources "laceration repair"))
    (decision-point-c (case-id C-45) (symptoms "trauma kepala" "muntah" "kehilangan kesadaran") (resources "head ct scan"))
    (decision-point-c (case-id C-46) (symptoms "mual ringan" "hilang nafsu makan" "pusing ringan") (resources))
    (decision-point-c (case-id C-47) (symptoms "nyeri pinggang" "darah dalam urin" "demam" "bak sedikit-sedikit") (resources "kidney ultrasound" "urinalysis"))
    (decision-point-c (case-id C-48) (symptoms "perdarahan vagina" "nyeri perut bawah" "pingsan" "lemas") (resources "abdominal usg" "iv fluids" "blood test"))
    (decision-point-c (case-id C-49) (symptoms "luka robek" "nyeri" "perdarahan aktif") (resources "laseration repair"))
    (decision-point-c (case-id C-50) (symptoms "sumbatan jalan napas" "tersedak" "napas sesak") (resources "advanced airway management" "cpr"))
    (decision-point-c (case-id C-51) (symptoms "pilek" "tenggorokan gatal" "bersin") (resources))
    (decision-point-c (case-id C-52) (symptoms "sakit kepala ringan" "kelelahan" "demam rendah") (resources))
    (decision-point-c (case-id C-53) (symptoms "kulit bernanah" "luka infeksi" "demam" "bengkak") (resources))
    (decision-point-c (case-id C-54) (symptoms "trauma dada" "lebam pada dada" "sulit bernapas" "pucat") (resources "chest x-ray"))
    (decision-point-c (case-id C-55) (symptoms "bengkak kaki" "nyeri kaki" "kulit kemerahan") (resources "doppler ultrasound"))
    (decision-point-c (case-id C-56) (symptoms "demam" "nyeri perut" "mual" "muntah" "bab cair") (resources "blood test" "iv fluids"))
    (decision-point-c (case-id C-57) (symptoms "perdarahan hebat" "tekanan darah rendah" "denyut cepat") (resources "blood test" "specialty consultation"))
    (decision-point-c (case-id C-58) (symptoms "henti jantung" "tidak responsif" "tidak bernapas") (resources "cpr" "defibrillator" "advanced airway management"))
    (decision-point-c (case-id C-59) (symptoms "tersetrum" "luka bakar" "kejang otot") (resources "ecg" "iv fluids"))
    (decision-point-c (case-id C-60) (symptoms "bab cair" "muntah berulang" "lemas") (resources "iv fluids"))
    (decision-point-c (case-id C-61) (symptoms "luka bakar besar" "kulit hangus" "dehidrasi berat") (resources "iv fluids"))
    (decision-point-c (case-id C-62) (symptoms "benjolan pada selangkangan" "nyeri") (resources "abdominal usg"))
    (decision-point-c (case-id C-63) (symptoms "sesak nafas" "napas berbunyi") (resources "nebulized medications"))
    (decision-point-c (case-id C-64) (symptoms "kecemasan berlebih" "serangan panik" "pusing" "mual") (resources))
)

;; Rules
;; Compare Symptoms
(defrule compare-symptoms-point-a
    (declare (salience 10))
    ?new <- (new-case (symptoms $?new-symptoms))

    ;; Match decision-point-a
    ?case-a <- (decision-point-a (case-id ?id-a) (symptoms $?case-symptoms-a))
    =>
    (bind ?count 0)
    (foreach ?sym $?new-symptoms
        (if (member$ ?sym $?case-symptoms-a) then (bind ?count (+ ?count 1))))
    (if (> ?count 0) 
        then 
        (assert (match-result (case-id ?id-a) 
                              (matched-count ?count)
                              (template decision-point-a)))))

(defrule compare-symptoms-point-b1
    (declare (salience 10))
    ?new <- (new-case (symptoms $?new-symptoms))
    ?case-b1 <- (decision-point-b-1 (case-id ?id-b1) (symptoms $?case-symptoms-b1))
    =>
    (bind ?count 0)
    (foreach ?sym $?new-symptoms
        (if (member$ ?sym $?case-symptoms-b1) then (bind ?count (+ ?count 1))))
    (if (> ?count 0) 
        then 
        (assert (match-result (case-id ?id-b1) 
                              (matched-count ?count)
                              (template decision-point-b-1)))))

(defrule compare-symptoms-point-b2
    (declare (salience 10))
    ?new <- (new-case (symptoms $?new-symptoms))
    ?case-b2 <- (decision-point-b-2 (case-id ?id-b2) (symptoms $?case-symptoms-b2))
    =>
    (foreach ?sym $?new-symptoms
        (if (member$ ?sym $?case-symptoms-b2) then (bind ?count (+ ?count 1))))
    (if (> ?count 0) 
        then 
        (assert (match-result (case-id ?id-b2) 
                              (matched-count ?count)
                              (template decision-point-b-2)))))


;; Generalized Rule: Find Best Match for Any Decision Point
(defrule find-best-match-point
    (declare (salience -10))
    ?new <- (new-case)
    ?res <- (decision-result (point-b ?current-point-b))
    ?m1 <- (match-result (case-id ?id1) (matched-count ?count1) (template ?template-name))
    (not (match-result (matched-count ?count2&:(> ?count2 ?count1))))
    =>
    ;; Display matches with the highest count
    (printout t "Highest Match Cases for " ?template-name " Found:" crlf)
    (do-for-all-facts ((?m match-result))
        (if (= ?m:matched-count ?count1) then
            (printout t "Case ID: " ?m:case-id crlf)))

    ;; Prompt user for case selection
    (printout t "Enter your choice (Case ID): ")
    (bind ?chosen-case (read))

    ;; Update slots in decision-result based on the selected template
    (if (eq ?template-name "decision-point-b-1") then
        (if (neq ?current-point-b high-risk) 
            then (modify ?res (point-b high-risk))))
    (if (eq ?template-name "decision-point-b-2") then
        (if (neq ?current-point-b confused-lethargic-disoriented) 
            then (modify ?res (point-b confused-lethargic-disoriented)))))

(defrule clear-unused-matches
    (declare (salience -20))
    ?m <- (match-result)
    =>
    (retract ?m))

;; Rule: Point B3 - Check Severe Pain
(defrule check-severe-pain
    ?new <- (new-case (pain-scale ?pain))
    ?res <- (decision-result (point-b ?current-point-b))
    =>
    (if (> ?pain 6)
        then
            (assert (decision-point-b-3 (severe-pain true)))
            (if (neq ?current-point-b severe-pain)
                then (modify ?res (point-b severe-pain)))))

;; Rule: Point C - Resource Check
(defrule check-resources-point-c
    ?case <- (decision-point-c (resources $?resources))
    ?res <- (decision-result (point-c ?current-point-c))
    =>
    (bind ?count (length$ $?resources))
    (if (eq ?count 0)
        then (modify ?res (point-c "None") (final-decision "Level-5"))
        else 
            (if (eq ?count 1)
                then (modify ?res (point-c "One") (final-decision "Level-4"))
                else 
                    (if (neq ?current-point-c "Many")
                        then (modify ?res (point-c "Many") (final-decision "Level-3"))))))

;; Rule: Point D - High-Risk Vital Signs
(defrule check-high-risk-vital-sign
    ?d <- (decision-point-d (age ?age) (hr ?hr) (rr ?rr))
    ?res <- (decision-result)
    =>
    (bind ?high-risk false)
    (if (or 
            (and (< ?age 1) (> ?hr 190) (> ?rr 60))
            (and (>= ?age 1) (< ?age 12) (> ?hr 180) (> ?rr 55))
            (and (>= ?age 12) (< ?age 36) (> ?hr 140) (> ?rr 40))
            (and (>= ?age 36) (< ?age 60) (> ?hr 120) (> ?rr 35))
            (and (>= ?age 60) (< ?age 144) (> ?hr 120) (> ?rr 30))
            (and (>= ?age 144) (< ?age 216) (> ?hr 100) (> ?rr 20))
            (and (>= ?age 216) (> ?hr 100) (> ?rr 20)))
        then (bind ?high-risk true))
    (modify ?res (point-d ?high-risk)))

;; Rule: Finalize Decision
(defrule finalize-decision
    ?res <- (decision-result (point-a ?pa) (point-b ?pb) (point-c ?pc) (point-d ?pd))
    =>
    (printout t "Debugging Points: A=" ?pa " B=" ?pb " C=" ?pc " D=" ?pd crlf)

    (if (eq ?pa true) 
        then (modify ?res (final-decision "Level-1"))
        else 
            (if (eq ?pb true) 
                then (modify ?res (final-decision "Level-2"))
                else 
                    (if (eq ?pd true) 
                        then (modify ?res (final-decision "Level-2"))
                        else (modify ?res (final-decision "Level-3")))))

    ;; Print the updated slot directly without re-binding
    (printout t "Final Decision: " (fact-slot-value ?res final-decision) crlf))