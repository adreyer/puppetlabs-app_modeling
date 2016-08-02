Puppet::Type.newtype :dependency, is_capability: true do
  newparam :name, is_namevar: true
end
