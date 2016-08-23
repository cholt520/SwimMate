<!DOCTYPE html>
<html>
   <head>
      <link href="https://cdnjs.cloudflare.com/ajax/libs/extjs/6.0.0/classic/theme-classic/resources/theme-classic-all.css" rel="stylesheet" />
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/extjs/6.0.0/ext-all.js"></script>
      <script type="text/javascript">
         Ext.onReady(function() {
         Ext.create('Ext.Panel', {
            renderTo: 'helloWorldPanel',
            height: 100,
            width: 200,
            title: 'Hello world',
            html: 'First Ext JS Hello World Program'
            });
         });
      </script>
   </head>
   <body>
      <div id="helloWorldPanel"></div>
   </body>
</html>