const { productAdd_srv, productUpdate_srv } = require('../services/product');
const { product_delete,getProductTypes_drp_sql, product_select_extraDetails_sql,
   product_availaleStores_select_sql, product_nonSerializedItemsSelect_sql,
    drp_stores_select_sql, getVariationTypes_drp_sql, Product_Select_all_variations_sql,
     product_select_pos_menu_sql, getVariationProductDetails_sql, 
     patientRegistration_Search_sql,
     getPatientBasicInfoByPatientId_sql,
     getPatientEducationInfoByPatientId_sql,
     getPatientPersonalInfoByPatientId_sql,
     getPatientFamilyInfoByPatientId_sql,
     getPatientMedicalInfoByPatientId_sql,
     getPatientUniversityByPatientId_sql,
     getPatientALByPatientId_sql,
     getPatientOLByPatientId_sql,
     getPatientScholarshipByPatientId_sql,
     getPatientEducationYearsByPatientId_sql,
     patient_registration_insert_update_sql,
     personal_information_insert_update_sql,
     family_information_insert_update_sql,
     medical_information_insert_update_sql,
     education_insert_sql,
     patientAppointments_Search_sql,
     appointments_Insert_sql,
     getProfileTabDetailsByPatientId_sql,
     education_insert_update,
     drp_university_subjects_sql,
     drp_al_subjects_sql,
     drp_al_stream_sql,
     drp_ol_subjects_sql,
     insert_subject_sql,
     drp_institutions_sql,
     drp_bad_points_sql,
     drp_good_points_sql,
     drp_occupations_sql,
     drp_raised_by_sql,
     drp_types_of_person_sql,
     drp_religions_sql,
     drp_social_difficulties_sql,
     drp_edexcel_igcse_subjects_sql,
     drp_cambridge_igcse_subjects_sql,
     drp_edexcel_al_subjects_sql,
     drp_cambridge_al_subjects_sql,
     drp_edexcel_al_streams_sql,
     drp_cambridge_al_streams_sql,
     getPatientEdexcelIGCSEByPatientId_sql,
     getPatientCambridgeIGCSEByPatientId_sql,
     getPatientEdexcelALByPatientId_sql,
     getPatientCambridgeALByPatientId_sql,
     family_patient_registration_insert_update_sql,
     personal_information_family_insert_update_sql,
     personal_information_child_insert_update_sql,
     drp_aces_sql,
     medical_information_family_insert_update_sql,
     getPatientInternationalCurriculumByPatientId_sql,
     education_insert_update_family,
     getMentalStatusExamByPatientId_sql} = require('../sql/patientProfile');



     exports.getProfileTabDetailsByPatientId_ctrl =async (req, res) => {

  const {patientId} = req.params;
  const utcOffset='5:30';
  const userLogId=1;//req.authUser.userLogId;
  const pageName='p';

  try {
  const result= await getProfileTabDetailsByPatientId_sql(patientId,userLogId,utcOffset,pageName);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};


exports.patientRegistration_Add_ctrl =async (req, res) => {
  const {
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
      utcOffset,
      pageName,
      isConfirm
  } = req.body;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;

  try {
  const result=  await patient_registration_insert_update_sql(
    null,
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
      "I",
      userLogId,
      utcOffset,
      pageName,
      isConfirm);


if(result.error){
    return res.status(422).json({
      error:result.error
    });
}

      res.json(result);
 

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};


exports.patientRegistration_Update_ctrl =async (req, res) => {

  const {patientId}=req.params;
  const {
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
      utcOffset,
      pageName,
      isConfirm
  } = req.body;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;

  try {
  const result=  await patient_registration_insert_update_sql(
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
      "U",
      userLogId,
      utcOffset,
      pageName,
      isConfirm);


if(result.error){
    return res.status(422).json({
      error:result.error
    });
}

      res.json(result);
 

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};


exports.familyPatientRegistration_Add_ctrl = async (req, res) => {
  const {
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
    utcOffset,
    pageName,
    isConfirm
  } = req.body;

  console.log('body:', req.body);
  const userLogId = 1; // req.authUser.userLogId;

  try {
    const result = await family_patient_registration_insert_update_sql(
      null,
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
      "I",
      userLogId,
      utcOffset,
      pageName,
      isConfirm
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error
      });
    }

    res.json(result);

  } catch (err) {
    console.log('Error:', err);
    return res.status(400).json({ 
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};

exports.familyPatientRegistration_Update_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const {
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
    utcOffset,
    pageName,
    isConfirm
  } = req.body;

  console.log('body:', req.body);
  const userLogId = 1; // req.authUser.userLogId;

  try {
    const result = await family_patient_registration_insert_update_sql(
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
      "U",
      userLogId,
      utcOffset,
      pageName,
      isConfirm
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error
      });
    }

    res.json(result);

  } catch (err) {
    console.log('Error:', err);
    return res.status(400).json({ 
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};

exports.medical_information_family_add_ctrl = async (req, res) => {
  const {
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
  historyOfACESWife,
  additionalInfoHusband,
  additionalInfoWife,
  utcOffset,
  pageName,
  isConfirm
  } = req.body;

  console.log('body:', req.body);
  const userLogId = 1; // req.authUser.userLogId;

  try {
    const result = await medical_information_family_insert_update_sql(
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
  historyOfACESWife,
  additionalInfoHusband,
  additionalInfoWife,
  'I',
  userLogId,
  utcOffset,
  pageName,
  isConfirm
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error
      });
    }

    res.json(result);

  } catch (err) {
    console.log('Error:', err);
    return res.status(400).json({ 
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};

exports.medical_information_family_update_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const {
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
  historyOfACESWife,
  additionalInfoHusband,
  additionalInfoWife,
  utcOffset,
  pageName,
  isConfirm
  } = req.body;

  console.log('body:', req.body);
  const userLogId = 1; // req.authUser.userLogId;

  try {
    const result = await medical_information_family_insert_update_sql(
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
  historyOfACESWife,
  additionalInfoHusband,
  additionalInfoWife,
  "U",
  userLogId,
  utcOffset,
  pageName,
  isConfirm
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error
      });
    }

    res.json(result);

  } catch (err) {
    console.log('Error:', err);
    return res.status(400).json({ 
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};

exports.personalInformation_Add_ctrl =async (req, res) => {
  const {
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
  pageName,
  isConfirm
  } = req.body;

console.log('body:',req.body);
const  utcOffset= '5:30';
  const userLogId=1;//req.authUser.userLogId;

  try {
  const result=  await personal_information_insert_update_sql(
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
  "I",
  userLogId,
  utcOffset,
  pageName,
  isConfirm);


if(result.error){
    return res.status(422).json({
      error:result.error
    });
}

      res.json(result);
 

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};


exports.personalInformation_Update_ctrl =async (req, res) => {

  const {patientId}=req.params;
  const {
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
  pageName,
  isConfirm
  } = req.body;

console.log('body:',req.body);
const utcOffset= '5:30';
  const userLogId=1;//req.authUser.userLogId;

  try {
  const result=  await personal_information_insert_update_sql(
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
  "U",
  userLogId,
  utcOffset,
  pageName,
  isConfirm);


if(result.error){
    return res.status(422).json({
      error:result.error
    });
}

      res.json(result);
 

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};







exports.personalInformationChild_Add_ctrl =async (req, res) => {
  const {
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
  pageName,
  isConfirm
  } = req.body;

console.log('body:',req.body);
const  utcOffset= '5:30';
  const userLogId=1;//req.authUser.userLogId;

  try {
  const result=  await personal_information_child_insert_update_sql(
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
  "I",
  userLogId,
  utcOffset,
  pageName,
  isConfirm);


if(result.error){
    return res.status(422).json({
      error:result.error
    });
}

      res.json(result);
 

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};


exports.personalInformationChild_Update_ctrl =async (req, res) => {

  const {patientId}=req.params;
  const {
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
  pageName,
  isConfirm
  } = req.body;

console.log('body:',req.body);
const utcOffset= '5:30';
  const userLogId=1;//req.authUser.userLogId;

  try {
  const result=  await personal_information_child_insert_update_sql(
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
  "U",
  userLogId,
  utcOffset,
  pageName,
  isConfirm);


if(result.error){
    return res.status(422).json({
      error:result.error
    });
}

      res.json(result);
 

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};











exports.personalInformationFamily_Add_ctrl = async (req, res) => {
  const {
    patientId,
    maritalStatusHusband,
    yearsMarriedHusband,
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
    pageName,
    isConfirm,
    maritalStatusWife,
    yearsMarriedWife,
    occupationTrainedWife,
    occupationWife,
    occupationFullTimeWife // Added optional wife fields
  } = req.body;

  console.log('body:', req.body);
  const utcOffset = '5:30';
  const userLogId = 1; // req.authUser.userLogId;

  try {
    // Validate patient type (only family patients with patientTypeId = 3)
    // const patientTypeId = await getPatientTypeId(patientId);
    // if (patientTypeId !== 3) {
    //   return res.status(400).json({
    //     error: {
    //       message: 'This endpoint is only for family patients (patientTypeId = 3).'
    //     }
    //   });
    // }

    // Validate required fields for family patients
   

    const result = await personal_information_family_insert_update_sql(
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
      "I",
      userLogId,
      utcOffset,
      pageName,
      isConfirm
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error
      });
    }

    res.json(result);

  } catch (err) {
    console.log('Errori: ', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};

exports.personalInformationFamily_Update_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const {
    maritalStatusHusband,
    yearsMarriedHusband,
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
    pageName,
    isConfirm,
    maritalStatusWife,
    yearsMarriedWife,
    occupationTrainedWife,
    occupationWife,
    occupationFullTimeWife // Added optional wife fields
  } = req.body;

  console.log('body:', req.body);
  const utcOffset = '5:30';
  const userLogId = 1; // req.authUser.userLogId;

  try {
    // Validate patient type (only family patients with patientTypeId = 3)
    // const patientTypeId = await getPatientTypeId(patientId);
    // if (patientTypeId !== 3) {
    //   return res.status(400).json({
    //     error: {
    //       message: 'This endpoint is only for family patients (patientTypeId = 3).'
    //     }
    //   });
    // }

    // Validate required fields for family patients
  
 
 

    const result = await personal_information_family_insert_update_sql(
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
      "U",
      userLogId,
      utcOffset,
      pageName,
      isConfirm
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error
      });
    }

    res.json(result);

  } catch (err) {
    console.log('Errori: ', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};

// Helper function to get patientTypeId (assumed to be implemented elsewhere)
async function getPatientTypeId(patientId) {
  const [rows] = await pool.query('SELECT patientTypeId FROM patient_registration WHERE patientId = ?', [patientId]);
  return rows[0]?.patientTypeId || null;
}



exports.familyInformation_Add_ctrl =async (req, res) => {
  const {
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
  pageName,
  isConfirm
  } = req.body;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;
  const utcOffset= '5:30';

  try {
  const result=  await family_information_insert_update_sql(
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
  "I",
  userLogId,
  utcOffset,
  pageName,
  isConfirm);


if(result.error){
    return res.status(422).json({
      error:result.error
    });
}

      res.json(result);
 

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};

exports.familyInformation_Update_ctrl =async (req, res) => {
    const {patientId}=req.params;

  const {
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
  pageName,
  isConfirm
  } = req.body;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;
  const utcOffset= '5:30';

  try {
  const result=  await family_information_insert_update_sql(
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
  "U",
  userLogId,
  utcOffset,
  pageName,
  isConfirm);


if(result.error){
    return res.status(422).json({
      error:result.error
    });
}

      res.json(result);
 

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};



exports.medicalInformation_Add_ctrl =async (req, res) => {
  const {
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
  pageName,
  isConfirm
  } = req.body;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;
 const utcOffset= '5:30';

  try {
  const result=  await medical_information_insert_update_sql(
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
  "I",
  userLogId,
  utcOffset,
  pageName,
  isConfirm);


if(result.error){
    return res.status(422).json({
      error:result.error
    });
}

      res.json(result);
 

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};



exports.medicalInformation_Update_ctrl =async (req, res) => {
    const {patientId}=req.params;

  const {
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
  pageName,
  isConfirm
  } = req.body;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;
const utcOffset= '5:30';
  try {
  const result=  await medical_information_insert_update_sql(
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
  "U",
  userLogId,
  utcOffset,
  pageName,
  isConfirm);


if(result.error){
    return res.status(422).json({
      error:result.error
    });
}

      res.json(result);
 

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};




// exports.education_Add_ctrl =async (req, res) => {
//   const {
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
//   alStreamName,
//   alSubjects,
//   alRemark,
//   isUniversity,
//   universitySubjects,
//   universityRemark
//   } = req.body;

// console.log('body:',req.body);
//   const userLogId=1;//req.authUser.userLogId;
//    const utcOffset= '5:30';

//   try {
//   const result=  await education_insert_update(
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
//   alStreamName,
//   alSubjects,
//   alRemark,
//   isUniversity,
//   universitySubjects,
//   universityRemark,
//   userLogId,
//   "I",
//   utcOffset);


// if(result.error){
//     return res.status(422).json({
//       error:result.error
//     });
// }

//       res.json(result);
 

// } catch (err) {
//   console.log('Errori: ',err)
//   return res.status(400).json({ 
//     error: {
//       message: err.message,
//       name: err.name, // include other properties if needed
//       stack: err.stack
//     }
//   });
// }
// };

// exports.education_Update_ctrl =async (req, res) => {

//   const {patientId}=req.params;
//   const {
//   //patientId,
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
//   alStreamName,
//   alSubjects,
//   alRemark,
//   isUniversity,
//   universitySubjects,
//   universityRemark
//   } = req.body;

// console.log('body:',req.body);
//   const userLogId=1;//req.authUser.userLogId;
//    const utcOffset= '5:30';

//   try {
//   const result=  await education_insert_update(
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
//   alStreamName,
//   alSubjects,
//   alRemark,
//   isUniversity,
//   universitySubjects,
//   universityRemark,
//   userLogId,
//   "U",
//   utcOffset);


// if(result.error){
//     return res.status(422).json({
//       error:result.error
//     });
// }

//       res.json(result);
 

// } catch (err) {
//   console.log('Errori: ',err)
//   return res.status(400).json({ 
//     error: {
//       message: err.message,
//       name: err.name, // include other properties if needed
//       stack: err.stack
//     }
//   });
// }
// };



exports.education_Add_ctrl = async (req, res) => {
  const {
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
  isCambridge
  } = req.body;

  console.log('body:', req.body);
  const userLogId = 1; // req.authUser.userLogId;
  const utcOffset = '5:30';

  try {
    const result = await education_insert_update(
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
      "I",
      utcOffset
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error
      });
    }

    res.json(result);
  } catch (err) {
    console.log('Error: ', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};

exports.education_Update_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const {
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
  isCambridge
  } = req.body;

  console.log('body:', req.body);
  const userLogId = 1; // req.authUser.userLogId;
  const utcOffset = '5:30';

  try {
    const result = await education_insert_update(
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
      "U",
      utcOffset
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error
      });
    }

    res.json(result);
  } catch (err) {
    console.log('Error: ', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};


exports.education_Add_family_ctrl = async (req, res) => {
  const {
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
    isCambridgeWife
  } = req.body;

  console.log('body:', req.body);
  const userLogId = 1; // req.authUser.userLogId;
  const utcOffset = '5:30';

  try {
    const result = await education_insert_update_family(
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
      "I",
      utcOffset
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error
      });
    }

    res.json(result);
  } catch (err) {
    console.log('Error: ', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};

exports.education_Update_family_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const {
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
    isCambridgeWife
  } = req.body;

  console.log('body:', req.body);
  const userLogId = 1; // req.authUser.userLogId;
  const utcOffset = '5:30';

  try {
    const result = await education_insert_update_family(
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
      "U",
      utcOffset
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error
      });
    }

    res.json(result);
  } catch (err) {
    console.log('Error: ', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};

exports.getUniversitySubjects_drp_ctrl =async (req, res) => {

  const { } = req.body;
  const userLogId=1;


  try {
  const result= await drp_university_subjects_sql(userLogId);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name,
      stack: err.stack
    }
  });
}
};


exports.getALStreams_drp_ctrl =async (req, res) => {

  const { } = req.body;
  const userLogId=1;


  try {
  const result= await drp_al_stream_sql(userLogId);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name,
      stack: err.stack
    }
  });
}
};


exports.getALSubjects_drp_ctrl =async (req, res) => {

  const { } = req.body;
  const userLogId=1;


  try {
  const result= await drp_al_subjects_sql(userLogId);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name,
      stack: err.stack
    }
  });
}
};


exports.getOLSubjects_drp_ctrl =async (req, res) => {

  const { } = req.body;
  const userLogId=1;


  try {
  const result= await drp_ol_subjects_sql(userLogId);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name,
      stack: err.stack
    }
  });
}
};



