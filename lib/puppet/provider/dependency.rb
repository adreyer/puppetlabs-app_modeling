require 'puppet/provider'
#Use the null provider
Puppet::Type.type(:http).provide(:http, parent: Puppet::Provider::NullProvider) {}
