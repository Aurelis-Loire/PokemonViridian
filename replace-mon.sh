#!/bin/bash

# ----- VARIABLE DEFINITIONS -----

FIND=$(echo "${1^^}")

REPLACE=$(echo "${2^^}")

ICON_TYPE=$3

COLOR_PALETTE=$4

# ALL POSSIBLE ICON TYPES:
icons=("ICON_GRASS", "ICON_MON", "ICON_WATER", "ICON_BUG", "ICON_BIRD", "ICON_QUADRUPED", "ICON_SNAKE", "ICON_FAIRY", "ICON_BALL", "ICON_HELIX")

# ALL POSSIBLE COLOR PALETTES:
palettes=("PAL_MEWMON", "PAL_GREENMON", "PAL_REDMON", "PAL_CYANMON", "PAL_YELLOWMON", "PAL_BROWNMON", "PAL_PURPLEMON", "PAL_GREYMON", "PAL_PINKMON", "PAL_BLUEMON")

POKEMON_CONSTANTS_FILEPATH="constants/pokemon_constants.asm"
POKEDEX_CONSTANTS_FILEPATH="constants/pokedex_constants.asm"
NAMES_FILEPATH="data/pokemon/names.asm"
CRIES_FILEPATH="data/pokemon/cries.asm"
ICON_FILEPATH="data/pokemon/menu_icons.asm"
PALETTE_FILEPATH="data/pokemon/palettes.asm"
DEX_ORDER_FILEPATH="data/pokemon/dex_order.asm"
DEX_ENTRIES_FILEPATH="data/pokemon/dex_entries.asm"

# ----- END VARIABLE DEFINITIONS -----

# ----- VERIFY USER INPUT -----

# VERIFY ICON TYPE IS VALID -----
# note - this doesn't exclude substrings atm, so "ICON" counts as valid
if [[ ! "${icons[*]}" =~ "${ICON_TYPE}" ]]; then
    printf "Invalid icon type: $ICON_TYPE. Please use a valid icon type, see data/pokemon/menu_icons.asm \n"
    exit 1
fi

# VERIFY COLOR PALETTE IS VALID -----
# note - this doesn't exclude substrings atm, so "PAL" counts as valid
if [[ ! "${palettes[*]}" =~ "${COLOR_PALETTE}" ]]; then
    printf "Invalid color palette: $COLOR_PALETTE. Please use a valid color palette, see data/pokemon/palettes.asm \n"
    exit 1
fi

# ----- END INPUT VERIFICATION -----

