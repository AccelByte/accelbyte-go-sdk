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
echo "1..44"

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

#- 2 AdminCreateChainingOperations
samples/cli/sample-apps Inventory adminCreateChainingOperations \
    --namespace $AB_NAMESPACE \
    --body '{"message": "rEvJVa3iUIqFdjDl", "operations": [{"consumeItems": [{"dateRangeValidation": false, "inventoryId": "to5pnyPU3n8I6jZi", "options": ["jOTDs7a8VePkJpZa", "0m5cfHpZ8QvuoPM9", "KeWuvQUaSOAmw6gx"], "qty": 67, "slotId": "GjP11UgA3ItefZG9", "sourceItemId": "yfkRUSu4jfBkW5Ul"}, {"dateRangeValidation": true, "inventoryId": "uHApOI9W8iDDFLd7", "options": ["nqXwtAgqtGSVMtSx", "au2ToPKj5em8pKOD", "2ZqhxQASevpCgKJ5"], "qty": 73, "slotId": "MAjHbVUaIZfs0vqF", "sourceItemId": "fKMX3stSmvmYbCSm"}, {"dateRangeValidation": false, "inventoryId": "nV4N9OjyYkLJdyra", "options": ["U0c7aBdcJsoOZl26", "z5NriYOaBOH2jc0n", "utJVwwznkEEfMr5C"], "qty": 67, "slotId": "1YSglzulG8N6B17J", "sourceItemId": "d63robzlkAzs5lVS"}], "createItems": [{"customAttributes": {"Pvb7mnLWihbv6379": {}, "vb442wFdhqUFKG57": {}, "7CHI5XNz0OkxBV8h": {}}, "inventoryConfigurationCode": "YA5AkgdcVCuwSc4X", "inventoryId": "fBJ6wJf3Zf13qtUO", "qty": 52, "serverCustomAttributes": {"X7zZ3xwb4riCzQtN": {}, "H2FdnskogOTDhZ0h": {}, "qekLXvqa5HqLWt7a": {}}, "slotId": "RDRheV6hC3HbxUHx", "slotUsed": 24, "source": "ECOMMERCE", "sourceItemId": "1FEkM2SLwtuv16xy", "tags": ["mExf1UwGnlWv7GIK", "YJw0ckrancrdzvl5", "4mbeFRnjjZH3wH0D"], "toSpecificInventory": false, "type": "wZGZoYWeS1ixHWE8"}, {"customAttributes": {"0vEA5F3E3pKTPwmZ": {}, "6MRjkNokLJb3iIgE": {}, "GWJTVkLVKBeAX0kz": {}}, "inventoryConfigurationCode": "F4IRX1yqzI18pzHC", "inventoryId": "IzGZtAsiSltFxBUV", "qty": 100, "serverCustomAttributes": {"1dEkT5FFWDFEpO61": {}, "1BvGVrKJnH0AEKon": {}, "NIZQMkQ2g3fqZZIt": {}}, "slotId": "GZEzOquTAgG2m5JW", "slotUsed": 77, "source": "ECOMMERCE", "sourceItemId": "sL4NltKfKnBKhEbY", "tags": ["Ao6iM0T32PLFjobp", "hBV8yh5FYJwrAZkC", "fIYBZvqYi9ZT36MB"], "toSpecificInventory": true, "type": "uA7vanNoQwF83dOC"}, {"customAttributes": {"fZl6vz8bH8cLQFjj": {}, "prj3tQlV9LOzNC1c": {}, "Gw1emlFBtakPguYQ": {}}, "inventoryConfigurationCode": "eAximJLP5aVQNzUU", "inventoryId": "5m6H44jFp6MKyNVA", "qty": 47, "serverCustomAttributes": {"nQNDYd41tjTjTGHs": {}, "5FOav4UhBnKlvnxD": {}, "jK1KaVj6w7gFa49K": {}}, "slotId": "K4Pc6tA4Bj0HSxRQ", "slotUsed": 100, "source": "ECOMMERCE", "sourceItemId": "BV613NFuuRKBTGPs", "tags": ["ysPJJI5R254LcRfo", "WF7wYg3KjuFweyCK", "kqVMDGdmUcHRFs49"], "toSpecificInventory": true, "type": "Bm7VISts0j07I42X"}], "removeItems": [{"inventoryId": "8Lhur5pGKmEIoZEn", "slotId": "BaoyZeDwIZO1yjVQ", "sourceItemId": "0JsoFSzlZcZL9tGD"}, {"inventoryId": "EOWgWnOXRZSEV8k9", "slotId": "VOzzeqiCymqAUtSG", "sourceItemId": "5qbqrsvRJtQV4bZj"}, {"inventoryId": "eMzU0ZfH3umBJAk8", "slotId": "s5uRTmclPbshoiuF", "sourceItemId": "nHVBIqPats0BZTh6"}], "targetUserId": "nCupprouWLuuepIL", "updateItems": [{"customAttributes": {"0HYLSPzAAggEQ9q9": {}, "pOQsBRMYM2qjxk69": {}, "QyCUzldiKJupFKLZ": {}}, "inventoryId": "q4iHDq4Uuvayb6KS", "serverCustomAttributes": {"FTtmoVns7iitnljC": {}, "XTQNTxRRinlr388T": {}, "JxmYh4luLiRnCBau": {}}, "slotId": "Mb64jXBqWLOXdDpY", "sourceItemId": "uuncX2hKEB9oSifB", "tags": ["K5Cbe7oJEsTE4OQ1", "aoOrzSKqTSU0SBlY", "0OWwGuqwdEIzN70n"], "type": "Z36ts2YOL6EFGSCV"}, {"customAttributes": {"QEX2L90cEUtowWNw": {}, "baLvzu0VoSCfRwQO": {}, "YVBppCSVQi8RAMae": {}}, "inventoryId": "EYcDjUT4OhEL8Yq5", "serverCustomAttributes": {"lPtG71CQAgdsnne6": {}, "0nI3fTgwWbgJe8Ex": {}, "JloJmTym3VnHoTBI": {}}, "slotId": "MJIPK0FTuXxRHH3u", "sourceItemId": "Cf0Efs0xu3t8P0ZU", "tags": ["rGw1JcQ2YovCzDXA", "Lr6iRvfQtRkLL4Np", "XlVQGS4VbPtYLbyP"], "type": "bJ86ewDavvVz1mav"}, {"customAttributes": {"1Oi3zzi7iRN4FB2w": {}, "Vi5HKYxxPdVYraNe": {}, "GRUclHRs4x4wGaCV": {}}, "inventoryId": "guMws93pWL8YtNgS", "serverCustomAttributes": {"ply9bBE5ka5UCH5b": {}, "bxS0fxt9fR4seSku": {}, "obEdJlH93xWjZi4F": {}}, "slotId": "bNKSQkAv18xKHIxm", "sourceItemId": "iQkOiXsq2FhgU4FL", "tags": ["adZRGpJBR2a1a6UP", "MWqUsU2g8okDTKMq", "hCMMfsdyZwwlw4xW"], "type": "TChfUHrhUi9u0wAo"}]}, {"consumeItems": [{"dateRangeValidation": false, "inventoryId": "OeDS2UgLz9VGheIT", "options": ["ZqQzHhmJWCoki6pa", "w9bJ4xuUt5b9QTHG", "w9Hq3LBVCcFrBhNI"], "qty": 13, "slotId": "Shqfzzq9muIVMNpb", "sourceItemId": "keBvlc3EAeIIGq8a"}, {"dateRangeValidation": false, "inventoryId": "jMkzav1uSwdPQoeG", "options": ["xdR7eZznn2v54FvX", "cghdXL3gO9ktTs25", "rBykK8NY05mciNa3"], "qty": 12, "slotId": "uWREbfVt7Ie8iD6u", "sourceItemId": "1AneOu5zK1qYziFB"}, {"dateRangeValidation": true, "inventoryId": "jRuUYjNM5vq9G88u", "options": ["eevTpi8fJ5MHnHSk", "6CfnOiaEiTOSm5lG", "Fvr50SnLQpG2NlEl"], "qty": 65, "slotId": "kxz06JC6Yb3WoiUW", "sourceItemId": "ESSZCSNuXauKUU7m"}], "createItems": [{"customAttributes": {"pc68p2LgznwmN5AW": {}, "nbntDvHwnHEzWbF2": {}, "xQAmTwdJM8vjLi2E": {}}, "inventoryConfigurationCode": "KZID9OwNEz2p8yRM", "inventoryId": "l6vqGkmghGOne40d", "qty": 27, "serverCustomAttributes": {"7NgqSeJespAFeiUt": {}, "FwC3zjJI6nznDFM4": {}, "VNduC7qtuBT3xmv3": {}}, "slotId": "LUa6z14I0RKYJK2c", "slotUsed": 95, "source": "ECOMMERCE", "sourceItemId": "9YXqqA1kZfWMqSXM", "tags": ["cIX2ukOgBCQdEpTS", "r2uj1fwEFkl4tFgK", "oa2bTUFwXUfTxH5I"], "toSpecificInventory": false, "type": "DkV6Jm35Kzj3Lyuq"}, {"customAttributes": {"qZEJzitjuKRujTeM": {}, "xuFjHWiQpcyZ0Bfw": {}, "FEuGENO7anQVIVLx": {}}, "inventoryConfigurationCode": "koCX6Fg6DOJaZt5P", "inventoryId": "2U4hjckpuawFskTk", "qty": 15, "serverCustomAttributes": {"rHBhQwznm9m6uhBE": {}, "Yxj58PTfw5lHB5Ds": {}, "ZJjuoP4pLFwXZ0dJ": {}}, "slotId": "k3GeOT1DIQmizSPO", "slotUsed": 33, "source": "OTHER", "sourceItemId": "uIezbkRESzSFaAqu", "tags": ["wEbHi7UJB618Uz94", "TMpreAYZoAMhdZTn", "cxii6z3Fw5cXT9rp"], "toSpecificInventory": true, "type": "lpxI2SXNdP8J6VTh"}, {"customAttributes": {"AyWQbDPmWGBwjrA5": {}, "LSK9SgQmoCTjV8S7": {}, "45rJc6EoLNkIxKp0": {}}, "inventoryConfigurationCode": "ebEPPtnbzMO8h8vV", "inventoryId": "ceV5JhEP8Hk33Cqn", "qty": 80, "serverCustomAttributes": {"TFRvS4TDyIX2ru66": {}, "A4vHjpzbHMwSmxbQ": {}, "rsv6ePdUB8Rl0U0B": {}}, "slotId": "FCHQy8CJL8vPg6AK", "slotUsed": 65, "source": "OTHER", "sourceItemId": "p7ty1NNfKefnJG58", "tags": ["G0fNiKt7lXjk8VQE", "fesOYz5ZWOAeym0I", "uErd0ziUM6yM0erx"], "toSpecificInventory": false, "type": "hZ0UxFhJz8W1Z3vT"}], "removeItems": [{"inventoryId": "EDJek85bfgVc7uA8", "slotId": "02JpU9n2EroBbroN", "sourceItemId": "ReZlZeSfPo2rOOvH"}, {"inventoryId": "E0JY5MROuk6VzW23", "slotId": "X6DIN005dXwxOjJA", "sourceItemId": "CAD3hojesCMZ8YoY"}, {"inventoryId": "KF6RcX1Hi64mkJaU", "slotId": "kNgyhvQRYqPfbrlk", "sourceItemId": "sET9SxxZIytVx0vC"}], "targetUserId": "zuwmMPoXN5xz4D6S", "updateItems": [{"customAttributes": {"nvTpJCByzFEDhWYr": {}, "tlfJ1BnkmOiYVfdB": {}, "p9HnmhsoubW61vUV": {}}, "inventoryId": "b2SnCnnDb5OuFJpn", "serverCustomAttributes": {"CAXjPFBZDO7rS47g": {}, "gC2hOFVoBmjFl6kY": {}, "UjcJIY0tMM6JTIQd": {}}, "slotId": "s3gjG3qwCBuACHru", "sourceItemId": "vURP0gtfdv3NpIqN", "tags": ["qbjlQkArkm5dy2Ks", "qAiBIP9G9esFnpNa", "47sbmJP3XE8LGRLr"], "type": "KduKOuyIJrPvSvPo"}, {"customAttributes": {"MPgXsJ1Md2vHr7Pf": {}, "eRLDI5K7ZI0tQfPa": {}, "HPfrju0X6EuVonG2": {}}, "inventoryId": "4mgrHqiFrrb48VrU", "serverCustomAttributes": {"VUAdD485d4qKrpEZ": {}, "5Mvqf4Sezy2WztHU": {}, "VVF2vwtfudXooABe": {}}, "slotId": "B8lp8qU9fphFDmbg", "sourceItemId": "KH1MRPLhQNGnmnDW", "tags": ["sPesE0LW337tdHNH", "mLSvXF9bPeWpHRk1", "VK6KVgHFAapaiMbk"], "type": "FRw6Kz6nSzqO6ts4"}, {"customAttributes": {"R9DzvvQ3HmjcXMyL": {}, "yrsIlCm7wygqkPRs": {}, "iZs54vbcJB3GAExA": {}}, "inventoryId": "bdxevjlFWHUP1DLq", "serverCustomAttributes": {"N6FzgZpUkPi3b4Uj": {}, "EmxgYvDls8QxQNCH": {}, "NDfza6NECoga20yn": {}}, "slotId": "RogqR0Ah0iKLW5l0", "sourceItemId": "qjRlLkESuKt5CUsl", "tags": ["kHyokrZaLTOmIaxP", "wgMfRBEFqwhe8XYo", "hk9U0biZ9qvcVeAx"], "type": "oLBMvJ0l9acKuwDE"}]}, {"consumeItems": [{"dateRangeValidation": true, "inventoryId": "PLbt0FirwX7gy0Ju", "options": ["hmCX9iKqfXHF7Tco", "M55YUq89pecDPrCi", "kZXdgTODvMybKHlW"], "qty": 63, "slotId": "7F0RqAIOwtLR3cwV", "sourceItemId": "kHuj60Yaz9fXklvu"}, {"dateRangeValidation": false, "inventoryId": "TchNACrVvjBNrJtd", "options": ["3adQbiYCW6OrpQGR", "6WxMBHJnniraftNw", "MjSTFoonBt0IKpeJ"], "qty": 7, "slotId": "A3FyU0ot4K97DB4Q", "sourceItemId": "kRPEbdqDCR9D0Esk"}, {"dateRangeValidation": false, "inventoryId": "owa4UkqfvBteycQ5", "options": ["KaAnuOIKRGZmjC62", "HLoBUYGO1ZBLD8Q4", "DF9hbimNoNuyDuVX"], "qty": 35, "slotId": "UC8Wm0gPxUUZYY2W", "sourceItemId": "kEDvSETfIxN6k3O8"}], "createItems": [{"customAttributes": {"NYvjq9m5IvVg0Rul": {}, "2kMcJsO4GRVpudE0": {}, "cEMNtF9gWgybWUVe": {}}, "inventoryConfigurationCode": "0XSSlzu1PMbuQYs2", "inventoryId": "IaFklsF7QN66gn8f", "qty": 53, "serverCustomAttributes": {"eSNIXwHPQBaudhqJ": {}, "2GJYyTL7ajCWbLaX": {}, "MywIsXpQwlA0J20Y": {}}, "slotId": "5gnM5014av7iLdQU", "slotUsed": 51, "source": "OTHER", "sourceItemId": "C8wTWmJbTEAX6m6L", "tags": ["GEh7FcXe9IHuqfhD", "BStBzztQu5mRnA3m", "B6Bf8Lhu6Pzbzhj1"], "toSpecificInventory": true, "type": "QAUV9u1rAvZXWXFD"}, {"customAttributes": {"fUA5gz1w4qqYpAW4": {}, "6cVOech6reCi2Rqf": {}, "bGDwsNkmbNZKhPrU": {}}, "inventoryConfigurationCode": "HeOLc73Ip8GMQJVO", "inventoryId": "kNsePgc7rlZkkUyJ", "qty": 48, "serverCustomAttributes": {"KDX1vgMOUYAIclZY": {}, "p0rQw6GCgFRc0myF": {}, "yVQXsWYUaU0FBWIl": {}}, "slotId": "9ifASQu333jSF2OO", "slotUsed": 45, "source": "ECOMMERCE", "sourceItemId": "5BVcg4r92ptJqpBM", "tags": ["jdEQ78Wj02hB8fee", "adnnoTRKTnUNnbSy", "wJCuSt4sGAnvzF5T"], "toSpecificInventory": false, "type": "46AS6Xxq8Fn66FpX"}, {"customAttributes": {"RpwoHr9AjnX4KdRO": {}, "BDz1pzVRmqD08HDC": {}, "iazRczjmr01nQ9YT": {}}, "inventoryConfigurationCode": "bv3Sg1vtnuayg7mL", "inventoryId": "J5iZMvc969f8zRff", "qty": 78, "serverCustomAttributes": {"uI1GElqbFLMI5KjU": {}, "AVI5oQLbNwYKVUnE": {}, "lp4JZ7EMyo3vz8c6": {}}, "slotId": "IyDwLPkgzN0OzeC6", "slotUsed": 92, "source": "OTHER", "sourceItemId": "sC1Ch75houuuLXx9", "tags": ["kgkqGgrWnTX152VH", "oXdpVLjxjoRvdkuQ", "w7pLwe40GtJjruAt"], "toSpecificInventory": true, "type": "74UiGfjewvmQs6Iy"}], "removeItems": [{"inventoryId": "VRo3W1QNVzgRcLhp", "slotId": "fwFaVa3cd15vm7b9", "sourceItemId": "hsCUV4owEePHwcRB"}, {"inventoryId": "cuphkyOwIwhurWvG", "slotId": "IPjEESWQg33sIzKD", "sourceItemId": "voGpPdtXOaOK53fI"}, {"inventoryId": "ollqCT22So8Ino3z", "slotId": "1rT65qpa6BcxNpg2", "sourceItemId": "JLxyqRuDcfTqpAz8"}], "targetUserId": "WIPelvgiEyxeih3H", "updateItems": [{"customAttributes": {"zeaTe9gqWEUXrYCz": {}, "eBaL8n3IOVjmqrB5": {}, "r2SCYOOokzVHDJZ3": {}}, "inventoryId": "QGpuslEYNeH7MkoR", "serverCustomAttributes": {"heCVAtJtSUmsjnbX": {}, "8fY8KA45z2i4cf9L": {}, "y74QaJyU3Le2hxv5": {}}, "slotId": "bxKxHFlFwyJzFsG1", "sourceItemId": "LajtXlTViTPAZ4lX", "tags": ["voXbJZAzqQJPAedL", "08cuTaM0pBslL1bO", "FuepJMlD3QxdDIzm"], "type": "dUP5LE5cvyXYnmRM"}, {"customAttributes": {"W1KbW7YyTuFtYUji": {}, "zyJqW2zuOJP735RS": {}, "c7yLjnkhJCZOo4ZN": {}}, "inventoryId": "RsbHzHtdH15FJnNV", "serverCustomAttributes": {"dAzPkxEcmdJFfC4k": {}, "LvcbkBJEkwb8npGH": {}, "SVMD2DPaYFRbxJ8d": {}}, "slotId": "tggeMSIagXDdio8H", "sourceItemId": "ut03JyPAw7sZZoJm", "tags": ["7ieoLD5ke7296ZD4", "jYgHyAsJbQuCMgXC", "inzVpV8Wk3FcS1zk"], "type": "Xm4LAFphzYsxxYI6"}, {"customAttributes": {"PNBce3TFBGxolWY5": {}, "le7zeXVWal1MMtdF": {}, "UWMeE1XbYJnM22RH": {}}, "inventoryId": "egQZMfeXldin9F7a", "serverCustomAttributes": {"K7yOUvLggR0LguNO": {}, "WphDb1G6XitqUJQb": {}, "Q3WJHoVVIFglw7ai": {}}, "slotId": "jJ85Xr5P1pWM16vq", "sourceItemId": "GPPJz7inZKTJagSW", "tags": ["fpAU5mXcZd4OsMAV", "LnX8r6C4EQBDxKht", "99Fn6zdgoVJVFSft"], "type": "6GKbLcUgm5AcL4Gd"}]}], "requestId": "XvCSfQyKNewGWKxm"}' \
    > test.out 2>&1
