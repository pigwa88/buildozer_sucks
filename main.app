from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.label import Label

class MyWidget(BoxLayout):
    def __init__(self, **kwargs):
        super(MyWidget, self).__init__(**kwargs)
        self.orientation = 'vertical'
        
        self.button = Button(text='click me', size_hint=(1, 0.2),font_size=24)
        self.button.bind(on_press=self.on_button_click)
        
        self.label = Label(text='zero',size_hint=(1, 0.8), font_size=32)
        
        self.add_widget(self.button)
        self.add_widget(self.label)
    
    def on_button_click(self, instance):
        self.label.text = "its working!"

class MyApp(App):
    def build(self):
        return MyWidget()

if __name__ == '__main__':
    MyApp().run()