# ----- HELPER FUNCTION FOR STRING REPLACEMENT -----
# $1 = string to FIND
# $2 = string to REPLACE
# $3 = char to add to string to match length
# $4 = file to modify
# if REPLACE > FIND add chars to FIND to remove the same number of characters
# when REPLACE string is added
# if REPLACE < FIND add chars to REPLACE to add the same number of characters
# when FIND string is removed
replaceStrSameLen () {
    local FIND_NAME=$1
    local REPLACE_NAME=$2
    local EXTRA_CHAR=$3
    local FILEPATH=$4
    if [[ "${#REPLACE_NAME}" -gt "${#FIND_NAME}" ]]; then
        num_chars_needed=$((${#REPLACE_NAME}-${#FIND_NAME}))
        for ((i=0; i<$num_chars_needed; i++))
        do
            FIND_NAME+=$EXTRA_CHAR
        done
    elif [[ "${#REPLACE_NAME}" -lt "${#FIND_NAME}" ]]; then
        num_chars_needed=$((${#FIND_NAME}-${#REPLACE_NAME}))
        for ((i=0; i<$num_chars_needed; i++))
        do
            REPLACE_NAME+=$EXTRA_CHAR
        done
    fi

    sed -i "s/$FIND_NAME/$REPLACE_NAME/g" "$FILEPATH"
}

# Print to console what mon is being found and what it is being replaced with
printf "finding \"$FIND\" and replacing with \"$REPLACE\"\n"

# REPLACE ALL INSTANCES IN OVERWORLD ENCOUNTERS -----
for f in data/wild/maps/*.asm
do
    sed -i "s/$FIND/$REPLACE/g" "$f"
done

# OVERWRITE CONSTANT IN POKEMON CONSTANTS FILE -----
# expects ALL CAPS
replaceStrSameLen $FIND $REPLACE " " $POKEMON_CONSTANTS_FILEPATH

# OVERWRITE CONSTANT IN POKEDEX CONSTANTS -----
# expects ALL CAPS with DEX_ prefix, need to add prefix
DEX_FIND="DEX_${FIND}"
DEX_REPLACE="DEX_${REPLACE}"
replaceStrSameLen $DEX_FIND $DEX_REPLACE " " $POKEDEX_CONSTANTS_FILEPATH

# OVERWRITE IN POKEMON NAMES -----
# expects 10 chars and ALL CAPS, may need to truncate string or
# add extra @ symbols to meet req
NAME=$REPLACE
if [[ "${#NAME}" -lt 10 ]]; then
    num_ats_needed=$((10-${#NAME}))
    for (( i=0 ; i<$num_ats_needed ; i++))
    do
        NAME+="@"
    done
elif [[ "${#NAME}" -gt 10 ]]; then
    NAME=$(echo "${NAME:0:10}")
fi

# find the name to replace (need it with the @'s
FIND_NAME=$(grep -o "${FIND}[^ ]*" "${NAMES_FILEPATH}")

# not the best fix but currently grep -o for the find name returns the end
# of the string including the closing quotes, so need to add closing quotes
# to the NAME we are replacing with
NAME+="\""

#replace line in names file with newly created NAME string
sed -i "s/$FIND_NAME/$NAME/g" "${NAMES_FILEPATH}"

# OVERWRITE POKEMON CRY -----
# note - could allow user to enter more info here, but only changing name for now
# replace mon name in cries file - need first letter Cap rest lowercase
find_mon_proper_name=$(echo "$FIND" | tr '[:upper:]' '[:lower:]')
find_mon_proper_name="${find_mon_proper_name^}"
replace_mon_proper_name=$(echo "$REPLACE" | tr '[:upper:]' '[:lower:]')
replace_mon_proper_name="${replace_mon_proper_name^}"

# replace line in cries file
sed -i "s/$find_mon_proper_name/$replace_mon_proper_name/g" "${CRIES_FILEPATH}"

# OVERWRITE PARTY ICON WITH VARIABLE PARAM AND NEW NAME -----
# replace mon name in menu_icons file - need first letter Cap rest lowercase
# can use previously defined find_mon_proper_name and replace_mon_proper_name
sed -i "s/$find_mon_proper_name/$replace_mon_proper_name/g" "${ICON_FILEPATH}"

# get line number for mon in icons file
icon_type_line=$(grep "${replace_mon_proper_name}" "${ICON_FILEPATH}" -nw | head -n 1 | cut -d: -f1)

# get icon type to replace for sed
icon_to_replace=$(grep "${replace_mon_proper_name}" "${ICON_FILEPATH}" | head -n 1 | grep -o "ICON_[^ ]*")

# keep lines at set length, so add to new icon string if we need more
# if new icon is longer then add spaces to string to replace
if [[ "${#icon_to_replace}" -gt "${#ICON_TYPE}" ]]; then
    num_spaces_needed=$((${#icon_to_replace}-${#ICON_TYPE}))
    for (( i=0 ; i<$num_spaces_needed ; i++ ))
    do
        ICON_TYPE+=" "
    done
elif [[ "${#icon_to_replace}" -lt "${#ICON_TYPE}" ]]; then
    num_spaces_needed=$((${#ICON_TYPE}-${#icon_to_replace}))
    for (( i=0 ; i<$num_spaces_needed ; i++));
    do
        icon_to_replace+=" "
    done
fi

# replace the icon type on that line with the user entered icon
sed -i "${icon_type_line}s/${icon_to_replace}/${ICON_TYPE}/" "${ICON_FILEPATH}"

# OVERWRITE COLOR PALETTE -----
# replace mon name in color palette file - need ALL CAPS
sed -i "s/$FIND/$REPLACE/g" "${PALETTE_FILEPATH}"

# get line number for mon in palettes file
# grep -n gives line number, -w gives exact word match (avoid collision of MEW and MEWMON)
# head -n 1 gives only first line, cut grabs what is before the colon
color_palette_line=$(grep "${REPLACE}" "${PALETTE_FILEPATH}" -nw | head -n 1 | cut -d: -f1)

# get color palette to replace for sed
color_palette_to_replace=$(grep "${REPLACE}" "${PALETTE_FILEPATH}" | head -n 1 | grep -o "PAL_[^ ]*")

# lines should be 18 char long before semicolon, so add to new palette string if we need more
# if new palette is longer then add spaces to string to replace
if [[ "${#color_palette_to_replace}" -gt "${#COLOR_PALETTE}" ]]; then
    num_spaces_needed=$((${#color_palette_to_replace}-${#COLOR_PALETTE}))
    for (( i=0 ; i<$num_spaces_needed ; i++ ));
    do
        COLOR_PALETTE+=" "
    done
elif [[ "${#color_palette_to_replace}" -lt "${#COLOR_PALETTE}" ]]; then
    num_spaces_needed=$((${#COLOR_PALETTE}-${#color_palette_to_replace}))
    for (( i=0 ; i<$num_spaces_needed ; i++ ));
    do
        color_palette_to_replace+=" "
    done
fi

# replace the palette on that line with the user entered palette
sed -i "${color_palette_line}s/${color_palette_to_replace}/${COLOR_PALETTE}/" "${PALETTE_FILEPATH}"

# OVERWRITE POKEDEX ENTRY IN POKEDEX ORDER -----

# overwrite pointer in dex entries - requires ALL CAPS


# overwrite pokemon pic paths


# Stretch goal:
#  Add interactive base stat/move creation
#  Evolution methods, etc

