const {SP_STATUS}=require('../constants/constants');
const { executeStoredProcedureWithOutputParamsByPool } = require("../mysql/sql_executer");



exports.getProfileTabDetailsByPatientId_sql = async (patientId,userLogID,utcOffset,pageName) => {
  try {

    const procedureParameters = [patientId,userLogID,utcOffset,pageName];
    const procedureOutputParameters = ["isBasicInfo","isPersonalInfo","isFamilyInfo","isMedicalInfo","isEducationInfo","ResponseStatus","OutputMessage"];
    const procedureName = "getProfileTabDetailsByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    //const { isBasicInfo,isPersonalInfo,isFamilyInfo,isMedicalInfo,isEducationInfo } = result.outputValues;
    return result.outputValues;
  } catch (error) {
    throw error;
  }
};

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
      referralSourceOther,
      referralPartyPresent,
      patientTypeId,
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
      referralSourceOther,
      referralPartyPresent,
      patientTypeId,
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
    // if (responseStatus === 'failed') {
    //   return {responseStatus, outputMessage};
    // }
    
    return result;
  } catch (error) {
    throw error;
  }
};

exports.family_patient_registration_insert_update_sql = async (
  patientId,
  husbandFirstName,
  husbandLastName,
  husbandMiddleName,
  husbandDateOfBirth,
  husbandAge,
  husbandGender,
  husbandEmail,
  husbandHomePhone,
  husbandMobilePhone,
  husbandPermanentAddress,
  wifeFirstName,
  wifeLastName,
  wifeMiddleName,
  wifeDateOfBirth,
  wifeAge,
  wifeGender,
  wifeEmail,
  wifeHomePhone,
  wifeMobilePhone,
  wifePermanentAddress,
  referralSource,
  referralSourceOther,
  referralPartyPresent,
  patientTypeId,
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
      husbandFirstName,
      husbandLastName,
      husbandMiddleName,
      husbandDateOfBirth,
      husbandAge,
      husbandGender,
      husbandEmail,
      husbandHomePhone,
      husbandMobilePhone,
      husbandPermanentAddress,
      wifeFirstName,
      wifeLastName,
      wifeMiddleName,
      wifeDateOfBirth,
      wifeAge,
      wifeGender,
      wifeEmail,
      wifeHomePhone,
      wifeMobilePhone,
      wifePermanentAddress,
      referralSource,
      referralSourceOther,
      referralPartyPresent,
      patientTypeId,
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
    
    const procedureName = "family_patient_registration_insert_update";
    
    // Execute the stored procedure
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );
    
    console.log('result:', result);
    const { responseStatus, outputMessage } = result.outputValues;
    
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
    console.log('assets:',assets);
    const procedureParameters = [
      patientId,
      maritalStatus,
      yearsMarried,
      maleChildrenAges,
      femaleChildrenAges,
      religiosity,
      thingsLiked,
      assets ? JSON.stringify(assets):null, 
      badPoints ? JSON.stringify(badPoints):null, 
       socialDifficulties ? JSON.stringify(socialDifficulties):null, 
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

    return result;
  } catch (error) {
    throw error;
  }
};

