json.extract! assetlist, :id, :mgmtno, :dept, :username, :devicetype, :purpose, :manufacture, :modelno, :serialno, :description, :ram, :disk, :os, :hostname, :ipaddr, :gateway, :mac_wire, :mac_wireless, :date_buy, :date_produce, :amt_buy, :remarks, :created_at, :updated_at
json.url assetlist_url(assetlist, format: :json)
