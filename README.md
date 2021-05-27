# block_ui
## _Easily disable UI during async operation_


Block UI is a amazing package that helps you add an overlay loader during all your async
operations. 
### Here's how :

- _BlockUi.show(context)_ - Shows loader overlay✨
- _BlockUi.hide(context)_ - Hides the overlay after operation✨


## Features

- Fully Customizable Overlays
- Image Background Support
- Use a custom loader


## Usage

### 1. Simple Overlay

```
ElevatedButton(
    onPressed:(){
        BlockUi.show(context);
        //Async Operation (For e.g Future.delayed(Duration(milliseconds: 1000))
        BlockUi.hide(context);
    }
)
```


### 2. Customised Overlay

```
ElevatedButton(
    onPressed:(){
        BlockUi.show(
        context,
        backgroundColor: Colors.black, // Change Background Color
        child: Text("Please Wait..."), // Change the center widget
        );
        //Async Operation (For e.g Future.delayed(Duration(milliseconds: 1000))
        BlockUi.hide(context);
    }
)
```
Check out examples section, for more examples of  _block_ui_.

## Properties
Here are the different properties of block_ui that you can use to customise it.
| Properties | Description |
| ------ | ------ |
| context | _Buildcontext context_ |
| child | _Add a different widget in the center. You can also add custom loaders/text/images, etc._ |
| backgroundColor | _Change background color_ |
| backgroundWidget | _Change background widget_ |

## Development

Want to contribute? Great!
[Contribute Here](https://github.com/uvineet53/block_ui)
## License

MIT