eval_tap $? 2 'AdminCreateChainingOperations' test.out

#- 3 AdminListIntegrationConfigurations
samples/cli/sample-apps Inventory adminListIntegrationConfigurations \
    --namespace $AB_NAMESPACE \
    --limit '37' \
    --offset '45' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 3 'AdminListIntegrationConfigurations' test.out

#- 4 AdminCreateIntegrationConfiguration
samples/cli/sample-apps Inventory adminCreateIntegrationConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["ywMdc1oV1nyELfhs", "Gf16G0gKR1gcQ1Rv", "BVFrgWXuQQj775sY"], "serviceName": "VGJfw7yfhUcJSvUZ", "targetInventoryCode": "GztSR4n9611sG2gq"}' \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateIntegrationConfiguration' test.out

#- 5 AdminUpdateIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateIntegrationConfiguration \
    --integrationConfigurationId 'aSLeNMDIV2DIePMj' \
    --namespace $AB_NAMESPACE \
    --body '{"mapItemType": ["SAXsL3jbsumsA4ut", "67HPKHCeL5LL57lI", "ybvwKfqEPBvHwlC6"], "serviceName": "WW8vdgtZ5GGZ0dpK", "targetInventoryCode": "XVCymzNFEoCGV5WX"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateIntegrationConfiguration' test.out

