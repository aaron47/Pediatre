import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PhysiologicalConstantsWidget(),
    );
  }
}

class PhysiologicalConstantsWidget extends StatefulWidget {
  const PhysiologicalConstantsWidget({Key? key}) : super(key: key);

  @override
  State<PhysiologicalConstantsWidget> createState() =>
      _PhysiologicalConstantsWidgetState();
}

class _PhysiologicalConstantsWidgetState
    extends State<PhysiologicalConstantsWidget> {
  // final _constantesPhysiologiques = const [
  //   "GR",
  //   "GB",
  //   "VGM",
  //   "CMH",
  //   "Hb",
  //   "PN",
  //   "LYMPHO",
  //   "EOSINO",
  //   "MONO",
  //   "BASO",
  //   "PLAQ",
  //   "LDH",
  //   "CPK",
  //   "Ca",
  //   "Na",
  //   "K+",
  //   "Cl-",
  //   "HCO3",
  //   "T3",
  //   "T4",
  //   "OSTEOCAL",
  //   "PA iso-osseux",
  //   "Glycémie",
  //   "Cholestérol",
  //   "LDL",
  //   "HDL",
  //   "Triglycérides",
  //   "PTH",
  //   "AZOTÉMIE",
  //   "Créatininémie",
  //   "Acide Urique",
  //   "Transaminases SGOT",
  //   "SGPT",
  //   "VS 1: 2:",
  //   "HB glyquée",
  //   "CA 15-53",
  //   "CEA",
  //   "CA 199",
  //   "CA 125",
  //   "PSA",
  //   "",
  //   "",
  //   "",
  //   "",
  //   "",
  //   "",
  //   "",
  //   "",
  //   "",
  //   "",
  //   "",
  //   "",
  //   "",
  //   "",
  //   "",
  // ];

  // final _indexes = const [
  //   "RG",
  //   "RGT",
  //   "CATA/ANA",
  //   "CORTISOL",
  //   "ACT SURR",
  //   "IND. SURR",
  //   "Aromatisation",
  //   "Permissivité",
  //   "Sol. Thyr",
  //   "I.L",
  //   "Structure fn",
  //   "Fraction oestrog.",
  //   "Rap Androgène",
  //   "Plaq/lympho",
  //   "Histamine",
  //   "N.I.S",
  //   "N.I.L",
  //   "M.L",
  //   "M.P",
  //   "Starter",
  //   "Tx CATA",
  //   "Tx ANA",
  //   "Activité Métabolique",
  //   "LDH/CPK",
  //   "IND. Adaptogene",
  //   "B MSH/ A MSH",
  //   "T3/T4",
  //   "Histamine Potentielle",
  //   "ACTH",
  //   "ALDOSTÉRONE",
  //   "Sérotonine périphérique",
  //   "Hyper insulinisme",
  //   "Résistance insuline",
  //   "Efficacité immune",
  //   "Énergie S.I",
  //   "Congestion",
  //   "Stress Oxydatif",
  //   "Radicaux libres",
  //   "Ind. Rendement thyroidien",
  //   "Activités tissulaires thyroide",
  //   "Ind TRH ",
  //   "IND Implication thyroide",
  //   "Imp. Thyréo somato",
  //   "Implic folliculaire",
  //   "Ind activ metab oestrogene",
  //   "Androgene métabolique",
  //   "Ind activ tissulaire œstrogène",
  //   "Index de croissance",
  //   "Index turn over",
  //   "Ind. Anti croissance",
  //   "Fract. Métab des œstrogènes",
  //   "Progestérone",
  //   "Ind somatostatine",
  //   "Ind prolactine",
  //   "Fracture Membranaire",
  // ];

  // final _formulesIndex = const [
  //   "GR/GB",
  //   "PN/LYMPHO",
  //   "RGT/RG",
  //   "Cata-Ana/ RA",
  //   "Cata-Ana/ RG",
  //   "Cortisol / act. surr",
  //   "RA / RGxRG",
  //   "RA / RG",
  //   "Mono / Lympho",
  //   "1 /Cortisol x RGT",
  //   "PN + Mono / Eosino x lympho",
  //   "PN / Mono",
  //   "RG / Cortisol",
  //   "Plq / lympho",
  //   "RA x Eosino x Plq / Activ. surr",
  //   "Eosino x Plq / Cortisol",
  //   "N.I.S / Histamine",
  //   "Plq x PN x Hb /30x GB",
  //   "Plq /60x GR",
  //   "ML / MP",
  //   "LDH/Activ. surr",
  //   "Tx Cata / Cata-ana",
  //   "(Tx cata + tx ana)x100 /2,25",
  //   "LDH/CPK",
  //   "K+/Ca++",
  //   "LDH/CPK // K/Ca",
  //   "T3/T4",
  //   "Histamine / B MSH/ A MSH",
  //   "Histamine Pot/ plq/lympho",
  //   "K x Cortisol/ Na+",
  //   "Cortiso x starter",
  //   "",
  //   "Cortisol x IL x TSH /Fract. Œstrogène ",
  //   "Eosino x Lympho x IL / Cortisol",
  //   "RA x IL x ACT",
  //   "IL x NIL /Métabolisme",
  //   "Histamine x T4 x IL x Tx cata",
  //   "Cata-ana x RGT x NIL",
  //   "LDH/CPK // TSH",
  //   "LDH/CPK // RGc",
  //   "TSH/T4",
  //   "CA 15-3/CEA",
  //   "CA 199/CEA",
  //   "CA 125 / CEA",
  //   "TSH / Ostéocalcine",
  //   "Oestrogene métab/ RG",
  //   "Lympho/ ostéocalcine",
  //   "",
  //   "",
  //   "",
  //   "LDH / Ostéocalcine",
  //   "Œstrogène métab/ androg. Surr x RG",
  //   "TSH x RA x Ostéocalcine/ index croissance",
  //   "TSH x TSH x RA x Iso-os / cata-ana",
  //   "40(tx cata + tx ana)/TSH x TSH x Iso-os",
  // ];

  // CONSTANTES PHYSIOLOGIQUES
  TextEditingController grController = TextEditingController(text: "0.0");
  TextEditingController gbController = TextEditingController(text: "0.0");
  TextEditingController vgmController = TextEditingController(text: "0.0");
  TextEditingController cmhController = TextEditingController(text: "0");
  TextEditingController hbController = TextEditingController(text: "0");
  TextEditingController pnController = TextEditingController(text: "0");
  TextEditingController lymphoController = TextEditingController(text: "0");
  TextEditingController eosinoController = TextEditingController(text: "0");
  TextEditingController monoController = TextEditingController(text: "0");
  TextEditingController basoController = TextEditingController(text: "0");
  TextEditingController plaqController = TextEditingController(text: "0");
  TextEditingController ldhController = TextEditingController(text: "0");
  TextEditingController cpkController = TextEditingController(text: "0");
  TextEditingController caController = TextEditingController(text: "0");
  TextEditingController naController = TextEditingController(text: "0");
  TextEditingController kController = TextEditingController(text: "0");
  TextEditingController clController = TextEditingController(text: "0");
  TextEditingController hco3Controller = TextEditingController(text: "0");
  TextEditingController tshController = TextEditingController(text: "0");
  TextEditingController t3Controller = TextEditingController(text: "0");
  TextEditingController t4Controller = TextEditingController(text: "0");
  TextEditingController osteocalController = TextEditingController(text: "0");
  TextEditingController paIsoOsseuxController =
      TextEditingController(text: "0");
  TextEditingController glycemieController = TextEditingController(text: "0");
  TextEditingController cholesterolController =
      TextEditingController(text: "0");
  TextEditingController ldlController = TextEditingController(text: "0");
  TextEditingController hdlController = TextEditingController(text: "0");
  TextEditingController triglyceridesController =
      TextEditingController(text: "0");
  TextEditingController pthController = TextEditingController(text: "0");
  TextEditingController azotemieController = TextEditingController(text: "0");
  TextEditingController creatininemieController =
      TextEditingController(text: "0");
  TextEditingController acideUriqueController =
      TextEditingController(text: "0");
  TextEditingController transaminasesSgotController =
      TextEditingController(text: "0");
  TextEditingController sgptController = TextEditingController(text: "0");
  TextEditingController vs12Controller = TextEditingController(text: "0");
  TextEditingController hbGlyqueeController = TextEditingController(text: "0");
  TextEditingController ca1553Controller = TextEditingController(text: "0");
  TextEditingController ceaController = TextEditingController(text: "0");
  TextEditingController ca199Controller = TextEditingController(text: "0");
  TextEditingController ca125Controller = TextEditingController(text: "0");
  TextEditingController psaController = TextEditingController(text: "0");

  double RG = 0.0;
  double RGT = 0.0;
  double CATA_ANA = 0.0;
  double CORTISOL = 0.0;
  double ACTIV_SURR = 0.0;
  double IND_SURR = 0.0;
  double AROMATISATION = 0.0;
  double PERMISSIVITE = 0.0;
  double SOL_THYR = 0.0;
  double IL = 0.0;
  double STRUCTURE_FN = 0.0;
  double FRACTION_OESTROG = 0.0;
  double RAP_ANDROGENE = 0.0;
  double PLAQ_LMYPHO = 0.0;
  double HISTAMINE = 0.0;
  double NIS = 0.0;
  double NIL = 0.0;
  double ML = 0.0;
  double MP = 0.0;
  double STARTER = 0.0;
  double TX_CATA = 0.0;
  double TX_ANA = 0.0;
  double ACTIVITE_METABOLIQUE = 0.0;
  double LDH_CPK = 0.0;
  double IND_ADAPTOGENE = 0.0;
  double B_MSH_A_MSH = 0.0;
  double T3_T4 = 0.0;
  double HISTAMINE_POTENTIELLE = 0.0;
  double ACTH = 0.0;
  double ALDOSTERONE = 0.0;
  double SEROTONINE_PERIPHERIQUE = 0.0;
  double RESISTANCE_INSULINE = 0.0;
  double EFFICACITE_IMMUNE = 0.0;
  double ENERGIE_SI = 0.0;
  double CONGESTION = 0.0;
  double STRESS_OXYDATIF = 0.0;
  double RADICAUX_LIBRES = 0.0;
  double IND_RENDEMENT_THYROIDIEN = 0.0;
  double ACTIVITES_TISSULARIES_THYROIDE = 0.0;
  double IND_TRH = 0.0;
  double IND_IMPLICATION_THYROIDE = 0.0;
  double IMP_THYREO_SOMATO = 0.0;
  double IMPLIC_FOLLICULAIRE = 0.0;
  double IND_ACTIV_METAB_OESTROGENE = 0.0;
  double ANDROGENE_METABOLIQUE = 0.0;
  double IND_ACTIV_TISSULAIRE_OESTROGENE = 0.0;
  double FRACT_METAB_OESTROGENES = 0.0;
  double PROGESTERONE = 0.0;
  double IND_SOMATOSTATINE = 0.0;
  double IND_PROLACTINE = 0.0;
  double FRACTURE_MEMBRANAIRE = 0.0;

  @override
  void initState() {
    super.initState();
  }

  void calculateConclusion(String formule) {
    double GR = double.parse(grController.text) * 0.001;
    double GB = double.parse(gbController.text);
    double PN = double.parse(pnController.text);
    double LMYPHO = double.parse(lymphoController.text);
    double PLAQ = double.parse(plaqController.text) * 0.001;

    switch (formule) {
      case "GR/GB":
        setState(() {
          RG = GR / GB;
        });
        break;
      case "PN/LMYPHO":
        setState(() {
          RGT = PN / LMYPHO;
        });
        break;
      case "RGT/RG":
        setState(() {
          CATA_ANA = RGT / RG;
        });
        break;
      case "Cata-Ana/RA":
        setState(() {
          CORTISOL = CATA_ANA / RGT;
        });
        break;
      case "Cata-Ana/RG":
        setState(() {
          ACTIV_SURR = CATA_ANA / RG;
        });
        break;
      case "Cortisol/act. surr":
        setState(() {
          IND_SURR = CORTISOL / ACTIV_SURR;
        });
        break;
      case "RA/RGxRG":
        setState(() {
          AROMATISATION = RGT / (RG * RG);
        });
        break;
      case "RA/RG":
        setState(() {
          PERMISSIVITE = RGT / RG;
        });
        break;
      case "Mono/Lmypho":
        setState(() {
          SOL_THYR = double.parse(monoController.text) / LMYPHO;
        });
        break;
      case "1/CortisolxRGT":
        setState(() {
          IL = 1 / (CORTISOL * RGT);
        });
        break;
      case "PN+MONO/EosinoxLympho":
        setState(() {
          STRUCTURE_FN = (PN + double.parse(monoController.text)) /
              (double.parse(eosinoController.text) * LMYPHO);
        });
        break;
      case "PN/Mono":
        setState(() {
          FRACTION_OESTROG = PN / double.parse(monoController.text);
        });
        break;
      case "RG/Cortisol":
        setState(() {
          RAP_ANDROGENE = RG / CORTISOL;
        });
        break;
      case "PLAQ/LMYPHO":
        setState(() {
          PLAQ_LMYPHO = PLAQ / LMYPHO;
        });
        break;
      case "RAxEosinoxPlq/Activ.surr":
        setState(() {
          HISTAMINE =
              (RGT * double.parse(eosinoController.text) * PLAQ) / ACTIV_SURR;
        });
        break;
      case "EosinoxPlq/Cortisol":
        setState(() {
          NIS = double.parse(eosinoController.text) * PLAQ / CORTISOL;
        });
        break;
      case "N.I.S/Histamine":
        setState(() {
          NIL = NIS / HISTAMINE;
        });
        break;
      case "PlqxPNxHb/30xGB":
        setState(() {
          ML = (PLAQ * PN * double.parse(hbController.text)) /
              (30 * double.parse(gbController.text));
        });
        break;
      case "Plq/60xGR":
        setState(() {
          MP = PLAQ / (60 * GR);
        });
        break;
      case "ML/MP":
        setState(() {
          STARTER = ML / MP;
        });
        break;
      case "LDH/Activ.surr":
        setState(() {
          TX_CATA = double.parse(ldhController.text) / ACTIV_SURR;
        });
        break;
      case "TxCata/Cata-ana":
        setState(() {
          TX_ANA = TX_CATA / CATA_ANA;
        });
        break;
      case "(Txcata+txana)x100/2.25)":
        setState(() {
          ACTIVITE_METABOLIQUE = ((TX_CATA + TX_ANA) * 100) / 2.25;
        });
        break;
      case "LDH/CPK":
        setState(() {
          LDH_CPK = double.parse(ldhController.text) /
              double.parse(cpkController.text);
        });
        break;
      case "K+/Ca++":
        setState(() {
          IND_ADAPTOGENE =
              double.parse(kController.text) / double.parse(caController.text);
        });
        break;
      case "LDH/CPK // K/Ca":
        setState(() {
          B_MSH_A_MSH = LDH_CPK / IND_ADAPTOGENE;
        });
        break;
      case "T3/T4":
        setState(() {
          T3_T4 =
              double.parse(t3Controller.text) / double.parse(t4Controller.text);
        });
        break;
      case "Histamine / B MSH / A MSH":
        setState(() {
          HISTAMINE_POTENTIELLE = HISTAMINE / B_MSH_A_MSH;
        });
        break;
      case "HistaminePot/plq/lympho":
        setState(() {
          ACTH = HISTAMINE_POTENTIELLE / (PLAQ * LMYPHO);
        });
        break;
      case "K x Cortisol / Na+":
        setState(() {
          ALDOSTERONE = double.parse(kController.text) *
              CORTISOL /
              double.parse(naController.text);
        });
        break;
      case "Cortisol x starter":
        setState(() {
          SEROTONINE_PERIPHERIQUE = CORTISOL * STARTER;
        });
        break;
      case "Cortisol x IL x TSH /Fract. Œstrogène":
        setState(() {
          RESISTANCE_INSULINE = CORTISOL *
              IL *
              double.parse(tshController.text) /
              FRACTION_OESTROG;
        });
        break;
      case "Eosino x Lympho x IL / Cortisol":
        setState(() {
          EFFICACITE_IMMUNE =
              double.parse(eosinoController.text) * LMYPHO * IL / CORTISOL;
        });
        break;
      case "RA x IL x ACTH":
        setState(() {
          ENERGIE_SI = RGT * IL * ACTH;
        });
        break;
      case "IL x NIL /Métabolisme":
        setState(() {
          CONGESTION = IL * NIL / ACTIVITE_METABOLIQUE;
        });
        break;
      case "Histamine x T4 x IL x Tx cata":
        setState(() {
          STRESS_OXYDATIF =
              HISTAMINE * double.parse(t4Controller.text) * IL * TX_CATA;
        });
        break;
      case "Cata-ana x RGT x NIL":
        setState(() {
          RADICAUX_LIBRES = CATA_ANA * RGT * NIL;
        });
        break;
      case "LDH/CPK // TSH":
        setState(() {
          IND_RENDEMENT_THYROIDIEN = LDH_CPK / double.parse(tshController.text);
        });
        break;
      case "LDH/CPK // RGc":
        setState(() {
          ACTIVITES_TISSULARIES_THYROIDE = LDH_CPK / RAP_ANDROGENE;
        });
        break;
      case "TSH/T4":
        setState(() {
          IND_TRH = double.parse(tshController.text) /
              double.parse(t4Controller.text);
        });
        break;
      case "CA 199/CEA":
        setState(() {
          IMP_THYREO_SOMATO = double.parse(ca199Controller.text) /
              double.parse(ceaController.text);
        });
        break;
      case "CA 125/CEA":
        setState(() {
          IMPLIC_FOLLICULAIRE = double.parse(ca125Controller.text) /
              double.parse(ceaController.text);
        });
        break;
      case "TSH / Ostéocalcine":
        setState(() {
          IND_ACTIV_METAB_OESTROGENE = double.parse(tshController.text) /
              double.parse(osteocalController.text);
        });
        break;
      case "Oestrogene métab/ RG":
        setState(() {
          ANDROGENE_METABOLIQUE = double.parse(tshController.text) /
              double.parse(osteocalController.text);
        });
        break;
      case "Lympho/ ostéocalcine":
        setState(() {
          IND_ACTIV_TISSULAIRE_OESTROGENE =
              LMYPHO / double.parse(osteocalController.text);
        });
        break;
      case "LDH / Ostéocalcine":
        setState(() {
          FRACT_METAB_OESTROGENES = double.parse(tshController.text) /
              double.parse(osteocalController.text);
        });
        break;
      case "Œstrogène métab/ androg. Surr x RGl":
        setState(() {
          PROGESTERONE = double.parse(tshController.text) /
              double.parse(osteocalController.text);
        });
        break;
      case "TSH x RA x Ostéocalcine/ index croissance":
        setState(() {
          IND_SOMATOSTATINE = double.parse(tshController.text) *
              RGT *
              double.parse(osteocalController.text);
        });
        break;
      case "TSH x TSH x RA x Iso-os / cata-ana":
        setState(() {
          // IND_PROLACTINE = double.parse(tshController.text) *
          //     double.parse(tshController.text) *
          //     RGT *
          //     ISO_OS /
          //     CATA_ANA;
        });
        break;
      case "40(tx cata + tx ana)/TSH x TSH x Iso-os":
        // setState(() {
        //   FRACTURE_MEMBRANAIRE = 40 *
        //       (CATA_ANA + TX_ANA) /
        //       (double.parse(tshController.text) *
        //           double.parse(tshController.text) *
        //           ISO_OS);
        // });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Physiological Constants'),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('Constantes Physiologiques')),
                DataColumn(
                  label: Text(''),
                ),
                DataColumn(label: Text('Index')),
                DataColumn(label: Text('')),
                DataColumn(
                    label: Text('Formule Index',
                        style: TextStyle(color: Colors.red))),
                DataColumn(
                    label: Text('Valeurs Normales',
                        style: TextStyle(color: Colors.red))),
                DataColumn(label: Text('Conclusions')),
              ],
              // rows: List<DataRow>.generate(
              //   _constantesPhysiologiques.length, // Total number of rows
              //   (int index) => DataRow(
              //     cells: <DataCell>[
              //       DataCell(Text(_constantesPhysiologiques[index])),
              //       DataCell(
              //         SizedBox(
              //           width: 75, // Adjust the width as needed
              //           child: TextFormField(
              //             controller:
              //                 _constantesPhysiologiquesControllers[index],
              //             decoration: const InputDecoration(
              //               border: OutlineInputBorder(),
              //               contentPadding: EdgeInsets.symmetric(
              //                   vertical: 10, horizontal: 12),
              //             ),
              //           ),
              //         ),
              //       ),
              //       // Empty column for input
              //       DataCell(Text(_indexes[index])),
              //       DataCell(
              //         SizedBox(
              //           width: 75, // Adjust the width as needed
              //           child: TextFormField(
              //             controller: _indexesControllers[index],
              //             decoration: const InputDecoration(
              //               border: OutlineInputBorder(),
              //               contentPadding: EdgeInsets.symmetric(
              //                   vertical: 10, horizontal: 12),
              //             ),
              //           ),
              //         ),
              //       ), // Empty column for input
              //       DataCell(Text(
              //         _formulesIndex[index],
              //         style: const TextStyle(color: Colors.red),
              //       )),
              //       DataCell(Text('Normal Values ${index + 1}')),
              //       DataCell(
              //         Text(
              //           calculateConclusion(
              //             _constantesPhysiologiquesControllers[index].text,
              //             _indexesControllers[index].text,
              //             _formulesIndex[index],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // rows: List<DataRow>.generate(
              //   _dataCellList.length,
              //   (int index) => DataRow(
              //     cells: <DataCell>[
              //       DataCell(Text(_dataCellList[index])),
              //       const DataCell(TextField()), // Empty column for input
              //     ],
              //   ),
              // ),

              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('GR')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          // controller: _constantesPhysiologiquesControllers[0],
                          controller: grController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("GR/GB");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('RG')),
                    DataCell(Text(RG.toString())),
                    const DataCell(
                      Text(
                        'GR/GB',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,8-0,96', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text("CONCLUSION"),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('GB')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: gbController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("GR/GB");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('RGT')),
                    DataCell(
                      Text(RGT.toString()),
                    ),
                    const DataCell(
                      Text(
                        'PN/LYMPHO',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('1,5-2,5', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(""),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('VGM')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("RGT/RG");
                            });
                          },
                          controller: vgmController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('CATA/ANA')),
                    DataCell(
                      Text(CATA_ANA.toString()),
                    ),
                    const DataCell(
                      Text(
                        'RGT/RG',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text(
                      '1,8-3',
                      style: TextStyle(color: Colors.red),
                    )),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('CMH')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: cmhController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("Cata-Ana/RA");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('CORTISOL')),
                    DataCell(
                      Text(CORTISOL.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Cata-Ana/ RA',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text(
                      '3-7',
                      style: TextStyle(color: Colors.red),
                    )),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('Hb')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: hbController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("Cata-Ana/RG");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('ACT SURR')),
                    DataCell(
                      Text(ACTIV_SURR.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Cata-Ana/ RG',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        '2,7-3,3',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('PN')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: pnController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("PN/LYMPHO");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('IND. SURR')),
                    DataCell(
                      Text(IND_SURR.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Cortisol / act. surr',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        '1,2-2',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('LYMPHO')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: lymphoController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("PN/LYMPHO");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Aromatisation')),
                    DataCell(
                      Text(AROMATISATION.toString()),
                    ),
                    const DataCell(
                      Text(
                        'RA / RGxRG',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        '0,6-1,2',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('EOSINO')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: eosinoController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("RA/RG");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Permissivité')),
                    DataCell(
                      Text(PERMISSIVITE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'RA / RG',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        '0,3-0,72',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('MONO')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: monoController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("Mono/Lympho");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Sol. Thyr')),
                    DataCell(
                      Text(SOL_THYR.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Mono / Lympho',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        '0,09-0,14',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('BASO')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: basoController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("1/CortisolxRGT");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('I.L')),
                    DataCell(
                      Text(IL.toString()),
                    ),
                    const DataCell(
                      Text(
                        '1 /Cortisol x RGT',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        '0,1-0,16',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('PLAQ')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: plaqController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("PN+Mono/EosinoxLympho");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Structure fn')),
                    DataCell(
                      Text(STRUCTURE_FN.toString()),
                    ),
                    const DataCell(
                      Text(
                        'PN + Mono / Eosino x lympho',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        '0,5-1,5',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('LDH')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: ldhController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("PN/Mono");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Fraction oestrog.')),
                    DataCell(
                      Text(FRACTION_OESTROG.toString()),
                    ),
                    const DataCell(
                      Text(
                        'PN / Mono',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        '8,5-15',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('CPK')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: cpkController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("RG/Cortisol");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Rap. Androgène ')),
                    DataCell(
                      Text(RAP_ANDROGENE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'RG / Cortisol',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text(
                      '0,05-0,09',
                      style: TextStyle(color: Colors.red),
                    )),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('Ca')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: caController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("Plaq/Lympho");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Plaq/ lympho')),
                    DataCell(
                      Text(PLAQ_LMYPHO.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Plq / lympho',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text(
                      '4-10',
                      style: TextStyle(color: Colors.red),
                    )),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('Na')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: naController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("RAxEosinoxPlq/Activ.surr");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Histamine')),
                    DataCell(
                      Text(HISTAMINE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'RA x Eosino x Plq / Activ. surr',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text(
                      '20-70',
                      style: TextStyle(color: Colors.red),
                    )),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('K+')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: kController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("EosinoxPlq/Cortisol");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('N.I.S')),
                    DataCell(
                      Text(NIS.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Eosino x Plq / Cortisol',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text(
                      '20-90',
                      style: TextStyle(color: Colors.red),
                    )),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('CL-')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: clController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("N.I.S/Histamine");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('N.I.L')),
                    DataCell(
                      Text(NIL.toString()),
                    ),
                    const DataCell(
                      Text(
                        'N.I.S / Histamine',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,9-1,1', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('HCO3')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: hco3Controller,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("PlqxPNxHb/30xGB");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('M.L')),
                    DataCell(
                      Text(ML.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Plq x PN x Hb /30x GB',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,85-1,15', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('TSH')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: tshController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("Plq/60xGR");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('M.P')),
                    DataCell(
                      Text(MP.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Plq /60x GR',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,85-1,15', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('T3')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: t3Controller,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("ML/MP");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Starter')),
                    DataCell(
                      Text(STARTER.toString()),
                    ),
                    const DataCell(
                      Text(
                        'ML / MP',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,85-1,15', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('T4')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: t4Controller,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("LDH/Activ.surr");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Tx CATA')),
                    DataCell(
                      Text(TX_CATA.toString()),
                    ),
                    const DataCell(
                      Text(
                        'LDH/Activ. surr',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('1,3-1,6', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('OSTEOCAL.')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: osteocalController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("TxCata/Cata-ana");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Tx ANA')),
                    DataCell(
                      Text(TX_ANA.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Tx Cata / Cata-ana',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,65-0,8', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('PA iso-osseux')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: paIsoOsseuxController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("(Txcata+txana)x100/2.25)");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Activité Métabolique')),
                    DataCell(
                      Text(ACTIVITE_METABOLIQUE.toString()),
                    ),
                    const DataCell(
                      Text(
                        '(Tx cata + tx ana)x100 /2,25',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('80-100', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('Glycémie')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: glycemieController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("LDH/CPK");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('LDH/CPK')),
                    DataCell(
                      Text(LDH_CPK.toString()),
                    ),
                    const DataCell(
                      Text(
                        'LDH/CPK',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('3,5-5,5', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('Cholestérol')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: cholesterolController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("K+/Ca++");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('IND. Adaptogene ')),
                    DataCell(
                      Text(IND_ADAPTOGENE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'K+/Ca++',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,8-0,9', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('LDL')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: ldlController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("LDH/CPK // K/Ca");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('B MSH/ A MSH')),
                    DataCell(
                      Text(B_MSH_A_MSH.toString()),
                    ),
                    const DataCell(
                      Text(
                        'LDH/CPK // K/Ca',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('3,2-4,5', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('HDL')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: hdlController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("T3/T4");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('T3/T4')),
                    DataCell(
                      Text(T3_T4.toString()),
                    ),
                    const DataCell(
                      Text(
                        'T3/T4',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,2-0,4', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('TRIGLYCÉRIDES')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: triglyceridesController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("Histamine / B MSH / A MSH");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Histamine potentielle ')),
                    DataCell(
                      Text(HISTAMINE_POTENTIELLE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Histamine / B MSH/ A MSH',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('6-12', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('PTH')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: pthController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("HistaminePot/plq/lympho");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('ACTH')),
                    DataCell(
                      Text(ACTH.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Histamine Pot/ plq/lympho',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('0,7-3 F 0,3-2 H',
                        style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('AZOTÉMIE')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: azotemieController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("K x Cortisol / Na+");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('ALDOSTÉRONE')),
                    DataCell(
                      Text(ALDOSTERONE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'K x Cortisol/ Na+',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,003-0,1', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('Créatininémie')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: creatininemieController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("Cortisol x starter");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Sérotonine périphérique')),
                    DataCell(
                      Text(SEROTONINE_PERIPHERIQUE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Cortiso x starter',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('1,5-7,5', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('Acide urique')),
                    const DataCell(
                      Text(""),
                    ),
                    const DataCell(Text('Hyper insulinisme')),
                    const DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(
                      Text(
                        '',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('Transaminases SGOT')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: transaminasesSgotController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion(
                                  "Cortisol x IL x TSH /Fract. Œstrogène");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Résistance insuline')),
                    DataCell(
                      Text(RESISTANCE_INSULINE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Cortisol x IL x TSH /Fract. Œstrogène',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,3-5,6+', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('SGPT')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: sgptController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion(
                                  "Eosino x Lympho x IL / Cortisol");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Efficacité immune')),
                    DataCell(
                      Text(EFFICACITE_IMMUNE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Eosino x Lympho x IL / Cortisol',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,3-24', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('VS 1: 2: ')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: vs12Controller,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("RA x IL x ACTH");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Énergie S.I')),
                    DataCell(
                      Text(ENERGIE_SI.toString()),
                    ),
                    const DataCell(
                      Text(
                        'RA x IL x ACTH',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('0,018-0,24',
                        style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('HB glyquée')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: hbGlyqueeController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("IL x NIL /Métabolisme");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Congestion')),
                    DataCell(
                      Text(CONGESTION.toString()),
                    ),
                    const DataCell(
                      Text(
                        'IL x NIL /Métabolisme',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('CA 15-53')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: ca1553Controller,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion(
                                  "Histamine x T4 x IL x Tx cata");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Stress oxydatif')),
                    DataCell(
                      Text(STRESS_OXYDATIF.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Histamine x T4 x IL x Tx cata',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('CEA')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: ceaController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("Cata-ana x RGT x NIL");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Radicaux libres')),
                    DataCell(
                      Text(RADICAUX_LIBRES.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Cata-ana x RGT x NIL',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('2,4-8,25', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('CA 199')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: ca199Controller,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("LDH/CPK // TSH");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Ind. Rendement thyroidien')),
                    DataCell(
                      Text(IND_RENDEMENT_THYROIDIEN.toString()),
                    ),
                    const DataCell(
                      Text(
                        'LDH/CPK // TSH',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('2-3 F 1,5-2,5 H',
                        style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('CA 125')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: ca125Controller,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("LDH/CPK // RGc");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('Activités tissulaires thyroide')),
                    DataCell(
                      Text(ACTIVITES_TISSULARIES_THYROIDE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'LDH/CPK // RGc',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('1,4-3,7', style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('PSA')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: psaController,
                          onChanged: (value) {
                            setState(() {
                              calculateConclusion("TSH/T4");
                            });
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const DataCell(Text('IND TRH')),
                    DataCell(
                      Text(IND_TRH.toString()),
                    ),
                    const DataCell(
                      Text(
                        'TSH/T4',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('')),
                    const DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(Text('IND Implication thyroide')),
                    DataCell(
                      Text(IND_IMPLICATION_THYROIDE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'CA 15-3/CEA',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('')),
                    const DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(Text('Imp. Thyréo somato')),
                    DataCell(
                      Text(IMP_THYREO_SOMATO.toString()),
                    ),
                    const DataCell(
                      Text(
                        'CA 199/CEA',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('')),
                    const DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(Text('Implic folliculaire')),
                    DataCell(
                      Text(IMPLIC_FOLLICULAIRE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'CA 125 / CEA',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('')),
                    const DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(Text('Ind activ metab oestrogene')),
                    DataCell(
                      Text(IND_ACTIV_METAB_OESTROGENE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'TSH / Ostéocalcine',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('0,2-0,4 F 0,15-0,25 H',
                        style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('')),
                    const DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(Text('Androgene métabolique')),
                    DataCell(
                      Text(ANDROGENE_METABOLIQUE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Oestrogene métab/ RG',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('0,2-0,25 F 0,2-0,3 H',
                        style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('')),
                    const DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(Text('Ind activ tissulaire œstrogène')),
                    DataCell(
                      Text(IND_ACTIV_TISSULAIRE_OESTROGENE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Lympho/ ostéocalcine',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('')),
                    const DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(Text('Index de croissance')),
                    const DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(
                      Text(
                        '',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    const DataCell(
                      Text(""),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(Text('Index turn over')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(
                      Text(
                        '',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(Text('Ind. Anti croissance')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(
                      Text(
                        '',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('')),
                    const DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(Text('Fract. Métab des œstrogènes')),
                    DataCell(
                      Text(FRACT_METAB_OESTROGENES.toString()),
                    ),
                    const DataCell(
                      Text(
                        'LDH / Ostéocalcine',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('')),
                    const DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(Text('progestérone')),
                    DataCell(
                      Text(PROGESTERONE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'Œstrogène métab/ androg. Surr x RG',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('4-8F 3-6 H',
                        style: TextStyle(color: Colors.red))),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('')),
                    const DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(Text('Ind somatostatine')),
                    DataCell(
                      Text(IND_SOMATOSTATINE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'TSH x RA x Ostéocalcine/ index croissance',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('')),
                    const DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(Text('Ind prolactine')),
                    DataCell(
                      Text(IND_PROLACTINE.toString()),
                    ),
                    const DataCell(
                      Text(
                        'TSH x TSH x RA x Iso-os / cata-ana',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('')),
                    const DataCell(
                      SizedBox(
                        width: 75,
                        child: Text(""),
                      ),
                    ),
                    const DataCell(Text('Fracture membranaire')),
                    DataCell(
                      Text(FRACTURE_MEMBRANAIRE.toString()),
                    ),
                    const DataCell(
                      Text(
                        '40(tx cata + tx ana)/TSH x TSH x Iso-os',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    const DataCell(
                      Text(
                        "",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
