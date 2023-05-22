#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..31"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 GetHealthcheckInfo
samples/cli/sample-apps Matchmaking getHealthcheckInfo \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 HandlerV3Healthz
samples/cli/sample-apps Matchmaking handlerV3Healthz \
    > test.out 2>&1
eval_tap $? 3 'HandlerV3Healthz' test.out

#- 4 GetAllChannelsHandler
samples/cli/sample-apps Matchmaking getAllChannelsHandler \
    --namespace $AB_NAMESPACE \
    --limit '89' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
samples/cli/sample-apps Matchmaking createChannelHandler \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "RyutQGAfJxWmn2RR", "description": "RdJ2WFHaanKWz6sj", "find_match_timeout_seconds": 46, "game_mode": "pmCLiQM4irFEppsV", "joinable": true, "max_delay_ms": 63, "region_expansion_range_ms": 91, "region_expansion_rate_ms": 41, "region_latency_initial_range_ms": 59, "region_latency_max_ms": 73, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 7, "min": 14, "name": "zWSvqXVtAk9Vm31M"}, {"max": 51, "min": 84, "name": "8BGKk2zjMvSfHW0r"}, {"max": 86, "min": 93, "name": "pA3lH18n84koOXW6"}], [{"max": 64, "min": 20, "name": "uVKMirPu3QTRXxo8"}, {"max": 23, "min": 17, "name": "MobFfrElCtVLTnWY"}, {"max": 56, "min": 44, "name": "usxjxrVNtaj0lelD"}], [{"max": 90, "min": 64, "name": "iLzLJPwrR7X863vy"}, {"max": 39, "min": 89, "name": "VjV70DJ4XTRDSUda"}, {"max": 78, "min": 12, "name": "HiO9CeOBgVEF1Xuj"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 90, "role_flexing_second": 7}, "max_number": 35, "min_number": 56, "player_max_number": 46, "player_min_number": 44}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 57, "min": 37, "name": "L3bHd2NOPWWm7rOm"}, {"max": 63, "min": 25, "name": "V8Q1lp5ox40BMW4K"}, {"max": 93, "min": 18, "name": "FMjgB0grWJMsHYEE"}], [{"max": 20, "min": 43, "name": "YY9FEl7fLEmjcL1A"}, {"max": 59, "min": 65, "name": "6tty48LYcrRKftzX"}, {"max": 37, "min": 54, "name": "n4EDwT2GE3L5wqiw"}], [{"max": 63, "min": 47, "name": "GVWEoasB8kFfXbEw"}, {"max": 74, "min": 74, "name": "WyLrcLtkkZ47Jxre"}, {"max": 79, "min": 43, "name": "teiVsaYe9e1QmLu8"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 68, "role_flexing_second": 24}, "duration": 40, "max_number": 27, "min_number": 23, "player_max_number": 39, "player_min_number": 42}, {"combination": {"alliances": [[{"max": 36, "min": 48, "name": "92appDYF8Wyruj6I"}, {"max": 39, "min": 49, "name": "qYDvh4056hhjbkkZ"}, {"max": 2, "min": 51, "name": "i3k7vuUPvUOAGNIl"}], [{"max": 29, "min": 41, "name": "uXwr7WGto6DJnGlb"}, {"max": 6, "min": 50, "name": "5Q7kF0kCezY7yxie"}, {"max": 31, "min": 50, "name": "gzILnJo1sv5gGP44"}], [{"max": 60, "min": 56, "name": "yJsm3orznM4fAtVy"}, {"max": 36, "min": 51, "name": "b8Vti0Lnhsf5sK5W"}, {"max": 62, "min": 4, "name": "bD9FFjbJ6bfXGnXu"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 53, "role_flexing_second": 1}, "duration": 46, "max_number": 90, "min_number": 50, "player_max_number": 73, "player_min_number": 24}, {"combination": {"alliances": [[{"max": 23, "min": 84, "name": "avosFp6dpIVXYHQg"}, {"max": 3, "min": 29, "name": "mDsOjliwuT2XeceR"}, {"max": 22, "min": 94, "name": "cR2dVAu1hychxL0Y"}], [{"max": 42, "min": 79, "name": "g6xAqRyTAWdEuhoH"}, {"max": 42, "min": 19, "name": "lD85pjELNiETJf1G"}, {"max": 40, "min": 75, "name": "TFzpjXp2CBIRFLjb"}], [{"max": 85, "min": 38, "name": "boTVjIqnAqSLVIlB"}, {"max": 60, "min": 15, "name": "FAG8aVLxIN0MiNpN"}, {"max": 39, "min": 38, "name": "C9WAQoyThhIvE9hN"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 75, "role_flexing_second": 56}, "duration": 5, "max_number": 34, "min_number": 11, "player_max_number": 51, "player_min_number": 0}], "flexing_rule": [{"attribute": "ekbn6gqUjIFlMfu8", "criteria": "1lOOw55j8tPDjf8U", "duration": 27, "reference": 0.8346806136356353}, {"attribute": "AczS0apaEbOy4yyR", "criteria": "15mBpo1gUnVwuYw9", "duration": 60, "reference": 0.9478870462027515}, {"attribute": "TYwQbvThE4yGQecO", "criteria": "cLHyrhIW5kSegI7g", "duration": 51, "reference": 0.784337864915544}], "match_options": {"options": [{"name": "az9an6v50vVi98hZ", "type": "E7EJ6IXZCmJIogXm"}, {"name": "o2He9MvTx1wndQtl", "type": "EMVg9HdlgXggBpxz"}, {"name": "PhYgI6HIvRNYbBQO", "type": "rDC6rrDlQztKrDSh"}]}, "matching_rule": [{"attribute": "hOrxlaqNGxz5est4", "criteria": "wrc1ds6AHPNzCAlm", "reference": 0.28391713461468526}, {"attribute": "p3CD7Vg0vnGw02Xu", "criteria": "eqKqjLQ3Qt0zIMbk", "reference": 0.5335760278235815}, {"attribute": "4uW1fjXkQuJmXwcr", "criteria": "IUKK77jrAcVoEr3B", "reference": 0.6832703973097385}], "rebalance_enable": false, "sub_game_modes": {"BBviYM4O1TiasJTW": {"alliance": {"combination": {"alliances": [[{"max": 70, "min": 99, "name": "3F2maxKTezPFvmF1"}, {"max": 19, "min": 19, "name": "RNL8LPBl5YCZoJoV"}, {"max": 31, "min": 53, "name": "rt10bA774uijHfr5"}], [{"max": 51, "min": 96, "name": "eE4XIUBXLAgg7AQb"}, {"max": 47, "min": 42, "name": "wTMTKW0E95En9xra"}, {"max": 72, "min": 67, "name": "W7l1r90Sih2uIBP1"}], [{"max": 36, "min": 45, "name": "xS6ge7EbOaIIQQNt"}, {"max": 88, "min": 84, "name": "P8vsWNA2CT0yb9uK"}, {"max": 39, "min": 92, "name": "pW8QOFrG9TKoojSk"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 52, "role_flexing_second": 92}, "max_number": 82, "min_number": 50, "player_max_number": 15, "player_min_number": 3}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 8, "min": 42, "name": "tkuXCziMIdl6KT92"}, {"max": 37, "min": 3, "name": "Bsnvj5HaClbBRLq9"}, {"max": 6, "min": 33, "name": "SY8SQNUpuyoXkyoA"}], [{"max": 25, "min": 67, "name": "2kgTfwO82HJ18fBO"}, {"max": 56, "min": 37, "name": "J8KqOor7B42fy0ra"}, {"max": 33, "min": 91, "name": "9vzdLuOisN5y9Nsl"}], [{"max": 86, "min": 42, "name": "7DnxgE6LaN5PLZTj"}, {"max": 100, "min": 59, "name": "nppKjrqaqIkQIus1"}, {"max": 2, "min": 91, "name": "7aglViQ4iPidmJ5c"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 80, "role_flexing_second": 68}, "duration": 52, "max_number": 29, "min_number": 43, "player_max_number": 62, "player_min_number": 85}, {"combination": {"alliances": [[{"max": 94, "min": 1, "name": "9ndm5uxViuEHuxKH"}, {"max": 48, "min": 78, "name": "35Jw4Q3GBLV3ZFFR"}, {"max": 76, "min": 88, "name": "WErTHHKHRVPcZb30"}], [{"max": 29, "min": 28, "name": "DAHdLAxInxdky4X9"}, {"max": 21, "min": 43, "name": "OAJWfe4DtzlidwIn"}, {"max": 68, "min": 87, "name": "5KzLJeIkfdB77VJp"}], [{"max": 89, "min": 13, "name": "r6BzP5AVgoiXxcCv"}, {"max": 91, "min": 10, "name": "VcGoSCbmPGzmYhbn"}, {"max": 40, "min": 16, "name": "5zeD5ymIijN84O5h"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 55}, "duration": 32, "max_number": 58, "min_number": 68, "player_max_number": 100, "player_min_number": 100}, {"combination": {"alliances": [[{"max": 97, "min": 80, "name": "jiwu4kWAZJCvbrkl"}, {"max": 36, "min": 95, "name": "WwD0fgb0S5AxNk6g"}, {"max": 95, "min": 31, "name": "fjvqBFBSU5LgPd65"}], [{"max": 10, "min": 90, "name": "x4vHeRNvo4JTyO02"}, {"max": 40, "min": 50, "name": "GEh4tVogzOvVH0uA"}, {"max": 49, "min": 94, "name": "G9fFg1FYJ61jw5OV"}], [{"max": 37, "min": 32, "name": "XpXOTFY9WEoMDAb9"}, {"max": 15, "min": 61, "name": "XhGW5HXXCuchjC1u"}, {"max": 52, "min": 82, "name": "XDqArTSgX9nPRLPr"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 70, "role_flexing_second": 19}, "duration": 21, "max_number": 85, "min_number": 31, "player_max_number": 9, "player_min_number": 88}], "name": "UP3ICdoYgjohoU57"}, "iptykyGMZyTKJxwH": {"alliance": {"combination": {"alliances": [[{"max": 80, "min": 33, "name": "LJvvPIC8pxmn4vxU"}, {"max": 58, "min": 64, "name": "3QYhbQrlk37DsU4e"}, {"max": 35, "min": 31, "name": "jvFM4Gi0Qrc0DfBn"}], [{"max": 13, "min": 29, "name": "ix0rfR9nFxBqDWHQ"}, {"max": 25, "min": 61, "name": "56Rtx9OZdb0Lab5p"}, {"max": 77, "min": 79, "name": "kTUJwSSysNOmnq4Q"}], [{"max": 59, "min": 37, "name": "4FTo7h4TJyl3Bc4d"}, {"max": 91, "min": 45, "name": "lQot2HuVuxYDbNCL"}, {"max": 15, "min": 49, "name": "1wtOemoNj9L7UOL0"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 80}, "max_number": 59, "min_number": 86, "player_max_number": 77, "player_min_number": 77}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 80, "min": 68, "name": "DnaefwxSiXLDIPPa"}, {"max": 72, "min": 47, "name": "hXY9L6CjlIykiCkr"}, {"max": 44, "min": 80, "name": "tJQgP5TmYKaiURJv"}], [{"max": 37, "min": 63, "name": "AiljegYqOEJlWiPa"}, {"max": 84, "min": 33, "name": "uhwBGm0Q3rmsB2Ga"}, {"max": 54, "min": 22, "name": "bCCzFYEcDKtQZABK"}], [{"max": 79, "min": 46, "name": "21ddF2CO0Xi69ais"}, {"max": 67, "min": 25, "name": "GVQ8WOXHU15gp0z1"}, {"max": 19, "min": 91, "name": "orneG0sPmoJi8pW5"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 1, "role_flexing_second": 90}, "duration": 41, "max_number": 10, "min_number": 14, "player_max_number": 87, "player_min_number": 72}, {"combination": {"alliances": [[{"max": 45, "min": 16, "name": "hZGmkaXNqMCBpaZK"}, {"max": 25, "min": 49, "name": "e92lDyQHU5jCXBu7"}, {"max": 38, "min": 37, "name": "jMy2kn9yb6sVMAtJ"}], [{"max": 40, "min": 94, "name": "x4gBAy9SYi7psIJb"}, {"max": 70, "min": 51, "name": "GSoOHKTlUORFjxzl"}, {"max": 24, "min": 33, "name": "A6Fzp4RLGaKIHHmv"}], [{"max": 72, "min": 40, "name": "QkGLw3tyC0RN937a"}, {"max": 5, "min": 65, "name": "0n4W6TFHzZetgWtZ"}, {"max": 64, "min": 64, "name": "BIfz11jdgXWfFFNA"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 0, "role_flexing_second": 59}, "duration": 54, "max_number": 75, "min_number": 0, "player_max_number": 31, "player_min_number": 1}, {"combination": {"alliances": [[{"max": 65, "min": 14, "name": "17lBIEr2KlrATKP6"}, {"max": 84, "min": 12, "name": "1Pl9fIYf9ub1onjP"}, {"max": 88, "min": 9, "name": "putzpRBxB73unyDz"}], [{"max": 75, "min": 98, "name": "MF31Qg7iMHEDNHw4"}, {"max": 72, "min": 38, "name": "kE0C8v3ZjxryyPjI"}, {"max": 99, "min": 90, "name": "ufPpck9zYw1cM2wW"}], [{"max": 27, "min": 79, "name": "fcahA8cixXWQmT8i"}, {"max": 94, "min": 56, "name": "ROGb31KLFwHVTwEO"}, {"max": 76, "min": 37, "name": "xz6PBjV8W8c6HHXe"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 94}, "duration": 71, "max_number": 96, "min_number": 3, "player_max_number": 61, "player_min_number": 95}], "name": "n7xUgAjgkB3trV6L"}, "UByJwYcA05wWzDes": {"alliance": {"combination": {"alliances": [[{"max": 74, "min": 62, "name": "usmPxYHhDzp7krkk"}, {"max": 22, "min": 41, "name": "rhWxmdN0rgwX4P8u"}, {"max": 77, "min": 45, "name": "OYvXHtTStzECArm3"}], [{"max": 95, "min": 100, "name": "akgkSVqM6KEWlecD"}, {"max": 78, "min": 99, "name": "uBHxZeXHmWwIMZjn"}, {"max": 89, "min": 78, "name": "OqjQtiPDzd6kge0S"}], [{"max": 47, "min": 42, "name": "nOZgeDbUIJjNmxNN"}, {"max": 59, "min": 66, "name": "Nn6T0kTp9vdq9fZo"}, {"max": 12, "min": 0, "name": "LCI9Y87G4SMiCm32"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 0}, "max_number": 86, "min_number": 0, "player_max_number": 63, "player_min_number": 67}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 79, "min": 94, "name": "eJfJ3rjA4yssmPI7"}, {"max": 91, "min": 44, "name": "kUiYa5lCc6NqgeJx"}, {"max": 26, "min": 21, "name": "hJBbSbQ4M1LTphyS"}], [{"max": 99, "min": 25, "name": "YJMoWgxDs65XSjkl"}, {"max": 29, "min": 57, "name": "LEMx6lfl8hs0nVeh"}, {"max": 99, "min": 88, "name": "yIYVL1zCYu4yqhnG"}], [{"max": 92, "min": 98, "name": "VisyVY3ctjq7XOBi"}, {"max": 96, "min": 2, "name": "yI0WRMBGYYzapvTs"}, {"max": 76, "min": 11, "name": "Ft83VZxBMxP0d9Q7"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 85, "role_flexing_second": 76}, "duration": 99, "max_number": 13, "min_number": 5, "player_max_number": 63, "player_min_number": 57}, {"combination": {"alliances": [[{"max": 51, "min": 81, "name": "elvG7oQsdkliIfqW"}, {"max": 45, "min": 20, "name": "N5hZc5uJDzXHbsMC"}, {"max": 22, "min": 77, "name": "jOAKKrzxS8mg0hFC"}], [{"max": 74, "min": 41, "name": "dVNvtTRZH3iscJ3C"}, {"max": 51, "min": 9, "name": "Gxb0V0W6HpzYQu7Q"}, {"max": 59, "min": 41, "name": "3Xod9ccp2E8epc2e"}], [{"max": 35, "min": 76, "name": "fwxPGcFejPRcluTO"}, {"max": 84, "min": 82, "name": "tqesMk9iAqJHqMBn"}, {"max": 22, "min": 98, "name": "KmCpbNjNStuEXNAd"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 14, "role_flexing_second": 9}, "duration": 73, "max_number": 14, "min_number": 14, "player_max_number": 86, "player_min_number": 80}, {"combination": {"alliances": [[{"max": 33, "min": 85, "name": "aPBaw74fX0Q9dlo8"}, {"max": 26, "min": 59, "name": "F0YThis4DoYhRbZT"}, {"max": 38, "min": 39, "name": "UoMpm0SUvcBfcqEc"}], [{"max": 71, "min": 0, "name": "1VXx0QS7lM9cKLID"}, {"max": 69, "min": 15, "name": "GYtbI4eO8uCmYAqo"}, {"max": 7, "min": 82, "name": "QT2kouAgYrz71dwz"}], [{"max": 67, "min": 9, "name": "UG1Tn4WmCmtaRJdA"}, {"max": 59, "min": 83, "name": "aO7kw2QbPbh1mkb8"}, {"max": 65, "min": 42, "name": "h7fV0sCCnw7eeuc8"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 28, "role_flexing_second": 79}, "duration": 52, "max_number": 64, "min_number": 88, "player_max_number": 71, "player_min_number": 8}], "name": "ugJbpyVmTqTYejVi"}}}, "session_queue_timeout_seconds": 3, "social_matchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
samples/cli/sample-apps Matchmaking getMatchPoolMetric \
    --channelName 'yX6mbahcDxRa66e4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
samples/cli/sample-apps Matchmaking deleteChannelHandler \
    --channel 'JRXBqBtNp4yz4iYe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
samples/cli/sample-apps Matchmaking storeMatchResults \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "WR7Rp2ZqprE9QibX", "players": [{"results": [{"attribute": "FmwVbhm7quyySuR9", "value": 0.13360363360573757}, {"attribute": "sw4xKsRSbnxJ4m21", "value": 0.12207513653156765}, {"attribute": "CcdaGOLJed7r1QJx", "value": 0.9932276569264072}], "user_id": "k0X7w8rQ1PMpe0lT"}, {"results": [{"attribute": "ybNPjSbm23vbGFyu", "value": 0.7005988147106583}, {"attribute": "d0W0MpaOi06PSvxw", "value": 0.1769996230125852}, {"attribute": "njFeXwqakMrpi8Up", "value": 0.667901633609962}], "user_id": "BCPhQqOFrnhJC6JY"}, {"results": [{"attribute": "MJESsJPIDXHjDzzv", "value": 0.48344511965448955}, {"attribute": "tQf0jJLGbNuc8e2W", "value": 0.2936962027157949}, {"attribute": "2A9BhPKkmYCdpgJH", "value": 0.8390064579453306}], "user_id": "j29GoKZUeNpxwROe"}]}' \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
samples/cli/sample-apps Matchmaking rebalance \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "HLtMhhoa5PAqIMHl"}' \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
samples/cli/sample-apps Matchmaking queueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"channel": "xhbmGsmXWvQwNMAH", "client_version": "AOkvcUu8Sk6qK0km", "deployment": "hX95fMXYtZT2QTMt", "error_code": 27, "error_message": "GygjEHOwQSJDj2uv", "game_mode": "yUgZMxYPo43PuNQH", "joinable": true, "match_id": "9vOgs8YhHMxRa1tj", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 26, "party_attributes": {"X5cuzxm6sfSNzTRF": {}, "4IcxaTC5rYropG6A": {}, "L84QAPmArglswpHq": {}}, "party_id": "Z5OjiFwLzIYZFrbd", "party_members": [{"extra_attributes": {"cMGrHDoxFlhmdiOe": {}, "wTJn3xOr6PigZpHN": {}, "3dGR835KLAEYWDZI": {}}, "user_id": "0tOa2HnPcClQvLWF"}, {"extra_attributes": {"hGDaXd3zn18VNDcu": {}, "aeh7wWBlEG0CLkJA": {}, "o8yQkxSred8rVlRz": {}}, "user_id": "Y3rkcqGi3ohsBR0d"}, {"extra_attributes": {"8avNLgcTHB0FUtzw": {}, "Xv1fjojcJjgJi1ht": {}, "V9SfDiZ4ECbDHHGd": {}}, "user_id": "q8eBre2ykfO0KPBx"}], "ticket_created_at": 71, "ticket_id": "sSSWnfq3cpZ4BfGf"}, {"first_ticket_created_at": 66, "party_attributes": {"Z26rkwFBCAdgQ9hq": {}, "3xDGWMEU62T1C9Ok": {}, "gKbfvGZvjlLancgv": {}}, "party_id": "pR8XaEY6C8lpEDp2", "party_members": [{"extra_attributes": {"BDUFq1LaBua8D6jt": {}, "83ES3zTM1DyGeIbP": {}, "fT41MoUEa7TSlfA7": {}}, "user_id": "FvjULIV4J26DKIHE"}, {"extra_attributes": {"uq5ex8WFNMX5R9Vl": {}, "ocVkSUdzLlhfTCgx": {}, "7D1lRhTQE8F4eUp6": {}}, "user_id": "7LbZ6AwfYAXpeNk0"}, {"extra_attributes": {"PFhfXeQql5r40hGD": {}, "XIpj5ON9D3flKeEf": {}, "6ygloWrXuIGej5AP": {}}, "user_id": "dkNCZab8HKNHIums"}], "ticket_created_at": 37, "ticket_id": "rvpe9yWZF3PtPuVK"}, {"first_ticket_created_at": 9, "party_attributes": {"vT2utwwC5ooUpxlR": {}, "dTG7f5KBel80Xl5K": {}, "CEftH14tDbM1CgnZ": {}}, "party_id": "TPXTJAeux78Dz3g7", "party_members": [{"extra_attributes": {"eh5j6L68sTnmNi9m": {}, "sqaesQRNGB2COwSp": {}, "tI5iOEdkqhc0c2wj": {}}, "user_id": "LJR24QzvaQcJ1Ftt"}, {"extra_attributes": {"JAIZpsBu7EQ3BtCg": {}, "mWMNkm8PBYOSOJul": {}, "XDKI1s3xEb9YNtMz": {}}, "user_id": "mipj7tK9v2Qwmpr8"}, {"extra_attributes": {"FNTua9CiJmA7fzrO": {}, "gfl9al44CwAEwqfe": {}, "Nb3h2Qdtd88TxuQD": {}}, "user_id": "J9CcTVM8mOinIhjy"}], "ticket_created_at": 36, "ticket_id": "nyhSnv3lryZzSXaX"}]}, {"matching_parties": [{"first_ticket_created_at": 79, "party_attributes": {"Xw5fRFlzZKLDF8Wu": {}, "xFMWtM5FtilIERMU": {}, "fz2TmFZsGrgiWtLC": {}}, "party_id": "NWkIlG9b11GT53QW", "party_members": [{"extra_attributes": {"n3PTx5c3Jx0UlqVS": {}, "t6ULU7kb5ooqSpEQ": {}, "RgzpoqazpCw2P5qB": {}}, "user_id": "Ay5QSop6v5DAsA2s"}, {"extra_attributes": {"vcyVjxEUGg6VnJ12": {}, "btYUPIQd2IYv9KBi": {}, "9SfTWrlykfXFkgJ0": {}}, "user_id": "Jgq8XF7FBXPOKCKt"}, {"extra_attributes": {"WBONZIWiG3FIde5x": {}, "m2xWVHmvbxFrs0m1": {}, "3oz7mhdwYCzF38pQ": {}}, "user_id": "MSSaxSXFemgDbEXf"}], "ticket_created_at": 54, "ticket_id": "1bxeiDrxiHehzg14"}, {"first_ticket_created_at": 76, "party_attributes": {"TAlVnU1mHlowVc2L": {}, "zyqc65ugbhHSjZTg": {}, "t5YL1NaAJ0Bujp80": {}}, "party_id": "JFrAM8kdUa4xjjok", "party_members": [{"extra_attributes": {"tcgxet9cNsMSewnT": {}, "rJVSVrsSFROJpKtx": {}, "paD83jEiNhcjdzkl": {}}, "user_id": "HjiCy8N5XYg4nMIK"}, {"extra_attributes": {"JojdmjK1KUJRXQ3D": {}, "4LzzGD70MFwzXfMR": {}, "JjhmcEkS6uS5ZgDZ": {}}, "user_id": "GKByvlsZHcO5mb4X"}, {"extra_attributes": {"goalgUUuAMyPtNpg": {}, "SkFJ063nJpASp0Cq": {}, "AaGAH81OvBOhOeFl": {}}, "user_id": "LORt7dAEcxyQgjHg"}], "ticket_created_at": 55, "ticket_id": "ZSnlPPeuSwmpfUcV"}, {"first_ticket_created_at": 84, "party_attributes": {"V6iiF0vaudQyekM3": {}, "eqjEZvw3xVMV0sSM": {}, "RkL5bSnpcZB3XX38": {}}, "party_id": "0u3D3WI2fp3KktGM", "party_members": [{"extra_attributes": {"1AadycNLXe8dNpXC": {}, "1LXsALhP2z3e7PAL": {}, "wqFCShFjGU4SevYg": {}}, "user_id": "TO9XwB3HUUmDolsJ"}, {"extra_attributes": {"4fI1Pk0W9yKihVCm": {}, "7YotGPd0fjruBIdr": {}, "VeP9wQa55To8nOkR": {}}, "user_id": "wmZWuWQ9d31gaKJ1"}, {"extra_attributes": {"dJSfbNMvFYBbSKAj": {}, "mv0XFHptI4nK3NxM": {}, "dlL57p1MROznCMOY": {}}, "user_id": "pGLODLQllWkmmzAu"}], "ticket_created_at": 3, "ticket_id": "aPINemXPNwsK6bMK"}]}, {"matching_parties": [{"first_ticket_created_at": 69, "party_attributes": {"VBIFKrlDUFfOCbjT": {}, "L6qtvI8pVneNj0Gf": {}, "p9gCGgCccJHhZAES": {}}, "party_id": "ERCg2aCrt7mmxvO5", "party_members": [{"extra_attributes": {"nVABdSE1q8oQddnA": {}, "0zTzQ39dunmzrCAg": {}, "JyYZ4TaiUnlDuDj5": {}}, "user_id": "xNebRe4QIEWDWafm"}, {"extra_attributes": {"t4LCYz4gs1JWHfzm": {}, "FE79FGi2lp9EnjWQ": {}, "xZNKB4h7jYCAb6yE": {}}, "user_id": "RJrdvieY4NRsK4VB"}, {"extra_attributes": {"KgU6f9nRSTtu7E0A": {}, "sjky37DrRIjuap6K": {}, "gWvmlWEmec4PHW2p": {}}, "user_id": "sccTJZypHva92dez"}], "ticket_created_at": 25, "ticket_id": "stVHFMhGOGGD5gmt"}, {"first_ticket_created_at": 10, "party_attributes": {"ccpaG3yrk1CQKQvT": {}, "NtKyiKs1IYBSbVgP": {}, "mUAf6XXsj1MIReES": {}}, "party_id": "OhH3bZkGdgJLQpld", "party_members": [{"extra_attributes": {"D4nUGTAKjK6NEQqG": {}, "Zzecz8qYZn9QBcx0": {}, "xqGE41izpoWcsPes": {}}, "user_id": "y2oflHZU9t8gayOJ"}, {"extra_attributes": {"q8IsVY1gxqGHGyW4": {}, "FxwB4cQLuJng0nCy": {}, "HBOzqmm6gqvLwYvi": {}}, "user_id": "tT8uHTAlB75H5qNV"}, {"extra_attributes": {"ChvSyWyf14ouRzOA": {}, "6CbJjv2OYPjKEOnz": {}, "5wVcwFBnUc0ZLHkW": {}}, "user_id": "FpfECy7iOEgBOKq4"}], "ticket_created_at": 51, "ticket_id": "z2Dy39S9bwXf5pCl"}, {"first_ticket_created_at": 81, "party_attributes": {"SHAgXagfkTZ7DEa1": {}, "ECGW99umRmi50bff": {}, "meAtB9QHzTzdIIYs": {}}, "party_id": "3qORzcCK2ErQBqA2", "party_members": [{"extra_attributes": {"cX5NNf5B8IKPcVs5": {}, "xiZQXnSgI9hRqnXO": {}, "4qQUiHA4HAjVcdrg": {}}, "user_id": "tCLyHmVusNvlQFII"}, {"extra_attributes": {"DTPDkYXOhYN0hmPX": {}, "kySQqUAo0dRCPPP9": {}, "w2Lo7dot5Ioi42ef": {}}, "user_id": "vQUD12ZYk6BSQJ4e"}, {"extra_attributes": {"Fk8zS1iVTyfYItbp": {}, "r9bIVrh0JQ73vtuK": {}, "F2dwfMn3uzDFaHnO": {}}, "user_id": "8e7yfboAtUfbTHfP"}], "ticket_created_at": 89, "ticket_id": "LVbiuJnZd0PlCZHj"}]}], "namespace": "JxBZppDJ8AUpw7mw", "party_attributes": {"Kg4L7vKRvtW97NPB": {}, "lnWSAa5KXvMtPir4": {}, "PBCw9ORxFiL6K5St": {}}, "party_id": "4n1iBZ6z92oVEYQ6", "queued_at": 7, "region": "HbwsJxtnei7v4q17", "server_name": "hIIRSJKrn8rhDfjD", "status": "x5m4mwQVmTlwd9au", "ticket_id": "SKNbJyER9NzSDjtB", "updated_at": "1995-09-25T00:00:00Z"}' \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
samples/cli/sample-apps Matchmaking dequeueSessionHandler \
    --namespace $AB_NAMESPACE \
    --body '{"match_id": "M5gJDdiBvRCBwHU6"}' \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
samples/cli/sample-apps Matchmaking querySessionHandler \
    --matchID 'ebYJLhgi9pyXk2sS' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
samples/cli/sample-apps Matchmaking updatePlayTimeWeight \
    --namespace $AB_NAMESPACE \
    --body '{"playtime": 45, "userID": "W1a9YRLZ7yI5JTmu", "weight": 0.1762710127686532}' \
    > test.out 2>&1
eval_tap $? 13 'UpdatePlayTimeWeight' test.out

#- 14 GetAllPartyInAllChannel
samples/cli/sample-apps Matchmaking getAllPartyInAllChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 14 'GetAllPartyInAllChannel' test.out

#- 15 BulkGetSessions
samples/cli/sample-apps Matchmaking bulkGetSessions \
    --namespace $AB_NAMESPACE \
    --matchIDs 'pqYyLW6BYJ3jDXCW' \
    > test.out 2>&1
eval_tap $? 15 'BulkGetSessions' test.out

#- 16 ExportChannels
samples/cli/sample-apps Matchmaking exportChannels \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'ExportChannels' test.out

#- 17 ImportChannels
samples/cli/sample-apps Matchmaking importChannels \
    --namespace $AB_NAMESPACE \
    --file 'tmp.dat' \
    --strategy '83uugqb69d9mB88f' \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking getSingleMatchmakingChannel \
    --channelName 'Qkl15AREkSuKdHdU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
samples/cli/sample-apps Matchmaking updateMatchmakingChannel \
    --channelName 'K0hdmcNVlj2iVi6I' \
    --namespace $AB_NAMESPACE \
    --body '{"deployment": "HxmWvNAWhtGQG63H", "description": "9AOtRw0WqbspbqXY", "findMatchTimeoutSeconds": 95, "joinable": true, "max_delay_ms": 26, "region_expansion_range_ms": 38, "region_expansion_rate_ms": 50, "region_latency_initial_range_ms": 56, "region_latency_max_ms": 86, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 95, "min": 98, "name": "qRPusiOUqWcs1nor"}, {"max": 66, "min": 48, "name": "72nTDVUGfdsQOMxO"}, {"max": 32, "min": 16, "name": "UoydinF2x0BQEH1e"}], [{"max": 87, "min": 80, "name": "vEVSNYMgNm5ialQy"}, {"max": 59, "min": 13, "name": "vjBgMP9pgZmmrD9X"}, {"max": 73, "min": 92, "name": "eEbBrlZyCYbM0GEs"}], [{"max": 60, "min": 91, "name": "f254F5gbBdLTriPq"}, {"max": 43, "min": 74, "name": "8DukFWL6pQiakoeQ"}, {"max": 78, "min": 83, "name": "mnb94Gtry7pZw4F5"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 20, "role_flexing_second": 85}, "maxNumber": 2, "minNumber": 3, "playerMaxNumber": 58, "playerMinNumber": 10}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 2, "min": 62, "name": "Sm1bgOQS808BJRbj"}, {"max": 52, "min": 79, "name": "uCKv7HUvpeU8hWsL"}, {"max": 32, "min": 75, "name": "dwG6jkaPHouqaXKP"}], [{"max": 10, "min": 56, "name": "iabJDiNhQDouUx49"}, {"max": 41, "min": 9, "name": "Z4dcc2gzwruslflM"}, {"max": 64, "min": 98, "name": "ZTvsR5bPys7CqBn5"}], [{"max": 71, "min": 99, "name": "I2zHDVWU8k7rhku1"}, {"max": 4, "min": 83, "name": "sge2bgTUcJ3aJWqE"}, {"max": 62, "min": 98, "name": "1wzbhO4L7BYqui2B"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 33, "role_flexing_second": 15}, "duration": 72, "max_number": 89, "min_number": 56, "player_max_number": 27, "player_min_number": 88}, {"combination": {"alliances": [[{"max": 46, "min": 42, "name": "6nciczfDJ7k0kx4m"}, {"max": 27, "min": 64, "name": "F8EMp95aZTyyrhVp"}, {"max": 84, "min": 83, "name": "adDKMDmgP6YF9blO"}], [{"max": 48, "min": 44, "name": "gabhly2ANiB3k4xf"}, {"max": 71, "min": 93, "name": "CZvazieQUoaww7uk"}, {"max": 41, "min": 96, "name": "CUN7FfYvDj1wcbGY"}], [{"max": 49, "min": 89, "name": "BfmzUNZirv1pjWhf"}, {"max": 68, "min": 37, "name": "6p7tGnWE1ZNDFQYc"}, {"max": 57, "min": 29, "name": "vu997vJcM2FgTqrP"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 79, "role_flexing_second": 28}, "duration": 11, "max_number": 60, "min_number": 76, "player_max_number": 78, "player_min_number": 2}, {"combination": {"alliances": [[{"max": 66, "min": 9, "name": "gAdDO7M8O04Bl8K3"}, {"max": 61, "min": 81, "name": "FjmbpZXSAuLBBeIn"}, {"max": 76, "min": 2, "name": "TiR1gpVAmKu4Ynie"}], [{"max": 51, "min": 97, "name": "OV2iEPxTUexecqpn"}, {"max": 44, "min": 100, "name": "ba8LFp4wY7PPUuxu"}, {"max": 60, "min": 1, "name": "FShA5UWOWKAAfWT0"}], [{"max": 41, "min": 58, "name": "b4D8Y6Xs2XystPuV"}, {"max": 54, "min": 49, "name": "YrUsr6I1RmRsu77N"}, {"max": 30, "min": 83, "name": "AWFk9ZNPmiAjuxyq"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 37, "role_flexing_second": 70}, "duration": 78, "max_number": 61, "min_number": 66, "player_max_number": 100, "player_min_number": 68}], "flexingRules": [{"attribute": "PEzTCvTV3KxbJl0X", "criteria": "wfIeTR2NisEGKrxR", "duration": 39, "reference": 0.010649489598056117}, {"attribute": "6TjLdvYpBNc5J2eP", "criteria": "bikUtM99eJutxBgx", "duration": 38, "reference": 0.7396123843998634}, {"attribute": "mxBpJKgd0FhwnEdt", "criteria": "uZFeUmVpKgcJ7sAf", "duration": 35, "reference": 0.04360223957999165}], "match_options": {"options": [{"name": "dhf2xkYoz1kU4ljG", "type": "hEGE6DZt4Yuco8tZ"}, {"name": "Bz4iJLlCoatXTYLS", "type": "cwAQEJFVFjMYZaoj"}, {"name": "P3VBORhekqJDhEn4", "type": "QnZu0tj5RkDHuCr3"}]}, "matchingRules": [{"attribute": "fhJnw7DHMzgYmPYg", "criteria": "xYQe1bAqN2jKHb0x", "reference": 0.06913193889722946}, {"attribute": "k80cJVLIV3kWPgEO", "criteria": "ULo9WUfa2dXqnNQ5", "reference": 0.9934994203415718}, {"attribute": "YZon89cdpZk9ku2I", "criteria": "0XL1m3fWAzidg1Pw", "reference": 0.19639233146610746}], "sub_game_modes": {}}, "sessionQueueTimeoutSeconds": 25, "socialMatchmaking": false, "use_sub_gamemode": true}' \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 GetAllPartyInChannel
samples/cli/sample-apps Matchmaking getAllPartyInChannel \
    --channelName 'K7ALugO1ISS1XUpj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 20 'GetAllPartyInChannel' test.out

#- 21 GetAllSessionsInChannel
samples/cli/sample-apps Matchmaking getAllSessionsInChannel \
    --channelName 'GsHlW3MfKdV2m5OH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'GetAllSessionsInChannel' test.out

#- 22 AddUserIntoSessionInChannel
samples/cli/sample-apps Matchmaking addUserIntoSessionInChannel \
    --channelName 'pim6VNQ11r1tY3S7' \
    --matchID 'KfthOv3hZK3F0TDe' \
    --namespace $AB_NAMESPACE \
    --body '{"blocked_players": ["vKLi2JfcofrSeKC8", "kUyXIIMgyVAxXC6s", "OWu0Vfs2mWMHu2ug"], "party_id": "g34ofk4TG0wIoKP7", "user_id": "mkCQKZF7VtNUisr9"}' \
    > test.out 2>&1
eval_tap $? 22 'AddUserIntoSessionInChannel' test.out

#- 23 DeleteSessionInChannel
samples/cli/sample-apps Matchmaking deleteSessionInChannel \
    --channelName 'jOfQdKlm4Rb94M4T' \
    --matchID 'kX11TzGjbwNTmcRq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 23 'DeleteSessionInChannel' test.out

#- 24 DeleteUserFromSessionInChannel
samples/cli/sample-apps Matchmaking deleteUserFromSessionInChannel \
    --channelName 'GgqfRvb8dfaFbcph' \
    --matchID 'uzJHlXy0lDWD3MPF' \
    --namespace $AB_NAMESPACE \
    --userID 'hfuSFoJCvPfUA6NB' \
    > test.out 2>&1
eval_tap $? 24 'DeleteUserFromSessionInChannel' test.out

#- 25 SearchSessions
eval_tap 0 25 'SearchSessions # SKIP deprecated' test.out

#- 26 GetSessionHistoryDetailed
eval_tap 0 26 'GetSessionHistoryDetailed # SKIP deprecated' test.out

#- 27 PublicGetMessages
samples/cli/sample-apps Matchmaking publicGetMessages \
    > test.out 2>&1
eval_tap $? 27 'PublicGetMessages' test.out

#- 28 PublicGetAllMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetAllMatchmakingChannel \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'PublicGetAllMatchmakingChannel' test.out

#- 29 PublicGetSingleMatchmakingChannel
samples/cli/sample-apps Matchmaking publicGetSingleMatchmakingChannel \
    --channelName 'teOOVitODdiXaZjr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 29 'PublicGetSingleMatchmakingChannel' test.out

#- 30 SearchSessionsV2
eval_tap 0 30 'SearchSessionsV2 # SKIP deprecated' test.out

#- 31 VersionCheckHandler
samples/cli/sample-apps Matchmaking versionCheckHandler \
    > test.out 2>&1
eval_tap $? 31 'VersionCheckHandler' test.out


rm -f "tmp.dat"

exit $EXIT_CODE