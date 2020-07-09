App.onLaunch = function(options) {
    // 1
    var alert = createAlert("Hello World", ""); //leaving 2nd parameter with an empty string
    navigationDocument.presentModal(alert);
  }
  
  // 2
  var createAlert = function(title, description) {
    var alertString = `<?xml version="1.0" encoding="UTF-8" ?>
      <document>
        <mediaDescription title="Este es el titulo" subTitle="Este es el sub titulo" text="Este es el 3er texto" description="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." style="width:1920; height:500;">

        </mediaDescription>
      </document>`
      var parser = new DOMParser();
      var alertDoc = parser.parseFromString(alertString, "application/xml");
      return alertDoc
  }