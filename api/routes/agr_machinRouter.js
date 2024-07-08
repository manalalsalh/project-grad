const agr_machinController = require("../controllers/agr_machinController");
  const authMiddlewers = require('./../middlewares/authMiddlewers');
  const express = require("express");
  const router = express.Router();
  router.use(authMiddlewers.protect);
  router.route("/").get(agr_machinController.getAllagr_machin).post(agr_machinController.createagr_machin);
  router
    .route("/:id")
    .get(agr_machinController.getagr_machin)
    .patch(agr_machinController.updateagr_machin)
    .delete(agr_machinController.deleteagr_machin);
  module.exports = router;
  