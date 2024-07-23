const catchAsync = require('../utils/catchAsync');
const CAHT = require('../models/chatModel');
const AppError = require('./../utils/appError');
exports.checkcaht =
    catchAsync(async (req, res, next) => {
        console.log(req.body.user1.toString(), req.body.user2);
        const thisDoc = await CAHT.find({ user1: { $in: [req.body.user1.toString(), req.body.user2] }, user2: { $in: [req.body.user1.toString(), req.body.user2] } });
        if (thisDoc) return next(new AppError("this chat created before some time", 400))
        next();
    });
