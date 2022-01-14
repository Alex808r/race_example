# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

return if Race.exists? && Event.exists? && EventCategory.exists?

races = Race.create!([
                       { name: 'Start 1', place: 'UK', date: Time.zone.now },
                       { name: 'Start 2', place: 'USA', date: Time.zone.now }
                     ])

event_categories = EventCategory.create!([
                                           { title: 'super' },
                                           { title: 'trail 10k' },
                                           { title: 'trail 50k' }

                                         ])

# rubocop:disable Lint/UselessAssignment
events = Event.create!([
                         { title: 'mogning', race: races[0], event_category: event_categories[0] },
                         { title: 'afternoon', race: races[0], event_category: event_categories[1] },
                         { title: 'evening', race: races[0], event_category: event_categories[2] },

                         { title: 'mogning', race: races[1], event_category: event_categories[0] },
                         { title: 'afternoon', race: races[1], event_category: event_categories[1] },
                         { title: 'evening', race: races[1], event_category: event_categories[2] }
                       ])
# rubocop:enable Lint/UselessAssignment
