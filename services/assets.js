import axios from 'axios';
    
    export const markFileAsTobeDeleted = async (fileHash) => {
      try {
    
        return await axios
          .post(`${process.env.REACT_APP_API_CDN}/imageUpload/markFileAsTobeDeleted`, {fileHash}, {
            headers: {
              "Content-Type": "application/json",
            },
          })
          .then((res) => res.data)
          .catch((err) => {
            console.error('Error uploading image:', err);
            return err.response;
          });
      } catch (err) {
        console.error('Unexpected error in uploadImage:', err);
        return err;
      }
    };
    