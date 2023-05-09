import 'package:hive_flutter/hive_flutter.dart';
part 'model.g.dart';


@HiveType(typeId: 1)
class ModuleItem {
  @HiveField(0)
  String moduleId;
  @HiveField(1)
  String parentModule;
  @HiveField(2)
  String moduleName;
  @HiveField(3)
  String? moduleCategory;
  @HiveField(4)
  String? moduleUrl;
  @HiveField(5)
  String? moduleUrl2;
  @HiveField(6)
  String? merchantID;
  @HiveField(7)
  bool? isMainMenu;
  @HiveField(8)
  bool? isDisabled;
  @HiveField(9)
  bool? isHidden;
  @HiveField(10)
  double? displayOrder;

  ModuleItem(
      {required this.parentModule,
        required this.moduleUrl,
        required this.moduleId,
        required this.moduleName,
         this.moduleCategory,
        required this.merchantID,
        this.isMainMenu,
        this.isDisabled,
        this.isHidden,
        this.moduleUrl2,
        this.displayOrder});

  ModuleItem.fromJson(Map<String, dynamic> json)
      : parentModule = json["ParentModule"],
        moduleUrl = json["ModuleURL"],
        moduleUrl2 = json["ModuleURL2"],
        moduleId = json["ModuleID"],
        moduleName = json["ModuleName"],
        moduleCategory = json["ModuleCategory"],
        merchantID = json["MerchantID"],
        isMainMenu = json["IsMainMenu"],
        isDisabled = json["IsDisabled"],
        isHidden = json["IsHidden"],
        displayOrder = json['DisplayOrder'];
}

@HiveType(typeId: 2)
class FormItem {
  @HiveField(0)
  int? no;
  @HiveField(1)
  String? controlType;
  @HiveField(2)
  String? controlText;
  @HiveField(3)
  String? moduleId;
  @HiveField(4)
  String? controlId;
  @HiveField(5)
  String? containerID;
  @HiveField(6)
  String? actionId;
  @HiveField(7)
  String? linkedToControl;
  @HiveField(8)
  int? formSequence;
  @HiveField(9)
  String? serviceParamId;
  @HiveField(10)
  double? displayOrder;
  @HiveField(11)
  String? controlFormat;
  @HiveField(12)
  String? dataSourceId;
  @HiveField(13)
  String? controlValue;
  @HiveField(14)
  bool? isMandatory;
  @HiveField(15)
  bool? isEncrypted;
  @HiveField(16)
  String? minValue;
  @HiveField(17)
  String? maxValue;
  @HiveField(18)
  bool? hidden;

  @HiveField(19)
  FormItem(
      {required this.controlType,
        required this.controlText,
        required this.moduleId,
        this.linkedToControl,
        this.controlId,
        this.containerID,
        this.actionId,
        this.formSequence,
        this.serviceParamId,
        this.displayOrder,
        this.controlFormat,
        this.dataSourceId,
        this.controlValue,
        this.isMandatory,
        this.isEncrypted,
        this.minValue,
        this.maxValue,
        this.hidden});

  FormItem.fromJson(Map<String, dynamic> json) {
    controlType = json['ControlType'];
    controlText = json['ControlText'];
    moduleId = json['ModuleID'];
    linkedToControl = json['LinkedToControl'];
    controlId = json['ControlID'];
    containerID = json["ContainerID"];
    actionId = json['ActionID'];
    formSequence = json['FormSequence'];
    serviceParamId = json['ServiceParamID'];
    displayOrder = json['DisplayOrder'];
    isMandatory = json['IsMandatory'];
    isEncrypted = json['IsEncrypted'];
    controlFormat = json['ControlFormat'];
    dataSourceId = json['DataSourceID'];
    controlValue = json['ControlValue'];
    minValue = json['MinValue'];
    maxValue = json["MaxValue"];
    hidden = json["Hidden"];
  }
}

@HiveType(typeId: 3)
class ActionItem {
  @HiveField(0)
  int? no;
  @HiveField(1)
  String moduleID;
  @HiveField(2)
  String actionType;
  @HiveField(3)
  String webHeader;
  @HiveField(4)
  String? controlID;
  @HiveField(5)
  String? displayFormID;
  @HiveField(6)
  String? confirmationModuleID;

  ActionItem(
      {required this.moduleID,
        required this.actionType,
        required this.webHeader,
        this.controlID,
        this.displayFormID,
        this.confirmationModuleID});

