import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_app/app_component.template.dart' as ng;
import 'hero.dart';

@Component(
  selector: 'my-app',
  template: '''
            <h1>{{title}}</h1>
            <h2>{{hero.name}}</h2>
            <div><label>id: </label>{{hero.id}}</div>
            <div>
              <label>name: </label>
              <input [(ngModel)]="hero.name" placeholder="name">
            </div>
  ''',
  directives: const [formDirectives],
)

class AppComponent {
  var title = 'Tour of Heroes';
  Hero hero = Hero(1, "Windstorm");

  void updateHeroName(String input){
    hero.name = input;
  }
}