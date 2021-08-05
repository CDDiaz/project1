# [**Workout App**](https://workout-app-cd.herokuapp.com)

## Aim

Organise and simplify workouts and body measurement data in one app.

Easy access to list of exercises for each workout plan with description and example video.

### Profile

The section shows user information and workout plan selection. All the details can be edited and updated.

### Measurements

This section keeps track of user body measurement data. The user can add new measurement entry data points by filling the form and submitting it.

A chart will be displayed to show different entries in a certain period of time.

### Workouts

Provides a list of workout plans and ability to create new ones. Each plan has its own page with information and exercises related to the plan.

### Exercises

Provides a list of individual exercises. Each exercise has its own page with relevant information as well as an example video for the exercise.

## Gems and Other Implementations

### [**Chartkick**](https://chartkick.com/)

This Ruby Gem was used to create and display the charts for the measurement page.

### [**Groupdate**](https://github.com/ankane/groupdate)

This Ruby Gem was used to group entry data points by time, so they can be later processed by Chartkick.

### [**Videos Helper**](https://gist.github.com/a-barbieri/a93281cd5c01025664e5cbd781cd917c)

This Rails helper was used to obtain the ID of YouTube videos from a URL to be later embedded in the desired page.