exports.appointmentsAdd_ctrl =async (req, res) => {
  const {
   patientId,
    appointmentDate,
    statusId
  } = req.body;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;
     const utcOffset='5:30';

  try {
  const result=  await appointments_Insert_sql(
   patientId,
    appointmentDate,
    statusId,
    userLogId,
    utcOffset);


if(result.error){
    return res.status(422).json({
      error:result.error
    });
}

      res.json(result);
 

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};









exports.patientRegistration_Search_ctrl =async (req, res) => {
   console.log('products_Select',req.body);
  const {   patientNo, homePhone, businessPhone,email,patientName, firstName, lastName, skip, limit} = req.body;
  const utcOffset='5:30';
  const userLogId=1;//req.authUser.userLogId;
  const pageName='p';

  try {
  const result= await patientRegistration_Search_sql(   patientNo,
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
      pageName);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};

exports.getPatientBasicInfo_ctrl =async (req, res) => {
   console.log('products_Select',req.params);
  const {patientId} = req.params;
  const utcOffset='5:30';
  const userLogId=1;//req.authUser.userLogId;
  const pageName='p';

  try {
  const result= await getPatientBasicInfoByPatientId_sql(patientId,
      userLogId,
      utcOffset,
      pageName,);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};

exports.getPatientPersonalInfo_ctrl =async (req, res) => {
  const {patientId} = req.params;
  const utcOffset='5:30';
  const userLogId=1;//req.authUser.userLogId;
  const pageName='p';

  try {
  const result= await getPatientPersonalInfoByPatientId_sql(patientId,
      userLogId,
      utcOffset,
      pageName,);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};

exports.getPatientFamilyInfo_ctrl =async (req, res) => {
  const {patientId} = req.params;
  const utcOffset='5:30';
  const userLogId=1;//req.authUser.userLogId;
  const pageName='p';

  try {
  const result= await getPatientFamilyInfoByPatientId_sql(patientId,
      userLogId,
      utcOffset,
      pageName,);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};

exports.getPatientMedicalInfo_ctrl =async (req, res) => {
  const {patientId} = req.params;
  const utcOffset='5:30';
  const userLogId=1;//req.authUser.userLogId;
  const pageName='p';

  try {
  const result= await getPatientMedicalInfoByPatientId_sql(patientId,
      userLogId,
      utcOffset,
      pageName,);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};

exports.getPatientEducationInfo_ctrl =async (req, res) => {
  const {patientId} = req.params;
  const utcOffset='5:30';
  const userLogId=1;//req.authUser.userLogId;
  const pageName='p';

  try {
  const result= await getPatientEducationInfoByPatientId_sql(patientId,
      userLogId,
      utcOffset,
      pageName,);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};


exports.getPatientEducationYears_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const utcOffset = '5:30';
  const userLogId = 1; // req.authUser.userLogId;
  const pageName = 'p';

  try {
    const result = await getPatientEducationYearsByPatientId_sql(
      patientId,
      userLogId,
      utcOffset,
      pageName,
    );

    res.json(result);
  } catch (err) {
    console.log('Error: ', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack,
      },
    });
  }
};

exports.getPatientScholarship_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const utcOffset = '5:30';
  const userLogId = 1; // req.authUser.userLogId;
  const pageName = 'p';

  try {
    const result = await getPatientScholarshipByPatientId_sql(
      patientId,
      userLogId,
      utcOffset,
      pageName,
    );

    res.json(result);
  } catch (err) {
    console.log('Error: ', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack,
      },
    });
  }
};

exports.getPatientOL_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const utcOffset = '5:30';
  const userLogId = 1; // req.authUser.userLogId;
  const pageName = 'p';

  try {
    const result = await getPatientOLByPatientId_sql(
      patientId,
      userLogId,
      utcOffset,
      pageName,
    );

    res.json(result);
  } catch (err) {
    console.log('Error: ', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack,
      },
    });
  }
};


