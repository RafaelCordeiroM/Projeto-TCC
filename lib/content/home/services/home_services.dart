import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fiscal_validator/global/constants/constants.dart';
import 'package:fiscal_validator/global/models/xml_model.dart';
import 'package:intl/intl.dart';

class HomeServices {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future sendFilesToFirestore(List<XMLModel> xmls) async {
    Map<String, int> fileCountsByPeriod = {};
    Map<String, double> totalValuesByPeriod = {};

    for (var xml in xmls) {
      final periodKey = xml.dataEmissao != null ? DateFormat('MMyyyy').format(xml.dataEmissao!) : 'MISSINGS';

      fileCountsByPeriod[periodKey] = (fileCountsByPeriod[periodKey] ?? 0) + 1;

      totalValuesByPeriod[periodKey] = (totalValuesByPeriod[periodKey] ?? 0) + (xml.valor);
    }

    for (var xml in xmls) {
      Map<String, dynamic> company = {'cnpj': xml.cnpj, 'companyName': xml.nomeEmpresa};
      await _firestore.collection(Constants.companyCollection).doc(xml.cnpj).set(company);

      final periodKey = xml.dataEmissao != null ? DateFormat('MMyyyy').format(xml.dataEmissao!) : 'MISSINGS';
      int qtyFiles = fileCountsByPeriod[periodKey]!;
      double totalValue = totalValuesByPeriod[periodKey]!;

      Map<String, dynamic> periodData = {
        'date': DateFormat('MM/yyyy').format(xml.dataEmissao!),
        'filesCount': qtyFiles,
        'readedTotalValue': totalValue,
      };

      await _firestore.collection(Constants.companyCollection).doc(xml.cnpj).collection(Constants.archivesCollection).doc(periodKey).set(periodData);

      Map<String, dynamic> xmlData = {
        'number': xml.numero,
        'key': xml.chave,
        'issueDate': xml.dataEmissao,
        'value': xml.valor,
        'status': xml.status,
      };

      await _firestore.collection(Constants.companyCollection).doc(xml.cnpj).collection(Constants.archivesCollection).doc(periodKey).collection('xmls').doc(xml.chave ?? 'INCORRETO').set(xmlData);
    }
  }
}