  ActionItem.fromJson(Map<String, dynamic> json)
      : moduleID = json["ModuleID"],
        actionType = json["ActionType"],
        webHeader = json["WebHeader"],
        controlID = json["ControlID"],
        displayFormID = json["DisplayFormID"],
        confirmationModuleID = json["ConfirmationModuleID"];
}

@HiveType(typeId: 4)
class UserCode {
  @HiveField(0)
  int? no;
  @HiveField(1)
  String id;
  @HiveField(2)
  String subCodeId;
  @HiveField(3)
  String? description;
  @HiveField(4)
  String? relationId;
  @HiveField(5)
  String? extraField;
  @HiveField(6)
  int? displayOrder;
  @HiveField(7)
  bool? isDefault;
  @HiveField(8)
  String? extraFieldName;

  UserCode(
      {required this.id,
        required this.subCodeId,
        this.description,
        this.relationId,
        this.extraField,
        this.displayOrder,
        this.isDefault,
        this.extraFieldName});

  UserCode.fromJson(Map<String, dynamic> json)
      : id = json["ID"],
        subCodeId = json["SubCodeID"],
        description = json["Description"],
        relationId = json["RelationID"],
        extraField = json["ExtraField"],
        displayOrder = json["DisplayOrder"],
        isDefault = json["IsDefault"],
        extraFieldName = json["ExtraFieldName"];
}

@HiveType(typeId: 5)
class OnlineAccountProduct {
  @HiveField(0)
  int? no;
  @HiveField(2)
  String? id;
  @HiveField(3)
  String? description;
  @HiveField(4)
  String? relationId;
  @HiveField(5)
  String? url;

  OnlineAccountProduct({this.id, this.description, this.relationId, this.url});

  OnlineAccountProduct.fromJson(Map<String, dynamic> json)
      : id = json["ID"],
        description = json["Description"],
        relationId = json["RelationID"],
        url = json["Urls"];
}

@HiveType(typeId: 6)
class BankBranch {
  @HiveField(0)
  int? no;
  @HiveField(1)
  String? description;
  @HiveField(2)
  String? relationId;

  BankBranch({this.description, this.relationId});

  BankBranch.fromJson(Map<String, dynamic> json)
      : description = json["Description"],
        relationId = json["RelationID"];
}

@HiveType(typeId: 7)
class ImageData {
  @HiveField(0)
  int? no;
  @HiveField(1)
  String? imageUrl;
  @HiveField(2)
  String? imageInfoUrl;
  @HiveField(3)
  String? imageCategory;

  ImageData({this.no, this.imageUrl, this.imageInfoUrl, this.imageCategory});

  ImageData.fromJson(Map<String, dynamic> json)
      : imageUrl = json['ImageURL'],
        imageInfoUrl = json['ImageInfoURL'],
        imageCategory = json['ImageCategory'];
}

@HiveType(typeId: 8)
class AtmLocation {
  @HiveField(0)
  int? no;
  @HiveField(1)
  double longitude;
  @HiveField(2)
  double latitude;
  @HiveField(3)
  String location;

  AtmLocation(
      {required this.longitude,
        required this.latitude,
        required this.location});

  AtmLocation.fromJson(Map<String, dynamic> json)
      : longitude = json["Longitude"],
        latitude = json["Latitude"],
        location = json["Location"];
}

@HiveType(typeId: 9)
class BranchLocation {
  @HiveField(0)
  int? no;
  @HiveField(1)
  double longitude;
  @HiveField(2)
  double latitude;
  @HiveField(3)
  String location;

  BranchLocation(
      {required this.longitude,
        required this.latitude,
        required this.location});

  BranchLocation.fromJson(Map<String, dynamic> json)
      : longitude = json["Longitude"],
        latitude = json["Latitude"],
        location = json["Location"];
}

@HiveType(typeId: 10)
class BankAccount {
  @HiveField(0)
  int? no;
  @HiveField(1)
  String bankAccountId;
  @HiveField(2)
  String aliasName;
  @HiveField(3)
  String currencyID;
  @HiveField(4)
  String accountType;
  @HiveField(5)
  bool groupAccount;
  @HiveField(6)
  bool defaultAccount;

  BankAccount(
      {required this.bankAccountId,
        this.aliasName = "",
        this.currencyID = "",
        this.accountType = "",
        required this.groupAccount,
        required this.defaultAccount});