#- 6 AdminUpdateStatusIntegrationConfiguration
samples/cli/sample-apps Inventory adminUpdateStatusIntegrationConfiguration \
    --integrationConfigurationId 'FV6XUwMzvp4u4Tsu' \
    --namespace $AB_NAMESPACE \
    --body '{"status": "TIED"}' \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateStatusIntegrationConfiguration' test.out

#- 7 AdminListInventories
samples/cli/sample-apps Inventory adminListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode '7fQVZwQKLOYHptuB' \
    --limit '53' \
    --offset '64' \
    --sortBy 'createdAt' \
    --userId 'Ed4ohTMFfmo6Zgyw' \
    > test.out 2>&1
eval_tap $? 7 'AdminListInventories' test.out

#- 8 AdminCreateInventory
samples/cli/sample-apps Inventory adminCreateInventory \
    --namespace $AB_NAMESPACE \
    --body '{"inventoryConfigurationCode": "hwJSJQfwqfQQD7Lh", "userId": "T7jGMSqSR5PDwsjw"}' \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateInventory' test.out

#- 9 AdminGetInventory
samples/cli/sample-apps Inventory adminGetInventory \
    --inventoryId 'SqEW9CrhGXtiXgBK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 9 'AdminGetInventory' test.out

#- 10 AdminUpdateInventory
samples/cli/sample-apps Inventory adminUpdateInventory \
    --inventoryId '6iZAhu4pCxHHU8nk' \
    --namespace $AB_NAMESPACE \
    --body '{"incMaxSlots": 98}' \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateInventory' test.out

