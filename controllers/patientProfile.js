
const { login_srv } = require('../services/userAuth');
const {
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
     family_patient_registration_insert_update_sql,
     personal_information_family_insert_update_sql,
     personal_information_child_insert_update_sql,
     drp_aces_sql,
     medical_information_family_insert_update_sql,
     getPatientInternationalCurriculumByPatientId_sql,
     education_insert_update_family,
     getMentalStatusExamByPatientId_sql,
     mental_status_exam_insert_update_sql,
     mental_status_exam_family_insert_update_sql,
     userRegistration_insert_update_sql,
     getUserAccountByUsername_sql,
     userRegistration_select_sql,
     notes_insert_update_sql,
     notes_select_sql,
     note_attachments_select_sql,
     notes_delete_sql,
     apPatient_Search_sql,
     ap_patient_insert_sql,
     getDoctors_drp_sql,
     summaryNote_Insert_sql,
     getSummaryNote_sql,
     psy_notes_insert_update_sql,
     psy_notes_select_sql,
     psy_notes_delete_sql,
     psy_note_attachments_select_sql,
     deletePatientByPatientId_sql,
     getNoteAttachmentDetailsByPatientId_sql,
     getPsyNoteAttachmentDetailsByPatientId_sql,
     appointment_delete_sql} = require('../sql/patientProfile');

const bcrypt = require("bcrypt");

const {hashPassword} =require('../utils/bcryptHash');

const UAParser = require("ua-parser-js");
const { pool } = require('../mysql/dbConnection');
const { markFileAsTobeDeleted } = require('../services/assets');

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
  pastHistoryOfPsyTeatment,
  individualTherapyYears,
  individualTherapyEndYears,
  groupTherapyHours,
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
  pastHistoryOfPsyTeatment,
  individualTherapyYears,
  individualTherapyEndYears,
  groupTherapyHours,
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
  pastHistoryOfPsyTeatment,
  individualTherapyYears,
  individualTherapyEndYears,
  groupTherapyHours,
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
  pastHistoryOfPsyTeatment,
  individualTherapyYears,
  individualTherapyEndYears,
  groupTherapyHours,
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






exports.saveSummaryNote_ctrl =async (req, res) => {
  const {
  note
  } = req.body;

  const {patientId,doctorId}=req.query;


  try {
  const result=  await summaryNote_Insert_sql(
    patientId,doctorId,
   note);


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



exports.getSummaryNote_ctrl =async (req, res) => {
const {patientId,doctorId}=req.query;
console.log('patientId,',patientId)
  try {
  const result= await getSummaryNote_sql(patientId,doctorId);

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
        appointmentNo,
   patientId,
   doctorId,
    appointmentDate,
    duration,
    statusId
  } = req.body;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;
     const utcOffset='5:30';

  try {
  const result=  await appointments_Insert_sql(
    null,
       appointmentNo,
   patientId,
   doctorId,
    appointmentDate,
    duration,
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

exports.appointmentsUpdate_ctrl =async (req, res) => {
  const {
        appointmentNo,
   patientId,
   doctorId,
    appointmentDate,
    duration,
    statusId
  } = req.body;

  const {appointmentId}=req.params;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;
     const utcOffset='5:30';

  try {
  const result=  await appointments_Insert_sql(
    appointmentId,
        appointmentNo,
   patientId,
   doctorId,
    appointmentDate,
    duration,
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


exports.apPatient_Search_ctrl =async (req, res) => {
   console.log('products_Select',req.body);
  const { patientNo,homePhone,email,patientName,
      skip, limit} = req.body;
      
  const utcOffset='5:30';
  const userLogId=1;//req.authUser.userLogId;
  const pageName='p';

  try {
  const result= await apPatient_Search_sql(
patientNo,
      homePhone,
      email,
      patientName,
      skip,
      limit,
      userLogId,
      utcOffset,
      pageName,
    );

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

  const {    patientId,
    doctorId,
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
  const result= await patientAppointments_Search_sql(patientId,doctorId,
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

exports.mentalStatusExam_Add_ctrl = async (req, res) => {
  const {
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
    isConfirm,
  } = req.body;

  const userLogId = 1; // Hardcoded as per provided example
  const utcOffset='5:30';
  const pageName='p';

  try {
    const result = await mental_status_exam_insert_update_sql(
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
      "I",
      userLogId,
      utcOffset,
      pageName,
      isConfirm
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error,
      });
    }

    res.json(result);
  } catch (err) {
    console.log('Error:', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
      },
    });
  }
};


exports.mentalStatusExam_Update_ctrl = async (req, res) => {

  const { patientId}=req.params;

  const {
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
    isConfirm,
  } = req.body;

  const userLogId = 1; // Hardcoded as per provided example
  const utcOffset='5:30';
  const pageName='p';

  try {
    const result = await mental_status_exam_insert_update_sql(
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
      "U",
      userLogId,
      utcOffset,
      pageName,
      isConfirm
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error,
      });
    }

    res.json(result);
  } catch (err) {
    console.log('Error:', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
      },
    });
  }
};





// Add controller for family mental status exam
exports.mentalStatusExamFamily_Add_ctrl = async (req, res) => {
  const {
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
    isConfirm,
  } = req.body;

  const userLogId = 1; // Hardcoded as per provided example
  const utcOffset = '5:30';
  const pageName = 'p';

  try {
    const result = await mental_status_exam_family_insert_update_sql(
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
      "I",
      userLogId,
      utcOffset,
      pageName,
      isConfirm
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error,
      });
    }

    res.json(result);
  } catch (err) {
    console.log('Error:', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
      },
    });
  }
};