exports.personal_information_family_insert_update_sql = async (
  patientId,
  maritalStatusHusband,
  yearsMarriedHusband,
  maritalStatusWife,
  yearsMarriedWife,
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
  occupationTrainedHusband,
  occupationHusband,
  occupationFullTimeHusband,
  occupationTrainedWife,
  occupationWife,
  occupationFullTimeWife,
  saveType,
  userLogId,
  utcOffset,
  pageName,
  isConfirm
) => {
  try {
    // Define procedure parameters matching the stored procedure input
    console.log('assets:', assets);
    const procedureParameters = [
      patientId,
      maritalStatusHusband,
      yearsMarriedHusband,
      maritalStatusWife,
      yearsMarriedWife,
      maleChildrenAges,
      femaleChildrenAges,
      religiosity,
      thingsLiked,
      assets ? JSON.stringify(assets) : null,
      badPoints ? JSON.stringify(badPoints) : null,
      socialDifficulties ? JSON.stringify(socialDifficulties) : null,
      loveSexDifficulties,
      schoolWorkDifficulties,
      lifeGoals,
      thingsToChange,
      occupationTrainedHusband,
      occupationHusband,
      occupationFullTimeHusband,
      occupationTrainedWife,
      occupationWife,
      occupationFullTimeWife,
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

    const procedureName = "personal_information_family_insert_update";

    // Execute the stored procedure
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    return result;
  } catch (error) {
    throw error;
  }
};

exports.personal_information_child_insert_update_sql = async (
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
    console.log('assets:',assets);
    const procedureParameters = [
      patientId,
      maritalStatus,
      yearsMarried,
      maleChildrenAges,
      femaleChildrenAges,
      religiosity,
      thingsLiked,
      assets ? JSON.stringify(assets):null, 
      badPoints ? JSON.stringify(badPoints):null, 
       socialDifficulties ? JSON.stringify(socialDifficulties):null, 
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

    const procedureName = "personal_information_child_insert_update";

    // Execute the stored procedure
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

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
      raisedBy ? JSON.stringify(raisedBy):null, 
         motherDescription ? JSON.stringify(motherDescription):null, 
            fatherDescription ? JSON.stringify(fatherDescription):null, 
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


    return result;
  } catch (error) {
    throw error;
  }
};

exports.medical_information_family_insert_update_sql = async (
  patientId,
  physicalAilmentsHusband,
  physicalAilmentsWife,
  mainComplaintsHusband,
  mainComplaintsWife,
  worseConditionsHusband,
  worseConditionsWife,
  improvedConditionsHusband,
  improvedConditionsWife,
  isHistoryOfPsychiatricTreatmentsHusband,
  isHistoryOfPsychiatricTreatmentsWife,
  isPsychiatricHospitalizationHusband,
  isPsychiatricHospitalizationWife,
  historyOfMentalIllnessHusband,
  historyOfMentalIllnessWife,
  historyOfSubstanceAbuseHusband,
  historyOfSubstanceAbuseWife,
  historyOfACESHusband,
   historyOfACESWife ,
  additionalInfoHusband,
  additionalInfoWife,
  saveType,
  userLogId,
  utcOffset,
  pageName,
  isConfirm
) => {
  try {
    const procedureParameters = [
      patientId,
      physicalAilmentsHusband,
      physicalAilmentsWife,
      mainComplaintsHusband,
      mainComplaintsWife,
      worseConditionsHusband,
      worseConditionsWife,
      improvedConditionsHusband,
      improvedConditionsWife,
      isHistoryOfPsychiatricTreatmentsHusband,
      isHistoryOfPsychiatricTreatmentsWife,
      isPsychiatricHospitalizationHusband,
      isPsychiatricHospitalizationWife,
      historyOfMentalIllnessHusband,
      historyOfMentalIllnessWife,
      historyOfSubstanceAbuseHusband,
      historyOfSubstanceAbuseWife,
      historyOfACESHusband ? JSON.stringify(historyOfACESHusband):null,
   historyOfACESWife ? JSON.stringify(historyOfACESWife):null, 
      additionalInfoHusband,
      additionalInfoWife,
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

    const procedureName = "medical_information_family_insert_update";

    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    console.log("SP result:", result);

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



    return result;
  } catch (error) {
    throw error;
  }
};


// exports.education_insert_update = async (
//   patientId,
//   educationYears,
//   isScholarship,
//   scholarshipMarks,
//   schoolAdmitted,
//   isScholarshipPassed,
//   scholarshipRemark,
//   isOL,
//   olSubjects,
//   olRemark,
//   isAL,
//   alStreamId,
//   alSubjects,
//   alRemark,
//   isUniversity,
//   universitySubjects,
//   universityRemark,
//   userLogId,
//   saveType,
//   utcOffset
// ) => {
//   try {
//     // Convert arrays to JSON strings
//     const olSubjects_json = JSON.stringify(olSubjects || []);
//     const alSubjects_json = JSON.stringify(alSubjects || []);
//     const universitySubjects_json = JSON.stringify(universitySubjects || []);

//     const procedureParameters = [
//       patientId,
//       educationYears,
//       isScholarship,
//       scholarshipMarks,
//       schoolAdmitted,
//       isScholarshipPassed,
//       scholarshipRemark,
//       isOL,
//       olSubjects_json,
//       olRemark,
//       isAL,
//       alStreamId,
//       alSubjects_json,
//       alRemark,
//       isUniversity,
//       universitySubjects_json,
//       universityRemark,
//       userLogId,
//       saveType,
//       utcOffset
//     ];
//     const procedureOutputParameters = ["responseStatus", "outputMessage", "educationInfoId"];
//     const procedureName = "education_insert_update";
//     const result = await executeStoredProcedureWithOutputParamsByPool(
//       procedureName,
//       procedureParameters,
//       procedureOutputParameters
//     );

  
 

//     return result;
//   } catch (error) {
//     throw error;
//   }
// };




exports.education_insert_update = async (
  patientId,
  educationYears,
  isScholarship,
  scholarshipMarks,
  schoolAdmitted,
  isScholarshipPassed,
  scholarshipRemark,
  isOL,
  olSubjects,
  olRemark,
  isAL,
  alStreamName,
  alSubjects,
  alRemark,
  isUniversity,
  universitySubjects,
  universityRemark,
  isInternationalCurriculum,
  isEdexcel,
  isCambridge,
  userLogId,
  saveType,
  utcOffset
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
      isScholarshipPassed,
      scholarshipRemark,
      isOL,
      olSubjects_json,
      olRemark,
      isAL,
      alStreamName,
      alSubjects_json,
      alRemark,
      isUniversity,
      universitySubjects_json,
      universityRemark,
      isInternationalCurriculum,
      isEdexcel,
      isCambridge,
      userLogId,
      saveType,
      utcOffset
    ];
    const procedureOutputParameters = ["responseStatus", "outputMessage", "educationInfoId"];
    const procedureName = "education_insert_update";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    return result;
  } catch (error) {
    throw error;
  }
};


