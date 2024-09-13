# Node-RED Usage Guide

## Installing Node-RED on R1000

1. Update the package list on the Raspberry Pi:
   ```
   sudo apt update
   ```

2. Install Node.js and npm (Node.js package manager):
   ```
   sudo apt install nodejs npm
   ```

3. Use npm to install Node-RED:
   ```
   sudo npm install -g --unsafe-perm node-red
   ```
   Note: The `--unsafe-perm` flag is used to avoid some permission-related issues.

4. After the installation is complete, you can start Node-RED using the following command:
   ```
   node-red
   ```
   This will start the Node-RED server in the terminal.

5. Now, you can access the Node-RED web interface by visiting the following URL in your browser:
   ```
   http://localhost:1880
   ```
   Or, if you are connecting to the Raspberry Pi via SSH, you can use the IP address of the Raspberry Pi:
   ```
   http://<Raspberry Pi IP address>:1880
   ```

The SSH account for R1000 is `recomputer`, and the password is `12345678`.


## Node-RED Dashboard Usage

The first step in the process is installing the dashboard module in Node-RED. In the browser’s Node-RED window, click on the Menu icon at the top right corner of the page, find Manage Palette on the menu items, click Install, and search for node-red-dashboard. Install it, and make sure that the module you install reads node-red-dashboard.

After successful installation, all the dashboard nodes will appear in the palate section. Each dashboard node provides a widget that you can display on a user interface (UI) (e.g., gauge, chart, button, etc.).
We use tabs and groups to arrange the UI in the Node-RED dashboard. Tabs in the Node-RED dashboard are pages that hold or display different groups, which separate a tab into several sections. In each group is where you organize your node widgets (buttons, texts, charts, etc). Below is a walkthrough on how to create tabs and groups.


Drag any dashboard node (in my case, a button node) into the flow and double-click on the node. A window where you can edit the node will appear. Where it says Group, click on the pencil icon next to it to add a new group. The window in the picture blow will appear. Give the group a Name of your choice and click the pencil icon next to where it says Tab to add a new tab. Give the Tab a name of your choosing and click Add.

The next step will be displaying something on the user interface.
In this example, we want to display a button that speaks out some text when clicked on.

Drag an audio node to the flow, place it next to the button node we already have in the flow, and wire them together. Double-click on the audio node and add it to the Group you created (in my case, Home). Now, do the same with the button node, but also scroll down to find the Payload setting and add a text in there. In my case, it’s Welcome, as seen in the image above. Click Done and Deploy.
To view the dashboard UI, follow this URL: http://localhost:1880/ui
localhost is the address of the reComputer you’re using, 1880 is the port where Node-RED is exposed, and ui displays the dashboard user interface.
If everything works fine, you’ll see the same window as the one below. You might see a light theme background. We’ll get to how I ended up with a dark theme later in the post.

To create another tab, click on the Tab button highlighted in the image above. It’ll create a new tab, just as seen in the image above as well. Once you hover over the Tab2 text (as seen in the image), you’ll see an edit button. You can follow the same procedures we followed when creating our first Tab and Group.


Once that’s done. Drag a slider, gauge, and chart node into the flow. Double-click on the slider node and edit the min and max values to be 0 and 100. Also make sure to assign it to the new tab group you just created and click Done. Repeat a similar process with the gauge and chart nodes. In my case, I added colors to the gauge for when it reaches certain values, which you’ll see in the image below. You can choose the way you want your elements to look, but I’m just trying to keep it simple for now.


Now, wire both the gauge and the chart nodes to the slider node and deploy your changes. You should see something similar to the image below. When you move the slider, you’ll notice the chart and gauge respond to it, and you’ll also notice the color difference on the gauge if you added that. If you haven’t noticed the hamburger icon in the top left corner of the page, we’ll be looking at that in the next step.


Well, the hamburger icon is how you switch between your tabs. When you click on the menu icon, a sidebar pops out with your tabs, and you can switch between both. The first tab (Sub) contains our first example, which was a text-to-speech widget, and the second tab (Sub 2) contains the gauge and chart example.
By default, the Node-RED dashboard comes with a light theme, a light background, and a light blue navigation bar. But you can also choose a dark theme or a custom theme. It also allows editing the color of the navigation according to your preference. As you can see in the image below, I’m using a dark theme rather than the default white theme.

To edit the theme on your dashboard UI, click on the Theme tab and choose either Light or Dark according to your needs. You can also customize your own theme if you want. Click on the Colour option to change the color of the nav bar to whatever color you want. After you’re done, don’t forget to hit Deploy so you can view your changes.
On the main page in Node-RED, as seen below, there’s a site tab that provides more setting options on how you want your dashboard to look. You can edit things like the dashboard Title, Widget Spacing between elements on the same tabs, Date Format, and a lot more. Go ahead and try out some things to see how they’ll look on the page. Don’t forget to deploy your changes!









