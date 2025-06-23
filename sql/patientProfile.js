const {SP_STATUS}=require('../constants/constants');
const { executeStoredProcedureWithOutputParamsByPool } = require("../mysql/sql_executer");



exports.patient_registration_insert_update_sql = async (
  patientId,
   lastName,
      firstName,
      middleName,
      dateOfBirth,
      age,
      gender,
      email,
      homePhone,
      businessPhone,
      permanentAddress,
      referralSource,
      referralPartyPresent,
      saveType,
      userLogId,
      utcOffset,
      pageName,
      isConfirm
) => {
  try {
    
    // Define procedure parameters matching the SP
    const procedureParameters = [
      patientId,
      lastName,
      firstName,
      middleName,
      dateOfBirth,
      age,
      gender,
      email,
      homePhone,
      businessPhone,
      permanentAddress,
      referralSource,
      referralPartyPresent,
      saveType,
      userLogId,
      utcOffset,
      pageName,
      isConfirm
    ];
    
    // Define output parameters matching the SP
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage",
      "patientNo",
      "patientId"
    ];
    
    const procedureName = "patient_registration_insert_update";
    
    // Execute the stored procedure
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );
      console.log('result 0000:', result);
    const { responseStatus, outputMessage } = result.outputValues;
  
    
    // Check for failure
    if (responseStatus === 'failed') {
      return {responseStatus, outputMessage};
    }
    
    return result;
  } catch (error) {
    throw error;
  }
};


exports.personal_information_insert_update_sql = async (
  patientId,
  maritalStatus,
  yearsMarried,
  maleChildrenAges,
  femaleChildrenAges,
  religiosity,
  thingsLiked,
  assets,
  badPoints,
  socialDifficulties,
  loveSexDifficulties,
  schoolWorkDifficulties,
  lifeGoals,
  thingsToChange,
  occupationTrained,
  occupation,
  occupationFullTime,
  saveType,
  userLogId,
  utcOffset,
  pageName,
  isConfirm
) => {
  try {
    // Define procedure parameters matching the stored procedure input
    const procedureParameters = [
      patientId,
      maritalStatus,
      yearsMarried,
      maleChildrenAges,
      femaleChildrenAges,
      religiosity,
      thingsLiked,
      assets,
      badPoints,
      socialDifficulties,
      loveSexDifficulties,
      schoolWorkDifficulties,
      lifeGoals,
      thingsToChange,
      occupationTrained,
      occupation,
      occupationFullTime,
      saveType,
      userLogId,
      utcOffset,
      pageName,
      isConfirm
    ];

    // Output parameters as defined in the procedure
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage",
      "outputPatientId"
    ];

    const procedureName = "personal_information_insert_update";

    // Execute the stored procedure
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    console.log("result:", result);

    const { responseStatus, outputMessage } = result.outputValues;

    if (responseStatus === "failed") {
      return { responseStatus, outputMessage };
    }

    return result;
  } catch (error) {
    throw error;
  }
};


exports.family_information_insert_update_sql = async (
  patientId,
  spouseOccupation,
  spouseOccupationFullTime,
  motherAge,
  ageWhenMotherDied,
  fatherAge,
  ageWhenFatherDied,
  motherOccupation,
  fatherOccupation,
  motherReligion,
  fatherReligion,
  raisedBy,
  motherDescription,
  fatherDescription,
  parentalSeparationAge,
  parentalDivorceAge,
  motherDivorceCount,
  fatherDivorceCount,
  livingBrothers,
  livingSisters,
  brothersAges,
  sistersAges,
  childNumber,
  familyChildren,
  adopted,
  brotherDisturbances,
  sisterDisturbances,
  maleRelativesDisturbed,
  maleRelativesHospitalized,
  femaleRelativesDisturbed,
  femaleRelativesHospitalized,
  saveType,
  userLogId,
  utcOffset,
  pageName,
  isConfirm
) => {
  try {
    const procedureParameters = [
      patientId,
      spouseOccupation,
      spouseOccupationFullTime,
      motherAge,
      ageWhenMotherDied,
      fatherAge,
      ageWhenFatherDied,
      motherOccupation,
      fatherOccupation,
      motherReligion,
      fatherReligion,
      raisedBy,
      motherDescription,
      fatherDescription,
      parentalSeparationAge,
      parentalDivorceAge,
      motherDivorceCount,
      fatherDivorceCount,
      livingBrothers,
      livingSisters,
      brothersAges,
      sistersAges,
      childNumber,
      familyChildren,
      adopted,
      brotherDisturbances,
      sisterDisturbances,
      maleRelativesDisturbed,
      maleRelativesHospitalized,
      femaleRelativesDisturbed,
      femaleRelativesHospitalized,
      saveType,
      userLogId,
      utcOffset,
      pageName,
      isConfirm
    ];

    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage",
      "outputPatientId",
      "patientNo"
    ];

    const procedureName = "family_information_insert_update";

    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    console.log("SP result:", result);

    const { responseStatus, outputMessage } = result.outputValues;

    if (responseStatus === "failed") {
      return { responseStatus, outputMessage };
    }

    return result;
  } catch (error) {
    throw error;
  }
};