#- 11 DeleteInventory
samples/cli/sample-apps Inventory deleteInventory \
    --inventoryId 'o86e3JsREbUNfBwa' \
    --namespace $AB_NAMESPACE \
    --body '{"message": "1ObAWdiP5F7qq6p4"}' \
    > test.out 2>&1
eval_tap $? 11 'DeleteInventory' test.out

#- 12 AdminListItems
samples/cli/sample-apps Inventory adminListItems \
    --inventoryId 'Px6S3H76IK0mvhdg' \
    --namespace $AB_NAMESPACE \
    --limit '40' \
    --offset '81' \
    --sortBy 'updatedAt' \
    --sourceItemId 'SfNFETeB5r6lG2Iz' \
    --tags '3D9ELhxDbMyVlmMX' \
    > test.out 2>&1
eval_tap $? 12 'AdminListItems' test.out

#- 13 AdminGetInventoryItem
samples/cli/sample-apps Inventory adminGetInventoryItem \
    --inventoryId 'co5CNuuXV5XIcgMC' \
    --namespace $AB_NAMESPACE \
    --slotId 'WJmeTxdZ6ufuP2si' \
    --sourceItemId '5Fv242zel23laSnv' \
    > test.out 2>&1
eval_tap $? 13 'AdminGetInventoryItem' test.out

