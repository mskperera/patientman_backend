const express = require('express');
const router = express.Router();
const {
  patientRegistration_Search_ctrl,
  getPatientBasicInfo_ctrl,
  getPatientEducationInfo_ctrl,
  getPatientFamilyInfo_ctrl,
  getPatientMedicalInfo_ctrl,
  getPatientPersonalInfo_ctrl,
  getPatientEducationYears_ctrl,
  getPatientScholarship_ctrl,
  getPatientOL_ctrl,
  getPatientAL_ctrl,
  getPatientUniversity_ctrl,
  patientRegistration_Add_ctrl,
  patientRegistration_Update_ctrl,
  personalInformation_Add_ctrl,
  personalInformation_Update_ctrl,
  familyInformation_Add_ctrl,
  familyInformation_Update_ctrl,
  medicalInformation_Add_ctrl,
  medicalInformation_Update_ctrl,
  education_Add_ctrl,
  patientAppointments_Search_ctrl,
  appointmentsAdd_ctrl,
  getProfileTabDetailsByPatientId_ctrl,
  education_Update_ctrl,
  getUniversitySubjects_drp_ctrl,
  getALSubjects_drp_ctrl,
  getALStreams_drp_ctrl,
  getOLSubjects_drp_ctrl,
  subjectAdd_ctrl,
  getInstitutions_drp_ctrl,
  getGoodPoints_drp_ctrl,
  getBadPoints_drp_ctrl,
  getOccupations_drp_ctrl,
  getRaisedBy_drp_ctrl,
  getReligions_drp_ctrl,
  getTypesOfPerson_drp_ctrl,
  getSocialDifficulties_drp_ctrl,
  getEdexcelIGCSESubjects_drp_ctrl,
  getCambridgeIGCSESubjects_drp_ctrl,
  getEdexcelALSubjects_drp_ctrl,
  getCambridgeALSubjects_drp_ctrl,
  getEdexcelALStreams_drp_ctrl,
  getCambridgeALStreams_drp_ctrl,
  getPatientEdexcelIGCSE_ctrl,
  getPatientCambridgeIGCSE_ctrl,
  getPatientEdexcelAL_ctrl,
  getPatientCambridgeAL_ctrl,
  familyPatientRegistration_Add_ctrl,
  familyPatientRegistration_Update_ctrl
} = require('../controllers/patientProfile');
const { requireSignin, roleMiddleware} = require('../middlewares/auth');
const { USER_ROLE } = require('../utils/constants');


// router.post(
//   '/products',
//   setTenant,
//  requireSignin,
//  roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
//   product_Add
// ); // Add Product

// router.put(
//   '/products/:productId',
//   setTenant,
//   requireSignin,
//   roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
//   product_Update
// ); // Update Product


// router.delete(
//   '/products',
//   setTenant,
//   requireSignin,
//   roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
//   product_delete
// );

router.get(
  '/patient/profileTabDetails/:patientId',
 //requireSignin,
 //roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getProfileTabDetailsByPatientId_ctrl
);

router.post(
  '/patientRegistrations/get',
// requireSignin,
 //roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  patientRegistration_Search_ctrl
);




router.get(
  '/patient/basicInfo/:patientId',
 //requireSignin,
 //roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getPatientBasicInfo_ctrl
);

router.get(
  '/patient/personalInfo/:patientId',
 //requireSignin,
 //roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getPatientPersonalInfo_ctrl
);

router.get(
  '/patient/familyInfo/:patientId',
 //requireSignin,
 //roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getPatientFamilyInfo_ctrl
);

router.get(
  '/patient/medicalInfo/:patientId',
 //requireSignin,
 //roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getPatientMedicalInfo_ctrl
);


router.get(
  '/patient/educationInfo/:patientId',
 //requireSignin,
 //roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getPatientEducationInfo_ctrl
);


router.get(
  '/patient/educationYears/:patientId',
  // requireSignin,
  // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getPatientEducationYears_ctrl
);

router.get(
  '/patient/scholarship/:patientId',
  // requireSignin,
  // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getPatientScholarship_ctrl
);

router.get(
  '/patient/ol/:patientId',
  // requireSignin,
  // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getPatientOL_ctrl
);

router.get(
  '/patient/al/:patientId',
  // requireSignin,
  // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getPatientAL_ctrl
);

router.get(
  '/patient/university/:patientId',
  // requireSignin,
  // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getPatientUniversity_ctrl
);




router.post(
  '/patient/patientRegistration',
 // requireSignin,
 // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
  patientRegistration_Add_ctrl
);