// Update controller for family mental status exam
exports.mentalStatusExamFamily_Update_ctrl = async (req, res) => {
  const { patientId } = req.params;

  const {
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
    isConfirm,
  } = req.body;

  const userLogId = 1; // Hardcoded as per provided example
  const utcOffset = '5:30';
  const pageName = 'p';

  try {
    const result = await mental_status_exam_family_insert_update_sql(
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
      "U",
      userLogId,
      utcOffset,
      pageName,
      isConfirm
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error,
      });
    }

    res.json(result);
  } catch (err) {
    console.log('Error:', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
      },
    });
  }
};


exports.login_ctrl = async (req, res) => {
  const { loginUsername, password } = req.body;

    let clientIp = req.headers["x-forwarded-for"] || req.socket.remoteAddress;

    // If multiple IPs are forwarded, take the first one
    if (clientIp.includes(",")) {
      clientIp = clientIp.split(",")[0].trim();
    }
  
  // Get Client Platform Information
  const userAgent = req.headers["user-agent"];
  const parser = new UAParser(userAgent);
  const clientPlatform = {
    os: parser.getOS().name + " " + parser.getOS().version,
    browser: parser.getBrowser().name + " " + parser.getBrowser().version,
    device: parser.getDevice().model || "Unknown Device",
  };

  console.log("Client IP:", clientIp);
  console.log("Client Platform:", clientPlatform);
  
  const clientPlatform_str=JSON.stringify(clientPlatform);

  // return res.json({
  //   req
  // });

  try {
    if (!loginUsername) {
      return res.status(422).json({
        error: "Login User Name is Required",
      });
    }

    if (!password) {
      return res.status(422).json({
        error: "Password is Required",
      });
    }

    const loginRes = await login_srv(loginUsername, password ,clientIp,clientPlatform_str,330,'pageName');

    console.log('loginRes',loginRes);
    if (loginRes.exception) {
      return res.status(401).json(loginRes);
    }

    res.cookie("accessToken", loginRes.accessToken, {
      httpOnly: true,
      expiresIn: "1d",
    });

  const {uName,email,displayName,profilePic}=  loginRes;
    res.status(200).json({ accessToken: loginRes.accessToken,uName,email,displayName,profilePic });

    //res.status(200).json(loginRes );
  } catch (err) {
    console.log('Error:', err);
    return res.status(400).json({
      error: {
        message: err.message,
        name: err.name,
      },
    });
  }
};


