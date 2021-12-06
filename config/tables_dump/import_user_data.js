const users_roles_table = require("./users_roles.json");

module.exports = (users, models) => {
    users.forEach (async user => {
        // create array of rows from users_roles table figuring user
        const filteredRoles = users_roles_table.filter(el => el.userId === user.id);

        //turn this array into a list of role id's for the user
        const roles = filteredRoles.map(el => models.role.findByPk(el.roleId));

        //associate the roles with the user and return the user model
        const results = await Promise.all(roles);
        return user.setRoles(results);
    })
}