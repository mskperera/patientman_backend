
const validator = require('validator');
const { getUserAccountByUsername_sql, userLogInsertUpdate_sql } = require("../sql/patientProfile");
const { comparePassword } = require('../utils/bcryptHash');
const jwt = require("jsonwebtoken");

  exports.login_srv = async (loginUserName, password ,ipAddress,clientPlatform,utcOffset,pageName) => {
    try {
  
  
      const userRes = await getUserAccountByUsername_sql(loginUserName);
      console.log('userRes',userRes)
      if (!userRes) {
        return {exception:{message:"Incorrect username or password. Please try again."}}
      }
      const {
        userId,
        passwordHash,
        email,
        displayName,
        profilePic,
        isActive,
        userRoleId
      } = userRes;
    
      if (!isActive) {
        return {exception:{message:"Your account is inactive. Please contact support for assistance."}}
      }

      const isMatch = await comparePassword(password, passwordHash);

      const loginStatus=isMatch ? "Success":"Failed";
      const userLog=await userLogInsertUpdate_sql(userId,loginStatus,ipAddress,clientPlatform,'sessionId','additionalInfo',utcOffset,pageName)
      console.log("userLog ooooooo:", userLog);

      if (!isMatch) {
        return {exception:{message:"Incorrect username or password. Please try again."}}
      }

      const accessToken = jwt.sign(
        { displayName, email, userId, loginUserName,userRoleId,
          userLogId:userLog.outputValues.userLogId,timeZoneId:1,utcOffset:330 },
       process.env.JWT_SECRET,
        {
          expiresIn: "7d",
        }
      );
  
 
  
      return {
        accessToken,
        message: "Successful login has been completed.",
        loginUserName,email,displayName,profilePic  
      };

    } catch (error) {
        console.log("login_srv()-> err :", error);
        throw error;
    }
  };
