# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include nginx
class nginx {
	include nginx::package
	include nginx::file
	include nginx::service
	include nginx::vcs
}
