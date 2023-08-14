# Quick Button
[![pub - v0.0.1](https://img.shields.io/badge/pub-v0.0.1-blue)](https://) [![unit test - passing](https://img.shields.io/badge/unit_test-passing-2ea44f?logo=github)](https://) [![license - MIT](https://img.shields.io/badge/license-MIT-blue)](https://)

A package that provides multiple customizable buttons for quick use.

![Demo](https://firebasestorage.googleapis.com/v0/b/mocon-3075b.appspot.com/o/14.08.2023_01.18.45_REC.gif?alt=media&token=b80d9653-a66b-4921-8ab7-3b5c7ef5aa50)

### Resources

- [Pub package](https://pub.dev/packages/quick_button)

## Usage

**`QuickButton`** behaves similarly to the **`InkWell`** widget but with more customizable features in one place.

- Basic Usage:

```
     QuickButton(
                labelText: 'Quick Button',
                onPressed: () {
                   // Some functions
                },
              ),
```
- Advanced Usage:

```
     QuickButton(
                labelText: 'Quick Button',
                labelColor: Colors.white,
                labelSize: 13.0,
                labelWeight: FontWeight.bold,
                labelSpacing: 0.3,
                prefixIcon: Icons.backpack,
                iconSize: 20.0,
                buttonWidth: 120,
                buttonHeight: 30,
                backgroundColor: Colors.purple,
                labelHoverIn: const Color.fromARGB(255, 63, 63, 63),
                labelHoverOut: Colors.white,
                backgroundHoverIn: const Color.fromARGB(112, 226, 33, 243),
                backgroundHoverOut: Colors.purple,
                onPressed: () {
                  // Some functions
                },
              ),
```

## Properties

| Property           | Description                                                                    |
|--------------------|--------------------------------------------------------------------------------|
| labelText        | Text label of the button.                                                   |
| labelColor         | Initial color of font color of **`labelText`**.                                      |
| LabelSize          | Font size of **`labelText`**.                                                         |
| LabelWeight        | Font weight of **`labelText`**.                                                           |
| labelSpacing       | Letter spacing of **`labelText`**.                                                    |
| icon         | Icon centered in the button                                              |
| prefixIcon         | Icon placed before the **`labelText`**.                                              |
| suffixIcon         | Icon placed after the **`labelText`**.                                               |
| iconSize           | Icon size of **`prefixIcon`** & **`suffixIcon`**.                                          |
| buttonWidth         | Width of the button.                                                           |
| buttonHeight         | Height of the button.                                                           |
| borderRadius       | Rounds the corners of the button’s outer border edge to preferred size.        |
| borderColor        | Color of button’s border edge.                                                 |
| borderSize         | Button’s border edge size.                                                     |
| backgroundColor    | Background color of button.                                                    |
| labelHoverIn       | Changes the color of **`labelText`** when the mouse hovers the button.               |
| labelHoverOut      | Changes the color of **`labelText`** when the mouse hovers outside the button.       |
| backgroundHoverIn  | Changes the color of **`backgroundColor`** when the mouse hovers the button.         |
| backgroundHoverOut | Changes the color of **`backgroundColor`** when the mouse hovers outside the button. |
| onPressed          | Callback called upon when the button is tapped.                                |

#### Show some love and star this repo to support the project [here](https://github.com/pozadkey/quick_button). 