exports.user_Add_ctrl = async (req, res) => {
  const {
 loginUserName,loginPassword, email,
      displayName,profilePic, isActive,isUpdateCredentials,userRoleId
  } = req.body;

  const userLogId = 1;
  const utcOffset="5:30";
  
    const passwordSalt = bcrypt.genSaltSync(10);
    const passwordHash =await hashPassword(loginPassword);
    console.log('loginPassword---------oooo',loginPassword)
    console.log('passwordHash---------oooo',passwordHash)

  try {
    const result = await userRegistration_insert_update_sql(
    null,
      userRoleId,
      loginUserName,
      passwordHash,
      passwordSalt,
      email,
      displayName,
      profilePic,
      isActive,
      isUpdateCredentials,
     "I",
      userLogId,
    utcOffset
    );

    if (result.error) {
      return res.status(422).json({
        error: result.error
      });
    }

    res.json(result);

  }  catch (err) {
    console.error('Error in userAddCtrl:', err); // Use console.error for errors
    return res.status(500).json({ // Use 500 for server errors
      error: {
        message: 'Internal server error',
        // Only include detailed error in development
        ...(process.env.NODE_ENV === 'development' && { details: err.message })
      }
    });
  }
};


exports.getUserAccountByUsername_ctrl = async (req, res) => {
  const {
 loginUserName,
  } = req.params;


  try {
    const result = await getUserAccountByUsername_sql(loginUserName);

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
      },
    });
  }
};




exports.user_Update_ctrl = async (req, res) => {
  const {
loginUserName,loginPassword, email,
      displayName,profilePic, isActive,isUpdateCredentials,userRoleId
  } = req.body;

  const {userId}=req.params;

  const userLogId = 1;
  const utcOffset="5:30";
  
    const passwordSalt = bcrypt.genSaltSync(10);
    const passwordHash =await hashPassword(loginPassword);


  try {
    const result = await userRegistration_insert_update_sql(
    userId,
      userRoleId,
      loginUserName,
      passwordHash,
      passwordSalt,
      email,
      displayName,
      profilePic,
      isActive,
      isUpdateCredentials,
     "U",
      userLogId,
    utcOffset
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
      },
    });
  }
};



exports.getUsers_ctrl = async (req, res) => {
  const {
  userId,
  userRoleIds,
  loginUserName,
  email,
  skip,
  limit
  } = req.body;

  const userLogId = 1;
  const utcOffset="5:30";
  

  try {
    const result = await userRegistration_select_sql(
     userId,
  userRoleIds,
  loginUserName,
  email,
  skip,
  limit,
  userLogId
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
      },
    });
  }
};




// In controllers, e.g., notesController.js

exports.notes_Add_ctrl = async (req, res) => {
  const { notes, patientId, userId,attachments } = req.body;
  const utcOffset = "5:30"; // As in examples
console.log('patientId ccc',patientId);


  try {
    const result = await notes_insert_update_sql(
      null,
      notes,
      attachments,
      patientId,
      userId,
      "I",
      utcOffset
    );

    if (result.error || result.outputValues.ResponseStatus === 'failed') {
      return res.status(422).json({
        error: result.outputValues.OutputMessage || result.error
      });
    }

    const noteId = result.outputValues.noteId_out;

    res.json(result);
  } catch (err) {
    console.error('Error in notes_Add_ctrl:', err);
    return res.status(500).json({
      error: {
        message: 'Internal server error',
      }
    });
  }
};


exports.notes_Update_ctrl = async (req, res) => {
  const { note, patientId, userId } = req.body;
  const { noteId } = req.params;
  const utcOffset = "5:30";

  try {
    const result = await notes_insert_update_sql(
      noteId,
      note,
      patientId,
      userId,
      "U",
      utcOffset
    );

    if (result.error || result.outputValues.ResponseStatus === 'failed') {
      return res.status(422).json({
        error: result.outputValues.OutputMessage || result.error
      });
    }

    // Handle attachments with delete
    await handleAttachments(req, noteId, true); // true for update, delete first

    res.json(result);
  } catch (err) {
    console.error('Error in notes_Update_ctrl:', err);
    return res.status(500).json({
      error: {
        message: 'Internal server error',
      }
    });
  }
};




