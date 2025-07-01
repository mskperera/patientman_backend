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
     appointments_Insert_sql} = require('../sql/patientProfile');

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
      referralPartyPresent,
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
      referralPartyPresent,
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
      referralPartyPresent,
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
      referralPartyPresent,
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
  utcOffset,
  pageName,
  isConfirm
  } = req.body;

console.log('body:',req.body);
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
  utcOffset,
  pageName,
  isConfirm
  } = req.body;

console.log('body:',req.body);
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
  utcOffset,
  pageName,
  isConfirm
  } = req.body;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;

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
  utcOffset,
  pageName,
  isConfirm
  } = req.body;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;

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
  utcOffset,
  pageName,
  isConfirm
  } = req.body;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;

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
  utcOffset,
  pageName,
  isConfirm
  } = req.body;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;

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




exports.education_Add_ctrl =async (req, res) => {
  const {
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
  utcOffset,
  isConfirm
  } = req.body;

console.log('body:',req.body);
  const userLogId=1;//req.authUser.userLogId;

  try {
  const result=  await education_insert_sql(
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
  const {   patientNo, homePhone, businessPhone,email, firstName, lastName, skip, limit} = req.body;
  const utcOffset='5:30';
  const userLogId=1;//req.authUser.userLogId;
  const pageName='p';

  try {
  const result= await patientRegistration_Search_sql(   patientNo,
      homePhone,
      businessPhone,
      email,
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







exports.product_delete =async (req, res) => {
  const { productId, isConfirm } = req.query;

  const _isConfirm = JSON.parse(isConfirm);

  const tenant=req.tenant;
  const utcOffset='5:30';
  const userLogId=req.authUser.userLogId;
  const pageName='p';
  console.log('product_delete: ',_isConfirm)
  try {
  const result=  await product_delete(tenant,productId, userLogId,utcOffset,pageName,_isConfirm);
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

exports.getProductTypes_drp =async (req, res) => {

  const { } = req.body;
  const tenant=req.tenant;
  const utcOffset='5:30';
  const userLogId=req.authUser.userLogId;
  const pageName='p';

  try {
  const result= await getProductTypes_drp_sql(tenant, userLogId,utcOffset,pageName);

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


exports.getProductExtraDetails =async (req, res) => {

  const {productId} = req.query;
  const tenant=req.tenant;

  try {
  const result= await product_select_extraDetails_sql(tenant,productId);
   // console.log('products_Select result',result.results);
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


exports.getProductAvailaleStores =async (req, res) => {

  const {productId,variationProductId} = req.body;
  const tenant=req.tenant;

  try {
  const result= await product_availaleStores_select_sql(tenant,productId,variationProductId);
    console.log('getProductAvailaleStores result',productId,result);
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


exports.getNonSerializedItems =async (req, res) => {

  const {productId,variationProductId} = req.body;
  const tenant=req.tenant;

  try {
  const result= await product_nonSerializedItemsSelect_sql(tenant,productId,variationProductId);
   // console.log('products_Select result',result.results);
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



exports.getStores_ctrl =async (req, res) => {

  const tenant=req.tenant;
  const utcOffset='5:30';
  const userLogId=req.authUser.userLogId;
  const pageName='p';

  try {
  const result= await drp_stores_select_sql(tenant, userLogId,utcOffset,pageName);

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


exports.getVariationTypes_drp =async (req, res) => {

  const { } = req.body;
  const tenant=req.tenant;
  const utcOffset='5:30';
  const userLogId=req.authUser.userLogId;
  const pageName='p';

  try {
  const result= await getVariationTypes_drp_sql(tenant, userLogId,utcOffset,pageName);

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
