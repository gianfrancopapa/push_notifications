importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-messaging-compat.js");

firebase.initializeApp({
  apiKey: "AIzaSyCHoWeE0aVKSN6zO5eMQGRr6cYp7TAHBCs",
  authDomain: "push-notifications-be959.firebaseapp.com",
  projectId: "push-notifications-be959",
  storageBucket: "push-notifications-be959.appspot.com",
  messagingSenderId: "1033168644939",
  appId: "1:1033168644939:web:ac5c7d0428195530a296ce",
  measurementId: "G-LL47KDYMHD"
});

// Necessary to receive background messages:
const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((m) => {
  console.log("onBackgroundMessage", m);
});