exports.medical_information_insert_update_sql = async (
  patientId,
  physicalAilments,
  mainComplaints,
  pastComplaints,
  worseConditions,
  improvedConditions,
  individualTherapyHours,
  individualTherapyYears,
  individualTherapyEndYears,
  groupTherapyHours,
  psychiatricHospitalizationMonths,
  currentTreatment,
  antidepressantsCount,
  psychotherapyType,
  additionalInfo,
  saveType,
  userLogId,
  utcOffset,
  pageName,
  isConfirm
) => {
  try {
    const procedureParameters = [
      patientId,
      physicalAilments,
      mainComplaints,
      pastComplaints,
      worseConditions,
      improvedConditions,
      individualTherapyHours,
      individualTherapyYears,
      individualTherapyEndYears,
      groupTherapyHours,
      psychiatricHospitalizationMonths,
      currentTreatment,
      antidepressantsCount,
      psychotherapyType,
      additionalInfo,
      saveType,
      userLogId,
      utcOffset,
      pageName,
      isConfirm
    ];

    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage",
      "outputPatientId",
      "patientNo"
    ];

    const procedureName = "medical_information_insert_update";

    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    console.log("SP result:", result);

    const { responseStatus, outputMessage } = result.outputValues;

    if (responseStatus === "failed") {
      return { responseStatus, outputMessage };
    }

    return result;
  } catch (error) {
    throw error;
  }
};

exports.education_insert_sql = async (
  patientId,
  educationYears,
  isScholarship,
  scholarshipMarks,
  schoolAdmitted,
  scholarshipResult,
  scholarshipRemark,
  isOL,
  olSubjects,
  olRemark,
  isAL,
  alStreamId,
  alSubjects,
  alRemark,
  isUniversity,
  universitySubjects,
  universityRemark,
  userLogId,
  utcOffset,
  isConfirm
) => {
  try {
    // Convert arrays to JSON strings
    const olSubjects_json = JSON.stringify(olSubjects || []);
    const alSubjects_json = JSON.stringify(alSubjects || []);
    const universitySubjects_json = JSON.stringify(universitySubjects || []);

    const procedureParameters = [
      patientId,
      educationYears,
      isScholarship,
      scholarshipMarks,
      schoolAdmitted,
      scholarshipResult,
      scholarshipRemark,
      isOL,
      olSubjects_json,
      olRemark,
      isAL,
      alStreamId,
      alSubjects_json,
      alRemark,
      isUniversity,
      universitySubjects_json,
      universityRemark,
      userLogId,
      utcOffset
    ];
    const procedureOutputParameters = ["responseStatus", "outputMessage", "educationInfoId"];
    const procedureName = "Education_Insert";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    const { responseStatus, outputMessage } = result.outputValues;
    console.log('outputValues:', result);
    if (responseStatus === "failed") {
      return { responseStatus, outputMessage };
    }

    return result;
  } catch (error) {
    throw error;
  }
};



