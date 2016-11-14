# name: discourse-basic-links
# about: A Discourse plugin that lets you add links to topics
# version: 0.1
# authors: Joe Buhlig
# url: https://www.github.com/joebuhlig/discourse-basic-links

enabled_site_setting :bcc_enabled

after_initialize do

	require_dependency 'current_user_serializer'
	class ::CurrentUserSerializer
		attributes :custom_groups

		def custom_groups
			object.groups
		end
	end

end