exports.getPatientAL_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const utcOffset = '5:30';
  const userLogId = 1; // req.authUser.userLogId;
  const pageName = 'p';

  try {
    const result = await getPatientALByPatientId_sql(
      patientId,
      userLogId,
      utcOffset,
      pageName,
    );

    res.json(result);
  } catch (err) {
    console.log('Error: ', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack,
      },
    });
  }
};

exports.getPatientUniversity_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const utcOffset = '5:30';
  const userLogId = 1; // req.authUser.userLogId;
  const pageName = 'p';

  try {
    const result = await getPatientUniversityByPatientId_sql(
      patientId,
      userLogId,
      utcOffset,
      pageName,
    );

    res.json(result);
  } catch (err) {
    console.log('Error: ', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack,
      },
    });
  }
};



exports.patientAppointments_Search_ctrl =async (req, res) => {
   console.log('products_Select',req.body);
  const {    patientId,
    appointmentNo,
      appointmentDateStart,
      appointmentDateEnd,
      statusId,
      skip,
      limit
    } = req.body;
  const utcOffset='5:30';
  const userLogId=1;//req.authUser.userLogId;
  const pageName='p';

  try {
  const result= await patientAppointments_Search_sql(patientId,
    appointmentNo,
      appointmentDateStart,
      appointmentDateEnd,
      statusId,
      skip,
      limit,
      userLogId,
      utcOffset,
      pageName,);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};


exports.subjectAdd_ctrl =async (req, res) => {
  const {
   subjectName,
    subjectType
  } = req.body;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;
     const utcOffset='5:30';

  try {
  const result=await insert_subject_sql(subjectName,subjectType);


if(result.error){
    return res.status(422).json({
      error:result.error
    });
}

      res.json(result);
 

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name, // include other properties if needed
      stack: err.stack
    }
  });
}
};


