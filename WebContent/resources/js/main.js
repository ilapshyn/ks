$.ajaxPrefilter( function(options, originalOptions, jqXHR) {
	options.url = 'http://localhost' + options.url;
});

var Users = Backbone.Collection.extend({
	url: '/users'
});
var UserList = Backbone.View.extend({
	el: '.page',
	render: function(){
		var _this = this;
		var users = new Users();
		users.fetch({
			success: function(users){
				var template = _.template($('#user-list-template').html(), {users: users.models});
				_this.$el.html(template);
			}
		});
	}
});
var Router = Backbone.Router.extend({
	routes: {
		'': 'home'
	}
});

var userList = new UserList();
var router = new Router();
router.on('route:home', function(){
	userList.render();
});
Backbone.history.start();