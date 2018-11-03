#! /usr/bin/env ruby

require 'openra-irc_bot'

bot = Openra::IRCBot.new do
  configure do |config|
    config.nick = 'oratwitch'
    config.password = ENV['TWITCH_PASSWORD']
    config.server = 'irc.chat.twitch.tv'
    config.port = '6667'
    config.channels = ['#fiveacescheckmate', '#netnazgul']
    config.plugins.plugins = [
      Openra::IRCBot::Plugins::Eskimo,
      Openra::IRCBot::Plugins::FiveAces,
      Openra::IRCBot::Plugins::Gatekeeper,
      Openra::IRCBot::Plugins::Happy,
      Openra::IRCBot::Plugins::Na,
      Openra::IRCBot::Plugins::Orb,
      Openra::IRCBot::Plugins::Pinkman,
      Openra::IRCBot::Plugins::PointOne,
      Openra::IRCBot::Plugins::SoScared,
      Openra::IRCBot::Plugins::Talix,
      Openra::IRCBot::Plugins::WeeMan
    ]
  end
end

bot.start