exports.education_insert_update_family = async (
  patientId,
  educationYearsHusband,
  isOLHusband,
  isOLPassedHusband,
  olRemarkHusband,
  isALHusband,
  alStreamNameHusband,
  alRemarkHusband,
  isUniversityHusband,
  universitySubjectsHusband,
  universityRemarkHusband,
  isEdexcelHusband,
  isCambridgeHusband,
  educationYearsWife,
  isScholarshipWife,
  isOLWife,
  isOLPassedWife,
  olRemarkWife,
  isALWife,
  alStreamNameWife,
  alRemarkWife,
  isUniversityWife,
  universitySubjectsWife,
  universityRemarkWife,
  isEdexcelWife,
  isCambridgeWife,
  userLogId,
  saveType,
  utcOffset
) => {
  try {
    // Convert arrays to JSON strings
    const universitySubjectsHusband_json = JSON.stringify(universitySubjectsHusband || []);
    const universitySubjectsWife_json = JSON.stringify(universitySubjectsWife || []);

    const procedureParameters = [
      patientId,
      educationYearsHusband,
      isOLHusband,
      isOLPassedHusband,
      olRemarkHusband,
      isALHusband,
      alStreamNameHusband,
      alRemarkHusband,
      isUniversityHusband,
      universitySubjectsHusband_json,
      universityRemarkHusband,
      isEdexcelHusband,
      isCambridgeHusband,
      educationYearsWife,
      isScholarshipWife,
      isOLWife,
      isOLPassedWife,
      olRemarkWife,
      isALWife,
      alStreamNameWife,
      alRemarkWife,
      isUniversityWife,
      universitySubjectsWife_json,
      universityRemarkWife,
      isEdexcelWife,
      isCambridgeWife,
      userLogId,
      saveType,
      utcOffset
    ];
    const procedureOutputParameters = ["responseStatus", "outputMessage", "educationInfoId"];
    const procedureName = "education_insert_update_family";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    return result;
  } catch (error) {
    throw error;
  }
};


