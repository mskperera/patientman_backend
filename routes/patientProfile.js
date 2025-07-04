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
  appointmentsAdd_ctrl
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





router.post(
  '/patientAppointments/get',
// requireSignin,
 //roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  patientAppointments_Search_ctrl
);


router.post(
  '/appointment',
// requireSignin,
 //roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER]),
  appointmentsAdd_ctrl
);

// router.post(
//   '/product/getProductsPosMenu',
//   setTenant,
//   requireSignin,
//   roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
//   getProductsPosMenu
// );

// router.post(
//   '/product/getVariationProductDetails',
//   setTenant,
//   requireSignin,
//   roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
//   getVariationProductDetails_ctrl
// );

// router.post(
//   '/product/productsAllVariations',
//   setTenant,
//   requireSignin,
//   roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
//   getProductsAllVariations
// );


// router.get(
//   '/dropdown/productTypes',
//   setTenant,
//   requireSignin,
//   roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
//   getProductTypes_drp
// );

// router.get(
//   '/dropdown/getVariationTypes',
//   setTenant,
//   requireSignin,
//   roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
//   getVariationTypes_drp
// );


// router.get(
//   '/product/products/extra',
//   setTenant,
//   requireSignin,
//   roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
//   getProductExtraDetails
// );


// router.post(
//   '/product/getProductAvailaleStores',
//   setTenant,
//   requireSignin,
//   roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
//   getProductAvailaleStores
// );

// router.post(
//   '/product/getNonSerializedItems',
//   setTenant,
//   requireSignin,
//   roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
//   getNonSerializedItems
// );


// router.get(
//   '/dropdown/getStores',
//   setTenant,
//    requireSignin,
//   roleMiddleware([USER_ROLE.ADMIN, USER_ROLE.MANAGER,USER_ROLE.CASHIER]),
//   getStores_ctrl
// );

module.exports = router;


