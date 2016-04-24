# Open Source Workshop: APEX Front-End Boost

APEX Front-End Boost (AFEB) is the latest tool to be released from OOS. AFEB makes coding faster, easier, and prettier. This productivity tool helps you work with static files (`js`, `css`, `images`, etc.) more efficiently within an APEX application.

In this workshop you'll install, configure, and run AFEB.

## Background

TODO walk through current options of updating files in APEX

## Setup

_Note: a copy of Node.js and Git are provided on the USB drive_

### Node.js

If you don't already already have [Node.js](https://nodejs.org/) download it on your laptop. Users with an older version of Node.js will need to upgrade to the most recent copy.

### Git

Though not necessary but it is highly recommended that you install Git for command line. [Download](https://git-scm.com/download/).

_Mac users: If you have XCode installed, you do not need to install Git as you already have it._

### Web Files

Somewhere on your system create the following directory setup (root folder `www` can be what ever you want).

```
/www
  /src
    /img
    /css
    /js
  /dist
```

**Linux:**
```bash
mkdir -p www/{src/{img,css,js},dist}
```

**Windows:**
```dos
md www\src www\src\img www\src\css www\src\js www\dist
```

We will add content to these folders later on.



## Install

Create a directory where you'd like AFEB to be installed in. This is **not** the same directory where your web files reside in.


_Note: If you did not install Git just use the zip version provided in with the USB stick and do not run `git clone`_
```bash
git clone https://github.com/OraOpenSource/apex-frontend-boost.git
cd apex-frontend-boost
npm install
```

_Note: If installing on Windows you may see some errors during installation. This is due to BrowserSync requiring C++ runtime libraries. In most cases you can ignore these issues. More information is available [here](https://github.com/OraOpenSource/apex-frontend-boost/blob/master/docs/windows.md)_


## Configure

### AFEB Configuration
In the root folder of `apex-frontend-boost` there is a file called `config.json`. Modifying this file allows you to configure multiple projects. Open `config.json` and remove the entire contents and replace with:

```json
{
  "apexconnect": {
      "appURL": "TODO_URL_TO_YOUR_APPLICATION",
      "srcFolder": "TODO_SRC_FOLDER",
      "distFolder": "TODO_DEST_FOLDER",
      "cssConcat": {
        "enabled": false
      },
      "javascriptConcat": {
        "enabled": false
      }
  }
}
```

Change the entries prefixed with `TODO` with the values below. They will differ depending on where you created the `www` folders above. For the examples below the following directories were used:

- APEX: 'http://training01.oraopensource.com/apex/f?p=TODO'   
  - This will depend on the server you were assigned to and the application ID for this open source workshop. Be sure the application ID matches your application.
- Linux/OSx: `/Users/giffy/Temp/github/www`
- Windows: `C:\Users\marti\Downloads\www`


Parameter | Linux/OSx | Windows
--- | --- | ---
`TODO_URL_TO_YOUR_APPLICATION` | `http://training01.oraopensource.com/apex/f?p=TODO` | `<same>`
`TODO_SRC_FOLDER` | `/Users/giffy/Temp/github/www/src` | `C:\Users\marti\Downloads\www`
`TODO_DEST_FOLDER` | ``/Users/giffy/Temp/github/www/dest` | `C:\Users\marti\Downloads\www\dest`

A few things to note:

- The working files should be stored in the `src` (source) folder. The `dest` (destination) folder is automatically populated from AFEB.
- `cssConcat` and `javascriptConcat` options will be disabled by default in the next version of AFEB (`2.1.0`). The purpose of this feature is to merge all the files in each `js` and `css` into single files.

To ensure that everything is configured properly go to the directory where AFEB is installed in and run: `npm start -- --project=apexconnect`. If everything works a new tab in your browser will automatically be opened with a URL similar to: `http://localhost:3000/apex/f?p=127`. The key thing here is `http://localhost:3000`. Despite the reference to `localhost` it is still running your application on the `oraopensource.com` training server.


### APEX Configuration

- Go to the [`apex-setup`](TODO) guide and do the setup for `Option 1) Standard` in your application.
  - For the purposes of this workshop you don't need to create the `DEV_ONLY` Build Option.

TODO move the src original files into Software


## Develop with AFEB

In this section you will use AFEB to work with CSS in your text editor in real time rather than in APEX. If you left AFEB running (as part of configuration section) stop it. To stop it it `Ctrl+c` in the command console.

Edit P20 and look at the page properties. The `JavaScript` and `CSS` File URLs have been seeded with references to the `APP_IMAGES` files (Application static files).

Run P20. You should notice the text is in blue. Open the Console window and click the `Run JS` button. A message should not appear in the console. The CSS and JS content are loaded from the Application Static Files section.

Edit the JS and CSS files using AFEB:

- Open `www/src/css/demo.css` and `www/src/js/demo.js` in a text editor.
- Run `npm start -- --project=apexconnect`. This will open a new browser window. Login and go to P20.
- Split your screen so that the text editor takes up half and the browser window the other half.
- Edit `demo.css` and change the CSS for the `.demo` class. Some examples:
  - `color: red;`
  - `font-weight: bold;`
  - You should notice your changes applied immediately.
- Edit `demo.js`
  - Change the message in the `console.log` call and save the file.
  - The page should refresh. If you click `Run JS` see the change in the console.
  - Play around with the function to add some additional code. _Note: based on how this function is triggered the `this` object is the `this` from the Dynamic Action._
- Run the application from the original URL (ex: `http://training01.oraopensource.com/apex/f?p=127`). This is what everyone else using the application will see. Your changes won't affect anyone else until you upload the files to the Application Static Files.

## Summary

AFEB is a very powerful tool to rapidly work with web files such as images, JS, and CSS. This workshop used some extremely basic web files but the underlying concept is the exact same for more complex situations.
