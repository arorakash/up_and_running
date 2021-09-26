# clean cache

# delete .cache
sudo rm -rf $HOME/.cache/*;
echo "cleaned .cache"
echo -e "\n\n"


# clean journalctl logs

# list journalctl logs
sudo journalctl --disk-usage;

# delete journalctl logs
sudo rm -rf /var/log/journal/*;
echo "cleaned journalctl logs"
sudo journalctl --disk-usage;
echo -e "\n\n"


# clean disabled snaps

# list disabled snaps
snap list --all | while read snapname ver rev trk pub notes; do if [[ $notes = *disabled* ]]; then echo "$snapname" --revision="$rev"; fi; done

# delete disabled snaps
snap list --all | while read snapname ver rev trk pub notes; do if [[ $notes = *disabled* ]]; then sudo snap remove "$snapname" --revision="$rev"; fi; done
echo "cleaned disabled snaps"
snap list --all | while read snapname ver rev trk pub notes; do if [[ $notes = *disabled* ]]; then echo "$snapname" --revision="$rev"; fi; done
echo -e "\n\n"


# clean snap cache

# list snap cache space
sudo du -sh /var/lib/snapd/cache/;

# delete snap cache
sudo -i bash << EOF
rm -rf /var/lib/snapd/cache/*;
EOF
echo "cleaned snap cache"
sudo du -sh /var/lib/snapd/cache/;
echo -e "\n\n"
