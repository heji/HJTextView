HJTextView
=======
An Custom UITextView with the placeholder

## Requirements
* Xcode 5 or later
* Deployment on iOS 5 or above
* ARC only

## How to use

Initialize HJCountDownButton:

```objc
HJTextView *textView = [[HJTextView alloc] init];
textView.frame = CGRectMake(0.0f, 0.0f, 300.0f, 100.0f);
textView.center = self.view.center;
textView.placeHolder = @"this is placeholder for UITextView";
// textView.font = [UIFont systemFontOfSize:20.0f];
// textView.holderColor = [UIColor greenColor];
[textView becomeFirstResponder];
```

## Support
* For now, it's just right here on GitHub.

## License

HJTextView is published under MIT License

    Copyright (c) 2015 Jeffery He(hejicode@gmail.com)

    Permission is hereby granted, free of charge, to any person obtaining a copy of
    this software and associated documentation files (the "Software"), to deal in
    the Software without restriction, including without limitation the rights to use,
    copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the
    Software, and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
    FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
    COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
    IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
    CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
