import 'package:collection/collection.dart';
import 'package:sosedifedi/data/models/sbp_response/sbp_response.dart';
import 'package:sosedifedi/domain/models/sbp_bank/sbp_bank.dart';
import 'package:injectable/injectable.dart';

@singleton
class SbpMapper {
  List<SbpBank> banksFromResponse(SbpResponse response, Uri qrUrl) {
    final result = response.dictionary.map((bank) {
      if (bank.bankName == null ||
          bank.packageName == null ||
          bank.schema == null) {
        return null;
      }
      return SbpBank(
        bankName: bank.bankName!,
        uri: _transformUrl(qrUrl, bank),
        logoURL: bank.logoURL,
      );
    });
    return result.whereNotNull().toList();
  }

  Uri _transformUrl(Uri url, SbpBankResponse bank) {
    assert(bank.bankName != null &&
        bank.packageName != null &&
        bank.schema != null);
    return url.replace(scheme: bank.schema);
  }
}
