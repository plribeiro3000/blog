class UserOrganizer
  extend Zertico::Organizer

  organize [UserInteractor, EntryInteractor]
end