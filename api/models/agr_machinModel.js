const mongoose = require("mongoose");
const agr_machinSchema = new mongoose.Schema({
  
  name: {
    required: [true, 'must enter name'],
    type: String,
  },
  discrption: {
    required: [true, 'must enter discrption'],
    type: String,
  },
  
},{
      timestamps: true,
      versionKey: false
    });
    const Agr_machin = mongoose.model("Agr_machin", agr_machinSchema);
    module.exports = Agr_machin;
    