exports.drp_university_subjects_sql = async (
  userLogId,
) => {
  try {
    const procedureParameters = [
      userLogId
    ];
    const procedureOutputParameters = [];
    const procedureName = "drp_university_subjects_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    return result;
  } catch (error) {
    throw error;
  }
};




exports.drp_al_stream_sql = async (
  userLogId,
) => {
  try {
    const procedureParameters = [
      userLogId
    ];
    const procedureOutputParameters = [];
    const procedureName = "drp_al_stream_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    return result;
  } catch (error) {
    throw error;
  }
};


exports.drp_al_subjects_sql = async (
  userLogId,
) => {
  try {
    const procedureParameters = [
      userLogId
    ];
    const procedureOutputParameters = [];
    const procedureName = "drp_al_subjects_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    return result;
  } catch (error) {
    throw error;
  }
};




exports.drp_ol_subjects_sql = async (
  userLogId,
) => {
  try {
    const procedureParameters = [
      userLogId
    ];
    const procedureOutputParameters = [];
    const procedureName = "drp_ol_subjects_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    return result;
  } catch (error) {
    throw error;
  }
};



exports.appointments_Insert_sql = async (
  patientId,
    appointmentDate,
    statusId,
    userLogId,
    utcOffset
) => {
  try {
    // Define procedure parameters matching the stored procedure input
    const procedureParameters = [
      patientId,
    appointmentDate,
    statusId,
    userLogId,
    utcOffset
    ];

    // Output parameters as defined in the procedure
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage",
      "appointmentNo"
    ];

    const procedureName = "appointments_Insert";

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











exports.patientRegistration_Search_sql = async (
    patientNo,
      homePhone,
      businessPhone,
      email,
      patientName,
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
      patientName,
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
      "outputMessage",
       "patientTypeId"
    ];
    const procedureName = "patientOLByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );

    const { responseStatus, outputMessage,patientTypeId } = result.outputValues;
     if (responseStatus === SP_STATUS.failed) {
      return { responseStatus, outputMessage };
    }

    const row = result.results[0][0];
    console.log('getPatientOLByPatientId_sql',row)

   if (row) {
      if (patientTypeId === 1 || patientTypeId === 2) {
        const parsedSubjects = row.subjects ? JSON.parse(row.subjects) : [];

        return {
          ...row,
          subjects: parsedSubjects,
        };
      } else if (patientTypeId === 3) {
        return row;
      }
    } else {
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
  pageName
) => {
  try {
    const procedureParameters = [patientId, userLogId, utcOffset, pageName];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage",
      "patientTypeId",
    ];
    const procedureName = "patientALByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    const { responseStatus, outputMessage, patientTypeId } =
      result.outputValues;
    if (responseStatus === SP_STATUS.failed) {
      return { responseStatus, outputMessage };
    }

    const row = result.results[0][0];

    if (row) {
      if (patientTypeId === 1 || patientTypeId === 2) {
        const parsedSubjects = row.subjects ? JSON.parse(row.subjects) : [];

        return {
          ...row,
          subjects: parsedSubjects,
        };
      } else if (patientTypeId === 3) {
        return row;
      }
    } else {
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
      "outputMessage",
      "patientTypeId"
    ];
    const procedureName = "patientUniversityByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );

    const { responseStatus, outputMessage,patientTypeId } = result.outputValues;
    //  if (responseStatus === SP_STATUS.failed) {
    //   return { responseStatus, outputMessage };
    // }

     const row = result.results[0][0];
      const row1 = result.results[0];
console.log('getPatientUniversityByPatientId_sql',patientTypeId);
    
if(row){
  if(patientTypeId === 1 || patientTypeId === 2) {
    const parsedSubjects = row.subjects ? JSON.parse(row.subjects) : [];

    return {...row, subjects: parsedSubjects};
  }
  else if(patientTypeId === 3) {
      const parsedSubjectsHusband = row.subjectsHusband ? JSON.parse(row.subjectsHusband) : [];
      const parsedSubjectsWife = row.subjectsWife ? JSON.parse(row.subjectsWife) : [];
          return {...row, subjectsHusband: parsedSubjectsHusband, subjectsWife: parsedSubjectsWife};
  }
}
   else{
     return null;
   }
    
  } catch (error) {
    throw error;
  }
};