#- 14 AdminListInventoryConfigurations
samples/cli/sample-apps Inventory adminListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'VvqmR8QJYbwxXIuj' \
    --limit '94' \
    --offset '15' \
    --sortBy 'code:desc' \
    > test.out 2>&1
eval_tap $? 14 'AdminListInventoryConfigurations' test.out

#- 15 AdminCreateInventoryConfiguration
samples/cli/sample-apps Inventory adminCreateInventoryConfiguration \
    --namespace $AB_NAMESPACE \
    --body '{"code": "eNwtvoD7dXAZ0vxg", "description": "eRzaPkEL2g99KOiS", "initialMaxSlots": 8, "maxInstancesPerUser": 16, "maxUpgradeSlots": 46, "name": "hBbSupCdQ8UCo0CA"}' \
    > test.out 2>&1
eval_tap $? 15 'AdminCreateInventoryConfiguration' test.out

#- 16 AdminGetInventoryConfiguration
samples/cli/sample-apps Inventory adminGetInventoryConfiguration \
    --inventoryConfigurationId 'FviEzzp320PQDnIR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'AdminGetInventoryConfiguration' test.out

#- 17 AdminUpdateInventoryConfiguration
samples/cli/sample-apps Inventory adminUpdateInventoryConfiguration \
    --inventoryConfigurationId 'qg5cGaNl7LM7kF33' \
    --namespace $AB_NAMESPACE \
    --body '{"code": "kGCKYiOt64TtkQS3", "description": "SnTnIsvZeFLz8i4w", "initialMaxSlots": 42, "maxInstancesPerUser": 60, "maxUpgradeSlots": 84, "name": "jGhenucpSZDYPvcl"}' \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateInventoryConfiguration' test.out

#- 18 AdminDeleteInventoryConfiguration
samples/cli/sample-apps Inventory adminDeleteInventoryConfiguration \
    --inventoryConfigurationId 'rJhIXX4l4zzjgfZE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteInventoryConfiguration' test.out

#- 19 AdminListItemTypes
samples/cli/sample-apps Inventory adminListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '55' \
    --offset '5' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 19 'AdminListItemTypes' test.out

#- 20 AdminCreateItemType
samples/cli/sample-apps Inventory adminCreateItemType \
    --namespace $AB_NAMESPACE \
    --body '{"name": "IplvAd6tlapASdib"}' \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateItemType' test.out

#- 21 AdminDeleteItemType
samples/cli/sample-apps Inventory adminDeleteItemType \
    --itemTypeName 'Vf7fdhf4edkZ9ICW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'AdminDeleteItemType' test.out

#- 22 AdminListTags
samples/cli/sample-apps Inventory adminListTags \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '34' \
    --owner 'VdHFiFLxMiwmcfbx' \
    --sortBy 'name' \
    > test.out 2>&1
eval_tap $? 22 'AdminListTags' test.out

#- 23 AdminCreateTag
samples/cli/sample-apps Inventory adminCreateTag \
    --namespace $AB_NAMESPACE \
    --body '{"name": "DS7LzPJBNc70lJm7", "owner": "CLIENT"}' \
    > test.out 2>&1
eval_tap $? 23 'AdminCreateTag' test.out

#- 24 AdminDeleteTag
samples/cli/sample-apps Inventory adminDeleteTag \
    --namespace $AB_NAMESPACE \
    --tagName 'YbWZOkh9tBe01ptQ' \
    > test.out 2>&1
eval_tap $? 24 'AdminDeleteTag' test.out

#- 25 AdminConsumeUserItem
samples/cli/sample-apps Inventory adminConsumeUserItem \
    --inventoryId 'ZBNe5cd6tEP3kB3D' \
    --namespace $AB_NAMESPACE \
    --userId 'ueNWG9UpHiiSEMqt' \
    --dateRangeValidation 'WjlWNy6STiBcwx1A' \
    --body '{"options": ["eQlvzxXbxSgvj7qe", "6yKP4tard46Rxydk", "ypL78Bclk5vWYDUe"], "qty": 40, "slotId": "5TqdfrvjxVC3jMWH", "sourceItemId": "nJiH6v687ZUfuc6T"}' \
    > test.out 2>&1
eval_tap $? 25 'AdminConsumeUserItem' test.out

#- 26 AdminBulkUpdateMyItems
samples/cli/sample-apps Inventory adminBulkUpdateMyItems \
    --inventoryId 'ExooPZJe4nbTGt64' \
    --namespace $AB_NAMESPACE \
    --userId 'Bx5etbw7UtRUlwM3' \
    --body '[{"customAttributes": {"ksGkrrNpP1EwI2q6": {}, "FFajlEdj3e3vrM4M": {}, "1GZPikUPclgUlCQ3": {}}, "serverCustomAttributes": {"HpijEXMwB56DoRp8": {}, "gBjJnpZZ0dzEsw0F": {}, "8AgoLHyXoC0aCn3Z": {}}, "slotId": "x6qzaILF17vpwzwI", "sourceItemId": "pvdSgX4loSzd3Yns", "tags": ["yaGQ9IbkiHe7hxCH", "4UXNeArnfpTelpb7", "VvPRj6K4Egaax0tw"], "type": "Ywr2963Y2LEtApLD"}, {"customAttributes": {"e7xMqUdtU3RYFbp9": {}, "oHbBxQET7cUUzh3s": {}, "gqquEivUH1sTd8wh": {}}, "serverCustomAttributes": {"sfCLRwAXyqIjgbKB": {}, "h0kttblPucZqNRHz": {}, "qeapI6hfmmyam8zq": {}}, "slotId": "tGNWOLXHA0DQYqnS", "sourceItemId": "6K8DpRJVJqoC7j5U", "tags": ["1TEZgNBuv7nywhUj", "f2IohUGj1hPOfvgi", "1kYby6B82a6mrFqb"], "type": "KQ2HrsCqHZkmuhJi"}, {"customAttributes": {"KNnHNehmM2zuUMTd": {}, "Yv5d1IGhBdq4nF9e": {}, "p6Kd11dp7KGs7QnL": {}}, "serverCustomAttributes": {"oA3AyjWfl9gm7Bfe": {}, "xfwAqVfZaKQ0p8q7": {}, "BcGSA1f9bLRvkP6m": {}}, "slotId": "zu7eJJtYxZGhwmrI", "sourceItemId": "Zm10cmaXrRuAoKFe", "tags": ["ADAB1aXmUE5yTMVx", "GIfNywmYEzmU9des", "ufrHVVgnepWJpbOn"], "type": "xiXci3kivvrDL3Nd"}]' \
    > test.out 2>&1