exports.getInstitutions_drp_ctrl =async (req, res) => {

  const { } = req.body;
  const userLogId=1;


  try {
  const result= await drp_institutions_sql(userLogId);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name,
      stack: err.stack
    }
  });
}
};



exports.getBadPoints_drp_ctrl =async (req, res) => {

  const { } = req.body;
  const userLogId=1;


  try {
  const result= await drp_bad_points_sql(userLogId);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name,
      stack: err.stack
    }
  });
}
};

exports.getGoodPoints_drp_ctrl =async (req, res) => {

  const { } = req.body;
  const userLogId=1;


  try {
  const result= await drp_good_points_sql(userLogId);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name,
      stack: err.stack
    }
  });
}
};

exports.getOccupations_drp_ctrl =async (req, res) => {

  const { } = req.body;
  const userLogId=1;


  try {
  const result= await drp_occupations_sql(userLogId);

      res.json(result);

} catch (err) {
  console.log('Errori: ',err)
  return res.status(400).json({ 
    error: {
      message: err.message,
      name: err.name,
      stack: err.stack
    }
  });
}
};


exports.getRaisedBy_drp_ctrl = async (req, res) => {
  const userLogId = 1; // or get from req.body / req.user if needed

  try {
    const result = await drp_raised_by_sql(userLogId);
    res.json(result);
  } catch (err) {
    console.error('Error:', err);
    return res.status(400).json({ 
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};

exports.getReligions_drp_ctrl = async (req, res) => {
  const userLogId = 1;

  try {
    const result = await drp_religions_sql(userLogId);
    res.json(result);
  } catch (err) {
    console.error('Error:', err);
    return res.status(400).json({ 
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};

exports.getTypesOfPerson_drp_ctrl = async (req, res) => {
  const userLogId = 1;

  try {
    const result = await drp_types_of_person_sql(userLogId);
    res.json(result);
  } catch (err) {
    console.error('Error:', err);
    return res.status(400).json({ 
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};

exports.getSocialDifficulties_drp_ctrl = async (req, res) => {
  const userLogId = 1; // Static or dynamic if needed
  try {
    const result = await drp_social_difficulties_sql(userLogId);
    res.json(result);
  } catch (err) {
    console.error('Error:', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};



// Controller for International Curriculum qualifications
exports.getPatientInternationalCurriculum_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const utcOffset = '5:30';
  const userLogId = 1; // req.authUser.userLogId;
  const pageName = 'p';

  try {
    const result = await getPatientInternationalCurriculumByPatientId_sql(
      patientId,
      userLogId,
      utcOffset,
      pageName,
    );

    res.json(result);
  } catch (err) {
    console.log('Error: ', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack,
      },
    });
  }
};



exports.getACES_drp_ctrl = async (req, res) => {
  const userLogId = 1; // Static or dynamic if needed
  try {
    const result = await drp_aces_sql(userLogId);
    res.json(result);
  } catch (err) {
    console.error('Error:', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};


exports.getMentalStatusExam_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const utcOffset = '5:30';
  const userLogId = 1; // Replace with req.authUser.userLogId in production
  const pageName = 'mse';

  try {
    const result = await getMentalStatusExamByPatientId_sql(
      patientId,
      userLogId,
      utcOffset,
      pageName
    );

    res.json(result);
  } catch (err) {
    console.log('Error:', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
        stack: err.stack
      }
    });
  }
};