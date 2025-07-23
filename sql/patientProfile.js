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
  alStreamId,
  alSubjects,
  alRemark,
  isUniversity,
  universitySubjects,
  universityRemark,
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
      alStreamId,
      alSubjects_json,
      alRemark,
      isUniversity,
      universitySubjects_json,
      universityRemark,
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
    ...row,
      subjects: parsedSubjects
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
    //  if (responseStatus === SP_STATUS.failed) {
    //   return { responseStatus, outputMessage };
    // }

     const row = result.results[0][0];

    // if(row){
    const parsedSubjects = row.subjects ? JSON.parse(row.subjects) : [];

    return {...row, subjects: parsedSubjects};
  //}
  // else{
  //   return null;
  // }
    
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
