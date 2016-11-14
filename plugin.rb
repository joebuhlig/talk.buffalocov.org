# name: talk.buffalocov.org
# about: A Discourse plugin that adds BCC customizations
# version: 0.1
# authors: Joe Buhlig
# url: https://github.com/joebuhlig/talk.buffalocov.org

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
