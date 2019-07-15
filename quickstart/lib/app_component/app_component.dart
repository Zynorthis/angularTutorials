import 'package:angular/angular.dart';
import 'package:angular_app/src/mock_heroes.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_app/src/hero.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: const [coreDirectives, formDirectives],
)

class AppComponent {
  var title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
}