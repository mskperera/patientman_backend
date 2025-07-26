const { executeStoredProcedureWithOutputParamsByPool } = require('./db');

exports.getOccupations = async (userLogId) => {
  try {
    const procedureName = 'drp_occupations_select';
    const procedureParameters = [userLogId];
    const result = await executeStoredProcedureWithOutputParamsByPool(procedureName, procedureParameters, []);
    return result;
  } catch (error) {
    throw error;
  }
};

exports.addOccupation = async (payload) => {
  const { occupationName } = payload;
  try {
    const procedureParameters = [occupationName];
    const procedureOutputParameters = ['responseStatus', 'outputMessage', 'outputOccupationId'];
    const procedureName = 'drp_occupations_insert';
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

exports.deleteOccupation = async (occupationId) => {
  try {
    const procedureParameters = [occupationId];
    const procedureOutputParameters = ['responseStatus', 'outputMessage'];
    const procedureName = 'drp_occupations_delete';
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