exports.product_insertUpdate_sql = async (
  tenant,
  tableId,
  storeIdList,
  productNo,
  isProductNoAutoGenerate,
  productName,
  categoryIdList,
  variationProductList,
  comboProductDetailList,
  measurementUnitId,
  productTypeId,
  isNotForSelling,
  imgUrl,
  isUnique,
isStockTracked,
isProductItem,
  brandId,
  unitCost,
      unitPrice,
      taxPerc,
  sku,
  barcode,
  reorderLevel,
  isExpiringProduct,
  saveType,
  userLogId,
  utcOffset,
  pageName,
  isConfirm
) => {
  try {

    const categoryIdList_json=JSON.stringify(categoryIdList);
    const variationProductList_json=JSON.stringify(variationProductList);
    const comboProductDetailList_json=JSON.stringify(comboProductDetailList);
    const storeIdList_json=JSON.stringify(storeIdList);
console.log('saveType',saveType);
    
    const {pool}=tenant;
    const procedureParameters = [
      tableId,
      storeIdList_json,
      productNo,
      isProductNoAutoGenerate,
      productName,
      categoryIdList_json,
      variationProductList_json,
      comboProductDetailList_json,
      measurementUnitId,
      productTypeId,
      isNotForSelling,
      imgUrl,
      isUnique,
      isStockTracked,
      isProductItem,
      brandId,
       unitCost,
      unitPrice,
      taxPerc,
      sku,
      barcode,
      reorderLevel,
      isExpiringProduct,
      saveType,
      userLogId,
      utcOffset,
      pageName,
      isConfirm
    ];
    const procedureOutputParameters = ["responseStatus","outputMessage","productId"];
    const procedureName = "Product_Insert_Update";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
      pool
    );

    const { responseStatus, outputMessage } = result.outputValues;
    console.log('outputValues:', result);
    if (responseStatus === SP_STATUS.failed) {
      throw { message: outputMessage };
    }

    return result;
  } catch (error) {
    throw error;
  }
};

exports.product_delete = async (
  tenant,
  productId,
  userLogId,
  utcOffset,
  pageName,
  isConfirm
) => {
  try {
    const {pool}=tenant;
    const procedureParameters = [
      productId,
      userLogId,
      utcOffset,
      pageName,
      isConfirm,
    ];
    const procedureOutputParameters = ["responseStatus", "outputMessage"];
    const procedureName = "Product_Delete";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
      pool
    );

    const { responseStatus, outputMessage } = result.outputValues;
    if (responseStatus === SP_STATUS.failed) {
      throw { message: outputMessage };
    }

    return result;
  } catch (error) {
    throw error;
  }
};

exports.get_DC_ProductIdByProductId = async (tenant,productId) => {
  try {
    const {pool}=tenant;
    const procedureParameters = [productId];
    const procedureOutputParameters = ["dc_ProductId"];
    const procedureName = "get_DC_ProductIdByProductId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
      pool
    );

    const { dc_ProductId } = result.outputValues;
    return dc_ProductId;
  } catch (error) {
    throw error;
  }
};

exports.product_select_pos_menu_sql = async (
  tenant,
  productId,
  productNo,
  productName,
  sku,
  barcode,
  brandId,
  storeId,
  productTypeIds,
  productCategoryId,
  measurementUnitId,
  allSearchableFields=null,
  searchByKeyword,
  skip,
  limit,
  userLogId,
  utcOffset,
  pageName,
  promptBeforeContinue
) => {
  const { pool } = tenant;
  try {
    const procedureParameters = [
      productId,
      productNo,
      productName,
      sku,
      barcode,
      productCategoryId,
      brandId,
      storeId,
      productTypeIds ? JSON.stringify(productTypeIds):null, // Convert array to JSON string
      measurementUnitId,
      allSearchableFields,
      searchByKeyword,
      skip,
      limit,
      userLogId,
      utcOffset,
      pageName,
    ];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage",
      "totalRows",
    ];
    const procedureName = "Product_Select_pos_menu";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
      pool
    );

    const { responseStatus, outputMessage } = result.outputValues;
    if (responseStatus === SP_STATUS.failed) {
      throw { message: outputMessage };
    }

    return result;
  } catch (error) {
    throw error;
  }
};

