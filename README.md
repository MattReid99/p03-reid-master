# Temperature Converter

For this project, I built a simple, 2 screen app that enables users to put in their temperature,
and display a corresponding picture. Users can select buttons to swap between Farenheit and Celsius
which will update the temperature accordingly. Additionally, users can manually enter in a
number into the text field, which will cause the slider to update accordingly.

The most challenging aspect of this project was accounting for corner cases when
setting the state of the app (Farenheit or Celsius). An example issue was what to do if a user
attempts to set the state to Farenheit when the state is already Farenheit, to ensure that
the conversion calculation won't be done multiple times.

For moving between view controllers I used segues in the storyboard designer, rather
than changing the view programmatically. To pass the data between the main view controller
and the second one, I overrode the prepare(forSegue: ) method.
