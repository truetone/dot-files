function cpToBackstage() {
    echo "Copying file: $1 to backstage"
    # "cp -v $1 /Volumes/backstage\\$/app_routing/$1"
}

function cpTemplatesFromBackstage() {
    echo "Hopping to app_routing";
    hop app_routing

    if mount | grep backstage > /dev/null; then
        echo "Mounting backstage";
        obs
    fi
    cp -vR /Volumes/backstage\$/app_routing/templates/* templates
}

function fixAllPerms() {
    find * -type d -exec chmod 755 {} +;
    find * -type f -exec chmod 644 {} +;
}