eval_tap $? 26 'AdminBulkUpdateMyItems' test.out

#- 27 AdminSaveItemToInventory
samples/cli/sample-apps Inventory adminSaveItemToInventory \
    --inventoryId 'ewtqtit4CAv5AtEI' \
    --namespace $AB_NAMESPACE \
    --userId 'OaiRzFRnTezi4YbF' \
    --body '{"customAttributes": {"TFLgyjhA7QCgtrua": {}, "8zgDhpUWDcGKgHX8": {}, "qzFAaLEasQD010cK": {}}, "qty": 6, "serverCustomAttributes": {"lMj2H2AsGqMfX177": {}, "p08e461SJzizBG5e": {}, "8JxRHbjRQD6WTN6F": {}}, "slotId": "lLftKxD8MyBceQKS", "slotUsed": 15, "source": "OTHER", "sourceItemId": "2olb909eJ8k2ACxl", "tags": ["rCYXcU6vDHCkHsTa", "PBwItXWktZwX6a5c", "eQqcqd7PnUOxsOfd"], "type": "JwRWmARc2G4mIXOD"}' \
    > test.out 2>&1
eval_tap $? 27 'AdminSaveItemToInventory' test.out

#- 28 AdminBulkRemoveItems
samples/cli/sample-apps Inventory adminBulkRemoveItems \
    --inventoryId 'CBPuzPTG8pZ0QsOf' \
    --namespace $AB_NAMESPACE \
    --userId 'iBvdFp2LgHcrimkb' \
    --body '[{"slotId": "k7pecCtXucB6L0P5", "sourceItemId": "Q0hQb6u9LGFqwRPL"}, {"slotId": "GVaGnvA1bc6qoWRD", "sourceItemId": "ggaOoVBh7h78Msn7"}, {"slotId": "O7DMcYf3DN7h15Z1", "sourceItemId": "QxwZhcwMU6PpeyV8"}]' \
    > test.out 2>&1
eval_tap $? 28 'AdminBulkRemoveItems' test.out

#- 29 AdminBulkSaveItemToInventory
samples/cli/sample-apps Inventory adminBulkSaveItemToInventory \
    --inventoryId 'URRPqBZCS65eHedf' \
    --namespace $AB_NAMESPACE \
    --userId 'vll4hBqQO4sjhrOo' \
    --body '[{"customAttributes": {"v8E2duq2IVjW9iOX": {}, "zQOrOAtisKLJNknw": {}, "ga6L26V2yfqgbltw": {}}, "qty": 46, "serverCustomAttributes": {"MtnYeMfFhHARRvuC": {}, "Ows89jlvbo8iVWot": {}, "VptPKB4aNmCC88uV": {}}, "slotId": "QLB4FGHFgE2Q8Ibn", "slotUsed": 14, "source": "ECOMMERCE", "sourceItemId": "Z4wCgeguig1OU6nC", "tags": ["GA32J0YuJTkVNmxP", "BJIKouanRhNk621y", "BqHobSO9ZgcgeQED"], "type": "M9clLl6lvrsZXY6S"}, {"customAttributes": {"qMOSKVO8eZ2M3FBn": {}, "nJpmymbFRYL1ITzx": {}, "qyUzSS4ST94DsMCQ": {}}, "qty": 28, "serverCustomAttributes": {"rDVIU1w1tNqqbNRa": {}, "ilAFQDeBgrLIgzcD": {}, "aHrUBLxepJl7LTVF": {}}, "slotId": "3K9PrmMYjxid0xx1", "slotUsed": 80, "source": "OTHER", "sourceItemId": "czs7bBuiYZ8AYha8", "tags": ["1iu2JZCQmei20Aqw", "r2nH2WQbf7XwvKdw", "5kU8M070R9VcLL6w"], "type": "CD0WfFq9E9bX6koN"}, {"customAttributes": {"48PaRLHUmm8muR08": {}, "gCcn3gO3Bpnx5UAt": {}, "D04CmwwNNE7KtwNk": {}}, "qty": 81, "serverCustomAttributes": {"5NKVn4Lstb9kkajb": {}, "XunTTsoHVyqK0ozz": {}, "qT84QHglNYNpcMNf": {}}, "slotId": "mVKcwa0NPiuRj031", "slotUsed": 45, "source": "OTHER", "sourceItemId": "AWjm4ak00Hg9ylKs", "tags": ["kpQHGCcm1bd67Ean", "YpPp8heWC1oeobo3", "lrycxSvEiKB57lP1"], "type": "6jKo0uItx99K2J5f"}]' \
    > test.out 2>&1
eval_tap $? 29 'AdminBulkSaveItemToInventory' test.out

#- 30 AdminUpdateUserInventoriesByInventoryCode
samples/cli/sample-apps Inventory adminUpdateUserInventoriesByInventoryCode \
    --inventoryConfigurationCode '76fiDw117MtsmkJ5' \
    --namespace $AB_NAMESPACE \
    --userId 'WTPp9iL6sKnnszIt' \
    --body '{"incMaxSlots": 38}' \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateUserInventoriesByInventoryCode' test.out

#- 31 AdminSaveItem
samples/cli/sample-apps Inventory adminSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'gAnLyKoRTj7jbXNa' \
    --body '{"customAttributes": {"bIGQhwFfAKMLARrd": {}, "2fjI2aOYP7D62Q25": {}, "UlWEaKXMqRKcAbZL": {}}, "inventoryConfigurationCode": "f6GFZiWNvt7CGRys", "qty": 76, "serverCustomAttributes": {"bQ0zkPWGXLxJS6xB": {}, "kS44tpCm2Z8RXaL7": {}, "tLvCU55klKY98njG": {}}, "slotId": "jUZt7x6UoZZzVLhH", "slotUsed": 17, "source": "ECOMMERCE", "sourceItemId": "YPyS3SmwsJ2hnAqp", "tags": ["SDjVTthCQvCeSu3b", "jNt432DuYmraid2y", "bXEPuitNIHLXzrRj"], "type": "b9Pu2wNjjn6qrgTV"}' \
    > test.out 2>&1
eval_tap $? 31 'AdminSaveItem' test.out

#- 32 AdminBulkSaveItem
samples/cli/sample-apps Inventory adminBulkSaveItem \
    --namespace $AB_NAMESPACE \
    --userId 'tSYHt0k4KEHl6uIl' \
    --body '[{"customAttributes": {"XgefWbuStjm7Rjos": {}, "sQDPreem31owjoqS": {}, "Lj49MuXBRoTkprau": {}}, "inventoryConfigurationCode": "c2HmA36rWuOCgm6V", "qty": 46, "serverCustomAttributes": {"pCbdTYigaJsqS1tK": {}, "MWns8b0tGKCEZr3X": {}, "ML2WxeCMqMWc2hbm": {}}, "slotId": "fAxIT3vrjfpIV0Uh", "slotUsed": 84, "source": "ECOMMERCE", "sourceItemId": "WDWmYktQeE7SNYMM", "tags": ["5kkS2U7pFtnNkLBK", "6i4TmOvHRZEvZd2Q", "hvIJa0J6TtK1fPQc"], "type": "DIiuTyN7a0cPUux6"}, {"customAttributes": {"n03vLblkq1T2upbt": {}, "RdNwozYkVT1otQuF": {}, "TUSAFnYx4RTa0QMB": {}}, "inventoryConfigurationCode": "KkgJE2oJOWnIlFhR", "qty": 67, "serverCustomAttributes": {"155LFW3VCCiisQRi": {}, "OyIMfHPRnRtldAOS": {}, "qvZulzGP498pkwnS": {}}, "slotId": "EUjanjxT7fBQVBHD", "slotUsed": 23, "source": "ECOMMERCE", "sourceItemId": "mqg7OVD7qZe2xQ3g", "tags": ["arstlYhPldH8Is1A", "2yHwmHal5lxWQyMT", "R1bKYsLwGcGrWTb4"], "type": "1TmuqRuTIQSCiDmd"}, {"customAttributes": {"IjAkrxa6OB6A3Q4J": {}, "X6JNhpmccelarZYb": {}, "3knBzup55ydPTsAJ": {}}, "inventoryConfigurationCode": "qrWA3THqv3629Rrv", "qty": 37, "serverCustomAttributes": {"8XMNFL0LotyBuGqI": {}, "aXSu8LI3jLQ8bWWi": {}, "w7UhiaFzOQiOqGmb": {}}, "slotId": "6hIUqqogHtahDokM", "slotUsed": 96, "source": "ECOMMERCE", "sourceItemId": "s692URSES2xOgpZM", "tags": ["HEy0NTYq5XlaZfHM", "IenEcDLbmAKhM1Kf", "QfIi3TOl3vFRUcmm"], "type": "2Z1GIJX0cP0QC8aY"}]' \
    > test.out 2>&1
eval_tap $? 32 'AdminBulkSaveItem' test.out

#- 33 AdminSyncUserEntitlements
samples/cli/sample-apps Inventory adminSyncUserEntitlements \
    --namespace $AB_NAMESPACE \
    --userId 'QHOVPxio7eKIX7vr' \
    > test.out 2>&1
eval_tap $? 33 'AdminSyncUserEntitlements' test.out

#- 34 AdminPurchasable
samples/cli/sample-apps Inventory adminPurchasable \
    --namespace $AB_NAMESPACE \
    --userId 'hqlFKKpc1ThwWm0D' \
    --body '{"entitlementType": "9twoCUEgOzyC2hL4", "inventoryConfig": {"slotUsed": 96}, "itemId": "BpUchjuJOdXjElQj", "itemType": "n8CcwyulwflNBTfR", "items": [{"bundledQty": 60, "entitlementType": "NN0RFqd8zEbg5qrD", "inventoryConfig": {"slotUsed": 42}, "itemId": "m50UszrasfOtXzde", "itemType": "cxWRjBR5MoDZts70", "sku": "Mljl2B3uLpD6tVqa", "stackable": false, "useCount": 44}, {"bundledQty": 78, "entitlementType": "b39MHWmqxrTfEtt5", "inventoryConfig": {"slotUsed": 28}, "itemId": "yaiE93DyE11NJOes", "itemType": "xZC8Ynqml88naVnA", "sku": "wVrEqkTCe7EhbmMi", "stackable": true, "useCount": 50}, {"bundledQty": 52, "entitlementType": "lteySY546UxRnfia", "inventoryConfig": {"slotUsed": 30}, "itemId": "U9XDIAk1HzmJQZgm", "itemType": "trVHYanjQonIIcgt", "sku": "f3sY1DNrOOwePSvM", "stackable": false, "useCount": 96}], "quantity": 81, "sku": "P4ByJMRWIW0E8a8a", "stackable": false, "useCount": 42}' \
    > test.out 2>&1
eval_tap $? 34 'AdminPurchasable' test.out

