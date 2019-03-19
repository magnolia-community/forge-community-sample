# Forge Community Sample

<!-- (starter?) -->

[![Build Status](https://travis-ci.com/magnolia-community/forge-community-sample.svg?branch=master)](https://travis-ci.com/magnolia-community/forge-community-sample) [![Magnolia compatibility](https://img.shields.io/badge/magnolia-6.0-brightgreen.svg)](https://www.magnolia-cms.com)

The easiest way to start a Magnolia Forge project is to clone this repository. 
The POM file includes a reference to Magnolia's Nexus repository, so you can 
easily start working with community dependencies in your project.

## Joining the forge

Once you're happy with what you have and would like to share it with the 
community, you'll need to [register a new Forge project][forge], and provide 
your GitHub handle.

You will then be invited to join the [Magnolia community GitHub 
organization][magnolia-community], and able to create a repository, to which 
you'll push your module. You can then add external developers to that 
particular repository.

## Automated builds

To encourage high quality, we recommend you have automatic builds and keep the 
'build status' badge.

Travis can build your module anytime you push and is pretty easy to setup. Once 
your Magnolia community repository has been created, and assuming you are 
logged into GitHub, simply go to [travis-ci.com][travis] and follow the 
step-by-step guide.

⚠️ Although projects under the Magnolia forge are open source, please go to 
Travis' `.com` website rather than `.org` - Travis is currently going through a 
migration and using `.org` may lead to issues.

## Deployment

You're free to deploy wherever you wish. The following blog post guides you 
through the steps you could take to freely deploy to 
[packagecloud][packagecloud]. You could also have [JitPack][jitpack] build the 
module on your machine and transparently upload it as an artifact with the 
`com.github.<YOUR_USERNAME>` `groupId`.

If you would like to deploy to Magnolia's Nexus, you will need to do a manual 
release. Please follow the steps below.

Either way, please include release coordinates in your README so that your 
module can be used by others. The [README blueprint][blueprint] will provide 
you with a template that's easy to adapt.

## Setting your Maven up

If you ever plan to manually push a release to our Nexus, or if you simply 
would like to transparently work with our dependencies without cluttering your 
POM files, then please read [how to set Maven up][maven-setup].

Once that is done, you can take the following snippet out from your POM:

    <repository>
      <id>magnolia.public</id>
      <url>https://nexus.magnolia-cms.com/content/groups/public</url>
      <snapshots>
        <enabled>true</enabled>
      </snapshots>
    </repository>

## Release on our Nexus

Assuming your local Maven is setup, simply add the following snippet to your 
POM file:

    <distributionManagement>
      <repository>
        <id>magnolia.forge.releases</id>
        <url>https://nexus.magnolia-cms.com/content/repositories/magnolia.forge.releases</url>
      </repository>
      <snapshotRepository>
        <id>magnolia.forge.snapshots</id>
        <url>https://nexus.magnolia-cms.com/content/repositories/magnolia.forge.snapshots</url>
      </snapshotRepository>
      <site>
        <id>magnolia.forge.sites</id>
        <url>dav:https://nexus.magnolia-cms.com/content/sites/magnolia.forge.sites/${artifactId}/${project.version}</url>
      </site>
    </distributionManagement>

## Help

Whether you need help, would like to share your work, or simply get in touch 
with the community, you can join the [Magnolia User Google 
Group][google-group].

<!-- ## License -->

[forge]:http://forge.magnolia-cms.com/register
[travis]:https://travis-ci.com/
[maven-setup]:https://wiki.magnolia-cms.com/display/DEV/Maven+setup
[authentication]:https://github.com/magnolia-community/forge-enterprise-sample
[packagecloud]:https://blog.travis-ci.com/2017-03-30-deploy-maven-travis-ci-packagecloud/
[magnolia-community]:https://github.com/magnolia-community
[blueprint]:https://github.com/magnolia-community/forge-community-sample/blob/master/README-blueprint.md
[google-group]:https://groups.google.com/a/magnolia-cms.com/forum/#!forum/user-list
[jitpack]:https://jitpack.io
