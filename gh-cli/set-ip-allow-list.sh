#!/bin/bash

# use `get-enterprise-id.sh` or `get-organization-id.sh` to get the owner_id

gh api graphql -f owner_id='O_kgDOBbB18g' -f setting_value='ENABLED' -f query='
mutation ($owner_id: ID! $setting_value: IpAllowListEnabledSettingValue!) { 
  updateIpAllowListEnabledSetting(input: { ownerId: $owner_id settingValue: $setting_value }) { 
      clientMutationId
   } 
}'