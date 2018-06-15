# redmine_copy_user
The plugin adds the ability to create a new user by copying. When copying a user is assigned to participate in projects.

***

## Installation. 
* Go to the plugins directory Redmine: `cd /srv/redmine/plugins`
* Download the latest version: `wget https://github.com/avatar48/redmine_copy_user/archive/master.zip`
* Unpack: `unzip master.zip`
* Rename: `mv redmine_copy_user-master redmine_copy_user`


***
## Usage. 
In section Administration - Users, opposite each item in the list, a "Copy" link appears.
<br>
![Users](https://i.imgur.com/RP4iwz7.png)

<br>
Clicking on link will open form for creating a new user where the 'Copy project from' field will specify the user from whom rights to the projects will be copied.<br>
Also, when creating a new user, you can choose, from the drop-down list, from whom to copy the projects.