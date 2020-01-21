<p align="center">
  <h1>Companies Finder</h1>
</p>


## Documentation

Companies finder consist in a bash script that based in a list (companies.txt file)
reconstruct an URL and pass it to wget unix tool to download all content from that page. 
In case that the new formed url doesn't exist (or not having content) the script 
will not save any file. In case that there is a page of the new formed URL exist, then 
the page will be saved as html file.
NOTE: I use linkeIn page as example but i am not own anything related.


### Running locally

1. Download the files companies.txt and companiesFinder.sh .
2. change the permission of the files in order to be executed.
3. Run the file companiesFinder.sh with the first argument as the list_of companies.txt. Like this
"./companiesFinder.sh companies.txt".
4. Finally, all the files that are created are the ones which exist page for that entry.

## Creators

**Luis Roberto Azaar Meza**

- <luisro5azaar@gmail.com>
- <https://github.com/luisro5>





## Copyright and license

This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.