exports.getVariationProductDetails_sql = async (
  tenant,
  productId,
  storeId,
) => {
  const { pool } = tenant;
  try {
    const procedureParameters = [
      productId,
      storeId
    ];
    const procedureOutputParameters = [
    ];
    const procedureName = "getVariationProductDetails";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
      pool
    );

    return result;
  } catch (error) {
    throw error;
  }
};














exports.patientRegistration_Search_sql = async (
    patientNo,
      homePhone,
      businessPhone,
      email,
      firstName,
      lastName,
      skip,
      limit,
      userLogId,
      utcOffset,
      pageName,
) => {
  try {
    const procedureParameters = [
      patientNo,
      homePhone,
      businessPhone,
      email,
      firstName,
      lastName,
      skip,
      limit,
      userLogId,
      utcOffset,
      pageName,
    ];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage",
      "totalRows",
    ];
    const procedureName = "PatientRegistration_Search";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );

    const { responseStatus, outputMessage,totalRows } = result.outputValues;
    if (responseStatus === SP_STATUS.failed) {
      throw { message: outputMessage };
    }

    return result;
  } catch (error) {
    throw error;
  }
};

exports.getPatientBasicInfoByPatientId_sql = async (
  patientId,
      userLogId,
      utcOffset,
      pageName,
) => {
  try {
    const procedureParameters = [
      patientId,
      userLogId,
      utcOffset,
      pageName,
    ];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage"
    ];
    const procedureName = "getPatientBasicInfoByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );

    const { responseStatus, outputMessage } = result.outputValues;
     if (responseStatus === SP_STATUS.failed) {
      return { responseStatus, outputMessage };
    }

    return result.results[0][0];
  } catch (error) {
    throw error;
  }
};

exports.getPatientPersonalInfoByPatientId_sql = async (
  patientId,
      userLogId,
      utcOffset,
      pageName,
) => {
  try {
    const procedureParameters = [
      patientId,
      userLogId,
      utcOffset,
      pageName,
    ];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage"
    ];
    const procedureName = "patientPersonalInfoByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );

    const { responseStatus, outputMessage } = result.outputValues;
      if (responseStatus === SP_STATUS.failed) {
      return { responseStatus, outputMessage };
    }

     return result.results[0][0];
  } catch (error) {
    throw error;
  }
};

exports.getPatientFamilyInfoByPatientId_sql = async (
  patientId,
      userLogId,
      utcOffset,
      pageName,
) => {
  try {
    const procedureParameters = [
      patientId,
      userLogId,
      utcOffset,
      pageName,
    ];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage"
    ];
    const procedureName = "patientFamilyInfoByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );

    const { responseStatus, outputMessage } = result.outputValues;
    if (responseStatus === SP_STATUS.failed) {
      return { responseStatus, outputMessage };
    }

     return result.results[0][0];
  } catch (error) {
    throw error;
  }
};

exports.getPatientMedicalInfoByPatientId_sql = async (
  patientId,
      userLogId,
      utcOffset,
      pageName,
) => {
  try {
    const procedureParameters = [
      patientId,
      userLogId,
      utcOffset,
      pageName,
    ];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage"
    ];
    const procedureName = "patientMedicalInfoByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );

    const { responseStatus, outputMessage } = result.outputValues;
       if (responseStatus === SP_STATUS.failed) {
      return { responseStatus, outputMessage };
    }

      return result.results[0][0];
  } catch (error) {
    throw error;
  }
};

exports.getPatientEducationInfoByPatientId_sql = async (
  patientId,
      userLogId,
      utcOffset,
      pageName,
) => {
  try {
    const procedureParameters = [
      patientId,
      userLogId,
      utcOffset,
      pageName,
    ];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage"
    ];
    const procedureName = "patientEducationInfoByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );

    const { responseStatus, outputMessage } = result.outputValues;
      if (responseStatus === SP_STATUS.failed) {
      return { responseStatus, outputMessage };
    }

      return result.results[0][0];
  } catch (error) {
    throw error;
  }
};



