###
 Router.map( () ->
  this.route('todoToday',
    path: '/todo-today'
    onBeforeAction: () ->
      this.todosHandle = Meteor.subscribe('todos', this.params._id)

      if (this.ready())
        # Handle for launch screen defined in app-body.js
        dataReadyHold.release()
    data: () ->
      return Lists.findOne()
    action: () ->
      this.render()
  )
)
###