exports.notes_get_ctrl = async (req, res) => {
  const { patientId, skip = 0, limit = 100 } = req.body;

  try {
    const result = await notes_select_sql(
      patientId,
      skip,
      limit
    );

    if (result.error || result.outputValues.ResponseStatus === 'failed') {
      return res.status(422).json({
        error: result.outputValues.OutputMessage || result.error
      });
    }

    const notes = result.results[0]; 

    res.json(notes);
  } catch (err) {
    console.error('Error in notes_get_ctrl:', err);
    return res.status(500).json({
      error: {
        message: 'Internal server error',
      }
    });
  }
};


// In notesController.js
exports.notes_Delete_ctrl = async (req, res) => {
  const { noteId } = req.params;

  try {
    const result = await notes_delete_sql(noteId);

    if (result.error || result.outputValues.ResponseStatus === 'failed') {
      return res.status(422).json({
        error: result.outputValues.OutputMessage || result.error
      });
    }

    // Unlink physical files from attachment paths returned by the stored procedure
    const attachments = result.results[0] || []; // attachmentPath rows
    attachments.forEach(att => {
      const filePath = path.join('public/uploads/notes/', att.attachmentPath);
      if (fs.existsSync(filePath)) {
        fs.unlinkSync(filePath);
      }
    });

    res.json({ success: true, message: result.outputValues.OutputMessage });
  } catch (err) {
    console.error('Error in notes_Delete_ctrl:', err);
    return res.status(500).json({
      error: {
        message: 'Internal server error',
        ...(process.env.NODE_ENV === 'development' && { details: err.message })
      }
    });
  }
};




