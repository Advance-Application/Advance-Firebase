const functions = require("firebase-functions");
const {initializeApp} = require("firebase-admin/app");
const express = require("express");
const sgmail = require("@sendgrid/mail");
const cors = require("cors");

initializeApp();
const app = express();
app.use(cors());
app.use(express.json());
exports.message = functions.https.onCall((data, context) => {
  return "Function is Online";
});
exports.sendMail = functions.https.onCall((data, context) => {
  const apiKay = data.key;
  sgmail.setApiKey(apiKay);
  const message = {
    personalizations: [
      {
        to: [
          {email: data.to, name: data.toName},
        ],
      },
    ],
    from: {email: data.from, name: "VE"},
    subject: data.subject,
    content: [
      {
        type: "text/html",
        value: data.html,
      },

    ],
  };
  let err="No error";
  sgmail
      .send(message)
      .then(() => {}, (error) => {
        console.error(error);
        err=error;

        if (error.response) {
          console.error(error.response.body);
        }
      });
  return err;
});