exports.patientAppointments_Search_sql = async (
    patientId,
    appointmentNo,
      appointmentDateStart,
      appointmentDateEnd,
      statusId,
      skip,
      limit,
      userLogId,
      utcOffset,
      pageName,
) => {
  try {

    const procedureParameters = [
      appointmentNo,
      appointmentDateStart,
      appointmentDateEnd,
      patientId,
      statusId,
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
    const procedureName = "Appointments_Search";
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

exports.insert_subject_sql = async (
 subjectName,
    subjectType
) => {
  try {

    // Define procedure parameters matching the stored procedure input
    const procedureParameters = [
    subjectName,
    subjectType,
    ];

    // Output parameters as defined in the procedure
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage",
      "outputSubjectId"
    ];

    const procedureName = "insert_subject";

    // Execute the stored procedure
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    console.log("result:", result);


    return result;
  } catch (error) {
    throw error;
  }
};




exports.drp_institutions_sql = async (
  userLogId,
) => {
  try {
    const procedureParameters = [
      userLogId
    ];
    const procedureOutputParameters = [];
    const procedureName = "drp_institution_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    return result;
  } catch (error) {
    throw error;
  }
};



exports.drp_good_points_sql = async (
  userLogId,
) => {
  try {
    const procedureParameters = [
      userLogId
    ];
    const procedureOutputParameters = [];
    const procedureName = "drp_good_points_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    return result;
  } catch (error) {
    throw error;
  }
};



exports.drp_bad_points_sql = async (
  userLogId,
) => {
  try {
    const procedureParameters = [
      userLogId
    ];
    const procedureOutputParameters = [];
    const procedureName = "drp_bad_points_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    return result;
  } catch (error) {
    throw error;
  }
};


exports.drp_occupations_sql = async (
  userLogId,
) => {
  try {
    const procedureParameters = [
      userLogId
    ];
    const procedureOutputParameters = [];
    const procedureName = "drp_occupations_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    return result;
  } catch (error) {
    throw error;
  }
};



exports.drp_raised_by_sql = async (userLogId) => {
  try {
    const procedureParameters = [
      userLogId
    ];
    const procedureOutputParameters = [];
    const procedureName = "drp_raised_by_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );
    return result;
  } catch (error) {
    throw error;
  }
};

exports.drp_religions_sql = async (userLogId) => {
  try {
    const procedureParameters = [
      userLogId
    ];
    const procedureOutputParameters = [];
    const procedureName = "drp_religions_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );
    return result;
  } catch (error) {
    throw error;
  }
};

exports.drp_types_of_person_sql = async (userLogId) => {
  try {
    const procedureParameters = [
      userLogId
    ];
    const procedureOutputParameters = [];
    const procedureName = "drp_types_of_person_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );
    return result;
  } catch (error) {
    throw error;
  }
};

exports.drp_social_difficulties_sql = async (userLogId) => {
  try {
    const procedureParameters = [userLogId];
    const procedureOutputParameters = [];
    const procedureName = "drp_social_difficulties_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );
    return result;
  } catch (error) {
    throw error;
  }
};





// Function to call stored procedure for Edexcel IGCSE subjects dropdown
exports.drp_edexcel_igcse_subjects_sql = async (userLogId) => {
  try {
    const procedureParameters = [userLogId];
    const procedureOutputParameters = [];
    const procedureName = "drp_edexcel_igcse_subjects_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );
    return result;
  } catch (error) {
    throw error;
  }
};

// Function to call stored procedure for Cambridge IGCSE subjects dropdown
exports.drp_cambridge_igcse_subjects_sql = async (userLogId) => {
  try {
    const procedureParameters = [userLogId];
    const procedureOutputParameters = [];
    const procedureName = "drp_cambridge_igcse_subjects_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );
    return result;
  } catch (error) {
    throw error;
  }
};

// Function to call stored procedure for Edexcel A-Level subjects dropdown
exports.drp_edexcel_al_subjects_sql = async (userLogId) => {
  try {
    const procedureParameters = [userLogId];
    const procedureOutputParameters = [];
    const procedureName = "drp_edexcel_al_subjects_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );
    return result;
  } catch (error) {
    throw error;
  }
};

// Function to call stored procedure for Cambridge A-Level subjects dropdown
exports.drp_cambridge_al_subjects_sql = async (userLogId) => {
  try {
    const procedureParameters = [userLogId];
    const procedureOutputParameters = [];
    const procedureName = "drp_cambridge_al_subjects_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );
    return result;
  } catch (error) {
    throw error;
  }
};

exports.drp_edexcel_al_streams_sql = async (userLogId) => {
  try {
    const procedureParameters = [userLogId];
    const procedureOutputParameters = [];
    const procedureName = "drp_edexcel_al_streams_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );
    return result;
  } catch (error) {
    throw error;
  }
};

exports.drp_cambridge_al_streams_sql = async (userLogId) => {
  try {
    const procedureParameters = [userLogId];
    const procedureOutputParameters = [];
    const procedureName = "drp_cambridge_al_streams_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );
    return result;
  } catch (error) {
    throw error;
  }
};



// Function to call stored procedure for International Curriculum qualifications
exports.getPatientInternationalCurriculumByPatientId_sql = async (
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
    const procedureName = "patientInternationalCurriculumByPatientId";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );


    const row = result.results[0][0];
    return row;

  } catch (error) {
    throw error;
  }
};