#- 35 PublicListInventoryConfigurations
samples/cli/sample-apps Inventory publicListInventoryConfigurations \
    --namespace $AB_NAMESPACE \
    --code 'kAPjZW0SnvrqkPOh' \
    --limit '7' \
    --offset '91' \
    --sortBy 'updatedAt' \
    > test.out 2>&1
eval_tap $? 35 'PublicListInventoryConfigurations' test.out

#- 36 PublicListItemTypes
samples/cli/sample-apps Inventory publicListItemTypes \
    --namespace $AB_NAMESPACE \
    --limit '93' \
    --offset '28' \
    --sortBy 'name:desc' \
    > test.out 2>&1
eval_tap $? 36 'PublicListItemTypes' test.out

#- 37 PublicListTags
samples/cli/sample-apps Inventory publicListTags \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '69' \
    --sortBy 'createdAt:asc' \
    > test.out 2>&1
eval_tap $? 37 'PublicListTags' test.out

#- 38 PublicListInventories
samples/cli/sample-apps Inventory publicListInventories \
    --namespace $AB_NAMESPACE \
    --inventoryConfigurationCode 'bokLriqLm3KFdIcY' \
    --limit '43' \
    --offset '5' \
    --sortBy 'createdAt' \
    > test.out 2>&1
eval_tap $? 38 'PublicListInventories' test.out

#- 39 PublicConsumeMyItem
samples/cli/sample-apps Inventory publicConsumeMyItem \
    --inventoryId 'cUn3qYaN29XuB64b' \
    --namespace $AB_NAMESPACE \
    --body '{"options": ["m6XtQJYiiGkvwo8Z", "45UfghxwEFYQVv0e", "CEJs5txXExTdf2BG"], "qty": 23, "slotId": "OG6EMroJ38GwEWLr", "sourceItemId": "tUCj9GwOFRjeYNiu"}' \
    > test.out 2>&1
eval_tap $? 39 'PublicConsumeMyItem' test.out

#- 40 PublicListItems
samples/cli/sample-apps Inventory publicListItems \
    --inventoryId 'U5kX7Fp2xrooDSgy' \
    --namespace $AB_NAMESPACE \
    --limit '3' \
    --offset '19' \
    --sortBy 'updatedAt:desc' \
    --sourceItemId 'KEcX93ZiPqhLOdBc' \
    --tags 'BMXJaD3AHANpi2DT' \
    > test.out 2>&1
eval_tap $? 40 'PublicListItems' test.out

#- 41 PublicBulkUpdateMyItems
samples/cli/sample-apps Inventory publicBulkUpdateMyItems \
    --inventoryId 'zSWHjg0Q76eInuW1' \
    --namespace $AB_NAMESPACE \
    --body '[{"customAttributes": {"DkmMYrlICjgKXEua": {}, "d3MMzgy78ZMbxGH0": {}, "rRMAAcVPdgJOgAHQ": {}}, "slotId": "YxICA5aW1OjighOK", "sourceItemId": "DprbGJYtXH2zYQtv", "tags": ["hfduUmjKhkzvJCr6", "5kT2wlcGuCvy7H9y", "59VpGxHKGRLcfPof"]}, {"customAttributes": {"JkEvyqKXJ6rYPvxN": {}, "mPMjOdeRvtAahyLw": {}, "B7v8eU55amQiaMPk": {}}, "slotId": "PpXY6OVmRSMVTnBh", "sourceItemId": "7Qr8xCLDNBPVuW9b", "tags": ["WYdQRktmmuoaeK4R", "v58TtqnInUHIzo3T", "Tga768uwfi8xvDN5"]}, {"customAttributes": {"z8hwCrst3s8ZiYkg": {}, "k9qQwfBK0eX5XstK": {}, "qghlwYBdTO0Podx8": {}}, "slotId": "Bs4nQpiXMODrI1YX", "sourceItemId": "SelMe5kswoRlysMb", "tags": ["0PhxHDven5gwwR0f", "TDx8CMoI9vqamL9E", "zEqgIhz0aPplITOF"]}]' \
    > test.out 2>&1
eval_tap $? 41 'PublicBulkUpdateMyItems' test.out

#- 42 PublicBulkRemoveMyItems
samples/cli/sample-apps Inventory publicBulkRemoveMyItems \
    --inventoryId '8GJK9Ro1MXJwg8OQ' \
    --namespace $AB_NAMESPACE \
    --body '[{"slotId": "4g8ERsCPsbhGyICq", "sourceItemId": "1fEOQSZvdUPNKx69"}, {"slotId": "tr470m9Ik3GG8l0r", "sourceItemId": "kAmtW9TfOUYuf09g"}, {"slotId": "R05M84SxYSUiL4du", "sourceItemId": "MG6JOvDUVdnt97rw"}]' \
    > test.out 2>&1
eval_tap $? 42 'PublicBulkRemoveMyItems' test.out

#- 43 PublicMoveMyItems
samples/cli/sample-apps Inventory publicMoveMyItems \
    --inventoryId 'PDnc77q1eup6pgMG' \
    --namespace $AB_NAMESPACE \
    --body '{"items": [{"qty": 12, "slotId": "OO7xUTQITixkMWlW", "sourceItemId": "0fHegFRq6PXFLP5x"}, {"qty": 94, "slotId": "Fa7V6y8SF3X7QSVZ", "sourceItemId": "2K7CYIBnubIdr2yl"}, {"qty": 74, "slotId": "FDcCZinFVNfr9vp9", "sourceItemId": "3QeBrlDpiFQz6u11"}], "srcInventoryId": "QvuyDbf6W5Tbpmzb"}' \
    > test.out 2>&1
eval_tap $? 43 'PublicMoveMyItems' test.out

#- 44 PublicGetItem
samples/cli/sample-apps Inventory publicGetItem \
    --inventoryId 'J2hZa8CFX8e8Kazo' \
    --namespace $AB_NAMESPACE \
    --slotId '8XrKy6cdrR0T78qO' \
    --sourceItemId 'd8FaTssEeZ2mEsWA' \
    > test.out 2>&1
eval_tap $? 44 'PublicGetItem' test.out


rm -f "tmp.dat"

exit $EXIT_CODE