router.put(
  '/patient/patientRegistration/:patientId',
 // requireSignin,
 // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
  patientRegistration_Update_ctrl
);

router.post(
  '/patient/familyPatientRegistration',
  // requireSignin,
  // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER, USER_ROLE.CASHIER]),
  familyPatientRegistration_Add_ctrl
);

router.put(
  '/patient/familyPatientRegistration/:patientId',
  // requireSignin,
  // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER, USER_ROLE.CASHIER]),
  familyPatientRegistration_Update_ctrl
);

router.post(
  '/patient/personalInformation',
 // requireSignin,
 // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
  personalInformation_Add_ctrl
);

router.put(
  '/patient/personalInformation/:patientId',
 // requireSignin,
 // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
  personalInformation_Update_ctrl
);

router.post(
  '/patient/familyInformation',
 // requireSignin,
 // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
  familyInformation_Add_ctrl
);

router.put(
  '/patient/familyInformation/:patientId',
 // requireSignin,
 // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
  familyInformation_Update_ctrl
);


router.post(
  '/patient/medicalInformation',
 // requireSignin,
 // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
  medicalInformation_Add_ctrl
);

router.put(
  '/patient/medicalInformation/:patientId',
 // requireSignin,
 // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
  medicalInformation_Update_ctrl
);

router.post(
  '/patient/education',
 // requireSignin,
 // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
  education_Add_ctrl
);


router.put(
  '/patient/education/:patientId',
 // requireSignin,
 // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
  education_Update_ctrl
);



router.post(
  '/patientAppointments/get',
// requireSignin,
 //roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  patientAppointments_Search_ctrl
);


router.get(
  '/dropdown/universitySubjects',
  getUniversitySubjects_drp_ctrl
);

router.get(
  '/dropdown/alStreams',
  getALStreams_drp_ctrl
);



router.get(
  '/dropdown/alSubjects',
  getALSubjects_drp_ctrl
);

router.get(
  '/dropdown/olSubjects',
  getOLSubjects_drp_ctrl
);

router.post(
  '/appointment',
// requireSignin,
 //roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  appointmentsAdd_ctrl
);

router.post(
  '/subject',
  // requireSignin,
  // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  subjectAdd_ctrl
);

router.get(
  '/dropdown/institutions',
  getInstitutions_drp_ctrl
);

router.get(
  '/dropdown/goodPoints',
  getGoodPoints_drp_ctrl
);


router.get(
  '/dropdown/badPoints',
  getBadPoints_drp_ctrl
);

router.get(
  '/dropdown/occupations',
  getOccupations_drp_ctrl
);

router.get('/dropdown/raisedby', getRaisedBy_drp_ctrl);

router.get('/dropdown/religions', getReligions_drp_ctrl);

router.get('/dropdown/typesofperson', getTypesOfPerson_drp_ctrl);


router.get('/dropdown/socialdifficulties', getSocialDifficulties_drp_ctrl);

// Route for Edexcel IGCSE subjects dropdown
router.get('/dropdown/edexceligcsesubjects', getEdexcelIGCSESubjects_drp_ctrl);

// Route for Cambridge IGCSE subjects dropdown
router.get('/dropdown/cambridgeigcsesubjects', getCambridgeIGCSESubjects_drp_ctrl);

// Route for Edexcel A-Level subjects dropdown
router.get('/dropdown/edexcelalsubjects', getEdexcelALSubjects_drp_ctrl);

// Route for Cambridge A-Level subjects dropdown
router.get('/dropdown/cambridgealsubjects', getCambridgeALSubjects_drp_ctrl);

router.get('/dropdown/edexcelalstreams', getEdexcelALStreams_drp_ctrl);
router.get('/dropdown/cambridgealstreams', getCambridgeALStreams_drp_ctrl);



// Route for Edexcel IGCSE qualifications
router.get(
  '/patient/edexceligcse/:patientId',
  // requireSignin,
  // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getPatientEdexcelIGCSE_ctrl
);

// Route for Cambridge IGCSE qualifications
router.get(
  '/patient/cambridgeigcse/:patientId',
  // requireSignin,
  // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getPatientCambridgeIGCSE_ctrl
);

// Route for Edexcel A-Level qualifications
router.get(
  '/patient/edexcelal/:patientId',
  // requireSignin,
  // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getPatientEdexcelAL_ctrl
);

// Route for Cambridge A-Level qualifications
router.get(
  '/patient/cambridgeal/:patientId',
  // requireSignin,
  // roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  getPatientCambridgeAL_ctrl
);



module.exports = router;


