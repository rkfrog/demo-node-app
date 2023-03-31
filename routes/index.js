const express = require('express');
const router = express.Router();
const os = require('os');

/* GET home page. */
router.get('/', function(req, res, next) {
  const os_hostname = os.hostname();
  const os_arch = os.arch();
  const os_ni = os.networkInterfaces();
  console.log(os_ni);
  // var os_ip = JSON.stringify(os_ni)
  // os_ip = JSON.parse(os_ip);
  // os_ip = os_ip.eth0[0].address;
  // console.log(os_ip);
  res.render('index', { 
    title: 'Hi there!',
    version: 'v1.1.14',
    os: {
      hostname: os_hostname,
      arch: os_arch
      // ip: os_ip
    }
  });
});

module.exports = router;
