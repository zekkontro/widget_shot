# Shot Widget

#### The flutter package that allows you to take a screenshot of the widgets in the widget tree in your project.

### Normal Screenshot
![Normal Screenshot](https://github.com/zekkontro/widget_shot/blob/main/screenshots/normal_screenshot.png?raw=true)

### Shot Widget

![ShotWidget](https://firebasestorage.googleapis.com/v0/b/sohbetapp-1339e.appspot.com/o/png%2FSOHBET-MEDIA-yHApsRgIUfe3WSTPgA37CiNBJW92-1614537662767.png?alt=media&token=44d3cdb2-7a48-4feb-a287-26d8694788dd)

## Example Code

    import 'dart:io';
	import 'package:flutter/material.dart';
	import 'package:shot_widget/shot_service.dart';
	import 'package:shot_widget/shot_widget.dart';

	void  main() {
	runApp(MyApp());
	}

	  

	class MyApp extends StatelessWidget {
	@override
	Widget  build(BuildContext context) {
	
	return  MaterialApp(
	debugShowCheckedModeBanner:  false,
	theme:  ThemeData(primaryColor:  Colors.red, accentColor:  Colors.amber),
	home:  ExampleShotWidget(),);
	}
	}

	  

	class ExampleShotWidget extends StatelessWidget {
	@override
	Widget  build(BuildContext context) {
	
	GlobalKey key =  GlobalKey();
	ShotService service =  ShotService();
	return  Scaffold(
	floatingActionButton:  FloatingActionButton(
	child:  Icon(Icons.camera),
	onPressed: () async {
	File file =  await service.takeWidgetShot(key,  "<IMAGE - PATH>");
	print(file.path);
	},),
	appBar:  AppBar(
	title:  Text("Shot Widget package example"),
	centerTitle:  true,
	),

	body:  ShotWidget(
	shotKey: key,
	child:  Container(
	margin:  EdgeInsets.all(40),
	alignment:  Alignment.center,
	child:  Text("This is a Example"),
	decoration:  BoxDecoration(color:  Colors.red[300]),
	),),);
	}
	}
## Authors

#### Mustafa Berat Kurt - zekkontro
### [Github Page](https://github.com/zekkontro)
### [Instagram Page](https://www.instagram.com/brtwlf/)

## License

MIT License

Copyright (c) 2021 Berat Kurt

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