exports.getPatientEducationYearsByPatientId_sql = async (
  patientId,
  userLogId,
  utcOffset,
  pageName,
) => {
  try {
    const procedureParameters = [
      patientId,
      userLogId,
      utcOffset,
      pageName,
    ];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage"
    ];
    const procedureName = "patientEducationYearsByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );

    const { responseStatus, outputMessage } = result.outputValues;
      if (responseStatus === SP_STATUS.failed) {
      return { responseStatus, outputMessage };
    }

    return result.results[0][0];
  } catch (error) {
    throw error;
  }
};



exports.getPatientScholarshipByPatientId_sql = async (
  patientId,
  userLogId,
  utcOffset,
  pageName,
) => {
  try {
    const procedureParameters = [
      patientId,
      userLogId,
      utcOffset,
      pageName,
    ];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage"
    ];
    const procedureName = "patientScholarshipByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );

    const { responseStatus, outputMessage } = result.outputValues;
       if (responseStatus === SP_STATUS.failed) {
      return { responseStatus, outputMessage };
    }

    return result.results[0][0];
  } catch (error) {
    throw error;
  }
};


exports.getPatientOLByPatientId_sql = async (
  patientId,
  userLogId,
  utcOffset,
  pageName,
) => {
  try {
    const procedureParameters = [
      patientId,
      userLogId,
      utcOffset,
      pageName,
    ];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage"
    ];
    const procedureName = "patientOLByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );

    const { responseStatus, outputMessage } = result.outputValues;
     if (responseStatus === SP_STATUS.failed) {
      return { responseStatus, outputMessage };
    }

    const row = result.results[0][0];
    console.log('getPatientOLByPatientId_sql',row)

    if(row){
    const parsedSubjects =row.subjects ? JSON.parse(row.subjects) : [];

    return {
      enabled: row.enabled,
      subjects: parsedSubjects,
      remark: row.remark,
    };
  }
  else{
    return null;
  }
  } catch (error) {
    throw error;
  }
};

exports.getPatientALByPatientId_sql = async (
  patientId,
  userLogId,
  utcOffset,
  pageName,
) => {
  try {
    const procedureParameters = [
      patientId,
      userLogId,
      utcOffset,
      pageName,
    ];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage"
    ];
    const procedureName = "patientALByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );

    const { responseStatus, outputMessage } = result.outputValues;
     if (responseStatus === SP_STATUS.failed) {
      return { responseStatus, outputMessage };
    }

   const row = result.results[0][0];

   if(row){
    const parsedSubjects = row.subjects ? JSON.parse(row.subjects) : [];

    return {
      enabled: row.enabled,
      subjects: parsedSubjects,
      streamName:row.streamName,
      remark: row.remark,
    };
  }
  else{
    return null;
  }

  } catch (error) {
    throw error;
  }
};


exports.getPatientUniversityByPatientId_sql = async (
  patientId,
  userLogId,
  utcOffset,
  pageName,
) => {
  try {
    const procedureParameters = [
      patientId,
      userLogId,
      utcOffset,
      pageName,
    ];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage"
    ];
    const procedureName = "patientUniversityByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );

    const { responseStatus, outputMessage } = result.outputValues;
     if (responseStatus === SP_STATUS.failed) {
      return { responseStatus, outputMessage };
    }

     const row = result.results[0][0];

     if(row){
    const parsedSubjects = row.subjects ? JSON.parse(row.subjects) : [];

    return {
      enabled: row.enabled,
      subjects: parsedSubjects,
      remark: row.remark,
    };
  }
  else{
    return null;
  }
    
  } catch (error) {
    throw error;
  }
};






exports.getProductTypes_drp_sql = async (
  tenant,
  userLogId,
  utcOffset,
  pageName
) => {
  const { pool } = tenant;
  try {
    const procedureParameters = [
      userLogId,
      utcOffset,
      pageName,
    ];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage"
    ];
    const procedureName = "getProductTypes_drp";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
      pool
    );

    const { responseStatus, outputMessage } = result.outputValues;
    if (responseStatus === SP_STATUS.failed) {
      throw { message: outputMessage };
    }

    return result;
  } catch (error) {
    throw error;
  }
};
