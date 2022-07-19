# TOKEN_ID="3"
# ID="choptr.testnet"

TITLE="Test $TOKEN_ID"
DESCRIPTION="Test $TOKEN_ID"
MEDIA="ipfs://QmcsicJCLQcKdB2ZFMcksrVDijPE7AsAww9QgQfqf1rhRJ/$TOKEN_ID.png"

ARG='{"token_id": "'$TOKEN_ID'", "receiver_id": "'$ID'", "token_metadata": { "title": "'$TITLE'", "description": "'$DESCRIPTION'", "media": "'$MEDIA'", "copies": 1}}'

near call $(cat neardev/dev-account) nft_mint "$ARG" --accountId $ID --deposit 0.1