  BankAccount.fromJson(Map<String, dynamic> json)
      : bankAccountId = json["BankAccountID"],
        aliasName = json["AliasName"],
        currencyID = json["CurrencyID"],
        accountType = json["AccountType"],
        groupAccount = json["GroupAccount"],
        defaultAccount = json["DefaultAccount"];
}

@HiveType(typeId: 11)
class FrequentAccessedModule {
  @HiveField(0)
  int? no;
  @HiveField(1)
  String parentModule;
  @HiveField(2)
  String moduleID;
  @HiveField(3)
  String moduleName;
  @HiveField(4)
  String moduleCategory;
  @HiveField(5)
  String moduleUrl;
  @HiveField(6)
  String? badgeColor;
  @HiveField(7)
  String? badgeText;
  @HiveField(8)
  String? merchantID;
  @HiveField(9)
  double? displayOrder;
  @HiveField(10)
  String? containerID;
  @HiveField(11)
  String? lastAccessed;

  FrequentAccessedModule(
      {required this.parentModule,
        required this.moduleID,
        required this.moduleName,
        required this.moduleCategory,
        required this.moduleUrl,
        required this.merchantID,
        this.badgeColor,
        this.badgeText,
        this.displayOrder,
        this.containerID,
        this.lastAccessed});

  FrequentAccessedModule.fromJson(Map<String, dynamic> json)
      : parentModule = json["ParentModule"],
        moduleID = json["ModuleID"],
        moduleName = json["ModuleName"],
        moduleCategory = json["ModuleCategory"],
        moduleUrl = json["ModuleURL"],
        merchantID = json["MerchantID"],
        badgeColor = json["BadgeColor"],
        badgeText = json["BadgeText"],
        displayOrder = json["DisplayOrder"],
        containerID = json["ContainerID"],
        lastAccessed = json["LastAccessed"];
}

@HiveType(typeId: 12)
class Beneficiary {
  @HiveField(0)
  int? no;
  @HiveField(1)
  int rowId;
  @HiveField(2)
  String merchantID;
  @HiveField(3)
  String merchantName;
  @HiveField(4)
  String accountID;
  @HiveField(5)
  String accountAlias;
  @HiveField(6)
  String? bankID;
  @HiveField(7)
  String? branchID;

  Beneficiary(
      {required this.merchantID,
        required this.merchantName,
        required this.accountID,
        required this.accountAlias,
        required this.rowId,
        this.bankID,
        this.branchID});

  Beneficiary.fromJson(Map<String, dynamic> json)
      : rowId = json["RowID"],
        merchantID = json["MerchantID"],
        merchantName = json["MerchantName"],
        accountID = json["AccountID"],
        accountAlias = json["AccountAlias"],
        bankID = json["BankID"],
        branchID = json["BranchID"];
}

@HiveType(typeId: 13)
class ModuleToHide {
  @HiveField(0)
  int? no;
  @HiveField(1)
  String moduleId;

  ModuleToHide({required this.moduleId});

  ModuleToHide.fromJson(Map<String, dynamic> json)
      : moduleId = json["ModuleID"];
}

@HiveType(typeId: 14)
class ModuleToDisable {
  @HiveField(0)
  int? no;
  @HiveField(1)
  String moduleID;
  @HiveField(2)
  String? merchantID;
  @HiveField(3)
  String? displayMessage;

  ModuleToDisable(
      {required this.moduleID, this.merchantID, this.displayMessage});

  ModuleToDisable.fromJson(Map<String, dynamic> json)
      : moduleID = json["ModuleID"],
        merchantID = json["MerchantID"],
        displayMessage = json["DisplayMessage"];
}

@HiveType(typeId: 15)
class PendingTrxDisplay {
  @HiveField(0)
  int? no;
  @HiveField(1)
  String name;
  @HiveField(2)
  String comments;
  @HiveField(3)
  String transactionType;
  @HiveField(4)
  String sendTo;
  @HiveField(5)
  double amount;
  @HiveField(6)
  String pendingUniqueID;

  PendingTrxDisplay(
      {required this.name,
        required this.comments,
        required this.transactionType,
        required this.sendTo,
        required this.amount,
        required this.pendingUniqueID});

  PendingTrxDisplay.fromJson(Map<String, dynamic> json)
      : name = json["Name"],
        comments = json["Comments"],
        transactionType = json["Trx Type"],
        sendTo = json["Send to"],
        amount = json["Amount"],
        pendingUniqueID = json["PendingUniqueID"];
}

//TODO Add Entity for service alerts
//TODO Add Entity for loanlimit
