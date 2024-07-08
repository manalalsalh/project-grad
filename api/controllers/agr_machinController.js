const Agr_machin = require("../models/agr_machinModel");
const AppError = require("../utils/appError");
const handlerFactory = require("../utils/handlerFactory");
const catchAsync = require("../utils/catchAsync");
exports.getagr_machin = handlerFactory.getOne(Agr_machin);
exports.createagr_machin = handlerFactory.createOne(Agr_machin);
exports.updateagr_machin = handlerFactory.updateOne(Agr_machin);
exports.deleteagr_machin = handlerFactory.deleteOne(Agr_machin);
exports.getAllagr_machin = handlerFactory.getAll(Agr_machin);
exports.defult = catchAsync(async (req, res, next) => {
  //write your code here
  const doc = []
  if(!doc){
    return (new AppError("Message Error",400))
    }
  res.status(200).json({
    status: "success",
    doc,
  });
});
