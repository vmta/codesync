# codesync

Scripts:

    - compare
      `./compare [cloned_repo] [mainstream_repo] [y|n] [y|n]`
      compares file and folder tree structures of provided
      repositories, provides information on outstanding or
      missing objects, optionally may clean or create them
      if requested

    - diffs
      `./diffs -b master -c cloned_repo -m mainstream_repo -p multi -u`
      take specially marked SHA1 stamp from clone's log as
      the last synchronized commit, if the mainstream has
      unsynched commits, proceed step-by-step and get the
      first unsynched commit, compare the diffs between this
      commit and the last synched commit (on the mainstream)
      then for each changed file, run through the substitution
      procedure, then get diffs between mainstream and cloned
      repos and save the diffs

    - init
      clone specified repositories from remote servers
      and set branch-tracking if specified, for more
      info and help on options, run with -h

    - review
      `./review -r all -e remote -b master`
      open diff files prepared by the `diffs` script with
      default editor (if run on local machine, -e may be
      omitted, provided that gedit can be invoked), otherwise
      set -e to 'remote' and nano will be used as the editor

    - status
      reports status of two repositories (whether they
      are synchronized), for more info and help on options,
      run with -h

    - sync
      `./sync -b master -c -g`
      after diffs were prepared and optionally reviewed, apply
      those to the cloned repo, commit [-c] and push [-g] to
      the remote origin

Common(s):

    - silencer
      silence the output when using system tools

    - repository
      common functions that are (or may be) used across other
      scripts

    - config
      holds default values for various config used in the
      scripts

    - substitutes
      define which parts shall be changed in the cloned repo
      (i.e. names, certain values, options, etc, provided
      that the copyrights are preserved)

    - substitutes.diff
      define special case changes that are applicable only
      to diff syntax