exports.apPatientAdd_ctrl = async (req, res) => {
  const {
    firstName,
    lastName,
    email,
    phone,
    utcOffset,
    pageName
  } = req.body;

  const userLogId = 1; // req.authUser.userLogId;

  try {
    const result = await ap_patient_insert_sql(
      firstName,
      lastName,
      email,
      phone,
      userLogId,
      utcOffset,
      pageName
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



exports.getDoctors_drp_ctrl =async (req, res) => {

  const { } = req.body;
  const userLogId=1;


  try {
  const result= await getDoctors_drp_sql(userLogId);

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












































exports.psy_notes_Add_ctrl = async (req, res) => {
  const { notes, patientId, userId,attachments } = req.body;
  const utcOffset = "5:30"; // As in examples
console.log('patientId ccc',patientId);


  try {
    const result = await psy_notes_insert_update_sql(
      null,
      notes,
      attachments,
      patientId,
      userId,
      "I",
      utcOffset
    );

    if (result.error || result.outputValues.ResponseStatus === 'failed') {
      return res.status(422).json({
        error: result.outputValues.OutputMessage || result.error
      });
    }

    const noteId = result.outputValues.noteId_out;

    res.json(result);
  } catch (err) {
    console.error('Error in notes_Add_ctrl:', err);
    return res.status(500).json({
      error: {
        message: 'Internal server error',
      }
    });
  }
};


exports.psy_notes_Update_ctrl = async (req, res) => {
  const { note, patientId, userId } = req.body;
  const { noteId } = req.params;
  const utcOffset = "5:30";

  try {
    const result = await psy_notes_insert_update_sql(
      noteId,
      note,
      patientId,
      userId,
      "U",
      utcOffset
    );

    if (result.error || result.outputValues.ResponseStatus === 'failed') {
      return res.status(422).json({
        error: result.outputValues.OutputMessage || result.error
      });
    }

    // Handle attachments with delete
    await handleAttachments(req, noteId, true); // true for update, delete first

    res.json(result);
  } catch (err) {
    console.error('Error in notes_Update_ctrl:', err);
    return res.status(500).json({
      error: {
        message: 'Internal server error',
      }
    });
  }
};




exports.psy_notes_get_ctrl = async (req, res) => {
  const { patientId, skip = 0, limit = 100 } = req.body;

  try {
    const result = await psy_notes_select_sql(
      patientId,
      skip,
      limit
    );

    if (result.error || result.outputValues.ResponseStatus === 'failed') {
      return res.status(422).json({
        error: result.outputValues.OutputMessage || result.error
      });
    }

    const notes = result.results[0]; 

    res.json(notes);
  } catch (err) {
    console.error('Error in notes_get_ctrl:', err);
    return res.status(500).json({
      error: {
        message: 'Internal server error',
      }
    });
  }
};


// In notesController.js
exports.psy_notes_Delete_ctrl = async (req, res) => {
  const { noteId } = req.params;

  try {
    const result = await psy_notes_delete_sql(noteId);

    if (result.error || result.outputValues.ResponseStatus === 'failed') {
      return res.status(422).json({
        error: result.outputValues.OutputMessage || result.error
      });
    }

    // Unlink physical files from attachment paths returned by the stored procedure
    const attachments = result.results[0] || []; // attachmentPath rows
    attachments.forEach(att => {
      const filePath = path.join('public/uploads/notes/', att.attachmentPath);
      if (fs.existsSync(filePath)) {
        fs.unlinkSync(filePath);
      }
    });

    res.json({ success: true, message: result.outputValues.OutputMessage });
  } catch (err) {
    console.error('Error in notes_Delete_ctrl:', err);
    return res.status(500).json({
      error: {
        message: 'Internal server error',
        ...(process.env.NODE_ENV === 'development' && { details: err.message })
      }
    });
  }
};




exports.deletePatientByPatientId_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const utcOffset = "5:30";

  try {

    const allNotesAttachDetailsRes=await getNoteAttachmentDetailsByPatientId_sql(patientId);
const attachNoteRes=allNotesAttachDetailsRes.results[0];

    const allPsyNotesAttachDetailsRes=await getPsyNoteAttachmentDetailsByPatientId_sql(patientId);
const attachPsyNoteRes=allPsyNotesAttachDetailsRes.results[0];

      console.log('allPsyNotesAttachDetailsRes e',allPsyNotesAttachDetailsRes);
try{


  attachNoteRes?.forEach(async e=>{
      console.log('allNotesAttachDetailsRes e',e.hash);
const markFileAsTobeDeletedRes=await markFileAsTobeDeleted(e.hash);
 console.log('markFileAsTobeDeletedRes e',markFileAsTobeDeletedRes);
  })


    attachPsyNoteRes?.forEach(async e=>{
      console.log('allPsyNotesAttachDetailsRes e',e.hash);
const markFileAsTobeDeletedRes=await markFileAsTobeDeleted(e.hash);
 console.log('markFileAsTobeDeletedRes Psy',markFileAsTobeDeletedRes);
  })


}
catch(err){
 console.log('Error:',err);
}
  
   const result = await deletePatientByPatientId_sql(
      patientId
     );

    // Handle attachments with delete
    //await handleAttachments(req, noteId, true); // true for update, delete first

    res.json(result);
  } catch (err) {
    console.error('Error in notes_Update_ctrl:', err);
    return res.status(500).json({
      error: {
        message: 'Internal server error',
      }
    });
  }
};


exports.getNoteAttachmentDetailsByPatientId_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const utcOffset = "5:30";

  try {
    const result = await getNoteAttachmentDetailsByPatientId_sql(
      patientId
    );

    // Handle attachments with delete
    //await handleAttachments(req, noteId, true); // true for update, delete first

    res.json(result);
  } catch (err) {
    console.error('Error in notes_Update_ctrl:', err);
    return res.status(500).json({
      error: {
        message: 'Internal server error',
      }
    });
  }
};




exports.getPsyNoteAttachmentDetailsByPatientId_ctrl = async (req, res) => {
  const { patientId } = req.params;
  const utcOffset = "5:30";

  try {
    const result = await getPsyNoteAttachmentDetailsByPatientId_sql(
      patientId
    );

    // Handle attachments with delete
    //await handleAttachments(req, noteId, true); // true for update, delete first

    res.json(result);
  } catch (err) {
    console.error('Error in notes_Update_ctrl:', err);
    return res.status(500).json({
      error: {
        message: 'Internal server error',
      }
    });
  }
};




// In notesController.js
exports.appointmentDelete_ctrl = async (req, res) => {
  const { appointmentId } = req.params;

  try {
    const result = await appointment_delete_sql(appointmentId);

    res.json(result);
  } catch (err) {
    return res.status(500).json({
      error: {
        message: 'Internal server error',
        ...(process.env.NODE_ENV === 'development' && { details: err.message })
      }
    });
  }
};
