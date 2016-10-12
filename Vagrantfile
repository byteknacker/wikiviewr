# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    # Start with base vagrant box. This one is only 271 MB in size.
    config.vm.box = "wikiviewr"

    # Create forwarding ports for client-guest machine access via localhost.
    # auto_correct allows the simultaneous spin up of multiple VM locally.
    config.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true
    config.vm.network :forwarded_port, guest: 5000, host: 5000, auto_correct: true

    config.vm.synced_folder "salt/roots/", "/srv/salt/"
    config.vm.synced_folder "app/", "/var/www/html/"

    config.push.define "atlas" do |push|
        push.app = "byteknacker/wikiviewr"
    end
end
