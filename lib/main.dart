import 'package:flutter/material.dart';

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
  TextEditingController grController = TextEditingController();
  TextEditingController gbController = TextEditingController();
  TextEditingController vgmController = TextEditingController();
  TextEditingController cmhController = TextEditingController();
  TextEditingController hbController = TextEditingController();
  TextEditingController pnController = TextEditingController();
  TextEditingController lymphoController = TextEditingController();
  TextEditingController eosinoController = TextEditingController();
  TextEditingController monoController = TextEditingController();
  TextEditingController basoController = TextEditingController();
  TextEditingController plaqController = TextEditingController();
  TextEditingController ldhController = TextEditingController();
  TextEditingController cpkController = TextEditingController();
  TextEditingController caController = TextEditingController();
  TextEditingController naController = TextEditingController();
  TextEditingController kController = TextEditingController();
  TextEditingController clController = TextEditingController();
  TextEditingController hco3Controller = TextEditingController();
  TextEditingController t3Controller = TextEditingController();
  TextEditingController t4Controller = TextEditingController();
  TextEditingController osteocalController = TextEditingController();
  TextEditingController paIsoOsseuxController = TextEditingController();
  TextEditingController glycemieController = TextEditingController();
  TextEditingController cholesterolController = TextEditingController();
  TextEditingController ldlController = TextEditingController();
  TextEditingController hdlController = TextEditingController();
  TextEditingController triglyceridesController = TextEditingController();
  TextEditingController pthController = TextEditingController();
  TextEditingController azotemieController = TextEditingController();
  TextEditingController creatininemieController = TextEditingController();
  TextEditingController acideUriqueController = TextEditingController();
  TextEditingController transaminasesSgotController = TextEditingController();
  TextEditingController sgptController = TextEditingController();
  TextEditingController vs12Controller = TextEditingController();
  TextEditingController hbGlyqueeController = TextEditingController();
  TextEditingController ca1553Controller = TextEditingController();
  TextEditingController ceaController = TextEditingController();
  TextEditingController ca199Controller = TextEditingController();
  TextEditingController ca125Controller = TextEditingController();
  TextEditingController psaController = TextEditingController();

  // INDEXES
  TextEditingController rgController = TextEditingController();
  TextEditingController rgtController = TextEditingController();
  TextEditingController cataAnaController = TextEditingController();
  TextEditingController cortisolController = TextEditingController();
  TextEditingController actSurrController = TextEditingController();
  TextEditingController indSurrController = TextEditingController();
  TextEditingController aromatisationController = TextEditingController();
  TextEditingController permissiviteController = TextEditingController();
  TextEditingController solThyrController = TextEditingController();
  TextEditingController ilController = TextEditingController();
  TextEditingController structureFnController = TextEditingController();
  TextEditingController fractionOestrogController = TextEditingController();
  TextEditingController rapAndrogeneController = TextEditingController();
  TextEditingController plaqLymphoController = TextEditingController();
  TextEditingController histamineController = TextEditingController();
  TextEditingController nisController = TextEditingController();
  TextEditingController nilController = TextEditingController();
  TextEditingController mlController = TextEditingController();
  TextEditingController mpController = TextEditingController();
  TextEditingController starterController = TextEditingController();
  TextEditingController txCataController = TextEditingController();
  TextEditingController txAnaController = TextEditingController();
  TextEditingController activiteMetaboliqueController = TextEditingController();
  TextEditingController ldhCpkController = TextEditingController();
  TextEditingController indAdaptogeneController = TextEditingController();
  TextEditingController bMshAMshController = TextEditingController();
  TextEditingController t3T4Controller = TextEditingController();
  TextEditingController histaminePotentielleController =
      TextEditingController();
  TextEditingController acthController = TextEditingController();
  TextEditingController aldosteroneController = TextEditingController();
  TextEditingController serotoninePeriphController = TextEditingController();
  TextEditingController hyperInsulinismeController = TextEditingController();
  TextEditingController resistanceInsulineController = TextEditingController();
  TextEditingController efficaciteImmuneController = TextEditingController();
  TextEditingController energieSIController = TextEditingController();
  TextEditingController congestionController = TextEditingController();
  TextEditingController stressOxydatifController = TextEditingController();
  TextEditingController radicauxLibresController = TextEditingController();
  TextEditingController indRendementThyroidienController =
      TextEditingController();
  TextEditingController activitesTissulairesThyroideController =
      TextEditingController();
  TextEditingController indTrhController = TextEditingController();
  TextEditingController indImplicationThyroideController =
      TextEditingController();
  TextEditingController impThyroSomatoController = TextEditingController();
  TextEditingController implicFolliculaireController = TextEditingController();
  TextEditingController indActivMetabOestrogeneController =
      TextEditingController();
  TextEditingController androgeneMetaboliqueController =
      TextEditingController();
  TextEditingController indActivTissulaireOestrogeneController =
      TextEditingController();
  TextEditingController indexCroissanceController = TextEditingController();
  TextEditingController indexTurnOverController = TextEditingController();
  TextEditingController indAntiCroissanceController = TextEditingController();
  TextEditingController fractMetabOestrogenesController =
      TextEditingController();
  TextEditingController progesteroneController = TextEditingController();
  TextEditingController indSomatostatineController = TextEditingController();
  TextEditingController indProlactineController = TextEditingController();
  TextEditingController fractureMembranaireController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  String calculateConclusion(String value1, String value2, String formula) {
    return "";
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
                          controller: _constantesPhysiologiquesControllers[0],
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
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[0],
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
                    const DataCell(
                      Text(
                        'GR/GB',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,8-0,96', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[0].text,
                          _indexesControllers[0].text,
                          'GR/GB',
                        ),
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('GB')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    DataCell(Text('RGT')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'PN/LYMPHO',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('1,5-2,5', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
                      ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'N.I.S / Histamine',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,9-1,1', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'Plq x PN x Hb /30x GB',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,85-1,15', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'Plq /60x GR',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,85-1,15', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'ML / MP',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,85-1,15', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'LDH/Activ. surr',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('1,3-1,6', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'Tx Cata / Cata-ana',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,65-0,8', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        '(Tx cata + tx ana)x100 /2,25',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('80-100', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'LDH/CPK',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('3,5-5,5', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'K+/Ca++',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,8-0,9', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'LDH/CPK // K/Ca',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('3,2-4,5', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'T3/T4',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,2-0,4', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'Histamine / B MSH/ A MSH',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('6-12', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'Histamine Pot/ plq/lympho',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('0,7-3 F 0,3-2 H',
                        style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'K x Cortisol/ Na+',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,003-0,1', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'Cortiso x starter',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('1,5-7,5', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    const DataCell(Text('Acide urique')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('Hyper insulinisme')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'Cortisol x IL x TSH /Fract. Œstrogène',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,3-5,6+', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'Eosino x Lympho x IL / Cortisol',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('0,3-24', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'RA x IL x ACTH',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('0,018-0,24',
                        style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'IL x NIL /Métabolisme',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'Histamine x T4 x IL x Tx cata',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'Cata-ana x RGT x NIL',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('2,4-8,25', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'LDH/CPK // TSH',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('2-3 F 1,5-2,5 H',
                        style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'LDH/CPK // RGc',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(
                        Text('1,4-3,7', style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                          controller: _constantesPhysiologiquesControllers[1],
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
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'TSH/T4',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('IND Implication thyroide')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'CA 15-3/CEA',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('Imp. Thyréo somato')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'CA 199/CEA',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('Implic folliculaire')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'CA 125 / CEA',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('Ind activ metab oestrogene')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'TSH / Ostéocalcine',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('0,2-0,4 F 0,15-0,25 H',
                        style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('Androgene métabolique')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'Oestrogene métab/ RG',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('0,2-0,25 F 0,2-0,3 H',
                        style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('Ind activ tissulaire œstrogène')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'Lympho/ ostéocalcine',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('Index de croissance')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        '',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('Index turn over')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        '',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('Ind. Anti croissance')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        '',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('Fract. Métab des œstrogènes')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'LDH / Ostéocalcine',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('progestérone')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'Œstrogène métab/ androg. Surr x RG',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('4-8F 3-6 H',
                        style: TextStyle(color: Colors.red))),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('Ind somatostatine')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'TSH x RA x Ostéocalcine/ index croissance',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('Ind prolactine')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        'TSH x TSH x RA x Iso-os / cata-ana',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
                        child: TextFormField(
                          controller: _constantesPhysiologiquesControllers[1],
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
                    const DataCell(Text('Fracture membranaire')),
                    DataCell(
                      SizedBox(
                        width: 75,
                        child: TextFormField(
                          controller: _indexesControllers[1],
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
                    const DataCell(
                      Text(
                        '40(tx cata + tx ana)/TSH x TSH x Iso-os',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    const DataCell(Text('')),
                    DataCell(
                      Text(
                        calculateConclusion(
                          _constantesPhysiologiquesControllers[1].text,
                          _indexesControllers[1].text,
                          'PN/LYMPHO',
                        ),
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
