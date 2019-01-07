var app = angular.module('zen', []);

var search = {
	input: function()
	{
		return $('#sf');
	},
	focus: function()
	{
		search.input().val('');
	},
	blur: function()
	{
		search.input().val('Search');
	}
};

$(document).ready(function()
{
	$('div[data-type="solar_system"]').each(function() {
		$window = $(window);
		var $bgobj = $(this);
		$(window).scroll(function() {
			var coords = null;
			var yPos = ($window.scrollTop() / $bgobj.data('speed'));
			if ($bgobj.attr('id') == "planet1")
			{
				coords = yPos + 'px';
			}
			else if ($bgobj.attr('id') == "planet2")
			{
				coords = -yPos + 550 + 'px';
			}
			else if ($bgobj.attr('id') == "sun")
			{
				coords = -yPos - 375 + 'px';
			}

			$bgobj.css({ top: coords });
		});

		$('#my-email').html(function() {
			var e = "admin";
			var a = "@";
			var d = "fallenzen";
			var c = ".com";
			var h = 'mailto:' + e + a + d + c;
			$(this).parent('a').attr('href', h);
			return e + a + d + c;
		});
    });
});
