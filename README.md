# collect_kepubs
I was really annoyed by the interaction between Calibre and my Kobo Libra Colour so I wrote this to make my life easier. Maybe it can help you too!

This script searches through a folder and all of its subfolders for files that end in .kepub. When a .kepub file is found, the script first checks whether a file with the same name plus .epub appended (.kepub.epub) already exists in the same directory. If it does not exist, the script creates it by copying the .kepub file. The original .kepub file always remains unchanged and in place.

After confirming that the .kepub.epub file exists, the script copies that file into a collection folder. Files in the collection folder are never overwritten. If a file with the same name already exists there (case-insensitive), the script skips copying it and records this in the summary.

When the script finishes it prints a color-coded summary showing how many .kepub files were found, how many .kepub.epub files were created locally, how many were copied into the collection folder, and how many were skipped because they already existed.

By default, the collection folder is created next to the script and named:
collect_output

You can specify a different collection folder using:
./collect_kepub_epubs.sh --create-folder /path/to/output

You can also specify which folder to search:
./collect_kepub_epubs.sh /path/to/search

The script is safe to run repeatedly and never deletes, renames, or overwrites any files.
