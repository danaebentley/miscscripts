# BASH functions for shortcuts

function up() {

   levels=$1

   while [ "$levels" -gt "0" ]; do
     cd ..
     levels=$(($levels - 1))
   done

}
