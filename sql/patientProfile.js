const {SP_STATUS}=require('../constants/constants');
const { pool } = require('../mysql/dbConnection');
const { executeStoredProcedureWithOutputParamsByPool } = require("../mysql/sql_executer");



exports.getProfileTabDetailsByPatientId_sql = async (patientId,userLogID,utcOffset,pageName) => {
  try {

    const procedureParameters = [patientId,userLogID,utcOffset,pageName];
    const procedureOutputParameters = ["isBasicInfo","isPersonalInfo","isFamilyInfo","isMedicalInfo","isEducationInfo","isMentalStatusExam","ResponseStatus","OutputMessage"];
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
    
    const procedureName = "patient_registration_family_insert_update";
    
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
  appointmentId,
      appointmentNo,
  patientId,
  doctorId,
    appointmentDate,
    duration,
    statusId,
    userLogId,
    utcOffset
) => {
  try {
    // Define procedure parameters matching the stored procedure input
    const procedureParameters = [
      appointmentId,
      appointmentNo,
      patientId,
      doctorId,
    appointmentDate,
    duration,
    statusId,
    userLogId,
    utcOffset
    ];

    
    // Output parameters as defined in the procedure
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage",
      "referenceNo"
    ];

        console.log('prodddd params:',procedureParameters)
        
    const procedureName = "appointments_Insert";

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


exports.apPatient_Search_sql = async (
    patientNo,
      homePhone,
      email,
      patientName,
      skip,
      limit,
      userLogId,
      utcOffset,
      pageName
) => {
  try { 

    const procedureParameters = [
      patientNo,
      homePhone,
      email,
      patientName,
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
    const procedureName = "apPatient_Search";
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
    doctorId,
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
      doctorId,
      statusId,
      skip,
      limit,
      userLogId,
      utcOffset,
      pageName,
    ];
    console.log('prodddd params:',procedureParameters)
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage",
      "totalRows",
    ];
    const procedureName = "appointments_Search";
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
      "outputMessage",
      "patientTypeId"
    ];
    const procedureName = "getMentalStatusExamByPatientId"; // Updated to match your stored procedure name
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    const { responseStatus, outputMessage,patientTypeId } = result.outputValues;
    if (responseStatus === 'invalid') {
      return { responseStatus, outputMessage };
    }

    const data = result.results[0][0] || {};
    
    let jsonColumns;

 if(patientTypeId==3){

 jsonColumns = [
  'appearanceHusband',
  'appearanceWife',
  'affectiveExpressionHusband',
  'affectiveExpressionWife',
  'behaviorHusband',
  'behaviorWife',
  'speechHusband',
  'speechWife',
  'attitudeToExaminerHusband',
  'attitudeToExaminerWife',
  'moodAndAffectHusband',
  'moodAndAffectWife',
  'appropriatenessHusband',
  'appropriatenessWife',
  'hallucinationsHusband',
  'hallucinationsWife',
  'disassociationHusband',
  'disassociationWife',
  'agnosiaHusband',
  'agnosiaWife',
  'contentOfThoughtHusband',
  'contentOfThoughtWife',
  'delusions0Husband',
  'delusions0Wife',
  'thoughtFormHusband',
  'thoughtFormWife',
  'consciousnessHusband',
  'consciousnessWife',
  'orientationHusband',
  'orientationWife',
  'concentrationHusband',
  'concentrationWife',
  'memoryHusband',
  'memoryWife',
  'informationAndIntelligenceHusband',
  'informationAndIntelligenceWife',
  'judgmentHusband',
  'judgmentWife',
  'insightHusband',
  'insightWife',
  'reliabilityHusband',
  'reliabilityWife',
  'summaryHusband',
  'summaryWife',
  'generalObservationsHusband',
  'generalObservationsWife',
  'cognitionHusband',
  'cognitionWife',
  'thoughtsHusband',
  'thoughtsWife'
];

 }
 else{
   jsonColumns = [
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
  }

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

exports.mental_status_exam_insert_update_sql = async (
  patientId,
  circumstanceOfPresentation,
  indicationsAndRecommendations,
  appearance,
  affectiveExpression,
  behavior,
  speech,
  attitudeToExaminer,
  moodAndAffect,
  appropriateness,
  hallucinations,
  disassociation,
  agnosia,
  contentOfThought,
  delusions0,
  thoughtForm,
  consciousness,
  orientation,
  concentration,
  memory,
  informationAndIntelligence,
  judgment,
  insight,
  reliability,
  summary,
  generalObservations,
  cognition,
  thoughts,
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
      circumstanceOfPresentation,
      indicationsAndRecommendations,
      JSON.stringify(appearance),
      JSON.stringify(affectiveExpression),
      JSON.stringify(behavior),
      JSON.stringify(speech),
      JSON.stringify(attitudeToExaminer),
      JSON.stringify(moodAndAffect),
      JSON.stringify(appropriateness),
      JSON.stringify(hallucinations),
      JSON.stringify(disassociation),
      JSON.stringify(agnosia),
      JSON.stringify(contentOfThought),
      JSON.stringify(delusions0),
      JSON.stringify(thoughtForm),
      JSON.stringify(consciousness),
      JSON.stringify(orientation),
      JSON.stringify(concentration),
      JSON.stringify(memory),
      JSON.stringify(informationAndIntelligence),
      JSON.stringify(judgment),
      JSON.stringify(insight),
      JSON.stringify(reliability),
      JSON.stringify(summary),
      JSON.stringify(generalObservations),
      JSON.stringify(cognition),
      JSON.stringify(thoughts),
      saveType,
      userLogId,
      utcOffset,
      pageName,
      isConfirm,
    ];

    // Define output parameters matching the SP
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage",
      "outputMseId",
    ];

    const procedureName = "mental_status_exam_insert_update";

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

exports.mental_status_exam_family_insert_update_sql = async (
  patientId,
  circumstanceOfPresentationHusband,
  circumstanceOfPresentationWife,
  indicationsAndRecommendations,
  appearanceHusband,
  appearanceWife,
  affectiveExpressionHusband,
  affectiveExpressionWife,
  behaviorHusband,
  behaviorWife,
  speechHusband,
  speechWife,
  attitudeToExaminerHusband,
  attitudeToExaminerWife,
  moodAndAffectHusband,
  moodAndAffectWife,
  appropriatenessHusband,
  appropriatenessWife,
  hallucinationsHusband,
  hallucinationsWife,
  disassociationHusband,
  disassociationWife,
  agnosiaHusband,
  agnosiaWife,
  contentOfThoughtHusband,
  contentOfThoughtWife,
  delusions0Husband,
  delusions0Wife,
  thoughtFormHusband,
  thoughtFormWife,
  consciousnessHusband,
  consciousnessWife,
  orientationHusband,
  orientationWife,
  concentrationHusband,
  concentrationWife,
  memoryHusband,
  memoryWife,
  informationAndIntelligenceHusband,
  informationAndIntelligenceWife,
  judgmentHusband,
  judgmentWife,
  insightHusband,
  insightWife,
  reliabilityHusband,
  reliabilityWife,
  summaryHusband,
  summaryWife,
  generalObservationsHusband,
  generalObservationsWife,
  cognitionHusband,
  cognitionWife,
  thoughtsHusband,
  thoughtsWife,
  saveType,
  userLogId,
  utcOffset,
  pageName,
  isConfirm
) => {
  try {

    console.log('appearanceHusband',      JSON.stringify(appearanceHusband))
    // Define procedure parameters matching the SP
    const procedureParameters = [
      patientId,
      circumstanceOfPresentationHusband,
      circumstanceOfPresentationWife,
      indicationsAndRecommendations,
      JSON.stringify(appearanceHusband),
      JSON.stringify(appearanceWife),
      JSON.stringify(affectiveExpressionHusband),
      JSON.stringify(affectiveExpressionWife),
      JSON.stringify(behaviorHusband),
      JSON.stringify(behaviorWife),
      JSON.stringify(speechHusband),
      JSON.stringify(speechWife),
      JSON.stringify(attitudeToExaminerHusband),
      JSON.stringify(attitudeToExaminerWife),
      JSON.stringify(moodAndAffectHusband),
      JSON.stringify(moodAndAffectWife),
      JSON.stringify(appropriatenessHusband),
      JSON.stringify(appropriatenessWife),
      JSON.stringify(hallucinationsHusband),
      JSON.stringify(hallucinationsWife),
      JSON.stringify(disassociationHusband),
      JSON.stringify(disassociationWife),
      JSON.stringify(agnosiaHusband),
      JSON.stringify(agnosiaWife),
      JSON.stringify(contentOfThoughtHusband),
      JSON.stringify(contentOfThoughtWife),
      JSON.stringify(delusions0Husband),
      JSON.stringify(delusions0Wife),
      JSON.stringify(thoughtFormHusband),
      JSON.stringify(thoughtFormWife),
      JSON.stringify(consciousnessHusband),
      JSON.stringify(consciousnessWife),
      JSON.stringify(orientationHusband),
      JSON.stringify(orientationWife),
      JSON.stringify(concentrationHusband),
      JSON.stringify(concentrationWife),
      JSON.stringify(memoryHusband),
      JSON.stringify(memoryWife),
      JSON.stringify(informationAndIntelligenceHusband),
      JSON.stringify(informationAndIntelligenceWife),
      JSON.stringify(judgmentHusband),
      JSON.stringify(judgmentWife),
      JSON.stringify(insightHusband),
      JSON.stringify(insightWife),
      JSON.stringify(reliabilityHusband),
      JSON.stringify(reliabilityWife),
      JSON.stringify(summaryHusband),
      JSON.stringify(summaryWife),
      JSON.stringify(generalObservationsHusband),
      JSON.stringify(generalObservationsWife),
      JSON.stringify(cognitionHusband),
      JSON.stringify(cognitionWife),
      JSON.stringify(thoughtsHusband),
      JSON.stringify(thoughtsWife),
      saveType,
      userLogId,
      utcOffset,
      pageName,
      isConfirm,
    ];

    // Define output parameters matching the SP
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage",
      "outputMseId",
    ];

    const procedureName = "mental_status_exam_family_insert_update";

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





exports.getUserAccountByUsername_sql = async (
  loginUserName
) => {
  try {
       const procedureParameters = [loginUserName];
      const procedureOutputParameters = [];
    const procedureName = "getUserAccountByUsername";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
    );

    return result.results[0][0];
  } catch (error) {
    throw error;
  }
};



exports.userRegistration_insert_update_sql = async (
   tableID,
      userRoleId,
      loginUserName,
      passwordHash,
      passwordSalt,
      email,
      displayName,
      profilePic,
      isActive,
      isUpdateCredentials,
      SaveType,
      userLogID,
    utcOffset
) => {

  try {
    const procedureParameters = [
      tableID,
      userRoleId,
      loginUserName,
      passwordHash,
      passwordSalt,
      email,
      displayName,
      profilePic,
      isActive,
      isUpdateCredentials,
      SaveType,
      userLogID,
    utcOffset
    ];


    const procedureOutputParameters = ["responseStatus", "outputMessage","userId"];
    const procedureName = "userRegistration_insert_update";
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



exports.userRegistration_select_sql = async (
  userId,
  userRoleIds,
  loginUserName,
  email,
  skip,
  limit,
  userLogId
) => {
  try {

    const userRoleIdsString = userRoleIds ? userRoleIds.join(",") : null;

    const procedureParameters = [
      userId,
      userRoleIdsString,
      loginUserName,
      email,
      skip,
      limit,
      userLogId
    ];
    const procedureOutputParameters = [
      "responseStatus",
      "outputMessage",
      "totalRows",
    ];

    const procedureName = "userRegistration_select";
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



exports.userPassword_update_sql = async (
  tenant,
  userName,
  passwordHash,
  passwordSalt
) => {

  try {
    const procedureParameters = [userName, passwordHash, passwordSalt];
    const procedureOutputParameters = ["responseStatus", "outputMessage"];
    const procedureName = "userPassword_update";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters,
    );

    return result;
  } catch (error) {
    throw error;
  }
};





exports.userLogInsertUpdate_sql = async (userId,loginStatus,ipAddress,userAgent,sessionId,additionalInfo,utcOffset,pageName) => {

    try {

      const procedureParameters = [userId,loginStatus,ipAddress,userAgent,sessionId,additionalInfo,utcOffset,pageName];
      const procedureOutputParameters = ["responseStatus","outputMessage","userLogId"];
      const procedureName = "userLog_Insert_Update";
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











// In notesModel.js
exports.note_attachments_select_sql = async (noteId) => {
  try {
    const procedureParameters = [noteId];
    const procedureOutputParameters = [
      "ResponseStatus",
      "OutputMessage",
      "totalRows"
    ];
    const procedureName = "note_attachments_select";
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


exports.notes_insert_update_sql = async (
  noteId,
  note,
  attachments,
  patientId,
  userId,
  saveType,
  utcOffset
) => {
  try {

const attachments_json=JSON.stringify(attachments);

console.log('attachments_json_str',attachments_json);

    const procedureParameters = [
      noteId,
      note,
      attachments_json,
      patientId,
      userId,
      saveType,
      utcOffset
    ];

    const procedureOutputParameters = ["ResponseStatus", "OutputMessage", "noteId_out"];
    const procedureName = "notes_insert_update";
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

exports.notes_select_sql = async (
  patientId,
  skip,
  limit
) => {
  try {
    const procedureParameters = [
      patientId,
      skip,
      limit
    ];
    const procedureOutputParameters = [
      "ResponseStatus",
      "OutputMessage",
      "totalRows",
    ];

    const procedureName = "notes_select";
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


// In notesModel.js
exports.notes_delete_sql = async (noteId) => {
  try {
    const procedureParameters = [noteId];
    const procedureOutputParameters = ["ResponseStatus", "OutputMessage"];
    const procedureName = "notes_delete";
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





exports.ap_patient_insert_sql = async (
  firstName,
  lastName,
  email,
  phone,
  userLogId,
  utcOffset,
  pageName
) => {
  try {
    const procedureParameters = [
      firstName,
      lastName,
      email,
      phone,
      userLogId,
      utcOffset,
      pageName
    ];

    const procedureOutputParameters = [
      'responseStatus',
      'outputMessage',
      'patientNo',
      'outputPatientId'
    ];

    const procedureName = 'ap_patient_insert';

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

exports.getDoctors_drp_sql = async (
  tenant,
  userLogId
) => {
  const { pool } = tenant;
  try {
    const procedureParameters = [
      userLogId
    ];
    const procedureOutputParameters = [
   
    ];
    const procedureName = "drp_doctors_select";
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





exports.summaryNote_Insert_sql = async (patientId,doctorId,notes) => {
  try {
    const procedureParameters = [patientId,doctorId,notes];

    const procedureOutputParameters = [
      'responseStatus',
      'outputMessage'
    ];

    const procedureName = 'summaryNote_Insert';

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


exports.getSummaryNote_sql = async (
  patientId,
      doctorId
) => {
  try {
    const procedureParameters = [
      patientId,
      doctorId
    ];
    const procedureOutputParameters = [
   "responseStatus",
   "outputMessage"
    ];
    const procedureName = "getSummaryNote";
    const result = await executeStoredProcedureWithOutputParamsByPool(
      procedureName,
      procedureParameters,
      procedureOutputParameters
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









































exports.psy_notes_insert_update_sql = async (
  noteId,
  note,
  attachments,
  patientId,
  userId,
  saveType,
  utcOffset
) => {
  try {

const attachments_json=JSON.stringify(attachments);

console.log('attachments_json_str',attachments_json);

    const procedureParameters = [
      noteId,
      note,
      attachments_json,
      patientId,
      userId,
      saveType,
      utcOffset
    ];

    const procedureOutputParameters = ["ResponseStatus", "OutputMessage", "noteId_out"];
    const procedureName = "psy_notes_insert_update";
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




exports.psy_notes_select_sql = async (
  patientId,
  skip,
  limit
) => {
  try {
    const procedureParameters = [
      patientId,
      skip,
      limit
    ];
    const procedureOutputParameters = [
      "ResponseStatus",
      "OutputMessage",
      "totalRows",
    ];

    const procedureName = "psy_notes_select";
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


// In notesModel.js
exports.psy_notes_delete_sql = async (noteId) => {
  try {
    const procedureParameters = [noteId];
    const procedureOutputParameters = ["ResponseStatus", "OutputMessage"];
    const procedureName = "psy_notes_delete";
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


exports.psy_note_attachments_select_sql = async (noteId) => {
  try {
    const procedureParameters = [noteId];
    const procedureOutputParameters = [
      "ResponseStatus",
      "OutputMessage",
      "totalRows"
    ];
    const procedureName = "psy_note_attachments_select";
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