exports.drp_aces_sql = async (
  userLogId,
) => {
  try {
    const procedureParameters = [
      userLogId
    ];
    const procedureOutputParameters = [];
    const procedureName = "drp_aces_select";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    return result;
  } catch (error) {
    throw error;
  }
};






exports.getMentalStatusExamByPatientId_sql = async (
  patientId,
  userLogId,
  utcOffset,
  pageName
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
    const procedureName = "getMentalStatusExamByPatientId"; // Updated to match your stored procedure name
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    const { responseStatus, outputMessage } = result.outputValues;
    if (responseStatus === 'invalid') {
      return { responseStatus, outputMessage };
    }

    const data = result.results[0][0] || {};
    
    // List of JSON columns to parse
    const jsonColumns = [
      'appearance',
      'affectiveExpression',
      'behavior',
      'speech',
      'attitudeToExaminer',
      'moodAndAffect',
      'appropriateness',
      'hallucinations',
      'disassociation',
      'agnosia',
      'contentOfThought',
      'delusions0',
      'thoughtForm',
      'consciousness',
      'orientation',
      'concentration',
      'memory',
      'informationAndIntelligence',
      'judgment',
      'insight',
      'reliability',
      'summary',
      'generalObservations',
      'cognition',
      'thoughts'
    ];

    // Parse JSON columns
    const parsedData = { ...data };
    jsonColumns.forEach(column => {
      if (data[column]) {
        try {
          parsedData[column] = JSON.parse(data[column]);
        } catch (error) {
          console.error(`Error parsing JSON for column ${column}:`, error.message);
          parsedData[column] = {}; // Fallback to empty object to prevent breaking the frontend
        }
      } else {
        parsedData[column] = {}; // Fallback for null or undefined values
      }
    });

    return parsedData;
  } catch (error) {
    console.error('Error in getMentalStatusExamByPatientId_sql:', error);
    throw error;
  }
};