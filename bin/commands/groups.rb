# This file was auto-generated by lib/tasks/web.rake

desc 'Groups methods.'
command 'groups' do |g|
  g.desc 'This method archives a private channel.'
  g.long_desc %( This method archives a private channel. )
  g.command 'archive' do |c|
    c.flag 'channel', desc: 'Private channel to archive.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_archive(options))
    end
  end

  g.desc 'This method creates a private channel.'
  g.long_desc %( This method creates a private channel. )
  g.command 'create' do |c|
    c.flag 'name', desc: 'Name of private channel to create.'
    c.flag 'validate', desc: 'Whether to return errors on invalid channel name instead of modifying it to meet the specified criteria.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_create(options))
    end
  end

  g.desc 'This method takes an existing private channel and performs the following steps:'
  g.long_desc %( This method takes an existing private channel and performs the following steps: - Renames the existing private channel (from "example" to "example-archived"). - Archives the existing private channel. - Creates a new private channel with the name of the existing private channel. - Adds all members of the existing private channel to the new private channel. )
  g.command 'createChild' do |c|
    c.flag 'channel', desc: 'Private channel to clone and archive.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_createChild(options))
    end
  end

  g.desc 'This method returns a portion of messages/events from the specified private channel.'
  g.long_desc %( This method returns a portion of messages/events from the specified private channel. To read the entire history for a private channel, call the method with no latest or oldest arguments, and then continue paging using the instructions below. )
  g.command 'history' do |c|
    c.flag 'channel', desc: 'Private channel to fetch history for.'
    c.flag 'inclusive', desc: 'Include messages with latest or oldest timestamp in results.'
    c.flag 'latest', desc: 'End of time range of messages to include in results.'
    c.flag 'oldest', desc: 'Start of time range of messages to include in results.'
    c.flag 'unreads', desc: 'Include unread_count_display in the output?.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_history(options))
    end
  end

  g.desc 'This method returns the ID of a group.'
  g.long_desc %( This method returns the ID of a group. )
  g.command 'id' do |c|
    c.flag 'channel', desc: 'Group channel to get ID for, prefixed with #.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_id(options))
    end
  end

  g.desc "Don't use this method. Use conversations.info instead."
  g.long_desc %( Don't use this method. Use conversations.info instead. )
  g.command 'info' do |c|
    c.flag 'channel', desc: 'Private channel to get info on.'
    c.flag 'include_locale', desc: 'Set this to true to receive the locale for this group. Defaults to false.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_info(options))
    end
  end

  g.desc 'This method is used to invite a user to a private channel. The calling user must be a member of the private channel.'
  g.long_desc %( This method is used to invite a user to a private channel. The calling user must be a member of the private channel. )
  g.command 'invite' do |c|
    c.flag 'channel', desc: 'Private channel to invite user to.'
    c.flag 'user', desc: 'User to invite.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_invite(options))
    end
  end

  g.desc 'This method allows a user to remove another member from a private channel.'
  g.long_desc %( This method allows a user to remove another member from a private channel. )
  g.command 'kick' do |c|
    c.flag 'channel', desc: 'Private channel to remove user from.'
    c.flag 'user', desc: 'User to remove from private channel.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_kick(options))
    end
  end

  g.desc 'This method is used to leave a private channel.'
  g.long_desc %( This method is used to leave a private channel. )
  g.command 'leave' do |c|
    c.flag 'channel', desc: 'Private channel to leave.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_leave(options))
    end
  end

  g.desc "Don't use this method. Use conversations.list instead."
  g.long_desc %( Don't use this method. Use conversations.list instead. )
  g.command 'list' do |c|
    c.flag 'cursor', desc: "Parameter for pagination. Set cursor equal to the next_cursor attribute returned by the previous request's response_metadata. This parameter is optional, but pagination is mandatory: the default value simply fetches the first 'page' of the collection. See pagination for more details."
    c.flag 'exclude_archived', desc: "Don't return archived private channels."
    c.flag 'exclude_members', desc: 'Exclude the members from each group.'
    c.flag 'limit', desc: "The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the list hasn't been reached."
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_list(options))
    end
  end

  g.desc 'This method moves the read cursor in a private channel.'
  g.long_desc %( This method moves the read cursor in a private channel. )
  g.command 'mark' do |c|
    c.flag 'channel', desc: 'Private channel to set reading cursor in.'
    c.flag 'ts', desc: 'Timestamp of the most recently seen message.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_mark(options))
    end
  end

  g.desc 'This method opens a private channel.'
  g.long_desc %( This method opens a private channel. )
  g.command 'open' do |c|
    c.flag 'channel', desc: 'Private channel to open.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_open(options))
    end
  end

  g.desc 'This method renames a private channel.'
  g.long_desc %( This method renames a private channel. )
  g.command 'rename' do |c|
    c.flag 'channel', desc: 'Private channel to rename.'
    c.flag 'name', desc: 'New name for private channel.'
    c.flag 'validate', desc: 'Whether to return errors on invalid channel name instead of modifying it to meet the specified criteria.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_rename(options))
    end
  end

  g.desc 'This method returns an entire thread (a message plus all the messages in reply to it).'
  g.long_desc %( This method returns an entire thread (a message plus all the messages in reply to it). )
  g.command 'replies' do |c|
    c.flag 'channel', desc: 'Private channel to fetch thread from.'
    c.flag 'thread_ts', desc: "Unique identifier of a thread's parent message."
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_replies(options))
    end
  end

  g.desc 'This method is used to change the purpose of a private channel. The calling user must be a member of the private channel.'
  g.long_desc %( This method is used to change the purpose of a private channel. The calling user must be a member of the private channel. )
  g.command 'setPurpose' do |c|
    c.flag 'channel', desc: 'Private channel to set the purpose of.'
    c.flag 'purpose', desc: 'The new purpose.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_setPurpose(options))
    end
  end

  g.desc 'This method is used to change the topic of a private channel. The calling user must be a member of the private channel.'
  g.long_desc %( This method is used to change the topic of a private channel. The calling user must be a member of the private channel. )
  g.command 'setTopic' do |c|
    c.flag 'channel', desc: 'Private channel to set the topic of.'
    c.flag 'topic', desc: 'The new topic.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_setTopic(options))
    end
  end

  g.desc 'This method unarchives a private channel.'
  g.long_desc %( This method unarchives a private channel. )
  g.command 'unarchive' do |c|
    c.flag 'channel', desc: 'Private channel to unarchive.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.groups_unarchive(options))
    end
  end
end
