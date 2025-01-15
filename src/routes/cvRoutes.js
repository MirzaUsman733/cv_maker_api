// src/routes/cvRoutes.js

const express = require("express");
const router = express.Router();
const cvController = require("../controllers/cvController");
const authMiddleware = require("../middleware/authMiddleware");
const apiKeyMiddleware = require("../middleware/apiKeyMiddleware");
const { body } = require("express-validator");

// Route to create a new CV with authentication and input validation
router.post(
  "/cvs",
  authMiddleware,
  apiKeyMiddleware,
  [
    body("cv_unique_id").notEmpty().withMessage("CV unique ID is required"),
    body("cv_info.user.firstName")
      .notEmpty()
      .isString()
      .withMessage("First name is required and must be a string"),
    body("cv_info.user.email").isEmail().withMessage("Valid email is required"),
  ],
  cvController.createCV
);

// Route to GET all CVs for the authenticated user
router.get("/cvs", authMiddleware, apiKeyMiddleware, cvController.getAllCVs);

router.get("/all-cvs", apiKeyMiddleware, cvController.getAllPublicCVs);
// Route to GET a single CV by unique ID for the authenticated user
router.get(
  "/cvs/:cv_unique_id",
  authMiddleware,
  apiKeyMiddleware,
  cvController.getCVById
);

// Route to UPDATE a CV by unique ID with input validation
router.put(
  "/cvs/:cv_unique_id",
  authMiddleware, // Protect route with JWT middleware
  apiKeyMiddleware, // Check x-api-key header
  [
    body("cv_info.user.firstName")
      .optional()
      .isString()
      .withMessage("First name must be a string"),
    body("cv_info.user.email")
      .optional()
      .isEmail()
      .withMessage("Must be a valid email"),
  ],
  cvController.updateCV
);

// Route to DELETE a CV by unique ID for the authenticated user
router.delete(
  "/cvs/:cv_unique_id",
  authMiddleware,
  apiKeyMiddleware,
  cvController.deleteCV
);

module.exports = router;
