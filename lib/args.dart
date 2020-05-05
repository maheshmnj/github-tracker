import 'package:args/args.dart';

// Global parser options
final repoParser = ArgParser()
  ..addFlag('help',
      defaultsTo: false,
      abbr: 'h',
      negatable: false,
      help: 'Displays this usage info.')
  ..addFlag('include-archived-repos',
      defaultsTo: false,
      abbr: 'a',
      negatable: true,
      help: 'Includes archived repos in the ranked list of repos.\n'
          '(defaults to off)')
  ..addFlag('include-content-repos',
      defaultsTo: false,
      abbr: 'c',
      negatable: true,
      help: 'Includes content-only repos in the ranked list of repos.\n'
          '(defaults to off)')
  ..addFlag('include-header',
      defaultsTo: true,
      abbr: '0',
      negatable: true,
      help: 'Prints the column header. This option has no effect if the \n'
          '--csv-output option is specified.')
  ..addOption('results',
      abbr: 'n',
      help:
          'Maximum number of results to return. The actual number of\nresults '
          'may be lower because of GitHub API limitations.',
      valueHelp: 'number',
      defaultsTo: '30');

final issueParser = ArgParser()
  ..addFlag('help',
      defaultsTo: false,
      abbr: 'h',
      negatable: false,
      help: 'Displays this usage info.')
  ..addMultiOption(
    'filter',
    abbr: 'f',
    help: 'One or more filters that can be applied to narrow down the issues.',
    splitCommas: true,
  )
  ..addOption('repo',
      abbr: 'r',
      help: 'The repo to be searched (e.g. '
          'flutter/flutter)');
